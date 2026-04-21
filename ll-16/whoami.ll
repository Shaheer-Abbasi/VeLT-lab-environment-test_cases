; ModuleID = 'src/whoami.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }

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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !316
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !308
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !310
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !312
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !314
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !318
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !324
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !361
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !326
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !351
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !353
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !355
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !357
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !359
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !363
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !365
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !370
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !375
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !378
@optind = external local_unnamed_addr global i32, align 4
@.str.1.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !382
@.str.2.41 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !384
@.str.3.42 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !386
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !398
@.str.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !404
@.str.1.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !406
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !408
@.str.54 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !439
@.str.1.55 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !442
@.str.2.56 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !444
@.str.3.57 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !449
@.str.4.58 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !451
@.str.5.59 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !453
@.str.6.60 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !455
@.str.7.61 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !457
@.str.8.62 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !459
@.str.9.63 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !461
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.54, ptr @.str.1.55, ptr @.str.2.56, ptr @.str.3.57, ptr @.str.4.58, ptr @.str.5.59, ptr @.str.6.60, ptr @.str.7.61, ptr @.str.8.62, ptr @.str.9.63, ptr null], align 8, !dbg !463
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !488
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !502
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !540
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !547
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !504
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !549
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !492
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !509
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !511
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !513
@.str.13.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !515
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !517
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !555
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !558
@.str.2.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !560
@.str.3.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !562
@.str.4.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !564
@.str.5.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !566
@.str.6.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !571
@.str.7.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !576
@.str.8.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !578
@.str.9.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !580
@.str.10.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !585
@.str.11.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !590
@.str.12.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !595
@.str.13.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !597
@.str.14.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !602
@.str.15.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !607
@.str.16.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !612
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.93 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !617
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !619
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !621
@.str.20.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !623
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !625
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !627
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !629
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !634
@exit_failure = dso_local global i32 1, align 4, !dbg !642
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !648
@.str.1.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !651
@.str.2.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !653
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !655
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !658
@.str.123 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !673
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !676

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !752, metadata !DIExpression()), !dbg !753
  %2 = icmp eq i32 %0, 0, !dbg !754
  br i1 %2, label %8, label %3, !dbg !756

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !757, !tbaa !759
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !757
  %6 = load ptr, ptr @program_name, align 8, !dbg !757, !tbaa !759
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !757
  br label %31, !dbg !757

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !763
  %10 = load ptr, ptr @program_name, align 8, !dbg !763, !tbaa !759
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #36, !dbg !763
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !765
  %13 = load ptr, ptr @stdout, align 8, !dbg !765, !tbaa !759
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !765
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !766
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !766
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !767
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !767
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !768, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !780, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr poison, metadata !780, metadata !DIExpression()), !dbg !785
  tail call void @emit_bug_reporting_address() #36, !dbg !787
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !788
  call void @llvm.dbg.value(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !785
  %18 = icmp eq ptr %17, null, !dbg !789
  br i1 %18, label %26, label %19, !dbg !791

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #37, !dbg !792
  %21 = icmp eq i32 %20, 0, !dbg !792
  br i1 %21, label %26, label %22, !dbg !793

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #36, !dbg !794
  %24 = load ptr, ptr @stdout, align 8, !dbg !794, !tbaa !759
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !794
  br label %26, !dbg !796

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !780, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !784, metadata !DIExpression()), !dbg !785
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !797
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #36, !dbg !797
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !798
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #36, !dbg !798
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !799
  unreachable, !dbg !799
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !800 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !805 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !811 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !814 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !219, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr %0, metadata !220, metadata !DIExpression()), !dbg !817
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !818, !tbaa !819
  %3 = icmp eq i32 %2, -1, !dbg !821
  br i1 %3, label %4, label %16, !dbg !822

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #36, !dbg !823
  call void @llvm.dbg.value(metadata ptr %5, metadata !221, metadata !DIExpression()), !dbg !824
  %6 = icmp eq ptr %5, null, !dbg !825
  br i1 %6, label %14, label %7, !dbg !826

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !827, !tbaa !828
  %9 = icmp eq i8 %8, 0, !dbg !827
  br i1 %9, label %14, label %10, !dbg !829

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !830, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !836, metadata !DIExpression()), !dbg !837
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #37, !dbg !839
  %12 = icmp eq i32 %11, 0, !dbg !840
  %13 = zext i1 %12 to i32, !dbg !829
  br label %14, !dbg !829

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !841, !tbaa !819
  br label %16, !dbg !842

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !843
  %18 = icmp eq i32 %17, 0, !dbg !843
  br i1 %18, label %22, label %19, !dbg !845

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !846, !tbaa !759
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !846
  br label %122, !dbg !848

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !224, metadata !DIExpression()), !dbg !817
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #37, !dbg !849
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !850
  call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !817
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !851
  call void @llvm.dbg.value(metadata ptr %25, metadata !227, metadata !DIExpression()), !dbg !817
  %26 = icmp eq ptr %25, null, !dbg !852
  br i1 %26, label %54, label %27, !dbg !853

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !854
  br i1 %28, label %54, label %29, !dbg !855

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !228, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !856
  %30 = icmp ult ptr %24, %25, !dbg !857
  br i1 %30, label %31, label %52, !dbg !858

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !817
  %33 = load ptr, ptr %32, align 8, !tbaa !759
  br label %34, !dbg !858

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !228, metadata !DIExpression()), !dbg !856
  call void @llvm.dbg.value(metadata i64 %36, metadata !232, metadata !DIExpression()), !dbg !856
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !859
  call void @llvm.dbg.value(metadata ptr %37, metadata !228, metadata !DIExpression()), !dbg !856
  %38 = load i8, ptr %35, align 1, !dbg !859, !tbaa !828
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !859
  %41 = load i16, ptr %40, align 2, !dbg !859, !tbaa !860
  %42 = freeze i16 %41, !dbg !862
  %43 = lshr i16 %42, 13, !dbg !862
  %44 = and i16 %43, 1, !dbg !862
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !863
  call void @llvm.dbg.value(metadata i64 %46, metadata !232, metadata !DIExpression()), !dbg !856
  %47 = icmp ult ptr %37, %25, !dbg !857
  %48 = icmp ult i64 %46, 2, !dbg !864
  %49 = select i1 %47, i1 %48, i1 false, !dbg !864
  br i1 %49, label %34, label %50, !dbg !858, !llvm.loop !865

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !867
  br i1 %51, label %52, label %54, !dbg !869

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !869

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !817
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !224, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr %55, metadata !227, metadata !DIExpression()), !dbg !817
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.16) #37, !dbg !870
  call void @llvm.dbg.value(metadata i64 %57, metadata !233, metadata !DIExpression()), !dbg !817
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !871
  call void @llvm.dbg.value(metadata ptr %58, metadata !234, metadata !DIExpression()), !dbg !817
  br label %59, !dbg !872

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !817
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !224, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.value(metadata ptr %60, metadata !234, metadata !DIExpression()), !dbg !817
  %62 = load i8, ptr %60, align 1, !dbg !873, !tbaa !828
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !874

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !875
  %65 = load i8, ptr %64, align 1, !dbg !878, !tbaa !828
  %66 = icmp ne i8 %65, 45, !dbg !879
  %67 = select i1 %66, i1 %61, i1 false, !dbg !880
  br label %68, !dbg !880

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !224, metadata !DIExpression()), !dbg !817
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !881
  %71 = load ptr, ptr %70, align 8, !dbg !881, !tbaa !759
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !881
  %74 = load i16, ptr %73, align 2, !dbg !881, !tbaa !860
  %75 = and i16 %74, 8192, !dbg !881
  %76 = icmp eq i16 %75, 0, !dbg !881
  br i1 %76, label %90, label %77, !dbg !883

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !884
  br i1 %78, label %92, label %79, !dbg !887

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !888
  %81 = load i8, ptr %80, align 1, !dbg !888, !tbaa !828
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !888
  %84 = load i16, ptr %83, align 2, !dbg !888, !tbaa !860
  %85 = and i16 %84, 8192, !dbg !888
  %86 = icmp eq i16 %85, 0, !dbg !888
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !889
  br i1 %89, label %90, label %92, !dbg !889

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !890
  call void @llvm.dbg.value(metadata ptr %91, metadata !234, metadata !DIExpression()), !dbg !817
  br label %59, !dbg !872, !llvm.loop !891

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !893
  %94 = load ptr, ptr @stdout, align 8, !dbg !893, !tbaa !759
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !291, metadata !DIExpression()), !dbg !817
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #37, !dbg !914
  %97 = icmp eq i32 %96, 0, !dbg !914
  br i1 %97, label %101, label %98, !dbg !916

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #37, !dbg !917
  %100 = icmp eq i32 %99, 0, !dbg !917
  br i1 %100, label %101, label %104, !dbg !918

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !919
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !919
  br label %107, !dbg !921

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !922
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !922
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !759
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %108), !dbg !924
  %110 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !759
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %110), !dbg !925
  %112 = ptrtoint ptr %60 to i64, !dbg !926
  %113 = sub i64 %112, %93, !dbg !926
  %114 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !759
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !926
  %116 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !759
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %116), !dbg !927
  %118 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !759
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %118), !dbg !928
  %120 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !759
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !929
  br label %122, !dbg !930

122:                                              ; preds = %107, %19
  ret void, !dbg !930
}

; Function Attrs: nounwind
declare !dbg !931 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !935 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !939 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !941 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !944 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !947 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !950 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !953 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !959 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !960 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !966 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !971, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata ptr %1, metadata !972, metadata !DIExpression()), !dbg !991
  call void @llvm.dbg.value(metadata i32 -1, metadata !973, metadata !DIExpression()), !dbg !991
  %3 = load ptr, ptr %1, align 8, !dbg !992, !tbaa !759
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !993
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !994
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !995
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !996
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !997
  %8 = load ptr, ptr @Version, align 8, !dbg !998, !tbaa !759
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !999
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !1000
  %10 = load i32, ptr @optind, align 4, !dbg !1001, !tbaa !819
  %11 = icmp eq i32 %10, %0, !dbg !1003
  br i1 %11, label %19, label %12, !dbg !1004

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !1005
  %14 = load i32, ptr @optind, align 4, !dbg !1005, !tbaa !819
  %15 = sext i32 %14 to i64, !dbg !1005
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1005
  %17 = load ptr, ptr %16, align 8, !dbg !1005, !tbaa !759
  %18 = tail call ptr @quote(ptr noundef %17) #36, !dbg !1005
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #36, !dbg !1005
  tail call void @usage(i32 noundef 1) #40, !dbg !1007
  unreachable, !dbg !1007

19:                                               ; preds = %2
  %20 = tail call ptr @__errno_location() #39, !dbg !1008
  store i32 0, ptr %20, align 4, !dbg !1009, !tbaa !819
  %21 = tail call i32 @geteuid() #36, !dbg !1010
  call void @llvm.dbg.value(metadata i32 %21, metadata !977, metadata !DIExpression()), !dbg !991
  %22 = icmp eq i32 %21, -1, !dbg !1011
  br i1 %22, label %23, label %26, !dbg !1012

23:                                               ; preds = %19
  %24 = load i32, ptr %20, align 4, !dbg !1013, !tbaa !819
  %25 = icmp eq i32 %24, 0, !dbg !1013
  br i1 %25, label %26, label %31, !dbg !1014

26:                                               ; preds = %19, %23
  %27 = tail call ptr @getpwuid(i32 noundef %21) #36, !dbg !1015
  call void @llvm.dbg.value(metadata ptr %27, metadata !978, metadata !DIExpression()), !dbg !991
  %28 = icmp eq ptr %27, null, !dbg !1016
  br i1 %28, label %29, label %35, !dbg !1018

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4, !dbg !1019, !tbaa !819
  br label %31, !dbg !1018

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ %24, %23 ], !dbg !1019
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !1019
  %34 = zext i32 %21 to i64, !dbg !1019
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %32, ptr noundef %33, i64 noundef %34) #36, !dbg !1019
  unreachable, !dbg !1019

35:                                               ; preds = %26
  %36 = load ptr, ptr %27, align 8, !dbg !1020, !tbaa !1021
  %37 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %36), !dbg !1023
  ret i32 0, !dbg !1024
}

; Function Attrs: nounwind
declare !dbg !1025 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1028 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1029 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1032 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !1036 i32 @geteuid() local_unnamed_addr #2

declare !dbg !1040 ptr @getpwuid(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1043 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1046 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1048, metadata !DIExpression()), !dbg !1049
  store ptr %0, ptr @file_name, align 8, !dbg !1050, !tbaa !759
  ret void, !dbg !1051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1052 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1058, !tbaa !1059
  ret void, !dbg !1061
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1062 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1067, !tbaa !759
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1068
  %3 = icmp eq i32 %2, 0, !dbg !1069
  br i1 %3, label %22, label %4, !dbg !1070

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1071, !tbaa !1059, !range !1072, !noundef !804
  %6 = icmp eq i8 %5, 0, !dbg !1071
  br i1 %6, label %11, label %7, !dbg !1073

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1074
  %9 = load i32, ptr %8, align 4, !dbg !1074, !tbaa !819
  %10 = icmp eq i32 %9, 32, !dbg !1075
  br i1 %10, label %22, label %11, !dbg !1076

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #36, !dbg !1077
  call void @llvm.dbg.value(metadata ptr %12, metadata !1064, metadata !DIExpression()), !dbg !1078
  %13 = load ptr, ptr @file_name, align 8, !dbg !1079, !tbaa !759
  %14 = icmp eq ptr %13, null, !dbg !1079
  %15 = tail call ptr @__errno_location() #39, !dbg !1081
  %16 = load i32, ptr %15, align 4, !dbg !1081, !tbaa !819
  br i1 %14, label %19, label %17, !dbg !1082

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1083
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #36, !dbg !1083
  br label %20, !dbg !1083

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #36, !dbg !1084
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1085, !tbaa !819
  tail call void @_exit(i32 noundef %21) #38, !dbg !1086
  unreachable, !dbg !1086

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1087, !tbaa !759
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1089
  %25 = icmp eq i32 %24, 0, !dbg !1090
  br i1 %25, label %28, label %26, !dbg !1091

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1092, !tbaa !819
  tail call void @_exit(i32 noundef %27) #38, !dbg !1093
  unreachable, !dbg !1093

28:                                               ; preds = %22
  ret void, !dbg !1094
}

; Function Attrs: noreturn
declare !dbg !1095 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1096 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1100, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i32 %1, metadata !1101, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr %2, metadata !1102, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1103, metadata !DIExpression()), !dbg !1105
  tail call fastcc void @flush_stdout(), !dbg !1106
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1107, !tbaa !759
  %7 = icmp eq ptr %6, null, !dbg !1107
  br i1 %7, label %9, label %8, !dbg !1109

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1110
  br label %13, !dbg !1110

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1111, !tbaa !759
  %11 = tail call ptr @getprogname() #37, !dbg !1111
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %11) #36, !dbg !1111
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1113, !tbaa.struct !1114
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1113
  ret void, !dbg !1115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1116 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1118, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 1, metadata !1120, metadata !DIExpression()), !dbg !1125
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1128
  %2 = icmp slt i32 %1, 0, !dbg !1129
  br i1 %2, label %6, label %3, !dbg !1130

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !759
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1131
  br label %6, !dbg !1131

6:                                                ; preds = %3, %0
  ret void, !dbg !1132
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1133 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1135, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata i32 %1, metadata !1136, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.value(metadata ptr %2, metadata !1137, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1138, metadata !DIExpression()), !dbg !1140
  %7 = load ptr, ptr @stderr, align 8, !dbg !1141, !tbaa !759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1142, !noalias !1186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %7, metadata !1182, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata ptr %2, metadata !1183, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1184, metadata !DIExpression()), !dbg !1192
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1142
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1142, !noalias !1186
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1193, !tbaa !819
  %10 = add i32 %9, 1, !dbg !1193
  store i32 %10, ptr @error_message_count, align 4, !dbg !1193, !tbaa !819
  %11 = icmp eq i32 %1, 0, !dbg !1194
  br i1 %11, label %21, label %12, !dbg !1196

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1197, metadata !DIExpression()), !dbg !1205
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1201, metadata !DIExpression()), !dbg !1208
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1209
  call void @llvm.dbg.value(metadata ptr %13, metadata !1200, metadata !DIExpression()), !dbg !1205
  %14 = icmp eq ptr %13, null, !dbg !1210
  br i1 %14, label %15, label %17, !dbg !1212

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #36, !dbg !1213
  call void @llvm.dbg.value(metadata ptr %16, metadata !1200, metadata !DIExpression()), !dbg !1205
  br label %17, !dbg !1214

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1205
  call void @llvm.dbg.value(metadata ptr %18, metadata !1200, metadata !DIExpression()), !dbg !1205
  %19 = load ptr, ptr @stderr, align 8, !dbg !1215, !tbaa !759
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %18) #36, !dbg !1215
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1216
  br label %21, !dbg !1217

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1218, !tbaa !759
  call void @llvm.dbg.value(metadata i32 10, metadata !1219, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.value(metadata ptr %22, metadata !1225, metadata !DIExpression()), !dbg !1226
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1228
  %24 = load ptr, ptr %23, align 8, !dbg !1228, !tbaa !1229
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1228
  %26 = load ptr, ptr %25, align 8, !dbg !1228, !tbaa !1232
  %27 = icmp ult ptr %24, %26, !dbg !1228
  br i1 %27, label %30, label %28, !dbg !1228, !prof !1233

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1228
  br label %32, !dbg !1228

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1228
  store ptr %31, ptr %23, align 8, !dbg !1228, !tbaa !1229
  store i8 10, ptr %24, align 1, !dbg !1228, !tbaa !828
  br label %32, !dbg !1228

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1234, !tbaa !759
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1234
  %35 = icmp eq i32 %0, 0, !dbg !1235
  br i1 %35, label %37, label %36, !dbg !1237

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1238
  unreachable, !dbg !1238

37:                                               ; preds = %32
  ret void, !dbg !1239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1240 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1243 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1246 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1249 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1252 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1256 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1260, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata i32 %1, metadata !1261, metadata !DIExpression()), !dbg !1264
  call void @llvm.dbg.value(metadata ptr %2, metadata !1262, metadata !DIExpression()), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1265
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1263, metadata !DIExpression()), !dbg !1266
  call void @llvm.va_start(ptr nonnull %4), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1268, !tbaa.struct !1114
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1268
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1268
  call void @llvm.va_end(ptr nonnull %4), !dbg !1269
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1270
  ret void, !dbg !1270
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !328 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !345, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 %1, metadata !346, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata ptr %2, metadata !347, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata i32 %3, metadata !348, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.value(metadata ptr %4, metadata !349, metadata !DIExpression()), !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %5, metadata !350, metadata !DIExpression()), !dbg !1272
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1273, !tbaa !819
  %9 = icmp eq i32 %8, 0, !dbg !1273
  br i1 %9, label %24, label %10, !dbg !1275

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1276, !tbaa !819
  %12 = icmp eq i32 %11, %3, !dbg !1279
  br i1 %12, label %13, label %23, !dbg !1280

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1281, !tbaa !759
  %15 = icmp eq ptr %14, %2, !dbg !1282
  br i1 %15, label %37, label %16, !dbg !1283

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1284
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1285
  br i1 %19, label %20, label %23, !dbg !1285

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1286
  %22 = icmp eq i32 %21, 0, !dbg !1287
  br i1 %22, label %37, label %23, !dbg !1288

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1289, !tbaa !759
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1290, !tbaa !819
  br label %24, !dbg !1291

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1292
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1293, !tbaa !759
  %26 = icmp eq ptr %25, null, !dbg !1293
  br i1 %26, label %28, label %27, !dbg !1295

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1296
  br label %32, !dbg !1296

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1297, !tbaa !759
  %30 = tail call ptr @getprogname() #37, !dbg !1297
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %30) #36, !dbg !1297
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1299, !tbaa !759
  %34 = icmp eq ptr %2, null, !dbg !1299
  %35 = select i1 %34, ptr @.str.3.31, ptr @.str.2.32, !dbg !1299
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1299
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1300, !tbaa.struct !1114
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1300
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1300
  br label %37, !dbg !1301

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1301
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1302 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1306, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i32 %1, metadata !1307, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %2, metadata !1308, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata i32 %3, metadata !1309, metadata !DIExpression()), !dbg !1312
  call void @llvm.dbg.value(metadata ptr %4, metadata !1310, metadata !DIExpression()), !dbg !1312
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1313
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1311, metadata !DIExpression()), !dbg !1314
  call void @llvm.va_start(ptr nonnull %6), !dbg !1315
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1316, !tbaa.struct !1114
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1316
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1316
  call void @llvm.va_end(ptr nonnull %6), !dbg !1317
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1318
  ret void, !dbg !1318
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1319 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1322, !tbaa !759
  ret ptr %1, !dbg !1323
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1324 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1329, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %1, metadata !1330, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %2, metadata !1331, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %3, metadata !1332, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %4, metadata !1333, metadata !DIExpression()), !dbg !1355
  call void @llvm.dbg.value(metadata ptr %5, metadata !1334, metadata !DIExpression()), !dbg !1355
  %9 = load i32, ptr @opterr, align 4, !dbg !1356, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %9, metadata !1335, metadata !DIExpression()), !dbg !1355
  store i32 0, ptr @opterr, align 4, !dbg !1357, !tbaa !819
  %10 = icmp eq i32 %0, 2, !dbg !1358
  br i1 %10, label %11, label %16, !dbg !1359

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1360
  call void @llvm.dbg.value(metadata i32 %12, metadata !1336, metadata !DIExpression()), !dbg !1361
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1362

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #36, !dbg !1363
  br label %16, !dbg !1364

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1365
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1339, metadata !DIExpression()), !dbg !1366
  call void @llvm.va_start(ptr nonnull %7), !dbg !1367
  %15 = load ptr, ptr @stdout, align 8, !dbg !1368, !tbaa !759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1369, !tbaa.struct !1114
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1369
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #36, !dbg !1369
  call void @exit(i32 noundef 0) #38, !dbg !1370
  unreachable, !dbg !1370

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1371, !tbaa !819
  store i32 0, ptr @optind, align 4, !dbg !1372, !tbaa !819
  ret void, !dbg !1373
}

; Function Attrs: nounwind
declare !dbg !1374 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1380 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1384, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %1, metadata !1385, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %2, metadata !1386, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %3, metadata !1387, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %4, metadata !1388, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i1 %5, metadata !1389, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %6, metadata !1390, metadata !DIExpression()), !dbg !1399
  %10 = load i32, ptr @opterr, align 4, !dbg !1400, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %10, metadata !1391, metadata !DIExpression()), !dbg !1399
  store i32 1, ptr @opterr, align 4, !dbg !1401, !tbaa !819
  %11 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1402
  call void @llvm.dbg.value(metadata ptr %11, metadata !1392, metadata !DIExpression()), !dbg !1399
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1403
  call void @llvm.dbg.value(metadata i32 %12, metadata !1393, metadata !DIExpression()), !dbg !1399
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1404

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1405
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1394, metadata !DIExpression()), !dbg !1406
  call void @llvm.va_start(ptr nonnull %8), !dbg !1407
  %14 = load ptr, ptr @stdout, align 8, !dbg !1408, !tbaa !759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #36, !dbg !1409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1409, !tbaa.struct !1114
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #36, !dbg !1409
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #36, !dbg !1409
  call void @exit(i32 noundef 0) #38, !dbg !1410
  unreachable, !dbg !1410

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1411, !tbaa !819
  br label %17, !dbg !1412

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #36, !dbg !1413
  br label %19, !dbg !1414

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1414, !tbaa !819
  ret void, !dbg !1415
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1416 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1418, metadata !DIExpression()), !dbg !1421
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1422
  call void @llvm.dbg.value(metadata ptr %2, metadata !1419, metadata !DIExpression()), !dbg !1421
  %3 = icmp eq ptr %2, null, !dbg !1423
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1423
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1423
  call void @llvm.dbg.value(metadata ptr %5, metadata !1420, metadata !DIExpression()), !dbg !1421
  %6 = ptrtoint ptr %5 to i64, !dbg !1424
  %7 = ptrtoint ptr %0 to i64, !dbg !1424
  %8 = sub i64 %6, %7, !dbg !1424
  %9 = icmp sgt i64 %8, 6, !dbg !1426
  br i1 %9, label %10, label %19, !dbg !1427

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1428
  call void @llvm.dbg.value(metadata ptr %11, metadata !1429, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1434, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 7, metadata !1435, metadata !DIExpression()), !dbg !1436
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1438
  %13 = icmp eq i32 %12, 0, !dbg !1439
  br i1 %13, label %14, label %19, !dbg !1440

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1418, metadata !DIExpression()), !dbg !1421
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #37, !dbg !1441
  %16 = icmp eq i32 %15, 0, !dbg !1444
  %17 = select i1 %16, i64 3, i64 0, !dbg !1445
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1445
  br label %19, !dbg !1445

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1421
  call void @llvm.dbg.value(metadata ptr %21, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %20, metadata !1418, metadata !DIExpression()), !dbg !1421
  store ptr %20, ptr @program_name, align 8, !dbg !1446, !tbaa !759
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1447, !tbaa !759
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1448, !tbaa !759
  ret void, !dbg !1449
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1450 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !410 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !417, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata ptr %1, metadata !418, metadata !DIExpression()), !dbg !1451
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1452
  call void @llvm.dbg.value(metadata ptr %5, metadata !419, metadata !DIExpression()), !dbg !1451
  %6 = icmp eq ptr %5, %0, !dbg !1453
  br i1 %6, label %7, label %14, !dbg !1455

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1456
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1457
  call void @llvm.dbg.declare(metadata ptr %4, metadata !425, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata ptr %4, metadata !1459, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata ptr %4, metadata !1468, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i32 0, metadata !1474, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i64 8, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i64 0, ptr %4, align 8, !dbg !1478
  call void @llvm.dbg.value(metadata ptr %3, metadata !420, metadata !DIExpression(DW_OP_deref)), !dbg !1451
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1479
  %9 = icmp eq i64 %8, 2, !dbg !1481
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !420, metadata !DIExpression()), !dbg !1451
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1482
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1451
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1483
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1483
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1451
  ret ptr %15, !dbg !1483
}

; Function Attrs: nounwind
declare !dbg !1484 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !1498
  %2 = tail call ptr @__errno_location() #39, !dbg !1499
  %3 = load i32, ptr %2, align 4, !dbg !1499, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %3, metadata !1496, metadata !DIExpression()), !dbg !1498
  %4 = icmp eq ptr %0, null, !dbg !1500
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1500
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1501
  call void @llvm.dbg.value(metadata ptr %6, metadata !1497, metadata !DIExpression()), !dbg !1498
  store i32 %3, ptr %2, align 4, !dbg !1502, !tbaa !819
  ret ptr %6, !dbg !1503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1504 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1510, metadata !DIExpression()), !dbg !1511
  %2 = icmp eq ptr %0, null, !dbg !1512
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1512
  %4 = load i32, ptr %3, align 8, !dbg !1513, !tbaa !1514
  ret i32 %4, !dbg !1516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1517 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1521, metadata !DIExpression()), !dbg !1523
  call void @llvm.dbg.value(metadata i32 %1, metadata !1522, metadata !DIExpression()), !dbg !1523
  %3 = icmp eq ptr %0, null, !dbg !1524
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1524
  store i32 %1, ptr %4, align 8, !dbg !1525, !tbaa !1514
  ret void, !dbg !1526
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1527 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1531, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %1, metadata !1532, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %2, metadata !1533, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %1, metadata !1534, metadata !DIExpression()), !dbg !1539
  %4 = icmp eq ptr %0, null, !dbg !1540
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1540
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1541
  %7 = lshr i8 %1, 5, !dbg !1542
  %8 = zext i8 %7 to i64, !dbg !1542
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %9, metadata !1535, metadata !DIExpression()), !dbg !1539
  %10 = and i8 %1, 31, !dbg !1544
  %11 = zext i8 %10 to i32, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %11, metadata !1537, metadata !DIExpression()), !dbg !1539
  %12 = load i32, ptr %9, align 4, !dbg !1545, !tbaa !819
  %13 = lshr i32 %12, %11, !dbg !1546
  %14 = and i32 %13, 1, !dbg !1547
  call void @llvm.dbg.value(metadata i32 %14, metadata !1538, metadata !DIExpression()), !dbg !1539
  %15 = xor i32 %13, %2, !dbg !1548
  %16 = and i32 %15, 1, !dbg !1548
  %17 = shl nuw i32 %16, %11, !dbg !1549
  %18 = xor i32 %17, %12, !dbg !1550
  store i32 %18, ptr %9, align 4, !dbg !1550, !tbaa !819
  ret i32 %14, !dbg !1551
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1552 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1556, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %1, metadata !1557, metadata !DIExpression()), !dbg !1559
  %3 = icmp eq ptr %0, null, !dbg !1560
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1562
  call void @llvm.dbg.value(metadata ptr %4, metadata !1556, metadata !DIExpression()), !dbg !1559
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1563
  %6 = load i32, ptr %5, align 4, !dbg !1563, !tbaa !1564
  call void @llvm.dbg.value(metadata i32 %6, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i32 %1, ptr %5, align 4, !dbg !1565, !tbaa !1564
  ret i32 %6, !dbg !1566
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1567 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata ptr %1, metadata !1572, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata ptr %2, metadata !1573, metadata !DIExpression()), !dbg !1574
  %4 = icmp eq ptr %0, null, !dbg !1575
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1577
  call void @llvm.dbg.value(metadata ptr %5, metadata !1571, metadata !DIExpression()), !dbg !1574
  store i32 10, ptr %5, align 8, !dbg !1578, !tbaa !1514
  %6 = icmp ne ptr %1, null, !dbg !1579
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1581
  br i1 %8, label %10, label %9, !dbg !1581

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1582
  unreachable, !dbg !1582

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1583
  store ptr %1, ptr %11, align 8, !dbg !1584, !tbaa !1585
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1586
  store ptr %2, ptr %12, align 8, !dbg !1587, !tbaa !1588
  ret void, !dbg !1589
}

; Function Attrs: noreturn nounwind
declare !dbg !1590 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1591 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1595, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %1, metadata !1596, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %2, metadata !1597, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %3, metadata !1598, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata ptr %4, metadata !1599, metadata !DIExpression()), !dbg !1603
  %6 = icmp eq ptr %4, null, !dbg !1604
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1604
  call void @llvm.dbg.value(metadata ptr %7, metadata !1600, metadata !DIExpression()), !dbg !1603
  %8 = tail call ptr @__errno_location() #39, !dbg !1605
  %9 = load i32, ptr %8, align 4, !dbg !1605, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %9, metadata !1601, metadata !DIExpression()), !dbg !1603
  %10 = load i32, ptr %7, align 8, !dbg !1606, !tbaa !1514
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1607
  %12 = load i32, ptr %11, align 4, !dbg !1607, !tbaa !1564
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1608
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1609
  %15 = load ptr, ptr %14, align 8, !dbg !1609, !tbaa !1585
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1610
  %17 = load ptr, ptr %16, align 8, !dbg !1610, !tbaa !1588
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %18, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i32 %9, ptr %8, align 4, !dbg !1612, !tbaa !819
  ret i64 %18, !dbg !1613
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1614 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1620, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %1, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %2, metadata !1622, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %3, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %4, metadata !1624, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %5, metadata !1625, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %6, metadata !1626, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %7, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %8, metadata !1628, metadata !DIExpression()), !dbg !1682
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1683
  %17 = icmp eq i64 %16, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i1 %17, metadata !1629, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr null, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1633, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %5, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1682
  %18 = and i32 %5, 2, !dbg !1685
  %19 = icmp ne i32 %18, 0, !dbg !1685
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1685

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1686
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1687
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1688
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %34, metadata !1633, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %33, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %32, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %31, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %30, metadata !1628, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %29, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %28, metadata !1624, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1675), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  switch i32 %28, label %101 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %102
    i32 0, label %100
    i32 2, label %95
    i32 4, label %92
    i32 3, label %91
    i32 1, label %93
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !1690

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 5, metadata !1624, metadata !DIExpression()), !dbg !1682
  br label %102, !dbg !1691

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 5, metadata !1624, metadata !DIExpression()), !dbg !1682
  br i1 %36, label %102, label %42, !dbg !1691

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1692
  br i1 %43, label %102, label %44, !dbg !1696

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1692, !tbaa !828
  br label %102, !dbg !1692

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !523, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i32 %28, metadata !524, metadata !DIExpression()), !dbg !1697
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #36, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %46, metadata !525, metadata !DIExpression()), !dbg !1697
  %47 = icmp eq ptr %46, @.str.11.64, !dbg !1702
  br i1 %47, label %48, label %57, !dbg !1704

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %13, metadata !527, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %13, metadata !1708, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %13, metadata !1716, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i64 8, metadata !1720, metadata !DIExpression()), !dbg !1721
  store i64 0, ptr %13, align 8, !dbg !1723
  call void @llvm.dbg.value(metadata ptr %12, metadata !526, metadata !DIExpression(DW_OP_deref)), !dbg !1697
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1724
  %50 = icmp eq i64 %49, 3, !dbg !1726
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !526, metadata !DIExpression()), !dbg !1697
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1727
  %54 = icmp eq i32 %28, 9, !dbg !1727
  %55 = select i1 %54, ptr @.str.10.66, ptr @.str.12.67, !dbg !1727
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1728
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1697
  call void @llvm.dbg.value(metadata ptr %58, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !523, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i32 %28, metadata !524, metadata !DIExpression()), !dbg !1729
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #36, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %59, metadata !525, metadata !DIExpression()), !dbg !1729
  %60 = icmp eq ptr %59, @.str.12.67, !dbg !1732
  br i1 %60, label %61, label %70, !dbg !1733

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1734
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1735
  call void @llvm.dbg.declare(metadata ptr %11, metadata !527, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata ptr %11, metadata !1708, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata ptr %11, metadata !1716, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 8, metadata !1720, metadata !DIExpression()), !dbg !1739
  store i64 0, ptr %11, align 8, !dbg !1741
  call void @llvm.dbg.value(metadata ptr %10, metadata !526, metadata !DIExpression(DW_OP_deref)), !dbg !1729
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1742
  %63 = icmp eq i64 %62, 3, !dbg !1743
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !526, metadata !DIExpression()), !dbg !1729
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1744
  %67 = icmp eq i32 %28, 9, !dbg !1744
  %68 = select i1 %67, ptr @.str.10.66, ptr @.str.12.67, !dbg !1744
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1744
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1745
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1745
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1628, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %71, metadata !1627, metadata !DIExpression()), !dbg !1682
  br i1 %36, label %88, label %73, !dbg !1746

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1639, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1682
  %74 = load i8, ptr %71, align 1, !dbg !1748, !tbaa !828
  %75 = icmp eq i8 %74, 0, !dbg !1750
  br i1 %75, label %88, label %76, !dbg !1750

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1639, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %79, metadata !1630, metadata !DIExpression()), !dbg !1682
  %80 = icmp ult i64 %79, %39, !dbg !1751
  br i1 %80, label %81, label %83, !dbg !1754

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1751
  store i8 %77, ptr %82, align 1, !dbg !1751, !tbaa !828
  br label %83, !dbg !1751

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %84, metadata !1630, metadata !DIExpression()), !dbg !1682
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata ptr %85, metadata !1639, metadata !DIExpression()), !dbg !1747
  %86 = load i8, ptr %85, align 1, !dbg !1748, !tbaa !828
  %87 = icmp eq i8 %86, 0, !dbg !1750
  br i1 %87, label %88, label %76, !dbg !1750, !llvm.loop !1756

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %89, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %72, metadata !1632, metadata !DIExpression()), !dbg !1682
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %90, metadata !1633, metadata !DIExpression()), !dbg !1682
  br label %102, !dbg !1760

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1682
  br label %93, !dbg !1761

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  br i1 %36, label %102, label %96, !dbg !1762

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 2, metadata !1624, metadata !DIExpression()), !dbg !1682
  br label %102, !dbg !1763

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 2, metadata !1624, metadata !DIExpression()), !dbg !1682
  br i1 %36, label %102, label %96, !dbg !1763

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1764
  br i1 %98, label %102, label %99, !dbg !1768

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1764, !tbaa !828
  br label %102, !dbg !1764

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1682
  br label %102, !dbg !1769

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1770
  unreachable, !dbg !1770

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1758
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.66, %42 ], [ @.str.10.66, %44 ], [ @.str.10.66, %41 ], [ %33, %27 ], [ @.str.12.67, %96 ], [ @.str.12.67, %99 ], [ @.str.12.67, %95 ], [ @.str.10.66, %40 ], [ @.str.12.67, %93 ], [ @.str.12.67, %92 ], !dbg !1682
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1682
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %108, metadata !1633, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %107, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %106, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %105, metadata !1628, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr %104, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %103, metadata !1624, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1644, metadata !DIExpression()), !dbg !1771
  %111 = icmp ne i32 %103, 2
  %112 = and i1 %111, %109
  %113 = icmp ne i64 %108, 0
  %114 = select i1 %112, i1 %113, i1 false
  %115 = icmp ugt i64 %108, 1
  %116 = icmp eq i32 %103, 2
  %117 = and i1 %109, %110
  %118 = select i1 %117, i1 %113, i1 false
  %119 = and i1 %116, %110
  %120 = xor i1 %109, true
  %121 = and i1 %25, %110
  br label %122, !dbg !1772

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1758
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1686
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1773
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %129, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %125, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %124, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %123, metadata !1623, metadata !DIExpression()), !dbg !1682
  %131 = icmp eq i64 %123, -1, !dbg !1774
  br i1 %131, label %132, label %136, !dbg !1775

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1776
  %134 = load i8, ptr %133, align 1, !dbg !1776, !tbaa !828
  %135 = icmp eq i8 %134, 0, !dbg !1777
  br i1 %135, label %579, label %138, !dbg !1778

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1779
  br i1 %137, label %579, label %138, !dbg !1778

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1780
  br i1 %114, label %139, label %152, !dbg !1781

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1783
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1784
  br i1 %141, label %142, label %144, !dbg !1784

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %143, metadata !1623, metadata !DIExpression()), !dbg !1682
  br label %144, !dbg !1786

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1786
  call void @llvm.dbg.value(metadata i64 %145, metadata !1623, metadata !DIExpression()), !dbg !1682
  %146 = icmp ugt i64 %140, %145, !dbg !1787
  br i1 %146, label %152, label %147, !dbg !1788

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1789
  call void @llvm.dbg.value(metadata ptr %148, metadata !1790, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata ptr %107, metadata !1793, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %108, metadata !1794, metadata !DIExpression()), !dbg !1795
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1797
  %150 = icmp eq i32 %149, 0, !dbg !1798
  %151 = and i1 %150, %110, !dbg !1799
  br i1 %151, label %630, label %152, !dbg !1799

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %153, metadata !1623, metadata !DIExpression()), !dbg !1682
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1800
  %156 = load i8, ptr %155, align 1, !dbg !1800, !tbaa !828
  call void @llvm.dbg.value(metadata i8 %156, metadata !1651, metadata !DIExpression()), !dbg !1780
  switch i8 %156, label %286 [
    i8 0, label %157
    i8 63, label %205
    i8 7, label %251
    i8 8, label %241
    i8 12, label %242
    i8 10, label %249
    i8 13, label %243
    i8 9, label %244
    i8 11, label %245
    i8 92, label %246
    i8 123, label %253
    i8 125, label %253
    i8 35, label %257
    i8 126, label %257
    i8 32, label %259
    i8 33, label %260
    i8 34, label %260
    i8 36, label %260
    i8 38, label %260
    i8 40, label %260
    i8 41, label %260
    i8 42, label %260
    i8 59, label %260
    i8 60, label %260
    i8 61, label %260
    i8 62, label %260
    i8 91, label %260
    i8 94, label %260
    i8 96, label %260
    i8 124, label %260
    i8 39, label %263
    i8 37, label %439
    i8 43, label %439
    i8 44, label %439
    i8 45, label %439
    i8 46, label %439
    i8 47, label %439
    i8 48, label %439
    i8 49, label %439
    i8 50, label %439
    i8 51, label %439
    i8 52, label %439
    i8 53, label %439
    i8 54, label %439
    i8 55, label %439
    i8 56, label %439
    i8 57, label %439
    i8 58, label %439
    i8 65, label %439
    i8 66, label %439
    i8 67, label %439
    i8 68, label %439
    i8 69, label %439
    i8 70, label %439
    i8 71, label %439
    i8 72, label %439
    i8 73, label %439
    i8 74, label %439
    i8 75, label %439
    i8 76, label %439
    i8 77, label %439
    i8 78, label %439
    i8 79, label %439
    i8 80, label %439
    i8 81, label %439
    i8 82, label %439
    i8 83, label %439
    i8 84, label %439
    i8 85, label %439
    i8 86, label %439
    i8 87, label %439
    i8 88, label %439
    i8 89, label %439
    i8 90, label %439
    i8 93, label %439
    i8 95, label %439
    i8 97, label %439
    i8 98, label %439
    i8 99, label %439
    i8 100, label %439
    i8 101, label %439
    i8 102, label %439
    i8 103, label %439
    i8 104, label %439
    i8 105, label %439
    i8 106, label %439
    i8 107, label %439
    i8 108, label %439
    i8 109, label %439
    i8 110, label %439
    i8 111, label %439
    i8 112, label %439
    i8 113, label %439
    i8 114, label %439
    i8 115, label %439
    i8 116, label %439
    i8 117, label %439
    i8 118, label %439
    i8 119, label %439
    i8 120, label %439
    i8 121, label %439
    i8 122, label %439
  ], !dbg !1801

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1802

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1803

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1780
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1807
  br i1 %160, label %177, label %161, !dbg !1807

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1809
  br i1 %162, label %163, label %165, !dbg !1813

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1809
  store i8 39, ptr %164, align 1, !dbg !1809, !tbaa !828
  br label %165, !dbg !1809

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %166, metadata !1630, metadata !DIExpression()), !dbg !1682
  %167 = icmp ult i64 %166, %130, !dbg !1814
  br i1 %167, label %168, label %170, !dbg !1817

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1814
  store i8 36, ptr %169, align 1, !dbg !1814, !tbaa !828
  br label %170, !dbg !1814

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1817
  call void @llvm.dbg.value(metadata i64 %171, metadata !1630, metadata !DIExpression()), !dbg !1682
  %172 = icmp ult i64 %171, %130, !dbg !1818
  br i1 %172, label %173, label %175, !dbg !1821

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1818
  store i8 39, ptr %174, align 1, !dbg !1818, !tbaa !828
  br label %175, !dbg !1818

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %176, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %177, !dbg !1822

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1682
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %178, metadata !1630, metadata !DIExpression()), !dbg !1682
  %180 = icmp ult i64 %178, %130, !dbg !1823
  br i1 %180, label %181, label %183, !dbg !1826

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1823
  store i8 92, ptr %182, align 1, !dbg !1823, !tbaa !828
  br label %183, !dbg !1823

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %184, metadata !1630, metadata !DIExpression()), !dbg !1682
  br i1 %111, label %185, label %482, !dbg !1827

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1829
  %187 = icmp ult i64 %186, %153, !dbg !1830
  br i1 %187, label %188, label %439, !dbg !1831

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1832
  %190 = load i8, ptr %189, align 1, !dbg !1832, !tbaa !828
  %191 = add i8 %190, -48, !dbg !1833
  %192 = icmp ult i8 %191, 10, !dbg !1833
  br i1 %192, label %193, label %439, !dbg !1833

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1834
  br i1 %194, label %195, label %197, !dbg !1838

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1834
  store i8 48, ptr %196, align 1, !dbg !1834, !tbaa !828
  br label %197, !dbg !1834

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %198, metadata !1630, metadata !DIExpression()), !dbg !1682
  %199 = icmp ult i64 %198, %130, !dbg !1839
  br i1 %199, label %200, label %202, !dbg !1842

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1839
  store i8 48, ptr %201, align 1, !dbg !1839, !tbaa !828
  br label %202, !dbg !1839

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %203, metadata !1630, metadata !DIExpression()), !dbg !1682
  br label %439, !dbg !1843

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1844

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1845

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1846

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1848

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1850
  %210 = icmp ult i64 %209, %153, !dbg !1851
  br i1 %210, label %211, label %439, !dbg !1852

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1853
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1854
  %214 = load i8, ptr %213, align 1, !dbg !1854, !tbaa !828
  %215 = icmp eq i8 %214, 63, !dbg !1855
  br i1 %215, label %216, label %439, !dbg !1856

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1857
  %218 = load i8, ptr %217, align 1, !dbg !1857, !tbaa !828
  switch i8 %218, label %439 [
    i8 33, label %219
    i8 39, label %219
    i8 40, label %219
    i8 41, label %219
    i8 45, label %219
    i8 47, label %219
    i8 60, label %219
    i8 61, label %219
    i8 62, label %219
  ], !dbg !1858

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1859

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %209, metadata !1644, metadata !DIExpression()), !dbg !1771
  %221 = icmp ult i64 %124, %130, !dbg !1861
  br i1 %221, label %222, label %224, !dbg !1864

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1861
  store i8 63, ptr %223, align 1, !dbg !1861, !tbaa !828
  br label %224, !dbg !1861

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %225, metadata !1630, metadata !DIExpression()), !dbg !1682
  %226 = icmp ult i64 %225, %130, !dbg !1865
  br i1 %226, label %227, label %229, !dbg !1868

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1865
  store i8 34, ptr %228, align 1, !dbg !1865, !tbaa !828
  br label %229, !dbg !1865

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %230, metadata !1630, metadata !DIExpression()), !dbg !1682
  %231 = icmp ult i64 %230, %130, !dbg !1869
  br i1 %231, label %232, label %234, !dbg !1872

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1869
  store i8 34, ptr %233, align 1, !dbg !1869, !tbaa !828
  br label %234, !dbg !1869

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1872
  call void @llvm.dbg.value(metadata i64 %235, metadata !1630, metadata !DIExpression()), !dbg !1682
  %236 = icmp ult i64 %235, %130, !dbg !1873
  br i1 %236, label %237, label %239, !dbg !1876

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1873
  store i8 63, ptr %238, align 1, !dbg !1873, !tbaa !828
  br label %239, !dbg !1873

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %240, metadata !1630, metadata !DIExpression()), !dbg !1682
  br label %439, !dbg !1877

241:                                              ; preds = %152
  br label %251, !dbg !1878

242:                                              ; preds = %152
  br label %251, !dbg !1879

243:                                              ; preds = %152
  br label %249, !dbg !1880

244:                                              ; preds = %152
  br label %249, !dbg !1881

245:                                              ; preds = %152
  br label %251, !dbg !1882

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1883

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1884

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1887

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1889
  call void @llvm.dbg.label(metadata !1676), !dbg !1890
  br i1 %119, label %621, label %251, !dbg !1891

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1889
  call void @llvm.dbg.label(metadata !1678), !dbg !1893
  br i1 %109, label %493, label %450, !dbg !1894

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1895

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1896, !tbaa !828
  %256 = icmp eq i8 %255, 0, !dbg !1898
  br i1 %256, label %257, label %439, !dbg !1899

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1900
  br i1 %258, label %259, label %439, !dbg !1902

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1780
  br label %260, !dbg !1903

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1780
  br i1 %116, label %262, label %439, !dbg !1904

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1906

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1780
  br i1 %116, label %264, label %439, !dbg !1907

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1908

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1911
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1913
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1913
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %270, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %269, metadata !1631, metadata !DIExpression()), !dbg !1682
  %271 = icmp ult i64 %124, %270, !dbg !1914
  br i1 %271, label %272, label %274, !dbg !1917

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1914
  store i8 39, ptr %273, align 1, !dbg !1914, !tbaa !828
  br label %274, !dbg !1914

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %275, metadata !1630, metadata !DIExpression()), !dbg !1682
  %276 = icmp ult i64 %275, %270, !dbg !1918
  br i1 %276, label %277, label %279, !dbg !1921

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1918
  store i8 92, ptr %278, align 1, !dbg !1918, !tbaa !828
  br label %279, !dbg !1918

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %280, metadata !1630, metadata !DIExpression()), !dbg !1682
  %281 = icmp ult i64 %280, %270, !dbg !1922
  br i1 %281, label %282, label %284, !dbg !1925

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1922
  store i8 39, ptr %283, align 1, !dbg !1922, !tbaa !828
  br label %284, !dbg !1922

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %285, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %439, !dbg !1926

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1927

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1652, metadata !DIExpression()), !dbg !1928
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1929
  %289 = load ptr, ptr %288, align 8, !dbg !1929, !tbaa !759
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1929
  %292 = load i16, ptr %291, align 2, !dbg !1929, !tbaa !860
  %293 = and i16 %292, 16384, !dbg !1929
  %294 = icmp ne i16 %293, 0, !dbg !1931
  call void @llvm.dbg.value(metadata i1 %294, metadata !1655, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1928
  br label %337, !dbg !1932

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1933
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1656, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata ptr %14, metadata !1708, metadata !DIExpression()), !dbg !1935
  call void @llvm.dbg.value(metadata ptr %14, metadata !1716, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i64 8, metadata !1720, metadata !DIExpression()), !dbg !1937
  store i64 0, ptr %14, align 8, !dbg !1939
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 1, metadata !1655, metadata !DIExpression()), !dbg !1928
  %296 = icmp eq i64 %153, -1, !dbg !1940
  br i1 %296, label %297, label %299, !dbg !1942

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %298, metadata !1623, metadata !DIExpression()), !dbg !1682
  br label %299, !dbg !1944

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1780
  call void @llvm.dbg.value(metadata i64 %300, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1945
  %301 = sub i64 %300, %129, !dbg !1946
  call void @llvm.dbg.value(metadata ptr %15, metadata !1659, metadata !DIExpression(DW_OP_deref)), !dbg !1947
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %302, metadata !1663, metadata !DIExpression()), !dbg !1947
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1949

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  %304 = icmp ugt i64 %300, %129, !dbg !1950
  br i1 %304, label %306, label %332, !dbg !1952

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1655, metadata !DIExpression()), !dbg !1928
  br label %332, !dbg !1953

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1652, metadata !DIExpression()), !dbg !1928
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1955
  %310 = load i8, ptr %309, align 1, !dbg !1955, !tbaa !828
  %311 = icmp eq i8 %310, 0, !dbg !1952
  br i1 %311, label %332, label %312, !dbg !1956

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %313, metadata !1652, metadata !DIExpression()), !dbg !1928
  %314 = add i64 %313, %129, !dbg !1958
  %315 = icmp eq i64 %313, %301, !dbg !1950
  br i1 %315, label %332, label %306, !dbg !1952, !llvm.loop !1959

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1960
  %319 = and i1 %318, %110, !dbg !1960
  call void @llvm.dbg.value(metadata i64 1, metadata !1664, metadata !DIExpression()), !dbg !1961
  br i1 %319, label %320, label %328, !dbg !1960

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1664, metadata !DIExpression()), !dbg !1961
  %322 = add i64 %321, %129, !dbg !1962
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1964
  %324 = load i8, ptr %323, align 1, !dbg !1964, !tbaa !828
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1965

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %326, metadata !1664, metadata !DIExpression()), !dbg !1961
  %327 = icmp eq i64 %326, %302, !dbg !1967
  br i1 %327, label %328, label %320, !dbg !1968, !llvm.loop !1969

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1971, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %329, metadata !1659, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %329, metadata !1973, metadata !DIExpression()), !dbg !1981
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1983
  %331 = icmp ne i32 %330, 0, !dbg !1984
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %302, metadata !1652, metadata !DIExpression()), !dbg !1928
  br label %332, !dbg !1985

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %333, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1987
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1987
  call void @llvm.dbg.label(metadata !1681), !dbg !1988
  %336 = select i1 %109, i32 4, i32 2, !dbg !1989
  br label %626, !dbg !1989

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1780
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1991
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %339, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %338, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i1 %340, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1780
  %341 = icmp ult i64 %339, 2, !dbg !1992
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1993
  br i1 %343, label %439, label %344, !dbg !1993

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %345, metadata !1672, metadata !DIExpression()), !dbg !1995
  br label %346, !dbg !1996

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1682
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1771
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1997
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1780
  call void @llvm.dbg.value(metadata i8 %352, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %351, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %349, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %347, metadata !1630, metadata !DIExpression()), !dbg !1682
  br i1 %342, label %397, label %353, !dbg !1998

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2003

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1780
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2006
  br i1 %355, label %372, label %356, !dbg !2006

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2008
  br i1 %357, label %358, label %360, !dbg !2012

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2008
  store i8 39, ptr %359, align 1, !dbg !2008, !tbaa !828
  br label %360, !dbg !2008

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %361, metadata !1630, metadata !DIExpression()), !dbg !1682
  %362 = icmp ult i64 %361, %130, !dbg !2013
  br i1 %362, label %363, label %365, !dbg !2016

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2013
  store i8 36, ptr %364, align 1, !dbg !2013, !tbaa !828
  br label %365, !dbg !2013

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2016
  call void @llvm.dbg.value(metadata i64 %366, metadata !1630, metadata !DIExpression()), !dbg !1682
  %367 = icmp ult i64 %366, %130, !dbg !2017
  br i1 %367, label %368, label %370, !dbg !2020

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2017
  store i8 39, ptr %369, align 1, !dbg !2017, !tbaa !828
  br label %370, !dbg !2017

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2020
  call void @llvm.dbg.value(metadata i64 %371, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %372, !dbg !2021

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1682
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %373, metadata !1630, metadata !DIExpression()), !dbg !1682
  %375 = icmp ult i64 %373, %130, !dbg !2022
  br i1 %375, label %376, label %378, !dbg !2025

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2022
  store i8 92, ptr %377, align 1, !dbg !2022, !tbaa !828
  br label %378, !dbg !2022

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %379, metadata !1630, metadata !DIExpression()), !dbg !1682
  %380 = icmp ult i64 %379, %130, !dbg !2026
  br i1 %380, label %381, label %385, !dbg !2029

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2026
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2026
  store i8 %383, ptr %384, align 1, !dbg !2026, !tbaa !828
  br label %385, !dbg !2026

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %386, metadata !1630, metadata !DIExpression()), !dbg !1682
  %387 = icmp ult i64 %386, %130, !dbg !2030
  br i1 %387, label %388, label %393, !dbg !2033

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2030
  %391 = or i8 %390, 48, !dbg !2030
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2030
  store i8 %391, ptr %392, align 1, !dbg !2030, !tbaa !828
  br label %393, !dbg !2030

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %394, metadata !1630, metadata !DIExpression()), !dbg !1682
  %395 = and i8 %352, 7, !dbg !2034
  %396 = or i8 %395, 48, !dbg !2035
  call void @llvm.dbg.value(metadata i8 %396, metadata !1651, metadata !DIExpression()), !dbg !1780
  br label %404, !dbg !2036

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2037

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2038
  br i1 %399, label %400, label %402, !dbg !2043

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2038
  store i8 92, ptr %401, align 1, !dbg !2038, !tbaa !828
  br label %402, !dbg !2038

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2043
  call void @llvm.dbg.value(metadata i64 %403, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1780
  br label %404, !dbg !2044

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1682
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1780
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1780
  call void @llvm.dbg.value(metadata i8 %409, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %408, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %405, metadata !1630, metadata !DIExpression()), !dbg !1682
  %410 = add i64 %349, 1, !dbg !2045
  %411 = icmp ugt i64 %345, %410, !dbg !2047
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2048

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2049
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2049
  br i1 %415, label %416, label %427, !dbg !2049

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2052
  br i1 %417, label %418, label %420, !dbg !2056

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2052
  store i8 39, ptr %419, align 1, !dbg !2052, !tbaa !828
  br label %420, !dbg !2052

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %421, metadata !1630, metadata !DIExpression()), !dbg !1682
  %422 = icmp ult i64 %421, %130, !dbg !2057
  br i1 %422, label %423, label %425, !dbg !2060

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2057
  store i8 39, ptr %424, align 1, !dbg !2057, !tbaa !828
  br label %425, !dbg !2057

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %426, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %427, !dbg !2061

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2062
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %428, metadata !1630, metadata !DIExpression()), !dbg !1682
  %430 = icmp ult i64 %428, %130, !dbg !2063
  br i1 %430, label %431, label %433, !dbg !2066

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2063
  store i8 %409, ptr %432, align 1, !dbg !2063, !tbaa !828
  br label %433, !dbg !2063

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %434, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %410, metadata !1644, metadata !DIExpression()), !dbg !1771
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2067
  %436 = load i8, ptr %435, align 1, !dbg !2067, !tbaa !828
  call void @llvm.dbg.value(metadata i8 %436, metadata !1651, metadata !DIExpression()), !dbg !1780
  br label %346, !dbg !2068, !llvm.loop !2069

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i1 %340, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1780
  call void @llvm.dbg.value(metadata i8 %408, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %349, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %405, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %338, metadata !1623, metadata !DIExpression()), !dbg !1682
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2072
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1682
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1686
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1771
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1780
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %448, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %445, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %442, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %441, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %440, metadata !1623, metadata !DIExpression()), !dbg !1682
  br i1 %112, label %461, label %450, !dbg !2073

450:                                              ; preds = %204, %251, %439
  %451 = phi i64 [ %449, %439 ], [ %130, %251 ], [ %130, %204 ]
  %452 = phi i8 [ %448, %439 ], [ %156, %251 ], [ 0, %204 ]
  %453 = phi i1 [ %447, %439 ], [ false, %251 ], [ false, %204 ]
  %454 = phi i1 [ %446, %439 ], [ false, %251 ], [ false, %204 ]
  %455 = phi i64 [ %445, %439 ], [ %129, %251 ], [ %129, %204 ]
  %456 = phi i1 [ %444, %439 ], [ %128, %251 ], [ %128, %204 ]
  %457 = phi i1 [ %443, %439 ], [ %126, %251 ], [ %126, %204 ]
  %458 = phi i64 [ %442, %439 ], [ %125, %251 ], [ %125, %204 ]
  %459 = phi i64 [ %441, %439 ], [ %124, %251 ], [ %124, %204 ]
  %460 = phi i64 [ %440, %439 ], [ %153, %251 ], [ %153, %204 ]
  br i1 %121, label %462, label %482, !dbg !2075

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2076

462:                                              ; preds = %450, %461
  %463 = phi i64 [ %451, %450 ], [ %449, %461 ]
  %464 = phi i8 [ %452, %450 ], [ %448, %461 ]
  %465 = phi i1 [ %453, %450 ], [ %447, %461 ]
  %466 = phi i1 [ %454, %450 ], [ %446, %461 ]
  %467 = phi i64 [ %455, %450 ], [ %445, %461 ]
  %468 = phi i1 [ %456, %450 ], [ %444, %461 ]
  %469 = phi i1 [ %457, %450 ], [ %443, %461 ]
  %470 = phi i64 [ %458, %450 ], [ %442, %461 ]
  %471 = phi i64 [ %459, %450 ], [ %441, %461 ]
  %472 = phi i64 [ %460, %450 ], [ %440, %461 ]
  %473 = lshr i8 %464, 5, !dbg !2077
  %474 = zext i8 %473 to i64, !dbg !2077
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2078
  %476 = load i32, ptr %475, align 4, !dbg !2078, !tbaa !819
  %477 = and i8 %464, 31, !dbg !2079
  %478 = zext i8 %477 to i32, !dbg !2079
  %479 = shl nuw i32 1, %478, !dbg !2080
  %480 = and i32 %476, %479, !dbg !2080
  %481 = icmp eq i32 %480, 0, !dbg !2080
  br i1 %481, label %482, label %493, !dbg !2081

482:                                              ; preds = %183, %462, %461, %450
  %483 = phi i64 [ %463, %462 ], [ %449, %461 ], [ %451, %450 ], [ %130, %183 ]
  %484 = phi i8 [ %464, %462 ], [ %448, %461 ], [ %452, %450 ], [ 48, %183 ]
  %485 = phi i1 [ %465, %462 ], [ %447, %461 ], [ %453, %450 ], [ false, %183 ]
  %486 = phi i1 [ %466, %462 ], [ %446, %461 ], [ %454, %450 ], [ true, %183 ]
  %487 = phi i64 [ %467, %462 ], [ %445, %461 ], [ %455, %450 ], [ %129, %183 ]
  %488 = phi i1 [ %468, %462 ], [ %444, %461 ], [ %456, %450 ], [ %179, %183 ]
  %489 = phi i1 [ %469, %462 ], [ %443, %461 ], [ %457, %450 ], [ %126, %183 ]
  %490 = phi i64 [ %470, %462 ], [ %442, %461 ], [ %458, %450 ], [ %125, %183 ]
  %491 = phi i64 [ %471, %462 ], [ %441, %461 ], [ %459, %450 ], [ %184, %183 ]
  %492 = phi i64 [ %472, %462 ], [ %440, %461 ], [ %460, %450 ], [ %153, %183 ]
  br i1 %154, label %493, label %529, !dbg !2082

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2072
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1682
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1686
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2083
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1780
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %501, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %499, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %496, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %495, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %494, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1679), !dbg !2084
  br i1 %110, label %621, label %503, !dbg !2085

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1780
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2087
  br i1 %504, label %521, label %505, !dbg !2087

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2089
  br i1 %506, label %507, label %509, !dbg !2093

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2089
  store i8 39, ptr %508, align 1, !dbg !2089, !tbaa !828
  br label %509, !dbg !2089

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %510, metadata !1630, metadata !DIExpression()), !dbg !1682
  %511 = icmp ult i64 %510, %502, !dbg !2094
  br i1 %511, label %512, label %514, !dbg !2097

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2094
  store i8 36, ptr %513, align 1, !dbg !2094, !tbaa !828
  br label %514, !dbg !2094

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %515, metadata !1630, metadata !DIExpression()), !dbg !1682
  %516 = icmp ult i64 %515, %502, !dbg !2098
  br i1 %516, label %517, label %519, !dbg !2101

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2098
  store i8 39, ptr %518, align 1, !dbg !2098, !tbaa !828
  br label %519, !dbg !2098

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %520, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %521, !dbg !2102

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1780
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %522, metadata !1630, metadata !DIExpression()), !dbg !1682
  %524 = icmp ult i64 %522, %502, !dbg !2103
  br i1 %524, label %525, label %527, !dbg !2106

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2103
  store i8 92, ptr %526, align 1, !dbg !2103, !tbaa !828
  br label %527, !dbg !2103

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %502, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %501, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %499, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %496, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %528, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %494, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1680), !dbg !2107
  br label %553, !dbg !2108

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2072
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1682
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1686
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2083
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2111
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %538, metadata !1651, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i64 %535, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %532, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %531, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %530, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1680), !dbg !2107
  %540 = xor i1 %534, true, !dbg !2108
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2108
  br i1 %541, label %553, label %542, !dbg !2108

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2112
  br i1 %543, label %544, label %546, !dbg !2116

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2112
  store i8 39, ptr %545, align 1, !dbg !2112, !tbaa !828
  br label %546, !dbg !2112

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %547, metadata !1630, metadata !DIExpression()), !dbg !1682
  %548 = icmp ult i64 %547, %539, !dbg !2117
  br i1 %548, label %549, label %551, !dbg !2120

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2117
  store i8 39, ptr %550, align 1, !dbg !2117, !tbaa !828
  br label %551, !dbg !2117

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %552, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %553, !dbg !2121

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1780
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %561, metadata !1630, metadata !DIExpression()), !dbg !1682
  %563 = icmp ult i64 %561, %554, !dbg !2122
  br i1 %563, label %564, label %566, !dbg !2125

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2122
  store i8 %555, ptr %565, align 1, !dbg !2122, !tbaa !828
  br label %566, !dbg !2122

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2125
  call void @llvm.dbg.value(metadata i64 %567, metadata !1630, metadata !DIExpression()), !dbg !1682
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2126
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  br label %569, !dbg !2127

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2072
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1682
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1686
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2083
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %576, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %572, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %571, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %570, metadata !1623, metadata !DIExpression()), !dbg !1682
  %578 = add i64 %576, 1, !dbg !2128
  call void @llvm.dbg.value(metadata i64 %578, metadata !1644, metadata !DIExpression()), !dbg !1771
  br label %122, !dbg !2129, !llvm.loop !2130

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %125, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %124, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %123, metadata !1623, metadata !DIExpression()), !dbg !1682
  %580 = icmp ne i64 %124, 0, !dbg !2132
  %581 = xor i1 %110, true, !dbg !2134
  %582 = or i1 %580, %581, !dbg !2134
  %583 = or i1 %582, %111, !dbg !2134
  br i1 %583, label %584, label %621, !dbg !2134

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2135
  %586 = xor i1 %126, true, !dbg !2135
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2135
  br i1 %587, label %595, label %588, !dbg !2135

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2137

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2139
  br label %636, !dbg !2141

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2142
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2144
  br i1 %594, label %27, label %595, !dbg !2144

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2145
  %598 = or i1 %597, %596, !dbg !2147
  br i1 %598, label %614, label %599, !dbg !2147

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %124, metadata !1630, metadata !DIExpression()), !dbg !1682
  %600 = load i8, ptr %107, align 1, !dbg !2148, !tbaa !828
  %601 = icmp eq i8 %600, 0, !dbg !2151
  br i1 %601, label %614, label %602, !dbg !2151

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %605, metadata !1630, metadata !DIExpression()), !dbg !1682
  %606 = icmp ult i64 %605, %130, !dbg !2152
  br i1 %606, label %607, label %609, !dbg !2155

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2152
  store i8 %603, ptr %608, align 1, !dbg !2152, !tbaa !828
  br label %609, !dbg !2152

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %610, metadata !1630, metadata !DIExpression()), !dbg !1682
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2156
  call void @llvm.dbg.value(metadata ptr %611, metadata !1632, metadata !DIExpression()), !dbg !1682
  %612 = load i8, ptr %611, align 1, !dbg !2148, !tbaa !828
  %613 = icmp eq i8 %612, 0, !dbg !2151
  br i1 %613, label %614, label %602, !dbg !2151, !llvm.loop !2157

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %615, metadata !1630, metadata !DIExpression()), !dbg !1682
  %616 = icmp ult i64 %615, %130, !dbg !2159
  br i1 %616, label %617, label %636, !dbg !2161

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2162
  store i8 0, ptr %618, align 1, !dbg !2163, !tbaa !828
  br label %636, !dbg !2162

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1681), !dbg !1988
  %620 = icmp eq i32 %103, 2, !dbg !2164
  br i1 %620, label %626, label %630, !dbg !1989

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1681), !dbg !1988
  %624 = icmp eq i32 %103, 2, !dbg !2164
  %625 = select i1 %109, i32 4, i32 2, !dbg !1989
  br i1 %624, label %626, label %630, !dbg !1989

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1989

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1624, metadata !DIExpression()), !dbg !1682
  %634 = and i32 %5, -3, !dbg !2165
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2166
  br label %636, !dbg !2167

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2168
}

; Function Attrs: nounwind
declare !dbg !2169 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2172 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2175 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2177 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2181, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %1, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr %2, metadata !2183, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr %0, metadata !2185, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata i64 %1, metadata !2190, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr null, metadata !2191, metadata !DIExpression()), !dbg !2198
  call void @llvm.dbg.value(metadata ptr %2, metadata !2192, metadata !DIExpression()), !dbg !2198
  %4 = icmp eq ptr %2, null, !dbg !2200
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2200
  call void @llvm.dbg.value(metadata ptr %5, metadata !2193, metadata !DIExpression()), !dbg !2198
  %6 = tail call ptr @__errno_location() #39, !dbg !2201
  %7 = load i32, ptr %6, align 4, !dbg !2201, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %7, metadata !2194, metadata !DIExpression()), !dbg !2198
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2202
  %9 = load i32, ptr %8, align 4, !dbg !2202, !tbaa !1564
  %10 = or i32 %9, 1, !dbg !2203
  call void @llvm.dbg.value(metadata i32 %10, metadata !2195, metadata !DIExpression()), !dbg !2198
  %11 = load i32, ptr %5, align 8, !dbg !2204, !tbaa !1514
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2205
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2206
  %14 = load ptr, ptr %13, align 8, !dbg !2206, !tbaa !1585
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2207
  %16 = load ptr, ptr %15, align 8, !dbg !2207, !tbaa !1588
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2208
  %18 = add i64 %17, 1, !dbg !2209
  call void @llvm.dbg.value(metadata i64 %18, metadata !2196, metadata !DIExpression()), !dbg !2198
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2210
  call void @llvm.dbg.value(metadata ptr %19, metadata !2197, metadata !DIExpression()), !dbg !2198
  %20 = load i32, ptr %5, align 8, !dbg !2211, !tbaa !1514
  %21 = load ptr, ptr %13, align 8, !dbg !2212, !tbaa !1585
  %22 = load ptr, ptr %15, align 8, !dbg !2213, !tbaa !1588
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2214
  store i32 %7, ptr %6, align 4, !dbg !2215, !tbaa !819
  ret ptr %19, !dbg !2216
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2186 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2185, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i64 %1, metadata !2190, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %2, metadata !2191, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata ptr %3, metadata !2192, metadata !DIExpression()), !dbg !2217
  %5 = icmp eq ptr %3, null, !dbg !2218
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2218
  call void @llvm.dbg.value(metadata ptr %6, metadata !2193, metadata !DIExpression()), !dbg !2217
  %7 = tail call ptr @__errno_location() #39, !dbg !2219
  %8 = load i32, ptr %7, align 4, !dbg !2219, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %8, metadata !2194, metadata !DIExpression()), !dbg !2217
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2220
  %10 = load i32, ptr %9, align 4, !dbg !2220, !tbaa !1564
  %11 = icmp eq ptr %2, null, !dbg !2221
  %12 = zext i1 %11 to i32, !dbg !2221
  %13 = or i32 %10, %12, !dbg !2222
  call void @llvm.dbg.value(metadata i32 %13, metadata !2195, metadata !DIExpression()), !dbg !2217
  %14 = load i32, ptr %6, align 8, !dbg !2223, !tbaa !1514
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2224
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2225
  %17 = load ptr, ptr %16, align 8, !dbg !2225, !tbaa !1585
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2226
  %19 = load ptr, ptr %18, align 8, !dbg !2226, !tbaa !1588
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2227
  %21 = add i64 %20, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %21, metadata !2196, metadata !DIExpression()), !dbg !2217
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2229
  call void @llvm.dbg.value(metadata ptr %22, metadata !2197, metadata !DIExpression()), !dbg !2217
  %23 = load i32, ptr %6, align 8, !dbg !2230, !tbaa !1514
  %24 = load ptr, ptr %16, align 8, !dbg !2231, !tbaa !1585
  %25 = load ptr, ptr %18, align 8, !dbg !2232, !tbaa !1588
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2233
  store i32 %8, ptr %7, align 4, !dbg !2234, !tbaa !819
  br i1 %11, label %28, label %27, !dbg !2235

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2236, !tbaa !2238
  br label %28, !dbg !2239

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2240
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2241 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2246, !tbaa !759
  call void @llvm.dbg.value(metadata ptr %1, metadata !2243, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i32 1, metadata !2244, metadata !DIExpression()), !dbg !2248
  %2 = load i32, ptr @nslots, align 4, !tbaa !819
  call void @llvm.dbg.value(metadata i32 1, metadata !2244, metadata !DIExpression()), !dbg !2248
  %3 = icmp sgt i32 %2, 1, !dbg !2249
  br i1 %3, label %4, label %6, !dbg !2251

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2249
  br label %10, !dbg !2251

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2252
  %8 = load ptr, ptr %7, align 8, !dbg !2252, !tbaa !2254
  %9 = icmp eq ptr %8, @slot0, !dbg !2256
  br i1 %9, label %17, label %16, !dbg !2257

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2244, metadata !DIExpression()), !dbg !2248
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2258
  %13 = load ptr, ptr %12, align 8, !dbg !2258, !tbaa !2254
  tail call void @free(ptr noundef %13) #36, !dbg !2259
  %14 = add nuw nsw i64 %11, 1, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %14, metadata !2244, metadata !DIExpression()), !dbg !2248
  %15 = icmp eq i64 %14, %5, !dbg !2249
  br i1 %15, label %6, label %10, !dbg !2251, !llvm.loop !2261

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2263
  store i64 256, ptr @slotvec0, align 8, !dbg !2265, !tbaa !2266
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2267, !tbaa !2254
  br label %17, !dbg !2268

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2269
  br i1 %18, label %20, label %19, !dbg !2271

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2272
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2274, !tbaa !759
  br label %20, !dbg !2275

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2276, !tbaa !819
  ret void, !dbg !2277
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2278 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata ptr %1, metadata !2284, metadata !DIExpression()), !dbg !2285
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2286
  ret ptr %3, !dbg !2287
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2288 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2292, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata ptr %1, metadata !2293, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i64 %2, metadata !2294, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata ptr %3, metadata !2295, metadata !DIExpression()), !dbg !2308
  %6 = tail call ptr @__errno_location() #39, !dbg !2309
  %7 = load i32, ptr %6, align 4, !dbg !2309, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %7, metadata !2296, metadata !DIExpression()), !dbg !2308
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2310, !tbaa !759
  call void @llvm.dbg.value(metadata ptr %8, metadata !2297, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2298, metadata !DIExpression()), !dbg !2308
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2311
  br i1 %9, label %10, label %11, !dbg !2311

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2313
  unreachable, !dbg !2313

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2314, !tbaa !819
  %13 = icmp sgt i32 %12, %0, !dbg !2315
  br i1 %13, label %32, label %14, !dbg !2316

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2317
  call void @llvm.dbg.value(metadata i1 %15, metadata !2299, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2318
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2319
  %16 = sext i32 %12 to i64, !dbg !2320
  call void @llvm.dbg.value(metadata i64 %16, metadata !2302, metadata !DIExpression()), !dbg !2318
  store i64 %16, ptr %5, align 8, !dbg !2321, !tbaa !2238
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2322
  %18 = add nuw nsw i32 %0, 1, !dbg !2323
  %19 = sub i32 %18, %12, !dbg !2324
  %20 = sext i32 %19 to i64, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %5, metadata !2302, metadata !DIExpression(DW_OP_deref)), !dbg !2318
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2326
  call void @llvm.dbg.value(metadata ptr %21, metadata !2297, metadata !DIExpression()), !dbg !2308
  store ptr %21, ptr @slotvec, align 8, !dbg !2327, !tbaa !759
  br i1 %15, label %22, label %23, !dbg !2328

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2329, !tbaa.struct !2331
  br label %23, !dbg !2332

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2333, !tbaa !819
  %25 = sext i32 %24 to i64, !dbg !2334
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2334
  %27 = load i64, ptr %5, align 8, !dbg !2335, !tbaa !2238
  call void @llvm.dbg.value(metadata i64 %27, metadata !2302, metadata !DIExpression()), !dbg !2318
  %28 = sub nsw i64 %27, %25, !dbg !2336
  %29 = shl i64 %28, 4, !dbg !2337
  call void @llvm.dbg.value(metadata ptr %26, metadata !1716, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i64 %29, metadata !1720, metadata !DIExpression()), !dbg !2338
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2340
  %30 = load i64, ptr %5, align 8, !dbg !2341, !tbaa !2238
  call void @llvm.dbg.value(metadata i64 %30, metadata !2302, metadata !DIExpression()), !dbg !2318
  %31 = trunc i64 %30 to i32, !dbg !2341
  store i32 %31, ptr @nslots, align 4, !dbg !2342, !tbaa !819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2343
  br label %32, !dbg !2344

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2308
  call void @llvm.dbg.value(metadata ptr %33, metadata !2297, metadata !DIExpression()), !dbg !2308
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2345
  %36 = load i64, ptr %35, align 8, !dbg !2346, !tbaa !2266
  call void @llvm.dbg.value(metadata i64 %36, metadata !2303, metadata !DIExpression()), !dbg !2347
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2348
  %38 = load ptr, ptr %37, align 8, !dbg !2348, !tbaa !2254
  call void @llvm.dbg.value(metadata ptr %38, metadata !2305, metadata !DIExpression()), !dbg !2347
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2349
  %40 = load i32, ptr %39, align 4, !dbg !2349, !tbaa !1564
  %41 = or i32 %40, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %41, metadata !2306, metadata !DIExpression()), !dbg !2347
  %42 = load i32, ptr %3, align 8, !dbg !2351, !tbaa !1514
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2352
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2353
  %45 = load ptr, ptr %44, align 8, !dbg !2353, !tbaa !1585
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2354
  %47 = load ptr, ptr %46, align 8, !dbg !2354, !tbaa !1588
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2355
  call void @llvm.dbg.value(metadata i64 %48, metadata !2307, metadata !DIExpression()), !dbg !2347
  %49 = icmp ugt i64 %36, %48, !dbg !2356
  br i1 %49, label %60, label %50, !dbg !2358

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2359
  call void @llvm.dbg.value(metadata i64 %51, metadata !2303, metadata !DIExpression()), !dbg !2347
  store i64 %51, ptr %35, align 8, !dbg !2361, !tbaa !2266
  %52 = icmp eq ptr %38, @slot0, !dbg !2362
  br i1 %52, label %54, label %53, !dbg !2364

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2365
  br label %54, !dbg !2365

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2366
  call void @llvm.dbg.value(metadata ptr %55, metadata !2305, metadata !DIExpression()), !dbg !2347
  store ptr %55, ptr %37, align 8, !dbg !2367, !tbaa !2254
  %56 = load i32, ptr %3, align 8, !dbg !2368, !tbaa !1514
  %57 = load ptr, ptr %44, align 8, !dbg !2369, !tbaa !1585
  %58 = load ptr, ptr %46, align 8, !dbg !2370, !tbaa !1588
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2371
  br label %60, !dbg !2372

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2347
  call void @llvm.dbg.value(metadata ptr %61, metadata !2305, metadata !DIExpression()), !dbg !2347
  store i32 %7, ptr %6, align 4, !dbg !2373, !tbaa !819
  ret ptr %61, !dbg !2374
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2375 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2379, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %1, metadata !2380, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 %2, metadata !2381, metadata !DIExpression()), !dbg !2382
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2383
  ret ptr %4, !dbg !2384
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2385 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2387, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata ptr %0, metadata !2284, metadata !DIExpression()), !dbg !2389
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2391
  ret ptr %2, !dbg !2392
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2393 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2397, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i64 %1, metadata !2398, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i32 0, metadata !2379, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %0, metadata !2380, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i64 %1, metadata !2381, metadata !DIExpression()), !dbg !2400
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2402
  ret ptr %3, !dbg !2403
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2404 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata ptr %2, metadata !2410, metadata !DIExpression()), !dbg !2412
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2411, metadata !DIExpression()), !dbg !2414
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415), !dbg !2418
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression()), !dbg !2425
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2427, !alias.scope !2415
  %5 = icmp eq i32 %1, 10, !dbg !2428
  br i1 %5, label %6, label %7, !dbg !2430

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2431, !noalias !2415
  unreachable, !dbg !2431

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2432, !tbaa !1514, !alias.scope !2415
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2433
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2434
  ret ptr %8, !dbg !2435
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2436 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %1, metadata !2441, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata ptr %2, metadata !2442, metadata !DIExpression()), !dbg !2445
  call void @llvm.dbg.value(metadata i64 %3, metadata !2443, metadata !DIExpression()), !dbg !2445
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2444, metadata !DIExpression()), !dbg !2447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression()), !dbg !2452
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2424, metadata !DIExpression()), !dbg !2454
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2454, !alias.scope !2448
  %6 = icmp eq i32 %1, 10, !dbg !2455
  br i1 %6, label %7, label %8, !dbg !2456

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2457, !noalias !2448
  unreachable, !dbg !2457

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2458, !tbaa !1514, !alias.scope !2448
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2459
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2460
  ret ptr %9, !dbg !2461
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2462 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2466, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata ptr %1, metadata !2467, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i32 0, metadata !2408, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.value(metadata ptr %1, metadata !2410, metadata !DIExpression()), !dbg !2469
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2471
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2411, metadata !DIExpression()), !dbg !2472
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473), !dbg !2476
  call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2424, metadata !DIExpression()), !dbg !2479
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2479, !alias.scope !2473
  %4 = icmp eq i32 %0, 10, !dbg !2480
  br i1 %4, label %5, label %6, !dbg !2481

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2482, !noalias !2473
  unreachable, !dbg !2482

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2483, !tbaa !1514, !alias.scope !2473
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2484
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2485
  ret ptr %7, !dbg !2486
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2487 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata ptr %1, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i64 %2, metadata !2493, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2440, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %0, metadata !2441, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata ptr %1, metadata !2442, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %2, metadata !2443, metadata !DIExpression()), !dbg !2495
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2444, metadata !DIExpression()), !dbg !2498
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499), !dbg !2502
  call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2424, metadata !DIExpression()), !dbg !2505
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2505, !alias.scope !2499
  %5 = icmp eq i32 %0, 10, !dbg !2506
  br i1 %5, label %6, label %7, !dbg !2507

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2508, !noalias !2499
  unreachable, !dbg !2508

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2509, !tbaa !1514, !alias.scope !2499
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2510
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2511
  ret ptr %8, !dbg !2512
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2513 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 %2, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2520, metadata !DIExpression()), !dbg !2523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2524, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %4, metadata !1531, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %2, metadata !1532, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8 %2, metadata !1534, metadata !DIExpression()), !dbg !2526
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2528
  %6 = lshr i8 %2, 5, !dbg !2529
  %7 = zext i8 %6 to i64, !dbg !2529
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2530
  call void @llvm.dbg.value(metadata ptr %8, metadata !1535, metadata !DIExpression()), !dbg !2526
  %9 = and i8 %2, 31, !dbg !2531
  %10 = zext i8 %9 to i32, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %10, metadata !1537, metadata !DIExpression()), !dbg !2526
  %11 = load i32, ptr %8, align 4, !dbg !2532, !tbaa !819
  %12 = lshr i32 %11, %10, !dbg !2533
  call void @llvm.dbg.value(metadata i32 %12, metadata !1538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2526
  %13 = and i32 %12, 1, !dbg !2534
  %14 = xor i32 %13, 1, !dbg !2534
  %15 = shl nuw i32 %14, %10, !dbg !2535
  %16 = xor i32 %15, %11, !dbg !2536
  store i32 %16, ptr %8, align 4, !dbg !2536, !tbaa !819
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2537
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2538
  ret ptr %17, !dbg !2539
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2540 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2544, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 %1, metadata !2545, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 -1, metadata !2518, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8 %1, metadata !2519, metadata !DIExpression()), !dbg !2547
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2549
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2520, metadata !DIExpression()), !dbg !2550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2551, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %3, metadata !1531, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 %1, metadata !1532, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 %1, metadata !1534, metadata !DIExpression()), !dbg !2552
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2554
  %5 = lshr i8 %1, 5, !dbg !2555
  %6 = zext i8 %5 to i64, !dbg !2555
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2556
  call void @llvm.dbg.value(metadata ptr %7, metadata !1535, metadata !DIExpression()), !dbg !2552
  %8 = and i8 %1, 31, !dbg !2557
  %9 = zext i8 %8 to i32, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %9, metadata !1537, metadata !DIExpression()), !dbg !2552
  %10 = load i32, ptr %7, align 4, !dbg !2558, !tbaa !819
  %11 = lshr i32 %10, %9, !dbg !2559
  call void @llvm.dbg.value(metadata i32 %11, metadata !1538, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2552
  %12 = and i32 %11, 1, !dbg !2560
  %13 = xor i32 %12, 1, !dbg !2560
  %14 = shl nuw i32 %13, %9, !dbg !2561
  %15 = xor i32 %14, %10, !dbg !2562
  store i32 %15, ptr %7, align 4, !dbg !2562, !tbaa !819
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2564
  ret ptr %16, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2566 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata ptr %0, metadata !2544, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 58, metadata !2545, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 -1, metadata !2518, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !2519, metadata !DIExpression()), !dbg !2572
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2520, metadata !DIExpression()), !dbg !2575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2576, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %2, metadata !1531, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 58, metadata !1534, metadata !DIExpression()), !dbg !2577
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2579
  call void @llvm.dbg.value(metadata ptr %3, metadata !1535, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 26, metadata !1537, metadata !DIExpression()), !dbg !2577
  %4 = load i32, ptr %3, align 4, !dbg !2580, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %4, metadata !1538, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2577
  %5 = or i32 %4, 67108864, !dbg !2581
  store i32 %5, ptr %3, align 4, !dbg !2581, !tbaa !819
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2582
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2583
  ret ptr %6, !dbg !2584
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2585 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i64 %1, metadata !2588, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata ptr %0, metadata !2517, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %1, metadata !2518, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 58, metadata !2519, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2592
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2520, metadata !DIExpression()), !dbg !2593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2594, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %3, metadata !1531, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !1534, metadata !DIExpression()), !dbg !2595
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %4, metadata !1535, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 26, metadata !1537, metadata !DIExpression()), !dbg !2595
  %5 = load i32, ptr %4, align 4, !dbg !2598, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %5, metadata !1538, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2595
  %6 = or i32 %5, 67108864, !dbg !2599
  store i32 %6, ptr %4, align 4, !dbg !2599, !tbaa !819
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2600
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2601
  ret ptr %7, !dbg !2602
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2603 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2424, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2609
  call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 %1, metadata !2606, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata ptr %2, metadata !2607, metadata !DIExpression()), !dbg !2611
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2608, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2614
  %5 = icmp eq i32 %1, 10, !dbg !2615
  br i1 %5, label %6, label %7, !dbg !2616

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2617, !noalias !2618
  unreachable, !dbg !2617

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2424, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2614
  store i32 %1, ptr %4, align 8, !dbg !2621, !tbaa.struct !2525
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %4, metadata !1531, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i8 58, metadata !1534, metadata !DIExpression()), !dbg !2622
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2624
  call void @llvm.dbg.value(metadata ptr %9, metadata !1535, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.value(metadata i32 26, metadata !1537, metadata !DIExpression()), !dbg !2622
  %10 = load i32, ptr %9, align 4, !dbg !2625, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %10, metadata !1538, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2622
  %11 = or i32 %10, 67108864, !dbg !2626
  store i32 %11, ptr %9, align 4, !dbg !2626, !tbaa !819
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2627
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2628
  ret ptr %12, !dbg !2629
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2630 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2634, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %1, metadata !2635, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %2, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata ptr %3, metadata !2637, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %1, metadata !2644, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %2, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %3, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 -1, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2651
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2648, metadata !DIExpression()), !dbg !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2653, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %5, metadata !1571, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %1, metadata !1572, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %2, metadata !1573, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %5, metadata !1571, metadata !DIExpression()), !dbg !2654
  store i32 10, ptr %5, align 8, !dbg !2656, !tbaa !1514
  %6 = icmp ne ptr %1, null, !dbg !2657
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2658
  br i1 %8, label %10, label %9, !dbg !2658

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2659
  unreachable, !dbg !2659

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2660
  store ptr %1, ptr %11, align 8, !dbg !2661, !tbaa !1585
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2662
  store ptr %2, ptr %12, align 8, !dbg !2663, !tbaa !1588
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2665
  ret ptr %13, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2640 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2639, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %1, metadata !2644, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %2, metadata !2645, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata ptr %3, metadata !2646, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 %4, metadata !2647, metadata !DIExpression()), !dbg !2667
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2648, metadata !DIExpression()), !dbg !2669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2670, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %6, metadata !1571, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %1, metadata !1572, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %2, metadata !1573, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %6, metadata !1571, metadata !DIExpression()), !dbg !2671
  store i32 10, ptr %6, align 8, !dbg !2673, !tbaa !1514
  %7 = icmp ne ptr %1, null, !dbg !2674
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2675
  br i1 %9, label %11, label %10, !dbg !2675

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2676
  unreachable, !dbg !2676

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2677
  store ptr %1, ptr %12, align 8, !dbg !2678, !tbaa !1585
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2679
  store ptr %2, ptr %13, align 8, !dbg !2680, !tbaa !1588
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2682
  ret ptr %14, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2684 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2688, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %1, metadata !2689, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %2, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata i32 0, metadata !2634, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %0, metadata !2635, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %2, metadata !2637, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %1, metadata !2645, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %2, metadata !2646, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i64 -1, metadata !2647, metadata !DIExpression()), !dbg !2694
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2648, metadata !DIExpression()), !dbg !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2698, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %4, metadata !1571, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %0, metadata !1572, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %1, metadata !1573, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %4, metadata !1571, metadata !DIExpression()), !dbg !2699
  store i32 10, ptr %4, align 8, !dbg !2701, !tbaa !1514
  %5 = icmp ne ptr %0, null, !dbg !2702
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2703
  br i1 %7, label %9, label %8, !dbg !2703

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2704
  unreachable, !dbg !2704

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2705
  store ptr %0, ptr %10, align 8, !dbg !2706, !tbaa !1585
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2707
  store ptr %1, ptr %11, align 8, !dbg !2708, !tbaa !1588
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2709
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2710
  ret ptr %12, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2712 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2716, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %1, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %2, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %3, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i32 0, metadata !2639, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %0, metadata !2644, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %1, metadata !2645, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %2, metadata !2646, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 %3, metadata !2647, metadata !DIExpression()), !dbg !2721
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2723
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2648, metadata !DIExpression()), !dbg !2724
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2725, !tbaa.struct !2525
  call void @llvm.dbg.value(metadata ptr %5, metadata !1571, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %0, metadata !1572, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %1, metadata !1573, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata ptr %5, metadata !1571, metadata !DIExpression()), !dbg !2726
  store i32 10, ptr %5, align 8, !dbg !2728, !tbaa !1514
  %6 = icmp ne ptr %0, null, !dbg !2729
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2730
  br i1 %8, label %10, label %9, !dbg !2730

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2731
  unreachable, !dbg !2731

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2732
  store ptr %0, ptr %11, align 8, !dbg !2733, !tbaa !1585
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2734
  store ptr %1, ptr %12, align 8, !dbg !2735, !tbaa !1588
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2736
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2737
  ret ptr %13, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2739 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %1, metadata !2744, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata i64 %2, metadata !2745, metadata !DIExpression()), !dbg !2746
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2747
  ret ptr %4, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2749 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 %1, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %1, metadata !2745, metadata !DIExpression()), !dbg !2756
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2758
  ret ptr %3, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2760 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %1, metadata !2744, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 -1, metadata !2745, metadata !DIExpression()), !dbg !2767
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2769
  ret ptr %3, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2771 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %0, metadata !2765, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 -1, metadata !2745, metadata !DIExpression()), !dbg !2779
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2781
  ret ptr %2, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2783 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2822, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %1, metadata !2823, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %2, metadata !2824, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %3, metadata !2825, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata ptr %4, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %5, metadata !2827, metadata !DIExpression()), !dbg !2828
  %7 = icmp eq ptr %1, null, !dbg !2829
  br i1 %7, label %10, label %8, !dbg !2831

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2832
  br label %12, !dbg !2832

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #36, !dbg !2833
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #36, !dbg !2834
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2834
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2835
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #36, !dbg !2836
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #36, !dbg !2836
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2837
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
  ], !dbg !2838

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #36, !dbg !2839
  %21 = load ptr, ptr %4, align 8, !dbg !2839, !tbaa !759
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2839
  br label %147, !dbg !2841

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #36, !dbg !2842
  %25 = load ptr, ptr %4, align 8, !dbg !2842, !tbaa !759
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2842
  %27 = load ptr, ptr %26, align 8, !dbg !2842, !tbaa !759
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2842
  br label %147, !dbg !2843

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #36, !dbg !2844
  %31 = load ptr, ptr %4, align 8, !dbg !2844, !tbaa !759
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2844
  %33 = load ptr, ptr %32, align 8, !dbg !2844, !tbaa !759
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2844
  %35 = load ptr, ptr %34, align 8, !dbg !2844, !tbaa !759
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2844
  br label %147, !dbg !2845

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #36, !dbg !2846
  %39 = load ptr, ptr %4, align 8, !dbg !2846, !tbaa !759
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2846
  %41 = load ptr, ptr %40, align 8, !dbg !2846, !tbaa !759
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2846
  %43 = load ptr, ptr %42, align 8, !dbg !2846, !tbaa !759
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2846
  %45 = load ptr, ptr %44, align 8, !dbg !2846, !tbaa !759
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2846
  br label %147, !dbg !2847

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #36, !dbg !2848
  %49 = load ptr, ptr %4, align 8, !dbg !2848, !tbaa !759
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2848
  %51 = load ptr, ptr %50, align 8, !dbg !2848, !tbaa !759
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2848
  %53 = load ptr, ptr %52, align 8, !dbg !2848, !tbaa !759
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2848
  %55 = load ptr, ptr %54, align 8, !dbg !2848, !tbaa !759
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2848
  %57 = load ptr, ptr %56, align 8, !dbg !2848, !tbaa !759
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2848
  br label %147, !dbg !2849

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #36, !dbg !2850
  %61 = load ptr, ptr %4, align 8, !dbg !2850, !tbaa !759
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2850
  %63 = load ptr, ptr %62, align 8, !dbg !2850, !tbaa !759
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2850
  %65 = load ptr, ptr %64, align 8, !dbg !2850, !tbaa !759
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2850
  %67 = load ptr, ptr %66, align 8, !dbg !2850, !tbaa !759
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2850
  %69 = load ptr, ptr %68, align 8, !dbg !2850, !tbaa !759
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2850
  %71 = load ptr, ptr %70, align 8, !dbg !2850, !tbaa !759
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2850
  br label %147, !dbg !2851

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #36, !dbg !2852
  %75 = load ptr, ptr %4, align 8, !dbg !2852, !tbaa !759
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2852
  %77 = load ptr, ptr %76, align 8, !dbg !2852, !tbaa !759
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2852
  %79 = load ptr, ptr %78, align 8, !dbg !2852, !tbaa !759
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2852
  %81 = load ptr, ptr %80, align 8, !dbg !2852, !tbaa !759
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2852
  %83 = load ptr, ptr %82, align 8, !dbg !2852, !tbaa !759
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2852
  %85 = load ptr, ptr %84, align 8, !dbg !2852, !tbaa !759
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2852
  %87 = load ptr, ptr %86, align 8, !dbg !2852, !tbaa !759
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2852
  br label %147, !dbg !2853

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #36, !dbg !2854
  %91 = load ptr, ptr %4, align 8, !dbg !2854, !tbaa !759
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2854
  %93 = load ptr, ptr %92, align 8, !dbg !2854, !tbaa !759
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2854
  %95 = load ptr, ptr %94, align 8, !dbg !2854, !tbaa !759
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2854
  %97 = load ptr, ptr %96, align 8, !dbg !2854, !tbaa !759
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2854
  %99 = load ptr, ptr %98, align 8, !dbg !2854, !tbaa !759
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2854
  %101 = load ptr, ptr %100, align 8, !dbg !2854, !tbaa !759
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2854
  %103 = load ptr, ptr %102, align 8, !dbg !2854, !tbaa !759
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2854
  %105 = load ptr, ptr %104, align 8, !dbg !2854, !tbaa !759
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2854
  br label %147, !dbg !2855

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #36, !dbg !2856
  %109 = load ptr, ptr %4, align 8, !dbg !2856, !tbaa !759
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2856
  %111 = load ptr, ptr %110, align 8, !dbg !2856, !tbaa !759
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2856
  %113 = load ptr, ptr %112, align 8, !dbg !2856, !tbaa !759
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2856
  %115 = load ptr, ptr %114, align 8, !dbg !2856, !tbaa !759
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2856
  %117 = load ptr, ptr %116, align 8, !dbg !2856, !tbaa !759
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2856
  %119 = load ptr, ptr %118, align 8, !dbg !2856, !tbaa !759
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2856
  %121 = load ptr, ptr %120, align 8, !dbg !2856, !tbaa !759
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2856
  %123 = load ptr, ptr %122, align 8, !dbg !2856, !tbaa !759
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2856
  %125 = load ptr, ptr %124, align 8, !dbg !2856, !tbaa !759
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2856
  br label %147, !dbg !2857

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #36, !dbg !2858
  %129 = load ptr, ptr %4, align 8, !dbg !2858, !tbaa !759
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2858
  %131 = load ptr, ptr %130, align 8, !dbg !2858, !tbaa !759
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2858
  %133 = load ptr, ptr %132, align 8, !dbg !2858, !tbaa !759
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2858
  %135 = load ptr, ptr %134, align 8, !dbg !2858, !tbaa !759
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2858
  %137 = load ptr, ptr %136, align 8, !dbg !2858, !tbaa !759
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2858
  %139 = load ptr, ptr %138, align 8, !dbg !2858, !tbaa !759
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2858
  %141 = load ptr, ptr %140, align 8, !dbg !2858, !tbaa !759
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2858
  %143 = load ptr, ptr %142, align 8, !dbg !2858, !tbaa !759
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2858
  %145 = load ptr, ptr %144, align 8, !dbg !2858, !tbaa !759
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2858
  br label %147, !dbg !2859

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2860
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2861 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2865, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %1, metadata !2866, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %2, metadata !2867, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %3, metadata !2868, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata ptr %4, metadata !2869, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 0, metadata !2870, metadata !DIExpression()), !dbg !2871
  br label %6, !dbg !2872

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2874
  call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2871
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2875
  %9 = load ptr, ptr %8, align 8, !dbg !2875, !tbaa !759
  %10 = icmp eq ptr %9, null, !dbg !2877
  %11 = add i64 %7, 1, !dbg !2878
  call void @llvm.dbg.value(metadata i64 %11, metadata !2870, metadata !DIExpression()), !dbg !2871
  br i1 %10, label %12, label %6, !dbg !2877, !llvm.loop !2879

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2881
  ret void, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2883 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %1, metadata !2899, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %2, metadata !2900, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata ptr %3, metadata !2901, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2902, metadata !DIExpression()), !dbg !2907
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2904, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.value(metadata i64 0, metadata !2903, metadata !DIExpression()), !dbg !2906
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2903, metadata !DIExpression()), !dbg !2906
  %10 = icmp sgt i32 %9, -1, !dbg !2910
  br i1 %10, label %18, label %11, !dbg !2910

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2910
  store i32 %12, ptr %7, align 8, !dbg !2910
  %13 = icmp ult i32 %9, -7, !dbg !2910
  br i1 %13, label %14, label %18, !dbg !2910

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2910
  %16 = sext i32 %9 to i64, !dbg !2910
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2910
  br label %22, !dbg !2910

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2910
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2910
  store ptr %21, ptr %4, align 8, !dbg !2910
  br label %22, !dbg !2910

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2910
  %25 = load ptr, ptr %24, align 8, !dbg !2910
  store ptr %25, ptr %6, align 8, !dbg !2913, !tbaa !759
  %26 = icmp eq ptr %25, null, !dbg !2914
  br i1 %26, label %197, label %27, !dbg !2915

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 1, metadata !2903, metadata !DIExpression()), !dbg !2906
  %28 = icmp sgt i32 %23, -1, !dbg !2910
  br i1 %28, label %36, label %29, !dbg !2910

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2910
  store i32 %30, ptr %7, align 8, !dbg !2910
  %31 = icmp ult i32 %23, -7, !dbg !2910
  br i1 %31, label %32, label %36, !dbg !2910

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2910
  %34 = sext i32 %23 to i64, !dbg !2910
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2910
  br label %40, !dbg !2910

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2910
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2910
  store ptr %39, ptr %4, align 8, !dbg !2910
  br label %40, !dbg !2910

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2910
  %43 = load ptr, ptr %42, align 8, !dbg !2910
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2916
  store ptr %43, ptr %44, align 8, !dbg !2913, !tbaa !759
  %45 = icmp eq ptr %43, null, !dbg !2914
  br i1 %45, label %197, label %46, !dbg !2915

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 2, metadata !2903, metadata !DIExpression()), !dbg !2906
  %47 = icmp sgt i32 %41, -1, !dbg !2910
  br i1 %47, label %55, label %48, !dbg !2910

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2910
  store i32 %49, ptr %7, align 8, !dbg !2910
  %50 = icmp ult i32 %41, -7, !dbg !2910
  br i1 %50, label %51, label %55, !dbg !2910

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2910
  %53 = sext i32 %41 to i64, !dbg !2910
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2910
  br label %59, !dbg !2910

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2910
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2910
  store ptr %58, ptr %4, align 8, !dbg !2910
  br label %59, !dbg !2910

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2910
  %62 = load ptr, ptr %61, align 8, !dbg !2910
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2916
  store ptr %62, ptr %63, align 8, !dbg !2913, !tbaa !759
  %64 = icmp eq ptr %62, null, !dbg !2914
  br i1 %64, label %197, label %65, !dbg !2915

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 3, metadata !2903, metadata !DIExpression()), !dbg !2906
  %66 = icmp sgt i32 %60, -1, !dbg !2910
  br i1 %66, label %74, label %67, !dbg !2910

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2910
  store i32 %68, ptr %7, align 8, !dbg !2910
  %69 = icmp ult i32 %60, -7, !dbg !2910
  br i1 %69, label %70, label %74, !dbg !2910

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2910
  %72 = sext i32 %60 to i64, !dbg !2910
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2910
  br label %78, !dbg !2910

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2910
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2910
  store ptr %77, ptr %4, align 8, !dbg !2910
  br label %78, !dbg !2910

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2910
  %81 = load ptr, ptr %80, align 8, !dbg !2910
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2916
  store ptr %81, ptr %82, align 8, !dbg !2913, !tbaa !759
  %83 = icmp eq ptr %81, null, !dbg !2914
  br i1 %83, label %197, label %84, !dbg !2915

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 4, metadata !2903, metadata !DIExpression()), !dbg !2906
  %85 = icmp sgt i32 %79, -1, !dbg !2910
  br i1 %85, label %93, label %86, !dbg !2910

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2910
  store i32 %87, ptr %7, align 8, !dbg !2910
  %88 = icmp ult i32 %79, -7, !dbg !2910
  br i1 %88, label %89, label %93, !dbg !2910

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2910
  %91 = sext i32 %79 to i64, !dbg !2910
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2910
  br label %97, !dbg !2910

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2910
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2910
  store ptr %96, ptr %4, align 8, !dbg !2910
  br label %97, !dbg !2910

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2910
  %100 = load ptr, ptr %99, align 8, !dbg !2910
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2916
  store ptr %100, ptr %101, align 8, !dbg !2913, !tbaa !759
  %102 = icmp eq ptr %100, null, !dbg !2914
  br i1 %102, label %197, label %103, !dbg !2915

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 5, metadata !2903, metadata !DIExpression()), !dbg !2906
  %104 = icmp sgt i32 %98, -1, !dbg !2910
  br i1 %104, label %112, label %105, !dbg !2910

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2910
  store i32 %106, ptr %7, align 8, !dbg !2910
  %107 = icmp ult i32 %98, -7, !dbg !2910
  br i1 %107, label %108, label %112, !dbg !2910

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2910
  %110 = sext i32 %98 to i64, !dbg !2910
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2910
  br label %116, !dbg !2910

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2910
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2910
  store ptr %115, ptr %4, align 8, !dbg !2910
  br label %116, !dbg !2910

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2910
  %119 = load ptr, ptr %118, align 8, !dbg !2910
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2916
  store ptr %119, ptr %120, align 8, !dbg !2913, !tbaa !759
  %121 = icmp eq ptr %119, null, !dbg !2914
  br i1 %121, label %197, label %122, !dbg !2915

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 6, metadata !2903, metadata !DIExpression()), !dbg !2906
  %123 = icmp sgt i32 %117, -1, !dbg !2910
  br i1 %123, label %131, label %124, !dbg !2910

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2910
  store i32 %125, ptr %7, align 8, !dbg !2910
  %126 = icmp ult i32 %117, -7, !dbg !2910
  br i1 %126, label %127, label %131, !dbg !2910

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2910
  %129 = sext i32 %117 to i64, !dbg !2910
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2910
  br label %135, !dbg !2910

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2910
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2910
  store ptr %134, ptr %4, align 8, !dbg !2910
  br label %135, !dbg !2910

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2910
  %138 = load ptr, ptr %137, align 8, !dbg !2910
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2916
  store ptr %138, ptr %139, align 8, !dbg !2913, !tbaa !759
  %140 = icmp eq ptr %138, null, !dbg !2914
  br i1 %140, label %197, label %141, !dbg !2915

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 7, metadata !2903, metadata !DIExpression()), !dbg !2906
  %142 = icmp sgt i32 %136, -1, !dbg !2910
  br i1 %142, label %150, label %143, !dbg !2910

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2910
  store i32 %144, ptr %7, align 8, !dbg !2910
  %145 = icmp ult i32 %136, -7, !dbg !2910
  br i1 %145, label %146, label %150, !dbg !2910

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2910
  %148 = sext i32 %136 to i64, !dbg !2910
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2910
  br label %154, !dbg !2910

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2910
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2910
  store ptr %153, ptr %4, align 8, !dbg !2910
  br label %154, !dbg !2910

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2910
  %157 = load ptr, ptr %156, align 8, !dbg !2910
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2916
  store ptr %157, ptr %158, align 8, !dbg !2913, !tbaa !759
  %159 = icmp eq ptr %157, null, !dbg !2914
  br i1 %159, label %197, label %160, !dbg !2915

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 8, metadata !2903, metadata !DIExpression()), !dbg !2906
  %161 = icmp sgt i32 %155, -1, !dbg !2910
  br i1 %161, label %169, label %162, !dbg !2910

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2910
  store i32 %163, ptr %7, align 8, !dbg !2910
  %164 = icmp ult i32 %155, -7, !dbg !2910
  br i1 %164, label %165, label %169, !dbg !2910

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2910
  %167 = sext i32 %155 to i64, !dbg !2910
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2910
  br label %173, !dbg !2910

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2910
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2910
  store ptr %172, ptr %4, align 8, !dbg !2910
  br label %173, !dbg !2910

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2910
  %176 = load ptr, ptr %175, align 8, !dbg !2910
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2916
  store ptr %176, ptr %177, align 8, !dbg !2913, !tbaa !759
  %178 = icmp eq ptr %176, null, !dbg !2914
  br i1 %178, label %197, label %179, !dbg !2915

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2903, metadata !DIExpression()), !dbg !2906
  call void @llvm.dbg.value(metadata i64 9, metadata !2903, metadata !DIExpression()), !dbg !2906
  %180 = icmp sgt i32 %174, -1, !dbg !2910
  br i1 %180, label %188, label %181, !dbg !2910

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2910
  store i32 %182, ptr %7, align 8, !dbg !2910
  %183 = icmp ult i32 %174, -7, !dbg !2910
  br i1 %183, label %184, label %188, !dbg !2910

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2910
  %186 = sext i32 %174 to i64, !dbg !2910
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2910
  br label %191, !dbg !2910

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2910
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2910
  store ptr %190, ptr %4, align 8, !dbg !2910
  br label %191, !dbg !2910

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2910
  %193 = load ptr, ptr %192, align 8, !dbg !2910
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2916
  store ptr %193, ptr %194, align 8, !dbg !2913, !tbaa !759
  %195 = icmp eq ptr %193, null, !dbg !2914
  %196 = select i1 %195, i64 9, i64 10, !dbg !2915
  br label %197, !dbg !2915

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2917
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2918
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2919
  ret void, !dbg !2919
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2920 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2924, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %1, metadata !2925, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %2, metadata !2926, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata ptr %3, metadata !2927, metadata !DIExpression()), !dbg !2929
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2930
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2928, metadata !DIExpression()), !dbg !2931
  call void @llvm.va_start(ptr nonnull %5), !dbg !2932
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2933, !tbaa.struct !1114
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2933
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2933
  call void @llvm.va_end(ptr nonnull %5), !dbg !2934
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2935
  ret void, !dbg !2935
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2936 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2937, !tbaa !759
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2937
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #36, !dbg !2938
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #36, !dbg !2938
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2939
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #36, !dbg !2939
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2940
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2940
  ret void, !dbg !2941
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2942 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2947, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %1, metadata !2948, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 %2, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64 %2, metadata !2955, metadata !DIExpression()), !dbg !2956
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2958
  call void @llvm.dbg.value(metadata ptr %4, metadata !2959, metadata !DIExpression()), !dbg !2964
  %5 = icmp eq ptr %4, null, !dbg !2966
  br i1 %5, label %6, label %7, !dbg !2968

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2969
  unreachable, !dbg !2969

7:                                                ; preds = %3
  ret ptr %4, !dbg !2970
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2952 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2954, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %2, metadata !2955, metadata !DIExpression()), !dbg !2971
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2972
  call void @llvm.dbg.value(metadata ptr %4, metadata !2959, metadata !DIExpression()), !dbg !2973
  %5 = icmp eq ptr %4, null, !dbg !2975
  br i1 %5, label %6, label %7, !dbg !2976

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2977
  unreachable, !dbg !2977

7:                                                ; preds = %3
  ret ptr %4, !dbg !2978
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2979 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2983, metadata !DIExpression()), !dbg !2984
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %2, metadata !2959, metadata !DIExpression()), !dbg !2986
  %3 = icmp eq ptr %2, null, !dbg !2988
  br i1 %3, label %4, label %5, !dbg !2989

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2990
  unreachable, !dbg !2990

5:                                                ; preds = %1
  ret ptr %2, !dbg !2991
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2992 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2993 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.value(metadata i64 %0, metadata !2999, metadata !DIExpression()), !dbg !3003
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %2, metadata !2959, metadata !DIExpression()), !dbg !3006
  %3 = icmp eq ptr %2, null, !dbg !3008
  br i1 %3, label %4, label %5, !dbg !3009

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3010
  unreachable, !dbg !3010

5:                                                ; preds = %1
  ret ptr %2, !dbg !3011
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3012 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3016, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %0, metadata !2983, metadata !DIExpression()), !dbg !3018
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %2, metadata !2959, metadata !DIExpression()), !dbg !3021
  %3 = icmp eq ptr %2, null, !dbg !3023
  br i1 %3, label %4, label %5, !dbg !3024

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3025
  unreachable, !dbg !3025

5:                                                ; preds = %1
  ret ptr %2, !dbg !3026
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3027 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()), !dbg !3039
  %3 = icmp eq i64 %1, 0, !dbg !3041
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3041
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %5, metadata !2959, metadata !DIExpression()), !dbg !3043
  %6 = icmp eq ptr %5, null, !dbg !3045
  br i1 %6, label %7, label %8, !dbg !3046

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3047
  unreachable, !dbg !3047

8:                                                ; preds = %2
  ret ptr %5, !dbg !3048
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3049 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3050 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3054, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata i64 %1, metadata !3055, metadata !DIExpression()), !dbg !3056
  call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()), !dbg !3063
  %3 = icmp eq i64 %1, 0, !dbg !3065
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3065
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3066
  call void @llvm.dbg.value(metadata ptr %5, metadata !2959, metadata !DIExpression()), !dbg !3067
  %6 = icmp eq ptr %5, null, !dbg !3069
  br i1 %6, label %7, label %8, !dbg !3070

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3071
  unreachable, !dbg !3071

8:                                                ; preds = %2
  ret ptr %5, !dbg !3072
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3073 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %2, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %1, metadata !3084, metadata !DIExpression()), !dbg !3086
  call void @llvm.dbg.value(metadata i64 %2, metadata !3085, metadata !DIExpression()), !dbg !3086
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3088
  call void @llvm.dbg.value(metadata ptr %4, metadata !2959, metadata !DIExpression()), !dbg !3089
  %5 = icmp eq ptr %4, null, !dbg !3091
  br i1 %5, label %6, label %7, !dbg !3092

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3093
  unreachable, !dbg !3093

7:                                                ; preds = %3
  ret ptr %4, !dbg !3094
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3095 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3099, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3101
  call void @llvm.dbg.value(metadata ptr null, metadata !2951, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %0, metadata !2954, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !3102
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %3, metadata !2959, metadata !DIExpression()), !dbg !3105
  %4 = icmp eq ptr %3, null, !dbg !3107
  br i1 %4, label %5, label %6, !dbg !3108

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3109
  unreachable, !dbg !3109

6:                                                ; preds = %2
  ret ptr %3, !dbg !3110
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3111 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr null, metadata !3077, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %0, metadata !3078, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr null, metadata !3081, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %0, metadata !3084, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3085, metadata !DIExpression()), !dbg !3120
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %3, metadata !2959, metadata !DIExpression()), !dbg !3123
  %4 = icmp eq ptr %3, null, !dbg !3125
  br i1 %4, label %5, label %6, !dbg !3126

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3127
  unreachable, !dbg !3127

6:                                                ; preds = %2
  ret ptr %3, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3133, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %1, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %1, metadata !697, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 1, metadata !698, metadata !DIExpression()), !dbg !3136
  %3 = load i64, ptr %1, align 8, !dbg !3138, !tbaa !2238
  call void @llvm.dbg.value(metadata i64 %3, metadata !699, metadata !DIExpression()), !dbg !3136
  %4 = icmp eq ptr %0, null, !dbg !3139
  br i1 %4, label %5, label %8, !dbg !3141

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3142
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3145
  br label %15, !dbg !3145

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3146
  %10 = add nuw i64 %9, 1, !dbg !3146
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3146
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3146
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %13, metadata !699, metadata !DIExpression()), !dbg !3136
  br i1 %12, label %14, label %15, !dbg !3149

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3150
  unreachable, !dbg !3150

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3136
  call void @llvm.dbg.value(metadata i64 %16, metadata !699, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %16, metadata !2954, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 1, metadata !2955, metadata !DIExpression()), !dbg !3151
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3153
  call void @llvm.dbg.value(metadata ptr %17, metadata !2959, metadata !DIExpression()), !dbg !3154
  %18 = icmp eq ptr %17, null, !dbg !3156
  br i1 %18, label %19, label %20, !dbg !3157

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3158
  unreachable, !dbg !3158

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !696, metadata !DIExpression()), !dbg !3136
  store i64 %16, ptr %1, align 8, !dbg !3159, !tbaa !2238
  ret ptr %17, !dbg !3160
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !691 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %1, metadata !697, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata i64 %2, metadata !698, metadata !DIExpression()), !dbg !3161
  %4 = load i64, ptr %1, align 8, !dbg !3162, !tbaa !2238
  call void @llvm.dbg.value(metadata i64 %4, metadata !699, metadata !DIExpression()), !dbg !3161
  %5 = icmp eq ptr %0, null, !dbg !3163
  br i1 %5, label %6, label %13, !dbg !3164

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3165
  br i1 %7, label %8, label %20, !dbg !3166

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %9, metadata !699, metadata !DIExpression()), !dbg !3161
  %10 = icmp ugt i64 %2, 128, !dbg !3169
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %12, metadata !699, metadata !DIExpression()), !dbg !3161
  br label %20, !dbg !3171

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3172
  %15 = add nuw i64 %14, 1, !dbg !3172
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3172
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3172
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %18, metadata !699, metadata !DIExpression()), !dbg !3161
  br i1 %17, label %19, label %20, !dbg !3173

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3174
  unreachable, !dbg !3174

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3161
  call void @llvm.dbg.value(metadata i64 %21, metadata !699, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.value(metadata ptr %0, metadata !2951, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %21, metadata !2954, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %2, metadata !2955, metadata !DIExpression()), !dbg !3175
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3177
  call void @llvm.dbg.value(metadata ptr %22, metadata !2959, metadata !DIExpression()), !dbg !3178
  %23 = icmp eq ptr %22, null, !dbg !3180
  br i1 %23, label %24, label %25, !dbg !3181

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3182
  unreachable, !dbg !3182

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !696, metadata !DIExpression()), !dbg !3161
  store i64 %21, ptr %1, align 8, !dbg !3183, !tbaa !2238
  ret ptr %22, !dbg !3184
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !703 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !711, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %1, metadata !712, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %2, metadata !713, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %3, metadata !714, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %4, metadata !715, metadata !DIExpression()), !dbg !3185
  %6 = load i64, ptr %1, align 8, !dbg !3186, !tbaa !2238
  call void @llvm.dbg.value(metadata i64 %6, metadata !716, metadata !DIExpression()), !dbg !3185
  %7 = ashr i64 %6, 1, !dbg !3187
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3187
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3187
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %10, metadata !717, metadata !DIExpression()), !dbg !3185
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3189
  call void @llvm.dbg.value(metadata i64 %11, metadata !717, metadata !DIExpression()), !dbg !3185
  %12 = icmp sgt i64 %3, -1, !dbg !3190
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3192
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3192
  call void @llvm.dbg.value(metadata i64 %15, metadata !717, metadata !DIExpression()), !dbg !3185
  %16 = icmp slt i64 %4, 0, !dbg !3193
  br i1 %16, label %17, label %30, !dbg !3193

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3193
  br i1 %18, label %19, label %24, !dbg !3193

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3193
  %21 = udiv i64 9223372036854775807, %20, !dbg !3193
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3193
  br i1 %23, label %46, label %43, !dbg !3193

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3193
  br i1 %25, label %43, label %26, !dbg !3193

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3193
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3193
  %29 = icmp ult i64 %28, %15, !dbg !3193
  br i1 %29, label %46, label %43, !dbg !3193

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3193
  br i1 %31, label %43, label %32, !dbg !3193

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3193
  br i1 %33, label %34, label %40, !dbg !3193

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3193
  br i1 %35, label %43, label %36, !dbg !3193

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3193
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3193
  %39 = icmp ult i64 %38, %4, !dbg !3193
  br i1 %39, label %46, label %43, !dbg !3193

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3193
  br i1 %42, label %46, label %43, !dbg !3193

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !718, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3185
  %44 = mul i64 %15, %4, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %44, metadata !718, metadata !DIExpression()), !dbg !3185
  %45 = icmp slt i64 %44, 128, !dbg !3193
  br i1 %45, label %46, label %52, !dbg !3193

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !719, metadata !DIExpression()), !dbg !3185
  %48 = sdiv i64 %47, %4, !dbg !3194
  call void @llvm.dbg.value(metadata i64 %48, metadata !717, metadata !DIExpression()), !dbg !3185
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %51, metadata !718, metadata !DIExpression()), !dbg !3185
  br label %52, !dbg !3198

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3185
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3185
  call void @llvm.dbg.value(metadata i64 %54, metadata !718, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %53, metadata !717, metadata !DIExpression()), !dbg !3185
  %55 = icmp eq ptr %0, null, !dbg !3199
  br i1 %55, label %56, label %57, !dbg !3201

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3202, !tbaa !2238
  br label %57, !dbg !3203

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3204
  %59 = icmp slt i64 %58, %2, !dbg !3206
  br i1 %59, label %60, label %97, !dbg !3207

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3208
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3208
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3208
  call void @llvm.dbg.value(metadata i64 %63, metadata !717, metadata !DIExpression()), !dbg !3185
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3209
  br i1 %66, label %96, label %67, !dbg !3209

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3210

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3210
  br i1 %69, label %70, label %75, !dbg !3210

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3210
  %72 = udiv i64 9223372036854775807, %71, !dbg !3210
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3210
  br i1 %74, label %96, label %94, !dbg !3210

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3210
  br i1 %76, label %94, label %77, !dbg !3210

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3210
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3210
  %80 = icmp ult i64 %79, %63, !dbg !3210
  br i1 %80, label %96, label %94, !dbg !3210

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3210
  br i1 %82, label %94, label %83, !dbg !3210

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3210
  br i1 %84, label %85, label %91, !dbg !3210

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3210
  br i1 %86, label %94, label %87, !dbg !3210

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3210
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3210
  %90 = icmp ult i64 %89, %4, !dbg !3210
  br i1 %90, label %96, label %94, !dbg !3210

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3210
  br i1 %93, label %96, label %94, !dbg !3210

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !718, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3185
  %95 = mul i64 %63, %4, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %95, metadata !718, metadata !DIExpression()), !dbg !3185
  br label %97, !dbg !3211

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3212
  unreachable, !dbg !3212

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3185
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3185
  call void @llvm.dbg.value(metadata i64 %99, metadata !718, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %98, metadata !717, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %0, metadata !3031, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %99, metadata !3032, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %0, metadata !3034, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %99, metadata !3038, metadata !DIExpression()), !dbg !3215
  %100 = icmp eq i64 %99, 0, !dbg !3217
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3217
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %102, metadata !2959, metadata !DIExpression()), !dbg !3219
  %103 = icmp eq ptr %102, null, !dbg !3221
  br i1 %103, label %104, label %105, !dbg !3222

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3223
  unreachable, !dbg !3223

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !711, metadata !DIExpression()), !dbg !3185
  store i64 %98, ptr %1, align 8, !dbg !3224, !tbaa !2238
  ret ptr %102, !dbg !3225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3226 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 1, metadata !3233, metadata !DIExpression()), !dbg !3234
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3236
  call void @llvm.dbg.value(metadata ptr %2, metadata !2959, metadata !DIExpression()), !dbg !3237
  %3 = icmp eq ptr %2, null, !dbg !3239
  br i1 %3, label %4, label %5, !dbg !3240

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3241
  unreachable, !dbg !3241

5:                                                ; preds = %1
  ret ptr %2, !dbg !3242
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3243 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3231 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3244
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3245
  call void @llvm.dbg.value(metadata ptr %3, metadata !2959, metadata !DIExpression()), !dbg !3246
  %4 = icmp eq ptr %3, null, !dbg !3248
  br i1 %4, label %5, label %6, !dbg !3249

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3250
  unreachable, !dbg !3250

6:                                                ; preds = %2
  ret ptr %3, !dbg !3251
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3252 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 1, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 1, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 1, metadata !3265, metadata !DIExpression()), !dbg !3266
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %2, metadata !2959, metadata !DIExpression()), !dbg !3269
  %3 = icmp eq ptr %2, null, !dbg !3271
  br i1 %3, label %4, label %5, !dbg !3272

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3273
  unreachable, !dbg !3273

5:                                                ; preds = %1
  ret ptr %2, !dbg !3274
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3257 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %1, metadata !3259, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3276
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3278
  call void @llvm.dbg.value(metadata ptr %3, metadata !2959, metadata !DIExpression()), !dbg !3279
  %4 = icmp eq ptr %3, null, !dbg !3281
  br i1 %4, label %5, label %6, !dbg !3282

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3283
  unreachable, !dbg !3283

6:                                                ; preds = %2
  ret ptr %3, !dbg !3284
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3285 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !2983, metadata !DIExpression()), !dbg !3292
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %3, metadata !2959, metadata !DIExpression()), !dbg !3295
  %4 = icmp eq ptr %3, null, !dbg !3297
  br i1 %4, label %5, label %6, !dbg !3298

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3299
  unreachable, !dbg !3299

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3300, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3310
  ret ptr %3, !dbg !3311
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3312 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !2997, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !2999, metadata !DIExpression()), !dbg !3321
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %3, metadata !2959, metadata !DIExpression()), !dbg !3324
  %4 = icmp eq ptr %3, null, !dbg !3326
  br i1 %4, label %5, label %6, !dbg !3327

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3328
  unreachable, !dbg !3328

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3300, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3331
  ret ptr %3, !dbg !3332
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3333 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3337, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.value(metadata i64 %1, metadata !3338, metadata !DIExpression()), !dbg !3340
  %3 = add nsw i64 %1, 1, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %3, metadata !2997, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %3, metadata !2999, metadata !DIExpression()), !dbg !3344
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %4, metadata !2959, metadata !DIExpression()), !dbg !3347
  %5 = icmp eq ptr %4, null, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3350

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3351
  unreachable, !dbg !3351

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3339, metadata !DIExpression()), !dbg !3340
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3352
  store i8 0, ptr %8, align 1, !dbg !3353, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %4, metadata !3300, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3356
  ret ptr %4, !dbg !3357
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3360, metadata !DIExpression()), !dbg !3361
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3362
  %3 = add i64 %2, 1, !dbg !3363
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3290, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !2983, metadata !DIExpression()), !dbg !3366
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %4, metadata !2959, metadata !DIExpression()), !dbg !3369
  %5 = icmp eq ptr %4, null, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3372

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3373
  unreachable, !dbg !3373

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3300, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3307, metadata !DIExpression()), !dbg !3374
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3376
  ret ptr %4, !dbg !3377
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3378 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3383, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %1, metadata !3380, metadata !DIExpression()), !dbg !3384
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #36, !dbg !3383
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #36, !dbg !3383
  %3 = icmp eq i32 %1, 0, !dbg !3383
  tail call void @llvm.assume(i1 %3), !dbg !3383
  tail call void @abort() #38, !dbg !3385
  unreachable, !dbg !3385
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3386 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3429
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3430
  call void @llvm.dbg.value(metadata i1 poison, metadata !3425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3434
  %3 = load i32, ptr %0, align 8, !dbg !3436, !tbaa !3437
  %4 = and i32 %3, 32, !dbg !3438
  %5 = icmp eq i32 %4, 0, !dbg !3438
  call void @llvm.dbg.value(metadata i1 %5, metadata !3427, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3439
  %7 = icmp eq i32 %6, 0, !dbg !3440
  call void @llvm.dbg.value(metadata i1 %7, metadata !3428, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  br i1 %5, label %8, label %18, !dbg !3441

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3443
  call void @llvm.dbg.value(metadata i1 %9, metadata !3425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3444
  %11 = xor i1 %7, true, !dbg !3444
  %12 = sext i1 %11 to i32, !dbg !3444
  br i1 %10, label %21, label %13, !dbg !3444

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3445
  %15 = load i32, ptr %14, align 4, !dbg !3445, !tbaa !819
  %16 = icmp ne i32 %15, 9, !dbg !3446
  %17 = sext i1 %16 to i32, !dbg !3447
  br label %21, !dbg !3447

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3448

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3450
  store i32 0, ptr %20, align 4, !dbg !3452, !tbaa !819
  br label %21, !dbg !3450

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3429
  ret i32 %22, !dbg !3453
}

; Function Attrs: nounwind
declare !dbg !3454 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3458 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3497, metadata !DIExpression()), !dbg !3500
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %2, metadata !3498, metadata !DIExpression()), !dbg !3500
  %3 = icmp slt i32 %2, 0, !dbg !3502
  br i1 %3, label %4, label %6, !dbg !3504

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3505
  br label %24, !dbg !3506

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3507
  %8 = icmp eq i32 %7, 0, !dbg !3507
  br i1 %8, label %13, label %9, !dbg !3509

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3510
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3511
  %12 = icmp eq i64 %11, -1, !dbg !3512
  br i1 %12, label %16, label %13, !dbg !3513

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3514
  %15 = icmp eq i32 %14, 0, !dbg !3514
  br i1 %15, label %16, label %18, !dbg !3515

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %17, metadata !3499, metadata !DIExpression()), !dbg !3500
  br label %24, !dbg !3517

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3518
  %20 = load i32, ptr %19, align 4, !dbg !3518, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %20, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %21, metadata !3499, metadata !DIExpression()), !dbg !3500
  %22 = icmp eq i32 %20, 0, !dbg !3519
  br i1 %22, label %24, label %23, !dbg !3517

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3521, !tbaa !819
  call void @llvm.dbg.value(metadata i32 -1, metadata !3499, metadata !DIExpression()), !dbg !3500
  br label %24, !dbg !3523

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3500
  ret i32 %25, !dbg !3524
}

; Function Attrs: nofree nounwind
declare !dbg !3525 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3526 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3527 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3528 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3531 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3569, metadata !DIExpression()), !dbg !3570
  %2 = icmp eq ptr %0, null, !dbg !3571
  br i1 %2, label %6, label %3, !dbg !3573

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3574
  %5 = icmp eq i32 %4, 0, !dbg !3574
  br i1 %5, label %6, label %8, !dbg !3575

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3576
  br label %16, !dbg !3577

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3578, metadata !DIExpression()), !dbg !3583
  %9 = load i32, ptr %0, align 8, !dbg !3585, !tbaa !3437
  %10 = and i32 %9, 256, !dbg !3587
  %11 = icmp eq i32 %10, 0, !dbg !3587
  br i1 %11, label %14, label %12, !dbg !3588

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3589
  br label %14, !dbg !3589

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3590
  br label %16, !dbg !3591

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3570
  ret i32 %17, !dbg !3592
}

; Function Attrs: nofree nounwind
declare !dbg !3593 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3594 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3633, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i64 %1, metadata !3634, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata i32 %2, metadata !3635, metadata !DIExpression()), !dbg !3639
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3640
  %5 = load ptr, ptr %4, align 8, !dbg !3640, !tbaa !3641
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3642
  %7 = load ptr, ptr %6, align 8, !dbg !3642, !tbaa !3643
  %8 = icmp eq ptr %5, %7, !dbg !3644
  br i1 %8, label %9, label %27, !dbg !3645

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3646
  %11 = load ptr, ptr %10, align 8, !dbg !3646, !tbaa !1229
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3647
  %13 = load ptr, ptr %12, align 8, !dbg !3647, !tbaa !3648
  %14 = icmp eq ptr %11, %13, !dbg !3649
  br i1 %14, label %15, label %27, !dbg !3650

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3651
  %17 = load ptr, ptr %16, align 8, !dbg !3651, !tbaa !3652
  %18 = icmp eq ptr %17, null, !dbg !3653
  br i1 %18, label %19, label %27, !dbg !3654

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3655
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3656
  call void @llvm.dbg.value(metadata i64 %21, metadata !3636, metadata !DIExpression()), !dbg !3657
  %22 = icmp eq i64 %21, -1, !dbg !3658
  br i1 %22, label %29, label %23, !dbg !3660

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3661, !tbaa !3437
  %25 = and i32 %24, -17, !dbg !3661
  store i32 %25, ptr %0, align 8, !dbg !3661, !tbaa !3437
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3662
  store i64 %21, ptr %26, align 8, !dbg !3663, !tbaa !3664
  br label %29, !dbg !3665

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3666
  br label %29, !dbg !3667

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3639
  ret i32 %30, !dbg !3668
}

; Function Attrs: nofree nounwind
declare !dbg !3669 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3672 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %1, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %2, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %3, metadata !3680, metadata !DIExpression()), !dbg !3682
  %5 = icmp eq ptr %1, null, !dbg !3683
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3685
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3685
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %8, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %7, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata ptr %6, metadata !3677, metadata !DIExpression()), !dbg !3682
  %9 = icmp eq ptr %3, null, !dbg !3686
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3688
  call void @llvm.dbg.value(metadata ptr %10, metadata !3680, metadata !DIExpression()), !dbg !3682
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %11, metadata !3681, metadata !DIExpression()), !dbg !3682
  %12 = icmp ult i64 %11, -3, !dbg !3690
  br i1 %12, label %13, label %17, !dbg !3692

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3693
  %15 = icmp eq i32 %14, 0, !dbg !3693
  br i1 %15, label %16, label %29, !dbg !3694

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3695, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %10, metadata !3702, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata i64 8, metadata !3706, metadata !DIExpression()), !dbg !3707
  store i64 0, ptr %10, align 1, !dbg !3709
  br label %29, !dbg !3710

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3711
  br i1 %18, label %19, label %20, !dbg !3713

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3714
  unreachable, !dbg !3714

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3715

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3717
  br i1 %23, label %29, label %24, !dbg !3718

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3719
  br i1 %25, label %29, label %26, !dbg !3722

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3723, !tbaa !828
  %28 = zext i8 %27 to i32, !dbg !3724
  store i32 %28, ptr %6, align 4, !dbg !3725, !tbaa !819
  br label %29, !dbg !3726

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3682
  ret i64 %30, !dbg !3727
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3728 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3734 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3736, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %1, metadata !3737, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %2, metadata !3738, metadata !DIExpression()), !dbg !3740
  %4 = icmp eq i64 %2, 0, !dbg !3741
  br i1 %4, label %8, label %5, !dbg !3741

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3741
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3741
  br i1 %7, label %13, label %8, !dbg !3741

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3740
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3740
  %9 = mul i64 %2, %1, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %9, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %0, metadata !3743, metadata !DIExpression()), !dbg !3747
  call void @llvm.dbg.value(metadata i64 %9, metadata !3746, metadata !DIExpression()), !dbg !3747
  %10 = icmp eq i64 %9, 0, !dbg !3749
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3749
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3750
  br label %15, !dbg !3751

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3740
  %14 = tail call ptr @__errno_location() #39, !dbg !3752
  store i32 12, ptr %14, align 4, !dbg !3754, !tbaa !819
  br label %15, !dbg !3755

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3740
  ret ptr %16, !dbg !3756
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3757 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3766
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3767
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3762, metadata !DIExpression()), !dbg !3768
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3769
  %4 = icmp eq i32 %3, 0, !dbg !3769
  br i1 %4, label %5, label %12, !dbg !3771

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3772, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr @.str.123, metadata !3775, metadata !DIExpression()), !dbg !3776
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.123, i64 2), !dbg !3779
  %7 = icmp eq i32 %6, 0, !dbg !3780
  br i1 %7, label %11, label %8, !dbg !3781

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3772, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata ptr @.str.1.124, metadata !3775, metadata !DIExpression()), !dbg !3782
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.124, i64 6), !dbg !3784
  %10 = icmp eq i32 %9, 0, !dbg !3785
  br i1 %10, label %11, label %12, !dbg !3786

11:                                               ; preds = %8, %5
  br label %12, !dbg !3787

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3766
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3788
  ret i1 %13, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %1, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %2, metadata !3795, metadata !DIExpression()), !dbg !3796
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3797
  ret i32 %4, !dbg !3798
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3804
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3805
  ret ptr %2, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3811
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3812
  call void @llvm.dbg.value(metadata ptr %2, metadata !3810, metadata !DIExpression()), !dbg !3811
  ret ptr %2, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata ptr %1, metadata !3817, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %2, metadata !3818, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3824
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3826
  call void @llvm.dbg.value(metadata ptr %4, metadata !3810, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata ptr %4, metadata !3819, metadata !DIExpression()), !dbg !3823
  %5 = icmp eq ptr %4, null, !dbg !3827
  br i1 %5, label %6, label %9, !dbg !3828

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3829
  br i1 %7, label %19, label %8, !dbg !3832

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3833, !tbaa !828
  br label %19, !dbg !3834

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %10, metadata !3820, metadata !DIExpression()), !dbg !3836
  %11 = icmp ult i64 %10, %2, !dbg !3837
  br i1 %11, label %12, label %14, !dbg !3839

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3840
  call void @llvm.dbg.value(metadata ptr %1, metadata !3842, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata ptr %4, metadata !3845, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %13, metadata !3846, metadata !DIExpression()), !dbg !3847
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3849
  br label %19, !dbg !3850

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3851
  br i1 %15, label %19, label %16, !dbg !3854

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3855
  call void @llvm.dbg.value(metadata ptr %1, metadata !3842, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata ptr %4, metadata !3845, metadata !DIExpression()), !dbg !3857
  call void @llvm.dbg.value(metadata i64 %17, metadata !3846, metadata !DIExpression()), !dbg !3857
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3859
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3860
  store i8 0, ptr %18, align 1, !dbg !3861, !tbaa !828
  br label %19, !dbg !3862

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3863
  ret i32 %20, !dbg !3864
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #4 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #5 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #7 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #8 = { nofree nounwind memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #10 = { nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #12 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #13 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nofree nounwind willreturn memory(argmem: read) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { noreturn nounwind }
attributes #39 = { nounwind willreturn memory(none) }
attributes #40 = { noreturn }
attributes #41 = { cold }
attributes #42 = { nounwind allocsize(1) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !301, !305, !320, !644, !678, !380, !400, !414, !465, !680, !636, !687, !721, !723, !725, !727, !729, !660, !731, !734, !736, !738}
!llvm.ident = !{!740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740}
!llvm.module.flags = !{!741, !742, !743, !744, !745, !746, !747}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/whoami.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5c047d082e30b773191158ad69a0e0a3")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!95 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!240 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !243)
!242 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!319 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !320, file: !321, line: 66, type: !372, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C11, file: !321, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !322, globals: !323, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!322 = !{!91, !101}
!323 = !{!324, !326, !351, !353, !355, !357, !318, !359, !361, !363, !365, !370}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !321, line: 272, type: !105, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "old_file_name", scope: !328, file: !321, line: 304, type: !70, isLocal: true, isDefinition: true)
!328 = distinct !DISubprogram(name: "verror_at_line", scope: !321, file: !321, line: 298, type: !329, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !344)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !97, !97, !70, !76, !70, !331}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 52, baseType: !333)
!332 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !334, line: 14, baseType: !335)
!334 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !336, baseType: !337)
!336 = !DIFile(filename: "lib/error.c", directory: "/src")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !338)
!338 = !{!339, !340, !341, !342, !343}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !337, file: !336, baseType: !91, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !337, file: !336, baseType: !91, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !337, file: !336, baseType: !91, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !337, file: !336, baseType: !97, size: 32, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !337, file: !336, baseType: !97, size: 32, offset: 224)
!344 = !{!345, !346, !347, !348, !349, !350}
!345 = !DILocalVariable(name: "status", arg: 1, scope: !328, file: !321, line: 298, type: !97)
!346 = !DILocalVariable(name: "errnum", arg: 2, scope: !328, file: !321, line: 298, type: !97)
!347 = !DILocalVariable(name: "file_name", arg: 3, scope: !328, file: !321, line: 298, type: !70)
!348 = !DILocalVariable(name: "line_number", arg: 4, scope: !328, file: !321, line: 298, type: !76)
!349 = !DILocalVariable(name: "message", arg: 5, scope: !328, file: !321, line: 298, type: !70)
!350 = !DILocalVariable(name: "args", arg: 6, scope: !328, file: !321, line: 298, type: !331)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "old_line_number", scope: !328, file: !321, line: 305, type: !76, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !321, line: 338, type: !112, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !144, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !122, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(name: "error_message_count", scope: !320, file: !321, line: 69, type: !76, isLocal: false, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !320, file: !321, line: 295, type: !97, isLocal: false, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !19, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !367, isLocal: true, isDefinition: true)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 21)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !321, line: 214, type: !105, isLocal: true, isDefinition: true)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null}
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !377, line: 60, type: !122, isLocal: true, isDefinition: true)
!377 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(name: "long_options", scope: !380, file: !377, line: 34, type: !388, isLocal: true, isDefinition: true)
!380 = distinct !DICompileUnit(language: DW_LANG_C11, file: !377, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !381, splitDebugInlining: false, nameTableKind: None)
!381 = !{!375, !382, !384, !386, !378}
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !377, line: 112, type: !34, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !377, line: 36, type: !105, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !377, line: 37, type: !144, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 768, elements: !132)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !391, line: 50, size: 256, elements: !392)
!391 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!392 = !{!393, !394, !395, !397}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !390, file: !391, line: 52, baseType: !70, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !390, file: !391, line: 55, baseType: !97, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !390, file: !391, line: 56, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !390, file: !391, line: 57, baseType: !97, size: 32, offset: 192)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(name: "program_name", scope: !400, file: !401, line: 31, type: !70, isLocal: false, isDefinition: true)
!400 = distinct !DICompileUnit(language: DW_LANG_C11, file: !401, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, globals: !403, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!402 = !{!246}
!403 = !{!398, !404, !406}
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !401, line: 46, type: !144, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !401, line: 49, type: !112, isLocal: true, isDefinition: true)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "utf07FF", scope: !410, file: !411, line: 46, type: !438, isLocal: true, isDefinition: true)
!410 = distinct !DISubprogram(name: "proper_name_lite", scope: !411, file: !411, line: 38, type: !412, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !416)
!411 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!412 = !DISubroutineType(types: !413)
!413 = !{!70, !70, !70}
!414 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !415, splitDebugInlining: false, nameTableKind: None)
!415 = !{!408}
!416 = !{!417, !418, !419, !420, !425}
!417 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !410, file: !411, line: 38, type: !70)
!418 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !410, file: !411, line: 38, type: !70)
!419 = !DILocalVariable(name: "translation", scope: !410, file: !411, line: 40, type: !70)
!420 = !DILocalVariable(name: "w", scope: !410, file: !411, line: 47, type: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !422, line: 37, baseType: !423)
!422 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !95, line: 57, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !95, line: 42, baseType: !76)
!425 = !DILocalVariable(name: "mbs", scope: !410, file: !411, line: 48, type: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !427, line: 6, baseType: !428)
!427 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !429, line: 21, baseType: !430)
!429 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 13, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !430, file: !429, line: 15, baseType: !97, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !430, file: !429, line: 20, baseType: !434, size: 32, offset: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !429, line: 16, size: 32, elements: !435)
!435 = !{!436, !437}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !434, file: !429, line: 18, baseType: !76, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !434, file: !429, line: 19, baseType: !112, size: 32)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !123)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !441, line: 78, type: !144, isLocal: true, isDefinition: true)
!441 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !441, line: 79, type: !117, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !441, line: 80, type: !446, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 13)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !441, line: 81, type: !446, isLocal: true, isDefinition: true)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !441, line: 82, type: !287, isLocal: true, isDefinition: true)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !441, line: 83, type: !122, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !441, line: 84, type: !144, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !441, line: 85, type: !19, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !441, line: 86, type: !19, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !441, line: 87, type: !144, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !465, file: !441, line: 76, type: !551, isLocal: false, isDefinition: true)
!465 = distinct !DICompileUnit(language: DW_LANG_C11, file: !441, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !466, retainedTypes: !486, globals: !487, splitDebugInlining: false, nameTableKind: None)
!466 = !{!467, !481, !74}
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !468, line: 42, baseType: !76, size: 32, elements: !469)
!468 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!469 = !{!470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480}
!470 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!471 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!472 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!473 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!474 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!475 = !DIEnumerator(name: "c_quoting_style", value: 5)
!476 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!477 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!478 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!479 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!480 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!481 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !468, line: 254, baseType: !76, size: 32, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!484 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!485 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!486 = !{!97, !98, !99}
!487 = !{!439, !442, !444, !449, !451, !453, !455, !457, !459, !461, !463, !488, !492, !502, !504, !509, !511, !513, !515, !517, !540, !547, !549}
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !465, file: !441, line: 92, type: !490, isLocal: false, isDefinition: true)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 320, elements: !40)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !465, file: !441, line: 1040, type: !494, isLocal: false, isDefinition: true)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !441, line: 56, size: 448, elements: !495)
!495 = !{!496, !497, !498, !500, !501}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !494, file: !441, line: 59, baseType: !467, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !441, line: 62, baseType: !97, size: 32, offset: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !494, file: !441, line: 66, baseType: !499, size: 256, offset: 64)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !145)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !494, file: !441, line: 69, baseType: !70, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !494, file: !441, line: 72, baseType: !70, size: 64, offset: 384)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !465, file: !441, line: 107, type: !494, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "slot0", scope: !465, file: !441, line: 831, type: !506, isLocal: true, isDefinition: true)
!506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !507)
!507 = !{!508}
!508 = !DISubrange(count: 256)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !441, line: 321, type: !122, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !441, line: 357, type: !122, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !441, line: 358, type: !122, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !441, line: 199, type: !19, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(name: "quote", scope: !519, file: !441, line: 228, type: !538, isLocal: true, isDefinition: true)
!519 = distinct !DISubprogram(name: "gettext_quote", scope: !441, file: !441, line: 197, type: !520, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!70, !70, !467}
!522 = !{!523, !524, !525, !526, !527}
!523 = !DILocalVariable(name: "msgid", arg: 1, scope: !519, file: !441, line: 197, type: !70)
!524 = !DILocalVariable(name: "s", arg: 2, scope: !519, file: !441, line: 197, type: !467)
!525 = !DILocalVariable(name: "translation", scope: !519, file: !441, line: 199, type: !70)
!526 = !DILocalVariable(name: "w", scope: !519, file: !441, line: 229, type: !421)
!527 = !DILocalVariable(name: "mbs", scope: !519, file: !441, line: 230, type: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !427, line: 6, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !429, line: 21, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 13, size: 64, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !530, file: !429, line: 15, baseType: !97, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !530, file: !429, line: 20, baseType: !534, size: 32, offset: 32)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !530, file: !429, line: 16, size: 32, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !534, file: !429, line: 18, baseType: !76, size: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !534, file: !429, line: 19, baseType: !112, size: 32)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !539)
!539 = !{!124, !114}
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "slotvec", scope: !465, file: !441, line: 834, type: !542, isLocal: true, isDefinition: true)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !441, line: 823, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !543, file: !441, line: 825, baseType: !99, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !543, file: !441, line: 826, baseType: !246, size: 64, offset: 64)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "nslots", scope: !465, file: !441, line: 832, type: !97, isLocal: true, isDefinition: true)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "slotvec0", scope: !465, file: !441, line: 833, type: !543, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !552, size: 704, elements: !553)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!553 = !{!554}
!554 = !DISubrange(count: 11)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !557, line: 67, type: !215, isLocal: true, isDefinition: true)
!557 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !557, line: 69, type: !19, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !557, line: 83, type: !19, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !557, line: 83, type: !112, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !557, line: 85, type: !122, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !557, line: 88, type: !568, isLocal: true, isDefinition: true)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 171)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !557, line: 88, type: !573, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 34)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !557, line: 105, type: !186, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !557, line: 109, type: !9, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(scope: null, file: !557, line: 113, type: !582, isLocal: true, isDefinition: true)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 28)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(scope: null, file: !557, line: 120, type: !587, isLocal: true, isDefinition: true)
!587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !588)
!588 = !{!589}
!589 = !DISubrange(count: 32)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !557, line: 127, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 36)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !557, line: 134, type: !163, isLocal: true, isDefinition: true)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !557, line: 142, type: !599, isLocal: true, isDefinition: true)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 44)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !557, line: 150, type: !604, isLocal: true, isDefinition: true)
!604 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !605)
!605 = !{!606}
!606 = !DISubrange(count: 48)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !557, line: 159, type: !609, isLocal: true, isDefinition: true)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 52)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !557, line: 170, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 60)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !557, line: 248, type: !287, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !557, line: 248, type: !191, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !557, line: 254, type: !287, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !557, line: 254, type: !49, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !557, line: 254, type: !163, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !557, line: 259, type: !3, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !557, line: 259, type: !631, isLocal: true, isDefinition: true)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 29)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !636, file: !637, line: 26, type: !639, isLocal: false, isDefinition: true)
!636 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !638, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!638 = !{!634}
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 47)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "exit_failure", scope: !644, file: !645, line: 24, type: !647, isLocal: false, isDefinition: true)
!644 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !646, splitDebugInlining: false, nameTableKind: None)
!645 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!646 = !{!642}
!647 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !97)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !650, line: 34, type: !131, isLocal: true, isDefinition: true)
!650 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !650, line: 34, type: !19, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !650, line: 34, type: !54, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !657, line: 108, type: !34, isLocal: true, isDefinition: true)
!657 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(name: "internal_state", scope: !660, file: !657, line: 97, type: !663, isLocal: true, isDefinition: true)
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !661, globals: !662, splitDebugInlining: false, nameTableKind: None)
!661 = !{!91, !99, !101}
!662 = !{!655, !658}
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !427, line: 6, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !429, line: 21, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !429, line: 13, size: 64, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !665, file: !429, line: 15, baseType: !97, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !665, file: !429, line: 20, baseType: !669, size: 32, offset: 32)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !429, line: 16, size: 32, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !669, file: !429, line: 18, baseType: !76, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !669, file: !429, line: 19, baseType: !112, size: 32)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !675, line: 35, type: !122, isLocal: true, isDefinition: true)
!675 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !675, line: 35, type: !117, isLocal: true, isDefinition: true)
!678 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!679 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !557, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !681, retainedTypes: !685, globals: !686, splitDebugInlining: false, nameTableKind: None)
!681 = !{!682}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 40, baseType: !76, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!685 = !{!91}
!686 = !{!555, !558, !560, !562, !564, !566, !571, !576, !578, !580, !585, !590, !595, !597, !602, !607, !612, !617, !619, !621, !623, !625, !627, !629}
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !689, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!689 = !{!690, !702}
!690 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !691, file: !688, line: 188, baseType: !76, size: 32, elements: !700)
!691 = distinct !DISubprogram(name: "x2nrealloc", scope: !688, file: !688, line: 176, type: !692, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !695)
!692 = !DISubroutineType(types: !693)
!693 = !{!91, !91, !694, !99}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!695 = !{!696, !697, !698, !699}
!696 = !DILocalVariable(name: "p", arg: 1, scope: !691, file: !688, line: 176, type: !91)
!697 = !DILocalVariable(name: "pn", arg: 2, scope: !691, file: !688, line: 176, type: !694)
!698 = !DILocalVariable(name: "s", arg: 3, scope: !691, file: !688, line: 176, type: !99)
!699 = !DILocalVariable(name: "n", scope: !691, file: !688, line: 178, type: !99)
!700 = !{!701}
!701 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!702 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !703, file: !688, line: 228, baseType: !76, size: 32, elements: !700)
!703 = distinct !DISubprogram(name: "xpalloc", scope: !688, file: !688, line: 223, type: !704, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !710)
!704 = !DISubroutineType(types: !705)
!705 = !{!91, !91, !706, !707, !709, !707}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !708, line: 130, baseType: !709)
!708 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !100, line: 35, baseType: !266)
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719}
!711 = !DILocalVariable(name: "pa", arg: 1, scope: !703, file: !688, line: 223, type: !91)
!712 = !DILocalVariable(name: "pn", arg: 2, scope: !703, file: !688, line: 223, type: !706)
!713 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !703, file: !688, line: 223, type: !707)
!714 = !DILocalVariable(name: "n_max", arg: 4, scope: !703, file: !688, line: 223, type: !709)
!715 = !DILocalVariable(name: "s", arg: 5, scope: !703, file: !688, line: 223, type: !707)
!716 = !DILocalVariable(name: "n0", scope: !703, file: !688, line: 230, type: !707)
!717 = !DILocalVariable(name: "n", scope: !703, file: !688, line: 237, type: !707)
!718 = !DILocalVariable(name: "nbytes", scope: !703, file: !688, line: 248, type: !707)
!719 = !DILocalVariable(name: "adjusted_nbytes", scope: !703, file: !688, line: 252, type: !707)
!720 = !{!246, !91, !225, !266, !96}
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !650, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!722 = !{!648, !651, !653}
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !733, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!733 = !{!225, !96, !91}
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!735 = !{!673, !676}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !685, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!740 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!741 = !{i32 7, !"Dwarf Version", i32 5}
!742 = !{i32 2, !"Debug Info Version", i32 3}
!743 = !{i32 1, !"wchar_size", i32 4}
!744 = !{i32 8, !"PIC Level", i32 2}
!745 = !{i32 7, !"PIE Level", i32 2}
!746 = !{i32 7, !"uwtable", i32 2}
!747 = !{i32 7, !"frame-pointer", i32 1}
!748 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 36, type: !749, scopeLine: 37, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !751)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !97}
!751 = !{!752}
!752 = !DILocalVariable(name: "status", arg: 1, scope: !748, file: !2, line: 36, type: !97)
!753 = !DILocation(line: 0, scope: !748)
!754 = !DILocation(line: 38, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !748, file: !2, line: 38, column: 7)
!756 = !DILocation(line: 38, column: 7, scope: !748)
!757 = !DILocation(line: 39, column: 5, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !2, line: 39, column: 5)
!759 = !{!760, !760, i64 0}
!760 = !{!"any pointer", !761, i64 0}
!761 = !{!"omnipotent char", !762, i64 0}
!762 = !{!"Simple C/C++ TBAA"}
!763 = !DILocation(line: 42, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !755, file: !2, line: 41, column: 5)
!765 = !DILocation(line: 43, column: 7, scope: !764)
!766 = !DILocation(line: 48, column: 7, scope: !764)
!767 = !DILocation(line: 49, column: 7, scope: !764)
!768 = !DILocalVariable(name: "program", arg: 1, scope: !769, file: !67, line: 836, type: !70)
!769 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !770, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !70}
!772 = !{!768, !773, !780, !781, !783, !784}
!773 = !DILocalVariable(name: "infomap", scope: !769, file: !67, line: 838, type: !774)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 896, elements: !20)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !769, file: !67, line: 838, size: 128, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !776, file: !67, line: 838, baseType: !70, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !776, file: !67, line: 838, baseType: !70, size: 64, offset: 64)
!780 = !DILocalVariable(name: "node", scope: !769, file: !67, line: 848, type: !70)
!781 = !DILocalVariable(name: "map_prog", scope: !769, file: !67, line: 849, type: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!783 = !DILocalVariable(name: "lc_messages", scope: !769, file: !67, line: 861, type: !70)
!784 = !DILocalVariable(name: "url_program", scope: !769, file: !67, line: 874, type: !70)
!785 = !DILocation(line: 0, scope: !769, inlinedAt: !786)
!786 = distinct !DILocation(line: 50, column: 7, scope: !764)
!787 = !DILocation(line: 857, column: 3, scope: !769, inlinedAt: !786)
!788 = !DILocation(line: 861, column: 29, scope: !769, inlinedAt: !786)
!789 = !DILocation(line: 862, column: 7, scope: !790, inlinedAt: !786)
!790 = distinct !DILexicalBlock(scope: !769, file: !67, line: 862, column: 7)
!791 = !DILocation(line: 862, column: 19, scope: !790, inlinedAt: !786)
!792 = !DILocation(line: 862, column: 22, scope: !790, inlinedAt: !786)
!793 = !DILocation(line: 862, column: 7, scope: !769, inlinedAt: !786)
!794 = !DILocation(line: 868, column: 7, scope: !795, inlinedAt: !786)
!795 = distinct !DILexicalBlock(scope: !790, file: !67, line: 863, column: 5)
!796 = !DILocation(line: 870, column: 5, scope: !795, inlinedAt: !786)
!797 = !DILocation(line: 875, column: 3, scope: !769, inlinedAt: !786)
!798 = !DILocation(line: 877, column: 3, scope: !769, inlinedAt: !786)
!799 = !DILocation(line: 52, column: 3, scope: !748)
!800 = !DISubprogram(name: "dcgettext", scope: !801, file: !801, line: 51, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!801 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!802 = !DISubroutineType(types: !803)
!803 = !{!246, !70, !70, !97}
!804 = !{}
!805 = !DISubprogram(name: "__fprintf_chk", scope: !806, file: !806, line: 93, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!806 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!807 = !DISubroutineType(types: !808)
!808 = !{!97, !809, !97, !810, null}
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!811 = !DISubprogram(name: "__printf_chk", scope: !806, file: !806, line: 95, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!812 = !DISubroutineType(types: !813)
!813 = !{!97, !97, !810, null}
!814 = !DISubprogram(name: "fputs_unlocked", scope: !332, file: !332, line: 691, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!815 = !DISubroutineType(types: !816)
!816 = !{!97, !810, !809}
!817 = !DILocation(line: 0, scope: !66)
!818 = !DILocation(line: 581, column: 7, scope: !223)
!819 = !{!820, !820, i64 0}
!820 = !{!"int", !761, i64 0}
!821 = !DILocation(line: 581, column: 19, scope: !223)
!822 = !DILocation(line: 581, column: 7, scope: !66)
!823 = !DILocation(line: 585, column: 26, scope: !222)
!824 = !DILocation(line: 0, scope: !222)
!825 = !DILocation(line: 586, column: 23, scope: !222)
!826 = !DILocation(line: 586, column: 28, scope: !222)
!827 = !DILocation(line: 586, column: 32, scope: !222)
!828 = !{!761, !761, i64 0}
!829 = !DILocation(line: 586, column: 38, scope: !222)
!830 = !DILocalVariable(name: "__s1", arg: 1, scope: !831, file: !832, line: 1359, type: !70)
!831 = distinct !DISubprogram(name: "streq", scope: !832, file: !832, line: 1359, type: !833, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !835)
!832 = !DIFile(filename: "./lib/string.h", directory: "/src")
!833 = !DISubroutineType(types: !834)
!834 = !{!225, !70, !70}
!835 = !{!830, !836}
!836 = !DILocalVariable(name: "__s2", arg: 2, scope: !831, file: !832, line: 1359, type: !70)
!837 = !DILocation(line: 0, scope: !831, inlinedAt: !838)
!838 = distinct !DILocation(line: 586, column: 41, scope: !222)
!839 = !DILocation(line: 1361, column: 11, scope: !831, inlinedAt: !838)
!840 = !DILocation(line: 1361, column: 10, scope: !831, inlinedAt: !838)
!841 = !DILocation(line: 586, column: 19, scope: !222)
!842 = !DILocation(line: 587, column: 5, scope: !222)
!843 = !DILocation(line: 588, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!845 = !DILocation(line: 588, column: 7, scope: !66)
!846 = !DILocation(line: 590, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !67, line: 589, column: 5)
!848 = !DILocation(line: 591, column: 7, scope: !847)
!849 = !DILocation(line: 595, column: 37, scope: !66)
!850 = !DILocation(line: 595, column: 35, scope: !66)
!851 = !DILocation(line: 596, column: 29, scope: !66)
!852 = !DILocation(line: 597, column: 8, scope: !231)
!853 = !DILocation(line: 597, column: 7, scope: !66)
!854 = !DILocation(line: 604, column: 24, scope: !230)
!855 = !DILocation(line: 604, column: 12, scope: !231)
!856 = !DILocation(line: 0, scope: !229)
!857 = !DILocation(line: 610, column: 16, scope: !229)
!858 = !DILocation(line: 610, column: 7, scope: !229)
!859 = !DILocation(line: 611, column: 21, scope: !229)
!860 = !{!861, !861, i64 0}
!861 = !{!"short", !761, i64 0}
!862 = !DILocation(line: 611, column: 19, scope: !229)
!863 = !DILocation(line: 611, column: 16, scope: !229)
!864 = !DILocation(line: 610, column: 30, scope: !229)
!865 = distinct !{!865, !858, !859, !866}
!866 = !{!"llvm.loop.mustprogress"}
!867 = !DILocation(line: 612, column: 18, scope: !868)
!868 = distinct !DILexicalBlock(scope: !229, file: !67, line: 612, column: 11)
!869 = !DILocation(line: 612, column: 11, scope: !229)
!870 = !DILocation(line: 620, column: 23, scope: !66)
!871 = !DILocation(line: 625, column: 39, scope: !66)
!872 = !DILocation(line: 626, column: 3, scope: !66)
!873 = !DILocation(line: 626, column: 10, scope: !66)
!874 = !DILocation(line: 626, column: 21, scope: !66)
!875 = !DILocation(line: 628, column: 44, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !67, line: 628, column: 11)
!877 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!878 = !DILocation(line: 628, column: 32, scope: !876)
!879 = !DILocation(line: 628, column: 49, scope: !876)
!880 = !DILocation(line: 628, column: 11, scope: !877)
!881 = !DILocation(line: 630, column: 11, scope: !882)
!882 = distinct !DILexicalBlock(scope: !877, file: !67, line: 630, column: 11)
!883 = !DILocation(line: 630, column: 11, scope: !877)
!884 = !DILocation(line: 632, column: 26, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !67, line: 632, column: 15)
!886 = distinct !DILexicalBlock(scope: !882, file: !67, line: 631, column: 9)
!887 = !DILocation(line: 632, column: 34, scope: !885)
!888 = !DILocation(line: 632, column: 37, scope: !885)
!889 = !DILocation(line: 632, column: 15, scope: !886)
!890 = !DILocation(line: 640, column: 16, scope: !877)
!891 = distinct !{!891, !872, !892, !866}
!892 = !DILocation(line: 641, column: 5, scope: !66)
!893 = !DILocation(line: 644, column: 3, scope: !66)
!894 = !DILocation(line: 0, scope: !831, inlinedAt: !895)
!895 = distinct !DILocation(line: 648, column: 31, scope: !66)
!896 = !DILocation(line: 0, scope: !831, inlinedAt: !897)
!897 = distinct !DILocation(line: 649, column: 31, scope: !66)
!898 = !DILocation(line: 0, scope: !831, inlinedAt: !899)
!899 = distinct !DILocation(line: 650, column: 31, scope: !66)
!900 = !DILocation(line: 0, scope: !831, inlinedAt: !901)
!901 = distinct !DILocation(line: 651, column: 31, scope: !66)
!902 = !DILocation(line: 0, scope: !831, inlinedAt: !903)
!903 = distinct !DILocation(line: 652, column: 31, scope: !66)
!904 = !DILocation(line: 0, scope: !831, inlinedAt: !905)
!905 = distinct !DILocation(line: 653, column: 31, scope: !66)
!906 = !DILocation(line: 0, scope: !831, inlinedAt: !907)
!907 = distinct !DILocation(line: 654, column: 31, scope: !66)
!908 = !DILocation(line: 0, scope: !831, inlinedAt: !909)
!909 = distinct !DILocation(line: 655, column: 31, scope: !66)
!910 = !DILocation(line: 0, scope: !831, inlinedAt: !911)
!911 = distinct !DILocation(line: 656, column: 31, scope: !66)
!912 = !DILocation(line: 0, scope: !831, inlinedAt: !913)
!913 = distinct !DILocation(line: 657, column: 31, scope: !66)
!914 = !DILocation(line: 663, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!916 = !DILocation(line: 664, column: 7, scope: !915)
!917 = !DILocation(line: 664, column: 10, scope: !915)
!918 = !DILocation(line: 663, column: 7, scope: !66)
!919 = !DILocation(line: 669, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !67, line: 665, column: 5)
!921 = !DILocation(line: 671, column: 5, scope: !920)
!922 = !DILocation(line: 676, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !67, line: 673, column: 5)
!924 = !DILocation(line: 679, column: 3, scope: !66)
!925 = !DILocation(line: 683, column: 3, scope: !66)
!926 = !DILocation(line: 686, column: 3, scope: !66)
!927 = !DILocation(line: 688, column: 3, scope: !66)
!928 = !DILocation(line: 691, column: 3, scope: !66)
!929 = !DILocation(line: 695, column: 3, scope: !66)
!930 = !DILocation(line: 696, column: 1, scope: !66)
!931 = !DISubprogram(name: "setlocale", scope: !932, file: !932, line: 122, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!932 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!933 = !DISubroutineType(types: !934)
!934 = !{!246, !97, !70}
!935 = !DISubprogram(name: "strncmp", scope: !936, file: !936, line: 159, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!936 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!937 = !DISubroutineType(types: !938)
!938 = !{!97, !70, !70, !99}
!939 = !DISubprogram(name: "exit", scope: !940, file: !940, line: 624, type: !749, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !804)
!940 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!941 = !DISubprogram(name: "getenv", scope: !940, file: !940, line: 641, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!942 = !DISubroutineType(types: !943)
!943 = !{!246, !70}
!944 = !DISubprogram(name: "strcmp", scope: !936, file: !936, line: 156, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!945 = !DISubroutineType(types: !946)
!946 = !{!97, !70, !70}
!947 = !DISubprogram(name: "strspn", scope: !936, file: !936, line: 297, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!948 = !DISubroutineType(types: !949)
!949 = !{!96, !70, !70}
!950 = !DISubprogram(name: "strchr", scope: !936, file: !936, line: 246, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!951 = !DISubroutineType(types: !952)
!952 = !{!246, !70, !97}
!953 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!954 = !DISubroutineType(types: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!959 = !DISubprogram(name: "strcspn", scope: !936, file: !936, line: 293, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!960 = !DISubprogram(name: "fwrite_unlocked", scope: !332, file: !332, line: 704, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!961 = !DISubroutineType(types: !962)
!962 = !{!99, !963, !99, !99, !809}
!963 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!966 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 56, type: !967, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !970)
!967 = !DISubroutineType(types: !968)
!968 = !{!97, !97, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!970 = !{!971, !972, !973, !977, !978}
!971 = !DILocalVariable(name: "argc", arg: 1, scope: !966, file: !2, line: 56, type: !97)
!972 = !DILocalVariable(name: "argv", arg: 2, scope: !966, file: !2, line: 56, type: !969)
!973 = !DILocalVariable(name: "NO_UID", scope: !966, file: !2, line: 58, type: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !975, line: 79, baseType: !976)
!975 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !95, line: 146, baseType: !76)
!977 = !DILocalVariable(name: "uid", scope: !966, file: !2, line: 79, type: !974)
!978 = !DILocalVariable(name: "pw", scope: !966, file: !2, line: 80, type: !979)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !981, line: 49, size: 384, elements: !982)
!981 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!982 = !{!983, !984, !985, !986, !988, !989, !990}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !980, file: !981, line: 51, baseType: !246, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !980, file: !981, line: 52, baseType: !246, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !980, file: !981, line: 54, baseType: !976, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !980, file: !981, line: 55, baseType: !987, size: 32, offset: 160)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !95, line: 147, baseType: !76)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !980, file: !981, line: 56, baseType: !246, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !980, file: !981, line: 57, baseType: !246, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !980, file: !981, line: 58, baseType: !246, size: 64, offset: 320)
!991 = !DILocation(line: 0, scope: !966)
!992 = !DILocation(line: 61, column: 21, scope: !966)
!993 = !DILocation(line: 61, column: 3, scope: !966)
!994 = !DILocation(line: 62, column: 3, scope: !966)
!995 = !DILocation(line: 63, column: 3, scope: !966)
!996 = !DILocation(line: 64, column: 3, scope: !966)
!997 = !DILocation(line: 66, column: 3, scope: !966)
!998 = !DILocation(line: 69, column: 36, scope: !966)
!999 = !DILocation(line: 69, column: 58, scope: !966)
!1000 = !DILocation(line: 68, column: 3, scope: !966)
!1001 = !DILocation(line: 72, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !966, file: !2, line: 72, column: 7)
!1003 = !DILocation(line: 72, column: 14, scope: !1002)
!1004 = !DILocation(line: 72, column: 7, scope: !966)
!1005 = !DILocation(line: 74, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 73, column: 5)
!1007 = !DILocation(line: 75, column: 7, scope: !1006)
!1008 = !DILocation(line: 78, column: 3, scope: !966)
!1009 = !DILocation(line: 78, column: 9, scope: !966)
!1010 = !DILocation(line: 79, column: 15, scope: !966)
!1011 = !DILocation(line: 80, column: 27, scope: !966)
!1012 = !DILocation(line: 80, column: 37, scope: !966)
!1013 = !DILocation(line: 80, column: 40, scope: !966)
!1014 = !DILocation(line: 80, column: 23, scope: !966)
!1015 = !DILocation(line: 80, column: 55, scope: !966)
!1016 = !DILocation(line: 81, column: 8, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !966, file: !2, line: 81, column: 7)
!1018 = !DILocation(line: 81, column: 7, scope: !966)
!1019 = !DILocation(line: 82, column: 5, scope: !1017)
!1020 = !DILocation(line: 84, column: 13, scope: !966)
!1021 = !{!1022, !760, i64 0}
!1022 = !{!"passwd", !760, i64 0, !760, i64 8, !820, i64 16, !820, i64 20, !760, i64 24, !760, i64 32, !760, i64 40}
!1023 = !DILocation(line: 84, column: 3, scope: !966)
!1024 = !DILocation(line: 85, column: 3, scope: !966)
!1025 = !DISubprogram(name: "bindtextdomain", scope: !801, file: !801, line: 86, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!246, !70, !70}
!1028 = !DISubprogram(name: "textdomain", scope: !801, file: !801, line: 82, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1029 = !DISubprogram(name: "atexit", scope: !940, file: !940, line: 602, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!97, !372}
!1032 = !DISubprogram(name: "__errno_location", scope: !1033, file: !1033, line: 37, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1033 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!396}
!1036 = !DISubprogram(name: "geteuid", scope: !1037, file: !1037, line: 700, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1037 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!976}
!1040 = !DISubprogram(name: "getpwuid", scope: !981, file: !981, line: 110, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!979, !976}
!1043 = !DISubprogram(name: "puts", scope: !332, file: !332, line: 661, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!97, !70}
!1046 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !306, file: !306, line: 50, type: !770, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1047)
!1047 = !{!1048}
!1048 = !DILocalVariable(name: "file", arg: 1, scope: !1046, file: !306, line: 50, type: !70)
!1049 = !DILocation(line: 0, scope: !1046)
!1050 = !DILocation(line: 52, column: 13, scope: !1046)
!1051 = !DILocation(line: 53, column: 1, scope: !1046)
!1052 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !306, file: !306, line: 87, type: !1053, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{null, !225}
!1055 = !{!1056}
!1056 = !DILocalVariable(name: "ignore", arg: 1, scope: !1052, file: !306, line: 87, type: !225)
!1057 = !DILocation(line: 0, scope: !1052)
!1058 = !DILocation(line: 89, column: 16, scope: !1052)
!1059 = !{!1060, !1060, i64 0}
!1060 = !{!"_Bool", !761, i64 0}
!1061 = !DILocation(line: 90, column: 1, scope: !1052)
!1062 = distinct !DISubprogram(name: "close_stdout", scope: !306, file: !306, line: 116, type: !373, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1063)
!1063 = !{!1064}
!1064 = !DILocalVariable(name: "write_error", scope: !1065, file: !306, line: 121, type: !70)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !306, line: 120, column: 5)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !306, line: 118, column: 7)
!1067 = !DILocation(line: 118, column: 21, scope: !1066)
!1068 = !DILocation(line: 118, column: 7, scope: !1066)
!1069 = !DILocation(line: 118, column: 29, scope: !1066)
!1070 = !DILocation(line: 119, column: 7, scope: !1066)
!1071 = !DILocation(line: 119, column: 12, scope: !1066)
!1072 = !{i8 0, i8 2}
!1073 = !DILocation(line: 119, column: 25, scope: !1066)
!1074 = !DILocation(line: 119, column: 28, scope: !1066)
!1075 = !DILocation(line: 119, column: 34, scope: !1066)
!1076 = !DILocation(line: 118, column: 7, scope: !1062)
!1077 = !DILocation(line: 121, column: 33, scope: !1065)
!1078 = !DILocation(line: 0, scope: !1065)
!1079 = !DILocation(line: 122, column: 11, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1065, file: !306, line: 122, column: 11)
!1081 = !DILocation(line: 0, scope: !1080)
!1082 = !DILocation(line: 122, column: 11, scope: !1065)
!1083 = !DILocation(line: 123, column: 9, scope: !1080)
!1084 = !DILocation(line: 126, column: 9, scope: !1080)
!1085 = !DILocation(line: 128, column: 14, scope: !1065)
!1086 = !DILocation(line: 128, column: 7, scope: !1065)
!1087 = !DILocation(line: 133, column: 42, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1062, file: !306, line: 133, column: 7)
!1089 = !DILocation(line: 133, column: 28, scope: !1088)
!1090 = !DILocation(line: 133, column: 50, scope: !1088)
!1091 = !DILocation(line: 133, column: 7, scope: !1062)
!1092 = !DILocation(line: 134, column: 12, scope: !1088)
!1093 = !DILocation(line: 134, column: 5, scope: !1088)
!1094 = !DILocation(line: 135, column: 1, scope: !1062)
!1095 = !DISubprogram(name: "_exit", scope: !1037, file: !1037, line: 624, type: !749, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1096 = distinct !DISubprogram(name: "verror", scope: !321, file: !321, line: 251, type: !1097, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !97, !97, !70, !331}
!1099 = !{!1100, !1101, !1102, !1103}
!1100 = !DILocalVariable(name: "status", arg: 1, scope: !1096, file: !321, line: 251, type: !97)
!1101 = !DILocalVariable(name: "errnum", arg: 2, scope: !1096, file: !321, line: 251, type: !97)
!1102 = !DILocalVariable(name: "message", arg: 3, scope: !1096, file: !321, line: 251, type: !70)
!1103 = !DILocalVariable(name: "args", arg: 4, scope: !1096, file: !321, line: 251, type: !331)
!1104 = !DILocation(line: 0, scope: !1096)
!1105 = !DILocation(line: 251, column: 1, scope: !1096)
!1106 = !DILocation(line: 261, column: 3, scope: !1096)
!1107 = !DILocation(line: 265, column: 7, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1096, file: !321, line: 265, column: 7)
!1109 = !DILocation(line: 265, column: 7, scope: !1096)
!1110 = !DILocation(line: 266, column: 5, scope: !1108)
!1111 = !DILocation(line: 272, column: 7, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1108, file: !321, line: 268, column: 5)
!1113 = !DILocation(line: 276, column: 3, scope: !1096)
!1114 = !{i64 0, i64 8, !759, i64 8, i64 8, !759, i64 16, i64 8, !759, i64 24, i64 4, !819, i64 28, i64 4, !819}
!1115 = !DILocation(line: 282, column: 1, scope: !1096)
!1116 = distinct !DISubprogram(name: "flush_stdout", scope: !321, file: !321, line: 163, type: !373, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1117)
!1117 = !{!1118}
!1118 = !DILocalVariable(name: "stdout_fd", scope: !1116, file: !321, line: 166, type: !97)
!1119 = !DILocation(line: 0, scope: !1116)
!1120 = !DILocalVariable(name: "fd", arg: 1, scope: !1121, file: !321, line: 145, type: !97)
!1121 = distinct !DISubprogram(name: "is_open", scope: !321, file: !321, line: 145, type: !1122, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1124)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!97, !97}
!1124 = !{!1120}
!1125 = !DILocation(line: 0, scope: !1121, inlinedAt: !1126)
!1126 = distinct !DILocation(line: 182, column: 25, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1116, file: !321, line: 182, column: 7)
!1128 = !DILocation(line: 157, column: 15, scope: !1121, inlinedAt: !1126)
!1129 = !DILocation(line: 157, column: 12, scope: !1121, inlinedAt: !1126)
!1130 = !DILocation(line: 182, column: 7, scope: !1116)
!1131 = !DILocation(line: 184, column: 5, scope: !1127)
!1132 = !DILocation(line: 185, column: 1, scope: !1116)
!1133 = distinct !DISubprogram(name: "error_tail", scope: !321, file: !321, line: 219, type: !1097, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1134)
!1134 = !{!1135, !1136, !1137, !1138}
!1135 = !DILocalVariable(name: "status", arg: 1, scope: !1133, file: !321, line: 219, type: !97)
!1136 = !DILocalVariable(name: "errnum", arg: 2, scope: !1133, file: !321, line: 219, type: !97)
!1137 = !DILocalVariable(name: "message", arg: 3, scope: !1133, file: !321, line: 219, type: !70)
!1138 = !DILocalVariable(name: "args", arg: 4, scope: !1133, file: !321, line: 219, type: !331)
!1139 = !DILocation(line: 0, scope: !1133)
!1140 = !DILocation(line: 219, column: 1, scope: !1133)
!1141 = !DILocation(line: 229, column: 13, scope: !1133)
!1142 = !DILocation(line: 135, column: 10, scope: !1143, inlinedAt: !1185)
!1143 = distinct !DISubprogram(name: "vfprintf", scope: !806, file: !806, line: 132, type: !1144, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1181)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!97, !1146, !810, !333}
!1146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !1149)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1149, file: !242, line: 51, baseType: !97, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1149, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1149, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1149, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1149, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1149, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1149, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1149, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1149, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1149, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1149, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1149, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1149, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1149, file: !242, line: 70, baseType: !1165, size: 64, offset: 832)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1149, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1149, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1149, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1149, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1149, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1149, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1149, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1149, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1149, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1149, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1149, file: !242, line: 93, baseType: !1165, size: 64, offset: 1344)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1149, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1149, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1149, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1149, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!1181 = !{!1182, !1183, !1184}
!1182 = !DILocalVariable(name: "__stream", arg: 1, scope: !1143, file: !806, line: 132, type: !1146)
!1183 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1143, file: !806, line: 133, type: !810)
!1184 = !DILocalVariable(name: "__ap", arg: 3, scope: !1143, file: !806, line: 133, type: !333)
!1185 = distinct !DILocation(line: 229, column: 3, scope: !1133)
!1186 = !{!1187, !1189}
!1187 = distinct !{!1187, !1188, !"vfprintf.inline: argument 0"}
!1188 = distinct !{!1188, !"vfprintf.inline"}
!1189 = distinct !{!1189, !1188, !"vfprintf.inline: argument 1"}
!1190 = !DILocation(line: 229, column: 3, scope: !1133)
!1191 = !DILocation(line: 0, scope: !1143, inlinedAt: !1185)
!1192 = !DILocation(line: 133, column: 49, scope: !1143, inlinedAt: !1185)
!1193 = !DILocation(line: 232, column: 3, scope: !1133)
!1194 = !DILocation(line: 233, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1133, file: !321, line: 233, column: 7)
!1196 = !DILocation(line: 233, column: 7, scope: !1133)
!1197 = !DILocalVariable(name: "errnum", arg: 1, scope: !1198, file: !321, line: 188, type: !97)
!1198 = distinct !DISubprogram(name: "print_errno_message", scope: !321, file: !321, line: 188, type: !749, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1199)
!1199 = !{!1197, !1200, !1201}
!1200 = !DILocalVariable(name: "s", scope: !1198, file: !321, line: 190, type: !70)
!1201 = !DILocalVariable(name: "errbuf", scope: !1198, file: !321, line: 193, type: !1202)
!1202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1203)
!1203 = !{!1204}
!1204 = !DISubrange(count: 1024)
!1205 = !DILocation(line: 0, scope: !1198, inlinedAt: !1206)
!1206 = distinct !DILocation(line: 234, column: 5, scope: !1195)
!1207 = !DILocation(line: 193, column: 3, scope: !1198, inlinedAt: !1206)
!1208 = !DILocation(line: 193, column: 8, scope: !1198, inlinedAt: !1206)
!1209 = !DILocation(line: 195, column: 7, scope: !1198, inlinedAt: !1206)
!1210 = !DILocation(line: 207, column: 9, scope: !1211, inlinedAt: !1206)
!1211 = distinct !DILexicalBlock(scope: !1198, file: !321, line: 207, column: 7)
!1212 = !DILocation(line: 207, column: 7, scope: !1198, inlinedAt: !1206)
!1213 = !DILocation(line: 208, column: 9, scope: !1211, inlinedAt: !1206)
!1214 = !DILocation(line: 208, column: 5, scope: !1211, inlinedAt: !1206)
!1215 = !DILocation(line: 214, column: 3, scope: !1198, inlinedAt: !1206)
!1216 = !DILocation(line: 216, column: 1, scope: !1198, inlinedAt: !1206)
!1217 = !DILocation(line: 234, column: 5, scope: !1195)
!1218 = !DILocation(line: 238, column: 3, scope: !1133)
!1219 = !DILocalVariable(name: "__c", arg: 1, scope: !1220, file: !1221, line: 101, type: !97)
!1220 = distinct !DISubprogram(name: "putc_unlocked", scope: !1221, file: !1221, line: 101, type: !1222, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1224)
!1221 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!97, !97, !1147}
!1224 = !{!1219, !1225}
!1225 = !DILocalVariable(name: "__stream", arg: 2, scope: !1220, file: !1221, line: 101, type: !1147)
!1226 = !DILocation(line: 0, scope: !1220, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 238, column: 3, scope: !1133)
!1228 = !DILocation(line: 103, column: 10, scope: !1220, inlinedAt: !1227)
!1229 = !{!1230, !760, i64 40}
!1230 = !{!"_IO_FILE", !820, i64 0, !760, i64 8, !760, i64 16, !760, i64 24, !760, i64 32, !760, i64 40, !760, i64 48, !760, i64 56, !760, i64 64, !760, i64 72, !760, i64 80, !760, i64 88, !760, i64 96, !760, i64 104, !820, i64 112, !820, i64 116, !1231, i64 120, !861, i64 128, !761, i64 130, !761, i64 131, !760, i64 136, !1231, i64 144, !760, i64 152, !760, i64 160, !760, i64 168, !760, i64 176, !1231, i64 184, !820, i64 192, !761, i64 196}
!1231 = !{!"long", !761, i64 0}
!1232 = !{!1230, !760, i64 48}
!1233 = !{!"branch_weights", i32 2000, i32 1}
!1234 = !DILocation(line: 240, column: 3, scope: !1133)
!1235 = !DILocation(line: 241, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1133, file: !321, line: 241, column: 7)
!1237 = !DILocation(line: 241, column: 7, scope: !1133)
!1238 = !DILocation(line: 242, column: 5, scope: !1236)
!1239 = !DILocation(line: 243, column: 1, scope: !1133)
!1240 = !DISubprogram(name: "__vfprintf_chk", scope: !806, file: !806, line: 96, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!97, !1146, !97, !810, !333}
!1243 = !DISubprogram(name: "strerror_r", scope: !936, file: !936, line: 444, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!246, !97, !246, !99}
!1246 = !DISubprogram(name: "__overflow", scope: !332, file: !332, line: 886, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!97, !1147, !97}
!1249 = !DISubprogram(name: "fflush_unlocked", scope: !332, file: !332, line: 239, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!97, !1147}
!1252 = !DISubprogram(name: "fcntl", scope: !1253, file: !1253, line: 149, type: !1254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1253 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!97, !97, !97, null}
!1256 = distinct !DISubprogram(name: "error", scope: !321, file: !321, line: 285, type: !1257, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1259)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{null, !97, !97, !70, null}
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DILocalVariable(name: "status", arg: 1, scope: !1256, file: !321, line: 285, type: !97)
!1261 = !DILocalVariable(name: "errnum", arg: 2, scope: !1256, file: !321, line: 285, type: !97)
!1262 = !DILocalVariable(name: "message", arg: 3, scope: !1256, file: !321, line: 285, type: !70)
!1263 = !DILocalVariable(name: "ap", scope: !1256, file: !321, line: 287, type: !331)
!1264 = !DILocation(line: 0, scope: !1256)
!1265 = !DILocation(line: 287, column: 3, scope: !1256)
!1266 = !DILocation(line: 287, column: 11, scope: !1256)
!1267 = !DILocation(line: 288, column: 3, scope: !1256)
!1268 = !DILocation(line: 289, column: 3, scope: !1256)
!1269 = !DILocation(line: 290, column: 3, scope: !1256)
!1270 = !DILocation(line: 291, column: 1, scope: !1256)
!1271 = !DILocation(line: 0, scope: !328)
!1272 = !DILocation(line: 298, column: 1, scope: !328)
!1273 = !DILocation(line: 302, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !328, file: !321, line: 302, column: 7)
!1275 = !DILocation(line: 302, column: 7, scope: !328)
!1276 = !DILocation(line: 307, column: 11, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !321, line: 307, column: 11)
!1278 = distinct !DILexicalBlock(scope: !1274, file: !321, line: 303, column: 5)
!1279 = !DILocation(line: 307, column: 27, scope: !1277)
!1280 = !DILocation(line: 308, column: 11, scope: !1277)
!1281 = !DILocation(line: 308, column: 28, scope: !1277)
!1282 = !DILocation(line: 308, column: 25, scope: !1277)
!1283 = !DILocation(line: 309, column: 15, scope: !1277)
!1284 = !DILocation(line: 309, column: 33, scope: !1277)
!1285 = !DILocation(line: 310, column: 19, scope: !1277)
!1286 = !DILocation(line: 311, column: 22, scope: !1277)
!1287 = !DILocation(line: 311, column: 56, scope: !1277)
!1288 = !DILocation(line: 307, column: 11, scope: !1278)
!1289 = !DILocation(line: 316, column: 21, scope: !1278)
!1290 = !DILocation(line: 317, column: 23, scope: !1278)
!1291 = !DILocation(line: 318, column: 5, scope: !1278)
!1292 = !DILocation(line: 327, column: 3, scope: !328)
!1293 = !DILocation(line: 331, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !328, file: !321, line: 331, column: 7)
!1295 = !DILocation(line: 331, column: 7, scope: !328)
!1296 = !DILocation(line: 332, column: 5, scope: !1294)
!1297 = !DILocation(line: 338, column: 7, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1294, file: !321, line: 334, column: 5)
!1299 = !DILocation(line: 346, column: 3, scope: !328)
!1300 = !DILocation(line: 350, column: 3, scope: !328)
!1301 = !DILocation(line: 356, column: 1, scope: !328)
!1302 = distinct !DISubprogram(name: "error_at_line", scope: !321, file: !321, line: 359, type: !1303, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1305)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !97, !97, !70, !76, !70, null}
!1305 = !{!1306, !1307, !1308, !1309, !1310, !1311}
!1306 = !DILocalVariable(name: "status", arg: 1, scope: !1302, file: !321, line: 359, type: !97)
!1307 = !DILocalVariable(name: "errnum", arg: 2, scope: !1302, file: !321, line: 359, type: !97)
!1308 = !DILocalVariable(name: "file_name", arg: 3, scope: !1302, file: !321, line: 359, type: !70)
!1309 = !DILocalVariable(name: "line_number", arg: 4, scope: !1302, file: !321, line: 360, type: !76)
!1310 = !DILocalVariable(name: "message", arg: 5, scope: !1302, file: !321, line: 360, type: !70)
!1311 = !DILocalVariable(name: "ap", scope: !1302, file: !321, line: 362, type: !331)
!1312 = !DILocation(line: 0, scope: !1302)
!1313 = !DILocation(line: 362, column: 3, scope: !1302)
!1314 = !DILocation(line: 362, column: 11, scope: !1302)
!1315 = !DILocation(line: 363, column: 3, scope: !1302)
!1316 = !DILocation(line: 364, column: 3, scope: !1302)
!1317 = !DILocation(line: 366, column: 3, scope: !1302)
!1318 = !DILocation(line: 367, column: 1, scope: !1302)
!1319 = distinct !DISubprogram(name: "getprogname", scope: !679, file: !679, line: 54, type: !1320, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678, retainedNodes: !804)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!70}
!1322 = !DILocation(line: 58, column: 10, scope: !1319)
!1323 = !DILocation(line: 58, column: 3, scope: !1319)
!1324 = distinct !DISubprogram(name: "parse_long_options", scope: !377, file: !377, line: 45, type: !1325, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1328)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !97, !969, !70, !70, !70, !1327, null}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!1328 = !{!1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1339}
!1329 = !DILocalVariable(name: "argc", arg: 1, scope: !1324, file: !377, line: 45, type: !97)
!1330 = !DILocalVariable(name: "argv", arg: 2, scope: !1324, file: !377, line: 46, type: !969)
!1331 = !DILocalVariable(name: "command_name", arg: 3, scope: !1324, file: !377, line: 47, type: !70)
!1332 = !DILocalVariable(name: "package", arg: 4, scope: !1324, file: !377, line: 48, type: !70)
!1333 = !DILocalVariable(name: "version", arg: 5, scope: !1324, file: !377, line: 49, type: !70)
!1334 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1324, file: !377, line: 50, type: !1327)
!1335 = !DILocalVariable(name: "saved_opterr", scope: !1324, file: !377, line: 53, type: !97)
!1336 = !DILocalVariable(name: "c", scope: !1337, file: !377, line: 60, type: !97)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !377, line: 59, column: 5)
!1338 = distinct !DILexicalBlock(scope: !1324, file: !377, line: 58, column: 7)
!1339 = !DILocalVariable(name: "authors", scope: !1340, file: !377, line: 71, type: !1344)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !377, line: 70, column: 15)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !377, line: 64, column: 13)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !377, line: 62, column: 9)
!1343 = distinct !DILexicalBlock(scope: !1337, file: !377, line: 61, column: 11)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 52, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !334, line: 14, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1347, baseType: !1348)
!1347 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353, !1354}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1348, file: !1347, line: 71, baseType: !91, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1348, file: !1347, line: 71, baseType: !91, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1348, file: !1347, line: 71, baseType: !91, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1348, file: !1347, line: 71, baseType: !97, size: 32, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1348, file: !1347, line: 71, baseType: !97, size: 32, offset: 224)
!1355 = !DILocation(line: 0, scope: !1324)
!1356 = !DILocation(line: 53, column: 22, scope: !1324)
!1357 = !DILocation(line: 56, column: 10, scope: !1324)
!1358 = !DILocation(line: 58, column: 12, scope: !1338)
!1359 = !DILocation(line: 58, column: 7, scope: !1324)
!1360 = !DILocation(line: 60, column: 15, scope: !1337)
!1361 = !DILocation(line: 0, scope: !1337)
!1362 = !DILocation(line: 61, column: 11, scope: !1337)
!1363 = !DILocation(line: 66, column: 15, scope: !1341)
!1364 = !DILocation(line: 67, column: 15, scope: !1341)
!1365 = !DILocation(line: 71, column: 17, scope: !1340)
!1366 = !DILocation(line: 71, column: 25, scope: !1340)
!1367 = !DILocation(line: 72, column: 17, scope: !1340)
!1368 = !DILocation(line: 73, column: 33, scope: !1340)
!1369 = !DILocation(line: 73, column: 17, scope: !1340)
!1370 = !DILocation(line: 74, column: 17, scope: !1340)
!1371 = !DILocation(line: 85, column: 10, scope: !1324)
!1372 = !DILocation(line: 89, column: 10, scope: !1324)
!1373 = !DILocation(line: 90, column: 1, scope: !1324)
!1374 = !DISubprogram(name: "getopt_long", scope: !391, file: !391, line: 66, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!97, !97, !1377, !70, !1379, !396}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1380 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !377, file: !377, line: 98, type: !1381, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !1383)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !97, !969, !70, !70, !70, !225, !1327, null}
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!1384 = !DILocalVariable(name: "argc", arg: 1, scope: !1380, file: !377, line: 98, type: !97)
!1385 = !DILocalVariable(name: "argv", arg: 2, scope: !1380, file: !377, line: 99, type: !969)
!1386 = !DILocalVariable(name: "command_name", arg: 3, scope: !1380, file: !377, line: 100, type: !70)
!1387 = !DILocalVariable(name: "package", arg: 4, scope: !1380, file: !377, line: 101, type: !70)
!1388 = !DILocalVariable(name: "version", arg: 5, scope: !1380, file: !377, line: 102, type: !70)
!1389 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1380, file: !377, line: 103, type: !225)
!1390 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1380, file: !377, line: 104, type: !1327)
!1391 = !DILocalVariable(name: "saved_opterr", scope: !1380, file: !377, line: 107, type: !97)
!1392 = !DILocalVariable(name: "optstring", scope: !1380, file: !377, line: 112, type: !70)
!1393 = !DILocalVariable(name: "c", scope: !1380, file: !377, line: 114, type: !97)
!1394 = !DILocalVariable(name: "authors", scope: !1395, file: !377, line: 125, type: !1344)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !377, line: 124, column: 11)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !377, line: 118, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !377, line: 116, column: 5)
!1398 = distinct !DILexicalBlock(scope: !1380, file: !377, line: 115, column: 7)
!1399 = !DILocation(line: 0, scope: !1380)
!1400 = !DILocation(line: 107, column: 22, scope: !1380)
!1401 = !DILocation(line: 110, column: 10, scope: !1380)
!1402 = !DILocation(line: 112, column: 27, scope: !1380)
!1403 = !DILocation(line: 114, column: 11, scope: !1380)
!1404 = !DILocation(line: 115, column: 7, scope: !1380)
!1405 = !DILocation(line: 125, column: 13, scope: !1395)
!1406 = !DILocation(line: 125, column: 21, scope: !1395)
!1407 = !DILocation(line: 126, column: 13, scope: !1395)
!1408 = !DILocation(line: 127, column: 29, scope: !1395)
!1409 = !DILocation(line: 127, column: 13, scope: !1395)
!1410 = !DILocation(line: 128, column: 13, scope: !1395)
!1411 = !DILocation(line: 132, column: 26, scope: !1396)
!1412 = !DILocation(line: 133, column: 11, scope: !1396)
!1413 = !DILocation(line: 0, scope: !1396)
!1414 = !DILocation(line: 138, column: 10, scope: !1380)
!1415 = !DILocation(line: 139, column: 1, scope: !1380)
!1416 = distinct !DISubprogram(name: "set_program_name", scope: !401, file: !401, line: 37, type: !770, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "argv0", arg: 1, scope: !1416, file: !401, line: 37, type: !70)
!1419 = !DILocalVariable(name: "slash", scope: !1416, file: !401, line: 44, type: !70)
!1420 = !DILocalVariable(name: "base", scope: !1416, file: !401, line: 45, type: !70)
!1421 = !DILocation(line: 0, scope: !1416)
!1422 = !DILocation(line: 44, column: 23, scope: !1416)
!1423 = !DILocation(line: 45, column: 22, scope: !1416)
!1424 = !DILocation(line: 46, column: 17, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !401, line: 46, column: 7)
!1426 = !DILocation(line: 46, column: 9, scope: !1425)
!1427 = !DILocation(line: 46, column: 25, scope: !1425)
!1428 = !DILocation(line: 46, column: 40, scope: !1425)
!1429 = !DILocalVariable(name: "__s1", arg: 1, scope: !1430, file: !832, line: 974, type: !964)
!1430 = distinct !DISubprogram(name: "memeq", scope: !832, file: !832, line: 974, type: !1431, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!225, !964, !964, !99}
!1433 = !{!1429, !1434, !1435}
!1434 = !DILocalVariable(name: "__s2", arg: 2, scope: !1430, file: !832, line: 974, type: !964)
!1435 = !DILocalVariable(name: "__n", arg: 3, scope: !1430, file: !832, line: 974, type: !99)
!1436 = !DILocation(line: 0, scope: !1430, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 46, column: 28, scope: !1425)
!1438 = !DILocation(line: 976, column: 11, scope: !1430, inlinedAt: !1437)
!1439 = !DILocation(line: 976, column: 10, scope: !1430, inlinedAt: !1437)
!1440 = !DILocation(line: 46, column: 7, scope: !1416)
!1441 = !DILocation(line: 49, column: 11, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !401, line: 49, column: 11)
!1443 = distinct !DILexicalBlock(scope: !1425, file: !401, line: 47, column: 5)
!1444 = !DILocation(line: 49, column: 36, scope: !1442)
!1445 = !DILocation(line: 49, column: 11, scope: !1443)
!1446 = !DILocation(line: 65, column: 16, scope: !1416)
!1447 = !DILocation(line: 71, column: 27, scope: !1416)
!1448 = !DILocation(line: 74, column: 33, scope: !1416)
!1449 = !DILocation(line: 76, column: 1, scope: !1416)
!1450 = !DISubprogram(name: "strrchr", scope: !936, file: !936, line: 273, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1451 = !DILocation(line: 0, scope: !410)
!1452 = !DILocation(line: 40, column: 29, scope: !410)
!1453 = !DILocation(line: 41, column: 19, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !410, file: !411, line: 41, column: 7)
!1455 = !DILocation(line: 41, column: 7, scope: !410)
!1456 = !DILocation(line: 47, column: 3, scope: !410)
!1457 = !DILocation(line: 48, column: 3, scope: !410)
!1458 = !DILocation(line: 48, column: 13, scope: !410)
!1459 = !DILocalVariable(name: "ps", arg: 1, scope: !1460, file: !1461, line: 1135, type: !1464)
!1460 = distinct !DISubprogram(name: "mbszero", scope: !1461, file: !1461, line: 1135, type: !1462, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1465)
!1461 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1465 = !{!1459}
!1466 = !DILocation(line: 0, scope: !1460, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 48, column: 18, scope: !410)
!1468 = !DILocalVariable(name: "__dest", arg: 1, scope: !1469, file: !1470, line: 57, type: !91)
!1469 = distinct !DISubprogram(name: "memset", scope: !1470, file: !1470, line: 57, type: !1471, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1473)
!1470 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!91, !91, !97, !99}
!1473 = !{!1468, !1474, !1475}
!1474 = !DILocalVariable(name: "__ch", arg: 2, scope: !1469, file: !1470, line: 57, type: !97)
!1475 = !DILocalVariable(name: "__len", arg: 3, scope: !1469, file: !1470, line: 57, type: !99)
!1476 = !DILocation(line: 0, scope: !1469, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 1137, column: 3, scope: !1460, inlinedAt: !1467)
!1478 = !DILocation(line: 59, column: 10, scope: !1469, inlinedAt: !1477)
!1479 = !DILocation(line: 49, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !410, file: !411, line: 49, column: 7)
!1481 = !DILocation(line: 49, column: 39, scope: !1480)
!1482 = !DILocation(line: 49, column: 44, scope: !1480)
!1483 = !DILocation(line: 54, column: 1, scope: !410)
!1484 = !DISubprogram(name: "mbrtoc32", scope: !422, file: !422, line: 57, type: !1485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!99, !1487, !810, !99, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1464)
!1490 = distinct !DISubprogram(name: "clone_quoting_options", scope: !441, file: !441, line: 113, type: !1491, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1494)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!1493, !1493}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1494 = !{!1495, !1496, !1497}
!1495 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !441, line: 113, type: !1493)
!1496 = !DILocalVariable(name: "saved_errno", scope: !1490, file: !441, line: 115, type: !97)
!1497 = !DILocalVariable(name: "p", scope: !1490, file: !441, line: 116, type: !1493)
!1498 = !DILocation(line: 0, scope: !1490)
!1499 = !DILocation(line: 115, column: 21, scope: !1490)
!1500 = !DILocation(line: 116, column: 40, scope: !1490)
!1501 = !DILocation(line: 116, column: 31, scope: !1490)
!1502 = !DILocation(line: 118, column: 9, scope: !1490)
!1503 = !DILocation(line: 119, column: 3, scope: !1490)
!1504 = distinct !DISubprogram(name: "get_quoting_style", scope: !441, file: !441, line: 124, type: !1505, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1509)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!467, !1507}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!1509 = !{!1510}
!1510 = !DILocalVariable(name: "o", arg: 1, scope: !1504, file: !441, line: 124, type: !1507)
!1511 = !DILocation(line: 0, scope: !1504)
!1512 = !DILocation(line: 126, column: 11, scope: !1504)
!1513 = !DILocation(line: 126, column: 46, scope: !1504)
!1514 = !{!1515, !761, i64 0}
!1515 = !{!"quoting_options", !761, i64 0, !820, i64 4, !761, i64 8, !760, i64 40, !760, i64 48}
!1516 = !DILocation(line: 126, column: 3, scope: !1504)
!1517 = distinct !DISubprogram(name: "set_quoting_style", scope: !441, file: !441, line: 132, type: !1518, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !1493, !467}
!1520 = !{!1521, !1522}
!1521 = !DILocalVariable(name: "o", arg: 1, scope: !1517, file: !441, line: 132, type: !1493)
!1522 = !DILocalVariable(name: "s", arg: 2, scope: !1517, file: !441, line: 132, type: !467)
!1523 = !DILocation(line: 0, scope: !1517)
!1524 = !DILocation(line: 134, column: 4, scope: !1517)
!1525 = !DILocation(line: 134, column: 45, scope: !1517)
!1526 = !DILocation(line: 135, column: 1, scope: !1517)
!1527 = distinct !DISubprogram(name: "set_char_quoting", scope: !441, file: !441, line: 143, type: !1528, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!97, !1493, !4, !97}
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1537, !1538}
!1531 = !DILocalVariable(name: "o", arg: 1, scope: !1527, file: !441, line: 143, type: !1493)
!1532 = !DILocalVariable(name: "c", arg: 2, scope: !1527, file: !441, line: 143, type: !4)
!1533 = !DILocalVariable(name: "i", arg: 3, scope: !1527, file: !441, line: 143, type: !97)
!1534 = !DILocalVariable(name: "uc", scope: !1527, file: !441, line: 145, type: !101)
!1535 = !DILocalVariable(name: "p", scope: !1527, file: !441, line: 146, type: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1537 = !DILocalVariable(name: "shift", scope: !1527, file: !441, line: 148, type: !97)
!1538 = !DILocalVariable(name: "r", scope: !1527, file: !441, line: 149, type: !76)
!1539 = !DILocation(line: 0, scope: !1527)
!1540 = !DILocation(line: 147, column: 6, scope: !1527)
!1541 = !DILocation(line: 147, column: 41, scope: !1527)
!1542 = !DILocation(line: 147, column: 62, scope: !1527)
!1543 = !DILocation(line: 147, column: 57, scope: !1527)
!1544 = !DILocation(line: 148, column: 15, scope: !1527)
!1545 = !DILocation(line: 149, column: 21, scope: !1527)
!1546 = !DILocation(line: 149, column: 24, scope: !1527)
!1547 = !DILocation(line: 149, column: 34, scope: !1527)
!1548 = !DILocation(line: 150, column: 19, scope: !1527)
!1549 = !DILocation(line: 150, column: 24, scope: !1527)
!1550 = !DILocation(line: 150, column: 6, scope: !1527)
!1551 = !DILocation(line: 151, column: 3, scope: !1527)
!1552 = distinct !DISubprogram(name: "set_quoting_flags", scope: !441, file: !441, line: 159, type: !1553, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!97, !1493, !97}
!1555 = !{!1556, !1557, !1558}
!1556 = !DILocalVariable(name: "o", arg: 1, scope: !1552, file: !441, line: 159, type: !1493)
!1557 = !DILocalVariable(name: "i", arg: 2, scope: !1552, file: !441, line: 159, type: !97)
!1558 = !DILocalVariable(name: "r", scope: !1552, file: !441, line: 163, type: !97)
!1559 = !DILocation(line: 0, scope: !1552)
!1560 = !DILocation(line: 161, column: 8, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1552, file: !441, line: 161, column: 7)
!1562 = !DILocation(line: 161, column: 7, scope: !1552)
!1563 = !DILocation(line: 163, column: 14, scope: !1552)
!1564 = !{!1515, !820, i64 4}
!1565 = !DILocation(line: 164, column: 12, scope: !1552)
!1566 = !DILocation(line: 165, column: 3, scope: !1552)
!1567 = distinct !DISubprogram(name: "set_custom_quoting", scope: !441, file: !441, line: 169, type: !1568, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1493, !70, !70}
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "o", arg: 1, scope: !1567, file: !441, line: 169, type: !1493)
!1572 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1567, file: !441, line: 170, type: !70)
!1573 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1567, file: !441, line: 170, type: !70)
!1574 = !DILocation(line: 0, scope: !1567)
!1575 = !DILocation(line: 172, column: 8, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !441, line: 172, column: 7)
!1577 = !DILocation(line: 172, column: 7, scope: !1567)
!1578 = !DILocation(line: 174, column: 12, scope: !1567)
!1579 = !DILocation(line: 175, column: 8, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1567, file: !441, line: 175, column: 7)
!1581 = !DILocation(line: 175, column: 19, scope: !1580)
!1582 = !DILocation(line: 176, column: 5, scope: !1580)
!1583 = !DILocation(line: 177, column: 6, scope: !1567)
!1584 = !DILocation(line: 177, column: 17, scope: !1567)
!1585 = !{!1515, !760, i64 40}
!1586 = !DILocation(line: 178, column: 6, scope: !1567)
!1587 = !DILocation(line: 178, column: 18, scope: !1567)
!1588 = !{!1515, !760, i64 48}
!1589 = !DILocation(line: 179, column: 1, scope: !1567)
!1590 = !DISubprogram(name: "abort", scope: !940, file: !940, line: 598, type: !373, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !804)
!1591 = distinct !DISubprogram(name: "quotearg_buffer", scope: !441, file: !441, line: 774, type: !1592, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!99, !246, !99, !70, !99, !1507}
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1595 = !DILocalVariable(name: "buffer", arg: 1, scope: !1591, file: !441, line: 774, type: !246)
!1596 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1591, file: !441, line: 774, type: !99)
!1597 = !DILocalVariable(name: "arg", arg: 3, scope: !1591, file: !441, line: 775, type: !70)
!1598 = !DILocalVariable(name: "argsize", arg: 4, scope: !1591, file: !441, line: 775, type: !99)
!1599 = !DILocalVariable(name: "o", arg: 5, scope: !1591, file: !441, line: 776, type: !1507)
!1600 = !DILocalVariable(name: "p", scope: !1591, file: !441, line: 778, type: !1507)
!1601 = !DILocalVariable(name: "saved_errno", scope: !1591, file: !441, line: 779, type: !97)
!1602 = !DILocalVariable(name: "r", scope: !1591, file: !441, line: 780, type: !99)
!1603 = !DILocation(line: 0, scope: !1591)
!1604 = !DILocation(line: 778, column: 37, scope: !1591)
!1605 = !DILocation(line: 779, column: 21, scope: !1591)
!1606 = !DILocation(line: 781, column: 43, scope: !1591)
!1607 = !DILocation(line: 781, column: 53, scope: !1591)
!1608 = !DILocation(line: 781, column: 63, scope: !1591)
!1609 = !DILocation(line: 782, column: 43, scope: !1591)
!1610 = !DILocation(line: 782, column: 58, scope: !1591)
!1611 = !DILocation(line: 780, column: 14, scope: !1591)
!1612 = !DILocation(line: 783, column: 9, scope: !1591)
!1613 = !DILocation(line: 784, column: 3, scope: !1591)
!1614 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !441, file: !441, line: 251, type: !1615, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1619)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!99, !246, !99, !70, !99, !467, !97, !1617, !70, !70}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1644, !1646, !1649, !1650, !1651, !1652, !1655, !1656, !1659, !1663, !1664, !1672, !1675, !1676, !1678, !1679, !1680, !1681}
!1620 = !DILocalVariable(name: "buffer", arg: 1, scope: !1614, file: !441, line: 251, type: !246)
!1621 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1614, file: !441, line: 251, type: !99)
!1622 = !DILocalVariable(name: "arg", arg: 3, scope: !1614, file: !441, line: 252, type: !70)
!1623 = !DILocalVariable(name: "argsize", arg: 4, scope: !1614, file: !441, line: 252, type: !99)
!1624 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1614, file: !441, line: 253, type: !467)
!1625 = !DILocalVariable(name: "flags", arg: 6, scope: !1614, file: !441, line: 253, type: !97)
!1626 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1614, file: !441, line: 254, type: !1617)
!1627 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1614, file: !441, line: 255, type: !70)
!1628 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1614, file: !441, line: 256, type: !70)
!1629 = !DILocalVariable(name: "unibyte_locale", scope: !1614, file: !441, line: 258, type: !225)
!1630 = !DILocalVariable(name: "len", scope: !1614, file: !441, line: 260, type: !99)
!1631 = !DILocalVariable(name: "orig_buffersize", scope: !1614, file: !441, line: 261, type: !99)
!1632 = !DILocalVariable(name: "quote_string", scope: !1614, file: !441, line: 262, type: !70)
!1633 = !DILocalVariable(name: "quote_string_len", scope: !1614, file: !441, line: 263, type: !99)
!1634 = !DILocalVariable(name: "backslash_escapes", scope: !1614, file: !441, line: 264, type: !225)
!1635 = !DILocalVariable(name: "elide_outer_quotes", scope: !1614, file: !441, line: 265, type: !225)
!1636 = !DILocalVariable(name: "encountered_single_quote", scope: !1614, file: !441, line: 266, type: !225)
!1637 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1614, file: !441, line: 267, type: !225)
!1638 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1614, file: !441, line: 309, type: !225)
!1639 = !DILocalVariable(name: "lq", scope: !1640, file: !441, line: 361, type: !70)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !441, line: 361, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !441, line: 360, column: 13)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !441, line: 333, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 312, column: 5)
!1644 = !DILocalVariable(name: "i", scope: !1645, file: !441, line: 395, type: !99)
!1645 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 395, column: 3)
!1646 = !DILocalVariable(name: "is_right_quote", scope: !1647, file: !441, line: 397, type: !225)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !441, line: 396, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !441, line: 395, column: 3)
!1649 = !DILocalVariable(name: "escaping", scope: !1647, file: !441, line: 398, type: !225)
!1650 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1647, file: !441, line: 399, type: !225)
!1651 = !DILocalVariable(name: "c", scope: !1647, file: !441, line: 417, type: !101)
!1652 = !DILocalVariable(name: "m", scope: !1653, file: !441, line: 598, type: !99)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 596, column: 11)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 419, column: 9)
!1655 = !DILocalVariable(name: "printable", scope: !1653, file: !441, line: 600, type: !225)
!1656 = !DILocalVariable(name: "mbs", scope: !1657, file: !441, line: 609, type: !528)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !441, line: 608, column: 15)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 602, column: 17)
!1659 = !DILocalVariable(name: "w", scope: !1660, file: !441, line: 618, type: !421)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !441, line: 617, column: 19)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !441, line: 616, column: 17)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !441, line: 616, column: 17)
!1663 = !DILocalVariable(name: "bytes", scope: !1660, file: !441, line: 619, type: !99)
!1664 = !DILocalVariable(name: "j", scope: !1665, file: !441, line: 648, type: !99)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !441, line: 648, column: 29)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !441, line: 647, column: 27)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !441, line: 645, column: 29)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !441, line: 636, column: 23)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !441, line: 628, column: 30)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !441, line: 623, column: 30)
!1671 = distinct !DILexicalBlock(scope: !1660, file: !441, line: 621, column: 25)
!1672 = !DILocalVariable(name: "ilim", scope: !1673, file: !441, line: 674, type: !99)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !441, line: 671, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 670, column: 17)
!1675 = !DILabel(scope: !1614, name: "process_input", file: !441, line: 308)
!1676 = !DILabel(scope: !1677, name: "c_and_shell_escape", file: !441, line: 502)
!1677 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 478, column: 9)
!1678 = !DILabel(scope: !1677, name: "c_escape", file: !441, line: 507)
!1679 = !DILabel(scope: !1647, name: "store_escape", file: !441, line: 709)
!1680 = !DILabel(scope: !1647, name: "store_c", file: !441, line: 712)
!1681 = !DILabel(scope: !1614, name: "force_outer_quoting_style", file: !441, line: 753)
!1682 = !DILocation(line: 0, scope: !1614)
!1683 = !DILocation(line: 258, column: 25, scope: !1614)
!1684 = !DILocation(line: 258, column: 36, scope: !1614)
!1685 = !DILocation(line: 267, column: 3, scope: !1614)
!1686 = !DILocation(line: 261, column: 10, scope: !1614)
!1687 = !DILocation(line: 262, column: 15, scope: !1614)
!1688 = !DILocation(line: 263, column: 10, scope: !1614)
!1689 = !DILocation(line: 308, column: 2, scope: !1614)
!1690 = !DILocation(line: 311, column: 3, scope: !1614)
!1691 = !DILocation(line: 318, column: 11, scope: !1643)
!1692 = !DILocation(line: 319, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !441, line: 319, column: 9)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !441, line: 319, column: 9)
!1695 = distinct !DILexicalBlock(scope: !1643, file: !441, line: 318, column: 11)
!1696 = !DILocation(line: 319, column: 9, scope: !1694)
!1697 = !DILocation(line: 0, scope: !519, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 357, column: 26, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !441, line: 335, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1642, file: !441, line: 334, column: 13)
!1701 = !DILocation(line: 199, column: 29, scope: !519, inlinedAt: !1698)
!1702 = !DILocation(line: 201, column: 19, scope: !1703, inlinedAt: !1698)
!1703 = distinct !DILexicalBlock(scope: !519, file: !441, line: 201, column: 7)
!1704 = !DILocation(line: 201, column: 7, scope: !519, inlinedAt: !1698)
!1705 = !DILocation(line: 229, column: 3, scope: !519, inlinedAt: !1698)
!1706 = !DILocation(line: 230, column: 3, scope: !519, inlinedAt: !1698)
!1707 = !DILocation(line: 230, column: 13, scope: !519, inlinedAt: !1698)
!1708 = !DILocalVariable(name: "ps", arg: 1, scope: !1709, file: !1461, line: 1135, type: !1712)
!1709 = distinct !DISubprogram(name: "mbszero", scope: !1461, file: !1461, line: 1135, type: !1710, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1713)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1713 = !{!1708}
!1714 = !DILocation(line: 0, scope: !1709, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 230, column: 18, scope: !519, inlinedAt: !1698)
!1716 = !DILocalVariable(name: "__dest", arg: 1, scope: !1717, file: !1470, line: 57, type: !91)
!1717 = distinct !DISubprogram(name: "memset", scope: !1470, file: !1470, line: 57, type: !1471, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1718)
!1718 = !{!1716, !1719, !1720}
!1719 = !DILocalVariable(name: "__ch", arg: 2, scope: !1717, file: !1470, line: 57, type: !97)
!1720 = !DILocalVariable(name: "__len", arg: 3, scope: !1717, file: !1470, line: 57, type: !99)
!1721 = !DILocation(line: 0, scope: !1717, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 1137, column: 3, scope: !1709, inlinedAt: !1715)
!1723 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !1722)
!1724 = !DILocation(line: 231, column: 7, scope: !1725, inlinedAt: !1698)
!1725 = distinct !DILexicalBlock(scope: !519, file: !441, line: 231, column: 7)
!1726 = !DILocation(line: 231, column: 40, scope: !1725, inlinedAt: !1698)
!1727 = !DILocation(line: 231, column: 45, scope: !1725, inlinedAt: !1698)
!1728 = !DILocation(line: 235, column: 1, scope: !519, inlinedAt: !1698)
!1729 = !DILocation(line: 0, scope: !519, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 358, column: 27, scope: !1699)
!1731 = !DILocation(line: 199, column: 29, scope: !519, inlinedAt: !1730)
!1732 = !DILocation(line: 201, column: 19, scope: !1703, inlinedAt: !1730)
!1733 = !DILocation(line: 201, column: 7, scope: !519, inlinedAt: !1730)
!1734 = !DILocation(line: 229, column: 3, scope: !519, inlinedAt: !1730)
!1735 = !DILocation(line: 230, column: 3, scope: !519, inlinedAt: !1730)
!1736 = !DILocation(line: 230, column: 13, scope: !519, inlinedAt: !1730)
!1737 = !DILocation(line: 0, scope: !1709, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 230, column: 18, scope: !519, inlinedAt: !1730)
!1739 = !DILocation(line: 0, scope: !1717, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 1137, column: 3, scope: !1709, inlinedAt: !1738)
!1741 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !1740)
!1742 = !DILocation(line: 231, column: 7, scope: !1725, inlinedAt: !1730)
!1743 = !DILocation(line: 231, column: 40, scope: !1725, inlinedAt: !1730)
!1744 = !DILocation(line: 231, column: 45, scope: !1725, inlinedAt: !1730)
!1745 = !DILocation(line: 235, column: 1, scope: !519, inlinedAt: !1730)
!1746 = !DILocation(line: 360, column: 13, scope: !1642)
!1747 = !DILocation(line: 0, scope: !1640)
!1748 = !DILocation(line: 361, column: 45, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1640, file: !441, line: 361, column: 11)
!1750 = !DILocation(line: 361, column: 11, scope: !1640)
!1751 = !DILocation(line: 362, column: 13, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !441, line: 362, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !441, line: 362, column: 13)
!1754 = !DILocation(line: 362, column: 13, scope: !1753)
!1755 = !DILocation(line: 361, column: 52, scope: !1749)
!1756 = distinct !{!1756, !1750, !1757, !866}
!1757 = !DILocation(line: 362, column: 13, scope: !1640)
!1758 = !DILocation(line: 260, column: 10, scope: !1614)
!1759 = !DILocation(line: 365, column: 28, scope: !1642)
!1760 = !DILocation(line: 367, column: 7, scope: !1643)
!1761 = !DILocation(line: 370, column: 7, scope: !1643)
!1762 = !DILocation(line: 376, column: 11, scope: !1643)
!1763 = !DILocation(line: 381, column: 11, scope: !1643)
!1764 = !DILocation(line: 382, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !441, line: 382, column: 9)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !441, line: 382, column: 9)
!1767 = distinct !DILexicalBlock(scope: !1643, file: !441, line: 381, column: 11)
!1768 = !DILocation(line: 382, column: 9, scope: !1766)
!1769 = !DILocation(line: 389, column: 7, scope: !1643)
!1770 = !DILocation(line: 392, column: 7, scope: !1643)
!1771 = !DILocation(line: 0, scope: !1645)
!1772 = !DILocation(line: 395, column: 8, scope: !1645)
!1773 = !DILocation(line: 395, scope: !1645)
!1774 = !DILocation(line: 395, column: 34, scope: !1648)
!1775 = !DILocation(line: 395, column: 26, scope: !1648)
!1776 = !DILocation(line: 395, column: 48, scope: !1648)
!1777 = !DILocation(line: 395, column: 55, scope: !1648)
!1778 = !DILocation(line: 395, column: 3, scope: !1645)
!1779 = !DILocation(line: 395, column: 67, scope: !1648)
!1780 = !DILocation(line: 0, scope: !1647)
!1781 = !DILocation(line: 402, column: 11, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 401, column: 11)
!1783 = !DILocation(line: 404, column: 17, scope: !1782)
!1784 = !DILocation(line: 405, column: 39, scope: !1782)
!1785 = !DILocation(line: 409, column: 32, scope: !1782)
!1786 = !DILocation(line: 405, column: 19, scope: !1782)
!1787 = !DILocation(line: 405, column: 15, scope: !1782)
!1788 = !DILocation(line: 410, column: 11, scope: !1782)
!1789 = !DILocation(line: 410, column: 25, scope: !1782)
!1790 = !DILocalVariable(name: "__s1", arg: 1, scope: !1791, file: !832, line: 974, type: !964)
!1791 = distinct !DISubprogram(name: "memeq", scope: !832, file: !832, line: 974, type: !1431, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1792)
!1792 = !{!1790, !1793, !1794}
!1793 = !DILocalVariable(name: "__s2", arg: 2, scope: !1791, file: !832, line: 974, type: !964)
!1794 = !DILocalVariable(name: "__n", arg: 3, scope: !1791, file: !832, line: 974, type: !99)
!1795 = !DILocation(line: 0, scope: !1791, inlinedAt: !1796)
!1796 = distinct !DILocation(line: 410, column: 14, scope: !1782)
!1797 = !DILocation(line: 976, column: 11, scope: !1791, inlinedAt: !1796)
!1798 = !DILocation(line: 976, column: 10, scope: !1791, inlinedAt: !1796)
!1799 = !DILocation(line: 401, column: 11, scope: !1647)
!1800 = !DILocation(line: 417, column: 25, scope: !1647)
!1801 = !DILocation(line: 418, column: 7, scope: !1647)
!1802 = !DILocation(line: 421, column: 15, scope: !1654)
!1803 = !DILocation(line: 423, column: 15, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !441, line: 423, column: 15)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !441, line: 422, column: 13)
!1806 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 421, column: 15)
!1807 = !DILocation(line: 423, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !441, line: 423, column: 15)
!1809 = !DILocation(line: 423, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !441, line: 423, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !441, line: 423, column: 15)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !441, line: 423, column: 15)
!1813 = !DILocation(line: 423, column: 15, scope: !1811)
!1814 = !DILocation(line: 423, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !441, line: 423, column: 15)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !441, line: 423, column: 15)
!1817 = !DILocation(line: 423, column: 15, scope: !1816)
!1818 = !DILocation(line: 423, column: 15, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !441, line: 423, column: 15)
!1820 = distinct !DILexicalBlock(scope: !1812, file: !441, line: 423, column: 15)
!1821 = !DILocation(line: 423, column: 15, scope: !1820)
!1822 = !DILocation(line: 423, column: 15, scope: !1812)
!1823 = !DILocation(line: 423, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !441, line: 423, column: 15)
!1825 = distinct !DILexicalBlock(scope: !1804, file: !441, line: 423, column: 15)
!1826 = !DILocation(line: 423, column: 15, scope: !1825)
!1827 = !DILocation(line: 431, column: 19, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1805, file: !441, line: 430, column: 19)
!1829 = !DILocation(line: 431, column: 24, scope: !1828)
!1830 = !DILocation(line: 431, column: 28, scope: !1828)
!1831 = !DILocation(line: 431, column: 38, scope: !1828)
!1832 = !DILocation(line: 431, column: 48, scope: !1828)
!1833 = !DILocation(line: 431, column: 59, scope: !1828)
!1834 = !DILocation(line: 433, column: 19, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !441, line: 433, column: 19)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !441, line: 433, column: 19)
!1837 = distinct !DILexicalBlock(scope: !1828, file: !441, line: 432, column: 17)
!1838 = !DILocation(line: 433, column: 19, scope: !1836)
!1839 = !DILocation(line: 434, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !441, line: 434, column: 19)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !441, line: 434, column: 19)
!1842 = !DILocation(line: 434, column: 19, scope: !1841)
!1843 = !DILocation(line: 435, column: 17, scope: !1837)
!1844 = !DILocation(line: 442, column: 20, scope: !1806)
!1845 = !DILocation(line: 447, column: 11, scope: !1654)
!1846 = !DILocation(line: 450, column: 19, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 448, column: 13)
!1848 = !DILocation(line: 456, column: 19, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1847, file: !441, line: 455, column: 19)
!1850 = !DILocation(line: 456, column: 24, scope: !1849)
!1851 = !DILocation(line: 456, column: 28, scope: !1849)
!1852 = !DILocation(line: 456, column: 38, scope: !1849)
!1853 = !DILocation(line: 456, column: 47, scope: !1849)
!1854 = !DILocation(line: 456, column: 41, scope: !1849)
!1855 = !DILocation(line: 456, column: 52, scope: !1849)
!1856 = !DILocation(line: 455, column: 19, scope: !1847)
!1857 = !DILocation(line: 457, column: 25, scope: !1849)
!1858 = !DILocation(line: 457, column: 17, scope: !1849)
!1859 = !DILocation(line: 464, column: 25, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1849, file: !441, line: 458, column: 19)
!1861 = !DILocation(line: 468, column: 21, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !441, line: 468, column: 21)
!1863 = distinct !DILexicalBlock(scope: !1860, file: !441, line: 468, column: 21)
!1864 = !DILocation(line: 468, column: 21, scope: !1863)
!1865 = !DILocation(line: 469, column: 21, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !441, line: 469, column: 21)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !441, line: 469, column: 21)
!1868 = !DILocation(line: 469, column: 21, scope: !1867)
!1869 = !DILocation(line: 470, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !441, line: 470, column: 21)
!1871 = distinct !DILexicalBlock(scope: !1860, file: !441, line: 470, column: 21)
!1872 = !DILocation(line: 470, column: 21, scope: !1871)
!1873 = !DILocation(line: 471, column: 21, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !441, line: 471, column: 21)
!1875 = distinct !DILexicalBlock(scope: !1860, file: !441, line: 471, column: 21)
!1876 = !DILocation(line: 471, column: 21, scope: !1875)
!1877 = !DILocation(line: 472, column: 21, scope: !1860)
!1878 = !DILocation(line: 482, column: 33, scope: !1677)
!1879 = !DILocation(line: 483, column: 33, scope: !1677)
!1880 = !DILocation(line: 485, column: 33, scope: !1677)
!1881 = !DILocation(line: 486, column: 33, scope: !1677)
!1882 = !DILocation(line: 487, column: 33, scope: !1677)
!1883 = !DILocation(line: 490, column: 17, scope: !1677)
!1884 = !DILocation(line: 492, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !441, line: 491, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1677, file: !441, line: 490, column: 17)
!1887 = !DILocation(line: 499, column: 35, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1677, file: !441, line: 499, column: 17)
!1889 = !DILocation(line: 0, scope: !1677)
!1890 = !DILocation(line: 502, column: 11, scope: !1677)
!1891 = !DILocation(line: 504, column: 17, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1677, file: !441, line: 503, column: 17)
!1893 = !DILocation(line: 507, column: 11, scope: !1677)
!1894 = !DILocation(line: 508, column: 17, scope: !1677)
!1895 = !DILocation(line: 517, column: 15, scope: !1654)
!1896 = !DILocation(line: 517, column: 40, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 517, column: 15)
!1898 = !DILocation(line: 517, column: 47, scope: !1897)
!1899 = !DILocation(line: 517, column: 18, scope: !1897)
!1900 = !DILocation(line: 521, column: 17, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 521, column: 15)
!1902 = !DILocation(line: 521, column: 15, scope: !1654)
!1903 = !DILocation(line: 525, column: 11, scope: !1654)
!1904 = !DILocation(line: 537, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 536, column: 15)
!1906 = !DILocation(line: 536, column: 15, scope: !1654)
!1907 = !DILocation(line: 544, column: 15, scope: !1654)
!1908 = !DILocation(line: 546, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !441, line: 545, column: 13)
!1910 = distinct !DILexicalBlock(scope: !1654, file: !441, line: 544, column: 15)
!1911 = !DILocation(line: 549, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !441, line: 549, column: 19)
!1913 = !DILocation(line: 549, column: 30, scope: !1912)
!1914 = !DILocation(line: 558, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !441, line: 558, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !441, line: 558, column: 15)
!1917 = !DILocation(line: 558, column: 15, scope: !1916)
!1918 = !DILocation(line: 559, column: 15, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !441, line: 559, column: 15)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !441, line: 559, column: 15)
!1921 = !DILocation(line: 559, column: 15, scope: !1920)
!1922 = !DILocation(line: 560, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !441, line: 560, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !441, line: 560, column: 15)
!1925 = !DILocation(line: 560, column: 15, scope: !1924)
!1926 = !DILocation(line: 562, column: 13, scope: !1909)
!1927 = !DILocation(line: 602, column: 17, scope: !1653)
!1928 = !DILocation(line: 0, scope: !1653)
!1929 = !DILocation(line: 605, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1658, file: !441, line: 603, column: 15)
!1931 = !DILocation(line: 605, column: 41, scope: !1930)
!1932 = !DILocation(line: 606, column: 15, scope: !1930)
!1933 = !DILocation(line: 609, column: 17, scope: !1657)
!1934 = !DILocation(line: 609, column: 27, scope: !1657)
!1935 = !DILocation(line: 0, scope: !1709, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 609, column: 32, scope: !1657)
!1937 = !DILocation(line: 0, scope: !1717, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 1137, column: 3, scope: !1709, inlinedAt: !1936)
!1939 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !1938)
!1940 = !DILocation(line: 613, column: 29, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1657, file: !441, line: 613, column: 21)
!1942 = !DILocation(line: 613, column: 21, scope: !1657)
!1943 = !DILocation(line: 614, column: 29, scope: !1941)
!1944 = !DILocation(line: 614, column: 19, scope: !1941)
!1945 = !DILocation(line: 618, column: 21, scope: !1660)
!1946 = !DILocation(line: 620, column: 54, scope: !1660)
!1947 = !DILocation(line: 0, scope: !1660)
!1948 = !DILocation(line: 619, column: 36, scope: !1660)
!1949 = !DILocation(line: 621, column: 25, scope: !1660)
!1950 = !DILocation(line: 631, column: 38, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1669, file: !441, line: 629, column: 23)
!1952 = !DILocation(line: 631, column: 48, scope: !1951)
!1953 = !DILocation(line: 626, column: 25, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1670, file: !441, line: 624, column: 23)
!1955 = !DILocation(line: 631, column: 51, scope: !1951)
!1956 = !DILocation(line: 631, column: 25, scope: !1951)
!1957 = !DILocation(line: 632, column: 28, scope: !1951)
!1958 = !DILocation(line: 631, column: 34, scope: !1951)
!1959 = distinct !{!1959, !1956, !1957, !866}
!1960 = !DILocation(line: 646, column: 29, scope: !1667)
!1961 = !DILocation(line: 0, scope: !1665)
!1962 = !DILocation(line: 649, column: 49, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1665, file: !441, line: 648, column: 29)
!1964 = !DILocation(line: 649, column: 39, scope: !1963)
!1965 = !DILocation(line: 649, column: 31, scope: !1963)
!1966 = !DILocation(line: 648, column: 60, scope: !1963)
!1967 = !DILocation(line: 648, column: 50, scope: !1963)
!1968 = !DILocation(line: 648, column: 29, scope: !1665)
!1969 = distinct !{!1969, !1968, !1970, !866}
!1970 = !DILocation(line: 654, column: 33, scope: !1665)
!1971 = !DILocation(line: 657, column: 43, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1668, file: !441, line: 657, column: 29)
!1973 = !DILocalVariable(name: "wc", arg: 1, scope: !1974, file: !1975, line: 865, type: !1978)
!1974 = distinct !DISubprogram(name: "c32isprint", scope: !1975, file: !1975, line: 865, type: !1976, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1980)
!1975 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!97, !1978}
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1979, line: 20, baseType: !76)
!1979 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1980 = !{!1973}
!1981 = !DILocation(line: 0, scope: !1974, inlinedAt: !1982)
!1982 = distinct !DILocation(line: 657, column: 31, scope: !1972)
!1983 = !DILocation(line: 871, column: 10, scope: !1974, inlinedAt: !1982)
!1984 = !DILocation(line: 657, column: 31, scope: !1972)
!1985 = !DILocation(line: 664, column: 23, scope: !1660)
!1986 = !DILocation(line: 665, column: 19, scope: !1661)
!1987 = !DILocation(line: 666, column: 15, scope: !1658)
!1988 = !DILocation(line: 753, column: 2, scope: !1614)
!1989 = !DILocation(line: 756, column: 51, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 756, column: 7)
!1991 = !DILocation(line: 0, scope: !1658)
!1992 = !DILocation(line: 670, column: 19, scope: !1674)
!1993 = !DILocation(line: 670, column: 23, scope: !1674)
!1994 = !DILocation(line: 674, column: 33, scope: !1673)
!1995 = !DILocation(line: 0, scope: !1673)
!1996 = !DILocation(line: 676, column: 17, scope: !1673)
!1997 = !DILocation(line: 398, column: 12, scope: !1647)
!1998 = !DILocation(line: 678, column: 43, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !441, line: 678, column: 25)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !441, line: 677, column: 19)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !441, line: 676, column: 17)
!2002 = distinct !DILexicalBlock(scope: !1673, file: !441, line: 676, column: 17)
!2003 = !DILocation(line: 680, column: 25, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !441, line: 680, column: 25)
!2005 = distinct !DILexicalBlock(scope: !1999, file: !441, line: 679, column: 23)
!2006 = !DILocation(line: 680, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2004, file: !441, line: 680, column: 25)
!2008 = !DILocation(line: 680, column: 25, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !441, line: 680, column: 25)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !441, line: 680, column: 25)
!2011 = distinct !DILexicalBlock(scope: !2007, file: !441, line: 680, column: 25)
!2012 = !DILocation(line: 680, column: 25, scope: !2010)
!2013 = !DILocation(line: 680, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !441, line: 680, column: 25)
!2015 = distinct !DILexicalBlock(scope: !2011, file: !441, line: 680, column: 25)
!2016 = !DILocation(line: 680, column: 25, scope: !2015)
!2017 = !DILocation(line: 680, column: 25, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !441, line: 680, column: 25)
!2019 = distinct !DILexicalBlock(scope: !2011, file: !441, line: 680, column: 25)
!2020 = !DILocation(line: 680, column: 25, scope: !2019)
!2021 = !DILocation(line: 680, column: 25, scope: !2011)
!2022 = !DILocation(line: 680, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !441, line: 680, column: 25)
!2024 = distinct !DILexicalBlock(scope: !2004, file: !441, line: 680, column: 25)
!2025 = !DILocation(line: 680, column: 25, scope: !2024)
!2026 = !DILocation(line: 681, column: 25, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !441, line: 681, column: 25)
!2028 = distinct !DILexicalBlock(scope: !2005, file: !441, line: 681, column: 25)
!2029 = !DILocation(line: 681, column: 25, scope: !2028)
!2030 = !DILocation(line: 682, column: 25, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !441, line: 682, column: 25)
!2032 = distinct !DILexicalBlock(scope: !2005, file: !441, line: 682, column: 25)
!2033 = !DILocation(line: 682, column: 25, scope: !2032)
!2034 = !DILocation(line: 683, column: 38, scope: !2005)
!2035 = !DILocation(line: 683, column: 33, scope: !2005)
!2036 = !DILocation(line: 684, column: 23, scope: !2005)
!2037 = !DILocation(line: 685, column: 30, scope: !1999)
!2038 = !DILocation(line: 687, column: 25, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !441, line: 687, column: 25)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !441, line: 687, column: 25)
!2041 = distinct !DILexicalBlock(scope: !2042, file: !441, line: 686, column: 23)
!2042 = distinct !DILexicalBlock(scope: !1999, file: !441, line: 685, column: 30)
!2043 = !DILocation(line: 687, column: 25, scope: !2040)
!2044 = !DILocation(line: 689, column: 23, scope: !2041)
!2045 = !DILocation(line: 690, column: 35, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2000, file: !441, line: 690, column: 25)
!2047 = !DILocation(line: 690, column: 30, scope: !2046)
!2048 = !DILocation(line: 690, column: 25, scope: !2000)
!2049 = !DILocation(line: 692, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !441, line: 692, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2000, file: !441, line: 692, column: 21)
!2052 = !DILocation(line: 692, column: 21, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !441, line: 692, column: 21)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !441, line: 692, column: 21)
!2055 = distinct !DILexicalBlock(scope: !2050, file: !441, line: 692, column: 21)
!2056 = !DILocation(line: 692, column: 21, scope: !2054)
!2057 = !DILocation(line: 692, column: 21, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !441, line: 692, column: 21)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !441, line: 692, column: 21)
!2060 = !DILocation(line: 692, column: 21, scope: !2059)
!2061 = !DILocation(line: 692, column: 21, scope: !2055)
!2062 = !DILocation(line: 0, scope: !2000)
!2063 = !DILocation(line: 693, column: 21, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !441, line: 693, column: 21)
!2065 = distinct !DILexicalBlock(scope: !2000, file: !441, line: 693, column: 21)
!2066 = !DILocation(line: 693, column: 21, scope: !2065)
!2067 = !DILocation(line: 694, column: 25, scope: !2000)
!2068 = !DILocation(line: 676, column: 17, scope: !2001)
!2069 = distinct !{!2069, !2070, !2071}
!2070 = !DILocation(line: 676, column: 17, scope: !2002)
!2071 = !DILocation(line: 695, column: 19, scope: !2002)
!2072 = !DILocation(line: 409, column: 30, scope: !1782)
!2073 = !DILocation(line: 702, column: 34, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 702, column: 11)
!2075 = !DILocation(line: 704, column: 14, scope: !2074)
!2076 = !DILocation(line: 705, column: 14, scope: !2074)
!2077 = !DILocation(line: 705, column: 35, scope: !2074)
!2078 = !DILocation(line: 705, column: 17, scope: !2074)
!2079 = !DILocation(line: 705, column: 47, scope: !2074)
!2080 = !DILocation(line: 705, column: 65, scope: !2074)
!2081 = !DILocation(line: 706, column: 11, scope: !2074)
!2082 = !DILocation(line: 702, column: 11, scope: !1647)
!2083 = !DILocation(line: 395, column: 15, scope: !1645)
!2084 = !DILocation(line: 709, column: 5, scope: !1647)
!2085 = !DILocation(line: 710, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 710, column: 7)
!2087 = !DILocation(line: 710, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2086, file: !441, line: 710, column: 7)
!2089 = !DILocation(line: 710, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !441, line: 710, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !441, line: 710, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !441, line: 710, column: 7)
!2093 = !DILocation(line: 710, column: 7, scope: !2091)
!2094 = !DILocation(line: 710, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !441, line: 710, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !441, line: 710, column: 7)
!2097 = !DILocation(line: 710, column: 7, scope: !2096)
!2098 = !DILocation(line: 710, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !441, line: 710, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2092, file: !441, line: 710, column: 7)
!2101 = !DILocation(line: 710, column: 7, scope: !2100)
!2102 = !DILocation(line: 710, column: 7, scope: !2092)
!2103 = !DILocation(line: 710, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !441, line: 710, column: 7)
!2105 = distinct !DILexicalBlock(scope: !2086, file: !441, line: 710, column: 7)
!2106 = !DILocation(line: 710, column: 7, scope: !2105)
!2107 = !DILocation(line: 712, column: 5, scope: !1647)
!2108 = !DILocation(line: 713, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !441, line: 713, column: 7)
!2110 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 713, column: 7)
!2111 = !DILocation(line: 417, column: 21, scope: !1647)
!2112 = !DILocation(line: 713, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !441, line: 713, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !441, line: 713, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2109, file: !441, line: 713, column: 7)
!2116 = !DILocation(line: 713, column: 7, scope: !2114)
!2117 = !DILocation(line: 713, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !441, line: 713, column: 7)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !441, line: 713, column: 7)
!2120 = !DILocation(line: 713, column: 7, scope: !2119)
!2121 = !DILocation(line: 713, column: 7, scope: !2115)
!2122 = !DILocation(line: 714, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !441, line: 714, column: 7)
!2124 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 714, column: 7)
!2125 = !DILocation(line: 714, column: 7, scope: !2124)
!2126 = !DILocation(line: 716, column: 11, scope: !1647)
!2127 = !DILocation(line: 718, column: 5, scope: !1648)
!2128 = !DILocation(line: 395, column: 82, scope: !1648)
!2129 = !DILocation(line: 395, column: 3, scope: !1648)
!2130 = distinct !{!2130, !1778, !2131, !866}
!2131 = !DILocation(line: 718, column: 5, scope: !1645)
!2132 = !DILocation(line: 720, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 720, column: 7)
!2134 = !DILocation(line: 720, column: 16, scope: !2133)
!2135 = !DILocation(line: 728, column: 51, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 728, column: 7)
!2137 = !DILocation(line: 731, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2136, file: !441, line: 730, column: 5)
!2139 = !DILocation(line: 732, column: 16, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2138, file: !441, line: 731, column: 11)
!2141 = !DILocation(line: 732, column: 9, scope: !2140)
!2142 = !DILocation(line: 736, column: 18, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2140, file: !441, line: 736, column: 16)
!2144 = !DILocation(line: 736, column: 29, scope: !2143)
!2145 = !DILocation(line: 745, column: 7, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 745, column: 7)
!2147 = !DILocation(line: 745, column: 20, scope: !2146)
!2148 = !DILocation(line: 746, column: 12, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !441, line: 746, column: 5)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !441, line: 746, column: 5)
!2151 = !DILocation(line: 746, column: 5, scope: !2150)
!2152 = !DILocation(line: 747, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !441, line: 747, column: 7)
!2154 = distinct !DILexicalBlock(scope: !2149, file: !441, line: 747, column: 7)
!2155 = !DILocation(line: 747, column: 7, scope: !2154)
!2156 = !DILocation(line: 746, column: 39, scope: !2149)
!2157 = distinct !{!2157, !2151, !2158, !866}
!2158 = !DILocation(line: 747, column: 7, scope: !2150)
!2159 = !DILocation(line: 749, column: 11, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !1614, file: !441, line: 749, column: 7)
!2161 = !DILocation(line: 749, column: 7, scope: !1614)
!2162 = !DILocation(line: 750, column: 5, scope: !2160)
!2163 = !DILocation(line: 750, column: 17, scope: !2160)
!2164 = !DILocation(line: 756, column: 21, scope: !1990)
!2165 = !DILocation(line: 760, column: 42, scope: !1614)
!2166 = !DILocation(line: 758, column: 10, scope: !1614)
!2167 = !DILocation(line: 758, column: 3, scope: !1614)
!2168 = !DILocation(line: 762, column: 1, scope: !1614)
!2169 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !940, file: !940, line: 98, type: !2170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!99}
!2172 = !DISubprogram(name: "strlen", scope: !936, file: !936, line: 407, type: !2173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!96, !70}
!2175 = !DISubprogram(name: "iswprint", scope: !2176, file: !2176, line: 120, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2176 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2177 = distinct !DISubprogram(name: "quotearg_alloc", scope: !441, file: !441, line: 788, type: !2178, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!246, !70, !99, !1507}
!2180 = !{!2181, !2182, !2183}
!2181 = !DILocalVariable(name: "arg", arg: 1, scope: !2177, file: !441, line: 788, type: !70)
!2182 = !DILocalVariable(name: "argsize", arg: 2, scope: !2177, file: !441, line: 788, type: !99)
!2183 = !DILocalVariable(name: "o", arg: 3, scope: !2177, file: !441, line: 789, type: !1507)
!2184 = !DILocation(line: 0, scope: !2177)
!2185 = !DILocalVariable(name: "arg", arg: 1, scope: !2186, file: !441, line: 801, type: !70)
!2186 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !441, file: !441, line: 801, type: !2187, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!246, !70, !99, !694, !1507}
!2189 = !{!2185, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197}
!2190 = !DILocalVariable(name: "argsize", arg: 2, scope: !2186, file: !441, line: 801, type: !99)
!2191 = !DILocalVariable(name: "size", arg: 3, scope: !2186, file: !441, line: 801, type: !694)
!2192 = !DILocalVariable(name: "o", arg: 4, scope: !2186, file: !441, line: 802, type: !1507)
!2193 = !DILocalVariable(name: "p", scope: !2186, file: !441, line: 804, type: !1507)
!2194 = !DILocalVariable(name: "saved_errno", scope: !2186, file: !441, line: 805, type: !97)
!2195 = !DILocalVariable(name: "flags", scope: !2186, file: !441, line: 807, type: !97)
!2196 = !DILocalVariable(name: "bufsize", scope: !2186, file: !441, line: 808, type: !99)
!2197 = !DILocalVariable(name: "buf", scope: !2186, file: !441, line: 812, type: !246)
!2198 = !DILocation(line: 0, scope: !2186, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 791, column: 10, scope: !2177)
!2200 = !DILocation(line: 804, column: 37, scope: !2186, inlinedAt: !2199)
!2201 = !DILocation(line: 805, column: 21, scope: !2186, inlinedAt: !2199)
!2202 = !DILocation(line: 807, column: 18, scope: !2186, inlinedAt: !2199)
!2203 = !DILocation(line: 807, column: 24, scope: !2186, inlinedAt: !2199)
!2204 = !DILocation(line: 808, column: 72, scope: !2186, inlinedAt: !2199)
!2205 = !DILocation(line: 809, column: 56, scope: !2186, inlinedAt: !2199)
!2206 = !DILocation(line: 810, column: 49, scope: !2186, inlinedAt: !2199)
!2207 = !DILocation(line: 811, column: 49, scope: !2186, inlinedAt: !2199)
!2208 = !DILocation(line: 808, column: 20, scope: !2186, inlinedAt: !2199)
!2209 = !DILocation(line: 811, column: 62, scope: !2186, inlinedAt: !2199)
!2210 = !DILocation(line: 812, column: 15, scope: !2186, inlinedAt: !2199)
!2211 = !DILocation(line: 813, column: 60, scope: !2186, inlinedAt: !2199)
!2212 = !DILocation(line: 815, column: 32, scope: !2186, inlinedAt: !2199)
!2213 = !DILocation(line: 815, column: 47, scope: !2186, inlinedAt: !2199)
!2214 = !DILocation(line: 813, column: 3, scope: !2186, inlinedAt: !2199)
!2215 = !DILocation(line: 816, column: 9, scope: !2186, inlinedAt: !2199)
!2216 = !DILocation(line: 791, column: 3, scope: !2177)
!2217 = !DILocation(line: 0, scope: !2186)
!2218 = !DILocation(line: 804, column: 37, scope: !2186)
!2219 = !DILocation(line: 805, column: 21, scope: !2186)
!2220 = !DILocation(line: 807, column: 18, scope: !2186)
!2221 = !DILocation(line: 807, column: 27, scope: !2186)
!2222 = !DILocation(line: 807, column: 24, scope: !2186)
!2223 = !DILocation(line: 808, column: 72, scope: !2186)
!2224 = !DILocation(line: 809, column: 56, scope: !2186)
!2225 = !DILocation(line: 810, column: 49, scope: !2186)
!2226 = !DILocation(line: 811, column: 49, scope: !2186)
!2227 = !DILocation(line: 808, column: 20, scope: !2186)
!2228 = !DILocation(line: 811, column: 62, scope: !2186)
!2229 = !DILocation(line: 812, column: 15, scope: !2186)
!2230 = !DILocation(line: 813, column: 60, scope: !2186)
!2231 = !DILocation(line: 815, column: 32, scope: !2186)
!2232 = !DILocation(line: 815, column: 47, scope: !2186)
!2233 = !DILocation(line: 813, column: 3, scope: !2186)
!2234 = !DILocation(line: 816, column: 9, scope: !2186)
!2235 = !DILocation(line: 817, column: 7, scope: !2186)
!2236 = !DILocation(line: 818, column: 11, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2186, file: !441, line: 817, column: 7)
!2238 = !{!1231, !1231, i64 0}
!2239 = !DILocation(line: 818, column: 5, scope: !2237)
!2240 = !DILocation(line: 819, column: 3, scope: !2186)
!2241 = distinct !DISubprogram(name: "quotearg_free", scope: !441, file: !441, line: 837, type: !373, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2242)
!2242 = !{!2243, !2244}
!2243 = !DILocalVariable(name: "sv", scope: !2241, file: !441, line: 839, type: !542)
!2244 = !DILocalVariable(name: "i", scope: !2245, file: !441, line: 840, type: !97)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !441, line: 840, column: 3)
!2246 = !DILocation(line: 839, column: 24, scope: !2241)
!2247 = !DILocation(line: 0, scope: !2241)
!2248 = !DILocation(line: 0, scope: !2245)
!2249 = !DILocation(line: 840, column: 21, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2245, file: !441, line: 840, column: 3)
!2251 = !DILocation(line: 840, column: 3, scope: !2245)
!2252 = !DILocation(line: 842, column: 13, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2241, file: !441, line: 842, column: 7)
!2254 = !{!2255, !760, i64 8}
!2255 = !{!"slotvec", !1231, i64 0, !760, i64 8}
!2256 = !DILocation(line: 842, column: 17, scope: !2253)
!2257 = !DILocation(line: 842, column: 7, scope: !2241)
!2258 = !DILocation(line: 841, column: 17, scope: !2250)
!2259 = !DILocation(line: 841, column: 5, scope: !2250)
!2260 = !DILocation(line: 840, column: 32, scope: !2250)
!2261 = distinct !{!2261, !2251, !2262, !866}
!2262 = !DILocation(line: 841, column: 20, scope: !2245)
!2263 = !DILocation(line: 844, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2253, file: !441, line: 843, column: 5)
!2265 = !DILocation(line: 845, column: 21, scope: !2264)
!2266 = !{!2255, !1231, i64 0}
!2267 = !DILocation(line: 846, column: 20, scope: !2264)
!2268 = !DILocation(line: 847, column: 5, scope: !2264)
!2269 = !DILocation(line: 848, column: 10, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2241, file: !441, line: 848, column: 7)
!2271 = !DILocation(line: 848, column: 7, scope: !2241)
!2272 = !DILocation(line: 850, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2270, file: !441, line: 849, column: 5)
!2274 = !DILocation(line: 851, column: 15, scope: !2273)
!2275 = !DILocation(line: 852, column: 5, scope: !2273)
!2276 = !DILocation(line: 853, column: 10, scope: !2241)
!2277 = !DILocation(line: 854, column: 1, scope: !2241)
!2278 = !DISubprogram(name: "free", scope: !1461, file: !1461, line: 786, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !91}
!2281 = distinct !DISubprogram(name: "quotearg_n", scope: !441, file: !441, line: 919, type: !933, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2282)
!2282 = !{!2283, !2284}
!2283 = !DILocalVariable(name: "n", arg: 1, scope: !2281, file: !441, line: 919, type: !97)
!2284 = !DILocalVariable(name: "arg", arg: 2, scope: !2281, file: !441, line: 919, type: !70)
!2285 = !DILocation(line: 0, scope: !2281)
!2286 = !DILocation(line: 921, column: 10, scope: !2281)
!2287 = !DILocation(line: 921, column: 3, scope: !2281)
!2288 = distinct !DISubprogram(name: "quotearg_n_options", scope: !441, file: !441, line: 866, type: !2289, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2291)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!246, !97, !70, !99, !1507}
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2302, !2303, !2305, !2306, !2307}
!2292 = !DILocalVariable(name: "n", arg: 1, scope: !2288, file: !441, line: 866, type: !97)
!2293 = !DILocalVariable(name: "arg", arg: 2, scope: !2288, file: !441, line: 866, type: !70)
!2294 = !DILocalVariable(name: "argsize", arg: 3, scope: !2288, file: !441, line: 866, type: !99)
!2295 = !DILocalVariable(name: "options", arg: 4, scope: !2288, file: !441, line: 867, type: !1507)
!2296 = !DILocalVariable(name: "saved_errno", scope: !2288, file: !441, line: 869, type: !97)
!2297 = !DILocalVariable(name: "sv", scope: !2288, file: !441, line: 871, type: !542)
!2298 = !DILocalVariable(name: "nslots_max", scope: !2288, file: !441, line: 873, type: !97)
!2299 = !DILocalVariable(name: "preallocated", scope: !2300, file: !441, line: 879, type: !225)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !441, line: 878, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2288, file: !441, line: 877, column: 7)
!2302 = !DILocalVariable(name: "new_nslots", scope: !2300, file: !441, line: 880, type: !707)
!2303 = !DILocalVariable(name: "size", scope: !2304, file: !441, line: 891, type: !99)
!2304 = distinct !DILexicalBlock(scope: !2288, file: !441, line: 890, column: 3)
!2305 = !DILocalVariable(name: "val", scope: !2304, file: !441, line: 892, type: !246)
!2306 = !DILocalVariable(name: "flags", scope: !2304, file: !441, line: 894, type: !97)
!2307 = !DILocalVariable(name: "qsize", scope: !2304, file: !441, line: 895, type: !99)
!2308 = !DILocation(line: 0, scope: !2288)
!2309 = !DILocation(line: 869, column: 21, scope: !2288)
!2310 = !DILocation(line: 871, column: 24, scope: !2288)
!2311 = !DILocation(line: 874, column: 17, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2288, file: !441, line: 874, column: 7)
!2313 = !DILocation(line: 875, column: 5, scope: !2312)
!2314 = !DILocation(line: 877, column: 7, scope: !2301)
!2315 = !DILocation(line: 877, column: 14, scope: !2301)
!2316 = !DILocation(line: 877, column: 7, scope: !2288)
!2317 = !DILocation(line: 879, column: 31, scope: !2300)
!2318 = !DILocation(line: 0, scope: !2300)
!2319 = !DILocation(line: 880, column: 7, scope: !2300)
!2320 = !DILocation(line: 880, column: 26, scope: !2300)
!2321 = !DILocation(line: 880, column: 13, scope: !2300)
!2322 = !DILocation(line: 882, column: 31, scope: !2300)
!2323 = !DILocation(line: 883, column: 33, scope: !2300)
!2324 = !DILocation(line: 883, column: 42, scope: !2300)
!2325 = !DILocation(line: 883, column: 31, scope: !2300)
!2326 = !DILocation(line: 882, column: 22, scope: !2300)
!2327 = !DILocation(line: 882, column: 15, scope: !2300)
!2328 = !DILocation(line: 884, column: 11, scope: !2300)
!2329 = !DILocation(line: 885, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2300, file: !441, line: 884, column: 11)
!2331 = !{i64 0, i64 8, !2238, i64 8, i64 8, !759}
!2332 = !DILocation(line: 885, column: 9, scope: !2330)
!2333 = !DILocation(line: 886, column: 20, scope: !2300)
!2334 = !DILocation(line: 886, column: 18, scope: !2300)
!2335 = !DILocation(line: 886, column: 32, scope: !2300)
!2336 = !DILocation(line: 886, column: 43, scope: !2300)
!2337 = !DILocation(line: 886, column: 53, scope: !2300)
!2338 = !DILocation(line: 0, scope: !1717, inlinedAt: !2339)
!2339 = distinct !DILocation(line: 886, column: 7, scope: !2300)
!2340 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !2339)
!2341 = !DILocation(line: 887, column: 16, scope: !2300)
!2342 = !DILocation(line: 887, column: 14, scope: !2300)
!2343 = !DILocation(line: 888, column: 5, scope: !2301)
!2344 = !DILocation(line: 888, column: 5, scope: !2300)
!2345 = !DILocation(line: 891, column: 19, scope: !2304)
!2346 = !DILocation(line: 891, column: 25, scope: !2304)
!2347 = !DILocation(line: 0, scope: !2304)
!2348 = !DILocation(line: 892, column: 23, scope: !2304)
!2349 = !DILocation(line: 894, column: 26, scope: !2304)
!2350 = !DILocation(line: 894, column: 32, scope: !2304)
!2351 = !DILocation(line: 896, column: 55, scope: !2304)
!2352 = !DILocation(line: 897, column: 55, scope: !2304)
!2353 = !DILocation(line: 898, column: 55, scope: !2304)
!2354 = !DILocation(line: 899, column: 55, scope: !2304)
!2355 = !DILocation(line: 895, column: 20, scope: !2304)
!2356 = !DILocation(line: 901, column: 14, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2304, file: !441, line: 901, column: 9)
!2358 = !DILocation(line: 901, column: 9, scope: !2304)
!2359 = !DILocation(line: 903, column: 35, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2357, file: !441, line: 902, column: 7)
!2361 = !DILocation(line: 903, column: 20, scope: !2360)
!2362 = !DILocation(line: 904, column: 17, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2360, file: !441, line: 904, column: 13)
!2364 = !DILocation(line: 904, column: 13, scope: !2360)
!2365 = !DILocation(line: 905, column: 11, scope: !2363)
!2366 = !DILocation(line: 906, column: 27, scope: !2360)
!2367 = !DILocation(line: 906, column: 19, scope: !2360)
!2368 = !DILocation(line: 907, column: 69, scope: !2360)
!2369 = !DILocation(line: 909, column: 44, scope: !2360)
!2370 = !DILocation(line: 910, column: 44, scope: !2360)
!2371 = !DILocation(line: 907, column: 9, scope: !2360)
!2372 = !DILocation(line: 911, column: 7, scope: !2360)
!2373 = !DILocation(line: 913, column: 11, scope: !2304)
!2374 = !DILocation(line: 914, column: 5, scope: !2304)
!2375 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !441, file: !441, line: 925, type: !2376, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!246, !97, !70, !99}
!2378 = !{!2379, !2380, !2381}
!2379 = !DILocalVariable(name: "n", arg: 1, scope: !2375, file: !441, line: 925, type: !97)
!2380 = !DILocalVariable(name: "arg", arg: 2, scope: !2375, file: !441, line: 925, type: !70)
!2381 = !DILocalVariable(name: "argsize", arg: 3, scope: !2375, file: !441, line: 925, type: !99)
!2382 = !DILocation(line: 0, scope: !2375)
!2383 = !DILocation(line: 927, column: 10, scope: !2375)
!2384 = !DILocation(line: 927, column: 3, scope: !2375)
!2385 = distinct !DISubprogram(name: "quotearg", scope: !441, file: !441, line: 931, type: !942, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2386)
!2386 = !{!2387}
!2387 = !DILocalVariable(name: "arg", arg: 1, scope: !2385, file: !441, line: 931, type: !70)
!2388 = !DILocation(line: 0, scope: !2385)
!2389 = !DILocation(line: 0, scope: !2281, inlinedAt: !2390)
!2390 = distinct !DILocation(line: 933, column: 10, scope: !2385)
!2391 = !DILocation(line: 921, column: 10, scope: !2281, inlinedAt: !2390)
!2392 = !DILocation(line: 933, column: 3, scope: !2385)
!2393 = distinct !DISubprogram(name: "quotearg_mem", scope: !441, file: !441, line: 937, type: !2394, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2396)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!246, !70, !99}
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "arg", arg: 1, scope: !2393, file: !441, line: 937, type: !70)
!2398 = !DILocalVariable(name: "argsize", arg: 2, scope: !2393, file: !441, line: 937, type: !99)
!2399 = !DILocation(line: 0, scope: !2393)
!2400 = !DILocation(line: 0, scope: !2375, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 939, column: 10, scope: !2393)
!2402 = !DILocation(line: 927, column: 10, scope: !2375, inlinedAt: !2401)
!2403 = !DILocation(line: 939, column: 3, scope: !2393)
!2404 = distinct !DISubprogram(name: "quotearg_n_style", scope: !441, file: !441, line: 943, type: !2405, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2407)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!246, !97, !467, !70}
!2407 = !{!2408, !2409, !2410, !2411}
!2408 = !DILocalVariable(name: "n", arg: 1, scope: !2404, file: !441, line: 943, type: !97)
!2409 = !DILocalVariable(name: "s", arg: 2, scope: !2404, file: !441, line: 943, type: !467)
!2410 = !DILocalVariable(name: "arg", arg: 3, scope: !2404, file: !441, line: 943, type: !70)
!2411 = !DILocalVariable(name: "o", scope: !2404, file: !441, line: 945, type: !1508)
!2412 = !DILocation(line: 0, scope: !2404)
!2413 = !DILocation(line: 945, column: 3, scope: !2404)
!2414 = !DILocation(line: 945, column: 32, scope: !2404)
!2415 = !{!2416}
!2416 = distinct !{!2416, !2417, !"quoting_options_from_style: argument 0"}
!2417 = distinct !{!2417, !"quoting_options_from_style"}
!2418 = !DILocation(line: 945, column: 36, scope: !2404)
!2419 = !DILocalVariable(name: "style", arg: 1, scope: !2420, file: !441, line: 183, type: !467)
!2420 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !441, file: !441, line: 183, type: !2421, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!494, !467}
!2423 = !{!2419, !2424}
!2424 = !DILocalVariable(name: "o", scope: !2420, file: !441, line: 185, type: !494)
!2425 = !DILocation(line: 0, scope: !2420, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 945, column: 36, scope: !2404)
!2427 = !DILocation(line: 185, column: 26, scope: !2420, inlinedAt: !2426)
!2428 = !DILocation(line: 186, column: 13, scope: !2429, inlinedAt: !2426)
!2429 = distinct !DILexicalBlock(scope: !2420, file: !441, line: 186, column: 7)
!2430 = !DILocation(line: 186, column: 7, scope: !2420, inlinedAt: !2426)
!2431 = !DILocation(line: 187, column: 5, scope: !2429, inlinedAt: !2426)
!2432 = !DILocation(line: 188, column: 11, scope: !2420, inlinedAt: !2426)
!2433 = !DILocation(line: 946, column: 10, scope: !2404)
!2434 = !DILocation(line: 947, column: 1, scope: !2404)
!2435 = !DILocation(line: 946, column: 3, scope: !2404)
!2436 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !441, file: !441, line: 950, type: !2437, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!246, !97, !467, !70, !99}
!2439 = !{!2440, !2441, !2442, !2443, !2444}
!2440 = !DILocalVariable(name: "n", arg: 1, scope: !2436, file: !441, line: 950, type: !97)
!2441 = !DILocalVariable(name: "s", arg: 2, scope: !2436, file: !441, line: 950, type: !467)
!2442 = !DILocalVariable(name: "arg", arg: 3, scope: !2436, file: !441, line: 951, type: !70)
!2443 = !DILocalVariable(name: "argsize", arg: 4, scope: !2436, file: !441, line: 951, type: !99)
!2444 = !DILocalVariable(name: "o", scope: !2436, file: !441, line: 953, type: !1508)
!2445 = !DILocation(line: 0, scope: !2436)
!2446 = !DILocation(line: 953, column: 3, scope: !2436)
!2447 = !DILocation(line: 953, column: 32, scope: !2436)
!2448 = !{!2449}
!2449 = distinct !{!2449, !2450, !"quoting_options_from_style: argument 0"}
!2450 = distinct !{!2450, !"quoting_options_from_style"}
!2451 = !DILocation(line: 953, column: 36, scope: !2436)
!2452 = !DILocation(line: 0, scope: !2420, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 953, column: 36, scope: !2436)
!2454 = !DILocation(line: 185, column: 26, scope: !2420, inlinedAt: !2453)
!2455 = !DILocation(line: 186, column: 13, scope: !2429, inlinedAt: !2453)
!2456 = !DILocation(line: 186, column: 7, scope: !2420, inlinedAt: !2453)
!2457 = !DILocation(line: 187, column: 5, scope: !2429, inlinedAt: !2453)
!2458 = !DILocation(line: 188, column: 11, scope: !2420, inlinedAt: !2453)
!2459 = !DILocation(line: 954, column: 10, scope: !2436)
!2460 = !DILocation(line: 955, column: 1, scope: !2436)
!2461 = !DILocation(line: 954, column: 3, scope: !2436)
!2462 = distinct !DISubprogram(name: "quotearg_style", scope: !441, file: !441, line: 958, type: !2463, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2465)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!246, !467, !70}
!2465 = !{!2466, !2467}
!2466 = !DILocalVariable(name: "s", arg: 1, scope: !2462, file: !441, line: 958, type: !467)
!2467 = !DILocalVariable(name: "arg", arg: 2, scope: !2462, file: !441, line: 958, type: !70)
!2468 = !DILocation(line: 0, scope: !2462)
!2469 = !DILocation(line: 0, scope: !2404, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 960, column: 10, scope: !2462)
!2471 = !DILocation(line: 945, column: 3, scope: !2404, inlinedAt: !2470)
!2472 = !DILocation(line: 945, column: 32, scope: !2404, inlinedAt: !2470)
!2473 = !{!2474}
!2474 = distinct !{!2474, !2475, !"quoting_options_from_style: argument 0"}
!2475 = distinct !{!2475, !"quoting_options_from_style"}
!2476 = !DILocation(line: 945, column: 36, scope: !2404, inlinedAt: !2470)
!2477 = !DILocation(line: 0, scope: !2420, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 945, column: 36, scope: !2404, inlinedAt: !2470)
!2479 = !DILocation(line: 185, column: 26, scope: !2420, inlinedAt: !2478)
!2480 = !DILocation(line: 186, column: 13, scope: !2429, inlinedAt: !2478)
!2481 = !DILocation(line: 186, column: 7, scope: !2420, inlinedAt: !2478)
!2482 = !DILocation(line: 187, column: 5, scope: !2429, inlinedAt: !2478)
!2483 = !DILocation(line: 188, column: 11, scope: !2420, inlinedAt: !2478)
!2484 = !DILocation(line: 946, column: 10, scope: !2404, inlinedAt: !2470)
!2485 = !DILocation(line: 947, column: 1, scope: !2404, inlinedAt: !2470)
!2486 = !DILocation(line: 960, column: 3, scope: !2462)
!2487 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !441, file: !441, line: 964, type: !2488, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2490)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!246, !467, !70, !99}
!2490 = !{!2491, !2492, !2493}
!2491 = !DILocalVariable(name: "s", arg: 1, scope: !2487, file: !441, line: 964, type: !467)
!2492 = !DILocalVariable(name: "arg", arg: 2, scope: !2487, file: !441, line: 964, type: !70)
!2493 = !DILocalVariable(name: "argsize", arg: 3, scope: !2487, file: !441, line: 964, type: !99)
!2494 = !DILocation(line: 0, scope: !2487)
!2495 = !DILocation(line: 0, scope: !2436, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 966, column: 10, scope: !2487)
!2497 = !DILocation(line: 953, column: 3, scope: !2436, inlinedAt: !2496)
!2498 = !DILocation(line: 953, column: 32, scope: !2436, inlinedAt: !2496)
!2499 = !{!2500}
!2500 = distinct !{!2500, !2501, !"quoting_options_from_style: argument 0"}
!2501 = distinct !{!2501, !"quoting_options_from_style"}
!2502 = !DILocation(line: 953, column: 36, scope: !2436, inlinedAt: !2496)
!2503 = !DILocation(line: 0, scope: !2420, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 953, column: 36, scope: !2436, inlinedAt: !2496)
!2505 = !DILocation(line: 185, column: 26, scope: !2420, inlinedAt: !2504)
!2506 = !DILocation(line: 186, column: 13, scope: !2429, inlinedAt: !2504)
!2507 = !DILocation(line: 186, column: 7, scope: !2420, inlinedAt: !2504)
!2508 = !DILocation(line: 187, column: 5, scope: !2429, inlinedAt: !2504)
!2509 = !DILocation(line: 188, column: 11, scope: !2420, inlinedAt: !2504)
!2510 = !DILocation(line: 954, column: 10, scope: !2436, inlinedAt: !2496)
!2511 = !DILocation(line: 955, column: 1, scope: !2436, inlinedAt: !2496)
!2512 = !DILocation(line: 966, column: 3, scope: !2487)
!2513 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !441, file: !441, line: 970, type: !2514, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!246, !70, !99, !4}
!2516 = !{!2517, !2518, !2519, !2520}
!2517 = !DILocalVariable(name: "arg", arg: 1, scope: !2513, file: !441, line: 970, type: !70)
!2518 = !DILocalVariable(name: "argsize", arg: 2, scope: !2513, file: !441, line: 970, type: !99)
!2519 = !DILocalVariable(name: "ch", arg: 3, scope: !2513, file: !441, line: 970, type: !4)
!2520 = !DILocalVariable(name: "options", scope: !2513, file: !441, line: 972, type: !494)
!2521 = !DILocation(line: 0, scope: !2513)
!2522 = !DILocation(line: 972, column: 3, scope: !2513)
!2523 = !DILocation(line: 972, column: 26, scope: !2513)
!2524 = !DILocation(line: 973, column: 13, scope: !2513)
!2525 = !{i64 0, i64 4, !828, i64 4, i64 4, !819, i64 8, i64 32, !828, i64 40, i64 8, !759, i64 48, i64 8, !759}
!2526 = !DILocation(line: 0, scope: !1527, inlinedAt: !2527)
!2527 = distinct !DILocation(line: 974, column: 3, scope: !2513)
!2528 = !DILocation(line: 147, column: 41, scope: !1527, inlinedAt: !2527)
!2529 = !DILocation(line: 147, column: 62, scope: !1527, inlinedAt: !2527)
!2530 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2527)
!2531 = !DILocation(line: 148, column: 15, scope: !1527, inlinedAt: !2527)
!2532 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2527)
!2533 = !DILocation(line: 149, column: 24, scope: !1527, inlinedAt: !2527)
!2534 = !DILocation(line: 150, column: 19, scope: !1527, inlinedAt: !2527)
!2535 = !DILocation(line: 150, column: 24, scope: !1527, inlinedAt: !2527)
!2536 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2527)
!2537 = !DILocation(line: 975, column: 10, scope: !2513)
!2538 = !DILocation(line: 976, column: 1, scope: !2513)
!2539 = !DILocation(line: 975, column: 3, scope: !2513)
!2540 = distinct !DISubprogram(name: "quotearg_char", scope: !441, file: !441, line: 979, type: !2541, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2543)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!246, !70, !4}
!2543 = !{!2544, !2545}
!2544 = !DILocalVariable(name: "arg", arg: 1, scope: !2540, file: !441, line: 979, type: !70)
!2545 = !DILocalVariable(name: "ch", arg: 2, scope: !2540, file: !441, line: 979, type: !4)
!2546 = !DILocation(line: 0, scope: !2540)
!2547 = !DILocation(line: 0, scope: !2513, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 981, column: 10, scope: !2540)
!2549 = !DILocation(line: 972, column: 3, scope: !2513, inlinedAt: !2548)
!2550 = !DILocation(line: 972, column: 26, scope: !2513, inlinedAt: !2548)
!2551 = !DILocation(line: 973, column: 13, scope: !2513, inlinedAt: !2548)
!2552 = !DILocation(line: 0, scope: !1527, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 974, column: 3, scope: !2513, inlinedAt: !2548)
!2554 = !DILocation(line: 147, column: 41, scope: !1527, inlinedAt: !2553)
!2555 = !DILocation(line: 147, column: 62, scope: !1527, inlinedAt: !2553)
!2556 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2553)
!2557 = !DILocation(line: 148, column: 15, scope: !1527, inlinedAt: !2553)
!2558 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2553)
!2559 = !DILocation(line: 149, column: 24, scope: !1527, inlinedAt: !2553)
!2560 = !DILocation(line: 150, column: 19, scope: !1527, inlinedAt: !2553)
!2561 = !DILocation(line: 150, column: 24, scope: !1527, inlinedAt: !2553)
!2562 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2553)
!2563 = !DILocation(line: 975, column: 10, scope: !2513, inlinedAt: !2548)
!2564 = !DILocation(line: 976, column: 1, scope: !2513, inlinedAt: !2548)
!2565 = !DILocation(line: 981, column: 3, scope: !2540)
!2566 = distinct !DISubprogram(name: "quotearg_colon", scope: !441, file: !441, line: 985, type: !942, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2567)
!2567 = !{!2568}
!2568 = !DILocalVariable(name: "arg", arg: 1, scope: !2566, file: !441, line: 985, type: !70)
!2569 = !DILocation(line: 0, scope: !2566)
!2570 = !DILocation(line: 0, scope: !2540, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 987, column: 10, scope: !2566)
!2572 = !DILocation(line: 0, scope: !2513, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 981, column: 10, scope: !2540, inlinedAt: !2571)
!2574 = !DILocation(line: 972, column: 3, scope: !2513, inlinedAt: !2573)
!2575 = !DILocation(line: 972, column: 26, scope: !2513, inlinedAt: !2573)
!2576 = !DILocation(line: 973, column: 13, scope: !2513, inlinedAt: !2573)
!2577 = !DILocation(line: 0, scope: !1527, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 974, column: 3, scope: !2513, inlinedAt: !2573)
!2579 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2578)
!2580 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2578)
!2581 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2578)
!2582 = !DILocation(line: 975, column: 10, scope: !2513, inlinedAt: !2573)
!2583 = !DILocation(line: 976, column: 1, scope: !2513, inlinedAt: !2573)
!2584 = !DILocation(line: 987, column: 3, scope: !2566)
!2585 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !441, file: !441, line: 991, type: !2394, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2586)
!2586 = !{!2587, !2588}
!2587 = !DILocalVariable(name: "arg", arg: 1, scope: !2585, file: !441, line: 991, type: !70)
!2588 = !DILocalVariable(name: "argsize", arg: 2, scope: !2585, file: !441, line: 991, type: !99)
!2589 = !DILocation(line: 0, scope: !2585)
!2590 = !DILocation(line: 0, scope: !2513, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 993, column: 10, scope: !2585)
!2592 = !DILocation(line: 972, column: 3, scope: !2513, inlinedAt: !2591)
!2593 = !DILocation(line: 972, column: 26, scope: !2513, inlinedAt: !2591)
!2594 = !DILocation(line: 973, column: 13, scope: !2513, inlinedAt: !2591)
!2595 = !DILocation(line: 0, scope: !1527, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 974, column: 3, scope: !2513, inlinedAt: !2591)
!2597 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2596)
!2598 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2596)
!2599 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2596)
!2600 = !DILocation(line: 975, column: 10, scope: !2513, inlinedAt: !2591)
!2601 = !DILocation(line: 976, column: 1, scope: !2513, inlinedAt: !2591)
!2602 = !DILocation(line: 993, column: 3, scope: !2585)
!2603 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !441, file: !441, line: 997, type: !2405, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2604)
!2604 = !{!2605, !2606, !2607, !2608}
!2605 = !DILocalVariable(name: "n", arg: 1, scope: !2603, file: !441, line: 997, type: !97)
!2606 = !DILocalVariable(name: "s", arg: 2, scope: !2603, file: !441, line: 997, type: !467)
!2607 = !DILocalVariable(name: "arg", arg: 3, scope: !2603, file: !441, line: 997, type: !70)
!2608 = !DILocalVariable(name: "options", scope: !2603, file: !441, line: 999, type: !494)
!2609 = !DILocation(line: 185, column: 26, scope: !2420, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1000, column: 13, scope: !2603)
!2611 = !DILocation(line: 0, scope: !2603)
!2612 = !DILocation(line: 999, column: 3, scope: !2603)
!2613 = !DILocation(line: 999, column: 26, scope: !2603)
!2614 = !DILocation(line: 0, scope: !2420, inlinedAt: !2610)
!2615 = !DILocation(line: 186, column: 13, scope: !2429, inlinedAt: !2610)
!2616 = !DILocation(line: 186, column: 7, scope: !2420, inlinedAt: !2610)
!2617 = !DILocation(line: 187, column: 5, scope: !2429, inlinedAt: !2610)
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620, !"quoting_options_from_style: argument 0"}
!2620 = distinct !{!2620, !"quoting_options_from_style"}
!2621 = !DILocation(line: 1000, column: 13, scope: !2603)
!2622 = !DILocation(line: 0, scope: !1527, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 1001, column: 3, scope: !2603)
!2624 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2623)
!2625 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2623)
!2626 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2623)
!2627 = !DILocation(line: 1002, column: 10, scope: !2603)
!2628 = !DILocation(line: 1003, column: 1, scope: !2603)
!2629 = !DILocation(line: 1002, column: 3, scope: !2603)
!2630 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !441, file: !441, line: 1006, type: !2631, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!246, !97, !70, !70, !70}
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "n", arg: 1, scope: !2630, file: !441, line: 1006, type: !97)
!2635 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2630, file: !441, line: 1006, type: !70)
!2636 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2630, file: !441, line: 1007, type: !70)
!2637 = !DILocalVariable(name: "arg", arg: 4, scope: !2630, file: !441, line: 1007, type: !70)
!2638 = !DILocation(line: 0, scope: !2630)
!2639 = !DILocalVariable(name: "n", arg: 1, scope: !2640, file: !441, line: 1014, type: !97)
!2640 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !441, file: !441, line: 1014, type: !2641, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2643)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!246, !97, !70, !70, !70, !99}
!2643 = !{!2639, !2644, !2645, !2646, !2647, !2648}
!2644 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2640, file: !441, line: 1014, type: !70)
!2645 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2640, file: !441, line: 1015, type: !70)
!2646 = !DILocalVariable(name: "arg", arg: 4, scope: !2640, file: !441, line: 1016, type: !70)
!2647 = !DILocalVariable(name: "argsize", arg: 5, scope: !2640, file: !441, line: 1016, type: !99)
!2648 = !DILocalVariable(name: "o", scope: !2640, file: !441, line: 1018, type: !494)
!2649 = !DILocation(line: 0, scope: !2640, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1009, column: 10, scope: !2630)
!2651 = !DILocation(line: 1018, column: 3, scope: !2640, inlinedAt: !2650)
!2652 = !DILocation(line: 1018, column: 26, scope: !2640, inlinedAt: !2650)
!2653 = !DILocation(line: 1018, column: 30, scope: !2640, inlinedAt: !2650)
!2654 = !DILocation(line: 0, scope: !1567, inlinedAt: !2655)
!2655 = distinct !DILocation(line: 1019, column: 3, scope: !2640, inlinedAt: !2650)
!2656 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2655)
!2657 = !DILocation(line: 175, column: 8, scope: !1580, inlinedAt: !2655)
!2658 = !DILocation(line: 175, column: 19, scope: !1580, inlinedAt: !2655)
!2659 = !DILocation(line: 176, column: 5, scope: !1580, inlinedAt: !2655)
!2660 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2655)
!2661 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2655)
!2662 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2655)
!2663 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2655)
!2664 = !DILocation(line: 1020, column: 10, scope: !2640, inlinedAt: !2650)
!2665 = !DILocation(line: 1021, column: 1, scope: !2640, inlinedAt: !2650)
!2666 = !DILocation(line: 1009, column: 3, scope: !2630)
!2667 = !DILocation(line: 0, scope: !2640)
!2668 = !DILocation(line: 1018, column: 3, scope: !2640)
!2669 = !DILocation(line: 1018, column: 26, scope: !2640)
!2670 = !DILocation(line: 1018, column: 30, scope: !2640)
!2671 = !DILocation(line: 0, scope: !1567, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1019, column: 3, scope: !2640)
!2673 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2672)
!2674 = !DILocation(line: 175, column: 8, scope: !1580, inlinedAt: !2672)
!2675 = !DILocation(line: 175, column: 19, scope: !1580, inlinedAt: !2672)
!2676 = !DILocation(line: 176, column: 5, scope: !1580, inlinedAt: !2672)
!2677 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2672)
!2678 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2672)
!2679 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2672)
!2680 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2672)
!2681 = !DILocation(line: 1020, column: 10, scope: !2640)
!2682 = !DILocation(line: 1021, column: 1, scope: !2640)
!2683 = !DILocation(line: 1020, column: 3, scope: !2640)
!2684 = distinct !DISubprogram(name: "quotearg_custom", scope: !441, file: !441, line: 1024, type: !2685, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!246, !70, !70, !70}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2684, file: !441, line: 1024, type: !70)
!2689 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2684, file: !441, line: 1024, type: !70)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !441, line: 1025, type: !70)
!2691 = !DILocation(line: 0, scope: !2684)
!2692 = !DILocation(line: 0, scope: !2630, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 1027, column: 10, scope: !2684)
!2694 = !DILocation(line: 0, scope: !2640, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1009, column: 10, scope: !2630, inlinedAt: !2693)
!2696 = !DILocation(line: 1018, column: 3, scope: !2640, inlinedAt: !2695)
!2697 = !DILocation(line: 1018, column: 26, scope: !2640, inlinedAt: !2695)
!2698 = !DILocation(line: 1018, column: 30, scope: !2640, inlinedAt: !2695)
!2699 = !DILocation(line: 0, scope: !1567, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1019, column: 3, scope: !2640, inlinedAt: !2695)
!2701 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2700)
!2702 = !DILocation(line: 175, column: 8, scope: !1580, inlinedAt: !2700)
!2703 = !DILocation(line: 175, column: 19, scope: !1580, inlinedAt: !2700)
!2704 = !DILocation(line: 176, column: 5, scope: !1580, inlinedAt: !2700)
!2705 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2700)
!2706 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2700)
!2707 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2700)
!2708 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2700)
!2709 = !DILocation(line: 1020, column: 10, scope: !2640, inlinedAt: !2695)
!2710 = !DILocation(line: 1021, column: 1, scope: !2640, inlinedAt: !2695)
!2711 = !DILocation(line: 1027, column: 3, scope: !2684)
!2712 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !441, file: !441, line: 1031, type: !2713, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!246, !70, !70, !70, !99}
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2712, file: !441, line: 1031, type: !70)
!2717 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2712, file: !441, line: 1031, type: !70)
!2718 = !DILocalVariable(name: "arg", arg: 3, scope: !2712, file: !441, line: 1032, type: !70)
!2719 = !DILocalVariable(name: "argsize", arg: 4, scope: !2712, file: !441, line: 1032, type: !99)
!2720 = !DILocation(line: 0, scope: !2712)
!2721 = !DILocation(line: 0, scope: !2640, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1034, column: 10, scope: !2712)
!2723 = !DILocation(line: 1018, column: 3, scope: !2640, inlinedAt: !2722)
!2724 = !DILocation(line: 1018, column: 26, scope: !2640, inlinedAt: !2722)
!2725 = !DILocation(line: 1018, column: 30, scope: !2640, inlinedAt: !2722)
!2726 = !DILocation(line: 0, scope: !1567, inlinedAt: !2727)
!2727 = distinct !DILocation(line: 1019, column: 3, scope: !2640, inlinedAt: !2722)
!2728 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2727)
!2729 = !DILocation(line: 175, column: 8, scope: !1580, inlinedAt: !2727)
!2730 = !DILocation(line: 175, column: 19, scope: !1580, inlinedAt: !2727)
!2731 = !DILocation(line: 176, column: 5, scope: !1580, inlinedAt: !2727)
!2732 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2727)
!2733 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2727)
!2734 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2727)
!2735 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2727)
!2736 = !DILocation(line: 1020, column: 10, scope: !2640, inlinedAt: !2722)
!2737 = !DILocation(line: 1021, column: 1, scope: !2640, inlinedAt: !2722)
!2738 = !DILocation(line: 1034, column: 3, scope: !2712)
!2739 = distinct !DISubprogram(name: "quote_n_mem", scope: !441, file: !441, line: 1049, type: !2740, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!70, !97, !70, !99}
!2742 = !{!2743, !2744, !2745}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !441, line: 1049, type: !97)
!2744 = !DILocalVariable(name: "arg", arg: 2, scope: !2739, file: !441, line: 1049, type: !70)
!2745 = !DILocalVariable(name: "argsize", arg: 3, scope: !2739, file: !441, line: 1049, type: !99)
!2746 = !DILocation(line: 0, scope: !2739)
!2747 = !DILocation(line: 1051, column: 10, scope: !2739)
!2748 = !DILocation(line: 1051, column: 3, scope: !2739)
!2749 = distinct !DISubprogram(name: "quote_mem", scope: !441, file: !441, line: 1055, type: !2750, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!70, !70, !99}
!2752 = !{!2753, !2754}
!2753 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !441, line: 1055, type: !70)
!2754 = !DILocalVariable(name: "argsize", arg: 2, scope: !2749, file: !441, line: 1055, type: !99)
!2755 = !DILocation(line: 0, scope: !2749)
!2756 = !DILocation(line: 0, scope: !2739, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1057, column: 10, scope: !2749)
!2758 = !DILocation(line: 1051, column: 10, scope: !2739, inlinedAt: !2757)
!2759 = !DILocation(line: 1057, column: 3, scope: !2749)
!2760 = distinct !DISubprogram(name: "quote_n", scope: !441, file: !441, line: 1061, type: !2761, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!70, !97, !70}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2760, file: !441, line: 1061, type: !97)
!2765 = !DILocalVariable(name: "arg", arg: 2, scope: !2760, file: !441, line: 1061, type: !70)
!2766 = !DILocation(line: 0, scope: !2760)
!2767 = !DILocation(line: 0, scope: !2739, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1063, column: 10, scope: !2760)
!2769 = !DILocation(line: 1051, column: 10, scope: !2739, inlinedAt: !2768)
!2770 = !DILocation(line: 1063, column: 3, scope: !2760)
!2771 = distinct !DISubprogram(name: "quote", scope: !441, file: !441, line: 1067, type: !2772, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!70, !70}
!2774 = !{!2775}
!2775 = !DILocalVariable(name: "arg", arg: 1, scope: !2771, file: !441, line: 1067, type: !70)
!2776 = !DILocation(line: 0, scope: !2771)
!2777 = !DILocation(line: 0, scope: !2760, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1069, column: 10, scope: !2771)
!2779 = !DILocation(line: 0, scope: !2739, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1063, column: 10, scope: !2760, inlinedAt: !2778)
!2781 = !DILocation(line: 1051, column: 10, scope: !2739, inlinedAt: !2780)
!2782 = !DILocation(line: 1069, column: 3, scope: !2771)
!2783 = distinct !DISubprogram(name: "version_etc_arn", scope: !557, file: !557, line: 61, type: !2784, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2821)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2786, !70, !70, !70, !2820, !99}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2788, file: !242, line: 51, baseType: !97, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2788, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2788, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2788, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2788, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2788, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2788, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2788, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2788, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2788, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2788, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2788, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2788, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2788, file: !242, line: 70, baseType: !2804, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2788, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2788, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2788, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2788, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2788, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2788, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2788, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2788, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2788, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2788, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2788, file: !242, line: 93, baseType: !2804, size: 64, offset: 1344)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2788, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2788, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2788, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2788, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827}
!2822 = !DILocalVariable(name: "stream", arg: 1, scope: !2783, file: !557, line: 61, type: !2786)
!2823 = !DILocalVariable(name: "command_name", arg: 2, scope: !2783, file: !557, line: 62, type: !70)
!2824 = !DILocalVariable(name: "package", arg: 3, scope: !2783, file: !557, line: 62, type: !70)
!2825 = !DILocalVariable(name: "version", arg: 4, scope: !2783, file: !557, line: 63, type: !70)
!2826 = !DILocalVariable(name: "authors", arg: 5, scope: !2783, file: !557, line: 64, type: !2820)
!2827 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2783, file: !557, line: 64, type: !99)
!2828 = !DILocation(line: 0, scope: !2783)
!2829 = !DILocation(line: 66, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2783, file: !557, line: 66, column: 7)
!2831 = !DILocation(line: 66, column: 7, scope: !2783)
!2832 = !DILocation(line: 67, column: 5, scope: !2830)
!2833 = !DILocation(line: 69, column: 5, scope: !2830)
!2834 = !DILocation(line: 83, column: 3, scope: !2783)
!2835 = !DILocation(line: 85, column: 3, scope: !2783)
!2836 = !DILocation(line: 88, column: 3, scope: !2783)
!2837 = !DILocation(line: 95, column: 3, scope: !2783)
!2838 = !DILocation(line: 97, column: 3, scope: !2783)
!2839 = !DILocation(line: 105, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2783, file: !557, line: 98, column: 5)
!2841 = !DILocation(line: 106, column: 7, scope: !2840)
!2842 = !DILocation(line: 109, column: 7, scope: !2840)
!2843 = !DILocation(line: 110, column: 7, scope: !2840)
!2844 = !DILocation(line: 113, column: 7, scope: !2840)
!2845 = !DILocation(line: 115, column: 7, scope: !2840)
!2846 = !DILocation(line: 120, column: 7, scope: !2840)
!2847 = !DILocation(line: 122, column: 7, scope: !2840)
!2848 = !DILocation(line: 127, column: 7, scope: !2840)
!2849 = !DILocation(line: 129, column: 7, scope: !2840)
!2850 = !DILocation(line: 134, column: 7, scope: !2840)
!2851 = !DILocation(line: 137, column: 7, scope: !2840)
!2852 = !DILocation(line: 142, column: 7, scope: !2840)
!2853 = !DILocation(line: 145, column: 7, scope: !2840)
!2854 = !DILocation(line: 150, column: 7, scope: !2840)
!2855 = !DILocation(line: 154, column: 7, scope: !2840)
!2856 = !DILocation(line: 159, column: 7, scope: !2840)
!2857 = !DILocation(line: 163, column: 7, scope: !2840)
!2858 = !DILocation(line: 170, column: 7, scope: !2840)
!2859 = !DILocation(line: 174, column: 7, scope: !2840)
!2860 = !DILocation(line: 176, column: 1, scope: !2783)
!2861 = distinct !DISubprogram(name: "version_etc_ar", scope: !557, file: !557, line: 183, type: !2862, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !2786, !70, !70, !70, !2820}
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870}
!2865 = !DILocalVariable(name: "stream", arg: 1, scope: !2861, file: !557, line: 183, type: !2786)
!2866 = !DILocalVariable(name: "command_name", arg: 2, scope: !2861, file: !557, line: 184, type: !70)
!2867 = !DILocalVariable(name: "package", arg: 3, scope: !2861, file: !557, line: 184, type: !70)
!2868 = !DILocalVariable(name: "version", arg: 4, scope: !2861, file: !557, line: 185, type: !70)
!2869 = !DILocalVariable(name: "authors", arg: 5, scope: !2861, file: !557, line: 185, type: !2820)
!2870 = !DILocalVariable(name: "n_authors", scope: !2861, file: !557, line: 187, type: !99)
!2871 = !DILocation(line: 0, scope: !2861)
!2872 = !DILocation(line: 189, column: 8, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2861, file: !557, line: 189, column: 3)
!2874 = !DILocation(line: 189, scope: !2873)
!2875 = !DILocation(line: 189, column: 23, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !557, line: 189, column: 3)
!2877 = !DILocation(line: 189, column: 3, scope: !2873)
!2878 = !DILocation(line: 189, column: 52, scope: !2876)
!2879 = distinct !{!2879, !2877, !2880, !866}
!2880 = !DILocation(line: 190, column: 5, scope: !2873)
!2881 = !DILocation(line: 191, column: 3, scope: !2861)
!2882 = !DILocation(line: 192, column: 1, scope: !2861)
!2883 = distinct !DISubprogram(name: "version_etc_va", scope: !557, file: !557, line: 199, type: !2884, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2897)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2786, !70, !70, !70, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 52, baseType: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !334, line: 14, baseType: !2888)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2889, baseType: !2890)
!2889 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895, !2896}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2890, file: !2889, line: 192, baseType: !91, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2890, file: !2889, line: 192, baseType: !91, size: 64, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2890, file: !2889, line: 192, baseType: !91, size: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2890, file: !2889, line: 192, baseType: !97, size: 32, offset: 192)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2890, file: !2889, line: 192, baseType: !97, size: 32, offset: 224)
!2897 = !{!2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2898 = !DILocalVariable(name: "stream", arg: 1, scope: !2883, file: !557, line: 199, type: !2786)
!2899 = !DILocalVariable(name: "command_name", arg: 2, scope: !2883, file: !557, line: 200, type: !70)
!2900 = !DILocalVariable(name: "package", arg: 3, scope: !2883, file: !557, line: 200, type: !70)
!2901 = !DILocalVariable(name: "version", arg: 4, scope: !2883, file: !557, line: 201, type: !70)
!2902 = !DILocalVariable(name: "authors", arg: 5, scope: !2883, file: !557, line: 201, type: !2886)
!2903 = !DILocalVariable(name: "n_authors", scope: !2883, file: !557, line: 203, type: !99)
!2904 = !DILocalVariable(name: "authtab", scope: !2883, file: !557, line: 204, type: !2905)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2906 = !DILocation(line: 0, scope: !2883)
!2907 = !DILocation(line: 201, column: 46, scope: !2883)
!2908 = !DILocation(line: 204, column: 3, scope: !2883)
!2909 = !DILocation(line: 204, column: 15, scope: !2883)
!2910 = !DILocation(line: 208, column: 35, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !557, line: 206, column: 3)
!2912 = distinct !DILexicalBlock(scope: !2883, file: !557, line: 206, column: 3)
!2913 = !DILocation(line: 208, column: 33, scope: !2911)
!2914 = !DILocation(line: 208, column: 67, scope: !2911)
!2915 = !DILocation(line: 206, column: 3, scope: !2912)
!2916 = !DILocation(line: 208, column: 14, scope: !2911)
!2917 = !DILocation(line: 0, scope: !2912)
!2918 = !DILocation(line: 211, column: 3, scope: !2883)
!2919 = !DILocation(line: 213, column: 1, scope: !2883)
!2920 = distinct !DISubprogram(name: "version_etc", scope: !557, file: !557, line: 230, type: !2921, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2923)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{null, !2786, !70, !70, !70, null}
!2923 = !{!2924, !2925, !2926, !2927, !2928}
!2924 = !DILocalVariable(name: "stream", arg: 1, scope: !2920, file: !557, line: 230, type: !2786)
!2925 = !DILocalVariable(name: "command_name", arg: 2, scope: !2920, file: !557, line: 231, type: !70)
!2926 = !DILocalVariable(name: "package", arg: 3, scope: !2920, file: !557, line: 231, type: !70)
!2927 = !DILocalVariable(name: "version", arg: 4, scope: !2920, file: !557, line: 232, type: !70)
!2928 = !DILocalVariable(name: "authors", scope: !2920, file: !557, line: 234, type: !2886)
!2929 = !DILocation(line: 0, scope: !2920)
!2930 = !DILocation(line: 234, column: 3, scope: !2920)
!2931 = !DILocation(line: 234, column: 11, scope: !2920)
!2932 = !DILocation(line: 235, column: 3, scope: !2920)
!2933 = !DILocation(line: 236, column: 3, scope: !2920)
!2934 = !DILocation(line: 237, column: 3, scope: !2920)
!2935 = !DILocation(line: 238, column: 1, scope: !2920)
!2936 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !557, file: !557, line: 241, type: !373, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !804)
!2937 = !DILocation(line: 243, column: 3, scope: !2936)
!2938 = !DILocation(line: 248, column: 3, scope: !2936)
!2939 = !DILocation(line: 254, column: 3, scope: !2936)
!2940 = !DILocation(line: 259, column: 3, scope: !2936)
!2941 = !DILocation(line: 261, column: 1, scope: !2936)
!2942 = distinct !DISubprogram(name: "xnrealloc", scope: !2943, file: !2943, line: 147, type: !2944, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2946)
!2943 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!91, !91, !99, !99}
!2946 = !{!2947, !2948, !2949}
!2947 = !DILocalVariable(name: "p", arg: 1, scope: !2942, file: !2943, line: 147, type: !91)
!2948 = !DILocalVariable(name: "n", arg: 2, scope: !2942, file: !2943, line: 147, type: !99)
!2949 = !DILocalVariable(name: "s", arg: 3, scope: !2942, file: !2943, line: 147, type: !99)
!2950 = !DILocation(line: 0, scope: !2942)
!2951 = !DILocalVariable(name: "p", arg: 1, scope: !2952, file: !688, line: 83, type: !91)
!2952 = distinct !DISubprogram(name: "xreallocarray", scope: !688, file: !688, line: 83, type: !2944, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2953)
!2953 = !{!2951, !2954, !2955}
!2954 = !DILocalVariable(name: "n", arg: 2, scope: !2952, file: !688, line: 83, type: !99)
!2955 = !DILocalVariable(name: "s", arg: 3, scope: !2952, file: !688, line: 83, type: !99)
!2956 = !DILocation(line: 0, scope: !2952, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 149, column: 10, scope: !2942)
!2958 = !DILocation(line: 85, column: 25, scope: !2952, inlinedAt: !2957)
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2960, file: !688, line: 37, type: !91)
!2960 = distinct !DISubprogram(name: "check_nonnull", scope: !688, file: !688, line: 37, type: !2961, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2963)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!91, !91}
!2963 = !{!2959}
!2964 = !DILocation(line: 0, scope: !2960, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 85, column: 10, scope: !2952, inlinedAt: !2957)
!2966 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !2965)
!2967 = distinct !DILexicalBlock(scope: !2960, file: !688, line: 39, column: 7)
!2968 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !2965)
!2969 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !2965)
!2970 = !DILocation(line: 149, column: 3, scope: !2942)
!2971 = !DILocation(line: 0, scope: !2952)
!2972 = !DILocation(line: 85, column: 25, scope: !2952)
!2973 = !DILocation(line: 0, scope: !2960, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 85, column: 10, scope: !2952)
!2975 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !2974)
!2976 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !2974)
!2977 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !2974)
!2978 = !DILocation(line: 85, column: 3, scope: !2952)
!2979 = distinct !DISubprogram(name: "xmalloc", scope: !688, file: !688, line: 47, type: !2980, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!91, !99}
!2982 = !{!2983}
!2983 = !DILocalVariable(name: "s", arg: 1, scope: !2979, file: !688, line: 47, type: !99)
!2984 = !DILocation(line: 0, scope: !2979)
!2985 = !DILocation(line: 49, column: 25, scope: !2979)
!2986 = !DILocation(line: 0, scope: !2960, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 49, column: 10, scope: !2979)
!2988 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !2987)
!2989 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !2987)
!2990 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !2987)
!2991 = !DILocation(line: 49, column: 3, scope: !2979)
!2992 = !DISubprogram(name: "malloc", scope: !940, file: !940, line: 540, type: !2980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!2993 = distinct !DISubprogram(name: "ximalloc", scope: !688, file: !688, line: 53, type: !2994, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2996)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!91, !707}
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "s", arg: 1, scope: !2993, file: !688, line: 53, type: !707)
!2998 = !DILocation(line: 0, scope: !2993)
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !3000, file: !3001, line: 55, type: !707)
!3000 = distinct !DISubprogram(name: "imalloc", scope: !3001, file: !3001, line: 55, type: !2994, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3002)
!3001 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3002 = !{!2999}
!3003 = !DILocation(line: 0, scope: !3000, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 55, column: 25, scope: !2993)
!3005 = !DILocation(line: 57, column: 26, scope: !3000, inlinedAt: !3004)
!3006 = !DILocation(line: 0, scope: !2960, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 55, column: 10, scope: !2993)
!3008 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3007)
!3011 = !DILocation(line: 55, column: 3, scope: !2993)
!3012 = distinct !DISubprogram(name: "xcharalloc", scope: !688, file: !688, line: 59, type: !3013, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!246, !99}
!3015 = !{!3016}
!3016 = !DILocalVariable(name: "n", arg: 1, scope: !3012, file: !688, line: 59, type: !99)
!3017 = !DILocation(line: 0, scope: !3012)
!3018 = !DILocation(line: 0, scope: !2979, inlinedAt: !3019)
!3019 = distinct !DILocation(line: 61, column: 10, scope: !3012)
!3020 = !DILocation(line: 49, column: 25, scope: !2979, inlinedAt: !3019)
!3021 = !DILocation(line: 0, scope: !2960, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 49, column: 10, scope: !2979, inlinedAt: !3019)
!3023 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3022)
!3024 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3022)
!3025 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3022)
!3026 = !DILocation(line: 61, column: 3, scope: !3012)
!3027 = distinct !DISubprogram(name: "xrealloc", scope: !688, file: !688, line: 68, type: !3028, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!91, !91, !99}
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !688, line: 68, type: !91)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !688, line: 68, type: !99)
!3033 = !DILocation(line: 0, scope: !3027)
!3034 = !DILocalVariable(name: "ptr", arg: 1, scope: !3035, file: !3036, line: 2057, type: !91)
!3035 = distinct !DISubprogram(name: "rpl_realloc", scope: !3036, file: !3036, line: 2057, type: !3028, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3037)
!3036 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3037 = !{!3034, !3038}
!3038 = !DILocalVariable(name: "size", arg: 2, scope: !3035, file: !3036, line: 2057, type: !99)
!3039 = !DILocation(line: 0, scope: !3035, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 70, column: 25, scope: !3027)
!3041 = !DILocation(line: 2059, column: 24, scope: !3035, inlinedAt: !3040)
!3042 = !DILocation(line: 2059, column: 10, scope: !3035, inlinedAt: !3040)
!3043 = !DILocation(line: 0, scope: !2960, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 70, column: 10, scope: !3027)
!3045 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3044)
!3046 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3044)
!3047 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3044)
!3048 = !DILocation(line: 70, column: 3, scope: !3027)
!3049 = !DISubprogram(name: "realloc", scope: !940, file: !940, line: 551, type: !3028, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3050 = distinct !DISubprogram(name: "xirealloc", scope: !688, file: !688, line: 74, type: !3051, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3053)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!91, !91, !707}
!3053 = !{!3054, !3055}
!3054 = !DILocalVariable(name: "p", arg: 1, scope: !3050, file: !688, line: 74, type: !91)
!3055 = !DILocalVariable(name: "s", arg: 2, scope: !3050, file: !688, line: 74, type: !707)
!3056 = !DILocation(line: 0, scope: !3050)
!3057 = !DILocalVariable(name: "p", arg: 1, scope: !3058, file: !3001, line: 66, type: !91)
!3058 = distinct !DISubprogram(name: "irealloc", scope: !3001, file: !3001, line: 66, type: !3051, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3059)
!3059 = !{!3057, !3060}
!3060 = !DILocalVariable(name: "s", arg: 2, scope: !3058, file: !3001, line: 66, type: !707)
!3061 = !DILocation(line: 0, scope: !3058, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 76, column: 25, scope: !3050)
!3063 = !DILocation(line: 0, scope: !3035, inlinedAt: !3064)
!3064 = distinct !DILocation(line: 68, column: 26, scope: !3058, inlinedAt: !3062)
!3065 = !DILocation(line: 2059, column: 24, scope: !3035, inlinedAt: !3064)
!3066 = !DILocation(line: 2059, column: 10, scope: !3035, inlinedAt: !3064)
!3067 = !DILocation(line: 0, scope: !2960, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 76, column: 10, scope: !3050)
!3069 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3068)
!3070 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3068)
!3071 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3068)
!3072 = !DILocation(line: 76, column: 3, scope: !3050)
!3073 = distinct !DISubprogram(name: "xireallocarray", scope: !688, file: !688, line: 89, type: !3074, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!91, !91, !707, !707}
!3076 = !{!3077, !3078, !3079}
!3077 = !DILocalVariable(name: "p", arg: 1, scope: !3073, file: !688, line: 89, type: !91)
!3078 = !DILocalVariable(name: "n", arg: 2, scope: !3073, file: !688, line: 89, type: !707)
!3079 = !DILocalVariable(name: "s", arg: 3, scope: !3073, file: !688, line: 89, type: !707)
!3080 = !DILocation(line: 0, scope: !3073)
!3081 = !DILocalVariable(name: "p", arg: 1, scope: !3082, file: !3001, line: 98, type: !91)
!3082 = distinct !DISubprogram(name: "ireallocarray", scope: !3001, file: !3001, line: 98, type: !3074, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3083)
!3083 = !{!3081, !3084, !3085}
!3084 = !DILocalVariable(name: "n", arg: 2, scope: !3082, file: !3001, line: 98, type: !707)
!3085 = !DILocalVariable(name: "s", arg: 3, scope: !3082, file: !3001, line: 98, type: !707)
!3086 = !DILocation(line: 0, scope: !3082, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 91, column: 25, scope: !3073)
!3088 = !DILocation(line: 101, column: 13, scope: !3082, inlinedAt: !3087)
!3089 = !DILocation(line: 0, scope: !2960, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 91, column: 10, scope: !3073)
!3091 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3090)
!3092 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3090)
!3093 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3090)
!3094 = !DILocation(line: 91, column: 3, scope: !3073)
!3095 = distinct !DISubprogram(name: "xnmalloc", scope: !688, file: !688, line: 98, type: !3096, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!91, !99, !99}
!3098 = !{!3099, !3100}
!3099 = !DILocalVariable(name: "n", arg: 1, scope: !3095, file: !688, line: 98, type: !99)
!3100 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !688, line: 98, type: !99)
!3101 = !DILocation(line: 0, scope: !3095)
!3102 = !DILocation(line: 0, scope: !2952, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 100, column: 10, scope: !3095)
!3104 = !DILocation(line: 85, column: 25, scope: !2952, inlinedAt: !3103)
!3105 = !DILocation(line: 0, scope: !2960, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 85, column: 10, scope: !2952, inlinedAt: !3103)
!3107 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3106)
!3108 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3106)
!3109 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3106)
!3110 = !DILocation(line: 100, column: 3, scope: !3095)
!3111 = distinct !DISubprogram(name: "xinmalloc", scope: !688, file: !688, line: 104, type: !3112, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!91, !707, !707}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "n", arg: 1, scope: !3111, file: !688, line: 104, type: !707)
!3116 = !DILocalVariable(name: "s", arg: 2, scope: !3111, file: !688, line: 104, type: !707)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 0, scope: !3073, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 106, column: 10, scope: !3111)
!3120 = !DILocation(line: 0, scope: !3082, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 91, column: 25, scope: !3073, inlinedAt: !3119)
!3122 = !DILocation(line: 101, column: 13, scope: !3082, inlinedAt: !3121)
!3123 = !DILocation(line: 0, scope: !2960, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 91, column: 10, scope: !3073, inlinedAt: !3119)
!3125 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3124)
!3126 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3124)
!3127 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3124)
!3128 = !DILocation(line: 106, column: 3, scope: !3111)
!3129 = distinct !DISubprogram(name: "x2realloc", scope: !688, file: !688, line: 116, type: !3130, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!91, !91, !694}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "p", arg: 1, scope: !3129, file: !688, line: 116, type: !91)
!3134 = !DILocalVariable(name: "ps", arg: 2, scope: !3129, file: !688, line: 116, type: !694)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 0, scope: !691, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 118, column: 10, scope: !3129)
!3138 = !DILocation(line: 178, column: 14, scope: !691, inlinedAt: !3137)
!3139 = !DILocation(line: 180, column: 9, scope: !3140, inlinedAt: !3137)
!3140 = distinct !DILexicalBlock(scope: !691, file: !688, line: 180, column: 7)
!3141 = !DILocation(line: 180, column: 7, scope: !691, inlinedAt: !3137)
!3142 = !DILocation(line: 182, column: 13, scope: !3143, inlinedAt: !3137)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !688, line: 182, column: 11)
!3144 = distinct !DILexicalBlock(scope: !3140, file: !688, line: 181, column: 5)
!3145 = !DILocation(line: 182, column: 11, scope: !3144, inlinedAt: !3137)
!3146 = !DILocation(line: 197, column: 11, scope: !3147, inlinedAt: !3137)
!3147 = distinct !DILexicalBlock(scope: !3148, file: !688, line: 197, column: 11)
!3148 = distinct !DILexicalBlock(scope: !3140, file: !688, line: 195, column: 5)
!3149 = !DILocation(line: 197, column: 11, scope: !3148, inlinedAt: !3137)
!3150 = !DILocation(line: 198, column: 9, scope: !3147, inlinedAt: !3137)
!3151 = !DILocation(line: 0, scope: !2952, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 201, column: 7, scope: !691, inlinedAt: !3137)
!3153 = !DILocation(line: 85, column: 25, scope: !2952, inlinedAt: !3152)
!3154 = !DILocation(line: 0, scope: !2960, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 85, column: 10, scope: !2952, inlinedAt: !3152)
!3156 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3155)
!3157 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3155)
!3158 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3155)
!3159 = !DILocation(line: 202, column: 7, scope: !691, inlinedAt: !3137)
!3160 = !DILocation(line: 118, column: 3, scope: !3129)
!3161 = !DILocation(line: 0, scope: !691)
!3162 = !DILocation(line: 178, column: 14, scope: !691)
!3163 = !DILocation(line: 180, column: 9, scope: !3140)
!3164 = !DILocation(line: 180, column: 7, scope: !691)
!3165 = !DILocation(line: 182, column: 13, scope: !3143)
!3166 = !DILocation(line: 182, column: 11, scope: !3144)
!3167 = !DILocation(line: 190, column: 30, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3143, file: !688, line: 183, column: 9)
!3169 = !DILocation(line: 191, column: 16, scope: !3168)
!3170 = !DILocation(line: 191, column: 13, scope: !3168)
!3171 = !DILocation(line: 192, column: 9, scope: !3168)
!3172 = !DILocation(line: 197, column: 11, scope: !3147)
!3173 = !DILocation(line: 197, column: 11, scope: !3148)
!3174 = !DILocation(line: 198, column: 9, scope: !3147)
!3175 = !DILocation(line: 0, scope: !2952, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 201, column: 7, scope: !691)
!3177 = !DILocation(line: 85, column: 25, scope: !2952, inlinedAt: !3176)
!3178 = !DILocation(line: 0, scope: !2960, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 85, column: 10, scope: !2952, inlinedAt: !3176)
!3180 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3179)
!3181 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3179)
!3182 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3179)
!3183 = !DILocation(line: 202, column: 7, scope: !691)
!3184 = !DILocation(line: 203, column: 3, scope: !691)
!3185 = !DILocation(line: 0, scope: !703)
!3186 = !DILocation(line: 230, column: 14, scope: !703)
!3187 = !DILocation(line: 238, column: 7, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !703, file: !688, line: 238, column: 7)
!3189 = !DILocation(line: 238, column: 7, scope: !703)
!3190 = !DILocation(line: 240, column: 9, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !703, file: !688, line: 240, column: 7)
!3192 = !DILocation(line: 240, column: 18, scope: !3191)
!3193 = !DILocation(line: 253, column: 8, scope: !703)
!3194 = !DILocation(line: 258, column: 27, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !688, line: 257, column: 5)
!3196 = distinct !DILexicalBlock(scope: !703, file: !688, line: 256, column: 7)
!3197 = !DILocation(line: 259, column: 32, scope: !3195)
!3198 = !DILocation(line: 260, column: 5, scope: !3195)
!3199 = !DILocation(line: 262, column: 9, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !703, file: !688, line: 262, column: 7)
!3201 = !DILocation(line: 262, column: 7, scope: !703)
!3202 = !DILocation(line: 263, column: 9, scope: !3200)
!3203 = !DILocation(line: 263, column: 5, scope: !3200)
!3204 = !DILocation(line: 264, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !703, file: !688, line: 264, column: 7)
!3206 = !DILocation(line: 264, column: 14, scope: !3205)
!3207 = !DILocation(line: 265, column: 7, scope: !3205)
!3208 = !DILocation(line: 265, column: 11, scope: !3205)
!3209 = !DILocation(line: 266, column: 11, scope: !3205)
!3210 = !DILocation(line: 267, column: 14, scope: !3205)
!3211 = !DILocation(line: 264, column: 7, scope: !703)
!3212 = !DILocation(line: 268, column: 5, scope: !3205)
!3213 = !DILocation(line: 0, scope: !3027, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 269, column: 8, scope: !703)
!3215 = !DILocation(line: 0, scope: !3035, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 70, column: 25, scope: !3027, inlinedAt: !3214)
!3217 = !DILocation(line: 2059, column: 24, scope: !3035, inlinedAt: !3216)
!3218 = !DILocation(line: 2059, column: 10, scope: !3035, inlinedAt: !3216)
!3219 = !DILocation(line: 0, scope: !2960, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 70, column: 10, scope: !3027, inlinedAt: !3214)
!3221 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3220)
!3224 = !DILocation(line: 270, column: 7, scope: !703)
!3225 = !DILocation(line: 271, column: 3, scope: !703)
!3226 = distinct !DISubprogram(name: "xzalloc", scope: !688, file: !688, line: 279, type: !2980, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "s", arg: 1, scope: !3226, file: !688, line: 279, type: !99)
!3229 = !DILocation(line: 0, scope: !3226)
!3230 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !688, line: 294, type: !99)
!3231 = distinct !DISubprogram(name: "xcalloc", scope: !688, file: !688, line: 294, type: !3096, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3232)
!3232 = !{!3230, !3233}
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3231, file: !688, line: 294, type: !99)
!3234 = !DILocation(line: 0, scope: !3231, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 281, column: 10, scope: !3226)
!3236 = !DILocation(line: 296, column: 25, scope: !3231, inlinedAt: !3235)
!3237 = !DILocation(line: 0, scope: !2960, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 296, column: 10, scope: !3231, inlinedAt: !3235)
!3239 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3238)
!3240 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3238)
!3241 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3238)
!3242 = !DILocation(line: 281, column: 3, scope: !3226)
!3243 = !DISubprogram(name: "calloc", scope: !940, file: !940, line: 543, type: !3096, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3244 = !DILocation(line: 0, scope: !3231)
!3245 = !DILocation(line: 296, column: 25, scope: !3231)
!3246 = !DILocation(line: 0, scope: !2960, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 296, column: 10, scope: !3231)
!3248 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3247)
!3249 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3247)
!3250 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3247)
!3251 = !DILocation(line: 296, column: 3, scope: !3231)
!3252 = distinct !DISubprogram(name: "xizalloc", scope: !688, file: !688, line: 285, type: !2994, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3253)
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "s", arg: 1, scope: !3252, file: !688, line: 285, type: !707)
!3255 = !DILocation(line: 0, scope: !3252)
!3256 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !688, line: 300, type: !707)
!3257 = distinct !DISubprogram(name: "xicalloc", scope: !688, file: !688, line: 300, type: !3112, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3258)
!3258 = !{!3256, !3259}
!3259 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !688, line: 300, type: !707)
!3260 = !DILocation(line: 0, scope: !3257, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 287, column: 10, scope: !3252)
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3263, file: !3001, line: 77, type: !707)
!3263 = distinct !DISubprogram(name: "icalloc", scope: !3001, file: !3001, line: 77, type: !3112, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3264)
!3264 = !{!3262, !3265}
!3265 = !DILocalVariable(name: "s", arg: 2, scope: !3263, file: !3001, line: 77, type: !707)
!3266 = !DILocation(line: 0, scope: !3263, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 302, column: 25, scope: !3257, inlinedAt: !3261)
!3268 = !DILocation(line: 91, column: 10, scope: !3263, inlinedAt: !3267)
!3269 = !DILocation(line: 0, scope: !2960, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 302, column: 10, scope: !3257, inlinedAt: !3261)
!3271 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3270)
!3272 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3270)
!3273 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3270)
!3274 = !DILocation(line: 287, column: 3, scope: !3252)
!3275 = !DILocation(line: 0, scope: !3257)
!3276 = !DILocation(line: 0, scope: !3263, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 302, column: 25, scope: !3257)
!3278 = !DILocation(line: 91, column: 10, scope: !3263, inlinedAt: !3277)
!3279 = !DILocation(line: 0, scope: !2960, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 302, column: 10, scope: !3257)
!3281 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3280)
!3282 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3280)
!3283 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3280)
!3284 = !DILocation(line: 302, column: 3, scope: !3257)
!3285 = distinct !DISubprogram(name: "xmemdup", scope: !688, file: !688, line: 310, type: !3286, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!91, !964, !99}
!3288 = !{!3289, !3290}
!3289 = !DILocalVariable(name: "p", arg: 1, scope: !3285, file: !688, line: 310, type: !964)
!3290 = !DILocalVariable(name: "s", arg: 2, scope: !3285, file: !688, line: 310, type: !99)
!3291 = !DILocation(line: 0, scope: !3285)
!3292 = !DILocation(line: 0, scope: !2979, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 312, column: 18, scope: !3285)
!3294 = !DILocation(line: 49, column: 25, scope: !2979, inlinedAt: !3293)
!3295 = !DILocation(line: 0, scope: !2960, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 49, column: 10, scope: !2979, inlinedAt: !3293)
!3297 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3296)
!3298 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3296)
!3299 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3296)
!3300 = !DILocalVariable(name: "__dest", arg: 1, scope: !3301, file: !1470, line: 26, type: !3304)
!3301 = distinct !DISubprogram(name: "memcpy", scope: !1470, file: !1470, line: 26, type: !3302, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3305)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!91, !3304, !963, !99}
!3304 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3305 = !{!3300, !3306, !3307}
!3306 = !DILocalVariable(name: "__src", arg: 2, scope: !3301, file: !1470, line: 26, type: !963)
!3307 = !DILocalVariable(name: "__len", arg: 3, scope: !3301, file: !1470, line: 26, type: !99)
!3308 = !DILocation(line: 0, scope: !3301, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 312, column: 10, scope: !3285)
!3310 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3309)
!3311 = !DILocation(line: 312, column: 3, scope: !3285)
!3312 = distinct !DISubprogram(name: "ximemdup", scope: !688, file: !688, line: 316, type: !3313, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!91, !964, !707}
!3315 = !{!3316, !3317}
!3316 = !DILocalVariable(name: "p", arg: 1, scope: !3312, file: !688, line: 316, type: !964)
!3317 = !DILocalVariable(name: "s", arg: 2, scope: !3312, file: !688, line: 316, type: !707)
!3318 = !DILocation(line: 0, scope: !3312)
!3319 = !DILocation(line: 0, scope: !2993, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 318, column: 18, scope: !3312)
!3321 = !DILocation(line: 0, scope: !3000, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 55, column: 25, scope: !2993, inlinedAt: !3320)
!3323 = !DILocation(line: 57, column: 26, scope: !3000, inlinedAt: !3322)
!3324 = !DILocation(line: 0, scope: !2960, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 55, column: 10, scope: !2993, inlinedAt: !3320)
!3326 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3325)
!3327 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3325)
!3328 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3325)
!3329 = !DILocation(line: 0, scope: !3301, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 318, column: 10, scope: !3312)
!3331 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3330)
!3332 = !DILocation(line: 318, column: 3, scope: !3312)
!3333 = distinct !DISubprogram(name: "ximemdup0", scope: !688, file: !688, line: 325, type: !3334, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!246, !964, !707}
!3336 = !{!3337, !3338, !3339}
!3337 = !DILocalVariable(name: "p", arg: 1, scope: !3333, file: !688, line: 325, type: !964)
!3338 = !DILocalVariable(name: "s", arg: 2, scope: !3333, file: !688, line: 325, type: !707)
!3339 = !DILocalVariable(name: "result", scope: !3333, file: !688, line: 327, type: !246)
!3340 = !DILocation(line: 0, scope: !3333)
!3341 = !DILocation(line: 327, column: 30, scope: !3333)
!3342 = !DILocation(line: 0, scope: !2993, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 327, column: 18, scope: !3333)
!3344 = !DILocation(line: 0, scope: !3000, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 55, column: 25, scope: !2993, inlinedAt: !3343)
!3346 = !DILocation(line: 57, column: 26, scope: !3000, inlinedAt: !3345)
!3347 = !DILocation(line: 0, scope: !2960, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 55, column: 10, scope: !2993, inlinedAt: !3343)
!3349 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3348)
!3350 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3348)
!3351 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3348)
!3352 = !DILocation(line: 328, column: 3, scope: !3333)
!3353 = !DILocation(line: 328, column: 13, scope: !3333)
!3354 = !DILocation(line: 0, scope: !3301, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 329, column: 10, scope: !3333)
!3356 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3355)
!3357 = !DILocation(line: 329, column: 3, scope: !3333)
!3358 = distinct !DISubprogram(name: "xstrdup", scope: !688, file: !688, line: 335, type: !942, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3359)
!3359 = !{!3360}
!3360 = !DILocalVariable(name: "string", arg: 1, scope: !3358, file: !688, line: 335, type: !70)
!3361 = !DILocation(line: 0, scope: !3358)
!3362 = !DILocation(line: 337, column: 27, scope: !3358)
!3363 = !DILocation(line: 337, column: 43, scope: !3358)
!3364 = !DILocation(line: 0, scope: !3285, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 337, column: 10, scope: !3358)
!3366 = !DILocation(line: 0, scope: !2979, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 312, column: 18, scope: !3285, inlinedAt: !3365)
!3368 = !DILocation(line: 49, column: 25, scope: !2979, inlinedAt: !3367)
!3369 = !DILocation(line: 0, scope: !2960, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 49, column: 10, scope: !2979, inlinedAt: !3367)
!3371 = !DILocation(line: 39, column: 8, scope: !2967, inlinedAt: !3370)
!3372 = !DILocation(line: 39, column: 7, scope: !2960, inlinedAt: !3370)
!3373 = !DILocation(line: 40, column: 5, scope: !2967, inlinedAt: !3370)
!3374 = !DILocation(line: 0, scope: !3301, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 312, column: 10, scope: !3285, inlinedAt: !3365)
!3376 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3375)
!3377 = !DILocation(line: 337, column: 3, scope: !3358)
!3378 = distinct !DISubprogram(name: "xalloc_die", scope: !650, file: !650, line: 32, type: !373, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3379)
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "__errstatus", scope: !3381, file: !650, line: 34, type: !3382)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !650, line: 34, column: 3)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3383 = !DILocation(line: 34, column: 3, scope: !3381)
!3384 = !DILocation(line: 0, scope: !3381)
!3385 = !DILocation(line: 40, column: 3, scope: !3378)
!3386 = distinct !DISubprogram(name: "close_stream", scope: !724, file: !724, line: 55, type: !3387, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3423)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!97, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3391, file: !242, line: 51, baseType: !97, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3391, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3391, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3391, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3391, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3391, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3391, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3391, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3391, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3391, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3391, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3391, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3391, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3391, file: !242, line: 70, baseType: !3407, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3391, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3391, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3391, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3391, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3391, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3391, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3391, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3391, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3391, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3391, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3391, file: !242, line: 93, baseType: !3407, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3391, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3391, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3391, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3391, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3423 = !{!3424, !3425, !3427, !3428}
!3424 = !DILocalVariable(name: "stream", arg: 1, scope: !3386, file: !724, line: 55, type: !3389)
!3425 = !DILocalVariable(name: "some_pending", scope: !3386, file: !724, line: 57, type: !3426)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3427 = !DILocalVariable(name: "prev_fail", scope: !3386, file: !724, line: 58, type: !3426)
!3428 = !DILocalVariable(name: "fclose_fail", scope: !3386, file: !724, line: 59, type: !3426)
!3429 = !DILocation(line: 0, scope: !3386)
!3430 = !DILocation(line: 57, column: 30, scope: !3386)
!3431 = !DILocalVariable(name: "__stream", arg: 1, scope: !3432, file: !1221, line: 135, type: !3389)
!3432 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1221, file: !1221, line: 135, type: !3387, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3433)
!3433 = !{!3431}
!3434 = !DILocation(line: 0, scope: !3432, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 58, column: 27, scope: !3386)
!3436 = !DILocation(line: 137, column: 10, scope: !3432, inlinedAt: !3435)
!3437 = !{!1230, !820, i64 0}
!3438 = !DILocation(line: 58, column: 43, scope: !3386)
!3439 = !DILocation(line: 59, column: 29, scope: !3386)
!3440 = !DILocation(line: 59, column: 45, scope: !3386)
!3441 = !DILocation(line: 69, column: 17, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3386, file: !724, line: 69, column: 7)
!3443 = !DILocation(line: 57, column: 50, scope: !3386)
!3444 = !DILocation(line: 69, column: 33, scope: !3442)
!3445 = !DILocation(line: 69, column: 53, scope: !3442)
!3446 = !DILocation(line: 69, column: 59, scope: !3442)
!3447 = !DILocation(line: 69, column: 7, scope: !3386)
!3448 = !DILocation(line: 71, column: 11, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3442, file: !724, line: 70, column: 5)
!3450 = !DILocation(line: 72, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !724, line: 71, column: 11)
!3452 = !DILocation(line: 72, column: 15, scope: !3451)
!3453 = !DILocation(line: 77, column: 1, scope: !3386)
!3454 = !DISubprogram(name: "__fpending", scope: !3455, file: !3455, line: 75, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3455 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!99, !3389}
!3458 = distinct !DISubprogram(name: "rpl_fclose", scope: !726, file: !726, line: 58, type: !3459, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3495)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!97, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3463, file: !242, line: 51, baseType: !97, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3463, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3463, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3463, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3463, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3463, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3463, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3463, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3463, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3463, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3463, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3463, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3463, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3463, file: !242, line: 70, baseType: !3479, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3463, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3463, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3463, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3463, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3463, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3463, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3463, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3463, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3463, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3463, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3463, file: !242, line: 93, baseType: !3479, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3463, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3463, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3463, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3463, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DILocalVariable(name: "fp", arg: 1, scope: !3458, file: !726, line: 58, type: !3461)
!3497 = !DILocalVariable(name: "saved_errno", scope: !3458, file: !726, line: 60, type: !97)
!3498 = !DILocalVariable(name: "fd", scope: !3458, file: !726, line: 63, type: !97)
!3499 = !DILocalVariable(name: "result", scope: !3458, file: !726, line: 74, type: !97)
!3500 = !DILocation(line: 0, scope: !3458)
!3501 = !DILocation(line: 63, column: 12, scope: !3458)
!3502 = !DILocation(line: 64, column: 10, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3458, file: !726, line: 64, column: 7)
!3504 = !DILocation(line: 64, column: 7, scope: !3458)
!3505 = !DILocation(line: 65, column: 12, scope: !3503)
!3506 = !DILocation(line: 65, column: 5, scope: !3503)
!3507 = !DILocation(line: 70, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3458, file: !726, line: 70, column: 7)
!3509 = !DILocation(line: 70, column: 23, scope: !3508)
!3510 = !DILocation(line: 70, column: 33, scope: !3508)
!3511 = !DILocation(line: 70, column: 26, scope: !3508)
!3512 = !DILocation(line: 70, column: 59, scope: !3508)
!3513 = !DILocation(line: 71, column: 7, scope: !3508)
!3514 = !DILocation(line: 71, column: 10, scope: !3508)
!3515 = !DILocation(line: 70, column: 7, scope: !3458)
!3516 = !DILocation(line: 100, column: 12, scope: !3458)
!3517 = !DILocation(line: 105, column: 7, scope: !3458)
!3518 = !DILocation(line: 72, column: 19, scope: !3508)
!3519 = !DILocation(line: 105, column: 19, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3458, file: !726, line: 105, column: 7)
!3521 = !DILocation(line: 107, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3520, file: !726, line: 106, column: 5)
!3523 = !DILocation(line: 109, column: 5, scope: !3522)
!3524 = !DILocation(line: 112, column: 1, scope: !3458)
!3525 = !DISubprogram(name: "fileno", scope: !332, file: !332, line: 809, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3526 = !DISubprogram(name: "fclose", scope: !332, file: !332, line: 178, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3527 = !DISubprogram(name: "__freading", scope: !3455, file: !3455, line: 51, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3528 = !DISubprogram(name: "lseek", scope: !1037, file: !1037, line: 339, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!265, !97, !265, !97}
!3531 = distinct !DISubprogram(name: "rpl_fflush", scope: !728, file: !728, line: 130, type: !3532, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3568)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!97, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3536, file: !242, line: 51, baseType: !97, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3536, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3536, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3536, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3536, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3536, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3536, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3536, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3536, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3536, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3536, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3536, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3536, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3536, file: !242, line: 70, baseType: !3552, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3536, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3536, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3536, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3536, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3536, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3536, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3536, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3536, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3536, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3536, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3536, file: !242, line: 93, baseType: !3552, size: 64, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3536, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3536, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3536, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3536, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "stream", arg: 1, scope: !3531, file: !728, line: 130, type: !3534)
!3570 = !DILocation(line: 0, scope: !3531)
!3571 = !DILocation(line: 151, column: 14, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3531, file: !728, line: 151, column: 7)
!3573 = !DILocation(line: 151, column: 22, scope: !3572)
!3574 = !DILocation(line: 151, column: 27, scope: !3572)
!3575 = !DILocation(line: 151, column: 7, scope: !3531)
!3576 = !DILocation(line: 152, column: 12, scope: !3572)
!3577 = !DILocation(line: 152, column: 5, scope: !3572)
!3578 = !DILocalVariable(name: "fp", arg: 1, scope: !3579, file: !728, line: 42, type: !3534)
!3579 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !728, file: !728, line: 42, type: !3580, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3534}
!3582 = !{!3578}
!3583 = !DILocation(line: 0, scope: !3579, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 157, column: 3, scope: !3531)
!3585 = !DILocation(line: 44, column: 12, scope: !3586, inlinedAt: !3584)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !728, line: 44, column: 7)
!3587 = !DILocation(line: 44, column: 19, scope: !3586, inlinedAt: !3584)
!3588 = !DILocation(line: 44, column: 7, scope: !3579, inlinedAt: !3584)
!3589 = !DILocation(line: 46, column: 5, scope: !3586, inlinedAt: !3584)
!3590 = !DILocation(line: 159, column: 10, scope: !3531)
!3591 = !DILocation(line: 159, column: 3, scope: !3531)
!3592 = !DILocation(line: 236, column: 1, scope: !3531)
!3593 = !DISubprogram(name: "fflush", scope: !332, file: !332, line: 230, type: !3532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3594 = distinct !DISubprogram(name: "rpl_fseeko", scope: !730, file: !730, line: 28, type: !3595, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3632)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!97, !3597, !3631, !97}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3599)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3599, file: !242, line: 51, baseType: !97, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3599, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3599, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3599, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3599, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3599, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3599, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3599, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3599, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3599, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3599, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3599, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3599, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3599, file: !242, line: 70, baseType: !3615, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3599, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3599, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3599, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3599, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3599, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3599, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3599, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3599, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3599, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3599, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3599, file: !242, line: 93, baseType: !3615, size: 64, offset: 1344)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3599, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3599, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3599, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3599, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !332, line: 63, baseType: !265)
!3632 = !{!3633, !3634, !3635, !3636}
!3633 = !DILocalVariable(name: "fp", arg: 1, scope: !3594, file: !730, line: 28, type: !3597)
!3634 = !DILocalVariable(name: "offset", arg: 2, scope: !3594, file: !730, line: 28, type: !3631)
!3635 = !DILocalVariable(name: "whence", arg: 3, scope: !3594, file: !730, line: 28, type: !97)
!3636 = !DILocalVariable(name: "pos", scope: !3637, file: !730, line: 123, type: !3631)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !730, line: 119, column: 5)
!3638 = distinct !DILexicalBlock(scope: !3594, file: !730, line: 55, column: 7)
!3639 = !DILocation(line: 0, scope: !3594)
!3640 = !DILocation(line: 55, column: 12, scope: !3638)
!3641 = !{!1230, !760, i64 16}
!3642 = !DILocation(line: 55, column: 33, scope: !3638)
!3643 = !{!1230, !760, i64 8}
!3644 = !DILocation(line: 55, column: 25, scope: !3638)
!3645 = !DILocation(line: 56, column: 7, scope: !3638)
!3646 = !DILocation(line: 56, column: 15, scope: !3638)
!3647 = !DILocation(line: 56, column: 37, scope: !3638)
!3648 = !{!1230, !760, i64 32}
!3649 = !DILocation(line: 56, column: 29, scope: !3638)
!3650 = !DILocation(line: 57, column: 7, scope: !3638)
!3651 = !DILocation(line: 57, column: 15, scope: !3638)
!3652 = !{!1230, !760, i64 72}
!3653 = !DILocation(line: 57, column: 29, scope: !3638)
!3654 = !DILocation(line: 55, column: 7, scope: !3594)
!3655 = !DILocation(line: 123, column: 26, scope: !3637)
!3656 = !DILocation(line: 123, column: 19, scope: !3637)
!3657 = !DILocation(line: 0, scope: !3637)
!3658 = !DILocation(line: 124, column: 15, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3637, file: !730, line: 124, column: 11)
!3660 = !DILocation(line: 124, column: 11, scope: !3637)
!3661 = !DILocation(line: 135, column: 19, scope: !3637)
!3662 = !DILocation(line: 136, column: 12, scope: !3637)
!3663 = !DILocation(line: 136, column: 20, scope: !3637)
!3664 = !{!1230, !1231, i64 144}
!3665 = !DILocation(line: 167, column: 7, scope: !3637)
!3666 = !DILocation(line: 169, column: 10, scope: !3594)
!3667 = !DILocation(line: 169, column: 3, scope: !3594)
!3668 = !DILocation(line: 170, column: 1, scope: !3594)
!3669 = !DISubprogram(name: "fseeko", scope: !332, file: !332, line: 736, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!97, !3597, !265, !97}
!3672 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !657, file: !657, line: 100, type: !3673, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !3676)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!99, !1488, !70, !99, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3676 = !{!3677, !3678, !3679, !3680, !3681}
!3677 = !DILocalVariable(name: "pwc", arg: 1, scope: !3672, file: !657, line: 100, type: !1488)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3672, file: !657, line: 100, type: !70)
!3679 = !DILocalVariable(name: "n", arg: 3, scope: !3672, file: !657, line: 100, type: !99)
!3680 = !DILocalVariable(name: "ps", arg: 4, scope: !3672, file: !657, line: 100, type: !3675)
!3681 = !DILocalVariable(name: "ret", scope: !3672, file: !657, line: 130, type: !99)
!3682 = !DILocation(line: 0, scope: !3672)
!3683 = !DILocation(line: 105, column: 9, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3672, file: !657, line: 105, column: 7)
!3685 = !DILocation(line: 105, column: 7, scope: !3672)
!3686 = !DILocation(line: 117, column: 10, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3672, file: !657, line: 117, column: 7)
!3688 = !DILocation(line: 117, column: 7, scope: !3672)
!3689 = !DILocation(line: 130, column: 16, scope: !3672)
!3690 = !DILocation(line: 135, column: 11, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3672, file: !657, line: 135, column: 7)
!3692 = !DILocation(line: 135, column: 25, scope: !3691)
!3693 = !DILocation(line: 135, column: 30, scope: !3691)
!3694 = !DILocation(line: 135, column: 7, scope: !3672)
!3695 = !DILocalVariable(name: "ps", arg: 1, scope: !3696, file: !1461, line: 1135, type: !3675)
!3696 = distinct !DISubprogram(name: "mbszero", scope: !1461, file: !1461, line: 1135, type: !3697, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3675}
!3699 = !{!3695}
!3700 = !DILocation(line: 0, scope: !3696, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 137, column: 5, scope: !3691)
!3702 = !DILocalVariable(name: "__dest", arg: 1, scope: !3703, file: !1470, line: 57, type: !91)
!3703 = distinct !DISubprogram(name: "memset", scope: !1470, file: !1470, line: 57, type: !1471, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !3704)
!3704 = !{!3702, !3705, !3706}
!3705 = !DILocalVariable(name: "__ch", arg: 2, scope: !3703, file: !1470, line: 57, type: !97)
!3706 = !DILocalVariable(name: "__len", arg: 3, scope: !3703, file: !1470, line: 57, type: !99)
!3707 = !DILocation(line: 0, scope: !3703, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1137, column: 3, scope: !3696, inlinedAt: !3701)
!3709 = !DILocation(line: 59, column: 10, scope: !3703, inlinedAt: !3708)
!3710 = !DILocation(line: 137, column: 5, scope: !3691)
!3711 = !DILocation(line: 138, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3672, file: !657, line: 138, column: 7)
!3713 = !DILocation(line: 138, column: 7, scope: !3672)
!3714 = !DILocation(line: 139, column: 5, scope: !3712)
!3715 = !DILocation(line: 143, column: 26, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3672, file: !657, line: 143, column: 7)
!3717 = !DILocation(line: 143, column: 41, scope: !3716)
!3718 = !DILocation(line: 143, column: 7, scope: !3672)
!3719 = !DILocation(line: 145, column: 15, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !657, line: 145, column: 11)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !657, line: 144, column: 5)
!3722 = !DILocation(line: 145, column: 11, scope: !3721)
!3723 = !DILocation(line: 146, column: 32, scope: !3720)
!3724 = !DILocation(line: 146, column: 16, scope: !3720)
!3725 = !DILocation(line: 146, column: 14, scope: !3720)
!3726 = !DILocation(line: 146, column: 9, scope: !3720)
!3727 = !DILocation(line: 286, column: 1, scope: !3672)
!3728 = !DISubprogram(name: "mbsinit", scope: !3729, file: !3729, line: 293, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !804)
!3729 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!97, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!3734 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !732, file: !732, line: 27, type: !2944, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3735)
!3735 = !{!3736, !3737, !3738, !3739}
!3736 = !DILocalVariable(name: "ptr", arg: 1, scope: !3734, file: !732, line: 27, type: !91)
!3737 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3734, file: !732, line: 27, type: !99)
!3738 = !DILocalVariable(name: "size", arg: 3, scope: !3734, file: !732, line: 27, type: !99)
!3739 = !DILocalVariable(name: "nbytes", scope: !3734, file: !732, line: 29, type: !99)
!3740 = !DILocation(line: 0, scope: !3734)
!3741 = !DILocation(line: 30, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3734, file: !732, line: 30, column: 7)
!3743 = !DILocalVariable(name: "ptr", arg: 1, scope: !3744, file: !3036, line: 2057, type: !91)
!3744 = distinct !DISubprogram(name: "rpl_realloc", scope: !3036, file: !3036, line: 2057, type: !3028, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3745)
!3745 = !{!3743, !3746}
!3746 = !DILocalVariable(name: "size", arg: 2, scope: !3744, file: !3036, line: 2057, type: !99)
!3747 = !DILocation(line: 0, scope: !3744, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 37, column: 10, scope: !3734)
!3749 = !DILocation(line: 2059, column: 24, scope: !3744, inlinedAt: !3748)
!3750 = !DILocation(line: 2059, column: 10, scope: !3744, inlinedAt: !3748)
!3751 = !DILocation(line: 37, column: 3, scope: !3734)
!3752 = !DILocation(line: 32, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3742, file: !732, line: 31, column: 5)
!3754 = !DILocation(line: 32, column: 13, scope: !3753)
!3755 = !DILocation(line: 33, column: 7, scope: !3753)
!3756 = !DILocation(line: 38, column: 1, scope: !3734)
!3757 = distinct !DISubprogram(name: "hard_locale", scope: !675, file: !675, line: 28, type: !3758, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!225, !97}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "category", arg: 1, scope: !3757, file: !675, line: 28, type: !97)
!3762 = !DILocalVariable(name: "locale", scope: !3757, file: !675, line: 30, type: !3763)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3764)
!3764 = !{!3765}
!3765 = !DISubrange(count: 257)
!3766 = !DILocation(line: 0, scope: !3757)
!3767 = !DILocation(line: 30, column: 3, scope: !3757)
!3768 = !DILocation(line: 30, column: 8, scope: !3757)
!3769 = !DILocation(line: 32, column: 7, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3757, file: !675, line: 32, column: 7)
!3771 = !DILocation(line: 32, column: 7, scope: !3757)
!3772 = !DILocalVariable(name: "__s1", arg: 1, scope: !3773, file: !832, line: 1359, type: !70)
!3773 = distinct !DISubprogram(name: "streq", scope: !832, file: !832, line: 1359, type: !833, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3774)
!3774 = !{!3772, !3775}
!3775 = !DILocalVariable(name: "__s2", arg: 2, scope: !3773, file: !832, line: 1359, type: !70)
!3776 = !DILocation(line: 0, scope: !3773, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 35, column: 9, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3757, file: !675, line: 35, column: 7)
!3779 = !DILocation(line: 1361, column: 11, scope: !3773, inlinedAt: !3777)
!3780 = !DILocation(line: 1361, column: 10, scope: !3773, inlinedAt: !3777)
!3781 = !DILocation(line: 35, column: 29, scope: !3778)
!3782 = !DILocation(line: 0, scope: !3773, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 35, column: 32, scope: !3778)
!3784 = !DILocation(line: 1361, column: 11, scope: !3773, inlinedAt: !3783)
!3785 = !DILocation(line: 1361, column: 10, scope: !3773, inlinedAt: !3783)
!3786 = !DILocation(line: 35, column: 7, scope: !3757)
!3787 = !DILocation(line: 46, column: 3, scope: !3757)
!3788 = !DILocation(line: 47, column: 1, scope: !3757)
!3789 = distinct !DISubprogram(name: "setlocale_null_r", scope: !737, file: !737, line: 154, type: !3790, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!97, !97, !246, !99}
!3792 = !{!3793, !3794, !3795}
!3793 = !DILocalVariable(name: "category", arg: 1, scope: !3789, file: !737, line: 154, type: !97)
!3794 = !DILocalVariable(name: "buf", arg: 2, scope: !3789, file: !737, line: 154, type: !246)
!3795 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3789, file: !737, line: 154, type: !99)
!3796 = !DILocation(line: 0, scope: !3789)
!3797 = !DILocation(line: 159, column: 10, scope: !3789)
!3798 = !DILocation(line: 159, column: 3, scope: !3789)
!3799 = distinct !DISubprogram(name: "setlocale_null", scope: !737, file: !737, line: 186, type: !3800, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!70, !97}
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "category", arg: 1, scope: !3799, file: !737, line: 186, type: !97)
!3804 = !DILocation(line: 0, scope: !3799)
!3805 = !DILocation(line: 189, column: 10, scope: !3799)
!3806 = !DILocation(line: 189, column: 3, scope: !3799)
!3807 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !739, file: !739, line: 35, type: !3800, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3808)
!3808 = !{!3809, !3810}
!3809 = !DILocalVariable(name: "category", arg: 1, scope: !3807, file: !739, line: 35, type: !97)
!3810 = !DILocalVariable(name: "result", scope: !3807, file: !739, line: 37, type: !70)
!3811 = !DILocation(line: 0, scope: !3807)
!3812 = !DILocation(line: 37, column: 24, scope: !3807)
!3813 = !DILocation(line: 62, column: 3, scope: !3807)
!3814 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !739, file: !739, line: 66, type: !3790, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820}
!3816 = !DILocalVariable(name: "category", arg: 1, scope: !3814, file: !739, line: 66, type: !97)
!3817 = !DILocalVariable(name: "buf", arg: 2, scope: !3814, file: !739, line: 66, type: !246)
!3818 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3814, file: !739, line: 66, type: !99)
!3819 = !DILocalVariable(name: "result", scope: !3814, file: !739, line: 111, type: !70)
!3820 = !DILocalVariable(name: "length", scope: !3821, file: !739, line: 125, type: !99)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !739, line: 124, column: 5)
!3822 = distinct !DILexicalBlock(scope: !3814, file: !739, line: 113, column: 7)
!3823 = !DILocation(line: 0, scope: !3814)
!3824 = !DILocation(line: 0, scope: !3807, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 111, column: 24, scope: !3814)
!3826 = !DILocation(line: 37, column: 24, scope: !3807, inlinedAt: !3825)
!3827 = !DILocation(line: 113, column: 14, scope: !3822)
!3828 = !DILocation(line: 113, column: 7, scope: !3814)
!3829 = !DILocation(line: 116, column: 19, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !739, line: 116, column: 11)
!3831 = distinct !DILexicalBlock(scope: !3822, file: !739, line: 114, column: 5)
!3832 = !DILocation(line: 116, column: 11, scope: !3831)
!3833 = !DILocation(line: 120, column: 16, scope: !3830)
!3834 = !DILocation(line: 120, column: 9, scope: !3830)
!3835 = !DILocation(line: 125, column: 23, scope: !3821)
!3836 = !DILocation(line: 0, scope: !3821)
!3837 = !DILocation(line: 126, column: 18, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3821, file: !739, line: 126, column: 11)
!3839 = !DILocation(line: 126, column: 11, scope: !3821)
!3840 = !DILocation(line: 128, column: 39, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !739, line: 127, column: 9)
!3842 = !DILocalVariable(name: "__dest", arg: 1, scope: !3843, file: !1470, line: 26, type: !3304)
!3843 = distinct !DISubprogram(name: "memcpy", scope: !1470, file: !1470, line: 26, type: !3302, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3844)
!3844 = !{!3842, !3845, !3846}
!3845 = !DILocalVariable(name: "__src", arg: 2, scope: !3843, file: !1470, line: 26, type: !963)
!3846 = !DILocalVariable(name: "__len", arg: 3, scope: !3843, file: !1470, line: 26, type: !99)
!3847 = !DILocation(line: 0, scope: !3843, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 128, column: 11, scope: !3841)
!3849 = !DILocation(line: 29, column: 10, scope: !3843, inlinedAt: !3848)
!3850 = !DILocation(line: 129, column: 11, scope: !3841)
!3851 = !DILocation(line: 133, column: 23, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !739, line: 133, column: 15)
!3853 = distinct !DILexicalBlock(scope: !3838, file: !739, line: 132, column: 9)
!3854 = !DILocation(line: 133, column: 15, scope: !3853)
!3855 = !DILocation(line: 138, column: 44, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !739, line: 134, column: 13)
!3857 = !DILocation(line: 0, scope: !3843, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 138, column: 15, scope: !3856)
!3859 = !DILocation(line: 29, column: 10, scope: !3843, inlinedAt: !3858)
!3860 = !DILocation(line: 139, column: 15, scope: !3856)
!3861 = !DILocation(line: 139, column: 32, scope: !3856)
!3862 = !DILocation(line: 140, column: 13, scope: !3856)
!3863 = !DILocation(line: 0, scope: !3822)
!3864 = !DILocation(line: 145, column: 1, scope: !3814)
