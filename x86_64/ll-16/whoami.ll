; ModuleID = 'src/whoami.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !356
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !326
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !346
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !348
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !350
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !352
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !354
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !358
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !360
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !365
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !370
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !373
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !746, metadata !DIExpression()), !dbg !747
  %2 = icmp eq i32 %0, 0, !dbg !748
  br i1 %2, label %8, label %3, !dbg !750

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !751, !tbaa !753
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !751
  %6 = load ptr, ptr @program_name, align 8, !dbg !751, !tbaa !753
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !751
  br label %31, !dbg !751

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !757
  %10 = load ptr, ptr @program_name, align 8, !dbg !757, !tbaa !753
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !757
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !759
  %13 = load ptr, ptr @stdout, align 8, !dbg !759, !tbaa !753
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !759
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !760
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !760
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !761
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !761
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !762, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !774, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr poison, metadata !774, metadata !DIExpression()), !dbg !779
  tail call void @emit_bug_reporting_address() #36, !dbg !781
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !782
  call void @llvm.dbg.value(metadata ptr %17, metadata !777, metadata !DIExpression()), !dbg !779
  %18 = icmp eq ptr %17, null, !dbg !783
  br i1 %18, label %26, label %19, !dbg !785

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #37, !dbg !786
  %21 = icmp eq i32 %20, 0, !dbg !786
  br i1 %21, label %26, label %22, !dbg !787

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !788
  %24 = load ptr, ptr @stdout, align 8, !dbg !788, !tbaa !753
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !788
  br label %26, !dbg !790

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !774, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !778, metadata !DIExpression()), !dbg !779
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !791
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #36, !dbg !791
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !792
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #36, !dbg !792
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !793
  unreachable, !dbg !793
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !794 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !799 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !805 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !808 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !219, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata ptr %0, metadata !220, metadata !DIExpression()), !dbg !812
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !813, !tbaa !814
  %3 = icmp eq i32 %2, -1, !dbg !816
  br i1 %3, label %4, label %16, !dbg !817

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #36, !dbg !818
  call void @llvm.dbg.value(metadata ptr %5, metadata !221, metadata !DIExpression()), !dbg !819
  %6 = icmp eq ptr %5, null, !dbg !820
  br i1 %6, label %14, label %7, !dbg !821

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !822, !tbaa !823
  %9 = icmp eq i8 %8, 0, !dbg !822
  br i1 %9, label %14, label %10, !dbg !824

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !825, metadata !DIExpression()), !dbg !832
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !831, metadata !DIExpression()), !dbg !832
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #37, !dbg !834
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
  br label %128, !dbg !843

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !224, metadata !DIExpression()), !dbg !812
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #37, !dbg !844
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !845
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !812
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !846
  call void @llvm.dbg.value(metadata ptr %25, metadata !227, metadata !DIExpression()), !dbg !812
  %26 = icmp eq ptr %25, null, !dbg !847
  br i1 %26, label %58, label %27, !dbg !848

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !849
  br i1 %28, label %58, label %29, !dbg !850

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !228, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !851
  %30 = icmp ult ptr %24, %25, !dbg !852
  br i1 %30, label %31, label %52, !dbg !853

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !812
  %33 = load ptr, ptr %32, align 8, !tbaa !753
  br label %34, !dbg !853

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !228, metadata !DIExpression()), !dbg !851
  call void @llvm.dbg.value(metadata i64 %36, metadata !232, metadata !DIExpression()), !dbg !851
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !854
  call void @llvm.dbg.value(metadata ptr %37, metadata !228, metadata !DIExpression()), !dbg !851
  %38 = load i8, ptr %35, align 1, !dbg !854, !tbaa !823
  %39 = sext i8 %38 to i64, !dbg !854
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !854
  %41 = load i16, ptr %40, align 2, !dbg !854, !tbaa !855
  %42 = freeze i16 %41, !dbg !857
  %43 = lshr i16 %42, 13, !dbg !857
  %44 = and i16 %43, 1, !dbg !857
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !858
  call void @llvm.dbg.value(metadata i64 %46, metadata !232, metadata !DIExpression()), !dbg !851
  %47 = icmp ult ptr %37, %25, !dbg !852
  %48 = icmp ult i64 %46, 2, !dbg !859
  %49 = select i1 %47, i1 %48, i1 false, !dbg !859
  br i1 %49, label %34, label %50, !dbg !853, !llvm.loop !860

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !862
  br i1 %51, label %52, label %54, !dbg !864

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !864

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !864
  call void @llvm.dbg.value(metadata i8 %57, metadata !224, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata ptr %56, metadata !227, metadata !DIExpression()), !dbg !812
  br label %58, !dbg !865

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !812
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !812
  call void @llvm.dbg.value(metadata i8 %60, metadata !224, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata ptr %59, metadata !227, metadata !DIExpression()), !dbg !812
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.16) #37, !dbg !866
  call void @llvm.dbg.value(metadata i64 %61, metadata !233, metadata !DIExpression()), !dbg !812
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !867
  call void @llvm.dbg.value(metadata ptr %62, metadata !234, metadata !DIExpression()), !dbg !812
  br label %63, !dbg !868

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !812
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !812
  call void @llvm.dbg.value(metadata i8 %65, metadata !224, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata ptr %64, metadata !234, metadata !DIExpression()), !dbg !812
  %66 = load i8, ptr %64, align 1, !dbg !869, !tbaa !823
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !870

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !871
  %69 = load i8, ptr %68, align 1, !dbg !874, !tbaa !823
  %70 = icmp eq i8 %69, 45, !dbg !875
  %71 = select i1 %70, i8 0, i8 %65, !dbg !876
  br label %72, !dbg !876

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !812
  call void @llvm.dbg.value(metadata i8 %73, metadata !224, metadata !DIExpression()), !dbg !812
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !877
  %75 = load ptr, ptr %74, align 8, !dbg !877, !tbaa !753
  %76 = sext i8 %66 to i64, !dbg !877
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !877
  %78 = load i16, ptr %77, align 2, !dbg !877, !tbaa !855
  %79 = and i16 %78, 8192, !dbg !877
  %80 = icmp eq i16 %79, 0, !dbg !877
  br i1 %80, label %96, label %81, !dbg !879

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !880
  br i1 %82, label %98, label %83, !dbg !883

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !884
  %85 = load i8, ptr %84, align 1, !dbg !884, !tbaa !823
  %86 = sext i8 %85 to i64, !dbg !884
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !884
  %88 = load i16, ptr %87, align 2, !dbg !884, !tbaa !855
  %89 = and i16 %88, 8192, !dbg !884
  %90 = icmp eq i16 %89, 0, !dbg !884
  br i1 %90, label %91, label %98, !dbg !885

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !886
  %93 = icmp ne i8 %92, 0, !dbg !886
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !888
  br i1 %95, label %96, label %98, !dbg !888

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !889
  call void @llvm.dbg.value(metadata ptr %97, metadata !234, metadata !DIExpression()), !dbg !812
  br label %63, !dbg !868, !llvm.loop !890

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !892
  %100 = load ptr, ptr @stdout, align 8, !dbg !892, !tbaa !753
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !825, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !291, metadata !DIExpression()), !dbg !812
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #37, !dbg !913
  %103 = icmp eq i32 %102, 0, !dbg !913
  br i1 %103, label %107, label %104, !dbg !915

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #37, !dbg !916
  %106 = icmp eq i32 %105, 0, !dbg !916
  br i1 %106, label %107, label %110, !dbg !917

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !918
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !918
  br label %113, !dbg !920

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !921
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !921
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !753
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %114), !dbg !923
  %116 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !753
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %116), !dbg !924
  %118 = ptrtoint ptr %64 to i64, !dbg !925
  %119 = sub i64 %118, %99, !dbg !925
  %120 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !753
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !925
  %122 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !753
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %122), !dbg !926
  %124 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !753
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %124), !dbg !927
  %126 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !753
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !928
  br label %128, !dbg !929

128:                                              ; preds = %113, %19
  ret void, !dbg !929
}

; Function Attrs: nounwind
declare !dbg !930 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !934 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !938 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !940 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !943 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !946 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !949 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !952 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !958 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !959 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !965 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !970, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 -1, metadata !972, metadata !DIExpression()), !dbg !990
  %3 = load ptr, ptr %1, align 8, !dbg !991, !tbaa !753
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !992
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !993
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !994
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !995
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !996
  %8 = load ptr, ptr @Version, align 8, !dbg !997, !tbaa !753
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !998
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !999
  %10 = load i32, ptr @optind, align 4, !dbg !1000, !tbaa !814
  %11 = icmp eq i32 %10, %0, !dbg !1002
  br i1 %11, label %19, label %12, !dbg !1003

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !1004
  %14 = load i32, ptr @optind, align 4, !dbg !1004, !tbaa !814
  %15 = sext i32 %14 to i64, !dbg !1004
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1004
  %17 = load ptr, ptr %16, align 8, !dbg !1004, !tbaa !753
  %18 = tail call ptr @quote(ptr noundef %17) #36, !dbg !1004
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #36, !dbg !1004
  tail call void @usage(i32 noundef 1) #40, !dbg !1006
  unreachable, !dbg !1006

19:                                               ; preds = %2
  %20 = tail call ptr @__errno_location() #39, !dbg !1007
  store i32 0, ptr %20, align 4, !dbg !1008, !tbaa !814
  %21 = tail call i32 @geteuid() #36, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %21, metadata !976, metadata !DIExpression()), !dbg !990
  %22 = icmp eq i32 %21, -1, !dbg !1010
  br i1 %22, label %23, label %26, !dbg !1011

23:                                               ; preds = %19
  %24 = load i32, ptr %20, align 4, !dbg !1012, !tbaa !814
  %25 = icmp eq i32 %24, 0, !dbg !1012
  br i1 %25, label %26, label %31, !dbg !1013

26:                                               ; preds = %19, %23
  %27 = tail call ptr @getpwuid(i32 noundef %21) #36, !dbg !1014
  call void @llvm.dbg.value(metadata ptr %27, metadata !977, metadata !DIExpression()), !dbg !990
  %28 = icmp eq ptr %27, null, !dbg !1015
  br i1 %28, label %29, label %35, !dbg !1017

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4, !dbg !1018, !tbaa !814
  br label %31, !dbg !1017

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ %24, %23 ], !dbg !1018
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !1018
  %34 = zext i32 %21 to i64, !dbg !1018
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %32, ptr noundef %33, i64 noundef %34) #36, !dbg !1018
  unreachable, !dbg !1018

35:                                               ; preds = %26
  %36 = load ptr, ptr %27, align 8, !dbg !1019, !tbaa !1020
  %37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %36), !dbg !1022
  ret i32 0, !dbg !1023
}

; Function Attrs: nounwind
declare !dbg !1024 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1027 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1028 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1031 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1035 i32 @geteuid() local_unnamed_addr #2

declare !dbg !1039 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1042 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1045 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1047, metadata !DIExpression()), !dbg !1048
  store ptr %0, ptr @file_name, align 8, !dbg !1049, !tbaa !753
  ret void, !dbg !1050
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1051 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1055, metadata !DIExpression()), !dbg !1056
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1057, !tbaa !1058
  ret void, !dbg !1060
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1061 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1066, !tbaa !753
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1067
  %3 = icmp eq i32 %2, 0, !dbg !1068
  br i1 %3, label %22, label %4, !dbg !1069

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1070, !tbaa !1058, !range !1071, !noundef !798
  %6 = icmp eq i8 %5, 0, !dbg !1070
  br i1 %6, label %11, label %7, !dbg !1072

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1073
  %9 = load i32, ptr %8, align 4, !dbg !1073, !tbaa !814
  %10 = icmp eq i32 %9, 32, !dbg !1074
  br i1 %10, label %22, label %11, !dbg !1075

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #36, !dbg !1076
  call void @llvm.dbg.value(metadata ptr %12, metadata !1063, metadata !DIExpression()), !dbg !1077
  %13 = load ptr, ptr @file_name, align 8, !dbg !1078, !tbaa !753
  %14 = icmp eq ptr %13, null, !dbg !1078
  %15 = tail call ptr @__errno_location() #39, !dbg !1080
  %16 = load i32, ptr %15, align 4, !dbg !1080, !tbaa !814
  br i1 %14, label %19, label %17, !dbg !1081

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1082
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #36, !dbg !1082
  br label %20, !dbg !1082

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #36, !dbg !1083
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1084, !tbaa !814
  tail call void @_exit(i32 noundef %21) #38, !dbg !1085
  unreachable, !dbg !1085

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1086, !tbaa !753
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1088
  %25 = icmp eq i32 %24, 0, !dbg !1089
  br i1 %25, label %28, label %26, !dbg !1090

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1091, !tbaa !814
  tail call void @_exit(i32 noundef %27) #38, !dbg !1092
  unreachable, !dbg !1092

28:                                               ; preds = %22
  ret void, !dbg !1093
}

; Function Attrs: noreturn
declare !dbg !1094 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1095 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1099, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i32 %1, metadata !1100, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %2, metadata !1101, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata ptr %3, metadata !1102, metadata !DIExpression()), !dbg !1103
  tail call fastcc void @flush_stdout(), !dbg !1104
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1105, !tbaa !753
  %6 = icmp eq ptr %5, null, !dbg !1105
  br i1 %6, label %8, label %7, !dbg !1107

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1108
  br label %12, !dbg !1108

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1109, !tbaa !753
  %10 = tail call ptr @getprogname() #37, !dbg !1109
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %10) #36, !dbg !1109
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1111
  ret void, !dbg !1112
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1113 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1115, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i32 1, metadata !1117, metadata !DIExpression()), !dbg !1122
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1125
  %2 = icmp slt i32 %1, 0, !dbg !1126
  br i1 %2, label %6, label %3, !dbg !1127

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1128, !tbaa !753
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1128
  br label %6, !dbg !1128

6:                                                ; preds = %3, %0
  ret void, !dbg !1129
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1130 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1132, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata i32 %1, metadata !1133, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr %2, metadata !1134, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr %3, metadata !1135, metadata !DIExpression()), !dbg !1136
  %6 = load ptr, ptr @stderr, align 8, !dbg !1137, !tbaa !753
  call void @llvm.dbg.value(metadata ptr %6, metadata !1138, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %2, metadata !1178, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %3, metadata !1179, metadata !DIExpression()), !dbg !1180
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1182
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1183, !tbaa !814
  %9 = add i32 %8, 1, !dbg !1183
  store i32 %9, ptr @error_message_count, align 4, !dbg !1183, !tbaa !814
  %10 = icmp eq i32 %1, 0, !dbg !1184
  br i1 %10, label %20, label %11, !dbg !1186

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1187, metadata !DIExpression()), !dbg !1195
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1197
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1191, metadata !DIExpression()), !dbg !1198
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1199
  call void @llvm.dbg.value(metadata ptr %12, metadata !1190, metadata !DIExpression()), !dbg !1195
  %13 = icmp eq ptr %12, null, !dbg !1200
  br i1 %13, label %14, label %16, !dbg !1202

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #36, !dbg !1203
  call void @llvm.dbg.value(metadata ptr %15, metadata !1190, metadata !DIExpression()), !dbg !1195
  br label %16, !dbg !1204

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1195
  call void @llvm.dbg.value(metadata ptr %17, metadata !1190, metadata !DIExpression()), !dbg !1195
  %18 = load ptr, ptr @stderr, align 8, !dbg !1205, !tbaa !753
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %17) #36, !dbg !1205
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1206
  br label %20, !dbg !1207

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1208, !tbaa !753
  call void @llvm.dbg.value(metadata i32 10, metadata !1209, metadata !DIExpression()), !dbg !1216
  call void @llvm.dbg.value(metadata ptr %21, metadata !1215, metadata !DIExpression()), !dbg !1216
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1218
  %23 = load ptr, ptr %22, align 8, !dbg !1218, !tbaa !1219
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1218
  %25 = load ptr, ptr %24, align 8, !dbg !1218, !tbaa !1222
  %26 = icmp ult ptr %23, %25, !dbg !1218
  br i1 %26, label %29, label %27, !dbg !1218, !prof !1223

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1218
  br label %31, !dbg !1218

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1218
  store ptr %30, ptr %22, align 8, !dbg !1218, !tbaa !1219
  store i8 10, ptr %23, align 1, !dbg !1218, !tbaa !823
  br label %31, !dbg !1218

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1224, !tbaa !753
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1224
  %34 = icmp eq i32 %0, 0, !dbg !1225
  br i1 %34, label %36, label %35, !dbg !1227

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1228
  unreachable, !dbg !1228

36:                                               ; preds = %31
  ret void, !dbg !1229
}

declare !dbg !1230 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1233 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1236 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1239 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1242 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1246 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1250, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata i32 %1, metadata !1251, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr %2, metadata !1252, metadata !DIExpression()), !dbg !1259
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1260
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1253, metadata !DIExpression()), !dbg !1261
  call void @llvm.va_start(ptr nonnull %4), !dbg !1262
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1263
  call void @llvm.va_end(ptr nonnull %4), !dbg !1264
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1265
  ret void, !dbg !1265
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !328 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !340, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %1, metadata !341, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %2, metadata !342, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata i32 %3, metadata !343, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %4, metadata !344, metadata !DIExpression()), !dbg !1266
  call void @llvm.dbg.value(metadata ptr %5, metadata !345, metadata !DIExpression()), !dbg !1266
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1267, !tbaa !814
  %8 = icmp eq i32 %7, 0, !dbg !1267
  br i1 %8, label %23, label %9, !dbg !1269

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1270, !tbaa !814
  %11 = icmp eq i32 %10, %3, !dbg !1273
  br i1 %11, label %12, label %22, !dbg !1274

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1275, !tbaa !753
  %14 = icmp eq ptr %13, %2, !dbg !1276
  br i1 %14, label %36, label %15, !dbg !1277

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1278
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1279
  br i1 %18, label %19, label %22, !dbg !1279

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1280
  %21 = icmp eq i32 %20, 0, !dbg !1281
  br i1 %21, label %36, label %22, !dbg !1282

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1283, !tbaa !753
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1284, !tbaa !814
  br label %23, !dbg !1285

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1286
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1287, !tbaa !753
  %25 = icmp eq ptr %24, null, !dbg !1287
  br i1 %25, label %27, label %26, !dbg !1289

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1290
  br label %31, !dbg !1290

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1291, !tbaa !753
  %29 = tail call ptr @getprogname() #37, !dbg !1291
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %29) #36, !dbg !1291
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1293, !tbaa !753
  %33 = icmp eq ptr %2, null, !dbg !1293
  %34 = select i1 %33, ptr @.str.3.31, ptr @.str.2.32, !dbg !1293
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1293
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1294
  br label %36, !dbg !1295

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1295
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1296 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1300, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %1, metadata !1301, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata ptr %2, metadata !1302, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i32 %3, metadata !1303, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata ptr %4, metadata !1304, metadata !DIExpression()), !dbg !1306
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1307
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1305, metadata !DIExpression()), !dbg !1308
  call void @llvm.va_start(ptr nonnull %6), !dbg !1309
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1310
  call void @llvm.va_end(ptr nonnull %6), !dbg !1311
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1312
  ret void, !dbg !1312
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1313 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1316, !tbaa !753
  ret ptr %1, !dbg !1317
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1318 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1323, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata ptr %1, metadata !1324, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata ptr %2, metadata !1325, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata ptr %3, metadata !1326, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata ptr %4, metadata !1327, metadata !DIExpression()), !dbg !1349
  call void @llvm.dbg.value(metadata ptr %5, metadata !1328, metadata !DIExpression()), !dbg !1349
  %8 = load i32, ptr @opterr, align 4, !dbg !1350, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %8, metadata !1329, metadata !DIExpression()), !dbg !1349
  store i32 0, ptr @opterr, align 4, !dbg !1351, !tbaa !814
  %9 = icmp eq i32 %0, 2, !dbg !1352
  br i1 %9, label %10, label %15, !dbg !1353

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %11, metadata !1330, metadata !DIExpression()), !dbg !1355
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1356

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #36, !dbg !1357
  br label %15, !dbg !1358

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36, !dbg !1359
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1333, metadata !DIExpression()), !dbg !1360
  call void @llvm.va_start(ptr nonnull %7), !dbg !1361
  %14 = load ptr, ptr @stdout, align 8, !dbg !1362, !tbaa !753
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #36, !dbg !1363
  call void @exit(i32 noundef 0) #38, !dbg !1364
  unreachable, !dbg !1364

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1365, !tbaa !814
  store i32 0, ptr @optind, align 4, !dbg !1366, !tbaa !814
  ret void, !dbg !1367
}

; Function Attrs: nounwind
declare !dbg !1368 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1374 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1378, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %1, metadata !1379, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %2, metadata !1380, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %3, metadata !1381, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %4, metadata !1382, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i1 %5, metadata !1383, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %6, metadata !1384, metadata !DIExpression()), !dbg !1393
  %9 = load i32, ptr @opterr, align 4, !dbg !1394, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %9, metadata !1385, metadata !DIExpression()), !dbg !1393
  store i32 1, ptr @opterr, align 4, !dbg !1395, !tbaa !814
  %10 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %10, metadata !1386, metadata !DIExpression()), !dbg !1393
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %11, metadata !1387, metadata !DIExpression()), !dbg !1393
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1398

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #36, !dbg !1399
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1388, metadata !DIExpression()), !dbg !1400
  call void @llvm.va_start(ptr nonnull %8), !dbg !1401
  %13 = load ptr, ptr @stdout, align 8, !dbg !1402, !tbaa !753
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1403
  call void @exit(i32 noundef 0) #38, !dbg !1404
  unreachable, !dbg !1404

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1405, !tbaa !814
  br label %16, !dbg !1406

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #36, !dbg !1407
  br label %18, !dbg !1408

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1408, !tbaa !814
  ret void, !dbg !1409
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1410 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1412, metadata !DIExpression()), !dbg !1415
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1416
  call void @llvm.dbg.value(metadata ptr %2, metadata !1413, metadata !DIExpression()), !dbg !1415
  %3 = icmp eq ptr %2, null, !dbg !1417
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1417
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1417
  call void @llvm.dbg.value(metadata ptr %5, metadata !1414, metadata !DIExpression()), !dbg !1415
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
  call void @llvm.dbg.value(metadata ptr %5, metadata !1412, metadata !DIExpression()), !dbg !1415
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #37, !dbg !1435
  %16 = icmp eq i32 %15, 0, !dbg !1438
  %17 = select i1 %16, i64 3, i64 0, !dbg !1439
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1439
  br label %19, !dbg !1439

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1415
  call void @llvm.dbg.value(metadata ptr %21, metadata !1414, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata ptr %20, metadata !1412, metadata !DIExpression()), !dbg !1415
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
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !412, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata ptr %1, metadata !413, metadata !DIExpression()), !dbg !1445
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1446
  call void @llvm.dbg.value(metadata ptr %5, metadata !414, metadata !DIExpression()), !dbg !1445
  %6 = icmp eq ptr %5, %0, !dbg !1447
  br i1 %6, label %7, label %14, !dbg !1449

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %4, metadata !420, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata ptr %4, metadata !1453, metadata !DIExpression()), !dbg !1460
  call void @llvm.dbg.value(metadata ptr %4, metadata !1462, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i32 0, metadata !1468, metadata !DIExpression()), !dbg !1470
  call void @llvm.dbg.value(metadata i64 8, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i64 0, ptr %4, align 8, !dbg !1472
  call void @llvm.dbg.value(metadata ptr %3, metadata !415, metadata !DIExpression(DW_OP_deref)), !dbg !1445
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1473
  %9 = icmp eq i64 %8, 2, !dbg !1475
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !415, metadata !DIExpression()), !dbg !1445
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1476
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1477
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1477
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1445
  ret ptr %15, !dbg !1477
}

; Function Attrs: nounwind
declare !dbg !1478 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1489, metadata !DIExpression()), !dbg !1492
  %2 = tail call ptr @__errno_location() #39, !dbg !1493
  %3 = load i32, ptr %2, align 4, !dbg !1493, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %3, metadata !1490, metadata !DIExpression()), !dbg !1492
  %4 = icmp eq ptr %0, null, !dbg !1494
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1494
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1495
  call void @llvm.dbg.value(metadata ptr %6, metadata !1491, metadata !DIExpression()), !dbg !1492
  store i32 %3, ptr %2, align 4, !dbg !1496, !tbaa !814
  ret ptr %6, !dbg !1497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1498 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1504, metadata !DIExpression()), !dbg !1505
  %2 = icmp eq ptr %0, null, !dbg !1506
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1506
  %4 = load i32, ptr %3, align 8, !dbg !1507, !tbaa !1508
  ret i32 %4, !dbg !1510
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1511 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1517
  %3 = icmp eq ptr %0, null, !dbg !1518
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1518
  store i32 %1, ptr %4, align 8, !dbg !1519, !tbaa !1508
  ret void, !dbg !1520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1521 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1525, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1526, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i32 %2, metadata !1527, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i8 %1, metadata !1528, metadata !DIExpression()), !dbg !1533
  %4 = icmp eq ptr %0, null, !dbg !1534
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1534
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1535
  %7 = lshr i8 %1, 5, !dbg !1536
  %8 = zext i8 %7 to i64, !dbg !1536
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %9, metadata !1529, metadata !DIExpression()), !dbg !1533
  %10 = and i8 %1, 31, !dbg !1538
  %11 = zext i8 %10 to i32, !dbg !1538
  call void @llvm.dbg.value(metadata i32 %11, metadata !1531, metadata !DIExpression()), !dbg !1533
  %12 = load i32, ptr %9, align 4, !dbg !1539, !tbaa !814
  %13 = lshr i32 %12, %11, !dbg !1540
  %14 = and i32 %13, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %14, metadata !1532, metadata !DIExpression()), !dbg !1533
  %15 = xor i32 %13, %2, !dbg !1542
  %16 = and i32 %15, 1, !dbg !1542
  %17 = shl nuw i32 %16, %11, !dbg !1543
  %18 = xor i32 %17, %12, !dbg !1544
  store i32 %18, ptr %9, align 4, !dbg !1544, !tbaa !814
  ret i32 %14, !dbg !1545
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1546 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i32 %1, metadata !1551, metadata !DIExpression()), !dbg !1553
  %3 = icmp eq ptr %0, null, !dbg !1554
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1556
  call void @llvm.dbg.value(metadata ptr %4, metadata !1550, metadata !DIExpression()), !dbg !1553
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1557
  %6 = load i32, ptr %5, align 4, !dbg !1557, !tbaa !1558
  call void @llvm.dbg.value(metadata i32 %6, metadata !1552, metadata !DIExpression()), !dbg !1553
  store i32 %1, ptr %5, align 4, !dbg !1559, !tbaa !1558
  ret i32 %6, !dbg !1560
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1561 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1565, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.value(metadata ptr %2, metadata !1567, metadata !DIExpression()), !dbg !1568
  %4 = icmp eq ptr %0, null, !dbg !1569
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1571
  call void @llvm.dbg.value(metadata ptr %5, metadata !1565, metadata !DIExpression()), !dbg !1568
  store i32 10, ptr %5, align 8, !dbg !1572, !tbaa !1508
  %6 = icmp ne ptr %1, null, !dbg !1573
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1575
  br i1 %8, label %10, label %9, !dbg !1575

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1576
  unreachable, !dbg !1576

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1577
  store ptr %1, ptr %11, align 8, !dbg !1578, !tbaa !1579
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1580
  store ptr %2, ptr %12, align 8, !dbg !1581, !tbaa !1582
  ret void, !dbg !1583
}

; Function Attrs: noreturn nounwind
declare !dbg !1584 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1585 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1589, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %1, metadata !1590, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %2, metadata !1591, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata i64 %3, metadata !1592, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %4, metadata !1593, metadata !DIExpression()), !dbg !1597
  %6 = icmp eq ptr %4, null, !dbg !1598
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1598
  call void @llvm.dbg.value(metadata ptr %7, metadata !1594, metadata !DIExpression()), !dbg !1597
  %8 = tail call ptr @__errno_location() #39, !dbg !1599
  %9 = load i32, ptr %8, align 4, !dbg !1599, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %9, metadata !1595, metadata !DIExpression()), !dbg !1597
  %10 = load i32, ptr %7, align 8, !dbg !1600, !tbaa !1508
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1601
  %12 = load i32, ptr %11, align 4, !dbg !1601, !tbaa !1558
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1602
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1603
  %15 = load ptr, ptr %14, align 8, !dbg !1603, !tbaa !1579
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1604
  %17 = load ptr, ptr %16, align 8, !dbg !1604, !tbaa !1582
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1605
  call void @llvm.dbg.value(metadata i64 %18, metadata !1596, metadata !DIExpression()), !dbg !1597
  store i32 %9, ptr %8, align 4, !dbg !1606, !tbaa !814
  ret i64 %18, !dbg !1607
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1608 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1614, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %1, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %2, metadata !1616, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %3, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %4, metadata !1618, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %5, metadata !1619, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %6, metadata !1620, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %7, metadata !1621, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %8, metadata !1622, metadata !DIExpression()), !dbg !1676
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1677
  %17 = icmp eq i64 %16, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i1 %17, metadata !1623, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr null, metadata !1626, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1627, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1676
  %18 = trunc i32 %5 to i8, !dbg !1679
  %19 = lshr i8 %18, 1, !dbg !1679
  %20 = and i8 %19, 1, !dbg !1679
  call void @llvm.dbg.value(metadata i8 %20, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1676
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1680

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1681
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1682
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1683
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1684
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1676
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1685
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1686
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %39, metadata !1631, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %38, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %37, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %36, metadata !1628, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %35, metadata !1627, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %34, metadata !1626, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %33, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %32, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %31, metadata !1622, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %30, metadata !1621, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %29, metadata !1618, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.label(metadata !1669), !dbg !1687
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1676
  switch i32 %29, label %114 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %115
    i32 0, label %113
    i32 2, label %105
    i32 4, label %99
    i32 3, label %96
    i32 1, label %97
    i32 10, label %73
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1688

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 5, metadata !1618, metadata !DIExpression()), !dbg !1676
  br label %115, !dbg !1689

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 5, metadata !1618, metadata !DIExpression()), !dbg !1676
  %43 = and i8 %37, 1, !dbg !1690
  %44 = icmp eq i8 %43, 0, !dbg !1690
  br i1 %44, label %45, label %115, !dbg !1689

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1692
  br i1 %46, label %115, label %47, !dbg !1695

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1692, !tbaa !823
  br label %115, !dbg !1692

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !518, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %29, metadata !519, metadata !DIExpression()), !dbg !1696
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #36, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %49, metadata !520, metadata !DIExpression()), !dbg !1696
  %50 = icmp eq ptr %49, @.str.11.64, !dbg !1701
  br i1 %50, label %51, label %60, !dbg !1703

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1704
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1705
  call void @llvm.dbg.declare(metadata ptr %13, metadata !522, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %13, metadata !1707, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata ptr %13, metadata !1715, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i64 8, metadata !1719, metadata !DIExpression()), !dbg !1720
  store i64 0, ptr %13, align 8, !dbg !1722
  call void @llvm.dbg.value(metadata ptr %12, metadata !521, metadata !DIExpression(DW_OP_deref)), !dbg !1696
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1723
  %53 = icmp eq i64 %52, 3, !dbg !1725
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !521, metadata !DIExpression()), !dbg !1696
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1726
  %57 = icmp eq i32 %29, 9, !dbg !1726
  %58 = select i1 %57, ptr @.str.10.66, ptr @.str.12.67, !dbg !1726
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1726
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1727
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1696
  call void @llvm.dbg.value(metadata ptr %61, metadata !1621, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !518, metadata !DIExpression()), !dbg !1728
  call void @llvm.dbg.value(metadata i32 %29, metadata !519, metadata !DIExpression()), !dbg !1728
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #36, !dbg !1730
  call void @llvm.dbg.value(metadata ptr %62, metadata !520, metadata !DIExpression()), !dbg !1728
  %63 = icmp eq ptr %62, @.str.12.67, !dbg !1731
  br i1 %63, label %64, label %73, !dbg !1732

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1733
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1734
  call void @llvm.dbg.declare(metadata ptr %11, metadata !522, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata ptr %11, metadata !1707, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %11, metadata !1715, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1738
  call void @llvm.dbg.value(metadata i64 8, metadata !1719, metadata !DIExpression()), !dbg !1738
  store i64 0, ptr %11, align 8, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %10, metadata !521, metadata !DIExpression(DW_OP_deref)), !dbg !1728
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1741
  %66 = icmp eq i64 %65, 3, !dbg !1742
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !521, metadata !DIExpression()), !dbg !1728
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1743
  %70 = icmp eq i32 %29, 9, !dbg !1743
  %71 = select i1 %70, ptr @.str.10.66, ptr @.str.12.67, !dbg !1743
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1743
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1744
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1622, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %74, metadata !1621, metadata !DIExpression()), !dbg !1676
  %76 = and i8 %37, 1, !dbg !1745
  %77 = icmp eq i8 %76, 0, !dbg !1745
  br i1 %77, label %78, label %93, !dbg !1746

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1633, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1676
  %79 = load i8, ptr %74, align 1, !dbg !1748, !tbaa !823
  %80 = icmp eq i8 %79, 0, !dbg !1750
  br i1 %80, label %93, label %81, !dbg !1750

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1633, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %84, metadata !1624, metadata !DIExpression()), !dbg !1676
  %85 = icmp ult i64 %84, %40, !dbg !1751
  br i1 %85, label %86, label %88, !dbg !1754

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1751
  store i8 %82, ptr %87, align 1, !dbg !1751, !tbaa !823
  br label %88, !dbg !1751

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %89, metadata !1624, metadata !DIExpression()), !dbg !1676
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %90, metadata !1633, metadata !DIExpression()), !dbg !1747
  %91 = load i8, ptr %90, align 1, !dbg !1748, !tbaa !823
  %92 = icmp eq i8 %91, 0, !dbg !1750
  br i1 %92, label %93, label %81, !dbg !1750, !llvm.loop !1756

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %94, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %75, metadata !1626, metadata !DIExpression()), !dbg !1676
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %95, metadata !1627, metadata !DIExpression()), !dbg !1676
  br label %115, !dbg !1760

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1676
  br label %97, !dbg !1761

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %98, metadata !1628, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1676
  br label %99, !dbg !1762

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1684
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %101, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %100, metadata !1628, metadata !DIExpression()), !dbg !1676
  %102 = and i8 %101, 1, !dbg !1763
  %103 = icmp eq i8 %102, 0, !dbg !1763
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1765
  br label %105, !dbg !1765

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1676
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1679
  call void @llvm.dbg.value(metadata i8 %107, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %106, metadata !1628, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 2, metadata !1618, metadata !DIExpression()), !dbg !1676
  %108 = and i8 %107, 1, !dbg !1766
  %109 = icmp eq i8 %108, 0, !dbg !1766
  br i1 %109, label %110, label %115, !dbg !1768

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1769
  br i1 %111, label %115, label %112, !dbg !1772

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1769, !tbaa !823
  br label %115, !dbg !1769

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1676
  br label %115, !dbg !1773

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1774
  unreachable, !dbg !1774

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1758
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.66, %45 ], [ @.str.10.66, %47 ], [ @.str.10.66, %42 ], [ %34, %28 ], [ @.str.12.67, %110 ], [ @.str.12.67, %112 ], [ @.str.12.67, %105 ], [ @.str.10.66, %41 ], !dbg !1676
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1676
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1676
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %123, metadata !1629, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %122, metadata !1628, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %121, metadata !1627, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %120, metadata !1626, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %119, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %118, metadata !1622, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata ptr %117, metadata !1621, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %116, metadata !1618, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 0, metadata !1638, metadata !DIExpression()), !dbg !1775
  %124 = and i8 %122, 1
  %125 = icmp ne i8 %124, 0
  %126 = icmp ne i32 %116, 2
  %127 = and i1 %126, %125
  %128 = icmp ne i64 %121, 0
  %129 = select i1 %127, i1 %128, i1 false
  %130 = icmp ugt i64 %121, 1
  %131 = and i8 %123, 1
  %132 = icmp eq i8 %131, 0
  %133 = icmp eq i32 %116, 2
  %134 = select i1 %126, i1 true, i1 %132
  %135 = icmp ne i8 %131, 0
  %136 = select i1 %135, i1 %128, i1 false
  %137 = and i1 %26, %135
  br label %138, !dbg !1776

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1758
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1681
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1685
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1686
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1777
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1778
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %145, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %144, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %143, metadata !1631, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %142, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %141, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %140, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %139, metadata !1617, metadata !DIExpression()), !dbg !1676
  %147 = icmp eq i64 %139, -1, !dbg !1779
  br i1 %147, label %148, label %152, !dbg !1780

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1781
  %150 = load i8, ptr %149, align 1, !dbg !1781, !tbaa !823
  %151 = icmp eq i8 %150, 0, !dbg !1782
  br i1 %151, label %627, label %154, !dbg !1783

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1784
  br i1 %153, label %627, label %154, !dbg !1783

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 0, metadata !1644, metadata !DIExpression()), !dbg !1785
  br i1 %129, label %155, label %170, !dbg !1786

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1788
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1789
  br i1 %157, label %158, label %160, !dbg !1789

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %159, metadata !1617, metadata !DIExpression()), !dbg !1676
  br label %160, !dbg !1791

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1791
  call void @llvm.dbg.value(metadata i64 %161, metadata !1617, metadata !DIExpression()), !dbg !1676
  %162 = icmp ugt i64 %156, %161, !dbg !1792
  br i1 %162, label %170, label %163, !dbg !1793

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1794
  call void @llvm.dbg.value(metadata ptr %164, metadata !1795, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata ptr %120, metadata !1798, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i64 %121, metadata !1799, metadata !DIExpression()), !dbg !1800
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1802
  %166 = icmp ne i32 %165, 0, !dbg !1803
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1804
  %168 = xor i1 %166, true, !dbg !1804
  %169 = zext i1 %168 to i8, !dbg !1804
  br i1 %167, label %170, label %688, !dbg !1804

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1785
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1785
  call void @llvm.dbg.value(metadata i8 %173, metadata !1640, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %171, metadata !1617, metadata !DIExpression()), !dbg !1676
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1805
  %175 = load i8, ptr %174, align 1, !dbg !1805, !tbaa !823
  call void @llvm.dbg.value(metadata i8 %175, metadata !1645, metadata !DIExpression()), !dbg !1785
  switch i8 %175, label %308 [
    i8 0, label %176
    i8 63, label %226
    i8 7, label %274
    i8 8, label %263
    i8 12, label %264
    i8 10, label %272
    i8 13, label %265
    i8 9, label %266
    i8 11, label %267
    i8 92, label %268
    i8 123, label %276
    i8 125, label %276
    i8 35, label %280
    i8 126, label %280
    i8 32, label %282
    i8 33, label %283
    i8 34, label %283
    i8 36, label %283
    i8 38, label %283
    i8 40, label %283
    i8 41, label %283
    i8 42, label %283
    i8 59, label %283
    i8 60, label %283
    i8 61, label %283
    i8 62, label %283
    i8 91, label %283
    i8 94, label %283
    i8 96, label %283
    i8 124, label %283
    i8 39, label %285
    i8 37, label %480
    i8 43, label %480
    i8 44, label %480
    i8 45, label %480
    i8 46, label %480
    i8 47, label %480
    i8 48, label %480
    i8 49, label %480
    i8 50, label %480
    i8 51, label %480
    i8 52, label %480
    i8 53, label %480
    i8 54, label %480
    i8 55, label %480
    i8 56, label %480
    i8 57, label %480
    i8 58, label %480
    i8 65, label %480
    i8 66, label %480
    i8 67, label %480
    i8 68, label %480
    i8 69, label %480
    i8 70, label %480
    i8 71, label %480
    i8 72, label %480
    i8 73, label %480
    i8 74, label %480
    i8 75, label %480
    i8 76, label %480
    i8 77, label %480
    i8 78, label %480
    i8 79, label %480
    i8 80, label %480
    i8 81, label %480
    i8 82, label %480
    i8 83, label %480
    i8 84, label %480
    i8 85, label %480
    i8 86, label %480
    i8 87, label %480
    i8 88, label %480
    i8 89, label %480
    i8 90, label %480
    i8 93, label %480
    i8 95, label %480
    i8 97, label %480
    i8 98, label %480
    i8 99, label %480
    i8 100, label %480
    i8 101, label %480
    i8 102, label %480
    i8 103, label %480
    i8 104, label %480
    i8 105, label %480
    i8 106, label %480
    i8 107, label %480
    i8 108, label %480
    i8 109, label %480
    i8 110, label %480
    i8 111, label %480
    i8 112, label %480
    i8 113, label %480
    i8 114, label %480
    i8 115, label %480
    i8 116, label %480
    i8 117, label %480
    i8 118, label %480
    i8 119, label %480
    i8 120, label %480
    i8 121, label %480
    i8 122, label %480
  ], !dbg !1806

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1807

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1808

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1785
  %179 = and i8 %144, 1, !dbg !1812
  %180 = icmp eq i8 %179, 0, !dbg !1812
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1812
  br i1 %181, label %182, label %198, !dbg !1812

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1814
  br i1 %183, label %184, label %186, !dbg !1818

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1814
  store i8 39, ptr %185, align 1, !dbg !1814, !tbaa !823
  br label %186, !dbg !1814

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %187, metadata !1624, metadata !DIExpression()), !dbg !1676
  %188 = icmp ult i64 %187, %146, !dbg !1819
  br i1 %188, label %189, label %191, !dbg !1822

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1819
  store i8 36, ptr %190, align 1, !dbg !1819, !tbaa !823
  br label %191, !dbg !1819

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %192, metadata !1624, metadata !DIExpression()), !dbg !1676
  %193 = icmp ult i64 %192, %146, !dbg !1823
  br i1 %193, label %194, label %196, !dbg !1826

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1823
  store i8 39, ptr %195, align 1, !dbg !1823, !tbaa !823
  br label %196, !dbg !1823

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %197, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1676
  br label %198, !dbg !1827

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1676
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %200, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %199, metadata !1624, metadata !DIExpression()), !dbg !1676
  %201 = icmp ult i64 %199, %146, !dbg !1828
  br i1 %201, label %202, label %204, !dbg !1831

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1828
  store i8 92, ptr %203, align 1, !dbg !1828, !tbaa !823
  br label %204, !dbg !1828

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %205, metadata !1624, metadata !DIExpression()), !dbg !1676
  br i1 %126, label %206, label %491, !dbg !1832

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1834
  %208 = icmp ult i64 %207, %171, !dbg !1835
  br i1 %208, label %209, label %480, !dbg !1836

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1837
  %211 = load i8, ptr %210, align 1, !dbg !1837, !tbaa !823
  %212 = add i8 %211, -48, !dbg !1838
  %213 = icmp ult i8 %212, 10, !dbg !1838
  br i1 %213, label %214, label %480, !dbg !1838

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1839
  br i1 %215, label %216, label %218, !dbg !1843

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1839
  store i8 48, ptr %217, align 1, !dbg !1839, !tbaa !823
  br label %218, !dbg !1839

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %219, metadata !1624, metadata !DIExpression()), !dbg !1676
  %220 = icmp ult i64 %219, %146, !dbg !1844
  br i1 %220, label %221, label %223, !dbg !1847

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1844
  store i8 48, ptr %222, align 1, !dbg !1844, !tbaa !823
  br label %223, !dbg !1844

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %224, metadata !1624, metadata !DIExpression()), !dbg !1676
  br label %480, !dbg !1848

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1849

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1850

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1851

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1853

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1855
  %231 = icmp ult i64 %230, %171, !dbg !1856
  br i1 %231, label %232, label %480, !dbg !1857

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1858
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1859
  %235 = load i8, ptr %234, align 1, !dbg !1859, !tbaa !823
  %236 = icmp eq i8 %235, 63, !dbg !1860
  br i1 %236, label %237, label %480, !dbg !1861

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1862
  %239 = load i8, ptr %238, align 1, !dbg !1862, !tbaa !823
  %240 = sext i8 %239 to i32, !dbg !1862
  switch i32 %240, label %480 [
    i32 33, label %241
    i32 39, label %241
    i32 40, label %241
    i32 41, label %241
    i32 45, label %241
    i32 47, label %241
    i32 60, label %241
    i32 61, label %241
    i32 62, label %241
  ], !dbg !1863

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1864

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %230, metadata !1638, metadata !DIExpression()), !dbg !1775
  %243 = icmp ult i64 %140, %146, !dbg !1866
  br i1 %243, label %244, label %246, !dbg !1869

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1866
  store i8 63, ptr %245, align 1, !dbg !1866, !tbaa !823
  br label %246, !dbg !1866

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %247, metadata !1624, metadata !DIExpression()), !dbg !1676
  %248 = icmp ult i64 %247, %146, !dbg !1870
  br i1 %248, label %249, label %251, !dbg !1873

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1870
  store i8 34, ptr %250, align 1, !dbg !1870, !tbaa !823
  br label %251, !dbg !1870

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %252, metadata !1624, metadata !DIExpression()), !dbg !1676
  %253 = icmp ult i64 %252, %146, !dbg !1874
  br i1 %253, label %254, label %256, !dbg !1877

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1874
  store i8 34, ptr %255, align 1, !dbg !1874, !tbaa !823
  br label %256, !dbg !1874

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %257, metadata !1624, metadata !DIExpression()), !dbg !1676
  %258 = icmp ult i64 %257, %146, !dbg !1878
  br i1 %258, label %259, label %261, !dbg !1881

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1878
  store i8 63, ptr %260, align 1, !dbg !1878, !tbaa !823
  br label %261, !dbg !1878

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1881
  call void @llvm.dbg.value(metadata i64 %262, metadata !1624, metadata !DIExpression()), !dbg !1676
  br label %480, !dbg !1882

263:                                              ; preds = %170
  br label %274, !dbg !1883

264:                                              ; preds = %170
  br label %274, !dbg !1884

265:                                              ; preds = %170
  br label %272, !dbg !1885

266:                                              ; preds = %170
  br label %272, !dbg !1886

267:                                              ; preds = %170
  br label %274, !dbg !1887

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1888

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1889

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1892

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1894

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1895
  call void @llvm.dbg.label(metadata !1670), !dbg !1896
  br i1 %134, label %274, label %670, !dbg !1897

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1895
  call void @llvm.dbg.label(metadata !1672), !dbg !1899
  br i1 %125, label %535, label %491, !dbg !1900

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1901

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1902, !tbaa !823
  %279 = icmp eq i8 %278, 0, !dbg !1904
  br i1 %279, label %280, label %480, !dbg !1905

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1906
  br i1 %281, label %282, label %480, !dbg !1908

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1785
  br label %283, !dbg !1909

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1785
  call void @llvm.dbg.value(metadata i8 %284, metadata !1644, metadata !DIExpression()), !dbg !1785
  br i1 %134, label %480, label %670, !dbg !1910

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1644, metadata !DIExpression()), !dbg !1785
  br i1 %133, label %286, label %480, !dbg !1912

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1913

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1916
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1918
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1918
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %292, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %291, metadata !1625, metadata !DIExpression()), !dbg !1676
  %293 = icmp ult i64 %140, %292, !dbg !1919
  br i1 %293, label %294, label %296, !dbg !1922

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1919
  store i8 39, ptr %295, align 1, !dbg !1919, !tbaa !823
  br label %296, !dbg !1919

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %297, metadata !1624, metadata !DIExpression()), !dbg !1676
  %298 = icmp ult i64 %297, %292, !dbg !1923
  br i1 %298, label %299, label %301, !dbg !1926

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1923
  store i8 92, ptr %300, align 1, !dbg !1923, !tbaa !823
  br label %301, !dbg !1923

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %302, metadata !1624, metadata !DIExpression()), !dbg !1676
  %303 = icmp ult i64 %302, %292, !dbg !1927
  br i1 %303, label %304, label %306, !dbg !1930

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1927
  store i8 39, ptr %305, align 1, !dbg !1927, !tbaa !823
  br label %306, !dbg !1927

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %307, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1676
  br label %480, !dbg !1931

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1932

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1646, metadata !DIExpression()), !dbg !1933
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1934
  %311 = load ptr, ptr %310, align 8, !dbg !1934, !tbaa !753
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1934
  %314 = load i16, ptr %313, align 2, !dbg !1934, !tbaa !855
  %315 = lshr i16 %314, 14, !dbg !1936
  %316 = trunc i16 %315 to i8, !dbg !1936
  %317 = and i8 %316, 1, !dbg !1936
  call void @llvm.dbg.value(metadata i8 %317, metadata !1649, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %171, metadata !1617, metadata !DIExpression()), !dbg !1676
  %318 = icmp eq i8 %317, 0, !dbg !1937
  call void @llvm.dbg.value(metadata i1 %318, metadata !1644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1785
  br label %368, !dbg !1938

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1650, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata ptr %14, metadata !1707, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata ptr %14, metadata !1715, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i64 8, metadata !1719, metadata !DIExpression()), !dbg !1943
  store i64 0, ptr %14, align 8, !dbg !1945
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1933
  %320 = icmp eq i64 %171, -1, !dbg !1946
  br i1 %320, label %321, label %323, !dbg !1948

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1949
  call void @llvm.dbg.value(metadata i64 %322, metadata !1617, metadata !DIExpression()), !dbg !1676
  br label %323, !dbg !1950

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1785
  call void @llvm.dbg.value(metadata i64 %324, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1951
  %325 = sub i64 %324, %145, !dbg !1952
  call void @llvm.dbg.value(metadata ptr %15, metadata !1653, metadata !DIExpression(DW_OP_deref)), !dbg !1953
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %326, metadata !1657, metadata !DIExpression()), !dbg !1953
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1955

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1933
  %328 = icmp ugt i64 %324, %145, !dbg !1956
  br i1 %328, label %331, label %329, !dbg !1958

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1933
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %324, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i1 true, metadata !1644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1785
  br label %368, !dbg !1938

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1933
  br label %360, !dbg !1961

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1646, metadata !DIExpression()), !dbg !1933
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1963
  %335 = load i8, ptr %334, align 1, !dbg !1963, !tbaa !823
  %336 = icmp eq i8 %335, 0, !dbg !1958
  br i1 %336, label %363, label %337, !dbg !1964

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %338, metadata !1646, metadata !DIExpression()), !dbg !1933
  %339 = add i64 %338, %145, !dbg !1966
  %340 = icmp eq i64 %338, %325, !dbg !1956
  br i1 %340, label %363, label %331, !dbg !1958, !llvm.loop !1967

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1968
  %344 = and i1 %343, %133, !dbg !1968
  call void @llvm.dbg.value(metadata i64 1, metadata !1658, metadata !DIExpression()), !dbg !1969
  br i1 %344, label %345, label %354, !dbg !1968

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1658, metadata !DIExpression()), !dbg !1969
  %347 = add i64 %346, %145, !dbg !1970
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1972
  %349 = load i8, ptr %348, align 1, !dbg !1972, !tbaa !823
  %350 = sext i8 %349 to i32, !dbg !1972
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1973

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64 %352, metadata !1658, metadata !DIExpression()), !dbg !1969
  %353 = icmp eq i64 %352, %326, !dbg !1975
  br i1 %353, label %354, label %345, !dbg !1976, !llvm.loop !1977

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1979, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %355, metadata !1653, metadata !DIExpression()), !dbg !1953
  call void @llvm.dbg.value(metadata i32 %355, metadata !1981, metadata !DIExpression()), !dbg !1989
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1991
  %357 = icmp ne i32 %356, 0, !dbg !1992
  %358 = zext i1 %357 to i8, !dbg !1993
  call void @llvm.dbg.value(metadata i8 %358, metadata !1649, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %326, metadata !1646, metadata !DIExpression()), !dbg !1933
  br label %363, !dbg !1994

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1933
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1960
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1649, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1933
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %324, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i1 %361, metadata !1644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1785
  br label %368, !dbg !1938

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1649, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %364, metadata !1646, metadata !DIExpression()), !dbg !1933
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1959
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %324, metadata !1617, metadata !DIExpression()), !dbg !1676
  %366 = icmp eq i8 %365, 0, !dbg !1937
  call void @llvm.dbg.value(metadata i1 %366, metadata !1644, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1785
  %367 = icmp ugt i64 %364, 1, !dbg !1995
  br i1 %367, label %374, label %368, !dbg !1938

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1996
  br i1 %373, label %374, label %480, !dbg !1996

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %379, metadata !1666, metadata !DIExpression()), !dbg !1998
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1999

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1676
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1777
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1775
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1785
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !2000
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1785
  call void @llvm.dbg.value(metadata i8 %387, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %386, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %385, metadata !1640, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %384, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %383, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %382, metadata !1624, metadata !DIExpression()), !dbg !1676
  br i1 %380, label %388, label %434, !dbg !2001

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !2006

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1785
  %390 = and i8 %383, 1, !dbg !2009
  %391 = icmp eq i8 %390, 0, !dbg !2009
  %392 = select i1 %133, i1 %391, i1 false, !dbg !2009
  br i1 %392, label %393, label %409, !dbg !2009

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !2011
  br i1 %394, label %395, label %397, !dbg !2015

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2011
  store i8 39, ptr %396, align 1, !dbg !2011, !tbaa !823
  br label %397, !dbg !2011

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %398, metadata !1624, metadata !DIExpression()), !dbg !1676
  %399 = icmp ult i64 %398, %146, !dbg !2016
  br i1 %399, label %400, label %402, !dbg !2019

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !2016
  store i8 36, ptr %401, align 1, !dbg !2016, !tbaa !823
  br label %402, !dbg !2016

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %403, metadata !1624, metadata !DIExpression()), !dbg !1676
  %404 = icmp ult i64 %403, %146, !dbg !2020
  br i1 %404, label %405, label %407, !dbg !2023

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !2020
  store i8 39, ptr %406, align 1, !dbg !2020, !tbaa !823
  br label %407, !dbg !2020

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %408, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1676
  br label %409, !dbg !2024

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1676
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %411, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %410, metadata !1624, metadata !DIExpression()), !dbg !1676
  %412 = icmp ult i64 %410, %146, !dbg !2025
  br i1 %412, label %413, label %415, !dbg !2028

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2025
  store i8 92, ptr %414, align 1, !dbg !2025, !tbaa !823
  br label %415, !dbg !2025

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %416, metadata !1624, metadata !DIExpression()), !dbg !1676
  %417 = icmp ult i64 %416, %146, !dbg !2029
  br i1 %417, label %418, label %422, !dbg !2032

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2029
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2029
  store i8 %420, ptr %421, align 1, !dbg !2029, !tbaa !823
  br label %422, !dbg !2029

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %423, metadata !1624, metadata !DIExpression()), !dbg !1676
  %424 = icmp ult i64 %423, %146, !dbg !2033
  br i1 %424, label %425, label %430, !dbg !2036

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2033
  %428 = or i8 %427, 48, !dbg !2033
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2033
  store i8 %428, ptr %429, align 1, !dbg !2033, !tbaa !823
  br label %430, !dbg !2033

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %431, metadata !1624, metadata !DIExpression()), !dbg !1676
  %432 = and i8 %387, 7, !dbg !2037
  %433 = or i8 %432, 48, !dbg !2038
  call void @llvm.dbg.value(metadata i8 %433, metadata !1645, metadata !DIExpression()), !dbg !1785
  br label %443, !dbg !2039

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2040
  %436 = icmp eq i8 %435, 0, !dbg !2040
  br i1 %436, label %443, label %437, !dbg !2042

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2043
  br i1 %438, label %439, label %441, !dbg !2047

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2043
  store i8 92, ptr %440, align 1, !dbg !2043, !tbaa !823
  br label %441, !dbg !2043

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2047
  call void @llvm.dbg.value(metadata i64 %442, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1640, metadata !DIExpression()), !dbg !1785
  br label %443, !dbg !2048

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1676
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1777
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1785
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1785
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1785
  call void @llvm.dbg.value(metadata i8 %448, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %447, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %446, metadata !1640, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %445, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %444, metadata !1624, metadata !DIExpression()), !dbg !1676
  %449 = add i64 %384, 1, !dbg !2049
  %450 = icmp ugt i64 %379, %449, !dbg !2051
  br i1 %450, label %451, label %478, !dbg !2052

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2053
  %453 = icmp ne i8 %452, 0, !dbg !2053
  %454 = and i8 %447, 1, !dbg !2053
  %455 = icmp eq i8 %454, 0, !dbg !2053
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2053
  br i1 %456, label %457, label %468, !dbg !2053

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2056
  br i1 %458, label %459, label %461, !dbg !2060

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2056
  store i8 39, ptr %460, align 1, !dbg !2056, !tbaa !823
  br label %461, !dbg !2056

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %462, metadata !1624, metadata !DIExpression()), !dbg !1676
  %463 = icmp ult i64 %462, %146, !dbg !2061
  br i1 %463, label %464, label %466, !dbg !2064

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2061
  store i8 39, ptr %465, align 1, !dbg !2061, !tbaa !823
  br label %466, !dbg !2061

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %467, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1676
  br label %468, !dbg !2065

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2066
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %470, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %469, metadata !1624, metadata !DIExpression()), !dbg !1676
  %471 = icmp ult i64 %469, %146, !dbg !2067
  br i1 %471, label %472, label %474, !dbg !2070

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2067
  store i8 %448, ptr %473, align 1, !dbg !2067, !tbaa !823
  br label %474, !dbg !2067

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64 %475, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %449, metadata !1638, metadata !DIExpression()), !dbg !1775
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2071
  %477 = load i8, ptr %476, align 1, !dbg !2071, !tbaa !823
  call void @llvm.dbg.value(metadata i8 %477, metadata !1645, metadata !DIExpression()), !dbg !1785
  br label %381, !dbg !2072, !llvm.loop !2073

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i8 %448, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %479, metadata !1644, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %447, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %446, metadata !1640, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %384, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %445, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %444, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %378, metadata !1617, metadata !DIExpression()), !dbg !1676
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2076
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1676
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1681
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1676
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1676
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1775
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1785
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1785
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1785
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %489, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %488, metadata !1644, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %487, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %173, metadata !1640, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %486, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %485, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %484, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %483, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %482, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %481, metadata !1617, metadata !DIExpression()), !dbg !1676
  br i1 %127, label %502, label %491, !dbg !2077

491:                                              ; preds = %270, %225, %274, %204, %480
  %492 = phi i64 [ %490, %480 ], [ %146, %204 ], [ %146, %274 ], [ %146, %225 ], [ %146, %270 ]
  %493 = phi i8 [ %489, %480 ], [ 48, %204 ], [ %175, %274 ], [ 0, %225 ], [ 92, %270 ]
  %494 = phi i8 [ %488, %480 ], [ 0, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %495 = phi i8 [ %487, %480 ], [ 1, %204 ], [ 0, %274 ], [ 0, %225 ], [ 0, %270 ]
  %496 = phi i64 [ %486, %480 ], [ %145, %204 ], [ %145, %274 ], [ %145, %225 ], [ %145, %270 ]
  %497 = phi i8 [ %485, %480 ], [ %200, %204 ], [ %144, %274 ], [ %144, %225 ], [ %144, %270 ]
  %498 = phi i8 [ %484, %480 ], [ %142, %204 ], [ %142, %274 ], [ %142, %225 ], [ %142, %270 ]
  %499 = phi i64 [ %483, %480 ], [ %141, %204 ], [ %141, %274 ], [ %141, %225 ], [ %141, %270 ]
  %500 = phi i64 [ %482, %480 ], [ %205, %204 ], [ %140, %274 ], [ %140, %225 ], [ %140, %270 ]
  %501 = phi i64 [ %481, %480 ], [ %171, %204 ], [ %171, %274 ], [ %171, %225 ], [ %171, %270 ]
  br i1 %137, label %503, label %524, !dbg !2079

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2080

503:                                              ; preds = %491, %502
  %504 = phi i64 [ %492, %491 ], [ %490, %502 ]
  %505 = phi i8 [ %493, %491 ], [ %489, %502 ]
  %506 = phi i8 [ %494, %491 ], [ %488, %502 ]
  %507 = phi i8 [ %495, %491 ], [ %487, %502 ]
  %508 = phi i64 [ %496, %491 ], [ %486, %502 ]
  %509 = phi i8 [ %497, %491 ], [ %485, %502 ]
  %510 = phi i8 [ %498, %491 ], [ %484, %502 ]
  %511 = phi i64 [ %499, %491 ], [ %483, %502 ]
  %512 = phi i64 [ %500, %491 ], [ %482, %502 ]
  %513 = phi i64 [ %501, %491 ], [ %481, %502 ]
  %514 = lshr i8 %505, 5, !dbg !2081
  %515 = zext i8 %514 to i64, !dbg !2081
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2082
  %517 = load i32, ptr %516, align 4, !dbg !2082, !tbaa !814
  %518 = and i8 %505, 31, !dbg !2083
  %519 = zext i8 %518 to i32, !dbg !2083
  %520 = shl nuw i32 1, %519, !dbg !2084
  %521 = and i32 %517, %520, !dbg !2084
  %522 = icmp eq i32 %521, 0, !dbg !2084
  %523 = and i1 %172, %522, !dbg !2085
  br i1 %523, label %573, label %535, !dbg !2085

524:                                              ; preds = %502, %491
  %525 = phi i64 [ %490, %502 ], [ %492, %491 ]
  %526 = phi i8 [ %489, %502 ], [ %493, %491 ]
  %527 = phi i8 [ %488, %502 ], [ %494, %491 ]
  %528 = phi i8 [ %487, %502 ], [ %495, %491 ]
  %529 = phi i64 [ %486, %502 ], [ %496, %491 ]
  %530 = phi i8 [ %485, %502 ], [ %497, %491 ]
  %531 = phi i8 [ %484, %502 ], [ %498, %491 ]
  %532 = phi i64 [ %483, %502 ], [ %499, %491 ]
  %533 = phi i64 [ %482, %502 ], [ %500, %491 ]
  %534 = phi i64 [ %481, %502 ], [ %501, %491 ]
  br i1 %172, label %573, label %535, !dbg !2086

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2076
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1676
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1681
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1685
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1777
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2087
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1785
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1785
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %543, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %542, metadata !1644, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %541, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %540, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %539, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %538, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %537, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %536, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.label(metadata !1673), !dbg !2088
  br i1 %132, label %545, label %674, !dbg !2089

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1785
  %546 = and i8 %540, 1, !dbg !2091
  %547 = icmp eq i8 %546, 0, !dbg !2091
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2091
  br i1 %548, label %549, label %565, !dbg !2091

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2093
  br i1 %550, label %551, label %553, !dbg !2097

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2093
  store i8 39, ptr %552, align 1, !dbg !2093, !tbaa !823
  br label %553, !dbg !2093

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %554, metadata !1624, metadata !DIExpression()), !dbg !1676
  %555 = icmp ult i64 %554, %544, !dbg !2098
  br i1 %555, label %556, label %558, !dbg !2101

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2098
  store i8 36, ptr %557, align 1, !dbg !2098, !tbaa !823
  br label %558, !dbg !2098

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %559, metadata !1624, metadata !DIExpression()), !dbg !1676
  %560 = icmp ult i64 %559, %544, !dbg !2102
  br i1 %560, label %561, label %563, !dbg !2105

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2102
  store i8 39, ptr %562, align 1, !dbg !2102, !tbaa !823
  br label %563, !dbg !2102

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %564, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1676
  br label %565, !dbg !2106

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1785
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %567, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %566, metadata !1624, metadata !DIExpression()), !dbg !1676
  %568 = icmp ult i64 %566, %544, !dbg !2107
  br i1 %568, label %569, label %571, !dbg !2110

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2107
  store i8 92, ptr %570, align 1, !dbg !2107, !tbaa !823
  br label %571, !dbg !2107

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %544, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %543, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %542, metadata !1644, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %541, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %567, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %539, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %538, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %572, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %536, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.label(metadata !1674), !dbg !2111
  br label %600, !dbg !2112

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2076
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1676
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1681
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1685
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1777
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2087
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1785
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1785
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2115
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %582, metadata !1645, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %581, metadata !1644, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 %580, metadata !1643, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i64 %579, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %578, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %577, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %576, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %575, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %574, metadata !1617, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.label(metadata !1674), !dbg !2111
  %584 = and i8 %578, 1, !dbg !2112
  %585 = icmp ne i8 %584, 0, !dbg !2112
  %586 = and i8 %580, 1, !dbg !2112
  %587 = icmp eq i8 %586, 0, !dbg !2112
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2112
  br i1 %588, label %589, label %600, !dbg !2112

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2116
  br i1 %590, label %591, label %593, !dbg !2120

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2116
  store i8 39, ptr %592, align 1, !dbg !2116, !tbaa !823
  br label %593, !dbg !2116

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %594, metadata !1624, metadata !DIExpression()), !dbg !1676
  %595 = icmp ult i64 %594, %583, !dbg !2121
  br i1 %595, label %596, label %598, !dbg !2124

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2121
  store i8 39, ptr %597, align 1, !dbg !2121, !tbaa !823
  br label %598, !dbg !2121

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %599, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1676
  br label %600, !dbg !2125

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1785
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1676
  call void @llvm.dbg.value(metadata i8 %609, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %608, metadata !1624, metadata !DIExpression()), !dbg !1676
  %610 = icmp ult i64 %608, %601, !dbg !2126
  br i1 %610, label %611, label %613, !dbg !2129

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2126
  store i8 %602, ptr %612, align 1, !dbg !2126, !tbaa !823
  br label %613, !dbg !2126

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %614, metadata !1624, metadata !DIExpression()), !dbg !1676
  %615 = icmp eq i8 %603, 0, !dbg !2130
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2132
  call void @llvm.dbg.value(metadata i8 %616, metadata !1631, metadata !DIExpression()), !dbg !1676
  br label %617, !dbg !2133

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2076
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1676
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1681
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1685
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1686
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1777
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2087
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %624, metadata !1638, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 %623, metadata !1632, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %622, metadata !1631, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %621, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %620, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %619, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %618, metadata !1617, metadata !DIExpression()), !dbg !1676
  %626 = add i64 %624, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %626, metadata !1638, metadata !DIExpression()), !dbg !1775
  br label %138, !dbg !2135, !llvm.loop !2136

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1615, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %143, metadata !1631, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 %142, metadata !1630, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %141, metadata !1625, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %140, metadata !1624, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %139, metadata !1617, metadata !DIExpression()), !dbg !1676
  %628 = icmp eq i64 %140, 0, !dbg !2138
  %629 = and i1 %133, %628, !dbg !2140
  %630 = xor i1 %629, true, !dbg !2140
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2140
  br i1 %631, label %632, label %670, !dbg !2140

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2141
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2141
  br i1 %636, label %637, label %646, !dbg !2141

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2143
  %639 = icmp eq i8 %638, 0, !dbg !2143
  br i1 %639, label %642, label %640, !dbg !2146

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2147
  br label %694, !dbg !2148

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2149
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2151
  br i1 %645, label %28, label %646, !dbg !2151

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2152
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2154
  br i1 %649, label %650, label %665, !dbg !2154

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1626, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %140, metadata !1624, metadata !DIExpression()), !dbg !1676
  %651 = load i8, ptr %120, align 1, !dbg !2155, !tbaa !823
  %652 = icmp eq i8 %651, 0, !dbg !2158
  br i1 %652, label %665, label %653, !dbg !2158

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1626, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i64 %656, metadata !1624, metadata !DIExpression()), !dbg !1676
  %657 = icmp ult i64 %656, %146, !dbg !2159
  br i1 %657, label %658, label %660, !dbg !2162

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2159
  store i8 %654, ptr %659, align 1, !dbg !2159, !tbaa !823
  br label %660, !dbg !2159

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2162
  call void @llvm.dbg.value(metadata i64 %661, metadata !1624, metadata !DIExpression()), !dbg !1676
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %662, metadata !1626, metadata !DIExpression()), !dbg !1676
  %663 = load i8, ptr %662, align 1, !dbg !2155, !tbaa !823
  %664 = icmp eq i8 %663, 0, !dbg !2158
  br i1 %664, label %665, label %653, !dbg !2158, !llvm.loop !2164

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %666, metadata !1624, metadata !DIExpression()), !dbg !1676
  %667 = icmp ult i64 %666, %146, !dbg !2166
  br i1 %667, label %668, label %694, !dbg !2168

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2169
  store i8 0, ptr %669, align 1, !dbg !2170, !tbaa !823
  br label %694, !dbg !2169

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1675), !dbg !2171
  %672 = icmp eq i8 %124, 0, !dbg !2172
  %673 = select i1 %672, i32 2, i32 4, !dbg !2172
  br label %684, !dbg !2172

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2172
  %678 = select i1 %677, i32 2, i32 4, !dbg !2172
  br label %679, !dbg !2174

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1675), !dbg !2171
  %683 = icmp eq i32 %116, 2, !dbg !2174
  br i1 %683, label %684, label %688, !dbg !2172

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2172

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1618, metadata !DIExpression()), !dbg !1676
  %692 = and i32 %5, -3, !dbg !2175
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2176
  br label %694, !dbg !2177

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2178
}

; Function Attrs: nounwind
declare !dbg !2179 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2182 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2185 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2187 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %1, metadata !2192, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %2, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr %0, metadata !2195, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr null, metadata !2201, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata ptr %2, metadata !2202, metadata !DIExpression()), !dbg !2208
  %4 = icmp eq ptr %2, null, !dbg !2210
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %5, metadata !2203, metadata !DIExpression()), !dbg !2208
  %6 = tail call ptr @__errno_location() #39, !dbg !2211
  %7 = load i32, ptr %6, align 4, !dbg !2211, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %7, metadata !2204, metadata !DIExpression()), !dbg !2208
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2212
  %9 = load i32, ptr %8, align 4, !dbg !2212, !tbaa !1558
  %10 = or i32 %9, 1, !dbg !2213
  call void @llvm.dbg.value(metadata i32 %10, metadata !2205, metadata !DIExpression()), !dbg !2208
  %11 = load i32, ptr %5, align 8, !dbg !2214, !tbaa !1508
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2215
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2216
  %14 = load ptr, ptr %13, align 8, !dbg !2216, !tbaa !1579
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2217
  %16 = load ptr, ptr %15, align 8, !dbg !2217, !tbaa !1582
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2218
  %18 = add i64 %17, 1, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %18, metadata !2206, metadata !DIExpression()), !dbg !2208
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2220
  call void @llvm.dbg.value(metadata ptr %19, metadata !2207, metadata !DIExpression()), !dbg !2208
  %20 = load i32, ptr %5, align 8, !dbg !2221, !tbaa !1508
  %21 = load ptr, ptr %13, align 8, !dbg !2222, !tbaa !1579
  %22 = load ptr, ptr %15, align 8, !dbg !2223, !tbaa !1582
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2224
  store i32 %7, ptr %6, align 4, !dbg !2225, !tbaa !814
  ret ptr %19, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2196 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2195, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata ptr %2, metadata !2201, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata ptr %3, metadata !2202, metadata !DIExpression()), !dbg !2227
  %5 = icmp eq ptr %3, null, !dbg !2228
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2228
  call void @llvm.dbg.value(metadata ptr %6, metadata !2203, metadata !DIExpression()), !dbg !2227
  %7 = tail call ptr @__errno_location() #39, !dbg !2229
  %8 = load i32, ptr %7, align 4, !dbg !2229, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %8, metadata !2204, metadata !DIExpression()), !dbg !2227
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2230
  %10 = load i32, ptr %9, align 4, !dbg !2230, !tbaa !1558
  %11 = icmp eq ptr %2, null, !dbg !2231
  %12 = zext i1 %11 to i32, !dbg !2231
  %13 = or i32 %10, %12, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %13, metadata !2205, metadata !DIExpression()), !dbg !2227
  %14 = load i32, ptr %6, align 8, !dbg !2233, !tbaa !1508
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2234
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2235
  %17 = load ptr, ptr %16, align 8, !dbg !2235, !tbaa !1579
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2236
  %19 = load ptr, ptr %18, align 8, !dbg !2236, !tbaa !1582
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2237
  %21 = add i64 %20, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %21, metadata !2206, metadata !DIExpression()), !dbg !2227
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2239
  call void @llvm.dbg.value(metadata ptr %22, metadata !2207, metadata !DIExpression()), !dbg !2227
  %23 = load i32, ptr %6, align 8, !dbg !2240, !tbaa !1508
  %24 = load ptr, ptr %16, align 8, !dbg !2241, !tbaa !1579
  %25 = load ptr, ptr %18, align 8, !dbg !2242, !tbaa !1582
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2243
  store i32 %8, ptr %7, align 4, !dbg !2244, !tbaa !814
  br i1 %11, label %28, label %27, !dbg !2245

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2246, !tbaa !2248
  br label %28, !dbg !2249

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2250
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2251 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2256, !tbaa !753
  call void @llvm.dbg.value(metadata ptr %1, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 1, metadata !2254, metadata !DIExpression()), !dbg !2258
  %2 = load i32, ptr @nslots, align 4, !tbaa !814
  call void @llvm.dbg.value(metadata i32 1, metadata !2254, metadata !DIExpression()), !dbg !2258
  %3 = icmp sgt i32 %2, 1, !dbg !2259
  br i1 %3, label %4, label %6, !dbg !2261

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2259
  br label %10, !dbg !2261

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2262
  %8 = load ptr, ptr %7, align 8, !dbg !2262, !tbaa !2264
  %9 = icmp eq ptr %8, @slot0, !dbg !2266
  br i1 %9, label %17, label %16, !dbg !2267

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2254, metadata !DIExpression()), !dbg !2258
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2268
  %13 = load ptr, ptr %12, align 8, !dbg !2268, !tbaa !2264
  tail call void @free(ptr noundef %13) #36, !dbg !2269
  %14 = add nuw nsw i64 %11, 1, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %14, metadata !2254, metadata !DIExpression()), !dbg !2258
  %15 = icmp eq i64 %14, %5, !dbg !2259
  br i1 %15, label %6, label %10, !dbg !2261, !llvm.loop !2271

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2273
  store i64 256, ptr @slotvec0, align 8, !dbg !2275, !tbaa !2276
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2277, !tbaa !2264
  br label %17, !dbg !2278

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2279
  br i1 %18, label %20, label %19, !dbg !2281

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2282
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2284, !tbaa !753
  br label %20, !dbg !2285

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2286, !tbaa !814
  ret void, !dbg !2287
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2288 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2291 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2293, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata ptr %1, metadata !2294, metadata !DIExpression()), !dbg !2295
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2296
  ret ptr %3, !dbg !2297
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2298 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %1, metadata !2303, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %2, metadata !2304, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata ptr %3, metadata !2305, metadata !DIExpression()), !dbg !2318
  %6 = tail call ptr @__errno_location() #39, !dbg !2319
  %7 = load i32, ptr %6, align 4, !dbg !2319, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %7, metadata !2306, metadata !DIExpression()), !dbg !2318
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2320, !tbaa !753
  call void @llvm.dbg.value(metadata ptr %8, metadata !2307, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2308, metadata !DIExpression()), !dbg !2318
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2321
  br i1 %9, label %10, label %11, !dbg !2321

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2323
  unreachable, !dbg !2323

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2324, !tbaa !814
  %13 = icmp sgt i32 %12, %0, !dbg !2325
  br i1 %13, label %32, label %14, !dbg !2326

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2327
  call void @llvm.dbg.value(metadata i1 %15, metadata !2309, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2328
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2329
  %16 = sext i32 %12 to i64, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %16, metadata !2312, metadata !DIExpression()), !dbg !2328
  store i64 %16, ptr %5, align 8, !dbg !2331, !tbaa !2248
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2332
  %18 = add nuw nsw i32 %0, 1, !dbg !2333
  %19 = sub i32 %18, %12, !dbg !2334
  %20 = sext i32 %19 to i64, !dbg !2335
  call void @llvm.dbg.value(metadata ptr %5, metadata !2312, metadata !DIExpression(DW_OP_deref)), !dbg !2328
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2336
  call void @llvm.dbg.value(metadata ptr %21, metadata !2307, metadata !DIExpression()), !dbg !2318
  store ptr %21, ptr @slotvec, align 8, !dbg !2337, !tbaa !753
  br i1 %15, label %22, label %23, !dbg !2338

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2339, !tbaa.struct !2341
  br label %23, !dbg !2342

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2343, !tbaa !814
  %25 = sext i32 %24 to i64, !dbg !2344
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2344
  %27 = load i64, ptr %5, align 8, !dbg !2345, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %27, metadata !2312, metadata !DIExpression()), !dbg !2328
  %28 = sub nsw i64 %27, %25, !dbg !2346
  %29 = shl i64 %28, 4, !dbg !2347
  call void @llvm.dbg.value(metadata ptr %26, metadata !1715, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i32 0, metadata !1718, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.value(metadata i64 %29, metadata !1719, metadata !DIExpression()), !dbg !2348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2350
  %30 = load i64, ptr %5, align 8, !dbg !2351, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %30, metadata !2312, metadata !DIExpression()), !dbg !2328
  %31 = trunc i64 %30 to i32, !dbg !2351
  store i32 %31, ptr @nslots, align 4, !dbg !2352, !tbaa !814
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2353
  br label %32, !dbg !2354

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2318
  call void @llvm.dbg.value(metadata ptr %33, metadata !2307, metadata !DIExpression()), !dbg !2318
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2355
  %36 = load i64, ptr %35, align 8, !dbg !2356, !tbaa !2276
  call void @llvm.dbg.value(metadata i64 %36, metadata !2313, metadata !DIExpression()), !dbg !2357
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2358
  %38 = load ptr, ptr %37, align 8, !dbg !2358, !tbaa !2264
  call void @llvm.dbg.value(metadata ptr %38, metadata !2315, metadata !DIExpression()), !dbg !2357
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2359
  %40 = load i32, ptr %39, align 4, !dbg !2359, !tbaa !1558
  %41 = or i32 %40, 1, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %41, metadata !2316, metadata !DIExpression()), !dbg !2357
  %42 = load i32, ptr %3, align 8, !dbg !2361, !tbaa !1508
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2362
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2363
  %45 = load ptr, ptr %44, align 8, !dbg !2363, !tbaa !1579
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2364
  %47 = load ptr, ptr %46, align 8, !dbg !2364, !tbaa !1582
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %48, metadata !2317, metadata !DIExpression()), !dbg !2357
  %49 = icmp ugt i64 %36, %48, !dbg !2366
  br i1 %49, label %60, label %50, !dbg !2368

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2369
  call void @llvm.dbg.value(metadata i64 %51, metadata !2313, metadata !DIExpression()), !dbg !2357
  store i64 %51, ptr %35, align 8, !dbg !2371, !tbaa !2276
  %52 = icmp eq ptr %38, @slot0, !dbg !2372
  br i1 %52, label %54, label %53, !dbg !2374

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2375
  br label %54, !dbg !2375

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2376
  call void @llvm.dbg.value(metadata ptr %55, metadata !2315, metadata !DIExpression()), !dbg !2357
  store ptr %55, ptr %37, align 8, !dbg !2377, !tbaa !2264
  %56 = load i32, ptr %3, align 8, !dbg !2378, !tbaa !1508
  %57 = load ptr, ptr %44, align 8, !dbg !2379, !tbaa !1579
  %58 = load ptr, ptr %46, align 8, !dbg !2380, !tbaa !1582
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2381
  br label %60, !dbg !2382

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2357
  call void @llvm.dbg.value(metadata ptr %61, metadata !2315, metadata !DIExpression()), !dbg !2357
  store i32 %7, ptr %6, align 4, !dbg !2383, !tbaa !814
  ret ptr %61, !dbg !2384
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2385 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata ptr %1, metadata !2390, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i64 %2, metadata !2391, metadata !DIExpression()), !dbg !2392
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2393
  ret ptr %4, !dbg !2394
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2395 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2397, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i32 0, metadata !2293, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata ptr %0, metadata !2294, metadata !DIExpression()), !dbg !2399
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2401
  ret ptr %2, !dbg !2402
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2403 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2407, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i64 %1, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i32 0, metadata !2389, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata ptr %0, metadata !2390, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()), !dbg !2410
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2412
  ret ptr %3, !dbg !2413
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2414 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata ptr %2, metadata !2420, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2421, metadata !DIExpression()), !dbg !2424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2429, metadata !DIExpression()), !dbg !2435
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2437, !alias.scope !2425
  %5 = icmp eq i32 %1, 10, !dbg !2438
  br i1 %5, label %6, label %7, !dbg !2440

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2441, !noalias !2425
  unreachable, !dbg !2441

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2442, !tbaa !1508, !alias.scope !2425
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2443
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2444
  ret ptr %8, !dbg !2445
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2446 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 %1, metadata !2451, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata ptr %2, metadata !2452, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i64 %3, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2456
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2454, metadata !DIExpression()), !dbg !2457
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458), !dbg !2461
  call void @llvm.dbg.value(metadata i32 %1, metadata !2429, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2434, metadata !DIExpression()), !dbg !2464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2464, !alias.scope !2458
  %6 = icmp eq i32 %1, 10, !dbg !2465
  br i1 %6, label %7, label %8, !dbg !2466

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2467, !noalias !2458
  unreachable, !dbg !2467

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2468, !tbaa !1508, !alias.scope !2458
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2469
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2470
  ret ptr %9, !dbg !2471
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2472 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata ptr %1, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata ptr %1, metadata !2420, metadata !DIExpression()), !dbg !2479
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2481
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2421, metadata !DIExpression()), !dbg !2482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483), !dbg !2486
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2434, metadata !DIExpression()), !dbg !2489
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2489, !alias.scope !2483
  %4 = icmp eq i32 %0, 10, !dbg !2490
  br i1 %4, label %5, label %6, !dbg !2491

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2492, !noalias !2483
  unreachable, !dbg !2492

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2493, !tbaa !1508, !alias.scope !2483
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2494
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2495
  ret ptr %7, !dbg !2496
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2497 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2501, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %1, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i64 %2, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 0, metadata !2450, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 %0, metadata !2451, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata ptr %1, metadata !2452, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i64 %2, metadata !2453, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2507
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2454, metadata !DIExpression()), !dbg !2508
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509), !dbg !2512
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2434, metadata !DIExpression()), !dbg !2515
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2515, !alias.scope !2509
  %5 = icmp eq i32 %0, 10, !dbg !2516
  br i1 %5, label %6, label %7, !dbg !2517

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2518, !noalias !2509
  unreachable, !dbg !2518

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2519, !tbaa !1508, !alias.scope !2509
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2520
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2521
  ret ptr %8, !dbg !2522
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2523 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i8 %2, metadata !2529, metadata !DIExpression()), !dbg !2531
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2532
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2530, metadata !DIExpression()), !dbg !2533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2534, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %2, metadata !1526, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 1, metadata !1527, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i8 %2, metadata !1528, metadata !DIExpression()), !dbg !2536
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2538
  %6 = lshr i8 %2, 5, !dbg !2539
  %7 = zext i8 %6 to i64, !dbg !2539
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2540
  call void @llvm.dbg.value(metadata ptr %8, metadata !1529, metadata !DIExpression()), !dbg !2536
  %9 = and i8 %2, 31, !dbg !2541
  %10 = zext i8 %9 to i32, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %10, metadata !1531, metadata !DIExpression()), !dbg !2536
  %11 = load i32, ptr %8, align 4, !dbg !2542, !tbaa !814
  %12 = lshr i32 %11, %10, !dbg !2543
  call void @llvm.dbg.value(metadata i32 %12, metadata !1532, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2536
  %13 = and i32 %12, 1, !dbg !2544
  %14 = xor i32 %13, 1, !dbg !2544
  %15 = shl nuw i32 %14, %10, !dbg !2545
  %16 = xor i32 %15, %11, !dbg !2546
  store i32 %16, ptr %8, align 4, !dbg !2546, !tbaa !814
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2547
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2548
  ret ptr %17, !dbg !2549
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2550 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2554, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 %1, metadata !2555, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i64 -1, metadata !2528, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata i8 %1, metadata !2529, metadata !DIExpression()), !dbg !2557
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2530, metadata !DIExpression()), !dbg !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2561, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %3, metadata !1525, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 %1, metadata !1526, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 1, metadata !1527, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 %1, metadata !1528, metadata !DIExpression()), !dbg !2562
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2564
  %5 = lshr i8 %1, 5, !dbg !2565
  %6 = zext i8 %5 to i64, !dbg !2565
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %7, metadata !1529, metadata !DIExpression()), !dbg !2562
  %8 = and i8 %1, 31, !dbg !2567
  %9 = zext i8 %8 to i32, !dbg !2567
  call void @llvm.dbg.value(metadata i32 %9, metadata !1531, metadata !DIExpression()), !dbg !2562
  %10 = load i32, ptr %7, align 4, !dbg !2568, !tbaa !814
  %11 = lshr i32 %10, %9, !dbg !2569
  call void @llvm.dbg.value(metadata i32 %11, metadata !1532, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2562
  %12 = and i32 %11, 1, !dbg !2570
  %13 = xor i32 %12, 1, !dbg !2570
  %14 = shl nuw i32 %13, %9, !dbg !2571
  %15 = xor i32 %14, %10, !dbg !2572
  store i32 %15, ptr %7, align 4, !dbg !2572, !tbaa !814
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2573
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2574
  ret ptr %16, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2576 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata ptr %0, metadata !2554, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata i8 58, metadata !2555, metadata !DIExpression()), !dbg !2580
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 -1, metadata !2528, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2530, metadata !DIExpression()), !dbg !2585
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2586, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %2, metadata !1525, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !1526, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 1, metadata !1527, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !1528, metadata !DIExpression()), !dbg !2587
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %3, metadata !1529, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 26, metadata !1531, metadata !DIExpression()), !dbg !2587
  %4 = load i32, ptr %3, align 4, !dbg !2590, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %4, metadata !1532, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2587
  %5 = or i32 %4, 67108864, !dbg !2591
  store i32 %5, ptr %3, align 4, !dbg !2591, !tbaa !814
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2592
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2593
  ret ptr %6, !dbg !2594
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2595 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2597, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i64 %1, metadata !2598, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata ptr %0, metadata !2527, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %1, metadata !2528, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()), !dbg !2600
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2530, metadata !DIExpression()), !dbg !2603
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2604, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %3, metadata !1525, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !1526, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 1, metadata !1527, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i8 58, metadata !1528, metadata !DIExpression()), !dbg !2605
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2607
  call void @llvm.dbg.value(metadata ptr %4, metadata !1529, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 26, metadata !1531, metadata !DIExpression()), !dbg !2605
  %5 = load i32, ptr %4, align 4, !dbg !2608, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %5, metadata !1532, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2605
  %6 = or i32 %5, 67108864, !dbg !2609
  store i32 %6, ptr %4, align 4, !dbg !2609, !tbaa !814
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2610
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2611
  ret ptr %7, !dbg !2612
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2613 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2434, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2619
  call void @llvm.dbg.value(metadata i32 %0, metadata !2615, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %1, metadata !2616, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2618, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 %1, metadata !2429, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2624
  %5 = icmp eq i32 %1, 10, !dbg !2625
  br i1 %5, label %6, label %7, !dbg !2626

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2627, !noalias !2628
  unreachable, !dbg !2627

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2624
  store i32 %1, ptr %4, align 8, !dbg !2631, !tbaa.struct !2535
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2631
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 58, metadata !1526, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 1, metadata !1527, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 58, metadata !1528, metadata !DIExpression()), !dbg !2632
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2634
  call void @llvm.dbg.value(metadata ptr %9, metadata !1529, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 26, metadata !1531, metadata !DIExpression()), !dbg !2632
  %10 = load i32, ptr %9, align 4, !dbg !2635, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %10, metadata !1532, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2632
  %11 = or i32 %10, 67108864, !dbg !2636
  store i32 %11, ptr %9, align 4, !dbg !2636, !tbaa !814
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2637
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2638
  ret ptr %12, !dbg !2639
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2640 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2644, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %1, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %2, metadata !2646, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata ptr %3, metadata !2647, metadata !DIExpression()), !dbg !2648
  call void @llvm.dbg.value(metadata i32 %0, metadata !2649, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %1, metadata !2654, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %2, metadata !2655, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %3, metadata !2656, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata i64 -1, metadata !2657, metadata !DIExpression()), !dbg !2659
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2661
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2658, metadata !DIExpression()), !dbg !2662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2663, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %5, metadata !1565, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %2, metadata !1567, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %5, metadata !1565, metadata !DIExpression()), !dbg !2664
  store i32 10, ptr %5, align 8, !dbg !2666, !tbaa !1508
  %6 = icmp ne ptr %1, null, !dbg !2667
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2668
  br i1 %8, label %10, label %9, !dbg !2668

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2669
  unreachable, !dbg !2669

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2670
  store ptr %1, ptr %11, align 8, !dbg !2671, !tbaa !1579
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2672
  store ptr %2, ptr %12, align 8, !dbg !2673, !tbaa !1582
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2674
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2675
  ret ptr %13, !dbg !2676
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2650 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2649, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %1, metadata !2654, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %2, metadata !2655, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %3, metadata !2656, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata i64 %4, metadata !2657, metadata !DIExpression()), !dbg !2677
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2678
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2658, metadata !DIExpression()), !dbg !2679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2680, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %6, metadata !1565, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %1, metadata !1566, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %2, metadata !1567, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %6, metadata !1565, metadata !DIExpression()), !dbg !2681
  store i32 10, ptr %6, align 8, !dbg !2683, !tbaa !1508
  %7 = icmp ne ptr %1, null, !dbg !2684
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2685
  br i1 %9, label %11, label %10, !dbg !2685

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2686
  unreachable, !dbg !2686

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2687
  store ptr %1, ptr %12, align 8, !dbg !2688, !tbaa !1579
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2689
  store ptr %2, ptr %13, align 8, !dbg !2690, !tbaa !1582
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2691
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2692
  ret ptr %14, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2694 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1, metadata !2699, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %2, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata i32 0, metadata !2644, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %0, metadata !2645, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %1, metadata !2646, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %2, metadata !2647, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %1, metadata !2655, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %2, metadata !2656, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i64 -1, metadata !2657, metadata !DIExpression()), !dbg !2704
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2706
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2658, metadata !DIExpression()), !dbg !2707
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2708, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %4, metadata !1565, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %0, metadata !1566, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %4, metadata !1565, metadata !DIExpression()), !dbg !2709
  store i32 10, ptr %4, align 8, !dbg !2711, !tbaa !1508
  %5 = icmp ne ptr %0, null, !dbg !2712
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2713
  br i1 %7, label %9, label %8, !dbg !2713

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2714
  unreachable, !dbg !2714

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2715
  store ptr %0, ptr %10, align 8, !dbg !2716, !tbaa !1579
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2717
  store ptr %1, ptr %11, align 8, !dbg !2718, !tbaa !1582
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2719
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2720
  ret ptr %12, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2722 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %1, metadata !2727, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %2, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 %3, metadata !2729, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2649, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %1, metadata !2655, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata ptr %2, metadata !2656, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i64 %3, metadata !2657, metadata !DIExpression()), !dbg !2731
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2658, metadata !DIExpression()), !dbg !2734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2735, !tbaa.struct !2535
  call void @llvm.dbg.value(metadata ptr %5, metadata !1565, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %0, metadata !1566, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %1, metadata !1567, metadata !DIExpression()), !dbg !2736
  call void @llvm.dbg.value(metadata ptr %5, metadata !1565, metadata !DIExpression()), !dbg !2736
  store i32 10, ptr %5, align 8, !dbg !2738, !tbaa !1508
  %6 = icmp ne ptr %0, null, !dbg !2739
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2740
  br i1 %8, label %10, label %9, !dbg !2740

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2741
  unreachable, !dbg !2741

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2742
  store ptr %0, ptr %11, align 8, !dbg !2743, !tbaa !1579
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2744
  store ptr %1, ptr %12, align 8, !dbg !2745, !tbaa !1582
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2746
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2747
  ret ptr %13, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %1, metadata !2754, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %2, metadata !2755, metadata !DIExpression()), !dbg !2756
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2757
  ret ptr %4, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2763, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i64 %1, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %1, metadata !2755, metadata !DIExpression()), !dbg !2766
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2768
  ret ptr %3, !dbg !2769
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %1, metadata !2754, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 -1, metadata !2755, metadata !DIExpression()), !dbg !2777
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2779
  ret ptr %3, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2781 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 -1, metadata !2755, metadata !DIExpression()), !dbg !2789
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2791
  ret ptr %2, !dbg !2792
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2793 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2832, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %1, metadata !2833, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %2, metadata !2834, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %3, metadata !2835, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i64 %5, metadata !2837, metadata !DIExpression()), !dbg !2838
  %7 = icmp eq ptr %1, null, !dbg !2839
  br i1 %7, label %10, label %8, !dbg !2841

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2842
  br label %12, !dbg !2842

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #36, !dbg !2843
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #36, !dbg !2844
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2844
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2845
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #36, !dbg !2846
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #36, !dbg !2846
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2847
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
  ], !dbg !2848

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #36, !dbg !2849
  %21 = load ptr, ptr %4, align 8, !dbg !2849, !tbaa !753
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2849
  br label %147, !dbg !2851

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #36, !dbg !2852
  %25 = load ptr, ptr %4, align 8, !dbg !2852, !tbaa !753
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2852
  %27 = load ptr, ptr %26, align 8, !dbg !2852, !tbaa !753
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2852
  br label %147, !dbg !2853

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #36, !dbg !2854
  %31 = load ptr, ptr %4, align 8, !dbg !2854, !tbaa !753
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2854
  %33 = load ptr, ptr %32, align 8, !dbg !2854, !tbaa !753
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2854
  %35 = load ptr, ptr %34, align 8, !dbg !2854, !tbaa !753
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2854
  br label %147, !dbg !2855

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #36, !dbg !2856
  %39 = load ptr, ptr %4, align 8, !dbg !2856, !tbaa !753
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2856
  %41 = load ptr, ptr %40, align 8, !dbg !2856, !tbaa !753
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2856
  %43 = load ptr, ptr %42, align 8, !dbg !2856, !tbaa !753
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2856
  %45 = load ptr, ptr %44, align 8, !dbg !2856, !tbaa !753
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2856
  br label %147, !dbg !2857

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #36, !dbg !2858
  %49 = load ptr, ptr %4, align 8, !dbg !2858, !tbaa !753
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2858
  %51 = load ptr, ptr %50, align 8, !dbg !2858, !tbaa !753
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2858
  %53 = load ptr, ptr %52, align 8, !dbg !2858, !tbaa !753
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2858
  %55 = load ptr, ptr %54, align 8, !dbg !2858, !tbaa !753
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2858
  %57 = load ptr, ptr %56, align 8, !dbg !2858, !tbaa !753
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2858
  br label %147, !dbg !2859

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #36, !dbg !2860
  %61 = load ptr, ptr %4, align 8, !dbg !2860, !tbaa !753
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2860
  %63 = load ptr, ptr %62, align 8, !dbg !2860, !tbaa !753
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2860
  %65 = load ptr, ptr %64, align 8, !dbg !2860, !tbaa !753
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2860
  %67 = load ptr, ptr %66, align 8, !dbg !2860, !tbaa !753
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2860
  %69 = load ptr, ptr %68, align 8, !dbg !2860, !tbaa !753
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2860
  %71 = load ptr, ptr %70, align 8, !dbg !2860, !tbaa !753
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2860
  br label %147, !dbg !2861

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #36, !dbg !2862
  %75 = load ptr, ptr %4, align 8, !dbg !2862, !tbaa !753
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2862
  %77 = load ptr, ptr %76, align 8, !dbg !2862, !tbaa !753
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2862
  %79 = load ptr, ptr %78, align 8, !dbg !2862, !tbaa !753
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2862
  %81 = load ptr, ptr %80, align 8, !dbg !2862, !tbaa !753
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2862
  %83 = load ptr, ptr %82, align 8, !dbg !2862, !tbaa !753
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2862
  %85 = load ptr, ptr %84, align 8, !dbg !2862, !tbaa !753
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2862
  %87 = load ptr, ptr %86, align 8, !dbg !2862, !tbaa !753
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2862
  br label %147, !dbg !2863

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #36, !dbg !2864
  %91 = load ptr, ptr %4, align 8, !dbg !2864, !tbaa !753
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2864
  %93 = load ptr, ptr %92, align 8, !dbg !2864, !tbaa !753
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2864
  %95 = load ptr, ptr %94, align 8, !dbg !2864, !tbaa !753
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2864
  %97 = load ptr, ptr %96, align 8, !dbg !2864, !tbaa !753
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2864
  %99 = load ptr, ptr %98, align 8, !dbg !2864, !tbaa !753
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2864
  %101 = load ptr, ptr %100, align 8, !dbg !2864, !tbaa !753
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2864
  %103 = load ptr, ptr %102, align 8, !dbg !2864, !tbaa !753
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2864
  %105 = load ptr, ptr %104, align 8, !dbg !2864, !tbaa !753
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2864
  br label %147, !dbg !2865

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #36, !dbg !2866
  %109 = load ptr, ptr %4, align 8, !dbg !2866, !tbaa !753
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2866
  %111 = load ptr, ptr %110, align 8, !dbg !2866, !tbaa !753
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2866
  %113 = load ptr, ptr %112, align 8, !dbg !2866, !tbaa !753
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2866
  %115 = load ptr, ptr %114, align 8, !dbg !2866, !tbaa !753
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2866
  %117 = load ptr, ptr %116, align 8, !dbg !2866, !tbaa !753
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2866
  %119 = load ptr, ptr %118, align 8, !dbg !2866, !tbaa !753
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2866
  %121 = load ptr, ptr %120, align 8, !dbg !2866, !tbaa !753
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2866
  %123 = load ptr, ptr %122, align 8, !dbg !2866, !tbaa !753
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2866
  %125 = load ptr, ptr %124, align 8, !dbg !2866, !tbaa !753
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2866
  br label %147, !dbg !2867

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #36, !dbg !2868
  %129 = load ptr, ptr %4, align 8, !dbg !2868, !tbaa !753
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2868
  %131 = load ptr, ptr %130, align 8, !dbg !2868, !tbaa !753
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2868
  %133 = load ptr, ptr %132, align 8, !dbg !2868, !tbaa !753
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2868
  %135 = load ptr, ptr %134, align 8, !dbg !2868, !tbaa !753
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2868
  %137 = load ptr, ptr %136, align 8, !dbg !2868, !tbaa !753
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2868
  %139 = load ptr, ptr %138, align 8, !dbg !2868, !tbaa !753
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2868
  %141 = load ptr, ptr %140, align 8, !dbg !2868, !tbaa !753
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2868
  %143 = load ptr, ptr %142, align 8, !dbg !2868, !tbaa !753
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2868
  %145 = load ptr, ptr %144, align 8, !dbg !2868, !tbaa !753
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2868
  br label %147, !dbg !2869

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2871 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2875, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %1, metadata !2876, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %3, metadata !2878, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata ptr %4, metadata !2879, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 0, metadata !2880, metadata !DIExpression()), !dbg !2881
  br label %6, !dbg !2882

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2884
  call void @llvm.dbg.value(metadata i64 %7, metadata !2880, metadata !DIExpression()), !dbg !2881
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2885
  %9 = load ptr, ptr %8, align 8, !dbg !2885, !tbaa !753
  %10 = icmp eq ptr %9, null, !dbg !2887
  %11 = add i64 %7, 1, !dbg !2888
  call void @llvm.dbg.value(metadata i64 %11, metadata !2880, metadata !DIExpression()), !dbg !2881
  br i1 %10, label %12, label %6, !dbg !2887, !llvm.loop !2889

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2891
  ret void, !dbg !2892
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2893 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2905, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %1, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %2, metadata !2907, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %3, metadata !2908, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %4, metadata !2909, metadata !DIExpression()), !dbg !2913
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2914
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2911, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 0, metadata !2910, metadata !DIExpression()), !dbg !2913
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2910, metadata !DIExpression()), !dbg !2913
  %10 = icmp ult i32 %9, 41, !dbg !2916
  br i1 %10, label %11, label %16, !dbg !2916

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2916
  %13 = zext i32 %9 to i64, !dbg !2916
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2916
  %15 = add nuw nsw i32 %9, 8, !dbg !2916
  store i32 %15, ptr %4, align 8, !dbg !2916
  br label %19, !dbg !2916

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2916
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2916
  store ptr %18, ptr %7, align 8, !dbg !2916
  br label %19, !dbg !2916

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2916
  %22 = load ptr, ptr %21, align 8, !dbg !2916
  store ptr %22, ptr %6, align 16, !dbg !2919, !tbaa !753
  %23 = icmp eq ptr %22, null, !dbg !2920
  br i1 %23, label %128, label %24, !dbg !2921

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 1, metadata !2910, metadata !DIExpression()), !dbg !2913
  %25 = icmp ult i32 %20, 41, !dbg !2916
  br i1 %25, label %29, label %26, !dbg !2916

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2916
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2916
  store ptr %28, ptr %7, align 8, !dbg !2916
  br label %34, !dbg !2916

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2916
  %31 = zext i32 %20 to i64, !dbg !2916
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2916
  %33 = add nuw nsw i32 %20, 8, !dbg !2916
  store i32 %33, ptr %4, align 8, !dbg !2916
  br label %34, !dbg !2916

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2916
  %37 = load ptr, ptr %36, align 8, !dbg !2916
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2922
  store ptr %37, ptr %38, align 8, !dbg !2919, !tbaa !753
  %39 = icmp eq ptr %37, null, !dbg !2920
  br i1 %39, label %128, label %40, !dbg !2921

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 2, metadata !2910, metadata !DIExpression()), !dbg !2913
  %41 = icmp ult i32 %35, 41, !dbg !2916
  br i1 %41, label %45, label %42, !dbg !2916

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2916
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2916
  store ptr %44, ptr %7, align 8, !dbg !2916
  br label %50, !dbg !2916

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2916
  %47 = zext i32 %35 to i64, !dbg !2916
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2916
  %49 = add nuw nsw i32 %35, 8, !dbg !2916
  store i32 %49, ptr %4, align 8, !dbg !2916
  br label %50, !dbg !2916

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2916
  %53 = load ptr, ptr %52, align 8, !dbg !2916
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2922
  store ptr %53, ptr %54, align 16, !dbg !2919, !tbaa !753
  %55 = icmp eq ptr %53, null, !dbg !2920
  br i1 %55, label %128, label %56, !dbg !2921

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 3, metadata !2910, metadata !DIExpression()), !dbg !2913
  %57 = icmp ult i32 %51, 41, !dbg !2916
  br i1 %57, label %61, label %58, !dbg !2916

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2916
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2916
  store ptr %60, ptr %7, align 8, !dbg !2916
  br label %66, !dbg !2916

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2916
  %63 = zext i32 %51 to i64, !dbg !2916
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2916
  %65 = add nuw nsw i32 %51, 8, !dbg !2916
  store i32 %65, ptr %4, align 8, !dbg !2916
  br label %66, !dbg !2916

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2916
  %69 = load ptr, ptr %68, align 8, !dbg !2916
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2922
  store ptr %69, ptr %70, align 8, !dbg !2919, !tbaa !753
  %71 = icmp eq ptr %69, null, !dbg !2920
  br i1 %71, label %128, label %72, !dbg !2921

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 4, metadata !2910, metadata !DIExpression()), !dbg !2913
  %73 = icmp ult i32 %67, 41, !dbg !2916
  br i1 %73, label %77, label %74, !dbg !2916

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2916
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2916
  store ptr %76, ptr %7, align 8, !dbg !2916
  br label %82, !dbg !2916

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2916
  %79 = zext i32 %67 to i64, !dbg !2916
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2916
  %81 = add nuw nsw i32 %67, 8, !dbg !2916
  store i32 %81, ptr %4, align 8, !dbg !2916
  br label %82, !dbg !2916

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2916
  %85 = load ptr, ptr %84, align 8, !dbg !2916
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2922
  store ptr %85, ptr %86, align 16, !dbg !2919, !tbaa !753
  %87 = icmp eq ptr %85, null, !dbg !2920
  br i1 %87, label %128, label %88, !dbg !2921

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 5, metadata !2910, metadata !DIExpression()), !dbg !2913
  %89 = icmp ult i32 %83, 41, !dbg !2916
  br i1 %89, label %93, label %90, !dbg !2916

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2916
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2916
  store ptr %92, ptr %7, align 8, !dbg !2916
  br label %98, !dbg !2916

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2916
  %95 = zext i32 %83 to i64, !dbg !2916
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2916
  %97 = add nuw nsw i32 %83, 8, !dbg !2916
  store i32 %97, ptr %4, align 8, !dbg !2916
  br label %98, !dbg !2916

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2916
  %100 = load ptr, ptr %99, align 8, !dbg !2916
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2922
  store ptr %100, ptr %101, align 8, !dbg !2919, !tbaa !753
  %102 = icmp eq ptr %100, null, !dbg !2920
  br i1 %102, label %128, label %103, !dbg !2921

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2910, metadata !DIExpression()), !dbg !2913
  %104 = load ptr, ptr %7, align 8, !dbg !2916
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2916
  store ptr %105, ptr %7, align 8, !dbg !2916
  %106 = load ptr, ptr %104, align 8, !dbg !2916
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2922
  store ptr %106, ptr %107, align 16, !dbg !2919, !tbaa !753
  %108 = icmp eq ptr %106, null, !dbg !2920
  br i1 %108, label %128, label %109, !dbg !2921

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2910, metadata !DIExpression()), !dbg !2913
  %110 = load ptr, ptr %7, align 8, !dbg !2916
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2916
  store ptr %111, ptr %7, align 8, !dbg !2916
  %112 = load ptr, ptr %110, align 8, !dbg !2916
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2922
  store ptr %112, ptr %113, align 8, !dbg !2919, !tbaa !753
  %114 = icmp eq ptr %112, null, !dbg !2920
  br i1 %114, label %128, label %115, !dbg !2921

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2910, metadata !DIExpression()), !dbg !2913
  %116 = load ptr, ptr %7, align 8, !dbg !2916
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2916
  store ptr %117, ptr %7, align 8, !dbg !2916
  %118 = load ptr, ptr %116, align 8, !dbg !2916
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2922
  store ptr %118, ptr %119, align 16, !dbg !2919, !tbaa !753
  %120 = icmp eq ptr %118, null, !dbg !2920
  br i1 %120, label %128, label %121, !dbg !2921

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2910, metadata !DIExpression()), !dbg !2913
  %122 = load ptr, ptr %7, align 8, !dbg !2916
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2916
  store ptr %123, ptr %7, align 8, !dbg !2916
  %124 = load ptr, ptr %122, align 8, !dbg !2916
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2922
  store ptr %124, ptr %125, align 8, !dbg !2919, !tbaa !753
  %126 = icmp eq ptr %124, null, !dbg !2920
  %127 = select i1 %126, i64 9, i64 10, !dbg !2921
  br label %128, !dbg !2921

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2923
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2924
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2925
  ret void, !dbg !2925
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2926 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %1, metadata !2931, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %2, metadata !2932, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata ptr %3, metadata !2933, metadata !DIExpression()), !dbg !2939
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2934, metadata !DIExpression()), !dbg !2941
  call void @llvm.va_start(ptr nonnull %5), !dbg !2942
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2943
  call void @llvm.va_end(ptr nonnull %5), !dbg !2944
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2945
  ret void, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2946 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2947, !tbaa !753
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2947
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #36, !dbg !2948
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #36, !dbg !2948
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2949
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #36, !dbg !2949
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2950
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2950
  ret void, !dbg !2951
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2952 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %1, metadata !2958, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata i64 %2, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %1, metadata !2964, metadata !DIExpression()), !dbg !2966
  call void @llvm.dbg.value(metadata i64 %2, metadata !2965, metadata !DIExpression()), !dbg !2966
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2968
  call void @llvm.dbg.value(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !2974
  %5 = icmp eq ptr %4, null, !dbg !2976
  br i1 %5, label %6, label %7, !dbg !2978

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2979
  unreachable, !dbg !2979

7:                                                ; preds = %3
  ret ptr %4, !dbg !2980
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2962 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %1, metadata !2964, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i64 %2, metadata !2965, metadata !DIExpression()), !dbg !2981
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2982
  call void @llvm.dbg.value(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !2983
  %5 = icmp eq ptr %4, null, !dbg !2985
  br i1 %5, label %6, label %7, !dbg !2986

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2987
  unreachable, !dbg !2987

7:                                                ; preds = %3
  ret ptr %4, !dbg !2988
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2989 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2993, metadata !DIExpression()), !dbg !2994
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2995
  call void @llvm.dbg.value(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !2996
  %3 = icmp eq ptr %2, null, !dbg !2998
  br i1 %3, label %4, label %5, !dbg !2999

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3000
  unreachable, !dbg !3000

5:                                                ; preds = %1
  ret ptr %2, !dbg !3001
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3002 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3003 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %0, metadata !3009, metadata !DIExpression()), !dbg !3013
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3015
  call void @llvm.dbg.value(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !3016
  %3 = icmp eq ptr %2, null, !dbg !3018
  br i1 %3, label %4, label %5, !dbg !3019

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3020
  unreachable, !dbg !3020

5:                                                ; preds = %1
  ret ptr %2, !dbg !3021
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3022 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %0, metadata !2993, metadata !DIExpression()), !dbg !3028
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !3031
  %3 = icmp eq ptr %2, null, !dbg !3033
  br i1 %3, label %4, label %5, !dbg !3034

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3035
  unreachable, !dbg !3035

5:                                                ; preds = %1
  ret ptr %2, !dbg !3036
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3037 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3049
  %3 = icmp eq i64 %1, 0, !dbg !3051
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3051
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3052
  call void @llvm.dbg.value(metadata ptr %5, metadata !2969, metadata !DIExpression()), !dbg !3053
  %6 = icmp eq ptr %5, null, !dbg !3055
  br i1 %6, label %7, label %8, !dbg !3056

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3057
  unreachable, !dbg !3057

8:                                                ; preds = %2
  ret ptr %5, !dbg !3058
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3059 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3060 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3064, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %1, metadata !3065, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata ptr %0, metadata !3067, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3073
  %3 = icmp eq i64 %1, 0, !dbg !3075
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3075
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3076
  call void @llvm.dbg.value(metadata ptr %5, metadata !2969, metadata !DIExpression()), !dbg !3077
  %6 = icmp eq ptr %5, null, !dbg !3079
  br i1 %6, label %7, label %8, !dbg !3080

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3081
  unreachable, !dbg !3081

8:                                                ; preds = %2
  ret ptr %5, !dbg !3082
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3083 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3087, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %2, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %2, metadata !3095, metadata !DIExpression()), !dbg !3096
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3098
  call void @llvm.dbg.value(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !3099
  %5 = icmp eq ptr %4, null, !dbg !3101
  br i1 %5, label %6, label %7, !dbg !3102

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3103
  unreachable, !dbg !3103

7:                                                ; preds = %3
  ret ptr %4, !dbg !3104
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3105 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3109, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata i64 %1, metadata !3110, metadata !DIExpression()), !dbg !3111
  call void @llvm.dbg.value(metadata ptr null, metadata !2961, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %0, metadata !2964, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i64 %1, metadata !2965, metadata !DIExpression()), !dbg !3112
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3114
  call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3115
  %4 = icmp eq ptr %3, null, !dbg !3117
  br i1 %4, label %5, label %6, !dbg !3118

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3119
  unreachable, !dbg !3119

6:                                                ; preds = %2
  ret ptr %3, !dbg !3120
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3121 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3125, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i64 %1, metadata !3126, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata ptr null, metadata !3087, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %0, metadata !3088, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr null, metadata !3091, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %0, metadata !3094, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3095, metadata !DIExpression()), !dbg !3130
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3132
  call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3133
  %4 = icmp eq ptr %3, null, !dbg !3135
  br i1 %4, label %5, label %6, !dbg !3136

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3137
  unreachable, !dbg !3137

6:                                                ; preds = %2
  ret ptr %3, !dbg !3138
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3139 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr %1, metadata !3144, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i64 1, metadata !691, metadata !DIExpression()), !dbg !3146
  %3 = load i64, ptr %1, align 8, !dbg !3148, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %3, metadata !692, metadata !DIExpression()), !dbg !3146
  %4 = icmp eq ptr %0, null, !dbg !3149
  br i1 %4, label %5, label %8, !dbg !3151

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3152
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3155
  br label %15, !dbg !3155

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3156
  %10 = add nuw i64 %9, 1, !dbg !3156
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3156
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3156
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %13, metadata !692, metadata !DIExpression()), !dbg !3146
  br i1 %12, label %14, label %15, !dbg !3159

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3160
  unreachable, !dbg !3160

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3146
  call void @llvm.dbg.value(metadata i64 %16, metadata !692, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %16, metadata !2964, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 1, metadata !2965, metadata !DIExpression()), !dbg !3161
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3163
  call void @llvm.dbg.value(metadata ptr %17, metadata !2969, metadata !DIExpression()), !dbg !3164
  %18 = icmp eq ptr %17, null, !dbg !3166
  br i1 %18, label %19, label %20, !dbg !3167

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3168
  unreachable, !dbg !3168

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !689, metadata !DIExpression()), !dbg !3146
  store i64 %16, ptr %1, align 8, !dbg !3169, !tbaa !2248
  ret ptr %17, !dbg !3170
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !684 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i64 %2, metadata !691, metadata !DIExpression()), !dbg !3171
  %4 = load i64, ptr %1, align 8, !dbg !3172, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %4, metadata !692, metadata !DIExpression()), !dbg !3171
  %5 = icmp eq ptr %0, null, !dbg !3173
  br i1 %5, label %6, label %13, !dbg !3174

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3175
  br i1 %7, label %8, label %20, !dbg !3176

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %9, metadata !692, metadata !DIExpression()), !dbg !3171
  %10 = icmp ugt i64 %2, 128, !dbg !3179
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %12, metadata !692, metadata !DIExpression()), !dbg !3171
  br label %20, !dbg !3181

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3182
  %15 = add nuw i64 %14, 1, !dbg !3182
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3182
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3182
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %18, metadata !692, metadata !DIExpression()), !dbg !3171
  br i1 %17, label %19, label %20, !dbg !3183

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3184
  unreachable, !dbg !3184

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3171
  call void @llvm.dbg.value(metadata i64 %21, metadata !692, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %0, metadata !2961, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %21, metadata !2964, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %2, metadata !2965, metadata !DIExpression()), !dbg !3185
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3187
  call void @llvm.dbg.value(metadata ptr %22, metadata !2969, metadata !DIExpression()), !dbg !3188
  %23 = icmp eq ptr %22, null, !dbg !3190
  br i1 %23, label %24, label %25, !dbg !3191

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3192
  unreachable, !dbg !3192

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !689, metadata !DIExpression()), !dbg !3171
  store i64 %21, ptr %1, align 8, !dbg !3193, !tbaa !2248
  ret ptr %22, !dbg !3194
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !696 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !704, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %1, metadata !705, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %2, metadata !706, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %3, metadata !707, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %4, metadata !708, metadata !DIExpression()), !dbg !3195
  %6 = load i64, ptr %1, align 8, !dbg !3196, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %6, metadata !709, metadata !DIExpression()), !dbg !3195
  %7 = ashr i64 %6, 1, !dbg !3197
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3197
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3197
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %10, metadata !710, metadata !DIExpression()), !dbg !3195
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %11, metadata !710, metadata !DIExpression()), !dbg !3195
  %12 = icmp sgt i64 %3, -1, !dbg !3200
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3202
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %15, metadata !710, metadata !DIExpression()), !dbg !3195
  %16 = icmp slt i64 %4, 0, !dbg !3203
  br i1 %16, label %17, label %30, !dbg !3203

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3203
  br i1 %18, label %19, label %24, !dbg !3203

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3203
  %21 = udiv i64 9223372036854775807, %20, !dbg !3203
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3203
  br i1 %23, label %46, label %43, !dbg !3203

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3203
  br i1 %25, label %43, label %26, !dbg !3203

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3203
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3203
  %29 = icmp ult i64 %28, %15, !dbg !3203
  br i1 %29, label %46, label %43, !dbg !3203

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3203
  br i1 %31, label %43, label %32, !dbg !3203

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3203
  br i1 %33, label %34, label %40, !dbg !3203

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3203
  br i1 %35, label %43, label %36, !dbg !3203

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3203
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3203
  %39 = icmp ult i64 %38, %4, !dbg !3203
  br i1 %39, label %46, label %43, !dbg !3203

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3203
  br i1 %42, label %46, label %43, !dbg !3203

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !711, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3195
  %44 = mul i64 %15, %4, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %44, metadata !711, metadata !DIExpression()), !dbg !3195
  %45 = icmp slt i64 %44, 128, !dbg !3203
  br i1 %45, label %46, label %51, !dbg !3203

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !712, metadata !DIExpression()), !dbg !3195
  %48 = sdiv i64 %47, %4, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %48, metadata !710, metadata !DIExpression()), !dbg !3195
  %49 = srem i64 %47, %4, !dbg !3207
  %50 = sub nsw i64 %47, %49, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %50, metadata !711, metadata !DIExpression()), !dbg !3195
  br label %51, !dbg !3209

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3195
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3195
  call void @llvm.dbg.value(metadata i64 %53, metadata !711, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %52, metadata !710, metadata !DIExpression()), !dbg !3195
  %54 = icmp eq ptr %0, null, !dbg !3210
  br i1 %54, label %55, label %56, !dbg !3212

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3213, !tbaa !2248
  br label %56, !dbg !3214

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3215
  %58 = icmp slt i64 %57, %2, !dbg !3217
  br i1 %58, label %59, label %96, !dbg !3218

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3219
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3219
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %62, metadata !710, metadata !DIExpression()), !dbg !3195
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3220
  br i1 %65, label %95, label %66, !dbg !3220

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3221

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3221
  br i1 %68, label %69, label %74, !dbg !3221

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3221
  %71 = udiv i64 9223372036854775807, %70, !dbg !3221
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3221
  br i1 %73, label %95, label %93, !dbg !3221

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3221
  br i1 %75, label %93, label %76, !dbg !3221

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3221
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3221
  %79 = icmp ult i64 %78, %62, !dbg !3221
  br i1 %79, label %95, label %93, !dbg !3221

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3221
  br i1 %81, label %93, label %82, !dbg !3221

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3221
  br i1 %83, label %84, label %90, !dbg !3221

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3221
  br i1 %85, label %93, label %86, !dbg !3221

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3221
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3221
  %89 = icmp ult i64 %88, %4, !dbg !3221
  br i1 %89, label %95, label %93, !dbg !3221

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3221
  br i1 %92, label %95, label %93, !dbg !3221

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !711, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3195
  %94 = mul i64 %62, %4, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %94, metadata !711, metadata !DIExpression()), !dbg !3195
  br label %96, !dbg !3222

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3223
  unreachable, !dbg !3223

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3195
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3195
  call void @llvm.dbg.value(metadata i64 %98, metadata !711, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata i64 %97, metadata !710, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %0, metadata !3041, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %98, metadata !3042, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %98, metadata !3048, metadata !DIExpression()), !dbg !3226
  %99 = icmp eq i64 %98, 0, !dbg !3228
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3228
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3229
  call void @llvm.dbg.value(metadata ptr %101, metadata !2969, metadata !DIExpression()), !dbg !3230
  %102 = icmp eq ptr %101, null, !dbg !3232
  br i1 %102, label %103, label %104, !dbg !3233

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3234
  unreachable, !dbg !3234

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !704, metadata !DIExpression()), !dbg !3195
  store i64 %97, ptr %1, align 8, !dbg !3235, !tbaa !2248
  ret ptr %101, !dbg !3236
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3237 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3239, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 1, metadata !3244, metadata !DIExpression()), !dbg !3245
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3247
  call void @llvm.dbg.value(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !3248
  %3 = icmp eq ptr %2, null, !dbg !3250
  br i1 %3, label %4, label %5, !dbg !3251

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3252
  unreachable, !dbg !3252

5:                                                ; preds = %1
  ret ptr %2, !dbg !3253
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3254 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3242 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3241, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %1, metadata !3244, metadata !DIExpression()), !dbg !3255
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3257
  %4 = icmp eq ptr %3, null, !dbg !3259
  br i1 %4, label %5, label %6, !dbg !3260

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3261
  unreachable, !dbg !3261

6:                                                ; preds = %2
  ret ptr %3, !dbg !3262
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3263 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 1, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 1, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %0, metadata !3273, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 1, metadata !3276, metadata !DIExpression()), !dbg !3277
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !3280
  %3 = icmp eq ptr %2, null, !dbg !3282
  br i1 %3, label %4, label %5, !dbg !3283

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3284
  unreachable, !dbg !3284

5:                                                ; preds = %1
  ret ptr %2, !dbg !3285
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3268 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %0, metadata !3273, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3276, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %0, metadata !3273, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i64 %1, metadata !3276, metadata !DIExpression()), !dbg !3287
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3289
  call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3290
  %4 = icmp eq ptr %3, null, !dbg !3292
  br i1 %4, label %5, label %6, !dbg !3293

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3294
  unreachable, !dbg !3294

6:                                                ; preds = %2
  ret ptr %3, !dbg !3295
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3300, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !2993, metadata !DIExpression()), !dbg !3303
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3305
  call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3306
  %4 = icmp eq ptr %3, null, !dbg !3308
  br i1 %4, label %5, label %6, !dbg !3309

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3310
  unreachable, !dbg !3310

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3311, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata ptr %0, metadata !3317, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3321
  ret ptr %3, !dbg !3322
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3323 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3007, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3332
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3334
  call void @llvm.dbg.value(metadata ptr %3, metadata !2969, metadata !DIExpression()), !dbg !3335
  %4 = icmp eq ptr %3, null, !dbg !3337
  br i1 %4, label %5, label %6, !dbg !3338

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3339
  unreachable, !dbg !3339

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3311, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata ptr %0, metadata !3317, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3342
  ret ptr %3, !dbg !3343
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3344 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3348, metadata !DIExpression()), !dbg !3351
  call void @llvm.dbg.value(metadata i64 %1, metadata !3349, metadata !DIExpression()), !dbg !3351
  %3 = add nsw i64 %1, 1, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %3, metadata !3007, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !3009, metadata !DIExpression()), !dbg !3355
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3357
  call void @llvm.dbg.value(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !3358
  %5 = icmp eq ptr %4, null, !dbg !3360
  br i1 %5, label %6, label %7, !dbg !3361

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3362
  unreachable, !dbg !3362

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3350, metadata !DIExpression()), !dbg !3351
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3363
  store i8 0, ptr %8, align 1, !dbg !3364, !tbaa !823
  call void @llvm.dbg.value(metadata ptr %4, metadata !3311, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %0, metadata !3317, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %1, metadata !3318, metadata !DIExpression()), !dbg !3365
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3367
  ret ptr %4, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3369 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3371, metadata !DIExpression()), !dbg !3372
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3373
  %3 = add i64 %2, 1, !dbg !3374
  call void @llvm.dbg.value(metadata ptr %0, metadata !3300, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %3, metadata !3301, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.value(metadata i64 %3, metadata !2993, metadata !DIExpression()), !dbg !3377
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3379
  call void @llvm.dbg.value(metadata ptr %4, metadata !2969, metadata !DIExpression()), !dbg !3380
  %5 = icmp eq ptr %4, null, !dbg !3382
  br i1 %5, label %6, label %7, !dbg !3383

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3384
  unreachable, !dbg !3384

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3311, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata ptr %0, metadata !3317, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.value(metadata i64 %3, metadata !3318, metadata !DIExpression()), !dbg !3385
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3387
  ret ptr %4, !dbg !3388
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3389 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3394, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %1, metadata !3391, metadata !DIExpression()), !dbg !3395
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #36, !dbg !3394
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #36, !dbg !3394
  %3 = icmp eq i32 %1, 0, !dbg !3394
  tail call void @llvm.assume(i1 %3), !dbg !3394
  tail call void @abort() #38, !dbg !3396
  unreachable, !dbg !3396
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3397 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3435, metadata !DIExpression()), !dbg !3440
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3441
  call void @llvm.dbg.value(metadata i1 poison, metadata !3436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3440
  call void @llvm.dbg.value(metadata ptr %0, metadata !3442, metadata !DIExpression()), !dbg !3445
  %3 = load i32, ptr %0, align 8, !dbg !3447, !tbaa !3448
  %4 = and i32 %3, 32, !dbg !3449
  %5 = icmp eq i32 %4, 0, !dbg !3449
  call void @llvm.dbg.value(metadata i1 %5, metadata !3438, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3440
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3450
  %7 = icmp eq i32 %6, 0, !dbg !3451
  call void @llvm.dbg.value(metadata i1 %7, metadata !3439, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3440
  br i1 %5, label %8, label %18, !dbg !3452

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3454
  call void @llvm.dbg.value(metadata i1 %9, metadata !3436, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3440
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3455
  %11 = xor i1 %7, true, !dbg !3455
  %12 = sext i1 %11 to i32, !dbg !3455
  br i1 %10, label %21, label %13, !dbg !3455

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3456
  %15 = load i32, ptr %14, align 4, !dbg !3456, !tbaa !814
  %16 = icmp ne i32 %15, 9, !dbg !3457
  %17 = sext i1 %16 to i32, !dbg !3458
  br label %21, !dbg !3458

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3459

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3461
  store i32 0, ptr %20, align 4, !dbg !3463, !tbaa !814
  br label %21, !dbg !3461

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3440
  ret i32 %22, !dbg !3464
}

; Function Attrs: nounwind
declare !dbg !3465 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3469 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3507, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 0, metadata !3508, metadata !DIExpression()), !dbg !3511
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3512
  call void @llvm.dbg.value(metadata i32 %2, metadata !3509, metadata !DIExpression()), !dbg !3511
  %3 = icmp slt i32 %2, 0, !dbg !3513
  br i1 %3, label %4, label %6, !dbg !3515

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3516
  br label %24, !dbg !3517

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3518
  %8 = icmp eq i32 %7, 0, !dbg !3518
  br i1 %8, label %13, label %9, !dbg !3520

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3521
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3522
  %12 = icmp eq i64 %11, -1, !dbg !3523
  br i1 %12, label %16, label %13, !dbg !3524

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3525
  %15 = icmp eq i32 %14, 0, !dbg !3525
  br i1 %15, label %16, label %18, !dbg !3526

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3508, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 0, metadata !3510, metadata !DIExpression()), !dbg !3511
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %17, metadata !3510, metadata !DIExpression()), !dbg !3511
  br label %24, !dbg !3528

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3529
  %20 = load i32, ptr %19, align 4, !dbg !3529, !tbaa !814
  call void @llvm.dbg.value(metadata i32 %20, metadata !3508, metadata !DIExpression()), !dbg !3511
  call void @llvm.dbg.value(metadata i32 0, metadata !3510, metadata !DIExpression()), !dbg !3511
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3527
  call void @llvm.dbg.value(metadata i32 %21, metadata !3510, metadata !DIExpression()), !dbg !3511
  %22 = icmp eq i32 %20, 0, !dbg !3530
  br i1 %22, label %24, label %23, !dbg !3528

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3532, !tbaa !814
  call void @llvm.dbg.value(metadata i32 -1, metadata !3510, metadata !DIExpression()), !dbg !3511
  br label %24, !dbg !3534

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3511
  ret i32 %25, !dbg !3535
}

; Function Attrs: nofree nounwind
declare !dbg !3536 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3537 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3538 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3539 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3542 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3580, metadata !DIExpression()), !dbg !3581
  %2 = icmp eq ptr %0, null, !dbg !3582
  br i1 %2, label %6, label %3, !dbg !3584

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3585
  %5 = icmp eq i32 %4, 0, !dbg !3585
  br i1 %5, label %6, label %8, !dbg !3586

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3587
  br label %16, !dbg !3588

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3589, metadata !DIExpression()), !dbg !3594
  %9 = load i32, ptr %0, align 8, !dbg !3596, !tbaa !3448
  %10 = and i32 %9, 256, !dbg !3598
  %11 = icmp eq i32 %10, 0, !dbg !3598
  br i1 %11, label %14, label %12, !dbg !3599

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3600
  br label %14, !dbg !3600

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3601
  br label %16, !dbg !3602

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3581
  ret i32 %17, !dbg !3603
}

; Function Attrs: nofree nounwind
declare !dbg !3604 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3605 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3650
  call void @llvm.dbg.value(metadata i32 %2, metadata !3646, metadata !DIExpression()), !dbg !3650
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3651
  %5 = load ptr, ptr %4, align 8, !dbg !3651, !tbaa !3652
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3653
  %7 = load ptr, ptr %6, align 8, !dbg !3653, !tbaa !3654
  %8 = icmp eq ptr %5, %7, !dbg !3655
  br i1 %8, label %9, label %27, !dbg !3656

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3657
  %11 = load ptr, ptr %10, align 8, !dbg !3657, !tbaa !1219
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3658
  %13 = load ptr, ptr %12, align 8, !dbg !3658, !tbaa !3659
  %14 = icmp eq ptr %11, %13, !dbg !3660
  br i1 %14, label %15, label %27, !dbg !3661

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3662
  %17 = load ptr, ptr %16, align 8, !dbg !3662, !tbaa !3663
  %18 = icmp eq ptr %17, null, !dbg !3664
  br i1 %18, label %19, label %27, !dbg !3665

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3666
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %21, metadata !3647, metadata !DIExpression()), !dbg !3668
  %22 = icmp eq i64 %21, -1, !dbg !3669
  br i1 %22, label %29, label %23, !dbg !3671

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3672, !tbaa !3448
  %25 = and i32 %24, -17, !dbg !3672
  store i32 %25, ptr %0, align 8, !dbg !3672, !tbaa !3448
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3673
  store i64 %21, ptr %26, align 8, !dbg !3674, !tbaa !3675
  br label %29, !dbg !3676

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3677
  br label %29, !dbg !3678

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3650
  ret i32 %30, !dbg !3679
}

; Function Attrs: nofree nounwind
declare !dbg !3680 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3683 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3688, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %1, metadata !3689, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata i64 %2, metadata !3690, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %3, metadata !3691, metadata !DIExpression()), !dbg !3693
  %5 = icmp eq ptr %1, null, !dbg !3694
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3696
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3696
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3696
  call void @llvm.dbg.value(metadata i64 %8, metadata !3690, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %7, metadata !3689, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.value(metadata ptr %6, metadata !3688, metadata !DIExpression()), !dbg !3693
  %9 = icmp eq ptr %3, null, !dbg !3697
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3699
  call void @llvm.dbg.value(metadata ptr %10, metadata !3691, metadata !DIExpression()), !dbg !3693
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3700
  call void @llvm.dbg.value(metadata i64 %11, metadata !3692, metadata !DIExpression()), !dbg !3693
  %12 = icmp ult i64 %11, -3, !dbg !3701
  br i1 %12, label %13, label %17, !dbg !3703

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3704
  %15 = icmp eq i32 %14, 0, !dbg !3704
  br i1 %15, label %16, label %29, !dbg !3705

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3706, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %10, metadata !3713, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 0, metadata !3716, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 8, metadata !3717, metadata !DIExpression()), !dbg !3718
  store i64 0, ptr %10, align 1, !dbg !3720
  br label %29, !dbg !3721

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3722
  br i1 %18, label %19, label %20, !dbg !3724

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3725
  unreachable, !dbg !3725

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3726

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3728
  br i1 %23, label %29, label %24, !dbg !3729

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3730
  br i1 %25, label %29, label %26, !dbg !3733

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3734, !tbaa !823
  %28 = zext i8 %27 to i32, !dbg !3735
  store i32 %28, ptr %6, align 4, !dbg !3736, !tbaa !814
  br label %29, !dbg !3737

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3693
  ret i64 %30, !dbg !3738
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3739 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3745 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3747, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %2, metadata !3749, metadata !DIExpression()), !dbg !3751
  %4 = icmp eq i64 %2, 0, !dbg !3752
  br i1 %4, label %8, label %5, !dbg !3752

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3752
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3752
  br i1 %7, label %13, label %8, !dbg !3752

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3750, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3751
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3750, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3751
  %9 = mul i64 %2, %1, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %9, metadata !3750, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %0, metadata !3754, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.value(metadata i64 %9, metadata !3757, metadata !DIExpression()), !dbg !3758
  %10 = icmp eq i64 %9, 0, !dbg !3760
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3760
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3761
  br label %15, !dbg !3762

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3750, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3751
  %14 = tail call ptr @__errno_location() #39, !dbg !3763
  store i32 12, ptr %14, align 4, !dbg !3765, !tbaa !814
  br label %15, !dbg !3766

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3751
  ret ptr %16, !dbg !3767
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3768 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3777
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3778
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3779
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3780
  %4 = icmp eq i32 %3, 0, !dbg !3780
  br i1 %4, label %5, label %12, !dbg !3782

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3787
  %6 = load i16, ptr %2, align 16, !dbg !3790
  %7 = icmp eq i16 %6, 67, !dbg !3790
  br i1 %7, label %11, label %8, !dbg !3791

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr @.str.1.123, metadata !3786, metadata !DIExpression()), !dbg !3792
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.123, i64 6), !dbg !3794
  %10 = icmp eq i32 %9, 0, !dbg !3795
  br i1 %10, label %11, label %12, !dbg !3796

11:                                               ; preds = %8, %5
  br label %12, !dbg !3797

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3777
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3798
  ret i1 %13, !dbg !3798
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %1, metadata !3804, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 %2, metadata !3805, metadata !DIExpression()), !dbg !3806
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3807
  ret i32 %4, !dbg !3808
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3809 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3813, metadata !DIExpression()), !dbg !3814
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3815
  ret ptr %2, !dbg !3816
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3817 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3819, metadata !DIExpression()), !dbg !3821
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3822
  call void @llvm.dbg.value(metadata ptr %2, metadata !3820, metadata !DIExpression()), !dbg !3821
  ret ptr %2, !dbg !3823
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3824 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3826, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %1, metadata !3827, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %2, metadata !3828, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i32 %0, metadata !3819, metadata !DIExpression()), !dbg !3834
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3836
  call void @llvm.dbg.value(metadata ptr %4, metadata !3820, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata ptr %4, metadata !3829, metadata !DIExpression()), !dbg !3833
  %5 = icmp eq ptr %4, null, !dbg !3837
  br i1 %5, label %6, label %9, !dbg !3838

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3839
  br i1 %7, label %19, label %8, !dbg !3842

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3843, !tbaa !823
  br label %19, !dbg !3844

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3845
  call void @llvm.dbg.value(metadata i64 %10, metadata !3830, metadata !DIExpression()), !dbg !3846
  %11 = icmp ult i64 %10, %2, !dbg !3847
  br i1 %11, label %12, label %14, !dbg !3849

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3850
  call void @llvm.dbg.value(metadata ptr %1, metadata !3852, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %4, metadata !3855, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %13, metadata !3856, metadata !DIExpression()), !dbg !3857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3859
  br label %19, !dbg !3860

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3861
  br i1 %15, label %19, label %16, !dbg !3864

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3865
  call void @llvm.dbg.value(metadata ptr %1, metadata !3852, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata ptr %4, metadata !3855, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %17, metadata !3856, metadata !DIExpression()), !dbg !3867
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3869
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3870
  store i8 0, ptr %18, align 1, !dbg !3871, !tbaa !823
  br label %19, !dbg !3872

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3873
  ret i32 %20, !dbg !3874
}

attributes #0 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !301, !305, !320, !639, !671, !375, !395, !409, !460, !673, !631, !680, !714, !716, !718, !720, !722, !655, !724, !727, !731, !733}
!llvm.ident = !{!735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735}
!llvm.module.flags = !{!736, !737, !738, !739, !740, !741}

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
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !90, globals: !102, splitDebugInlining: false, nameTableKind: None)
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
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !96)
!100 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!301 = distinct !DICompileUnit(language: DW_LANG_C11, file: !298, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !302, splitDebugInlining: false, nameTableKind: None)
!302 = !{!296, !299}
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "file_name", scope: !305, file: !306, line: 45, type: !70, isLocal: true, isDefinition: true)
!305 = distinct !DICompileUnit(language: DW_LANG_C11, file: !306, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !307, splitDebugInlining: false, nameTableKind: None)
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
!319 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !320, file: !321, line: 66, type: !367, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C11, file: !321, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !322, globals: !323, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!322 = !{!91, !101}
!323 = !{!324, !326, !346, !348, !350, !352, !318, !354, !356, !358, !360, !365}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !321, line: 272, type: !105, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "old_file_name", scope: !328, file: !321, line: 304, type: !70, isLocal: true, isDefinition: true)
!328 = distinct !DISubprogram(name: "verror_at_line", scope: !321, file: !321, line: 298, type: !329, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !339)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !97, !97, !70, !76, !70, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !333)
!333 = !{!334, !336, !337, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !332, file: !335, baseType: !76, size: 32)
!335 = !DIFile(filename: "lib/error.c", directory: "/src")
!336 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !332, file: !335, baseType: !76, size: 32, offset: 32)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !332, file: !335, baseType: !91, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !332, file: !335, baseType: !91, size: 64, offset: 128)
!339 = !{!340, !341, !342, !343, !344, !345}
!340 = !DILocalVariable(name: "status", arg: 1, scope: !328, file: !321, line: 298, type: !97)
!341 = !DILocalVariable(name: "errnum", arg: 2, scope: !328, file: !321, line: 298, type: !97)
!342 = !DILocalVariable(name: "file_name", arg: 3, scope: !328, file: !321, line: 298, type: !70)
!343 = !DILocalVariable(name: "line_number", arg: 4, scope: !328, file: !321, line: 298, type: !76)
!344 = !DILocalVariable(name: "message", arg: 5, scope: !328, file: !321, line: 298, type: !70)
!345 = !DILocalVariable(name: "args", arg: 6, scope: !328, file: !321, line: 298, type: !331)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "old_line_number", scope: !328, file: !321, line: 305, type: !76, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !321, line: 338, type: !112, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !144, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !122, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "error_message_count", scope: !320, file: !321, line: 69, type: !76, isLocal: false, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !320, file: !321, line: 295, type: !97, isLocal: false, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !19, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 21)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !321, line: 214, type: !105, isLocal: true, isDefinition: true)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null}
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !372, line: 60, type: !122, isLocal: true, isDefinition: true)
!372 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "long_options", scope: !375, file: !372, line: 34, type: !383, isLocal: true, isDefinition: true)
!375 = distinct !DICompileUnit(language: DW_LANG_C11, file: !372, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !376, splitDebugInlining: false, nameTableKind: None)
!376 = !{!370, !377, !379, !381, !373}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !372, line: 112, type: !34, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !372, line: 36, type: !105, isLocal: true, isDefinition: true)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !372, line: 37, type: !144, isLocal: true, isDefinition: true)
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
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !396, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, globals: !398, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!397 = !{!246}
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
!409 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !410, splitDebugInlining: false, nameTableKind: None)
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
!460 = distinct !DICompileUnit(language: DW_LANG_C11, file: !436, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !461, retainedTypes: !481, globals: !482, splitDebugInlining: false, nameTableKind: None)
!461 = !{!462, !476, !74}
!462 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !463, line: 42, baseType: !76, size: 32, elements: !464)
!463 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!481 = !{!97, !98, !99}
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
!631 = distinct !DICompileUnit(language: DW_LANG_C11, file: !632, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !633, splitDebugInlining: false, nameTableKind: None)
!632 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!633 = !{!629}
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 47)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "exit_failure", scope: !639, file: !640, line: 24, type: !642, isLocal: false, isDefinition: true)
!639 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !641, splitDebugInlining: false, nameTableKind: None)
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
!655 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !656, globals: !657, splitDebugInlining: false, nameTableKind: None)
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
!671 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!672 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!673 = distinct !DICompileUnit(language: DW_LANG_C11, file: !552, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !674, retainedTypes: !678, globals: !679, splitDebugInlining: false, nameTableKind: None)
!674 = !{!675}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !552, line: 40, baseType: !76, size: 32, elements: !676)
!676 = !{!677}
!677 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!678 = !{!91}
!679 = !{!550, !553, !555, !557, !559, !561, !566, !571, !573, !575, !580, !585, !590, !592, !597, !602, !607, !612, !614, !616, !618, !620, !622, !624}
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !713, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!682 = !{!683, !695}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !684, file: !681, line: 188, baseType: !76, size: 32, elements: !693)
!684 = distinct !DISubprogram(name: "x2nrealloc", scope: !681, file: !681, line: 176, type: !685, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !688)
!685 = !DISubroutineType(types: !686)
!686 = !{!91, !91, !687, !99}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!688 = !{!689, !690, !691, !692}
!689 = !DILocalVariable(name: "p", arg: 1, scope: !684, file: !681, line: 176, type: !91)
!690 = !DILocalVariable(name: "pn", arg: 2, scope: !684, file: !681, line: 176, type: !687)
!691 = !DILocalVariable(name: "s", arg: 3, scope: !684, file: !681, line: 176, type: !99)
!692 = !DILocalVariable(name: "n", scope: !684, file: !681, line: 178, type: !99)
!693 = !{!694}
!694 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!695 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !696, file: !681, line: 228, baseType: !76, size: 32, elements: !693)
!696 = distinct !DISubprogram(name: "xpalloc", scope: !681, file: !681, line: 223, type: !697, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !703)
!697 = !DISubroutineType(types: !698)
!698 = !{!91, !91, !699, !700, !702, !700}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !701, line: 130, baseType: !702)
!701 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !100, line: 35, baseType: !266)
!703 = !{!704, !705, !706, !707, !708, !709, !710, !711, !712}
!704 = !DILocalVariable(name: "pa", arg: 1, scope: !696, file: !681, line: 223, type: !91)
!705 = !DILocalVariable(name: "pn", arg: 2, scope: !696, file: !681, line: 223, type: !699)
!706 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !696, file: !681, line: 223, type: !700)
!707 = !DILocalVariable(name: "n_max", arg: 4, scope: !696, file: !681, line: 223, type: !702)
!708 = !DILocalVariable(name: "s", arg: 5, scope: !696, file: !681, line: 223, type: !700)
!709 = !DILocalVariable(name: "n0", scope: !696, file: !681, line: 230, type: !700)
!710 = !DILocalVariable(name: "n", scope: !696, file: !681, line: 237, type: !700)
!711 = !DILocalVariable(name: "nbytes", scope: !696, file: !681, line: 248, type: !700)
!712 = !DILocalVariable(name: "adjusted_nbytes", scope: !696, file: !681, line: 252, type: !700)
!713 = !{!246, !91, !225, !266, !96}
!714 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !715, splitDebugInlining: false, nameTableKind: None)
!715 = !{!643, !646, !648}
!716 = distinct !DICompileUnit(language: DW_LANG_C11, file: !717, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!717 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!718 = distinct !DICompileUnit(language: DW_LANG_C11, file: !719, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!719 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !721, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !678, splitDebugInlining: false, nameTableKind: None)
!721 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !678, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !726, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!726 = !{!225, !96, !91}
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !670, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !728, splitDebugInlining: false, nameTableKind: None)
!728 = !{!729, !668}
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !670, line: 35, type: !122, isLocal: true, isDefinition: true)
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !678, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!735 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!736 = !{i32 7, !"Dwarf Version", i32 5}
!737 = !{i32 2, !"Debug Info Version", i32 3}
!738 = !{i32 1, !"wchar_size", i32 4}
!739 = !{i32 8, !"PIC Level", i32 2}
!740 = !{i32 7, !"PIE Level", i32 2}
!741 = !{i32 7, !"uwtable", i32 2}
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
!781 = !DILocation(line: 857, column: 3, scope: !763, inlinedAt: !780)
!782 = !DILocation(line: 861, column: 29, scope: !763, inlinedAt: !780)
!783 = !DILocation(line: 862, column: 7, scope: !784, inlinedAt: !780)
!784 = distinct !DILexicalBlock(scope: !763, file: !67, line: 862, column: 7)
!785 = !DILocation(line: 862, column: 19, scope: !784, inlinedAt: !780)
!786 = !DILocation(line: 862, column: 22, scope: !784, inlinedAt: !780)
!787 = !DILocation(line: 862, column: 7, scope: !763, inlinedAt: !780)
!788 = !DILocation(line: 868, column: 7, scope: !789, inlinedAt: !780)
!789 = distinct !DILexicalBlock(scope: !784, file: !67, line: 863, column: 5)
!790 = !DILocation(line: 870, column: 5, scope: !789, inlinedAt: !780)
!791 = !DILocation(line: 875, column: 3, scope: !763, inlinedAt: !780)
!792 = !DILocation(line: 877, column: 3, scope: !763, inlinedAt: !780)
!793 = !DILocation(line: 52, column: 3, scope: !742)
!794 = !DISubprogram(name: "dcgettext", scope: !795, file: !795, line: 51, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!795 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!796 = !DISubroutineType(types: !797)
!797 = !{!246, !70, !70, !97}
!798 = !{}
!799 = !DISubprogram(name: "__fprintf_chk", scope: !800, file: !800, line: 93, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!800 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!801 = !DISubroutineType(types: !802)
!802 = !{!97, !803, !97, !804, null}
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!805 = !DISubprogram(name: "__printf_chk", scope: !800, file: !800, line: 95, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!806 = !DISubroutineType(types: !807)
!807 = !{!97, !97, !804, null}
!808 = !DISubprogram(name: "fputs_unlocked", scope: !809, file: !809, line: 691, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
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
!865 = !DILocation(line: 618, column: 5, scope: !229)
!866 = !DILocation(line: 620, column: 23, scope: !66)
!867 = !DILocation(line: 625, column: 39, scope: !66)
!868 = !DILocation(line: 626, column: 3, scope: !66)
!869 = !DILocation(line: 626, column: 10, scope: !66)
!870 = !DILocation(line: 626, column: 21, scope: !66)
!871 = !DILocation(line: 628, column: 44, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !67, line: 628, column: 11)
!873 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!874 = !DILocation(line: 628, column: 32, scope: !872)
!875 = !DILocation(line: 628, column: 49, scope: !872)
!876 = !DILocation(line: 628, column: 11, scope: !873)
!877 = !DILocation(line: 630, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !67, line: 630, column: 11)
!879 = !DILocation(line: 630, column: 11, scope: !873)
!880 = !DILocation(line: 632, column: 26, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !67, line: 632, column: 15)
!882 = distinct !DILexicalBlock(scope: !878, file: !67, line: 631, column: 9)
!883 = !DILocation(line: 632, column: 34, scope: !881)
!884 = !DILocation(line: 632, column: 37, scope: !881)
!885 = !DILocation(line: 632, column: 15, scope: !882)
!886 = !DILocation(line: 636, column: 16, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !67, line: 636, column: 15)
!888 = !DILocation(line: 636, column: 29, scope: !887)
!889 = !DILocation(line: 640, column: 16, scope: !873)
!890 = distinct !{!890, !868, !891, !861}
!891 = !DILocation(line: 641, column: 5, scope: !66)
!892 = !DILocation(line: 644, column: 3, scope: !66)
!893 = !DILocation(line: 0, scope: !826, inlinedAt: !894)
!894 = distinct !DILocation(line: 648, column: 31, scope: !66)
!895 = !DILocation(line: 0, scope: !826, inlinedAt: !896)
!896 = distinct !DILocation(line: 649, column: 31, scope: !66)
!897 = !DILocation(line: 0, scope: !826, inlinedAt: !898)
!898 = distinct !DILocation(line: 650, column: 31, scope: !66)
!899 = !DILocation(line: 0, scope: !826, inlinedAt: !900)
!900 = distinct !DILocation(line: 651, column: 31, scope: !66)
!901 = !DILocation(line: 0, scope: !826, inlinedAt: !902)
!902 = distinct !DILocation(line: 652, column: 31, scope: !66)
!903 = !DILocation(line: 0, scope: !826, inlinedAt: !904)
!904 = distinct !DILocation(line: 653, column: 31, scope: !66)
!905 = !DILocation(line: 0, scope: !826, inlinedAt: !906)
!906 = distinct !DILocation(line: 654, column: 31, scope: !66)
!907 = !DILocation(line: 0, scope: !826, inlinedAt: !908)
!908 = distinct !DILocation(line: 655, column: 31, scope: !66)
!909 = !DILocation(line: 0, scope: !826, inlinedAt: !910)
!910 = distinct !DILocation(line: 656, column: 31, scope: !66)
!911 = !DILocation(line: 0, scope: !826, inlinedAt: !912)
!912 = distinct !DILocation(line: 657, column: 31, scope: !66)
!913 = !DILocation(line: 663, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!915 = !DILocation(line: 664, column: 7, scope: !914)
!916 = !DILocation(line: 664, column: 10, scope: !914)
!917 = !DILocation(line: 663, column: 7, scope: !66)
!918 = !DILocation(line: 669, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !67, line: 665, column: 5)
!920 = !DILocation(line: 671, column: 5, scope: !919)
!921 = !DILocation(line: 676, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !914, file: !67, line: 673, column: 5)
!923 = !DILocation(line: 679, column: 3, scope: !66)
!924 = !DILocation(line: 683, column: 3, scope: !66)
!925 = !DILocation(line: 686, column: 3, scope: !66)
!926 = !DILocation(line: 688, column: 3, scope: !66)
!927 = !DILocation(line: 691, column: 3, scope: !66)
!928 = !DILocation(line: 695, column: 3, scope: !66)
!929 = !DILocation(line: 696, column: 1, scope: !66)
!930 = !DISubprogram(name: "setlocale", scope: !931, file: !931, line: 122, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!931 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!932 = !DISubroutineType(types: !933)
!933 = !{!246, !97, !70}
!934 = !DISubprogram(name: "strncmp", scope: !935, file: !935, line: 159, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!935 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!936 = !DISubroutineType(types: !937)
!937 = !{!97, !70, !70, !99}
!938 = !DISubprogram(name: "exit", scope: !939, file: !939, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!939 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!940 = !DISubprogram(name: "getenv", scope: !939, file: !939, line: 641, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!941 = !DISubroutineType(types: !942)
!942 = !{!246, !70}
!943 = !DISubprogram(name: "strcmp", scope: !935, file: !935, line: 156, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!944 = !DISubroutineType(types: !945)
!945 = !{!97, !70, !70}
!946 = !DISubprogram(name: "strspn", scope: !935, file: !935, line: 297, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!947 = !DISubroutineType(types: !948)
!948 = !{!96, !70, !70}
!949 = !DISubprogram(name: "strchr", scope: !935, file: !935, line: 246, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!950 = !DISubroutineType(types: !951)
!951 = !{!246, !70, !97}
!952 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!953 = !DISubroutineType(types: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!958 = !DISubprogram(name: "strcspn", scope: !935, file: !935, line: 293, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!959 = !DISubprogram(name: "fwrite_unlocked", scope: !809, file: !809, line: 704, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!960 = !DISubroutineType(types: !961)
!961 = !{!99, !962, !99, !99, !803}
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!965 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 56, type: !966, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !969)
!966 = !DISubroutineType(types: !967)
!967 = !{!97, !97, !968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!969 = !{!970, !971, !972, !976, !977}
!970 = !DILocalVariable(name: "argc", arg: 1, scope: !965, file: !2, line: 56, type: !97)
!971 = !DILocalVariable(name: "argv", arg: 2, scope: !965, file: !2, line: 56, type: !968)
!972 = !DILocalVariable(name: "NO_UID", scope: !965, file: !2, line: 58, type: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !974, line: 79, baseType: !975)
!974 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !95, line: 146, baseType: !76)
!976 = !DILocalVariable(name: "uid", scope: !965, file: !2, line: 79, type: !973)
!977 = !DILocalVariable(name: "pw", scope: !965, file: !2, line: 80, type: !978)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !980, line: 49, size: 384, elements: !981)
!980 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!981 = !{!982, !983, !984, !985, !987, !988, !989}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !979, file: !980, line: 51, baseType: !246, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !979, file: !980, line: 52, baseType: !246, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !979, file: !980, line: 54, baseType: !975, size: 32, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !979, file: !980, line: 55, baseType: !986, size: 32, offset: 160)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !95, line: 147, baseType: !76)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !979, file: !980, line: 56, baseType: !246, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !979, file: !980, line: 57, baseType: !246, size: 64, offset: 256)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !979, file: !980, line: 58, baseType: !246, size: 64, offset: 320)
!990 = !DILocation(line: 0, scope: !965)
!991 = !DILocation(line: 61, column: 21, scope: !965)
!992 = !DILocation(line: 61, column: 3, scope: !965)
!993 = !DILocation(line: 62, column: 3, scope: !965)
!994 = !DILocation(line: 63, column: 3, scope: !965)
!995 = !DILocation(line: 64, column: 3, scope: !965)
!996 = !DILocation(line: 66, column: 3, scope: !965)
!997 = !DILocation(line: 69, column: 36, scope: !965)
!998 = !DILocation(line: 69, column: 58, scope: !965)
!999 = !DILocation(line: 68, column: 3, scope: !965)
!1000 = !DILocation(line: 72, column: 7, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !965, file: !2, line: 72, column: 7)
!1002 = !DILocation(line: 72, column: 14, scope: !1001)
!1003 = !DILocation(line: 72, column: 7, scope: !965)
!1004 = !DILocation(line: 74, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 73, column: 5)
!1006 = !DILocation(line: 75, column: 7, scope: !1005)
!1007 = !DILocation(line: 78, column: 3, scope: !965)
!1008 = !DILocation(line: 78, column: 9, scope: !965)
!1009 = !DILocation(line: 79, column: 15, scope: !965)
!1010 = !DILocation(line: 80, column: 27, scope: !965)
!1011 = !DILocation(line: 80, column: 37, scope: !965)
!1012 = !DILocation(line: 80, column: 40, scope: !965)
!1013 = !DILocation(line: 80, column: 23, scope: !965)
!1014 = !DILocation(line: 80, column: 55, scope: !965)
!1015 = !DILocation(line: 81, column: 8, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !965, file: !2, line: 81, column: 7)
!1017 = !DILocation(line: 81, column: 7, scope: !965)
!1018 = !DILocation(line: 82, column: 5, scope: !1016)
!1019 = !DILocation(line: 84, column: 13, scope: !965)
!1020 = !{!1021, !754, i64 0}
!1021 = !{!"passwd", !754, i64 0, !754, i64 8, !815, i64 16, !815, i64 20, !754, i64 24, !754, i64 32, !754, i64 40}
!1022 = !DILocation(line: 84, column: 3, scope: !965)
!1023 = !DILocation(line: 85, column: 3, scope: !965)
!1024 = !DISubprogram(name: "bindtextdomain", scope: !795, file: !795, line: 86, type: !1025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!246, !70, !70}
!1027 = !DISubprogram(name: "textdomain", scope: !795, file: !795, line: 82, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1028 = !DISubprogram(name: "atexit", scope: !939, file: !939, line: 602, type: !1029, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!97, !367}
!1031 = !DISubprogram(name: "__errno_location", scope: !1032, file: !1032, line: 37, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1032 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!391}
!1035 = !DISubprogram(name: "geteuid", scope: !1036, file: !1036, line: 700, type: !1037, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1036 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!975}
!1039 = !DISubprogram(name: "getpwuid", scope: !980, file: !980, line: 110, type: !1040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!978, !975}
!1042 = !DISubprogram(name: "puts", scope: !809, file: !809, line: 661, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!97, !70}
!1045 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !306, file: !306, line: 50, type: !764, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1046)
!1046 = !{!1047}
!1047 = !DILocalVariable(name: "file", arg: 1, scope: !1045, file: !306, line: 50, type: !70)
!1048 = !DILocation(line: 0, scope: !1045)
!1049 = !DILocation(line: 52, column: 13, scope: !1045)
!1050 = !DILocation(line: 53, column: 1, scope: !1045)
!1051 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !306, file: !306, line: 87, type: !1052, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1054)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{null, !225}
!1054 = !{!1055}
!1055 = !DILocalVariable(name: "ignore", arg: 1, scope: !1051, file: !306, line: 87, type: !225)
!1056 = !DILocation(line: 0, scope: !1051)
!1057 = !DILocation(line: 89, column: 16, scope: !1051)
!1058 = !{!1059, !1059, i64 0}
!1059 = !{!"_Bool", !755, i64 0}
!1060 = !DILocation(line: 90, column: 1, scope: !1051)
!1061 = distinct !DISubprogram(name: "close_stdout", scope: !306, file: !306, line: 116, type: !368, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1062)
!1062 = !{!1063}
!1063 = !DILocalVariable(name: "write_error", scope: !1064, file: !306, line: 121, type: !70)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !306, line: 120, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !306, line: 118, column: 7)
!1066 = !DILocation(line: 118, column: 21, scope: !1065)
!1067 = !DILocation(line: 118, column: 7, scope: !1065)
!1068 = !DILocation(line: 118, column: 29, scope: !1065)
!1069 = !DILocation(line: 119, column: 7, scope: !1065)
!1070 = !DILocation(line: 119, column: 12, scope: !1065)
!1071 = !{i8 0, i8 2}
!1072 = !DILocation(line: 119, column: 25, scope: !1065)
!1073 = !DILocation(line: 119, column: 28, scope: !1065)
!1074 = !DILocation(line: 119, column: 34, scope: !1065)
!1075 = !DILocation(line: 118, column: 7, scope: !1061)
!1076 = !DILocation(line: 121, column: 33, scope: !1064)
!1077 = !DILocation(line: 0, scope: !1064)
!1078 = !DILocation(line: 122, column: 11, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1064, file: !306, line: 122, column: 11)
!1080 = !DILocation(line: 0, scope: !1079)
!1081 = !DILocation(line: 122, column: 11, scope: !1064)
!1082 = !DILocation(line: 123, column: 9, scope: !1079)
!1083 = !DILocation(line: 126, column: 9, scope: !1079)
!1084 = !DILocation(line: 128, column: 14, scope: !1064)
!1085 = !DILocation(line: 128, column: 7, scope: !1064)
!1086 = !DILocation(line: 133, column: 42, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1061, file: !306, line: 133, column: 7)
!1088 = !DILocation(line: 133, column: 28, scope: !1087)
!1089 = !DILocation(line: 133, column: 50, scope: !1087)
!1090 = !DILocation(line: 133, column: 7, scope: !1061)
!1091 = !DILocation(line: 134, column: 12, scope: !1087)
!1092 = !DILocation(line: 134, column: 5, scope: !1087)
!1093 = !DILocation(line: 135, column: 1, scope: !1061)
!1094 = !DISubprogram(name: "_exit", scope: !1036, file: !1036, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1095 = distinct !DISubprogram(name: "verror", scope: !321, file: !321, line: 251, type: !1096, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1098)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !97, !97, !70, !331}
!1098 = !{!1099, !1100, !1101, !1102}
!1099 = !DILocalVariable(name: "status", arg: 1, scope: !1095, file: !321, line: 251, type: !97)
!1100 = !DILocalVariable(name: "errnum", arg: 2, scope: !1095, file: !321, line: 251, type: !97)
!1101 = !DILocalVariable(name: "message", arg: 3, scope: !1095, file: !321, line: 251, type: !70)
!1102 = !DILocalVariable(name: "args", arg: 4, scope: !1095, file: !321, line: 251, type: !331)
!1103 = !DILocation(line: 0, scope: !1095)
!1104 = !DILocation(line: 261, column: 3, scope: !1095)
!1105 = !DILocation(line: 265, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1095, file: !321, line: 265, column: 7)
!1107 = !DILocation(line: 265, column: 7, scope: !1095)
!1108 = !DILocation(line: 266, column: 5, scope: !1106)
!1109 = !DILocation(line: 272, column: 7, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !321, line: 268, column: 5)
!1111 = !DILocation(line: 276, column: 3, scope: !1095)
!1112 = !DILocation(line: 282, column: 1, scope: !1095)
!1113 = distinct !DISubprogram(name: "flush_stdout", scope: !321, file: !321, line: 163, type: !368, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1114)
!1114 = !{!1115}
!1115 = !DILocalVariable(name: "stdout_fd", scope: !1113, file: !321, line: 166, type: !97)
!1116 = !DILocation(line: 0, scope: !1113)
!1117 = !DILocalVariable(name: "fd", arg: 1, scope: !1118, file: !321, line: 145, type: !97)
!1118 = distinct !DISubprogram(name: "is_open", scope: !321, file: !321, line: 145, type: !1119, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!97, !97}
!1121 = !{!1117}
!1122 = !DILocation(line: 0, scope: !1118, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 182, column: 25, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1113, file: !321, line: 182, column: 7)
!1125 = !DILocation(line: 157, column: 15, scope: !1118, inlinedAt: !1123)
!1126 = !DILocation(line: 157, column: 12, scope: !1118, inlinedAt: !1123)
!1127 = !DILocation(line: 182, column: 7, scope: !1113)
!1128 = !DILocation(line: 184, column: 5, scope: !1124)
!1129 = !DILocation(line: 185, column: 1, scope: !1113)
!1130 = distinct !DISubprogram(name: "error_tail", scope: !321, file: !321, line: 219, type: !1096, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1131)
!1131 = !{!1132, !1133, !1134, !1135}
!1132 = !DILocalVariable(name: "status", arg: 1, scope: !1130, file: !321, line: 219, type: !97)
!1133 = !DILocalVariable(name: "errnum", arg: 2, scope: !1130, file: !321, line: 219, type: !97)
!1134 = !DILocalVariable(name: "message", arg: 3, scope: !1130, file: !321, line: 219, type: !70)
!1135 = !DILocalVariable(name: "args", arg: 4, scope: !1130, file: !321, line: 219, type: !331)
!1136 = !DILocation(line: 0, scope: !1130)
!1137 = !DILocation(line: 229, column: 13, scope: !1130)
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
!1181 = distinct !DILocation(line: 229, column: 3, scope: !1130)
!1182 = !DILocation(line: 135, column: 10, scope: !1139, inlinedAt: !1181)
!1183 = !DILocation(line: 232, column: 3, scope: !1130)
!1184 = !DILocation(line: 233, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1130, file: !321, line: 233, column: 7)
!1186 = !DILocation(line: 233, column: 7, scope: !1130)
!1187 = !DILocalVariable(name: "errnum", arg: 1, scope: !1188, file: !321, line: 188, type: !97)
!1188 = distinct !DISubprogram(name: "print_errno_message", scope: !321, file: !321, line: 188, type: !743, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1189)
!1189 = !{!1187, !1190, !1191}
!1190 = !DILocalVariable(name: "s", scope: !1188, file: !321, line: 190, type: !70)
!1191 = !DILocalVariable(name: "errbuf", scope: !1188, file: !321, line: 193, type: !1192)
!1192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1193)
!1193 = !{!1194}
!1194 = !DISubrange(count: 1024)
!1195 = !DILocation(line: 0, scope: !1188, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 234, column: 5, scope: !1185)
!1197 = !DILocation(line: 193, column: 3, scope: !1188, inlinedAt: !1196)
!1198 = !DILocation(line: 193, column: 8, scope: !1188, inlinedAt: !1196)
!1199 = !DILocation(line: 195, column: 7, scope: !1188, inlinedAt: !1196)
!1200 = !DILocation(line: 207, column: 9, scope: !1201, inlinedAt: !1196)
!1201 = distinct !DILexicalBlock(scope: !1188, file: !321, line: 207, column: 7)
!1202 = !DILocation(line: 207, column: 7, scope: !1188, inlinedAt: !1196)
!1203 = !DILocation(line: 208, column: 9, scope: !1201, inlinedAt: !1196)
!1204 = !DILocation(line: 208, column: 5, scope: !1201, inlinedAt: !1196)
!1205 = !DILocation(line: 214, column: 3, scope: !1188, inlinedAt: !1196)
!1206 = !DILocation(line: 216, column: 1, scope: !1188, inlinedAt: !1196)
!1207 = !DILocation(line: 234, column: 5, scope: !1185)
!1208 = !DILocation(line: 238, column: 3, scope: !1130)
!1209 = !DILocalVariable(name: "__c", arg: 1, scope: !1210, file: !1211, line: 101, type: !97)
!1210 = distinct !DISubprogram(name: "putc_unlocked", scope: !1211, file: !1211, line: 101, type: !1212, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1214)
!1211 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!97, !97, !1143}
!1214 = !{!1209, !1215}
!1215 = !DILocalVariable(name: "__stream", arg: 2, scope: !1210, file: !1211, line: 101, type: !1143)
!1216 = !DILocation(line: 0, scope: !1210, inlinedAt: !1217)
!1217 = distinct !DILocation(line: 238, column: 3, scope: !1130)
!1218 = !DILocation(line: 103, column: 10, scope: !1210, inlinedAt: !1217)
!1219 = !{!1220, !754, i64 40}
!1220 = !{!"_IO_FILE", !815, i64 0, !754, i64 8, !754, i64 16, !754, i64 24, !754, i64 32, !754, i64 40, !754, i64 48, !754, i64 56, !754, i64 64, !754, i64 72, !754, i64 80, !754, i64 88, !754, i64 96, !754, i64 104, !815, i64 112, !815, i64 116, !1221, i64 120, !856, i64 128, !755, i64 130, !755, i64 131, !754, i64 136, !1221, i64 144, !754, i64 152, !754, i64 160, !754, i64 168, !754, i64 176, !1221, i64 184, !815, i64 192, !755, i64 196}
!1221 = !{!"long", !755, i64 0}
!1222 = !{!1220, !754, i64 48}
!1223 = !{!"branch_weights", i32 2000, i32 1}
!1224 = !DILocation(line: 240, column: 3, scope: !1130)
!1225 = !DILocation(line: 241, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1130, file: !321, line: 241, column: 7)
!1227 = !DILocation(line: 241, column: 7, scope: !1130)
!1228 = !DILocation(line: 242, column: 5, scope: !1226)
!1229 = !DILocation(line: 243, column: 1, scope: !1130)
!1230 = !DISubprogram(name: "__vfprintf_chk", scope: !800, file: !800, line: 96, type: !1231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!97, !1142, !97, !804, !331}
!1233 = !DISubprogram(name: "strerror_r", scope: !935, file: !935, line: 444, type: !1234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!246, !97, !246, !99}
!1236 = !DISubprogram(name: "__overflow", scope: !809, file: !809, line: 886, type: !1237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!97, !1143, !97}
!1239 = !DISubprogram(name: "fflush_unlocked", scope: !809, file: !809, line: 239, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!97, !1143}
!1242 = !DISubprogram(name: "fcntl", scope: !1243, file: !1243, line: 149, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1243 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!97, !97, !97, null}
!1246 = distinct !DISubprogram(name: "error", scope: !321, file: !321, line: 285, type: !1247, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !97, !97, !70, null}
!1249 = !{!1250, !1251, !1252, !1253}
!1250 = !DILocalVariable(name: "status", arg: 1, scope: !1246, file: !321, line: 285, type: !97)
!1251 = !DILocalVariable(name: "errnum", arg: 2, scope: !1246, file: !321, line: 285, type: !97)
!1252 = !DILocalVariable(name: "message", arg: 3, scope: !1246, file: !321, line: 285, type: !70)
!1253 = !DILocalVariable(name: "ap", scope: !1246, file: !321, line: 287, type: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !809, line: 52, baseType: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1256, line: 14, baseType: !1257)
!1256 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !335, baseType: !1258)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !35)
!1259 = !DILocation(line: 0, scope: !1246)
!1260 = !DILocation(line: 287, column: 3, scope: !1246)
!1261 = !DILocation(line: 287, column: 11, scope: !1246)
!1262 = !DILocation(line: 288, column: 3, scope: !1246)
!1263 = !DILocation(line: 289, column: 3, scope: !1246)
!1264 = !DILocation(line: 290, column: 3, scope: !1246)
!1265 = !DILocation(line: 291, column: 1, scope: !1246)
!1266 = !DILocation(line: 0, scope: !328)
!1267 = !DILocation(line: 302, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !328, file: !321, line: 302, column: 7)
!1269 = !DILocation(line: 302, column: 7, scope: !328)
!1270 = !DILocation(line: 307, column: 11, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !321, line: 307, column: 11)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !321, line: 303, column: 5)
!1273 = !DILocation(line: 307, column: 27, scope: !1271)
!1274 = !DILocation(line: 308, column: 11, scope: !1271)
!1275 = !DILocation(line: 308, column: 28, scope: !1271)
!1276 = !DILocation(line: 308, column: 25, scope: !1271)
!1277 = !DILocation(line: 309, column: 15, scope: !1271)
!1278 = !DILocation(line: 309, column: 33, scope: !1271)
!1279 = !DILocation(line: 310, column: 19, scope: !1271)
!1280 = !DILocation(line: 311, column: 22, scope: !1271)
!1281 = !DILocation(line: 311, column: 56, scope: !1271)
!1282 = !DILocation(line: 307, column: 11, scope: !1272)
!1283 = !DILocation(line: 316, column: 21, scope: !1272)
!1284 = !DILocation(line: 317, column: 23, scope: !1272)
!1285 = !DILocation(line: 318, column: 5, scope: !1272)
!1286 = !DILocation(line: 327, column: 3, scope: !328)
!1287 = !DILocation(line: 331, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !328, file: !321, line: 331, column: 7)
!1289 = !DILocation(line: 331, column: 7, scope: !328)
!1290 = !DILocation(line: 332, column: 5, scope: !1288)
!1291 = !DILocation(line: 338, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !321, line: 334, column: 5)
!1293 = !DILocation(line: 346, column: 3, scope: !328)
!1294 = !DILocation(line: 350, column: 3, scope: !328)
!1295 = !DILocation(line: 356, column: 1, scope: !328)
!1296 = distinct !DISubprogram(name: "error_at_line", scope: !321, file: !321, line: 359, type: !1297, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1299)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !97, !97, !70, !76, !70, null}
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305}
!1300 = !DILocalVariable(name: "status", arg: 1, scope: !1296, file: !321, line: 359, type: !97)
!1301 = !DILocalVariable(name: "errnum", arg: 2, scope: !1296, file: !321, line: 359, type: !97)
!1302 = !DILocalVariable(name: "file_name", arg: 3, scope: !1296, file: !321, line: 359, type: !70)
!1303 = !DILocalVariable(name: "line_number", arg: 4, scope: !1296, file: !321, line: 360, type: !76)
!1304 = !DILocalVariable(name: "message", arg: 5, scope: !1296, file: !321, line: 360, type: !70)
!1305 = !DILocalVariable(name: "ap", scope: !1296, file: !321, line: 362, type: !1254)
!1306 = !DILocation(line: 0, scope: !1296)
!1307 = !DILocation(line: 362, column: 3, scope: !1296)
!1308 = !DILocation(line: 362, column: 11, scope: !1296)
!1309 = !DILocation(line: 363, column: 3, scope: !1296)
!1310 = !DILocation(line: 364, column: 3, scope: !1296)
!1311 = !DILocation(line: 366, column: 3, scope: !1296)
!1312 = !DILocation(line: 367, column: 1, scope: !1296)
!1313 = distinct !DISubprogram(name: "getprogname", scope: !672, file: !672, line: 54, type: !1314, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !671, retainedNodes: !798)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!70}
!1316 = !DILocation(line: 58, column: 10, scope: !1313)
!1317 = !DILocation(line: 58, column: 3, scope: !1313)
!1318 = distinct !DISubprogram(name: "parse_long_options", scope: !372, file: !372, line: 45, type: !1319, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1322)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{null, !97, !968, !70, !70, !70, !1321, null}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1333}
!1323 = !DILocalVariable(name: "argc", arg: 1, scope: !1318, file: !372, line: 45, type: !97)
!1324 = !DILocalVariable(name: "argv", arg: 2, scope: !1318, file: !372, line: 46, type: !968)
!1325 = !DILocalVariable(name: "command_name", arg: 3, scope: !1318, file: !372, line: 47, type: !70)
!1326 = !DILocalVariable(name: "package", arg: 4, scope: !1318, file: !372, line: 48, type: !70)
!1327 = !DILocalVariable(name: "version", arg: 5, scope: !1318, file: !372, line: 49, type: !70)
!1328 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1318, file: !372, line: 50, type: !1321)
!1329 = !DILocalVariable(name: "saved_opterr", scope: !1318, file: !372, line: 53, type: !97)
!1330 = !DILocalVariable(name: "c", scope: !1331, file: !372, line: 60, type: !97)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !372, line: 59, column: 5)
!1332 = distinct !DILexicalBlock(scope: !1318, file: !372, line: 58, column: 7)
!1333 = !DILocalVariable(name: "authors", scope: !1334, file: !372, line: 71, type: !1338)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !372, line: 70, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !372, line: 64, column: 13)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !372, line: 62, column: 9)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !372, line: 61, column: 11)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !809, line: 52, baseType: !1339)
!1339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1256, line: 14, baseType: !1340)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1341, baseType: !1342)
!1341 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 192, elements: !35)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1343, file: !1341, line: 71, baseType: !76, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1343, file: !1341, line: 71, baseType: !76, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1343, file: !1341, line: 71, baseType: !91, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1343, file: !1341, line: 71, baseType: !91, size: 64, offset: 128)
!1349 = !DILocation(line: 0, scope: !1318)
!1350 = !DILocation(line: 53, column: 22, scope: !1318)
!1351 = !DILocation(line: 56, column: 10, scope: !1318)
!1352 = !DILocation(line: 58, column: 12, scope: !1332)
!1353 = !DILocation(line: 58, column: 7, scope: !1318)
!1354 = !DILocation(line: 60, column: 15, scope: !1331)
!1355 = !DILocation(line: 0, scope: !1331)
!1356 = !DILocation(line: 61, column: 11, scope: !1331)
!1357 = !DILocation(line: 66, column: 15, scope: !1335)
!1358 = !DILocation(line: 67, column: 15, scope: !1335)
!1359 = !DILocation(line: 71, column: 17, scope: !1334)
!1360 = !DILocation(line: 71, column: 25, scope: !1334)
!1361 = !DILocation(line: 72, column: 17, scope: !1334)
!1362 = !DILocation(line: 73, column: 33, scope: !1334)
!1363 = !DILocation(line: 73, column: 17, scope: !1334)
!1364 = !DILocation(line: 74, column: 17, scope: !1334)
!1365 = !DILocation(line: 85, column: 10, scope: !1318)
!1366 = !DILocation(line: 89, column: 10, scope: !1318)
!1367 = !DILocation(line: 90, column: 1, scope: !1318)
!1368 = !DISubprogram(name: "getopt_long", scope: !386, file: !386, line: 66, type: !1369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!97, !97, !1371, !70, !1373, !391}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!1374 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !372, file: !372, line: 98, type: !1375, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1377)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !97, !968, !70, !70, !70, !225, !1321, null}
!1377 = !{!1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388}
!1378 = !DILocalVariable(name: "argc", arg: 1, scope: !1374, file: !372, line: 98, type: !97)
!1379 = !DILocalVariable(name: "argv", arg: 2, scope: !1374, file: !372, line: 99, type: !968)
!1380 = !DILocalVariable(name: "command_name", arg: 3, scope: !1374, file: !372, line: 100, type: !70)
!1381 = !DILocalVariable(name: "package", arg: 4, scope: !1374, file: !372, line: 101, type: !70)
!1382 = !DILocalVariable(name: "version", arg: 5, scope: !1374, file: !372, line: 102, type: !70)
!1383 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1374, file: !372, line: 103, type: !225)
!1384 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1374, file: !372, line: 104, type: !1321)
!1385 = !DILocalVariable(name: "saved_opterr", scope: !1374, file: !372, line: 107, type: !97)
!1386 = !DILocalVariable(name: "optstring", scope: !1374, file: !372, line: 112, type: !70)
!1387 = !DILocalVariable(name: "c", scope: !1374, file: !372, line: 114, type: !97)
!1388 = !DILocalVariable(name: "authors", scope: !1389, file: !372, line: 125, type: !1338)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !372, line: 124, column: 11)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !372, line: 118, column: 9)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !372, line: 116, column: 5)
!1392 = distinct !DILexicalBlock(scope: !1374, file: !372, line: 115, column: 7)
!1393 = !DILocation(line: 0, scope: !1374)
!1394 = !DILocation(line: 107, column: 22, scope: !1374)
!1395 = !DILocation(line: 110, column: 10, scope: !1374)
!1396 = !DILocation(line: 112, column: 27, scope: !1374)
!1397 = !DILocation(line: 114, column: 11, scope: !1374)
!1398 = !DILocation(line: 115, column: 7, scope: !1374)
!1399 = !DILocation(line: 125, column: 13, scope: !1389)
!1400 = !DILocation(line: 125, column: 21, scope: !1389)
!1401 = !DILocation(line: 126, column: 13, scope: !1389)
!1402 = !DILocation(line: 127, column: 29, scope: !1389)
!1403 = !DILocation(line: 127, column: 13, scope: !1389)
!1404 = !DILocation(line: 128, column: 13, scope: !1389)
!1405 = !DILocation(line: 132, column: 26, scope: !1390)
!1406 = !DILocation(line: 133, column: 11, scope: !1390)
!1407 = !DILocation(line: 0, scope: !1390)
!1408 = !DILocation(line: 138, column: 10, scope: !1374)
!1409 = !DILocation(line: 139, column: 1, scope: !1374)
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
!1423 = !DILocalVariable(name: "__s1", arg: 1, scope: !1424, file: !827, line: 974, type: !963)
!1424 = distinct !DISubprogram(name: "memeq", scope: !827, file: !827, line: 974, type: !1425, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1427)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!225, !963, !963, !99}
!1427 = !{!1423, !1428, !1429}
!1428 = !DILocalVariable(name: "__s2", arg: 2, scope: !1424, file: !827, line: 974, type: !963)
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
!1444 = !DISubprogram(name: "strrchr", scope: !935, file: !935, line: 273, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1445 = !DILocation(line: 0, scope: !405)
!1446 = !DILocation(line: 40, column: 29, scope: !405)
!1447 = !DILocation(line: 41, column: 19, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !405, file: !406, line: 41, column: 7)
!1449 = !DILocation(line: 41, column: 7, scope: !405)
!1450 = !DILocation(line: 47, column: 3, scope: !405)
!1451 = !DILocation(line: 48, column: 3, scope: !405)
!1452 = !DILocation(line: 48, column: 13, scope: !405)
!1453 = !DILocalVariable(name: "ps", arg: 1, scope: !1454, file: !1455, line: 1135, type: !1458)
!1454 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1456, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1459)
!1455 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1459 = !{!1453}
!1460 = !DILocation(line: 0, scope: !1454, inlinedAt: !1461)
!1461 = distinct !DILocation(line: 48, column: 18, scope: !405)
!1462 = !DILocalVariable(name: "__dest", arg: 1, scope: !1463, file: !1464, line: 57, type: !91)
!1463 = distinct !DISubprogram(name: "memset", scope: !1464, file: !1464, line: 57, type: !1465, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1467)
!1464 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!91, !91, !97, !99}
!1467 = !{!1462, !1468, !1469}
!1468 = !DILocalVariable(name: "__ch", arg: 2, scope: !1463, file: !1464, line: 57, type: !97)
!1469 = !DILocalVariable(name: "__len", arg: 3, scope: !1463, file: !1464, line: 57, type: !99)
!1470 = !DILocation(line: 0, scope: !1463, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 1137, column: 3, scope: !1454, inlinedAt: !1461)
!1472 = !DILocation(line: 59, column: 10, scope: !1463, inlinedAt: !1471)
!1473 = !DILocation(line: 49, column: 7, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !405, file: !406, line: 49, column: 7)
!1475 = !DILocation(line: 49, column: 39, scope: !1474)
!1476 = !DILocation(line: 49, column: 44, scope: !1474)
!1477 = !DILocation(line: 54, column: 1, scope: !405)
!1478 = !DISubprogram(name: "mbrtoc32", scope: !417, file: !417, line: 57, type: !1479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!99, !1481, !804, !99, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1458)
!1484 = distinct !DISubprogram(name: "clone_quoting_options", scope: !436, file: !436, line: 113, type: !1485, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1488)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!1487, !1487}
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!1488 = !{!1489, !1490, !1491}
!1489 = !DILocalVariable(name: "o", arg: 1, scope: !1484, file: !436, line: 113, type: !1487)
!1490 = !DILocalVariable(name: "saved_errno", scope: !1484, file: !436, line: 115, type: !97)
!1491 = !DILocalVariable(name: "p", scope: !1484, file: !436, line: 116, type: !1487)
!1492 = !DILocation(line: 0, scope: !1484)
!1493 = !DILocation(line: 115, column: 21, scope: !1484)
!1494 = !DILocation(line: 116, column: 40, scope: !1484)
!1495 = !DILocation(line: 116, column: 31, scope: !1484)
!1496 = !DILocation(line: 118, column: 9, scope: !1484)
!1497 = !DILocation(line: 119, column: 3, scope: !1484)
!1498 = distinct !DISubprogram(name: "get_quoting_style", scope: !436, file: !436, line: 124, type: !1499, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1503)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{!462, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !489)
!1503 = !{!1504}
!1504 = !DILocalVariable(name: "o", arg: 1, scope: !1498, file: !436, line: 124, type: !1501)
!1505 = !DILocation(line: 0, scope: !1498)
!1506 = !DILocation(line: 126, column: 11, scope: !1498)
!1507 = !DILocation(line: 126, column: 46, scope: !1498)
!1508 = !{!1509, !755, i64 0}
!1509 = !{!"quoting_options", !755, i64 0, !815, i64 4, !755, i64 8, !754, i64 40, !754, i64 48}
!1510 = !DILocation(line: 126, column: 3, scope: !1498)
!1511 = distinct !DISubprogram(name: "set_quoting_style", scope: !436, file: !436, line: 132, type: !1512, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1514)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1487, !462}
!1514 = !{!1515, !1516}
!1515 = !DILocalVariable(name: "o", arg: 1, scope: !1511, file: !436, line: 132, type: !1487)
!1516 = !DILocalVariable(name: "s", arg: 2, scope: !1511, file: !436, line: 132, type: !462)
!1517 = !DILocation(line: 0, scope: !1511)
!1518 = !DILocation(line: 134, column: 4, scope: !1511)
!1519 = !DILocation(line: 134, column: 45, scope: !1511)
!1520 = !DILocation(line: 135, column: 1, scope: !1511)
!1521 = distinct !DISubprogram(name: "set_char_quoting", scope: !436, file: !436, line: 143, type: !1522, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!97, !1487, !4, !97}
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1531, !1532}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1521, file: !436, line: 143, type: !1487)
!1526 = !DILocalVariable(name: "c", arg: 2, scope: !1521, file: !436, line: 143, type: !4)
!1527 = !DILocalVariable(name: "i", arg: 3, scope: !1521, file: !436, line: 143, type: !97)
!1528 = !DILocalVariable(name: "uc", scope: !1521, file: !436, line: 145, type: !101)
!1529 = !DILocalVariable(name: "p", scope: !1521, file: !436, line: 146, type: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1531 = !DILocalVariable(name: "shift", scope: !1521, file: !436, line: 148, type: !97)
!1532 = !DILocalVariable(name: "r", scope: !1521, file: !436, line: 149, type: !76)
!1533 = !DILocation(line: 0, scope: !1521)
!1534 = !DILocation(line: 147, column: 6, scope: !1521)
!1535 = !DILocation(line: 147, column: 41, scope: !1521)
!1536 = !DILocation(line: 147, column: 62, scope: !1521)
!1537 = !DILocation(line: 147, column: 57, scope: !1521)
!1538 = !DILocation(line: 148, column: 15, scope: !1521)
!1539 = !DILocation(line: 149, column: 21, scope: !1521)
!1540 = !DILocation(line: 149, column: 24, scope: !1521)
!1541 = !DILocation(line: 149, column: 34, scope: !1521)
!1542 = !DILocation(line: 150, column: 19, scope: !1521)
!1543 = !DILocation(line: 150, column: 24, scope: !1521)
!1544 = !DILocation(line: 150, column: 6, scope: !1521)
!1545 = !DILocation(line: 151, column: 3, scope: !1521)
!1546 = distinct !DISubprogram(name: "set_quoting_flags", scope: !436, file: !436, line: 159, type: !1547, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!97, !1487, !97}
!1549 = !{!1550, !1551, !1552}
!1550 = !DILocalVariable(name: "o", arg: 1, scope: !1546, file: !436, line: 159, type: !1487)
!1551 = !DILocalVariable(name: "i", arg: 2, scope: !1546, file: !436, line: 159, type: !97)
!1552 = !DILocalVariable(name: "r", scope: !1546, file: !436, line: 163, type: !97)
!1553 = !DILocation(line: 0, scope: !1546)
!1554 = !DILocation(line: 161, column: 8, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1546, file: !436, line: 161, column: 7)
!1556 = !DILocation(line: 161, column: 7, scope: !1546)
!1557 = !DILocation(line: 163, column: 14, scope: !1546)
!1558 = !{!1509, !815, i64 4}
!1559 = !DILocation(line: 164, column: 12, scope: !1546)
!1560 = !DILocation(line: 165, column: 3, scope: !1546)
!1561 = distinct !DISubprogram(name: "set_custom_quoting", scope: !436, file: !436, line: 169, type: !1562, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1564)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{null, !1487, !70, !70}
!1564 = !{!1565, !1566, !1567}
!1565 = !DILocalVariable(name: "o", arg: 1, scope: !1561, file: !436, line: 169, type: !1487)
!1566 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1561, file: !436, line: 170, type: !70)
!1567 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1561, file: !436, line: 170, type: !70)
!1568 = !DILocation(line: 0, scope: !1561)
!1569 = !DILocation(line: 172, column: 8, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1561, file: !436, line: 172, column: 7)
!1571 = !DILocation(line: 172, column: 7, scope: !1561)
!1572 = !DILocation(line: 174, column: 12, scope: !1561)
!1573 = !DILocation(line: 175, column: 8, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1561, file: !436, line: 175, column: 7)
!1575 = !DILocation(line: 175, column: 19, scope: !1574)
!1576 = !DILocation(line: 176, column: 5, scope: !1574)
!1577 = !DILocation(line: 177, column: 6, scope: !1561)
!1578 = !DILocation(line: 177, column: 17, scope: !1561)
!1579 = !{!1509, !754, i64 40}
!1580 = !DILocation(line: 178, column: 6, scope: !1561)
!1581 = !DILocation(line: 178, column: 18, scope: !1561)
!1582 = !{!1509, !754, i64 48}
!1583 = !DILocation(line: 179, column: 1, scope: !1561)
!1584 = !DISubprogram(name: "abort", scope: !939, file: !939, line: 598, type: !368, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1585 = distinct !DISubprogram(name: "quotearg_buffer", scope: !436, file: !436, line: 774, type: !1586, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!99, !246, !99, !70, !99, !1501}
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596}
!1589 = !DILocalVariable(name: "buffer", arg: 1, scope: !1585, file: !436, line: 774, type: !246)
!1590 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1585, file: !436, line: 774, type: !99)
!1591 = !DILocalVariable(name: "arg", arg: 3, scope: !1585, file: !436, line: 775, type: !70)
!1592 = !DILocalVariable(name: "argsize", arg: 4, scope: !1585, file: !436, line: 775, type: !99)
!1593 = !DILocalVariable(name: "o", arg: 5, scope: !1585, file: !436, line: 776, type: !1501)
!1594 = !DILocalVariable(name: "p", scope: !1585, file: !436, line: 778, type: !1501)
!1595 = !DILocalVariable(name: "saved_errno", scope: !1585, file: !436, line: 779, type: !97)
!1596 = !DILocalVariable(name: "r", scope: !1585, file: !436, line: 780, type: !99)
!1597 = !DILocation(line: 0, scope: !1585)
!1598 = !DILocation(line: 778, column: 37, scope: !1585)
!1599 = !DILocation(line: 779, column: 21, scope: !1585)
!1600 = !DILocation(line: 781, column: 43, scope: !1585)
!1601 = !DILocation(line: 781, column: 53, scope: !1585)
!1602 = !DILocation(line: 781, column: 63, scope: !1585)
!1603 = !DILocation(line: 782, column: 43, scope: !1585)
!1604 = !DILocation(line: 782, column: 58, scope: !1585)
!1605 = !DILocation(line: 780, column: 14, scope: !1585)
!1606 = !DILocation(line: 783, column: 9, scope: !1585)
!1607 = !DILocation(line: 784, column: 3, scope: !1585)
!1608 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !436, file: !436, line: 251, type: !1609, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1613)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!99, !246, !99, !70, !99, !462, !97, !1611, !70, !70}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1638, !1640, !1643, !1644, !1645, !1646, !1649, !1650, !1653, !1657, !1658, !1666, !1669, !1670, !1672, !1673, !1674, !1675}
!1614 = !DILocalVariable(name: "buffer", arg: 1, scope: !1608, file: !436, line: 251, type: !246)
!1615 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1608, file: !436, line: 251, type: !99)
!1616 = !DILocalVariable(name: "arg", arg: 3, scope: !1608, file: !436, line: 252, type: !70)
!1617 = !DILocalVariable(name: "argsize", arg: 4, scope: !1608, file: !436, line: 252, type: !99)
!1618 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1608, file: !436, line: 253, type: !462)
!1619 = !DILocalVariable(name: "flags", arg: 6, scope: !1608, file: !436, line: 253, type: !97)
!1620 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1608, file: !436, line: 254, type: !1611)
!1621 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1608, file: !436, line: 255, type: !70)
!1622 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1608, file: !436, line: 256, type: !70)
!1623 = !DILocalVariable(name: "unibyte_locale", scope: !1608, file: !436, line: 258, type: !225)
!1624 = !DILocalVariable(name: "len", scope: !1608, file: !436, line: 260, type: !99)
!1625 = !DILocalVariable(name: "orig_buffersize", scope: !1608, file: !436, line: 261, type: !99)
!1626 = !DILocalVariable(name: "quote_string", scope: !1608, file: !436, line: 262, type: !70)
!1627 = !DILocalVariable(name: "quote_string_len", scope: !1608, file: !436, line: 263, type: !99)
!1628 = !DILocalVariable(name: "backslash_escapes", scope: !1608, file: !436, line: 264, type: !225)
!1629 = !DILocalVariable(name: "elide_outer_quotes", scope: !1608, file: !436, line: 265, type: !225)
!1630 = !DILocalVariable(name: "encountered_single_quote", scope: !1608, file: !436, line: 266, type: !225)
!1631 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1608, file: !436, line: 267, type: !225)
!1632 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1608, file: !436, line: 309, type: !225)
!1633 = !DILocalVariable(name: "lq", scope: !1634, file: !436, line: 361, type: !70)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !436, line: 361, column: 11)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !436, line: 360, column: 13)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !436, line: 333, column: 7)
!1637 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 312, column: 5)
!1638 = !DILocalVariable(name: "i", scope: !1639, file: !436, line: 395, type: !99)
!1639 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 395, column: 3)
!1640 = !DILocalVariable(name: "is_right_quote", scope: !1641, file: !436, line: 397, type: !225)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !436, line: 396, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1639, file: !436, line: 395, column: 3)
!1643 = !DILocalVariable(name: "escaping", scope: !1641, file: !436, line: 398, type: !225)
!1644 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1641, file: !436, line: 399, type: !225)
!1645 = !DILocalVariable(name: "c", scope: !1641, file: !436, line: 417, type: !101)
!1646 = !DILocalVariable(name: "m", scope: !1647, file: !436, line: 598, type: !99)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 596, column: 11)
!1648 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 419, column: 9)
!1649 = !DILocalVariable(name: "printable", scope: !1647, file: !436, line: 600, type: !225)
!1650 = !DILocalVariable(name: "mbs", scope: !1651, file: !436, line: 609, type: !523)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !436, line: 608, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1647, file: !436, line: 602, column: 17)
!1653 = !DILocalVariable(name: "w", scope: !1654, file: !436, line: 618, type: !416)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !436, line: 617, column: 19)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !436, line: 616, column: 17)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !436, line: 616, column: 17)
!1657 = !DILocalVariable(name: "bytes", scope: !1654, file: !436, line: 619, type: !99)
!1658 = !DILocalVariable(name: "j", scope: !1659, file: !436, line: 648, type: !99)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !436, line: 648, column: 29)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !436, line: 647, column: 27)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !436, line: 645, column: 29)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !436, line: 636, column: 23)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !436, line: 628, column: 30)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !436, line: 623, column: 30)
!1665 = distinct !DILexicalBlock(scope: !1654, file: !436, line: 621, column: 25)
!1666 = !DILocalVariable(name: "ilim", scope: !1667, file: !436, line: 674, type: !99)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !436, line: 671, column: 15)
!1668 = distinct !DILexicalBlock(scope: !1647, file: !436, line: 670, column: 17)
!1669 = !DILabel(scope: !1608, name: "process_input", file: !436, line: 308)
!1670 = !DILabel(scope: !1671, name: "c_and_shell_escape", file: !436, line: 502)
!1671 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 478, column: 9)
!1672 = !DILabel(scope: !1671, name: "c_escape", file: !436, line: 507)
!1673 = !DILabel(scope: !1641, name: "store_escape", file: !436, line: 709)
!1674 = !DILabel(scope: !1641, name: "store_c", file: !436, line: 712)
!1675 = !DILabel(scope: !1608, name: "force_outer_quoting_style", file: !436, line: 753)
!1676 = !DILocation(line: 0, scope: !1608)
!1677 = !DILocation(line: 258, column: 25, scope: !1608)
!1678 = !DILocation(line: 258, column: 36, scope: !1608)
!1679 = !DILocation(line: 265, column: 8, scope: !1608)
!1680 = !DILocation(line: 267, column: 3, scope: !1608)
!1681 = !DILocation(line: 261, column: 10, scope: !1608)
!1682 = !DILocation(line: 262, column: 15, scope: !1608)
!1683 = !DILocation(line: 263, column: 10, scope: !1608)
!1684 = !DILocation(line: 264, column: 8, scope: !1608)
!1685 = !DILocation(line: 266, column: 8, scope: !1608)
!1686 = !DILocation(line: 267, column: 8, scope: !1608)
!1687 = !DILocation(line: 308, column: 2, scope: !1608)
!1688 = !DILocation(line: 311, column: 3, scope: !1608)
!1689 = !DILocation(line: 318, column: 11, scope: !1637)
!1690 = !DILocation(line: 318, column: 12, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1637, file: !436, line: 318, column: 11)
!1692 = !DILocation(line: 319, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !436, line: 319, column: 9)
!1694 = distinct !DILexicalBlock(scope: !1691, file: !436, line: 319, column: 9)
!1695 = !DILocation(line: 319, column: 9, scope: !1694)
!1696 = !DILocation(line: 0, scope: !514, inlinedAt: !1697)
!1697 = distinct !DILocation(line: 357, column: 26, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1699, file: !436, line: 335, column: 11)
!1699 = distinct !DILexicalBlock(scope: !1636, file: !436, line: 334, column: 13)
!1700 = !DILocation(line: 199, column: 29, scope: !514, inlinedAt: !1697)
!1701 = !DILocation(line: 201, column: 19, scope: !1702, inlinedAt: !1697)
!1702 = distinct !DILexicalBlock(scope: !514, file: !436, line: 201, column: 7)
!1703 = !DILocation(line: 201, column: 7, scope: !514, inlinedAt: !1697)
!1704 = !DILocation(line: 229, column: 3, scope: !514, inlinedAt: !1697)
!1705 = !DILocation(line: 230, column: 3, scope: !514, inlinedAt: !1697)
!1706 = !DILocation(line: 230, column: 13, scope: !514, inlinedAt: !1697)
!1707 = !DILocalVariable(name: "ps", arg: 1, scope: !1708, file: !1455, line: 1135, type: !1711)
!1708 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !1709, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1712)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{null, !1711}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1712 = !{!1707}
!1713 = !DILocation(line: 0, scope: !1708, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 230, column: 18, scope: !514, inlinedAt: !1697)
!1715 = !DILocalVariable(name: "__dest", arg: 1, scope: !1716, file: !1464, line: 57, type: !91)
!1716 = distinct !DISubprogram(name: "memset", scope: !1464, file: !1464, line: 57, type: !1465, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1717)
!1717 = !{!1715, !1718, !1719}
!1718 = !DILocalVariable(name: "__ch", arg: 2, scope: !1716, file: !1464, line: 57, type: !97)
!1719 = !DILocalVariable(name: "__len", arg: 3, scope: !1716, file: !1464, line: 57, type: !99)
!1720 = !DILocation(line: 0, scope: !1716, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 1137, column: 3, scope: !1708, inlinedAt: !1714)
!1722 = !DILocation(line: 59, column: 10, scope: !1716, inlinedAt: !1721)
!1723 = !DILocation(line: 231, column: 7, scope: !1724, inlinedAt: !1697)
!1724 = distinct !DILexicalBlock(scope: !514, file: !436, line: 231, column: 7)
!1725 = !DILocation(line: 231, column: 40, scope: !1724, inlinedAt: !1697)
!1726 = !DILocation(line: 231, column: 45, scope: !1724, inlinedAt: !1697)
!1727 = !DILocation(line: 235, column: 1, scope: !514, inlinedAt: !1697)
!1728 = !DILocation(line: 0, scope: !514, inlinedAt: !1729)
!1729 = distinct !DILocation(line: 358, column: 27, scope: !1698)
!1730 = !DILocation(line: 199, column: 29, scope: !514, inlinedAt: !1729)
!1731 = !DILocation(line: 201, column: 19, scope: !1702, inlinedAt: !1729)
!1732 = !DILocation(line: 201, column: 7, scope: !514, inlinedAt: !1729)
!1733 = !DILocation(line: 229, column: 3, scope: !514, inlinedAt: !1729)
!1734 = !DILocation(line: 230, column: 3, scope: !514, inlinedAt: !1729)
!1735 = !DILocation(line: 230, column: 13, scope: !514, inlinedAt: !1729)
!1736 = !DILocation(line: 0, scope: !1708, inlinedAt: !1737)
!1737 = distinct !DILocation(line: 230, column: 18, scope: !514, inlinedAt: !1729)
!1738 = !DILocation(line: 0, scope: !1716, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 1137, column: 3, scope: !1708, inlinedAt: !1737)
!1740 = !DILocation(line: 59, column: 10, scope: !1716, inlinedAt: !1739)
!1741 = !DILocation(line: 231, column: 7, scope: !1724, inlinedAt: !1729)
!1742 = !DILocation(line: 231, column: 40, scope: !1724, inlinedAt: !1729)
!1743 = !DILocation(line: 231, column: 45, scope: !1724, inlinedAt: !1729)
!1744 = !DILocation(line: 235, column: 1, scope: !514, inlinedAt: !1729)
!1745 = !DILocation(line: 360, column: 14, scope: !1635)
!1746 = !DILocation(line: 360, column: 13, scope: !1636)
!1747 = !DILocation(line: 0, scope: !1634)
!1748 = !DILocation(line: 361, column: 45, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1634, file: !436, line: 361, column: 11)
!1750 = !DILocation(line: 361, column: 11, scope: !1634)
!1751 = !DILocation(line: 362, column: 13, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !436, line: 362, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !436, line: 362, column: 13)
!1754 = !DILocation(line: 362, column: 13, scope: !1753)
!1755 = !DILocation(line: 361, column: 52, scope: !1749)
!1756 = distinct !{!1756, !1750, !1757, !861}
!1757 = !DILocation(line: 362, column: 13, scope: !1634)
!1758 = !DILocation(line: 260, column: 10, scope: !1608)
!1759 = !DILocation(line: 365, column: 28, scope: !1636)
!1760 = !DILocation(line: 367, column: 7, scope: !1637)
!1761 = !DILocation(line: 370, column: 7, scope: !1637)
!1762 = !DILocation(line: 373, column: 7, scope: !1637)
!1763 = !DILocation(line: 376, column: 12, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1637, file: !436, line: 376, column: 11)
!1765 = !DILocation(line: 376, column: 11, scope: !1637)
!1766 = !DILocation(line: 381, column: 12, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1637, file: !436, line: 381, column: 11)
!1768 = !DILocation(line: 381, column: 11, scope: !1637)
!1769 = !DILocation(line: 382, column: 9, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !436, line: 382, column: 9)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !436, line: 382, column: 9)
!1772 = !DILocation(line: 382, column: 9, scope: !1771)
!1773 = !DILocation(line: 389, column: 7, scope: !1637)
!1774 = !DILocation(line: 392, column: 7, scope: !1637)
!1775 = !DILocation(line: 0, scope: !1639)
!1776 = !DILocation(line: 395, column: 8, scope: !1639)
!1777 = !DILocation(line: 309, column: 8, scope: !1608)
!1778 = !DILocation(line: 395, scope: !1639)
!1779 = !DILocation(line: 395, column: 34, scope: !1642)
!1780 = !DILocation(line: 395, column: 26, scope: !1642)
!1781 = !DILocation(line: 395, column: 48, scope: !1642)
!1782 = !DILocation(line: 395, column: 55, scope: !1642)
!1783 = !DILocation(line: 395, column: 3, scope: !1639)
!1784 = !DILocation(line: 395, column: 67, scope: !1642)
!1785 = !DILocation(line: 0, scope: !1641)
!1786 = !DILocation(line: 402, column: 11, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 401, column: 11)
!1788 = !DILocation(line: 404, column: 17, scope: !1787)
!1789 = !DILocation(line: 405, column: 39, scope: !1787)
!1790 = !DILocation(line: 409, column: 32, scope: !1787)
!1791 = !DILocation(line: 405, column: 19, scope: !1787)
!1792 = !DILocation(line: 405, column: 15, scope: !1787)
!1793 = !DILocation(line: 410, column: 11, scope: !1787)
!1794 = !DILocation(line: 410, column: 25, scope: !1787)
!1795 = !DILocalVariable(name: "__s1", arg: 1, scope: !1796, file: !827, line: 974, type: !963)
!1796 = distinct !DISubprogram(name: "memeq", scope: !827, file: !827, line: 974, type: !1425, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !1797)
!1797 = !{!1795, !1798, !1799}
!1798 = !DILocalVariable(name: "__s2", arg: 2, scope: !1796, file: !827, line: 974, type: !963)
!1799 = !DILocalVariable(name: "__n", arg: 3, scope: !1796, file: !827, line: 974, type: !99)
!1800 = !DILocation(line: 0, scope: !1796, inlinedAt: !1801)
!1801 = distinct !DILocation(line: 410, column: 14, scope: !1787)
!1802 = !DILocation(line: 976, column: 11, scope: !1796, inlinedAt: !1801)
!1803 = !DILocation(line: 976, column: 10, scope: !1796, inlinedAt: !1801)
!1804 = !DILocation(line: 401, column: 11, scope: !1641)
!1805 = !DILocation(line: 417, column: 25, scope: !1641)
!1806 = !DILocation(line: 418, column: 7, scope: !1641)
!1807 = !DILocation(line: 421, column: 15, scope: !1648)
!1808 = !DILocation(line: 423, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !436, line: 423, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !436, line: 422, column: 13)
!1811 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 421, column: 15)
!1812 = !DILocation(line: 423, column: 15, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !436, line: 423, column: 15)
!1814 = !DILocation(line: 423, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !436, line: 423, column: 15)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !436, line: 423, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !436, line: 423, column: 15)
!1818 = !DILocation(line: 423, column: 15, scope: !1816)
!1819 = !DILocation(line: 423, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !436, line: 423, column: 15)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !436, line: 423, column: 15)
!1822 = !DILocation(line: 423, column: 15, scope: !1821)
!1823 = !DILocation(line: 423, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !436, line: 423, column: 15)
!1825 = distinct !DILexicalBlock(scope: !1817, file: !436, line: 423, column: 15)
!1826 = !DILocation(line: 423, column: 15, scope: !1825)
!1827 = !DILocation(line: 423, column: 15, scope: !1817)
!1828 = !DILocation(line: 423, column: 15, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !436, line: 423, column: 15)
!1830 = distinct !DILexicalBlock(scope: !1809, file: !436, line: 423, column: 15)
!1831 = !DILocation(line: 423, column: 15, scope: !1830)
!1832 = !DILocation(line: 431, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1810, file: !436, line: 430, column: 19)
!1834 = !DILocation(line: 431, column: 24, scope: !1833)
!1835 = !DILocation(line: 431, column: 28, scope: !1833)
!1836 = !DILocation(line: 431, column: 38, scope: !1833)
!1837 = !DILocation(line: 431, column: 48, scope: !1833)
!1838 = !DILocation(line: 431, column: 59, scope: !1833)
!1839 = !DILocation(line: 433, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !436, line: 433, column: 19)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !436, line: 433, column: 19)
!1842 = distinct !DILexicalBlock(scope: !1833, file: !436, line: 432, column: 17)
!1843 = !DILocation(line: 433, column: 19, scope: !1841)
!1844 = !DILocation(line: 434, column: 19, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !436, line: 434, column: 19)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !436, line: 434, column: 19)
!1847 = !DILocation(line: 434, column: 19, scope: !1846)
!1848 = !DILocation(line: 435, column: 17, scope: !1842)
!1849 = !DILocation(line: 442, column: 20, scope: !1811)
!1850 = !DILocation(line: 447, column: 11, scope: !1648)
!1851 = !DILocation(line: 450, column: 19, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 448, column: 13)
!1853 = !DILocation(line: 456, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1852, file: !436, line: 455, column: 19)
!1855 = !DILocation(line: 456, column: 24, scope: !1854)
!1856 = !DILocation(line: 456, column: 28, scope: !1854)
!1857 = !DILocation(line: 456, column: 38, scope: !1854)
!1858 = !DILocation(line: 456, column: 47, scope: !1854)
!1859 = !DILocation(line: 456, column: 41, scope: !1854)
!1860 = !DILocation(line: 456, column: 52, scope: !1854)
!1861 = !DILocation(line: 455, column: 19, scope: !1852)
!1862 = !DILocation(line: 457, column: 25, scope: !1854)
!1863 = !DILocation(line: 457, column: 17, scope: !1854)
!1864 = !DILocation(line: 464, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1854, file: !436, line: 458, column: 19)
!1866 = !DILocation(line: 468, column: 21, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !436, line: 468, column: 21)
!1868 = distinct !DILexicalBlock(scope: !1865, file: !436, line: 468, column: 21)
!1869 = !DILocation(line: 468, column: 21, scope: !1868)
!1870 = !DILocation(line: 469, column: 21, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !436, line: 469, column: 21)
!1872 = distinct !DILexicalBlock(scope: !1865, file: !436, line: 469, column: 21)
!1873 = !DILocation(line: 469, column: 21, scope: !1872)
!1874 = !DILocation(line: 470, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !436, line: 470, column: 21)
!1876 = distinct !DILexicalBlock(scope: !1865, file: !436, line: 470, column: 21)
!1877 = !DILocation(line: 470, column: 21, scope: !1876)
!1878 = !DILocation(line: 471, column: 21, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !436, line: 471, column: 21)
!1880 = distinct !DILexicalBlock(scope: !1865, file: !436, line: 471, column: 21)
!1881 = !DILocation(line: 471, column: 21, scope: !1880)
!1882 = !DILocation(line: 472, column: 21, scope: !1865)
!1883 = !DILocation(line: 482, column: 33, scope: !1671)
!1884 = !DILocation(line: 483, column: 33, scope: !1671)
!1885 = !DILocation(line: 485, column: 33, scope: !1671)
!1886 = !DILocation(line: 486, column: 33, scope: !1671)
!1887 = !DILocation(line: 487, column: 33, scope: !1671)
!1888 = !DILocation(line: 490, column: 17, scope: !1671)
!1889 = !DILocation(line: 492, column: 21, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !436, line: 491, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1671, file: !436, line: 490, column: 17)
!1892 = !DILocation(line: 499, column: 35, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1671, file: !436, line: 499, column: 17)
!1894 = !DILocation(line: 499, column: 57, scope: !1893)
!1895 = !DILocation(line: 0, scope: !1671)
!1896 = !DILocation(line: 502, column: 11, scope: !1671)
!1897 = !DILocation(line: 504, column: 17, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1671, file: !436, line: 503, column: 17)
!1899 = !DILocation(line: 507, column: 11, scope: !1671)
!1900 = !DILocation(line: 508, column: 17, scope: !1671)
!1901 = !DILocation(line: 517, column: 15, scope: !1648)
!1902 = !DILocation(line: 517, column: 40, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 517, column: 15)
!1904 = !DILocation(line: 517, column: 47, scope: !1903)
!1905 = !DILocation(line: 517, column: 18, scope: !1903)
!1906 = !DILocation(line: 521, column: 17, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 521, column: 15)
!1908 = !DILocation(line: 521, column: 15, scope: !1648)
!1909 = !DILocation(line: 525, column: 11, scope: !1648)
!1910 = !DILocation(line: 537, column: 15, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 536, column: 15)
!1912 = !DILocation(line: 544, column: 15, scope: !1648)
!1913 = !DILocation(line: 546, column: 19, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !436, line: 545, column: 13)
!1915 = distinct !DILexicalBlock(scope: !1648, file: !436, line: 544, column: 15)
!1916 = !DILocation(line: 549, column: 19, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1914, file: !436, line: 549, column: 19)
!1918 = !DILocation(line: 549, column: 30, scope: !1917)
!1919 = !DILocation(line: 558, column: 15, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1921, file: !436, line: 558, column: 15)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !436, line: 558, column: 15)
!1922 = !DILocation(line: 558, column: 15, scope: !1921)
!1923 = !DILocation(line: 559, column: 15, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !436, line: 559, column: 15)
!1925 = distinct !DILexicalBlock(scope: !1914, file: !436, line: 559, column: 15)
!1926 = !DILocation(line: 559, column: 15, scope: !1925)
!1927 = !DILocation(line: 560, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !436, line: 560, column: 15)
!1929 = distinct !DILexicalBlock(scope: !1914, file: !436, line: 560, column: 15)
!1930 = !DILocation(line: 560, column: 15, scope: !1929)
!1931 = !DILocation(line: 562, column: 13, scope: !1914)
!1932 = !DILocation(line: 602, column: 17, scope: !1647)
!1933 = !DILocation(line: 0, scope: !1647)
!1934 = !DILocation(line: 605, column: 29, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1652, file: !436, line: 603, column: 15)
!1936 = !DILocation(line: 605, column: 27, scope: !1935)
!1937 = !DILocation(line: 668, column: 40, scope: !1647)
!1938 = !DILocation(line: 670, column: 23, scope: !1668)
!1939 = !DILocation(line: 609, column: 17, scope: !1651)
!1940 = !DILocation(line: 609, column: 27, scope: !1651)
!1941 = !DILocation(line: 0, scope: !1708, inlinedAt: !1942)
!1942 = distinct !DILocation(line: 609, column: 32, scope: !1651)
!1943 = !DILocation(line: 0, scope: !1716, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 1137, column: 3, scope: !1708, inlinedAt: !1942)
!1945 = !DILocation(line: 59, column: 10, scope: !1716, inlinedAt: !1944)
!1946 = !DILocation(line: 613, column: 29, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1651, file: !436, line: 613, column: 21)
!1948 = !DILocation(line: 613, column: 21, scope: !1651)
!1949 = !DILocation(line: 614, column: 29, scope: !1947)
!1950 = !DILocation(line: 614, column: 19, scope: !1947)
!1951 = !DILocation(line: 618, column: 21, scope: !1654)
!1952 = !DILocation(line: 620, column: 54, scope: !1654)
!1953 = !DILocation(line: 0, scope: !1654)
!1954 = !DILocation(line: 619, column: 36, scope: !1654)
!1955 = !DILocation(line: 621, column: 25, scope: !1654)
!1956 = !DILocation(line: 631, column: 38, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1663, file: !436, line: 629, column: 23)
!1958 = !DILocation(line: 631, column: 48, scope: !1957)
!1959 = !DILocation(line: 665, column: 19, scope: !1655)
!1960 = !DILocation(line: 666, column: 15, scope: !1652)
!1961 = !DILocation(line: 626, column: 25, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1664, file: !436, line: 624, column: 23)
!1963 = !DILocation(line: 631, column: 51, scope: !1957)
!1964 = !DILocation(line: 631, column: 25, scope: !1957)
!1965 = !DILocation(line: 632, column: 28, scope: !1957)
!1966 = !DILocation(line: 631, column: 34, scope: !1957)
!1967 = distinct !{!1967, !1964, !1965, !861}
!1968 = !DILocation(line: 646, column: 29, scope: !1661)
!1969 = !DILocation(line: 0, scope: !1659)
!1970 = !DILocation(line: 649, column: 49, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1659, file: !436, line: 648, column: 29)
!1972 = !DILocation(line: 649, column: 39, scope: !1971)
!1973 = !DILocation(line: 649, column: 31, scope: !1971)
!1974 = !DILocation(line: 648, column: 60, scope: !1971)
!1975 = !DILocation(line: 648, column: 50, scope: !1971)
!1976 = !DILocation(line: 648, column: 29, scope: !1659)
!1977 = distinct !{!1977, !1976, !1978, !861}
!1978 = !DILocation(line: 654, column: 33, scope: !1659)
!1979 = !DILocation(line: 657, column: 43, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1662, file: !436, line: 657, column: 29)
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
!1993 = !DILocation(line: 657, column: 29, scope: !1662)
!1994 = !DILocation(line: 664, column: 23, scope: !1654)
!1995 = !DILocation(line: 670, column: 19, scope: !1668)
!1996 = !DILocation(line: 670, column: 45, scope: !1668)
!1997 = !DILocation(line: 674, column: 33, scope: !1667)
!1998 = !DILocation(line: 0, scope: !1667)
!1999 = !DILocation(line: 676, column: 17, scope: !1667)
!2000 = !DILocation(line: 398, column: 12, scope: !1641)
!2001 = !DILocation(line: 678, column: 43, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !436, line: 678, column: 25)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !436, line: 677, column: 19)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !436, line: 676, column: 17)
!2005 = distinct !DILexicalBlock(scope: !1667, file: !436, line: 676, column: 17)
!2006 = !DILocation(line: 680, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !436, line: 680, column: 25)
!2008 = distinct !DILexicalBlock(scope: !2002, file: !436, line: 679, column: 23)
!2009 = !DILocation(line: 680, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !436, line: 680, column: 25)
!2011 = !DILocation(line: 680, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !436, line: 680, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !436, line: 680, column: 25)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !436, line: 680, column: 25)
!2015 = !DILocation(line: 680, column: 25, scope: !2013)
!2016 = !DILocation(line: 680, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !436, line: 680, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !436, line: 680, column: 25)
!2019 = !DILocation(line: 680, column: 25, scope: !2018)
!2020 = !DILocation(line: 680, column: 25, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !436, line: 680, column: 25)
!2022 = distinct !DILexicalBlock(scope: !2014, file: !436, line: 680, column: 25)
!2023 = !DILocation(line: 680, column: 25, scope: !2022)
!2024 = !DILocation(line: 680, column: 25, scope: !2014)
!2025 = !DILocation(line: 680, column: 25, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !436, line: 680, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2007, file: !436, line: 680, column: 25)
!2028 = !DILocation(line: 680, column: 25, scope: !2027)
!2029 = !DILocation(line: 681, column: 25, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !436, line: 681, column: 25)
!2031 = distinct !DILexicalBlock(scope: !2008, file: !436, line: 681, column: 25)
!2032 = !DILocation(line: 681, column: 25, scope: !2031)
!2033 = !DILocation(line: 682, column: 25, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !436, line: 682, column: 25)
!2035 = distinct !DILexicalBlock(scope: !2008, file: !436, line: 682, column: 25)
!2036 = !DILocation(line: 682, column: 25, scope: !2035)
!2037 = !DILocation(line: 683, column: 38, scope: !2008)
!2038 = !DILocation(line: 683, column: 33, scope: !2008)
!2039 = !DILocation(line: 684, column: 23, scope: !2008)
!2040 = !DILocation(line: 685, column: 30, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2002, file: !436, line: 685, column: 30)
!2042 = !DILocation(line: 685, column: 30, scope: !2002)
!2043 = !DILocation(line: 687, column: 25, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !436, line: 687, column: 25)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !436, line: 687, column: 25)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !436, line: 686, column: 23)
!2047 = !DILocation(line: 687, column: 25, scope: !2045)
!2048 = !DILocation(line: 689, column: 23, scope: !2046)
!2049 = !DILocation(line: 690, column: 35, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2003, file: !436, line: 690, column: 25)
!2051 = !DILocation(line: 690, column: 30, scope: !2050)
!2052 = !DILocation(line: 690, column: 25, scope: !2003)
!2053 = !DILocation(line: 692, column: 21, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !436, line: 692, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2003, file: !436, line: 692, column: 21)
!2056 = !DILocation(line: 692, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !436, line: 692, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !436, line: 692, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !436, line: 692, column: 21)
!2060 = !DILocation(line: 692, column: 21, scope: !2058)
!2061 = !DILocation(line: 692, column: 21, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !436, line: 692, column: 21)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !436, line: 692, column: 21)
!2064 = !DILocation(line: 692, column: 21, scope: !2063)
!2065 = !DILocation(line: 692, column: 21, scope: !2059)
!2066 = !DILocation(line: 0, scope: !2003)
!2067 = !DILocation(line: 693, column: 21, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !436, line: 693, column: 21)
!2069 = distinct !DILexicalBlock(scope: !2003, file: !436, line: 693, column: 21)
!2070 = !DILocation(line: 693, column: 21, scope: !2069)
!2071 = !DILocation(line: 694, column: 25, scope: !2003)
!2072 = !DILocation(line: 676, column: 17, scope: !2004)
!2073 = distinct !{!2073, !2074, !2075}
!2074 = !DILocation(line: 676, column: 17, scope: !2005)
!2075 = !DILocation(line: 695, column: 19, scope: !2005)
!2076 = !DILocation(line: 409, column: 30, scope: !1787)
!2077 = !DILocation(line: 702, column: 34, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 702, column: 11)
!2079 = !DILocation(line: 704, column: 14, scope: !2078)
!2080 = !DILocation(line: 705, column: 14, scope: !2078)
!2081 = !DILocation(line: 705, column: 35, scope: !2078)
!2082 = !DILocation(line: 705, column: 17, scope: !2078)
!2083 = !DILocation(line: 705, column: 47, scope: !2078)
!2084 = !DILocation(line: 705, column: 65, scope: !2078)
!2085 = !DILocation(line: 706, column: 11, scope: !2078)
!2086 = !DILocation(line: 702, column: 11, scope: !1641)
!2087 = !DILocation(line: 395, column: 15, scope: !1639)
!2088 = !DILocation(line: 709, column: 5, scope: !1641)
!2089 = !DILocation(line: 710, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 710, column: 7)
!2091 = !DILocation(line: 710, column: 7, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2090, file: !436, line: 710, column: 7)
!2093 = !DILocation(line: 710, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !436, line: 710, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !436, line: 710, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !436, line: 710, column: 7)
!2097 = !DILocation(line: 710, column: 7, scope: !2095)
!2098 = !DILocation(line: 710, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !436, line: 710, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2096, file: !436, line: 710, column: 7)
!2101 = !DILocation(line: 710, column: 7, scope: !2100)
!2102 = !DILocation(line: 710, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !436, line: 710, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2096, file: !436, line: 710, column: 7)
!2105 = !DILocation(line: 710, column: 7, scope: !2104)
!2106 = !DILocation(line: 710, column: 7, scope: !2096)
!2107 = !DILocation(line: 710, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !436, line: 710, column: 7)
!2109 = distinct !DILexicalBlock(scope: !2090, file: !436, line: 710, column: 7)
!2110 = !DILocation(line: 710, column: 7, scope: !2109)
!2111 = !DILocation(line: 712, column: 5, scope: !1641)
!2112 = !DILocation(line: 713, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !436, line: 713, column: 7)
!2114 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 713, column: 7)
!2115 = !DILocation(line: 417, column: 21, scope: !1641)
!2116 = !DILocation(line: 713, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !436, line: 713, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !436, line: 713, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2113, file: !436, line: 713, column: 7)
!2120 = !DILocation(line: 713, column: 7, scope: !2118)
!2121 = !DILocation(line: 713, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !436, line: 713, column: 7)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !436, line: 713, column: 7)
!2124 = !DILocation(line: 713, column: 7, scope: !2123)
!2125 = !DILocation(line: 713, column: 7, scope: !2119)
!2126 = !DILocation(line: 714, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !436, line: 714, column: 7)
!2128 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 714, column: 7)
!2129 = !DILocation(line: 714, column: 7, scope: !2128)
!2130 = !DILocation(line: 716, column: 13, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1641, file: !436, line: 716, column: 11)
!2132 = !DILocation(line: 716, column: 11, scope: !1641)
!2133 = !DILocation(line: 718, column: 5, scope: !1642)
!2134 = !DILocation(line: 395, column: 82, scope: !1642)
!2135 = !DILocation(line: 395, column: 3, scope: !1642)
!2136 = distinct !{!2136, !1783, !2137, !861}
!2137 = !DILocation(line: 718, column: 5, scope: !1639)
!2138 = !DILocation(line: 720, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 720, column: 7)
!2140 = !DILocation(line: 720, column: 16, scope: !2139)
!2141 = !DILocation(line: 728, column: 51, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 728, column: 7)
!2143 = !DILocation(line: 731, column: 11, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !436, line: 731, column: 11)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !436, line: 730, column: 5)
!2146 = !DILocation(line: 731, column: 11, scope: !2145)
!2147 = !DILocation(line: 732, column: 16, scope: !2144)
!2148 = !DILocation(line: 732, column: 9, scope: !2144)
!2149 = !DILocation(line: 736, column: 18, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2144, file: !436, line: 736, column: 16)
!2151 = !DILocation(line: 736, column: 29, scope: !2150)
!2152 = !DILocation(line: 745, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 745, column: 7)
!2154 = !DILocation(line: 745, column: 20, scope: !2153)
!2155 = !DILocation(line: 746, column: 12, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2157, file: !436, line: 746, column: 5)
!2157 = distinct !DILexicalBlock(scope: !2153, file: !436, line: 746, column: 5)
!2158 = !DILocation(line: 746, column: 5, scope: !2157)
!2159 = !DILocation(line: 747, column: 7, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !436, line: 747, column: 7)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !436, line: 747, column: 7)
!2162 = !DILocation(line: 747, column: 7, scope: !2161)
!2163 = !DILocation(line: 746, column: 39, scope: !2156)
!2164 = distinct !{!2164, !2158, !2165, !861}
!2165 = !DILocation(line: 747, column: 7, scope: !2157)
!2166 = !DILocation(line: 749, column: 11, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 749, column: 7)
!2168 = !DILocation(line: 749, column: 7, scope: !1608)
!2169 = !DILocation(line: 750, column: 5, scope: !2167)
!2170 = !DILocation(line: 750, column: 17, scope: !2167)
!2171 = !DILocation(line: 753, column: 2, scope: !1608)
!2172 = !DILocation(line: 756, column: 51, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1608, file: !436, line: 756, column: 7)
!2174 = !DILocation(line: 756, column: 21, scope: !2173)
!2175 = !DILocation(line: 760, column: 42, scope: !1608)
!2176 = !DILocation(line: 758, column: 10, scope: !1608)
!2177 = !DILocation(line: 758, column: 3, scope: !1608)
!2178 = !DILocation(line: 762, column: 1, scope: !1608)
!2179 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !939, file: !939, line: 98, type: !2180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!99}
!2182 = !DISubprogram(name: "strlen", scope: !935, file: !935, line: 407, type: !2183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!96, !70}
!2185 = !DISubprogram(name: "iswprint", scope: !2186, file: !2186, line: 120, type: !1984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2187 = distinct !DISubprogram(name: "quotearg_alloc", scope: !436, file: !436, line: 788, type: !2188, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!246, !70, !99, !1501}
!2190 = !{!2191, !2192, !2193}
!2191 = !DILocalVariable(name: "arg", arg: 1, scope: !2187, file: !436, line: 788, type: !70)
!2192 = !DILocalVariable(name: "argsize", arg: 2, scope: !2187, file: !436, line: 788, type: !99)
!2193 = !DILocalVariable(name: "o", arg: 3, scope: !2187, file: !436, line: 789, type: !1501)
!2194 = !DILocation(line: 0, scope: !2187)
!2195 = !DILocalVariable(name: "arg", arg: 1, scope: !2196, file: !436, line: 801, type: !70)
!2196 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !436, file: !436, line: 801, type: !2197, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!246, !70, !99, !687, !1501}
!2199 = !{!2195, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2200 = !DILocalVariable(name: "argsize", arg: 2, scope: !2196, file: !436, line: 801, type: !99)
!2201 = !DILocalVariable(name: "size", arg: 3, scope: !2196, file: !436, line: 801, type: !687)
!2202 = !DILocalVariable(name: "o", arg: 4, scope: !2196, file: !436, line: 802, type: !1501)
!2203 = !DILocalVariable(name: "p", scope: !2196, file: !436, line: 804, type: !1501)
!2204 = !DILocalVariable(name: "saved_errno", scope: !2196, file: !436, line: 805, type: !97)
!2205 = !DILocalVariable(name: "flags", scope: !2196, file: !436, line: 807, type: !97)
!2206 = !DILocalVariable(name: "bufsize", scope: !2196, file: !436, line: 808, type: !99)
!2207 = !DILocalVariable(name: "buf", scope: !2196, file: !436, line: 812, type: !246)
!2208 = !DILocation(line: 0, scope: !2196, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 791, column: 10, scope: !2187)
!2210 = !DILocation(line: 804, column: 37, scope: !2196, inlinedAt: !2209)
!2211 = !DILocation(line: 805, column: 21, scope: !2196, inlinedAt: !2209)
!2212 = !DILocation(line: 807, column: 18, scope: !2196, inlinedAt: !2209)
!2213 = !DILocation(line: 807, column: 24, scope: !2196, inlinedAt: !2209)
!2214 = !DILocation(line: 808, column: 72, scope: !2196, inlinedAt: !2209)
!2215 = !DILocation(line: 809, column: 56, scope: !2196, inlinedAt: !2209)
!2216 = !DILocation(line: 810, column: 49, scope: !2196, inlinedAt: !2209)
!2217 = !DILocation(line: 811, column: 49, scope: !2196, inlinedAt: !2209)
!2218 = !DILocation(line: 808, column: 20, scope: !2196, inlinedAt: !2209)
!2219 = !DILocation(line: 811, column: 62, scope: !2196, inlinedAt: !2209)
!2220 = !DILocation(line: 812, column: 15, scope: !2196, inlinedAt: !2209)
!2221 = !DILocation(line: 813, column: 60, scope: !2196, inlinedAt: !2209)
!2222 = !DILocation(line: 815, column: 32, scope: !2196, inlinedAt: !2209)
!2223 = !DILocation(line: 815, column: 47, scope: !2196, inlinedAt: !2209)
!2224 = !DILocation(line: 813, column: 3, scope: !2196, inlinedAt: !2209)
!2225 = !DILocation(line: 816, column: 9, scope: !2196, inlinedAt: !2209)
!2226 = !DILocation(line: 791, column: 3, scope: !2187)
!2227 = !DILocation(line: 0, scope: !2196)
!2228 = !DILocation(line: 804, column: 37, scope: !2196)
!2229 = !DILocation(line: 805, column: 21, scope: !2196)
!2230 = !DILocation(line: 807, column: 18, scope: !2196)
!2231 = !DILocation(line: 807, column: 27, scope: !2196)
!2232 = !DILocation(line: 807, column: 24, scope: !2196)
!2233 = !DILocation(line: 808, column: 72, scope: !2196)
!2234 = !DILocation(line: 809, column: 56, scope: !2196)
!2235 = !DILocation(line: 810, column: 49, scope: !2196)
!2236 = !DILocation(line: 811, column: 49, scope: !2196)
!2237 = !DILocation(line: 808, column: 20, scope: !2196)
!2238 = !DILocation(line: 811, column: 62, scope: !2196)
!2239 = !DILocation(line: 812, column: 15, scope: !2196)
!2240 = !DILocation(line: 813, column: 60, scope: !2196)
!2241 = !DILocation(line: 815, column: 32, scope: !2196)
!2242 = !DILocation(line: 815, column: 47, scope: !2196)
!2243 = !DILocation(line: 813, column: 3, scope: !2196)
!2244 = !DILocation(line: 816, column: 9, scope: !2196)
!2245 = !DILocation(line: 817, column: 7, scope: !2196)
!2246 = !DILocation(line: 818, column: 11, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2196, file: !436, line: 817, column: 7)
!2248 = !{!1221, !1221, i64 0}
!2249 = !DILocation(line: 818, column: 5, scope: !2247)
!2250 = !DILocation(line: 819, column: 3, scope: !2196)
!2251 = distinct !DISubprogram(name: "quotearg_free", scope: !436, file: !436, line: 837, type: !368, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2252)
!2252 = !{!2253, !2254}
!2253 = !DILocalVariable(name: "sv", scope: !2251, file: !436, line: 839, type: !537)
!2254 = !DILocalVariable(name: "i", scope: !2255, file: !436, line: 840, type: !97)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !436, line: 840, column: 3)
!2256 = !DILocation(line: 839, column: 24, scope: !2251)
!2257 = !DILocation(line: 0, scope: !2251)
!2258 = !DILocation(line: 0, scope: !2255)
!2259 = !DILocation(line: 840, column: 21, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !436, line: 840, column: 3)
!2261 = !DILocation(line: 840, column: 3, scope: !2255)
!2262 = !DILocation(line: 842, column: 13, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2251, file: !436, line: 842, column: 7)
!2264 = !{!2265, !754, i64 8}
!2265 = !{!"slotvec", !1221, i64 0, !754, i64 8}
!2266 = !DILocation(line: 842, column: 17, scope: !2263)
!2267 = !DILocation(line: 842, column: 7, scope: !2251)
!2268 = !DILocation(line: 841, column: 17, scope: !2260)
!2269 = !DILocation(line: 841, column: 5, scope: !2260)
!2270 = !DILocation(line: 840, column: 32, scope: !2260)
!2271 = distinct !{!2271, !2261, !2272, !861}
!2272 = !DILocation(line: 841, column: 20, scope: !2255)
!2273 = !DILocation(line: 844, column: 7, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2263, file: !436, line: 843, column: 5)
!2275 = !DILocation(line: 845, column: 21, scope: !2274)
!2276 = !{!2265, !1221, i64 0}
!2277 = !DILocation(line: 846, column: 20, scope: !2274)
!2278 = !DILocation(line: 847, column: 5, scope: !2274)
!2279 = !DILocation(line: 848, column: 10, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2251, file: !436, line: 848, column: 7)
!2281 = !DILocation(line: 848, column: 7, scope: !2251)
!2282 = !DILocation(line: 850, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !436, line: 849, column: 5)
!2284 = !DILocation(line: 851, column: 15, scope: !2283)
!2285 = !DILocation(line: 852, column: 5, scope: !2283)
!2286 = !DILocation(line: 853, column: 10, scope: !2251)
!2287 = !DILocation(line: 854, column: 1, scope: !2251)
!2288 = !DISubprogram(name: "free", scope: !1455, file: !1455, line: 786, type: !2289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{null, !91}
!2291 = distinct !DISubprogram(name: "quotearg_n", scope: !436, file: !436, line: 919, type: !932, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2292)
!2292 = !{!2293, !2294}
!2293 = !DILocalVariable(name: "n", arg: 1, scope: !2291, file: !436, line: 919, type: !97)
!2294 = !DILocalVariable(name: "arg", arg: 2, scope: !2291, file: !436, line: 919, type: !70)
!2295 = !DILocation(line: 0, scope: !2291)
!2296 = !DILocation(line: 921, column: 10, scope: !2291)
!2297 = !DILocation(line: 921, column: 3, scope: !2291)
!2298 = distinct !DISubprogram(name: "quotearg_n_options", scope: !436, file: !436, line: 866, type: !2299, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!246, !97, !70, !99, !1501}
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2312, !2313, !2315, !2316, !2317}
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2298, file: !436, line: 866, type: !97)
!2303 = !DILocalVariable(name: "arg", arg: 2, scope: !2298, file: !436, line: 866, type: !70)
!2304 = !DILocalVariable(name: "argsize", arg: 3, scope: !2298, file: !436, line: 866, type: !99)
!2305 = !DILocalVariable(name: "options", arg: 4, scope: !2298, file: !436, line: 867, type: !1501)
!2306 = !DILocalVariable(name: "saved_errno", scope: !2298, file: !436, line: 869, type: !97)
!2307 = !DILocalVariable(name: "sv", scope: !2298, file: !436, line: 871, type: !537)
!2308 = !DILocalVariable(name: "nslots_max", scope: !2298, file: !436, line: 873, type: !97)
!2309 = !DILocalVariable(name: "preallocated", scope: !2310, file: !436, line: 879, type: !225)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !436, line: 878, column: 5)
!2311 = distinct !DILexicalBlock(scope: !2298, file: !436, line: 877, column: 7)
!2312 = !DILocalVariable(name: "new_nslots", scope: !2310, file: !436, line: 880, type: !700)
!2313 = !DILocalVariable(name: "size", scope: !2314, file: !436, line: 891, type: !99)
!2314 = distinct !DILexicalBlock(scope: !2298, file: !436, line: 890, column: 3)
!2315 = !DILocalVariable(name: "val", scope: !2314, file: !436, line: 892, type: !246)
!2316 = !DILocalVariable(name: "flags", scope: !2314, file: !436, line: 894, type: !97)
!2317 = !DILocalVariable(name: "qsize", scope: !2314, file: !436, line: 895, type: !99)
!2318 = !DILocation(line: 0, scope: !2298)
!2319 = !DILocation(line: 869, column: 21, scope: !2298)
!2320 = !DILocation(line: 871, column: 24, scope: !2298)
!2321 = !DILocation(line: 874, column: 17, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2298, file: !436, line: 874, column: 7)
!2323 = !DILocation(line: 875, column: 5, scope: !2322)
!2324 = !DILocation(line: 877, column: 7, scope: !2311)
!2325 = !DILocation(line: 877, column: 14, scope: !2311)
!2326 = !DILocation(line: 877, column: 7, scope: !2298)
!2327 = !DILocation(line: 879, column: 31, scope: !2310)
!2328 = !DILocation(line: 0, scope: !2310)
!2329 = !DILocation(line: 880, column: 7, scope: !2310)
!2330 = !DILocation(line: 880, column: 26, scope: !2310)
!2331 = !DILocation(line: 880, column: 13, scope: !2310)
!2332 = !DILocation(line: 882, column: 31, scope: !2310)
!2333 = !DILocation(line: 883, column: 33, scope: !2310)
!2334 = !DILocation(line: 883, column: 42, scope: !2310)
!2335 = !DILocation(line: 883, column: 31, scope: !2310)
!2336 = !DILocation(line: 882, column: 22, scope: !2310)
!2337 = !DILocation(line: 882, column: 15, scope: !2310)
!2338 = !DILocation(line: 884, column: 11, scope: !2310)
!2339 = !DILocation(line: 885, column: 15, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2310, file: !436, line: 884, column: 11)
!2341 = !{i64 0, i64 8, !2248, i64 8, i64 8, !753}
!2342 = !DILocation(line: 885, column: 9, scope: !2340)
!2343 = !DILocation(line: 886, column: 20, scope: !2310)
!2344 = !DILocation(line: 886, column: 18, scope: !2310)
!2345 = !DILocation(line: 886, column: 32, scope: !2310)
!2346 = !DILocation(line: 886, column: 43, scope: !2310)
!2347 = !DILocation(line: 886, column: 53, scope: !2310)
!2348 = !DILocation(line: 0, scope: !1716, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 886, column: 7, scope: !2310)
!2350 = !DILocation(line: 59, column: 10, scope: !1716, inlinedAt: !2349)
!2351 = !DILocation(line: 887, column: 16, scope: !2310)
!2352 = !DILocation(line: 887, column: 14, scope: !2310)
!2353 = !DILocation(line: 888, column: 5, scope: !2311)
!2354 = !DILocation(line: 888, column: 5, scope: !2310)
!2355 = !DILocation(line: 891, column: 19, scope: !2314)
!2356 = !DILocation(line: 891, column: 25, scope: !2314)
!2357 = !DILocation(line: 0, scope: !2314)
!2358 = !DILocation(line: 892, column: 23, scope: !2314)
!2359 = !DILocation(line: 894, column: 26, scope: !2314)
!2360 = !DILocation(line: 894, column: 32, scope: !2314)
!2361 = !DILocation(line: 896, column: 55, scope: !2314)
!2362 = !DILocation(line: 897, column: 55, scope: !2314)
!2363 = !DILocation(line: 898, column: 55, scope: !2314)
!2364 = !DILocation(line: 899, column: 55, scope: !2314)
!2365 = !DILocation(line: 895, column: 20, scope: !2314)
!2366 = !DILocation(line: 901, column: 14, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2314, file: !436, line: 901, column: 9)
!2368 = !DILocation(line: 901, column: 9, scope: !2314)
!2369 = !DILocation(line: 903, column: 35, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2367, file: !436, line: 902, column: 7)
!2371 = !DILocation(line: 903, column: 20, scope: !2370)
!2372 = !DILocation(line: 904, column: 17, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2370, file: !436, line: 904, column: 13)
!2374 = !DILocation(line: 904, column: 13, scope: !2370)
!2375 = !DILocation(line: 905, column: 11, scope: !2373)
!2376 = !DILocation(line: 906, column: 27, scope: !2370)
!2377 = !DILocation(line: 906, column: 19, scope: !2370)
!2378 = !DILocation(line: 907, column: 69, scope: !2370)
!2379 = !DILocation(line: 909, column: 44, scope: !2370)
!2380 = !DILocation(line: 910, column: 44, scope: !2370)
!2381 = !DILocation(line: 907, column: 9, scope: !2370)
!2382 = !DILocation(line: 911, column: 7, scope: !2370)
!2383 = !DILocation(line: 913, column: 11, scope: !2314)
!2384 = !DILocation(line: 914, column: 5, scope: !2314)
!2385 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !436, file: !436, line: 925, type: !2386, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!246, !97, !70, !99}
!2388 = !{!2389, !2390, !2391}
!2389 = !DILocalVariable(name: "n", arg: 1, scope: !2385, file: !436, line: 925, type: !97)
!2390 = !DILocalVariable(name: "arg", arg: 2, scope: !2385, file: !436, line: 925, type: !70)
!2391 = !DILocalVariable(name: "argsize", arg: 3, scope: !2385, file: !436, line: 925, type: !99)
!2392 = !DILocation(line: 0, scope: !2385)
!2393 = !DILocation(line: 927, column: 10, scope: !2385)
!2394 = !DILocation(line: 927, column: 3, scope: !2385)
!2395 = distinct !DISubprogram(name: "quotearg", scope: !436, file: !436, line: 931, type: !941, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2396)
!2396 = !{!2397}
!2397 = !DILocalVariable(name: "arg", arg: 1, scope: !2395, file: !436, line: 931, type: !70)
!2398 = !DILocation(line: 0, scope: !2395)
!2399 = !DILocation(line: 0, scope: !2291, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 933, column: 10, scope: !2395)
!2401 = !DILocation(line: 921, column: 10, scope: !2291, inlinedAt: !2400)
!2402 = !DILocation(line: 933, column: 3, scope: !2395)
!2403 = distinct !DISubprogram(name: "quotearg_mem", scope: !436, file: !436, line: 937, type: !2404, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!246, !70, !99}
!2406 = !{!2407, !2408}
!2407 = !DILocalVariable(name: "arg", arg: 1, scope: !2403, file: !436, line: 937, type: !70)
!2408 = !DILocalVariable(name: "argsize", arg: 2, scope: !2403, file: !436, line: 937, type: !99)
!2409 = !DILocation(line: 0, scope: !2403)
!2410 = !DILocation(line: 0, scope: !2385, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 939, column: 10, scope: !2403)
!2412 = !DILocation(line: 927, column: 10, scope: !2385, inlinedAt: !2411)
!2413 = !DILocation(line: 939, column: 3, scope: !2403)
!2414 = distinct !DISubprogram(name: "quotearg_n_style", scope: !436, file: !436, line: 943, type: !2415, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!246, !97, !462, !70}
!2417 = !{!2418, !2419, !2420, !2421}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !436, line: 943, type: !97)
!2419 = !DILocalVariable(name: "s", arg: 2, scope: !2414, file: !436, line: 943, type: !462)
!2420 = !DILocalVariable(name: "arg", arg: 3, scope: !2414, file: !436, line: 943, type: !70)
!2421 = !DILocalVariable(name: "o", scope: !2414, file: !436, line: 945, type: !1502)
!2422 = !DILocation(line: 0, scope: !2414)
!2423 = !DILocation(line: 945, column: 3, scope: !2414)
!2424 = !DILocation(line: 945, column: 32, scope: !2414)
!2425 = !{!2426}
!2426 = distinct !{!2426, !2427, !"quoting_options_from_style: argument 0"}
!2427 = distinct !{!2427, !"quoting_options_from_style"}
!2428 = !DILocation(line: 945, column: 36, scope: !2414)
!2429 = !DILocalVariable(name: "style", arg: 1, scope: !2430, file: !436, line: 183, type: !462)
!2430 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !436, file: !436, line: 183, type: !2431, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2433)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!489, !462}
!2433 = !{!2429, !2434}
!2434 = !DILocalVariable(name: "o", scope: !2430, file: !436, line: 185, type: !489)
!2435 = !DILocation(line: 0, scope: !2430, inlinedAt: !2436)
!2436 = distinct !DILocation(line: 945, column: 36, scope: !2414)
!2437 = !DILocation(line: 185, column: 26, scope: !2430, inlinedAt: !2436)
!2438 = !DILocation(line: 186, column: 13, scope: !2439, inlinedAt: !2436)
!2439 = distinct !DILexicalBlock(scope: !2430, file: !436, line: 186, column: 7)
!2440 = !DILocation(line: 186, column: 7, scope: !2430, inlinedAt: !2436)
!2441 = !DILocation(line: 187, column: 5, scope: !2439, inlinedAt: !2436)
!2442 = !DILocation(line: 188, column: 11, scope: !2430, inlinedAt: !2436)
!2443 = !DILocation(line: 946, column: 10, scope: !2414)
!2444 = !DILocation(line: 947, column: 1, scope: !2414)
!2445 = !DILocation(line: 946, column: 3, scope: !2414)
!2446 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !436, file: !436, line: 950, type: !2447, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!246, !97, !462, !70, !99}
!2449 = !{!2450, !2451, !2452, !2453, !2454}
!2450 = !DILocalVariable(name: "n", arg: 1, scope: !2446, file: !436, line: 950, type: !97)
!2451 = !DILocalVariable(name: "s", arg: 2, scope: !2446, file: !436, line: 950, type: !462)
!2452 = !DILocalVariable(name: "arg", arg: 3, scope: !2446, file: !436, line: 951, type: !70)
!2453 = !DILocalVariable(name: "argsize", arg: 4, scope: !2446, file: !436, line: 951, type: !99)
!2454 = !DILocalVariable(name: "o", scope: !2446, file: !436, line: 953, type: !1502)
!2455 = !DILocation(line: 0, scope: !2446)
!2456 = !DILocation(line: 953, column: 3, scope: !2446)
!2457 = !DILocation(line: 953, column: 32, scope: !2446)
!2458 = !{!2459}
!2459 = distinct !{!2459, !2460, !"quoting_options_from_style: argument 0"}
!2460 = distinct !{!2460, !"quoting_options_from_style"}
!2461 = !DILocation(line: 953, column: 36, scope: !2446)
!2462 = !DILocation(line: 0, scope: !2430, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 953, column: 36, scope: !2446)
!2464 = !DILocation(line: 185, column: 26, scope: !2430, inlinedAt: !2463)
!2465 = !DILocation(line: 186, column: 13, scope: !2439, inlinedAt: !2463)
!2466 = !DILocation(line: 186, column: 7, scope: !2430, inlinedAt: !2463)
!2467 = !DILocation(line: 187, column: 5, scope: !2439, inlinedAt: !2463)
!2468 = !DILocation(line: 188, column: 11, scope: !2430, inlinedAt: !2463)
!2469 = !DILocation(line: 954, column: 10, scope: !2446)
!2470 = !DILocation(line: 955, column: 1, scope: !2446)
!2471 = !DILocation(line: 954, column: 3, scope: !2446)
!2472 = distinct !DISubprogram(name: "quotearg_style", scope: !436, file: !436, line: 958, type: !2473, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!246, !462, !70}
!2475 = !{!2476, !2477}
!2476 = !DILocalVariable(name: "s", arg: 1, scope: !2472, file: !436, line: 958, type: !462)
!2477 = !DILocalVariable(name: "arg", arg: 2, scope: !2472, file: !436, line: 958, type: !70)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 0, scope: !2414, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 960, column: 10, scope: !2472)
!2481 = !DILocation(line: 945, column: 3, scope: !2414, inlinedAt: !2480)
!2482 = !DILocation(line: 945, column: 32, scope: !2414, inlinedAt: !2480)
!2483 = !{!2484}
!2484 = distinct !{!2484, !2485, !"quoting_options_from_style: argument 0"}
!2485 = distinct !{!2485, !"quoting_options_from_style"}
!2486 = !DILocation(line: 945, column: 36, scope: !2414, inlinedAt: !2480)
!2487 = !DILocation(line: 0, scope: !2430, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 945, column: 36, scope: !2414, inlinedAt: !2480)
!2489 = !DILocation(line: 185, column: 26, scope: !2430, inlinedAt: !2488)
!2490 = !DILocation(line: 186, column: 13, scope: !2439, inlinedAt: !2488)
!2491 = !DILocation(line: 186, column: 7, scope: !2430, inlinedAt: !2488)
!2492 = !DILocation(line: 187, column: 5, scope: !2439, inlinedAt: !2488)
!2493 = !DILocation(line: 188, column: 11, scope: !2430, inlinedAt: !2488)
!2494 = !DILocation(line: 946, column: 10, scope: !2414, inlinedAt: !2480)
!2495 = !DILocation(line: 947, column: 1, scope: !2414, inlinedAt: !2480)
!2496 = !DILocation(line: 960, column: 3, scope: !2472)
!2497 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !436, file: !436, line: 964, type: !2498, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!246, !462, !70, !99}
!2500 = !{!2501, !2502, !2503}
!2501 = !DILocalVariable(name: "s", arg: 1, scope: !2497, file: !436, line: 964, type: !462)
!2502 = !DILocalVariable(name: "arg", arg: 2, scope: !2497, file: !436, line: 964, type: !70)
!2503 = !DILocalVariable(name: "argsize", arg: 3, scope: !2497, file: !436, line: 964, type: !99)
!2504 = !DILocation(line: 0, scope: !2497)
!2505 = !DILocation(line: 0, scope: !2446, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 966, column: 10, scope: !2497)
!2507 = !DILocation(line: 953, column: 3, scope: !2446, inlinedAt: !2506)
!2508 = !DILocation(line: 953, column: 32, scope: !2446, inlinedAt: !2506)
!2509 = !{!2510}
!2510 = distinct !{!2510, !2511, !"quoting_options_from_style: argument 0"}
!2511 = distinct !{!2511, !"quoting_options_from_style"}
!2512 = !DILocation(line: 953, column: 36, scope: !2446, inlinedAt: !2506)
!2513 = !DILocation(line: 0, scope: !2430, inlinedAt: !2514)
!2514 = distinct !DILocation(line: 953, column: 36, scope: !2446, inlinedAt: !2506)
!2515 = !DILocation(line: 185, column: 26, scope: !2430, inlinedAt: !2514)
!2516 = !DILocation(line: 186, column: 13, scope: !2439, inlinedAt: !2514)
!2517 = !DILocation(line: 186, column: 7, scope: !2430, inlinedAt: !2514)
!2518 = !DILocation(line: 187, column: 5, scope: !2439, inlinedAt: !2514)
!2519 = !DILocation(line: 188, column: 11, scope: !2430, inlinedAt: !2514)
!2520 = !DILocation(line: 954, column: 10, scope: !2446, inlinedAt: !2506)
!2521 = !DILocation(line: 955, column: 1, scope: !2446, inlinedAt: !2506)
!2522 = !DILocation(line: 966, column: 3, scope: !2497)
!2523 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !436, file: !436, line: 970, type: !2524, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!246, !70, !99, !4}
!2526 = !{!2527, !2528, !2529, !2530}
!2527 = !DILocalVariable(name: "arg", arg: 1, scope: !2523, file: !436, line: 970, type: !70)
!2528 = !DILocalVariable(name: "argsize", arg: 2, scope: !2523, file: !436, line: 970, type: !99)
!2529 = !DILocalVariable(name: "ch", arg: 3, scope: !2523, file: !436, line: 970, type: !4)
!2530 = !DILocalVariable(name: "options", scope: !2523, file: !436, line: 972, type: !489)
!2531 = !DILocation(line: 0, scope: !2523)
!2532 = !DILocation(line: 972, column: 3, scope: !2523)
!2533 = !DILocation(line: 972, column: 26, scope: !2523)
!2534 = !DILocation(line: 973, column: 13, scope: !2523)
!2535 = !{i64 0, i64 4, !823, i64 4, i64 4, !814, i64 8, i64 32, !823, i64 40, i64 8, !753, i64 48, i64 8, !753}
!2536 = !DILocation(line: 0, scope: !1521, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 974, column: 3, scope: !2523)
!2538 = !DILocation(line: 147, column: 41, scope: !1521, inlinedAt: !2537)
!2539 = !DILocation(line: 147, column: 62, scope: !1521, inlinedAt: !2537)
!2540 = !DILocation(line: 147, column: 57, scope: !1521, inlinedAt: !2537)
!2541 = !DILocation(line: 148, column: 15, scope: !1521, inlinedAt: !2537)
!2542 = !DILocation(line: 149, column: 21, scope: !1521, inlinedAt: !2537)
!2543 = !DILocation(line: 149, column: 24, scope: !1521, inlinedAt: !2537)
!2544 = !DILocation(line: 150, column: 19, scope: !1521, inlinedAt: !2537)
!2545 = !DILocation(line: 150, column: 24, scope: !1521, inlinedAt: !2537)
!2546 = !DILocation(line: 150, column: 6, scope: !1521, inlinedAt: !2537)
!2547 = !DILocation(line: 975, column: 10, scope: !2523)
!2548 = !DILocation(line: 976, column: 1, scope: !2523)
!2549 = !DILocation(line: 975, column: 3, scope: !2523)
!2550 = distinct !DISubprogram(name: "quotearg_char", scope: !436, file: !436, line: 979, type: !2551, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!246, !70, !4}
!2553 = !{!2554, !2555}
!2554 = !DILocalVariable(name: "arg", arg: 1, scope: !2550, file: !436, line: 979, type: !70)
!2555 = !DILocalVariable(name: "ch", arg: 2, scope: !2550, file: !436, line: 979, type: !4)
!2556 = !DILocation(line: 0, scope: !2550)
!2557 = !DILocation(line: 0, scope: !2523, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 981, column: 10, scope: !2550)
!2559 = !DILocation(line: 972, column: 3, scope: !2523, inlinedAt: !2558)
!2560 = !DILocation(line: 972, column: 26, scope: !2523, inlinedAt: !2558)
!2561 = !DILocation(line: 973, column: 13, scope: !2523, inlinedAt: !2558)
!2562 = !DILocation(line: 0, scope: !1521, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 974, column: 3, scope: !2523, inlinedAt: !2558)
!2564 = !DILocation(line: 147, column: 41, scope: !1521, inlinedAt: !2563)
!2565 = !DILocation(line: 147, column: 62, scope: !1521, inlinedAt: !2563)
!2566 = !DILocation(line: 147, column: 57, scope: !1521, inlinedAt: !2563)
!2567 = !DILocation(line: 148, column: 15, scope: !1521, inlinedAt: !2563)
!2568 = !DILocation(line: 149, column: 21, scope: !1521, inlinedAt: !2563)
!2569 = !DILocation(line: 149, column: 24, scope: !1521, inlinedAt: !2563)
!2570 = !DILocation(line: 150, column: 19, scope: !1521, inlinedAt: !2563)
!2571 = !DILocation(line: 150, column: 24, scope: !1521, inlinedAt: !2563)
!2572 = !DILocation(line: 150, column: 6, scope: !1521, inlinedAt: !2563)
!2573 = !DILocation(line: 975, column: 10, scope: !2523, inlinedAt: !2558)
!2574 = !DILocation(line: 976, column: 1, scope: !2523, inlinedAt: !2558)
!2575 = !DILocation(line: 981, column: 3, scope: !2550)
!2576 = distinct !DISubprogram(name: "quotearg_colon", scope: !436, file: !436, line: 985, type: !941, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2577)
!2577 = !{!2578}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2576, file: !436, line: 985, type: !70)
!2579 = !DILocation(line: 0, scope: !2576)
!2580 = !DILocation(line: 0, scope: !2550, inlinedAt: !2581)
!2581 = distinct !DILocation(line: 987, column: 10, scope: !2576)
!2582 = !DILocation(line: 0, scope: !2523, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 981, column: 10, scope: !2550, inlinedAt: !2581)
!2584 = !DILocation(line: 972, column: 3, scope: !2523, inlinedAt: !2583)
!2585 = !DILocation(line: 972, column: 26, scope: !2523, inlinedAt: !2583)
!2586 = !DILocation(line: 973, column: 13, scope: !2523, inlinedAt: !2583)
!2587 = !DILocation(line: 0, scope: !1521, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 974, column: 3, scope: !2523, inlinedAt: !2583)
!2589 = !DILocation(line: 147, column: 57, scope: !1521, inlinedAt: !2588)
!2590 = !DILocation(line: 149, column: 21, scope: !1521, inlinedAt: !2588)
!2591 = !DILocation(line: 150, column: 6, scope: !1521, inlinedAt: !2588)
!2592 = !DILocation(line: 975, column: 10, scope: !2523, inlinedAt: !2583)
!2593 = !DILocation(line: 976, column: 1, scope: !2523, inlinedAt: !2583)
!2594 = !DILocation(line: 987, column: 3, scope: !2576)
!2595 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !436, file: !436, line: 991, type: !2404, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2596)
!2596 = !{!2597, !2598}
!2597 = !DILocalVariable(name: "arg", arg: 1, scope: !2595, file: !436, line: 991, type: !70)
!2598 = !DILocalVariable(name: "argsize", arg: 2, scope: !2595, file: !436, line: 991, type: !99)
!2599 = !DILocation(line: 0, scope: !2595)
!2600 = !DILocation(line: 0, scope: !2523, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 993, column: 10, scope: !2595)
!2602 = !DILocation(line: 972, column: 3, scope: !2523, inlinedAt: !2601)
!2603 = !DILocation(line: 972, column: 26, scope: !2523, inlinedAt: !2601)
!2604 = !DILocation(line: 973, column: 13, scope: !2523, inlinedAt: !2601)
!2605 = !DILocation(line: 0, scope: !1521, inlinedAt: !2606)
!2606 = distinct !DILocation(line: 974, column: 3, scope: !2523, inlinedAt: !2601)
!2607 = !DILocation(line: 147, column: 57, scope: !1521, inlinedAt: !2606)
!2608 = !DILocation(line: 149, column: 21, scope: !1521, inlinedAt: !2606)
!2609 = !DILocation(line: 150, column: 6, scope: !1521, inlinedAt: !2606)
!2610 = !DILocation(line: 975, column: 10, scope: !2523, inlinedAt: !2601)
!2611 = !DILocation(line: 976, column: 1, scope: !2523, inlinedAt: !2601)
!2612 = !DILocation(line: 993, column: 3, scope: !2595)
!2613 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !436, file: !436, line: 997, type: !2415, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2614)
!2614 = !{!2615, !2616, !2617, !2618}
!2615 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !436, line: 997, type: !97)
!2616 = !DILocalVariable(name: "s", arg: 2, scope: !2613, file: !436, line: 997, type: !462)
!2617 = !DILocalVariable(name: "arg", arg: 3, scope: !2613, file: !436, line: 997, type: !70)
!2618 = !DILocalVariable(name: "options", scope: !2613, file: !436, line: 999, type: !489)
!2619 = !DILocation(line: 185, column: 26, scope: !2430, inlinedAt: !2620)
!2620 = distinct !DILocation(line: 1000, column: 13, scope: !2613)
!2621 = !DILocation(line: 0, scope: !2613)
!2622 = !DILocation(line: 999, column: 3, scope: !2613)
!2623 = !DILocation(line: 999, column: 26, scope: !2613)
!2624 = !DILocation(line: 0, scope: !2430, inlinedAt: !2620)
!2625 = !DILocation(line: 186, column: 13, scope: !2439, inlinedAt: !2620)
!2626 = !DILocation(line: 186, column: 7, scope: !2430, inlinedAt: !2620)
!2627 = !DILocation(line: 187, column: 5, scope: !2439, inlinedAt: !2620)
!2628 = !{!2629}
!2629 = distinct !{!2629, !2630, !"quoting_options_from_style: argument 0"}
!2630 = distinct !{!2630, !"quoting_options_from_style"}
!2631 = !DILocation(line: 1000, column: 13, scope: !2613)
!2632 = !DILocation(line: 0, scope: !1521, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1001, column: 3, scope: !2613)
!2634 = !DILocation(line: 147, column: 57, scope: !1521, inlinedAt: !2633)
!2635 = !DILocation(line: 149, column: 21, scope: !1521, inlinedAt: !2633)
!2636 = !DILocation(line: 150, column: 6, scope: !1521, inlinedAt: !2633)
!2637 = !DILocation(line: 1002, column: 10, scope: !2613)
!2638 = !DILocation(line: 1003, column: 1, scope: !2613)
!2639 = !DILocation(line: 1002, column: 3, scope: !2613)
!2640 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !436, file: !436, line: 1006, type: !2641, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!246, !97, !70, !70, !70}
!2643 = !{!2644, !2645, !2646, !2647}
!2644 = !DILocalVariable(name: "n", arg: 1, scope: !2640, file: !436, line: 1006, type: !97)
!2645 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2640, file: !436, line: 1006, type: !70)
!2646 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2640, file: !436, line: 1007, type: !70)
!2647 = !DILocalVariable(name: "arg", arg: 4, scope: !2640, file: !436, line: 1007, type: !70)
!2648 = !DILocation(line: 0, scope: !2640)
!2649 = !DILocalVariable(name: "n", arg: 1, scope: !2650, file: !436, line: 1014, type: !97)
!2650 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !436, file: !436, line: 1014, type: !2651, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2653)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!246, !97, !70, !70, !70, !99}
!2653 = !{!2649, !2654, !2655, !2656, !2657, !2658}
!2654 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2650, file: !436, line: 1014, type: !70)
!2655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2650, file: !436, line: 1015, type: !70)
!2656 = !DILocalVariable(name: "arg", arg: 4, scope: !2650, file: !436, line: 1016, type: !70)
!2657 = !DILocalVariable(name: "argsize", arg: 5, scope: !2650, file: !436, line: 1016, type: !99)
!2658 = !DILocalVariable(name: "o", scope: !2650, file: !436, line: 1018, type: !489)
!2659 = !DILocation(line: 0, scope: !2650, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1009, column: 10, scope: !2640)
!2661 = !DILocation(line: 1018, column: 3, scope: !2650, inlinedAt: !2660)
!2662 = !DILocation(line: 1018, column: 26, scope: !2650, inlinedAt: !2660)
!2663 = !DILocation(line: 1018, column: 30, scope: !2650, inlinedAt: !2660)
!2664 = !DILocation(line: 0, scope: !1561, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1019, column: 3, scope: !2650, inlinedAt: !2660)
!2666 = !DILocation(line: 174, column: 12, scope: !1561, inlinedAt: !2665)
!2667 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2665)
!2668 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2665)
!2669 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2665)
!2670 = !DILocation(line: 177, column: 6, scope: !1561, inlinedAt: !2665)
!2671 = !DILocation(line: 177, column: 17, scope: !1561, inlinedAt: !2665)
!2672 = !DILocation(line: 178, column: 6, scope: !1561, inlinedAt: !2665)
!2673 = !DILocation(line: 178, column: 18, scope: !1561, inlinedAt: !2665)
!2674 = !DILocation(line: 1020, column: 10, scope: !2650, inlinedAt: !2660)
!2675 = !DILocation(line: 1021, column: 1, scope: !2650, inlinedAt: !2660)
!2676 = !DILocation(line: 1009, column: 3, scope: !2640)
!2677 = !DILocation(line: 0, scope: !2650)
!2678 = !DILocation(line: 1018, column: 3, scope: !2650)
!2679 = !DILocation(line: 1018, column: 26, scope: !2650)
!2680 = !DILocation(line: 1018, column: 30, scope: !2650)
!2681 = !DILocation(line: 0, scope: !1561, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1019, column: 3, scope: !2650)
!2683 = !DILocation(line: 174, column: 12, scope: !1561, inlinedAt: !2682)
!2684 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2682)
!2685 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2682)
!2686 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2682)
!2687 = !DILocation(line: 177, column: 6, scope: !1561, inlinedAt: !2682)
!2688 = !DILocation(line: 177, column: 17, scope: !1561, inlinedAt: !2682)
!2689 = !DILocation(line: 178, column: 6, scope: !1561, inlinedAt: !2682)
!2690 = !DILocation(line: 178, column: 18, scope: !1561, inlinedAt: !2682)
!2691 = !DILocation(line: 1020, column: 10, scope: !2650)
!2692 = !DILocation(line: 1021, column: 1, scope: !2650)
!2693 = !DILocation(line: 1020, column: 3, scope: !2650)
!2694 = distinct !DISubprogram(name: "quotearg_custom", scope: !436, file: !436, line: 1024, type: !2695, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!246, !70, !70, !70}
!2697 = !{!2698, !2699, !2700}
!2698 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2694, file: !436, line: 1024, type: !70)
!2699 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2694, file: !436, line: 1024, type: !70)
!2700 = !DILocalVariable(name: "arg", arg: 3, scope: !2694, file: !436, line: 1025, type: !70)
!2701 = !DILocation(line: 0, scope: !2694)
!2702 = !DILocation(line: 0, scope: !2640, inlinedAt: !2703)
!2703 = distinct !DILocation(line: 1027, column: 10, scope: !2694)
!2704 = !DILocation(line: 0, scope: !2650, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1009, column: 10, scope: !2640, inlinedAt: !2703)
!2706 = !DILocation(line: 1018, column: 3, scope: !2650, inlinedAt: !2705)
!2707 = !DILocation(line: 1018, column: 26, scope: !2650, inlinedAt: !2705)
!2708 = !DILocation(line: 1018, column: 30, scope: !2650, inlinedAt: !2705)
!2709 = !DILocation(line: 0, scope: !1561, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1019, column: 3, scope: !2650, inlinedAt: !2705)
!2711 = !DILocation(line: 174, column: 12, scope: !1561, inlinedAt: !2710)
!2712 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2710)
!2713 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2710)
!2714 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2710)
!2715 = !DILocation(line: 177, column: 6, scope: !1561, inlinedAt: !2710)
!2716 = !DILocation(line: 177, column: 17, scope: !1561, inlinedAt: !2710)
!2717 = !DILocation(line: 178, column: 6, scope: !1561, inlinedAt: !2710)
!2718 = !DILocation(line: 178, column: 18, scope: !1561, inlinedAt: !2710)
!2719 = !DILocation(line: 1020, column: 10, scope: !2650, inlinedAt: !2705)
!2720 = !DILocation(line: 1021, column: 1, scope: !2650, inlinedAt: !2705)
!2721 = !DILocation(line: 1027, column: 3, scope: !2694)
!2722 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !436, file: !436, line: 1031, type: !2723, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!246, !70, !70, !70, !99}
!2725 = !{!2726, !2727, !2728, !2729}
!2726 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2722, file: !436, line: 1031, type: !70)
!2727 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2722, file: !436, line: 1031, type: !70)
!2728 = !DILocalVariable(name: "arg", arg: 3, scope: !2722, file: !436, line: 1032, type: !70)
!2729 = !DILocalVariable(name: "argsize", arg: 4, scope: !2722, file: !436, line: 1032, type: !99)
!2730 = !DILocation(line: 0, scope: !2722)
!2731 = !DILocation(line: 0, scope: !2650, inlinedAt: !2732)
!2732 = distinct !DILocation(line: 1034, column: 10, scope: !2722)
!2733 = !DILocation(line: 1018, column: 3, scope: !2650, inlinedAt: !2732)
!2734 = !DILocation(line: 1018, column: 26, scope: !2650, inlinedAt: !2732)
!2735 = !DILocation(line: 1018, column: 30, scope: !2650, inlinedAt: !2732)
!2736 = !DILocation(line: 0, scope: !1561, inlinedAt: !2737)
!2737 = distinct !DILocation(line: 1019, column: 3, scope: !2650, inlinedAt: !2732)
!2738 = !DILocation(line: 174, column: 12, scope: !1561, inlinedAt: !2737)
!2739 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2737)
!2740 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2737)
!2741 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2737)
!2742 = !DILocation(line: 177, column: 6, scope: !1561, inlinedAt: !2737)
!2743 = !DILocation(line: 177, column: 17, scope: !1561, inlinedAt: !2737)
!2744 = !DILocation(line: 178, column: 6, scope: !1561, inlinedAt: !2737)
!2745 = !DILocation(line: 178, column: 18, scope: !1561, inlinedAt: !2737)
!2746 = !DILocation(line: 1020, column: 10, scope: !2650, inlinedAt: !2732)
!2747 = !DILocation(line: 1021, column: 1, scope: !2650, inlinedAt: !2732)
!2748 = !DILocation(line: 1034, column: 3, scope: !2722)
!2749 = distinct !DISubprogram(name: "quote_n_mem", scope: !436, file: !436, line: 1049, type: !2750, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!70, !97, !70, !99}
!2752 = !{!2753, !2754, !2755}
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !436, line: 1049, type: !97)
!2754 = !DILocalVariable(name: "arg", arg: 2, scope: !2749, file: !436, line: 1049, type: !70)
!2755 = !DILocalVariable(name: "argsize", arg: 3, scope: !2749, file: !436, line: 1049, type: !99)
!2756 = !DILocation(line: 0, scope: !2749)
!2757 = !DILocation(line: 1051, column: 10, scope: !2749)
!2758 = !DILocation(line: 1051, column: 3, scope: !2749)
!2759 = distinct !DISubprogram(name: "quote_mem", scope: !436, file: !436, line: 1055, type: !2760, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!70, !70, !99}
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "arg", arg: 1, scope: !2759, file: !436, line: 1055, type: !70)
!2764 = !DILocalVariable(name: "argsize", arg: 2, scope: !2759, file: !436, line: 1055, type: !99)
!2765 = !DILocation(line: 0, scope: !2759)
!2766 = !DILocation(line: 0, scope: !2749, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1057, column: 10, scope: !2759)
!2768 = !DILocation(line: 1051, column: 10, scope: !2749, inlinedAt: !2767)
!2769 = !DILocation(line: 1057, column: 3, scope: !2759)
!2770 = distinct !DISubprogram(name: "quote_n", scope: !436, file: !436, line: 1061, type: !2771, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!70, !97, !70}
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !436, line: 1061, type: !97)
!2775 = !DILocalVariable(name: "arg", arg: 2, scope: !2770, file: !436, line: 1061, type: !70)
!2776 = !DILocation(line: 0, scope: !2770)
!2777 = !DILocation(line: 0, scope: !2749, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1063, column: 10, scope: !2770)
!2779 = !DILocation(line: 1051, column: 10, scope: !2749, inlinedAt: !2778)
!2780 = !DILocation(line: 1063, column: 3, scope: !2770)
!2781 = distinct !DISubprogram(name: "quote", scope: !436, file: !436, line: 1067, type: !2782, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!70, !70}
!2784 = !{!2785}
!2785 = !DILocalVariable(name: "arg", arg: 1, scope: !2781, file: !436, line: 1067, type: !70)
!2786 = !DILocation(line: 0, scope: !2781)
!2787 = !DILocation(line: 0, scope: !2770, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1069, column: 10, scope: !2781)
!2789 = !DILocation(line: 0, scope: !2749, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1063, column: 10, scope: !2770, inlinedAt: !2788)
!2791 = !DILocation(line: 1051, column: 10, scope: !2749, inlinedAt: !2790)
!2792 = !DILocation(line: 1069, column: 3, scope: !2781)
!2793 = distinct !DISubprogram(name: "version_etc_arn", scope: !552, file: !552, line: 61, type: !2794, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2831)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2796, !70, !70, !70, !2830, !99}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2798)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2798, file: !242, line: 51, baseType: !97, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2798, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2798, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2798, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2798, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2798, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2798, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2798, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2798, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2798, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2798, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2798, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2798, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2798, file: !242, line: 70, baseType: !2814, size: 64, offset: 832)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2798, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2798, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2798, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2798, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2798, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2798, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2798, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2798, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2798, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2798, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2798, file: !242, line: 93, baseType: !2814, size: 64, offset: 1344)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2798, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2798, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2798, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2798, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837}
!2832 = !DILocalVariable(name: "stream", arg: 1, scope: !2793, file: !552, line: 61, type: !2796)
!2833 = !DILocalVariable(name: "command_name", arg: 2, scope: !2793, file: !552, line: 62, type: !70)
!2834 = !DILocalVariable(name: "package", arg: 3, scope: !2793, file: !552, line: 62, type: !70)
!2835 = !DILocalVariable(name: "version", arg: 4, scope: !2793, file: !552, line: 63, type: !70)
!2836 = !DILocalVariable(name: "authors", arg: 5, scope: !2793, file: !552, line: 64, type: !2830)
!2837 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2793, file: !552, line: 64, type: !99)
!2838 = !DILocation(line: 0, scope: !2793)
!2839 = !DILocation(line: 66, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2793, file: !552, line: 66, column: 7)
!2841 = !DILocation(line: 66, column: 7, scope: !2793)
!2842 = !DILocation(line: 67, column: 5, scope: !2840)
!2843 = !DILocation(line: 69, column: 5, scope: !2840)
!2844 = !DILocation(line: 83, column: 3, scope: !2793)
!2845 = !DILocation(line: 85, column: 3, scope: !2793)
!2846 = !DILocation(line: 88, column: 3, scope: !2793)
!2847 = !DILocation(line: 95, column: 3, scope: !2793)
!2848 = !DILocation(line: 97, column: 3, scope: !2793)
!2849 = !DILocation(line: 105, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2793, file: !552, line: 98, column: 5)
!2851 = !DILocation(line: 106, column: 7, scope: !2850)
!2852 = !DILocation(line: 109, column: 7, scope: !2850)
!2853 = !DILocation(line: 110, column: 7, scope: !2850)
!2854 = !DILocation(line: 113, column: 7, scope: !2850)
!2855 = !DILocation(line: 115, column: 7, scope: !2850)
!2856 = !DILocation(line: 120, column: 7, scope: !2850)
!2857 = !DILocation(line: 122, column: 7, scope: !2850)
!2858 = !DILocation(line: 127, column: 7, scope: !2850)
!2859 = !DILocation(line: 129, column: 7, scope: !2850)
!2860 = !DILocation(line: 134, column: 7, scope: !2850)
!2861 = !DILocation(line: 137, column: 7, scope: !2850)
!2862 = !DILocation(line: 142, column: 7, scope: !2850)
!2863 = !DILocation(line: 145, column: 7, scope: !2850)
!2864 = !DILocation(line: 150, column: 7, scope: !2850)
!2865 = !DILocation(line: 154, column: 7, scope: !2850)
!2866 = !DILocation(line: 159, column: 7, scope: !2850)
!2867 = !DILocation(line: 163, column: 7, scope: !2850)
!2868 = !DILocation(line: 170, column: 7, scope: !2850)
!2869 = !DILocation(line: 174, column: 7, scope: !2850)
!2870 = !DILocation(line: 176, column: 1, scope: !2793)
!2871 = distinct !DISubprogram(name: "version_etc_ar", scope: !552, file: !552, line: 183, type: !2872, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2796, !70, !70, !70, !2830}
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880}
!2875 = !DILocalVariable(name: "stream", arg: 1, scope: !2871, file: !552, line: 183, type: !2796)
!2876 = !DILocalVariable(name: "command_name", arg: 2, scope: !2871, file: !552, line: 184, type: !70)
!2877 = !DILocalVariable(name: "package", arg: 3, scope: !2871, file: !552, line: 184, type: !70)
!2878 = !DILocalVariable(name: "version", arg: 4, scope: !2871, file: !552, line: 185, type: !70)
!2879 = !DILocalVariable(name: "authors", arg: 5, scope: !2871, file: !552, line: 185, type: !2830)
!2880 = !DILocalVariable(name: "n_authors", scope: !2871, file: !552, line: 187, type: !99)
!2881 = !DILocation(line: 0, scope: !2871)
!2882 = !DILocation(line: 189, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2871, file: !552, line: 189, column: 3)
!2884 = !DILocation(line: 189, scope: !2883)
!2885 = !DILocation(line: 189, column: 23, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !552, line: 189, column: 3)
!2887 = !DILocation(line: 189, column: 3, scope: !2883)
!2888 = !DILocation(line: 189, column: 52, scope: !2886)
!2889 = distinct !{!2889, !2887, !2890, !861}
!2890 = !DILocation(line: 190, column: 5, scope: !2883)
!2891 = !DILocation(line: 191, column: 3, scope: !2871)
!2892 = !DILocation(line: 192, column: 1, scope: !2871)
!2893 = distinct !DISubprogram(name: "version_etc_va", scope: !552, file: !552, line: 199, type: !2894, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2904)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2796, !70, !70, !70, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2898)
!2898 = !{!2899, !2901, !2902, !2903}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2897, file: !2900, line: 192, baseType: !76, size: 32)
!2900 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2897, file: !2900, line: 192, baseType: !76, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2897, file: !2900, line: 192, baseType: !91, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2897, file: !2900, line: 192, baseType: !91, size: 64, offset: 128)
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2905 = !DILocalVariable(name: "stream", arg: 1, scope: !2893, file: !552, line: 199, type: !2796)
!2906 = !DILocalVariable(name: "command_name", arg: 2, scope: !2893, file: !552, line: 200, type: !70)
!2907 = !DILocalVariable(name: "package", arg: 3, scope: !2893, file: !552, line: 200, type: !70)
!2908 = !DILocalVariable(name: "version", arg: 4, scope: !2893, file: !552, line: 201, type: !70)
!2909 = !DILocalVariable(name: "authors", arg: 5, scope: !2893, file: !552, line: 201, type: !2896)
!2910 = !DILocalVariable(name: "n_authors", scope: !2893, file: !552, line: 203, type: !99)
!2911 = !DILocalVariable(name: "authtab", scope: !2893, file: !552, line: 204, type: !2912)
!2912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2913 = !DILocation(line: 0, scope: !2893)
!2914 = !DILocation(line: 204, column: 3, scope: !2893)
!2915 = !DILocation(line: 204, column: 15, scope: !2893)
!2916 = !DILocation(line: 208, column: 35, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !552, line: 206, column: 3)
!2918 = distinct !DILexicalBlock(scope: !2893, file: !552, line: 206, column: 3)
!2919 = !DILocation(line: 208, column: 33, scope: !2917)
!2920 = !DILocation(line: 208, column: 67, scope: !2917)
!2921 = !DILocation(line: 206, column: 3, scope: !2918)
!2922 = !DILocation(line: 208, column: 14, scope: !2917)
!2923 = !DILocation(line: 0, scope: !2918)
!2924 = !DILocation(line: 211, column: 3, scope: !2893)
!2925 = !DILocation(line: 213, column: 1, scope: !2893)
!2926 = distinct !DISubprogram(name: "version_etc", scope: !552, file: !552, line: 230, type: !2927, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !2796, !70, !70, !70, null}
!2929 = !{!2930, !2931, !2932, !2933, !2934}
!2930 = !DILocalVariable(name: "stream", arg: 1, scope: !2926, file: !552, line: 230, type: !2796)
!2931 = !DILocalVariable(name: "command_name", arg: 2, scope: !2926, file: !552, line: 231, type: !70)
!2932 = !DILocalVariable(name: "package", arg: 3, scope: !2926, file: !552, line: 231, type: !70)
!2933 = !DILocalVariable(name: "version", arg: 4, scope: !2926, file: !552, line: 232, type: !70)
!2934 = !DILocalVariable(name: "authors", scope: !2926, file: !552, line: 234, type: !2935)
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !809, line: 52, baseType: !2936)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1256, line: 14, baseType: !2937)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2900, baseType: !2938)
!2938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 192, elements: !35)
!2939 = !DILocation(line: 0, scope: !2926)
!2940 = !DILocation(line: 234, column: 3, scope: !2926)
!2941 = !DILocation(line: 234, column: 11, scope: !2926)
!2942 = !DILocation(line: 235, column: 3, scope: !2926)
!2943 = !DILocation(line: 236, column: 3, scope: !2926)
!2944 = !DILocation(line: 237, column: 3, scope: !2926)
!2945 = !DILocation(line: 238, column: 1, scope: !2926)
!2946 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !552, file: !552, line: 241, type: !368, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !673, retainedNodes: !798)
!2947 = !DILocation(line: 243, column: 3, scope: !2946)
!2948 = !DILocation(line: 248, column: 3, scope: !2946)
!2949 = !DILocation(line: 254, column: 3, scope: !2946)
!2950 = !DILocation(line: 259, column: 3, scope: !2946)
!2951 = !DILocation(line: 261, column: 1, scope: !2946)
!2952 = distinct !DISubprogram(name: "xnrealloc", scope: !2953, file: !2953, line: 147, type: !2954, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2956)
!2953 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!91, !91, !99, !99}
!2956 = !{!2957, !2958, !2959}
!2957 = !DILocalVariable(name: "p", arg: 1, scope: !2952, file: !2953, line: 147, type: !91)
!2958 = !DILocalVariable(name: "n", arg: 2, scope: !2952, file: !2953, line: 147, type: !99)
!2959 = !DILocalVariable(name: "s", arg: 3, scope: !2952, file: !2953, line: 147, type: !99)
!2960 = !DILocation(line: 0, scope: !2952)
!2961 = !DILocalVariable(name: "p", arg: 1, scope: !2962, file: !681, line: 83, type: !91)
!2962 = distinct !DISubprogram(name: "xreallocarray", scope: !681, file: !681, line: 83, type: !2954, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2963)
!2963 = !{!2961, !2964, !2965}
!2964 = !DILocalVariable(name: "n", arg: 2, scope: !2962, file: !681, line: 83, type: !99)
!2965 = !DILocalVariable(name: "s", arg: 3, scope: !2962, file: !681, line: 83, type: !99)
!2966 = !DILocation(line: 0, scope: !2962, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 149, column: 10, scope: !2952)
!2968 = !DILocation(line: 85, column: 25, scope: !2962, inlinedAt: !2967)
!2969 = !DILocalVariable(name: "p", arg: 1, scope: !2970, file: !681, line: 37, type: !91)
!2970 = distinct !DISubprogram(name: "check_nonnull", scope: !681, file: !681, line: 37, type: !2971, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2973)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!91, !91}
!2973 = !{!2969}
!2974 = !DILocation(line: 0, scope: !2970, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 85, column: 10, scope: !2962, inlinedAt: !2967)
!2976 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !2975)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !681, line: 39, column: 7)
!2978 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !2975)
!2979 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !2975)
!2980 = !DILocation(line: 149, column: 3, scope: !2952)
!2981 = !DILocation(line: 0, scope: !2962)
!2982 = !DILocation(line: 85, column: 25, scope: !2962)
!2983 = !DILocation(line: 0, scope: !2970, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 85, column: 10, scope: !2962)
!2985 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !2984)
!2986 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !2984)
!2987 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !2984)
!2988 = !DILocation(line: 85, column: 3, scope: !2962)
!2989 = distinct !DISubprogram(name: "xmalloc", scope: !681, file: !681, line: 47, type: !2990, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!91, !99}
!2992 = !{!2993}
!2993 = !DILocalVariable(name: "s", arg: 1, scope: !2989, file: !681, line: 47, type: !99)
!2994 = !DILocation(line: 0, scope: !2989)
!2995 = !DILocation(line: 49, column: 25, scope: !2989)
!2996 = !DILocation(line: 0, scope: !2970, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 49, column: 10, scope: !2989)
!2998 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !2997)
!2999 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !2997)
!3000 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !2997)
!3001 = !DILocation(line: 49, column: 3, scope: !2989)
!3002 = !DISubprogram(name: "malloc", scope: !939, file: !939, line: 540, type: !2990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3003 = distinct !DISubprogram(name: "ximalloc", scope: !681, file: !681, line: 53, type: !3004, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!91, !700}
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "s", arg: 1, scope: !3003, file: !681, line: 53, type: !700)
!3008 = !DILocation(line: 0, scope: !3003)
!3009 = !DILocalVariable(name: "s", arg: 1, scope: !3010, file: !3011, line: 55, type: !700)
!3010 = distinct !DISubprogram(name: "imalloc", scope: !3011, file: !3011, line: 55, type: !3004, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3012)
!3011 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3012 = !{!3009}
!3013 = !DILocation(line: 0, scope: !3010, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 55, column: 25, scope: !3003)
!3015 = !DILocation(line: 57, column: 26, scope: !3010, inlinedAt: !3014)
!3016 = !DILocation(line: 0, scope: !2970, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 55, column: 10, scope: !3003)
!3018 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3017)
!3019 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3017)
!3020 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3017)
!3021 = !DILocation(line: 55, column: 3, scope: !3003)
!3022 = distinct !DISubprogram(name: "xcharalloc", scope: !681, file: !681, line: 59, type: !3023, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!246, !99}
!3025 = !{!3026}
!3026 = !DILocalVariable(name: "n", arg: 1, scope: !3022, file: !681, line: 59, type: !99)
!3027 = !DILocation(line: 0, scope: !3022)
!3028 = !DILocation(line: 0, scope: !2989, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 61, column: 10, scope: !3022)
!3030 = !DILocation(line: 49, column: 25, scope: !2989, inlinedAt: !3029)
!3031 = !DILocation(line: 0, scope: !2970, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 49, column: 10, scope: !2989, inlinedAt: !3029)
!3033 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3032)
!3034 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3032)
!3035 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3032)
!3036 = !DILocation(line: 61, column: 3, scope: !3022)
!3037 = distinct !DISubprogram(name: "xrealloc", scope: !681, file: !681, line: 68, type: !3038, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3040)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!91, !91, !99}
!3040 = !{!3041, !3042}
!3041 = !DILocalVariable(name: "p", arg: 1, scope: !3037, file: !681, line: 68, type: !91)
!3042 = !DILocalVariable(name: "s", arg: 2, scope: !3037, file: !681, line: 68, type: !99)
!3043 = !DILocation(line: 0, scope: !3037)
!3044 = !DILocalVariable(name: "ptr", arg: 1, scope: !3045, file: !3046, line: 2057, type: !91)
!3045 = distinct !DISubprogram(name: "rpl_realloc", scope: !3046, file: !3046, line: 2057, type: !3038, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3047)
!3046 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3047 = !{!3044, !3048}
!3048 = !DILocalVariable(name: "size", arg: 2, scope: !3045, file: !3046, line: 2057, type: !99)
!3049 = !DILocation(line: 0, scope: !3045, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 70, column: 25, scope: !3037)
!3051 = !DILocation(line: 2059, column: 24, scope: !3045, inlinedAt: !3050)
!3052 = !DILocation(line: 2059, column: 10, scope: !3045, inlinedAt: !3050)
!3053 = !DILocation(line: 0, scope: !2970, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 70, column: 10, scope: !3037)
!3055 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3054)
!3056 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3054)
!3057 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3054)
!3058 = !DILocation(line: 70, column: 3, scope: !3037)
!3059 = !DISubprogram(name: "realloc", scope: !939, file: !939, line: 551, type: !3038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3060 = distinct !DISubprogram(name: "xirealloc", scope: !681, file: !681, line: 74, type: !3061, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3063)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!91, !91, !700}
!3063 = !{!3064, !3065}
!3064 = !DILocalVariable(name: "p", arg: 1, scope: !3060, file: !681, line: 74, type: !91)
!3065 = !DILocalVariable(name: "s", arg: 2, scope: !3060, file: !681, line: 74, type: !700)
!3066 = !DILocation(line: 0, scope: !3060)
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3068, file: !3011, line: 66, type: !91)
!3068 = distinct !DISubprogram(name: "irealloc", scope: !3011, file: !3011, line: 66, type: !3061, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3069)
!3069 = !{!3067, !3070}
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3068, file: !3011, line: 66, type: !700)
!3071 = !DILocation(line: 0, scope: !3068, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 76, column: 25, scope: !3060)
!3073 = !DILocation(line: 0, scope: !3045, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 68, column: 26, scope: !3068, inlinedAt: !3072)
!3075 = !DILocation(line: 2059, column: 24, scope: !3045, inlinedAt: !3074)
!3076 = !DILocation(line: 2059, column: 10, scope: !3045, inlinedAt: !3074)
!3077 = !DILocation(line: 0, scope: !2970, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 76, column: 10, scope: !3060)
!3079 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3078)
!3082 = !DILocation(line: 76, column: 3, scope: !3060)
!3083 = distinct !DISubprogram(name: "xireallocarray", scope: !681, file: !681, line: 89, type: !3084, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!91, !91, !700, !700}
!3086 = !{!3087, !3088, !3089}
!3087 = !DILocalVariable(name: "p", arg: 1, scope: !3083, file: !681, line: 89, type: !91)
!3088 = !DILocalVariable(name: "n", arg: 2, scope: !3083, file: !681, line: 89, type: !700)
!3089 = !DILocalVariable(name: "s", arg: 3, scope: !3083, file: !681, line: 89, type: !700)
!3090 = !DILocation(line: 0, scope: !3083)
!3091 = !DILocalVariable(name: "p", arg: 1, scope: !3092, file: !3011, line: 98, type: !91)
!3092 = distinct !DISubprogram(name: "ireallocarray", scope: !3011, file: !3011, line: 98, type: !3084, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3093)
!3093 = !{!3091, !3094, !3095}
!3094 = !DILocalVariable(name: "n", arg: 2, scope: !3092, file: !3011, line: 98, type: !700)
!3095 = !DILocalVariable(name: "s", arg: 3, scope: !3092, file: !3011, line: 98, type: !700)
!3096 = !DILocation(line: 0, scope: !3092, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 91, column: 25, scope: !3083)
!3098 = !DILocation(line: 101, column: 13, scope: !3092, inlinedAt: !3097)
!3099 = !DILocation(line: 0, scope: !2970, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 91, column: 10, scope: !3083)
!3101 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3100)
!3102 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3100)
!3103 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3100)
!3104 = !DILocation(line: 91, column: 3, scope: !3083)
!3105 = distinct !DISubprogram(name: "xnmalloc", scope: !681, file: !681, line: 98, type: !3106, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3108)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!91, !99, !99}
!3108 = !{!3109, !3110}
!3109 = !DILocalVariable(name: "n", arg: 1, scope: !3105, file: !681, line: 98, type: !99)
!3110 = !DILocalVariable(name: "s", arg: 2, scope: !3105, file: !681, line: 98, type: !99)
!3111 = !DILocation(line: 0, scope: !3105)
!3112 = !DILocation(line: 0, scope: !2962, inlinedAt: !3113)
!3113 = distinct !DILocation(line: 100, column: 10, scope: !3105)
!3114 = !DILocation(line: 85, column: 25, scope: !2962, inlinedAt: !3113)
!3115 = !DILocation(line: 0, scope: !2970, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 85, column: 10, scope: !2962, inlinedAt: !3113)
!3117 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3116)
!3118 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3116)
!3119 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3116)
!3120 = !DILocation(line: 100, column: 3, scope: !3105)
!3121 = distinct !DISubprogram(name: "xinmalloc", scope: !681, file: !681, line: 104, type: !3122, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3124)
!3122 = !DISubroutineType(types: !3123)
!3123 = !{!91, !700, !700}
!3124 = !{!3125, !3126}
!3125 = !DILocalVariable(name: "n", arg: 1, scope: !3121, file: !681, line: 104, type: !700)
!3126 = !DILocalVariable(name: "s", arg: 2, scope: !3121, file: !681, line: 104, type: !700)
!3127 = !DILocation(line: 0, scope: !3121)
!3128 = !DILocation(line: 0, scope: !3083, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 106, column: 10, scope: !3121)
!3130 = !DILocation(line: 0, scope: !3092, inlinedAt: !3131)
!3131 = distinct !DILocation(line: 91, column: 25, scope: !3083, inlinedAt: !3129)
!3132 = !DILocation(line: 101, column: 13, scope: !3092, inlinedAt: !3131)
!3133 = !DILocation(line: 0, scope: !2970, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 91, column: 10, scope: !3083, inlinedAt: !3129)
!3135 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3134)
!3136 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3134)
!3137 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3134)
!3138 = !DILocation(line: 106, column: 3, scope: !3121)
!3139 = distinct !DISubprogram(name: "x2realloc", scope: !681, file: !681, line: 116, type: !3140, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!91, !91, !687}
!3142 = !{!3143, !3144}
!3143 = !DILocalVariable(name: "p", arg: 1, scope: !3139, file: !681, line: 116, type: !91)
!3144 = !DILocalVariable(name: "ps", arg: 2, scope: !3139, file: !681, line: 116, type: !687)
!3145 = !DILocation(line: 0, scope: !3139)
!3146 = !DILocation(line: 0, scope: !684, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 118, column: 10, scope: !3139)
!3148 = !DILocation(line: 178, column: 14, scope: !684, inlinedAt: !3147)
!3149 = !DILocation(line: 180, column: 9, scope: !3150, inlinedAt: !3147)
!3150 = distinct !DILexicalBlock(scope: !684, file: !681, line: 180, column: 7)
!3151 = !DILocation(line: 180, column: 7, scope: !684, inlinedAt: !3147)
!3152 = !DILocation(line: 182, column: 13, scope: !3153, inlinedAt: !3147)
!3153 = distinct !DILexicalBlock(scope: !3154, file: !681, line: 182, column: 11)
!3154 = distinct !DILexicalBlock(scope: !3150, file: !681, line: 181, column: 5)
!3155 = !DILocation(line: 182, column: 11, scope: !3154, inlinedAt: !3147)
!3156 = !DILocation(line: 197, column: 11, scope: !3157, inlinedAt: !3147)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !681, line: 197, column: 11)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !681, line: 195, column: 5)
!3159 = !DILocation(line: 197, column: 11, scope: !3158, inlinedAt: !3147)
!3160 = !DILocation(line: 198, column: 9, scope: !3157, inlinedAt: !3147)
!3161 = !DILocation(line: 0, scope: !2962, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 201, column: 7, scope: !684, inlinedAt: !3147)
!3163 = !DILocation(line: 85, column: 25, scope: !2962, inlinedAt: !3162)
!3164 = !DILocation(line: 0, scope: !2970, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 85, column: 10, scope: !2962, inlinedAt: !3162)
!3166 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3165)
!3167 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3165)
!3168 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3165)
!3169 = !DILocation(line: 202, column: 7, scope: !684, inlinedAt: !3147)
!3170 = !DILocation(line: 118, column: 3, scope: !3139)
!3171 = !DILocation(line: 0, scope: !684)
!3172 = !DILocation(line: 178, column: 14, scope: !684)
!3173 = !DILocation(line: 180, column: 9, scope: !3150)
!3174 = !DILocation(line: 180, column: 7, scope: !684)
!3175 = !DILocation(line: 182, column: 13, scope: !3153)
!3176 = !DILocation(line: 182, column: 11, scope: !3154)
!3177 = !DILocation(line: 190, column: 30, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3153, file: !681, line: 183, column: 9)
!3179 = !DILocation(line: 191, column: 16, scope: !3178)
!3180 = !DILocation(line: 191, column: 13, scope: !3178)
!3181 = !DILocation(line: 192, column: 9, scope: !3178)
!3182 = !DILocation(line: 197, column: 11, scope: !3157)
!3183 = !DILocation(line: 197, column: 11, scope: !3158)
!3184 = !DILocation(line: 198, column: 9, scope: !3157)
!3185 = !DILocation(line: 0, scope: !2962, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 201, column: 7, scope: !684)
!3187 = !DILocation(line: 85, column: 25, scope: !2962, inlinedAt: !3186)
!3188 = !DILocation(line: 0, scope: !2970, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 85, column: 10, scope: !2962, inlinedAt: !3186)
!3190 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3189)
!3191 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3189)
!3192 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3189)
!3193 = !DILocation(line: 202, column: 7, scope: !684)
!3194 = !DILocation(line: 203, column: 3, scope: !684)
!3195 = !DILocation(line: 0, scope: !696)
!3196 = !DILocation(line: 230, column: 14, scope: !696)
!3197 = !DILocation(line: 238, column: 7, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !696, file: !681, line: 238, column: 7)
!3199 = !DILocation(line: 238, column: 7, scope: !696)
!3200 = !DILocation(line: 240, column: 9, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !696, file: !681, line: 240, column: 7)
!3202 = !DILocation(line: 240, column: 18, scope: !3201)
!3203 = !DILocation(line: 253, column: 8, scope: !696)
!3204 = !DILocation(line: 258, column: 27, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !681, line: 257, column: 5)
!3206 = distinct !DILexicalBlock(scope: !696, file: !681, line: 256, column: 7)
!3207 = !DILocation(line: 259, column: 50, scope: !3205)
!3208 = !DILocation(line: 259, column: 32, scope: !3205)
!3209 = !DILocation(line: 260, column: 5, scope: !3205)
!3210 = !DILocation(line: 262, column: 9, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !696, file: !681, line: 262, column: 7)
!3212 = !DILocation(line: 262, column: 7, scope: !696)
!3213 = !DILocation(line: 263, column: 9, scope: !3211)
!3214 = !DILocation(line: 263, column: 5, scope: !3211)
!3215 = !DILocation(line: 264, column: 9, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !696, file: !681, line: 264, column: 7)
!3217 = !DILocation(line: 264, column: 14, scope: !3216)
!3218 = !DILocation(line: 265, column: 7, scope: !3216)
!3219 = !DILocation(line: 265, column: 11, scope: !3216)
!3220 = !DILocation(line: 266, column: 11, scope: !3216)
!3221 = !DILocation(line: 267, column: 14, scope: !3216)
!3222 = !DILocation(line: 264, column: 7, scope: !696)
!3223 = !DILocation(line: 268, column: 5, scope: !3216)
!3224 = !DILocation(line: 0, scope: !3037, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 269, column: 8, scope: !696)
!3226 = !DILocation(line: 0, scope: !3045, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 70, column: 25, scope: !3037, inlinedAt: !3225)
!3228 = !DILocation(line: 2059, column: 24, scope: !3045, inlinedAt: !3227)
!3229 = !DILocation(line: 2059, column: 10, scope: !3045, inlinedAt: !3227)
!3230 = !DILocation(line: 0, scope: !2970, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 70, column: 10, scope: !3037, inlinedAt: !3225)
!3232 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3231)
!3233 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3231)
!3234 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3231)
!3235 = !DILocation(line: 270, column: 7, scope: !696)
!3236 = !DILocation(line: 271, column: 3, scope: !696)
!3237 = distinct !DISubprogram(name: "xzalloc", scope: !681, file: !681, line: 279, type: !2990, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3238)
!3238 = !{!3239}
!3239 = !DILocalVariable(name: "s", arg: 1, scope: !3237, file: !681, line: 279, type: !99)
!3240 = !DILocation(line: 0, scope: !3237)
!3241 = !DILocalVariable(name: "n", arg: 1, scope: !3242, file: !681, line: 294, type: !99)
!3242 = distinct !DISubprogram(name: "xcalloc", scope: !681, file: !681, line: 294, type: !3106, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3243)
!3243 = !{!3241, !3244}
!3244 = !DILocalVariable(name: "s", arg: 2, scope: !3242, file: !681, line: 294, type: !99)
!3245 = !DILocation(line: 0, scope: !3242, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 281, column: 10, scope: !3237)
!3247 = !DILocation(line: 296, column: 25, scope: !3242, inlinedAt: !3246)
!3248 = !DILocation(line: 0, scope: !2970, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 296, column: 10, scope: !3242, inlinedAt: !3246)
!3250 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3249)
!3251 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3249)
!3252 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3249)
!3253 = !DILocation(line: 281, column: 3, scope: !3237)
!3254 = !DISubprogram(name: "calloc", scope: !939, file: !939, line: 543, type: !3106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3255 = !DILocation(line: 0, scope: !3242)
!3256 = !DILocation(line: 296, column: 25, scope: !3242)
!3257 = !DILocation(line: 0, scope: !2970, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 296, column: 10, scope: !3242)
!3259 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3258)
!3260 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3258)
!3261 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3258)
!3262 = !DILocation(line: 296, column: 3, scope: !3242)
!3263 = distinct !DISubprogram(name: "xizalloc", scope: !681, file: !681, line: 285, type: !3004, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3264)
!3264 = !{!3265}
!3265 = !DILocalVariable(name: "s", arg: 1, scope: !3263, file: !681, line: 285, type: !700)
!3266 = !DILocation(line: 0, scope: !3263)
!3267 = !DILocalVariable(name: "n", arg: 1, scope: !3268, file: !681, line: 300, type: !700)
!3268 = distinct !DISubprogram(name: "xicalloc", scope: !681, file: !681, line: 300, type: !3122, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3269)
!3269 = !{!3267, !3270}
!3270 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !681, line: 300, type: !700)
!3271 = !DILocation(line: 0, scope: !3268, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 287, column: 10, scope: !3263)
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3274, file: !3011, line: 77, type: !700)
!3274 = distinct !DISubprogram(name: "icalloc", scope: !3011, file: !3011, line: 77, type: !3122, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3275)
!3275 = !{!3273, !3276}
!3276 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !3011, line: 77, type: !700)
!3277 = !DILocation(line: 0, scope: !3274, inlinedAt: !3278)
!3278 = distinct !DILocation(line: 302, column: 25, scope: !3268, inlinedAt: !3272)
!3279 = !DILocation(line: 91, column: 10, scope: !3274, inlinedAt: !3278)
!3280 = !DILocation(line: 0, scope: !2970, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 302, column: 10, scope: !3268, inlinedAt: !3272)
!3282 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3281)
!3283 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3281)
!3284 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3281)
!3285 = !DILocation(line: 287, column: 3, scope: !3263)
!3286 = !DILocation(line: 0, scope: !3268)
!3287 = !DILocation(line: 0, scope: !3274, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 302, column: 25, scope: !3268)
!3289 = !DILocation(line: 91, column: 10, scope: !3274, inlinedAt: !3288)
!3290 = !DILocation(line: 0, scope: !2970, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 302, column: 10, scope: !3268)
!3292 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3291)
!3293 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3291)
!3294 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3291)
!3295 = !DILocation(line: 302, column: 3, scope: !3268)
!3296 = distinct !DISubprogram(name: "xmemdup", scope: !681, file: !681, line: 310, type: !3297, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!91, !963, !99}
!3299 = !{!3300, !3301}
!3300 = !DILocalVariable(name: "p", arg: 1, scope: !3296, file: !681, line: 310, type: !963)
!3301 = !DILocalVariable(name: "s", arg: 2, scope: !3296, file: !681, line: 310, type: !99)
!3302 = !DILocation(line: 0, scope: !3296)
!3303 = !DILocation(line: 0, scope: !2989, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 312, column: 18, scope: !3296)
!3305 = !DILocation(line: 49, column: 25, scope: !2989, inlinedAt: !3304)
!3306 = !DILocation(line: 0, scope: !2970, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 49, column: 10, scope: !2989, inlinedAt: !3304)
!3308 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3307)
!3309 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3307)
!3310 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3307)
!3311 = !DILocalVariable(name: "__dest", arg: 1, scope: !3312, file: !1464, line: 26, type: !3315)
!3312 = distinct !DISubprogram(name: "memcpy", scope: !1464, file: !1464, line: 26, type: !3313, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3316)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!91, !3315, !962, !99}
!3315 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3316 = !{!3311, !3317, !3318}
!3317 = !DILocalVariable(name: "__src", arg: 2, scope: !3312, file: !1464, line: 26, type: !962)
!3318 = !DILocalVariable(name: "__len", arg: 3, scope: !3312, file: !1464, line: 26, type: !99)
!3319 = !DILocation(line: 0, scope: !3312, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 312, column: 10, scope: !3296)
!3321 = !DILocation(line: 29, column: 10, scope: !3312, inlinedAt: !3320)
!3322 = !DILocation(line: 312, column: 3, scope: !3296)
!3323 = distinct !DISubprogram(name: "ximemdup", scope: !681, file: !681, line: 316, type: !3324, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!91, !963, !700}
!3326 = !{!3327, !3328}
!3327 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !681, line: 316, type: !963)
!3328 = !DILocalVariable(name: "s", arg: 2, scope: !3323, file: !681, line: 316, type: !700)
!3329 = !DILocation(line: 0, scope: !3323)
!3330 = !DILocation(line: 0, scope: !3003, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 318, column: 18, scope: !3323)
!3332 = !DILocation(line: 0, scope: !3010, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 55, column: 25, scope: !3003, inlinedAt: !3331)
!3334 = !DILocation(line: 57, column: 26, scope: !3010, inlinedAt: !3333)
!3335 = !DILocation(line: 0, scope: !2970, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 55, column: 10, scope: !3003, inlinedAt: !3331)
!3337 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3336)
!3338 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3336)
!3339 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3336)
!3340 = !DILocation(line: 0, scope: !3312, inlinedAt: !3341)
!3341 = distinct !DILocation(line: 318, column: 10, scope: !3323)
!3342 = !DILocation(line: 29, column: 10, scope: !3312, inlinedAt: !3341)
!3343 = !DILocation(line: 318, column: 3, scope: !3323)
!3344 = distinct !DISubprogram(name: "ximemdup0", scope: !681, file: !681, line: 325, type: !3345, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3347)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!246, !963, !700}
!3347 = !{!3348, !3349, !3350}
!3348 = !DILocalVariable(name: "p", arg: 1, scope: !3344, file: !681, line: 325, type: !963)
!3349 = !DILocalVariable(name: "s", arg: 2, scope: !3344, file: !681, line: 325, type: !700)
!3350 = !DILocalVariable(name: "result", scope: !3344, file: !681, line: 327, type: !246)
!3351 = !DILocation(line: 0, scope: !3344)
!3352 = !DILocation(line: 327, column: 30, scope: !3344)
!3353 = !DILocation(line: 0, scope: !3003, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 327, column: 18, scope: !3344)
!3355 = !DILocation(line: 0, scope: !3010, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 55, column: 25, scope: !3003, inlinedAt: !3354)
!3357 = !DILocation(line: 57, column: 26, scope: !3010, inlinedAt: !3356)
!3358 = !DILocation(line: 0, scope: !2970, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 55, column: 10, scope: !3003, inlinedAt: !3354)
!3360 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3359)
!3361 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3359)
!3362 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3359)
!3363 = !DILocation(line: 328, column: 3, scope: !3344)
!3364 = !DILocation(line: 328, column: 13, scope: !3344)
!3365 = !DILocation(line: 0, scope: !3312, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 329, column: 10, scope: !3344)
!3367 = !DILocation(line: 29, column: 10, scope: !3312, inlinedAt: !3366)
!3368 = !DILocation(line: 329, column: 3, scope: !3344)
!3369 = distinct !DISubprogram(name: "xstrdup", scope: !681, file: !681, line: 335, type: !941, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3370)
!3370 = !{!3371}
!3371 = !DILocalVariable(name: "string", arg: 1, scope: !3369, file: !681, line: 335, type: !70)
!3372 = !DILocation(line: 0, scope: !3369)
!3373 = !DILocation(line: 337, column: 27, scope: !3369)
!3374 = !DILocation(line: 337, column: 43, scope: !3369)
!3375 = !DILocation(line: 0, scope: !3296, inlinedAt: !3376)
!3376 = distinct !DILocation(line: 337, column: 10, scope: !3369)
!3377 = !DILocation(line: 0, scope: !2989, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 312, column: 18, scope: !3296, inlinedAt: !3376)
!3379 = !DILocation(line: 49, column: 25, scope: !2989, inlinedAt: !3378)
!3380 = !DILocation(line: 0, scope: !2970, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 49, column: 10, scope: !2989, inlinedAt: !3378)
!3382 = !DILocation(line: 39, column: 8, scope: !2977, inlinedAt: !3381)
!3383 = !DILocation(line: 39, column: 7, scope: !2970, inlinedAt: !3381)
!3384 = !DILocation(line: 40, column: 5, scope: !2977, inlinedAt: !3381)
!3385 = !DILocation(line: 0, scope: !3312, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 312, column: 10, scope: !3296, inlinedAt: !3376)
!3387 = !DILocation(line: 29, column: 10, scope: !3312, inlinedAt: !3386)
!3388 = !DILocation(line: 337, column: 3, scope: !3369)
!3389 = distinct !DISubprogram(name: "xalloc_die", scope: !645, file: !645, line: 32, type: !368, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !714, retainedNodes: !3390)
!3390 = !{!3391}
!3391 = !DILocalVariable(name: "__errstatus", scope: !3392, file: !645, line: 34, type: !3393)
!3392 = distinct !DILexicalBlock(scope: !3389, file: !645, line: 34, column: 3)
!3393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3394 = !DILocation(line: 34, column: 3, scope: !3392)
!3395 = !DILocation(line: 0, scope: !3392)
!3396 = !DILocation(line: 40, column: 3, scope: !3389)
!3397 = distinct !DISubprogram(name: "close_stream", scope: !717, file: !717, line: 55, type: !3398, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3434)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!97, !3400}
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3402)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3402, file: !242, line: 51, baseType: !97, size: 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3402, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3402, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3402, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3402, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3402, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3402, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3402, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3402, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3402, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3402, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3402, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3402, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3402, file: !242, line: 70, baseType: !3418, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3402, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3402, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3402, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3402, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3402, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3402, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3402, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3402, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3402, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3402, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3402, file: !242, line: 93, baseType: !3418, size: 64, offset: 1344)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3402, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3402, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3402, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3402, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3434 = !{!3435, !3436, !3438, !3439}
!3435 = !DILocalVariable(name: "stream", arg: 1, scope: !3397, file: !717, line: 55, type: !3400)
!3436 = !DILocalVariable(name: "some_pending", scope: !3397, file: !717, line: 57, type: !3437)
!3437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3438 = !DILocalVariable(name: "prev_fail", scope: !3397, file: !717, line: 58, type: !3437)
!3439 = !DILocalVariable(name: "fclose_fail", scope: !3397, file: !717, line: 59, type: !3437)
!3440 = !DILocation(line: 0, scope: !3397)
!3441 = !DILocation(line: 57, column: 30, scope: !3397)
!3442 = !DILocalVariable(name: "__stream", arg: 1, scope: !3443, file: !1211, line: 135, type: !3400)
!3443 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1211, file: !1211, line: 135, type: !3398, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !716, retainedNodes: !3444)
!3444 = !{!3442}
!3445 = !DILocation(line: 0, scope: !3443, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 58, column: 27, scope: !3397)
!3447 = !DILocation(line: 137, column: 10, scope: !3443, inlinedAt: !3446)
!3448 = !{!1220, !815, i64 0}
!3449 = !DILocation(line: 58, column: 43, scope: !3397)
!3450 = !DILocation(line: 59, column: 29, scope: !3397)
!3451 = !DILocation(line: 59, column: 45, scope: !3397)
!3452 = !DILocation(line: 69, column: 17, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3397, file: !717, line: 69, column: 7)
!3454 = !DILocation(line: 57, column: 50, scope: !3397)
!3455 = !DILocation(line: 69, column: 33, scope: !3453)
!3456 = !DILocation(line: 69, column: 53, scope: !3453)
!3457 = !DILocation(line: 69, column: 59, scope: !3453)
!3458 = !DILocation(line: 69, column: 7, scope: !3397)
!3459 = !DILocation(line: 71, column: 11, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3453, file: !717, line: 70, column: 5)
!3461 = !DILocation(line: 72, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !717, line: 71, column: 11)
!3463 = !DILocation(line: 72, column: 15, scope: !3462)
!3464 = !DILocation(line: 77, column: 1, scope: !3397)
!3465 = !DISubprogram(name: "__fpending", scope: !3466, file: !3466, line: 75, type: !3467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3466 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!99, !3400}
!3469 = distinct !DISubprogram(name: "rpl_fclose", scope: !719, file: !719, line: 58, type: !3470, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !718, retainedNodes: !3506)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!97, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3474)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3475)
!3475 = !{!3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3474, file: !242, line: 51, baseType: !97, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3474, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3474, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3474, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3474, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3474, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3474, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3474, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3474, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3474, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3474, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3474, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3474, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3474, file: !242, line: 70, baseType: !3490, size: 64, offset: 832)
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3474, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3474, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3474, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3474, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3474, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3474, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3474, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3474, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3474, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3474, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3474, file: !242, line: 93, baseType: !3490, size: 64, offset: 1344)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3474, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3474, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3474, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3474, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3506 = !{!3507, !3508, !3509, !3510}
!3507 = !DILocalVariable(name: "fp", arg: 1, scope: !3469, file: !719, line: 58, type: !3472)
!3508 = !DILocalVariable(name: "saved_errno", scope: !3469, file: !719, line: 60, type: !97)
!3509 = !DILocalVariable(name: "fd", scope: !3469, file: !719, line: 63, type: !97)
!3510 = !DILocalVariable(name: "result", scope: !3469, file: !719, line: 74, type: !97)
!3511 = !DILocation(line: 0, scope: !3469)
!3512 = !DILocation(line: 63, column: 12, scope: !3469)
!3513 = !DILocation(line: 64, column: 10, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3469, file: !719, line: 64, column: 7)
!3515 = !DILocation(line: 64, column: 7, scope: !3469)
!3516 = !DILocation(line: 65, column: 12, scope: !3514)
!3517 = !DILocation(line: 65, column: 5, scope: !3514)
!3518 = !DILocation(line: 70, column: 9, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3469, file: !719, line: 70, column: 7)
!3520 = !DILocation(line: 70, column: 23, scope: !3519)
!3521 = !DILocation(line: 70, column: 33, scope: !3519)
!3522 = !DILocation(line: 70, column: 26, scope: !3519)
!3523 = !DILocation(line: 70, column: 59, scope: !3519)
!3524 = !DILocation(line: 71, column: 7, scope: !3519)
!3525 = !DILocation(line: 71, column: 10, scope: !3519)
!3526 = !DILocation(line: 70, column: 7, scope: !3469)
!3527 = !DILocation(line: 100, column: 12, scope: !3469)
!3528 = !DILocation(line: 105, column: 7, scope: !3469)
!3529 = !DILocation(line: 72, column: 19, scope: !3519)
!3530 = !DILocation(line: 105, column: 19, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3469, file: !719, line: 105, column: 7)
!3532 = !DILocation(line: 107, column: 13, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3531, file: !719, line: 106, column: 5)
!3534 = !DILocation(line: 109, column: 5, scope: !3533)
!3535 = !DILocation(line: 112, column: 1, scope: !3469)
!3536 = !DISubprogram(name: "fileno", scope: !809, file: !809, line: 809, type: !3470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3537 = !DISubprogram(name: "fclose", scope: !809, file: !809, line: 178, type: !3470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3538 = !DISubprogram(name: "__freading", scope: !3466, file: !3466, line: 51, type: !3470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3539 = !DISubprogram(name: "lseek", scope: !1036, file: !1036, line: 339, type: !3540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!265, !97, !265, !97}
!3542 = distinct !DISubprogram(name: "rpl_fflush", scope: !721, file: !721, line: 130, type: !3543, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3579)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!97, !3545}
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3547)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3548)
!3548 = !{!3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3547, file: !242, line: 51, baseType: !97, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3547, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3547, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3547, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3547, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3547, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3547, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3547, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3547, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3547, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3547, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3547, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3547, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3547, file: !242, line: 70, baseType: !3563, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3547, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3547, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3547, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3547, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3547, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3547, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3547, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3547, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3547, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3547, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3547, file: !242, line: 93, baseType: !3563, size: 64, offset: 1344)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3547, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3547, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3547, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3547, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3579 = !{!3580}
!3580 = !DILocalVariable(name: "stream", arg: 1, scope: !3542, file: !721, line: 130, type: !3545)
!3581 = !DILocation(line: 0, scope: !3542)
!3582 = !DILocation(line: 151, column: 14, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3542, file: !721, line: 151, column: 7)
!3584 = !DILocation(line: 151, column: 22, scope: !3583)
!3585 = !DILocation(line: 151, column: 27, scope: !3583)
!3586 = !DILocation(line: 151, column: 7, scope: !3542)
!3587 = !DILocation(line: 152, column: 12, scope: !3583)
!3588 = !DILocation(line: 152, column: 5, scope: !3583)
!3589 = !DILocalVariable(name: "fp", arg: 1, scope: !3590, file: !721, line: 42, type: !3545)
!3590 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !721, file: !721, line: 42, type: !3591, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !3545}
!3593 = !{!3589}
!3594 = !DILocation(line: 0, scope: !3590, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 157, column: 3, scope: !3542)
!3596 = !DILocation(line: 44, column: 12, scope: !3597, inlinedAt: !3595)
!3597 = distinct !DILexicalBlock(scope: !3590, file: !721, line: 44, column: 7)
!3598 = !DILocation(line: 44, column: 19, scope: !3597, inlinedAt: !3595)
!3599 = !DILocation(line: 44, column: 7, scope: !3590, inlinedAt: !3595)
!3600 = !DILocation(line: 46, column: 5, scope: !3597, inlinedAt: !3595)
!3601 = !DILocation(line: 159, column: 10, scope: !3542)
!3602 = !DILocation(line: 159, column: 3, scope: !3542)
!3603 = !DILocation(line: 236, column: 1, scope: !3542)
!3604 = !DISubprogram(name: "fflush", scope: !809, file: !809, line: 230, type: !3543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3605 = distinct !DISubprogram(name: "rpl_fseeko", scope: !723, file: !723, line: 28, type: !3606, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3643)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!97, !3608, !3642, !97}
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3610)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3610, file: !242, line: 51, baseType: !97, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3610, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3610, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3610, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3610, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3610, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3610, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3610, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3610, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3610, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3610, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3610, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3610, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3610, file: !242, line: 70, baseType: !3626, size: 64, offset: 832)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3610, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3610, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3610, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3610, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3610, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3610, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3610, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3610, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3610, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3610, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3610, file: !242, line: 93, baseType: !3626, size: 64, offset: 1344)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3610, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3610, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3610, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3610, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !809, line: 63, baseType: !265)
!3643 = !{!3644, !3645, !3646, !3647}
!3644 = !DILocalVariable(name: "fp", arg: 1, scope: !3605, file: !723, line: 28, type: !3608)
!3645 = !DILocalVariable(name: "offset", arg: 2, scope: !3605, file: !723, line: 28, type: !3642)
!3646 = !DILocalVariable(name: "whence", arg: 3, scope: !3605, file: !723, line: 28, type: !97)
!3647 = !DILocalVariable(name: "pos", scope: !3648, file: !723, line: 123, type: !3642)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !723, line: 119, column: 5)
!3649 = distinct !DILexicalBlock(scope: !3605, file: !723, line: 55, column: 7)
!3650 = !DILocation(line: 0, scope: !3605)
!3651 = !DILocation(line: 55, column: 12, scope: !3649)
!3652 = !{!1220, !754, i64 16}
!3653 = !DILocation(line: 55, column: 33, scope: !3649)
!3654 = !{!1220, !754, i64 8}
!3655 = !DILocation(line: 55, column: 25, scope: !3649)
!3656 = !DILocation(line: 56, column: 7, scope: !3649)
!3657 = !DILocation(line: 56, column: 15, scope: !3649)
!3658 = !DILocation(line: 56, column: 37, scope: !3649)
!3659 = !{!1220, !754, i64 32}
!3660 = !DILocation(line: 56, column: 29, scope: !3649)
!3661 = !DILocation(line: 57, column: 7, scope: !3649)
!3662 = !DILocation(line: 57, column: 15, scope: !3649)
!3663 = !{!1220, !754, i64 72}
!3664 = !DILocation(line: 57, column: 29, scope: !3649)
!3665 = !DILocation(line: 55, column: 7, scope: !3605)
!3666 = !DILocation(line: 123, column: 26, scope: !3648)
!3667 = !DILocation(line: 123, column: 19, scope: !3648)
!3668 = !DILocation(line: 0, scope: !3648)
!3669 = !DILocation(line: 124, column: 15, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3648, file: !723, line: 124, column: 11)
!3671 = !DILocation(line: 124, column: 11, scope: !3648)
!3672 = !DILocation(line: 135, column: 19, scope: !3648)
!3673 = !DILocation(line: 136, column: 12, scope: !3648)
!3674 = !DILocation(line: 136, column: 20, scope: !3648)
!3675 = !{!1220, !1221, i64 144}
!3676 = !DILocation(line: 167, column: 7, scope: !3648)
!3677 = !DILocation(line: 169, column: 10, scope: !3605)
!3678 = !DILocation(line: 169, column: 3, scope: !3605)
!3679 = !DILocation(line: 170, column: 1, scope: !3605)
!3680 = !DISubprogram(name: "fseeko", scope: !809, file: !809, line: 736, type: !3681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!97, !3608, !265, !97}
!3683 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !652, file: !652, line: 100, type: !3684, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3687)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!99, !1482, !70, !99, !3686}
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!3687 = !{!3688, !3689, !3690, !3691, !3692}
!3688 = !DILocalVariable(name: "pwc", arg: 1, scope: !3683, file: !652, line: 100, type: !1482)
!3689 = !DILocalVariable(name: "s", arg: 2, scope: !3683, file: !652, line: 100, type: !70)
!3690 = !DILocalVariable(name: "n", arg: 3, scope: !3683, file: !652, line: 100, type: !99)
!3691 = !DILocalVariable(name: "ps", arg: 4, scope: !3683, file: !652, line: 100, type: !3686)
!3692 = !DILocalVariable(name: "ret", scope: !3683, file: !652, line: 130, type: !99)
!3693 = !DILocation(line: 0, scope: !3683)
!3694 = !DILocation(line: 105, column: 9, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3683, file: !652, line: 105, column: 7)
!3696 = !DILocation(line: 105, column: 7, scope: !3683)
!3697 = !DILocation(line: 117, column: 10, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3683, file: !652, line: 117, column: 7)
!3699 = !DILocation(line: 117, column: 7, scope: !3683)
!3700 = !DILocation(line: 130, column: 16, scope: !3683)
!3701 = !DILocation(line: 135, column: 11, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3683, file: !652, line: 135, column: 7)
!3703 = !DILocation(line: 135, column: 25, scope: !3702)
!3704 = !DILocation(line: 135, column: 30, scope: !3702)
!3705 = !DILocation(line: 135, column: 7, scope: !3683)
!3706 = !DILocalVariable(name: "ps", arg: 1, scope: !3707, file: !1455, line: 1135, type: !3686)
!3707 = distinct !DISubprogram(name: "mbszero", scope: !1455, file: !1455, line: 1135, type: !3708, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3710)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{null, !3686}
!3710 = !{!3706}
!3711 = !DILocation(line: 0, scope: !3707, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 137, column: 5, scope: !3702)
!3713 = !DILocalVariable(name: "__dest", arg: 1, scope: !3714, file: !1464, line: 57, type: !91)
!3714 = distinct !DISubprogram(name: "memset", scope: !1464, file: !1464, line: 57, type: !1465, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !655, retainedNodes: !3715)
!3715 = !{!3713, !3716, !3717}
!3716 = !DILocalVariable(name: "__ch", arg: 2, scope: !3714, file: !1464, line: 57, type: !97)
!3717 = !DILocalVariable(name: "__len", arg: 3, scope: !3714, file: !1464, line: 57, type: !99)
!3718 = !DILocation(line: 0, scope: !3714, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 1137, column: 3, scope: !3707, inlinedAt: !3712)
!3720 = !DILocation(line: 59, column: 10, scope: !3714, inlinedAt: !3719)
!3721 = !DILocation(line: 137, column: 5, scope: !3702)
!3722 = !DILocation(line: 138, column: 11, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3683, file: !652, line: 138, column: 7)
!3724 = !DILocation(line: 138, column: 7, scope: !3683)
!3725 = !DILocation(line: 139, column: 5, scope: !3723)
!3726 = !DILocation(line: 143, column: 26, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3683, file: !652, line: 143, column: 7)
!3728 = !DILocation(line: 143, column: 41, scope: !3727)
!3729 = !DILocation(line: 143, column: 7, scope: !3683)
!3730 = !DILocation(line: 145, column: 15, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !652, line: 145, column: 11)
!3732 = distinct !DILexicalBlock(scope: !3727, file: !652, line: 144, column: 5)
!3733 = !DILocation(line: 145, column: 11, scope: !3732)
!3734 = !DILocation(line: 146, column: 32, scope: !3731)
!3735 = !DILocation(line: 146, column: 16, scope: !3731)
!3736 = !DILocation(line: 146, column: 14, scope: !3731)
!3737 = !DILocation(line: 146, column: 9, scope: !3731)
!3738 = !DILocation(line: 286, column: 1, scope: !3683)
!3739 = !DISubprogram(name: "mbsinit", scope: !3740, file: !3740, line: 293, type: !3741, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3740 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!97, !3743}
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!3745 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !725, file: !725, line: 27, type: !2954, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3746)
!3746 = !{!3747, !3748, !3749, !3750}
!3747 = !DILocalVariable(name: "ptr", arg: 1, scope: !3745, file: !725, line: 27, type: !91)
!3748 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3745, file: !725, line: 27, type: !99)
!3749 = !DILocalVariable(name: "size", arg: 3, scope: !3745, file: !725, line: 27, type: !99)
!3750 = !DILocalVariable(name: "nbytes", scope: !3745, file: !725, line: 29, type: !99)
!3751 = !DILocation(line: 0, scope: !3745)
!3752 = !DILocation(line: 30, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3745, file: !725, line: 30, column: 7)
!3754 = !DILocalVariable(name: "ptr", arg: 1, scope: !3755, file: !3046, line: 2057, type: !91)
!3755 = distinct !DISubprogram(name: "rpl_realloc", scope: !3046, file: !3046, line: 2057, type: !3038, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3756)
!3756 = !{!3754, !3757}
!3757 = !DILocalVariable(name: "size", arg: 2, scope: !3755, file: !3046, line: 2057, type: !99)
!3758 = !DILocation(line: 0, scope: !3755, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 37, column: 10, scope: !3745)
!3760 = !DILocation(line: 2059, column: 24, scope: !3755, inlinedAt: !3759)
!3761 = !DILocation(line: 2059, column: 10, scope: !3755, inlinedAt: !3759)
!3762 = !DILocation(line: 37, column: 3, scope: !3745)
!3763 = !DILocation(line: 32, column: 7, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3753, file: !725, line: 31, column: 5)
!3765 = !DILocation(line: 32, column: 13, scope: !3764)
!3766 = !DILocation(line: 33, column: 7, scope: !3764)
!3767 = !DILocation(line: 38, column: 1, scope: !3745)
!3768 = distinct !DISubprogram(name: "hard_locale", scope: !670, file: !670, line: 28, type: !3769, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!225, !97}
!3771 = !{!3772, !3773}
!3772 = !DILocalVariable(name: "category", arg: 1, scope: !3768, file: !670, line: 28, type: !97)
!3773 = !DILocalVariable(name: "locale", scope: !3768, file: !670, line: 30, type: !3774)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3775)
!3775 = !{!3776}
!3776 = !DISubrange(count: 257)
!3777 = !DILocation(line: 0, scope: !3768)
!3778 = !DILocation(line: 30, column: 3, scope: !3768)
!3779 = !DILocation(line: 30, column: 8, scope: !3768)
!3780 = !DILocation(line: 32, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3768, file: !670, line: 32, column: 7)
!3782 = !DILocation(line: 32, column: 7, scope: !3768)
!3783 = !DILocalVariable(name: "__s1", arg: 1, scope: !3784, file: !827, line: 1359, type: !70)
!3784 = distinct !DISubprogram(name: "streq", scope: !827, file: !827, line: 1359, type: !828, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3785)
!3785 = !{!3783, !3786}
!3786 = !DILocalVariable(name: "__s2", arg: 2, scope: !3784, file: !827, line: 1359, type: !70)
!3787 = !DILocation(line: 0, scope: !3784, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 35, column: 9, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3768, file: !670, line: 35, column: 7)
!3790 = !DILocation(line: 1361, column: 11, scope: !3784, inlinedAt: !3788)
!3791 = !DILocation(line: 35, column: 29, scope: !3789)
!3792 = !DILocation(line: 0, scope: !3784, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 35, column: 32, scope: !3789)
!3794 = !DILocation(line: 1361, column: 11, scope: !3784, inlinedAt: !3793)
!3795 = !DILocation(line: 1361, column: 10, scope: !3784, inlinedAt: !3793)
!3796 = !DILocation(line: 35, column: 7, scope: !3768)
!3797 = !DILocation(line: 46, column: 3, scope: !3768)
!3798 = !DILocation(line: 47, column: 1, scope: !3768)
!3799 = distinct !DISubprogram(name: "setlocale_null_r", scope: !732, file: !732, line: 154, type: !3800, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!97, !97, !246, !99}
!3802 = !{!3803, !3804, !3805}
!3803 = !DILocalVariable(name: "category", arg: 1, scope: !3799, file: !732, line: 154, type: !97)
!3804 = !DILocalVariable(name: "buf", arg: 2, scope: !3799, file: !732, line: 154, type: !246)
!3805 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3799, file: !732, line: 154, type: !99)
!3806 = !DILocation(line: 0, scope: !3799)
!3807 = !DILocation(line: 159, column: 10, scope: !3799)
!3808 = !DILocation(line: 159, column: 3, scope: !3799)
!3809 = distinct !DISubprogram(name: "setlocale_null", scope: !732, file: !732, line: 186, type: !3810, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!70, !97}
!3812 = !{!3813}
!3813 = !DILocalVariable(name: "category", arg: 1, scope: !3809, file: !732, line: 186, type: !97)
!3814 = !DILocation(line: 0, scope: !3809)
!3815 = !DILocation(line: 189, column: 10, scope: !3809)
!3816 = !DILocation(line: 189, column: 3, scope: !3809)
!3817 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !734, file: !734, line: 35, type: !3810, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3818)
!3818 = !{!3819, !3820}
!3819 = !DILocalVariable(name: "category", arg: 1, scope: !3817, file: !734, line: 35, type: !97)
!3820 = !DILocalVariable(name: "result", scope: !3817, file: !734, line: 37, type: !70)
!3821 = !DILocation(line: 0, scope: !3817)
!3822 = !DILocation(line: 37, column: 24, scope: !3817)
!3823 = !DILocation(line: 62, column: 3, scope: !3817)
!3824 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !734, file: !734, line: 66, type: !3800, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3825)
!3825 = !{!3826, !3827, !3828, !3829, !3830}
!3826 = !DILocalVariable(name: "category", arg: 1, scope: !3824, file: !734, line: 66, type: !97)
!3827 = !DILocalVariable(name: "buf", arg: 2, scope: !3824, file: !734, line: 66, type: !246)
!3828 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3824, file: !734, line: 66, type: !99)
!3829 = !DILocalVariable(name: "result", scope: !3824, file: !734, line: 111, type: !70)
!3830 = !DILocalVariable(name: "length", scope: !3831, file: !734, line: 125, type: !99)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !734, line: 124, column: 5)
!3832 = distinct !DILexicalBlock(scope: !3824, file: !734, line: 113, column: 7)
!3833 = !DILocation(line: 0, scope: !3824)
!3834 = !DILocation(line: 0, scope: !3817, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 111, column: 24, scope: !3824)
!3836 = !DILocation(line: 37, column: 24, scope: !3817, inlinedAt: !3835)
!3837 = !DILocation(line: 113, column: 14, scope: !3832)
!3838 = !DILocation(line: 113, column: 7, scope: !3824)
!3839 = !DILocation(line: 116, column: 19, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !734, line: 116, column: 11)
!3841 = distinct !DILexicalBlock(scope: !3832, file: !734, line: 114, column: 5)
!3842 = !DILocation(line: 116, column: 11, scope: !3841)
!3843 = !DILocation(line: 120, column: 16, scope: !3840)
!3844 = !DILocation(line: 120, column: 9, scope: !3840)
!3845 = !DILocation(line: 125, column: 23, scope: !3831)
!3846 = !DILocation(line: 0, scope: !3831)
!3847 = !DILocation(line: 126, column: 18, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3831, file: !734, line: 126, column: 11)
!3849 = !DILocation(line: 126, column: 11, scope: !3831)
!3850 = !DILocation(line: 128, column: 39, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !734, line: 127, column: 9)
!3852 = !DILocalVariable(name: "__dest", arg: 1, scope: !3853, file: !1464, line: 26, type: !3315)
!3853 = distinct !DISubprogram(name: "memcpy", scope: !1464, file: !1464, line: 26, type: !3313, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3854)
!3854 = !{!3852, !3855, !3856}
!3855 = !DILocalVariable(name: "__src", arg: 2, scope: !3853, file: !1464, line: 26, type: !962)
!3856 = !DILocalVariable(name: "__len", arg: 3, scope: !3853, file: !1464, line: 26, type: !99)
!3857 = !DILocation(line: 0, scope: !3853, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 128, column: 11, scope: !3851)
!3859 = !DILocation(line: 29, column: 10, scope: !3853, inlinedAt: !3858)
!3860 = !DILocation(line: 129, column: 11, scope: !3851)
!3861 = !DILocation(line: 133, column: 23, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !3863, file: !734, line: 133, column: 15)
!3863 = distinct !DILexicalBlock(scope: !3848, file: !734, line: 132, column: 9)
!3864 = !DILocation(line: 133, column: 15, scope: !3863)
!3865 = !DILocation(line: 138, column: 44, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3862, file: !734, line: 134, column: 13)
!3867 = !DILocation(line: 0, scope: !3853, inlinedAt: !3868)
!3868 = distinct !DILocation(line: 138, column: 15, scope: !3866)
!3869 = !DILocation(line: 29, column: 10, scope: !3853, inlinedAt: !3868)
!3870 = !DILocation(line: 139, column: 15, scope: !3866)
!3871 = !DILocation(line: 139, column: 32, scope: !3866)
!3872 = !DILocation(line: 140, column: 13, scope: !3866)
!3873 = !DILocation(line: 0, scope: !3832)
!3874 = !DILocation(line: 145, column: 1, scope: !3824)
