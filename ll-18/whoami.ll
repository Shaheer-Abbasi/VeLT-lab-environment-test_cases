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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !360
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !326
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !350
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !352
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !354
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !356
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !358
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !362
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !364
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !369
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !374
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !377
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !752, metadata !DIExpression()), !dbg !753
  %2 = icmp eq i32 %0, 0, !dbg !754
  br i1 %2, label %8, label %3, !dbg !756

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !757, !tbaa !759
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !757
  %6 = load ptr, ptr @program_name, align 8, !dbg !757, !tbaa !759
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !757
  br label %31, !dbg !757

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !763
  %10 = load ptr, ptr @program_name, align 8, !dbg !763, !tbaa !759
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !763
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !765
  %13 = load ptr, ptr @stdout, align 8, !dbg !765, !tbaa !759
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !765
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !766
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !766
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !767
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !767
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !768, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata !787, metadata !781, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr poison, metadata !780, metadata !DIExpression()), !dbg !785
  tail call void @emit_bug_reporting_address() #37, !dbg !788
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !789
  call void @llvm.dbg.value(metadata ptr %17, metadata !783, metadata !DIExpression()), !dbg !785
  %18 = icmp eq ptr %17, null, !dbg !790
  br i1 %18, label %26, label %19, !dbg !792

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #38, !dbg !793
  %21 = icmp eq i32 %20, 0, !dbg !793
  br i1 %21, label %26, label %22, !dbg !794

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !795
  %24 = load ptr, ptr @stdout, align 8, !dbg !795, !tbaa !759
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !795
  br label %26, !dbg !797

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !780, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !784, metadata !DIExpression()), !dbg !785
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !798
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #37, !dbg !798
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !799
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #37, !dbg !799
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !800
  unreachable, !dbg !800
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !801 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !805 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !811 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !814 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !219, metadata !DIExpression()), !dbg !817
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !220, metadata !DIExpression()), !dbg !817
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !818, !tbaa !819
  %3 = icmp eq i32 %2, -1, !dbg !821
  br i1 %3, label %4, label %16, !dbg !822

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #37, !dbg !823
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !221, metadata !DIExpression()), !dbg !824
  %6 = icmp eq ptr %5, null, !dbg !825
  br i1 %6, label %14, label %7, !dbg !826

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !827, !tbaa !828
  %9 = icmp eq i8 %8, 0, !dbg !827
  br i1 %9, label %14, label %10, !dbg !829

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !830, metadata !DIExpression()), !dbg !837
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !836, metadata !DIExpression()), !dbg !837
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #38, !dbg !839
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
  br label %121, !dbg !848

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !224, metadata !DIExpression()), !dbg !817
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #38, !dbg !849
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !850
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !226, metadata !DIExpression()), !dbg !817
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !851
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !227, metadata !DIExpression()), !dbg !817
  %26 = icmp eq ptr %25, null, !dbg !852
  br i1 %26, label %53, label %27, !dbg !853

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !854
  br i1 %28, label %53, label %29, !dbg !855

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !228, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata i64 0, metadata !232, metadata !DIExpression()), !dbg !856
  %30 = icmp ult ptr %24, %25, !dbg !857
  br i1 %30, label %31, label %53, !dbg !858

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !817
  %33 = load ptr, ptr %32, align 8, !tbaa !759
  br label %34, !dbg !858

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !228, metadata !DIExpression()), !dbg !856
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !232, metadata !DIExpression()), !dbg !856
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !859
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !228, metadata !DIExpression()), !dbg !856
  %38 = load i8, ptr %35, align 1, !dbg !859, !tbaa !828
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !859
  %41 = load i16, ptr %40, align 2, !dbg !859, !tbaa !860
  %42 = freeze i16 %41, !dbg !862
  %43 = lshr i16 %42, 13, !dbg !862
  %44 = and i16 %43, 1, !dbg !862
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !863
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !232, metadata !DIExpression()), !dbg !856
  %47 = icmp ult ptr %37, %25, !dbg !857
  %48 = icmp ult i64 %46, 2, !dbg !864
  %49 = select i1 %47, i1 %48, i1 false, !dbg !864
  br i1 %49, label %34, label %50, !dbg !858, !llvm.loop !865

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !863
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !867
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !869
  br label %53, !dbg !869

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !817
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !224, metadata !DIExpression()), !dbg !817
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !227, metadata !DIExpression()), !dbg !817
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.16) #38, !dbg !870
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !233, metadata !DIExpression()), !dbg !817
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !871
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !234, metadata !DIExpression()), !dbg !817
  br label %58, !dbg !872

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !817
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !224, metadata !DIExpression()), !dbg !817
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !234, metadata !DIExpression()), !dbg !817
  %61 = load i8, ptr %59, align 1, !dbg !873, !tbaa !828
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !874

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !875
  %64 = load i8, ptr %63, align 1, !dbg !878, !tbaa !828
  %65 = icmp ne i8 %64, 45, !dbg !879
  %66 = select i1 %65, i1 %60, i1 false, !dbg !880
  br label %67, !dbg !880

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !224, metadata !DIExpression()), !dbg !817
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !881
  %70 = load ptr, ptr %69, align 8, !dbg !881, !tbaa !759
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !881
  %73 = load i16, ptr %72, align 2, !dbg !881, !tbaa !860
  %74 = and i16 %73, 8192, !dbg !881
  %75 = icmp eq i16 %74, 0, !dbg !881
  br i1 %75, label %89, label %76, !dbg !883

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !884
  br i1 %77, label %91, label %78, !dbg !887

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !888
  %80 = load i8, ptr %79, align 1, !dbg !888, !tbaa !828
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !888
  %83 = load i16, ptr %82, align 2, !dbg !888, !tbaa !860
  %84 = and i16 %83, 8192, !dbg !888
  %85 = icmp eq i16 %84, 0, !dbg !888
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !889
  br i1 %88, label %89, label %91, !dbg !889

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !890
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !234, metadata !DIExpression()), !dbg !817
  br label %58, !dbg !872, !llvm.loop !891

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !817
  %92 = ptrtoint ptr %24 to i64, !dbg !893
  %93 = load ptr, ptr @stdout, align 8, !dbg !893, !tbaa !759
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !830, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata !787, metadata !836, metadata !DIExpression()), !dbg !912
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !291, metadata !DIExpression()), !dbg !817
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #38, !dbg !914
  %96 = icmp eq i32 %95, 0, !dbg !914
  br i1 %96, label %100, label %97, !dbg !916

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #38, !dbg !917
  %99 = icmp eq i32 %98, 0, !dbg !917
  br i1 %99, label %100, label %103, !dbg !918

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !919
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !919
  br label %106, !dbg !921

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !922
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !922
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !759
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %107), !dbg !924
  %109 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !759
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %109), !dbg !925
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !926
  %112 = sub i64 %111, %92, !dbg !926
  %113 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !759
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !926
  %115 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !759
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %115), !dbg !927
  %117 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !759
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %117), !dbg !928
  %119 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !759
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !929
  br label %121, !dbg !930

121:                                              ; preds = %106, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !966 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !971, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !972, metadata !DIExpression()), !dbg !991
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !973, metadata !DIExpression()), !dbg !991
  %3 = load ptr, ptr %1, align 8, !dbg !992, !tbaa !759
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !993
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !994
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !995
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !996
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !997
  %8 = load ptr, ptr @Version, align 8, !dbg !998, !tbaa !759
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !999
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !1000
  %10 = load i32, ptr @optind, align 4, !dbg !1001, !tbaa !819
  %11 = icmp eq i32 %10, %0, !dbg !1003
  br i1 %11, label %19, label %12, !dbg !1004

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !1005
  %14 = load i32, ptr @optind, align 4, !dbg !1005, !tbaa !819
  %15 = sext i32 %14 to i64, !dbg !1005
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1005
  %17 = load ptr, ptr %16, align 8, !dbg !1005, !tbaa !759
  %18 = tail call ptr @quote(ptr noundef %17) #37, !dbg !1005
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #37, !dbg !1005
  tail call void @usage(i32 noundef 1) #41, !dbg !1007
  unreachable, !dbg !1007

19:                                               ; preds = %2
  %20 = tail call ptr @__errno_location() #40, !dbg !1008
  store i32 0, ptr %20, align 4, !dbg !1009, !tbaa !819
  %21 = tail call i32 @geteuid() #37, !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !977, metadata !DIExpression()), !dbg !991
  %22 = icmp eq i32 %21, -1, !dbg !1011
  br i1 %22, label %23, label %26, !dbg !1012

23:                                               ; preds = %19
  %24 = load i32, ptr %20, align 4, !dbg !1013, !tbaa !819
  %25 = icmp eq i32 %24, 0, !dbg !1013
  br i1 %25, label %26, label %31, !dbg !1014

26:                                               ; preds = %19, %23
  %27 = tail call ptr @getpwuid(i32 noundef %21) #37, !dbg !1015
  tail call void @llvm.dbg.value(metadata ptr %27, metadata !978, metadata !DIExpression()), !dbg !991
  %28 = icmp eq ptr %27, null, !dbg !1016
  br i1 %28, label %29, label %35, !dbg !1018

29:                                               ; preds = %26
  %30 = load i32, ptr %20, align 4, !dbg !1019, !tbaa !819
  br label %31, !dbg !1018

31:                                               ; preds = %29, %23
  %32 = phi i32 [ %30, %29 ], [ %24, %23 ], !dbg !1019
  %33 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !1019
  %34 = zext i32 %21 to i64, !dbg !1019
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %32, ptr noundef %33, i64 noundef %34) #37, !dbg !1019
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1048, metadata !DIExpression()), !dbg !1049
  store ptr %0, ptr @file_name, align 8, !dbg !1050, !tbaa !759
  ret void, !dbg !1051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1052 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1056, metadata !DIExpression()), !dbg !1057
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1058, !tbaa !1059
  ret void, !dbg !1061
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1062 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1067, !tbaa !759
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1068
  %3 = icmp eq i32 %2, 0, !dbg !1069
  br i1 %3, label %22, label %4, !dbg !1070

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1071, !tbaa !1059, !range !1072, !noundef !787
  %6 = icmp eq i8 %5, 0, !dbg !1071
  br i1 %6, label %11, label %7, !dbg !1073

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1074
  %9 = load i32, ptr %8, align 4, !dbg !1074, !tbaa !819
  %10 = icmp eq i32 %9, 32, !dbg !1075
  br i1 %10, label %22, label %11, !dbg !1076

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #37, !dbg !1077
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1064, metadata !DIExpression()), !dbg !1078
  %13 = load ptr, ptr @file_name, align 8, !dbg !1079, !tbaa !759
  %14 = icmp eq ptr %13, null, !dbg !1079
  %15 = tail call ptr @__errno_location() #40, !dbg !1081
  %16 = load i32, ptr %15, align 4, !dbg !1081, !tbaa !819
  br i1 %14, label %19, label %17, !dbg !1082

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1083
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #37, !dbg !1083
  br label %20, !dbg !1083

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #37, !dbg !1084
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1085, !tbaa !819
  tail call void @_exit(i32 noundef %21) #39, !dbg !1086
  unreachable, !dbg !1086

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1087, !tbaa !759
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1089
  %25 = icmp eq i32 %24, 0, !dbg !1090
  br i1 %25, label %28, label %26, !dbg !1091

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1092, !tbaa !819
  tail call void @_exit(i32 noundef %27) #39, !dbg !1093
  unreachable, !dbg !1093

28:                                               ; preds = %22
  ret void, !dbg !1094
}

; Function Attrs: noreturn
declare !dbg !1095 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1096 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1100, metadata !DIExpression()), !dbg !1104
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1101, metadata !DIExpression()), !dbg !1104
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1102, metadata !DIExpression()), !dbg !1104
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1103, metadata !DIExpression(DW_OP_deref)), !dbg !1104
  tail call fastcc void @flush_stdout(), !dbg !1105
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1106, !tbaa !759
  %7 = icmp eq ptr %6, null, !dbg !1106
  br i1 %7, label %9, label %8, !dbg !1108

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1109
  br label %13, !dbg !1109

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1110, !tbaa !759
  %11 = tail call ptr @getprogname() #38, !dbg !1110
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %11) #37, !dbg !1110
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1112, !tbaa.struct !1113
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1112
  ret void, !dbg !1114
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1115 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1117, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i32 1, metadata !1119, metadata !DIExpression()), !dbg !1124
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1127
  %2 = icmp slt i32 %1, 0, !dbg !1128
  br i1 %2, label %6, label %3, !dbg !1129

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1130, !tbaa !759
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1130
  br label %6, !dbg !1130

6:                                                ; preds = %3, %0
  ret void, !dbg !1131
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1132 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1138
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1134, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1135, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1136, metadata !DIExpression()), !dbg !1139
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1137, metadata !DIExpression(DW_OP_deref)), !dbg !1139
  %7 = load ptr, ptr @stderr, align 8, !dbg !1140, !tbaa !759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1141, !noalias !1185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %7, metadata !1181, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr %2, metadata !1182, metadata !DIExpression()), !dbg !1190
  call void @llvm.dbg.value(metadata ptr poison, metadata !1183, metadata !DIExpression(DW_OP_deref)), !dbg !1190
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1141
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1141, !noalias !1185
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1191, !tbaa !819
  %10 = add i32 %9, 1, !dbg !1191
  store i32 %10, ptr @error_message_count, align 4, !dbg !1191, !tbaa !819
  %11 = icmp eq i32 %1, 0, !dbg !1192
  br i1 %11, label %21, label %12, !dbg !1194

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1195, metadata !DIExpression(), metadata !1138, metadata ptr %5, metadata !DIExpression()), !dbg !1203
  call void @llvm.dbg.value(metadata i32 %1, metadata !1198, metadata !DIExpression()), !dbg !1203
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1205
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1206
  call void @llvm.dbg.value(metadata ptr %13, metadata !1199, metadata !DIExpression()), !dbg !1203
  %14 = icmp eq ptr %13, null, !dbg !1207
  br i1 %14, label %15, label %17, !dbg !1209

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #37, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %16, metadata !1199, metadata !DIExpression()), !dbg !1203
  br label %17, !dbg !1211

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1203
  call void @llvm.dbg.value(metadata ptr %18, metadata !1199, metadata !DIExpression()), !dbg !1203
  %19 = load ptr, ptr @stderr, align 8, !dbg !1212, !tbaa !759
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %18) #37, !dbg !1212
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1213
  br label %21, !dbg !1214

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1215, !tbaa !759
  call void @llvm.dbg.value(metadata i32 10, metadata !1216, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata ptr %22, metadata !1222, metadata !DIExpression()), !dbg !1223
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1225
  %24 = load ptr, ptr %23, align 8, !dbg !1225, !tbaa !1226
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1225
  %26 = load ptr, ptr %25, align 8, !dbg !1225, !tbaa !1229
  %27 = icmp ult ptr %24, %26, !dbg !1225
  br i1 %27, label %30, label %28, !dbg !1225, !prof !1230

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1225
  br label %32, !dbg !1225

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1225
  store ptr %31, ptr %23, align 8, !dbg !1225, !tbaa !1226
  store i8 10, ptr %24, align 1, !dbg !1225, !tbaa !828
  br label %32, !dbg !1225

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1231, !tbaa !759
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1231
  %35 = icmp eq i32 %0, 0, !dbg !1232
  br i1 %35, label %37, label %36, !dbg !1234

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1235
  unreachable, !dbg !1235

37:                                               ; preds = %32
  ret void, !dbg !1236
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1237 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1240 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1243 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1246 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1249 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1253 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1261
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1260, metadata !DIExpression(), metadata !1261, metadata ptr %4, metadata !DIExpression()), !dbg !1262
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1257, metadata !DIExpression()), !dbg !1262
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1258, metadata !DIExpression()), !dbg !1262
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1259, metadata !DIExpression()), !dbg !1262
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1263
  call void @llvm.va_start(ptr nonnull %4), !dbg !1264
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1265, !tbaa.struct !1113
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1265
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1265
  call void @llvm.va_end(ptr nonnull %4), !dbg !1266
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1267
  ret void, !dbg !1267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !328 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !344, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !345, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !346, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !347, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !348, metadata !DIExpression()), !dbg !1268
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !349, metadata !DIExpression(DW_OP_deref)), !dbg !1268
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1269, !tbaa !819
  %9 = icmp eq i32 %8, 0, !dbg !1269
  br i1 %9, label %24, label %10, !dbg !1271

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1272, !tbaa !819
  %12 = icmp eq i32 %11, %3, !dbg !1275
  br i1 %12, label %13, label %23, !dbg !1276

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1277, !tbaa !759
  %15 = icmp eq ptr %14, %2, !dbg !1278
  br i1 %15, label %37, label %16, !dbg !1279

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1280
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1281
  br i1 %19, label %20, label %23, !dbg !1281

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1282
  %22 = icmp eq i32 %21, 0, !dbg !1283
  br i1 %22, label %37, label %23, !dbg !1284

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1285, !tbaa !759
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1286, !tbaa !819
  br label %24, !dbg !1287

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1288
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1289, !tbaa !759
  %26 = icmp eq ptr %25, null, !dbg !1289
  br i1 %26, label %28, label %27, !dbg !1291

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1292
  br label %32, !dbg !1292

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1293, !tbaa !759
  %30 = tail call ptr @getprogname() #38, !dbg !1293
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %30) #37, !dbg !1293
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1295, !tbaa !759
  %34 = icmp eq ptr %2, null, !dbg !1295
  %35 = select i1 %34, ptr @.str.3.31, ptr @.str.2.32, !dbg !1295
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1295
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1296, !tbaa.struct !1113
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1296
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1296
  br label %37, !dbg !1297

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1297
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1298 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1308
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1307, metadata !DIExpression(), metadata !1308, metadata ptr %6, metadata !DIExpression()), !dbg !1309
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1302, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1303, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1304, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1305, metadata !DIExpression()), !dbg !1309
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1306, metadata !DIExpression()), !dbg !1309
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1310
  call void @llvm.va_start(ptr nonnull %6), !dbg !1311
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1312, !tbaa.struct !1113
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1312
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1312
  call void @llvm.va_end(ptr nonnull %6), !dbg !1313
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1314
  ret void, !dbg !1314
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1315 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1318, !tbaa !759
  ret ptr %1, !dbg !1319
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1320 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1350
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1335, metadata !DIExpression(), metadata !1350, metadata ptr %7, metadata !DIExpression()), !dbg !1351
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1325, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1326, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1327, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1328, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1329, metadata !DIExpression()), !dbg !1352
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1330, metadata !DIExpression()), !dbg !1352
  %9 = load i32, ptr @opterr, align 4, !dbg !1353, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1331, metadata !DIExpression()), !dbg !1352
  store i32 0, ptr @opterr, align 4, !dbg !1354, !tbaa !819
  %10 = icmp eq i32 %0, 2, !dbg !1355
  br i1 %10, label %11, label %16, !dbg !1356

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1357
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1332, metadata !DIExpression()), !dbg !1358
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1359

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #37, !dbg !1360
  br label %16, !dbg !1361

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1362
  call void @llvm.va_start(ptr nonnull %7), !dbg !1363
  %15 = load ptr, ptr @stdout, align 8, !dbg !1364, !tbaa !759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1365, !tbaa.struct !1113
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1365
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #37, !dbg !1365
  call void @exit(i32 noundef 0) #39, !dbg !1366
  unreachable, !dbg !1366

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1367, !tbaa !819
  store i32 0, ptr @optind, align 4, !dbg !1368, !tbaa !819
  ret void, !dbg !1369
}

; Function Attrs: nounwind
declare !dbg !1370 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1376 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1390, metadata !DIExpression(), metadata !1395, metadata ptr %8, metadata !DIExpression()), !dbg !1396
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1380, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1381, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1382, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1383, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1384, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1386, metadata !DIExpression()), !dbg !1397
  %10 = load i32, ptr @opterr, align 4, !dbg !1398, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1387, metadata !DIExpression()), !dbg !1397
  store i32 1, ptr @opterr, align 4, !dbg !1399, !tbaa !819
  %11 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1400
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1388, metadata !DIExpression()), !dbg !1397
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1401
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1389, metadata !DIExpression()), !dbg !1397
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1402

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1403
  call void @llvm.va_start(ptr nonnull %8), !dbg !1404
  %14 = load ptr, ptr @stdout, align 8, !dbg !1405, !tbaa !759
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #37, !dbg !1406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1406, !tbaa.struct !1113
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #37, !dbg !1406
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #37, !dbg !1406
  call void @exit(i32 noundef 0) #39, !dbg !1407
  unreachable, !dbg !1407

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1408, !tbaa !819
  br label %17, !dbg !1409

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #37, !dbg !1410
  br label %19, !dbg !1411

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1411, !tbaa !819
  ret void, !dbg !1412
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1413 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1415, metadata !DIExpression()), !dbg !1418
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1416, metadata !DIExpression()), !dbg !1418
  %3 = icmp eq ptr %2, null, !dbg !1420
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1420
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1417, metadata !DIExpression()), !dbg !1418
  %6 = ptrtoint ptr %5 to i64, !dbg !1421
  %7 = ptrtoint ptr %0 to i64, !dbg !1421
  %8 = sub i64 %6, %7, !dbg !1421
  %9 = icmp sgt i64 %8, 6, !dbg !1423
  br i1 %9, label %10, label %19, !dbg !1424

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1425
  call void @llvm.dbg.value(metadata ptr %11, metadata !1426, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1431, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 7, metadata !1432, metadata !DIExpression()), !dbg !1433
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1435
  %13 = icmp eq i32 %12, 0, !dbg !1436
  br i1 %13, label %14, label %19, !dbg !1437

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1415, metadata !DIExpression()), !dbg !1418
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #38, !dbg !1438
  %16 = icmp eq i32 %15, 0, !dbg !1441
  %17 = select i1 %16, i64 3, i64 0, !dbg !1442
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1442
  br label %19, !dbg !1442

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1418
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1417, metadata !DIExpression()), !dbg !1418
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1415, metadata !DIExpression()), !dbg !1418
  store ptr %20, ptr @program_name, align 8, !dbg !1443, !tbaa !759
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1444, !tbaa !759
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1445, !tbaa !759
  ret void, !dbg !1446
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1447 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !410 {
  %3 = alloca i32, align 4, !DIAssignID !1448
  call void @llvm.dbg.assign(metadata i1 undef, metadata !420, metadata !DIExpression(), metadata !1448, metadata ptr %3, metadata !DIExpression()), !dbg !1449
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1450
  call void @llvm.dbg.assign(metadata i1 undef, metadata !425, metadata !DIExpression(), metadata !1450, metadata ptr %4, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !417, metadata !DIExpression()), !dbg !1449
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !418, metadata !DIExpression()), !dbg !1449
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1451
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !419, metadata !DIExpression()), !dbg !1449
  %6 = icmp eq ptr %5, %0, !dbg !1452
  br i1 %6, label %7, label %14, !dbg !1454

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1455
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1456
  call void @llvm.dbg.value(metadata ptr %4, metadata !1457, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata ptr %4, metadata !1466, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i32 0, metadata !1472, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata i64 8, metadata !1473, metadata !DIExpression()), !dbg !1474
  store i64 0, ptr %4, align 8, !dbg !1476
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1477
  %9 = icmp eq i64 %8, 2, !dbg !1479
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1480
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1481
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1481
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1449
  ret ptr %15, !dbg !1481
}

; Function Attrs: nounwind
declare !dbg !1482 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1488 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1493, metadata !DIExpression()), !dbg !1496
  %2 = tail call ptr @__errno_location() #40, !dbg !1497
  %3 = load i32, ptr %2, align 4, !dbg !1497, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1494, metadata !DIExpression()), !dbg !1496
  %4 = icmp eq ptr %0, null, !dbg !1498
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1498
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1499
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1495, metadata !DIExpression()), !dbg !1496
  store i32 %3, ptr %2, align 4, !dbg !1500, !tbaa !819
  ret ptr %6, !dbg !1501
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1502 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1508, metadata !DIExpression()), !dbg !1509
  %2 = icmp eq ptr %0, null, !dbg !1510
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1510
  %4 = load i32, ptr %3, align 8, !dbg !1511, !tbaa !1512
  ret i32 %4, !dbg !1514
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1515 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1519, metadata !DIExpression()), !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1520, metadata !DIExpression()), !dbg !1521
  %3 = icmp eq ptr %0, null, !dbg !1522
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1522
  store i32 %1, ptr %4, align 8, !dbg !1523, !tbaa !1512
  ret void, !dbg !1524
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1525 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1529, metadata !DIExpression()), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1530, metadata !DIExpression()), !dbg !1537
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1531, metadata !DIExpression()), !dbg !1537
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1532, metadata !DIExpression()), !dbg !1537
  %4 = icmp eq ptr %0, null, !dbg !1538
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1538
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1539
  %7 = lshr i8 %1, 5, !dbg !1540
  %8 = zext nneg i8 %7 to i64, !dbg !1540
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1541
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1533, metadata !DIExpression()), !dbg !1537
  %10 = and i8 %1, 31, !dbg !1542
  %11 = zext nneg i8 %10 to i32, !dbg !1542
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1535, metadata !DIExpression()), !dbg !1537
  %12 = load i32, ptr %9, align 4, !dbg !1543, !tbaa !819
  %13 = lshr i32 %12, %11, !dbg !1544
  %14 = and i32 %13, 1, !dbg !1545
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1536, metadata !DIExpression()), !dbg !1537
  %15 = xor i32 %13, %2, !dbg !1546
  %16 = and i32 %15, 1, !dbg !1546
  %17 = shl nuw i32 %16, %11, !dbg !1547
  %18 = xor i32 %17, %12, !dbg !1548
  store i32 %18, ptr %9, align 4, !dbg !1548, !tbaa !819
  ret i32 %14, !dbg !1549
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1550 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1554, metadata !DIExpression()), !dbg !1557
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1555, metadata !DIExpression()), !dbg !1557
  %3 = icmp eq ptr %0, null, !dbg !1558
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1560
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1554, metadata !DIExpression()), !dbg !1557
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1561
  %6 = load i32, ptr %5, align 4, !dbg !1561, !tbaa !1562
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1556, metadata !DIExpression()), !dbg !1557
  store i32 %1, ptr %5, align 4, !dbg !1563, !tbaa !1562
  ret i32 %6, !dbg !1564
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1569, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1570, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !1572
  %4 = icmp eq ptr %0, null, !dbg !1573
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1575
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1569, metadata !DIExpression()), !dbg !1572
  store i32 10, ptr %5, align 8, !dbg !1576, !tbaa !1512
  %6 = icmp ne ptr %1, null, !dbg !1577
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1579
  br i1 %8, label %10, label %9, !dbg !1579

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1580
  unreachable, !dbg !1580

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1581
  store ptr %1, ptr %11, align 8, !dbg !1582, !tbaa !1583
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1584
  store ptr %2, ptr %12, align 8, !dbg !1585, !tbaa !1586
  ret void, !dbg !1587
}

; Function Attrs: noreturn nounwind
declare !dbg !1588 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1589 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1593, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1594, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1595, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1596, metadata !DIExpression()), !dbg !1601
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1597, metadata !DIExpression()), !dbg !1601
  %6 = icmp eq ptr %4, null, !dbg !1602
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1602
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1598, metadata !DIExpression()), !dbg !1601
  %8 = tail call ptr @__errno_location() #40, !dbg !1603
  %9 = load i32, ptr %8, align 4, !dbg !1603, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1599, metadata !DIExpression()), !dbg !1601
  %10 = load i32, ptr %7, align 8, !dbg !1604, !tbaa !1512
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1605
  %12 = load i32, ptr %11, align 4, !dbg !1605, !tbaa !1562
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1606
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1607
  %15 = load ptr, ptr %14, align 8, !dbg !1607, !tbaa !1583
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1608
  %17 = load ptr, ptr %16, align 8, !dbg !1608, !tbaa !1586
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1609
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1600, metadata !DIExpression()), !dbg !1601
  store i32 %9, ptr %8, align 4, !dbg !1610, !tbaa !819
  ret i64 %18, !dbg !1611
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1612 {
  %10 = alloca i32, align 4, !DIAssignID !1680
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1681
  %12 = alloca i32, align 4, !DIAssignID !1682
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1683
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1658, metadata !DIExpression(), metadata !1684, metadata ptr %14, metadata !DIExpression()), !dbg !1685
  %15 = alloca i32, align 4, !DIAssignID !1686
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1661, metadata !DIExpression(), metadata !1686, metadata ptr %15, metadata !DIExpression()), !dbg !1687
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1618, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1620, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1621, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1622, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1623, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1624, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1625, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1626, metadata !DIExpression()), !dbg !1688
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1689
  %17 = icmp eq i64 %16, 1, !dbg !1690
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1627, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1630, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1633, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1635, metadata !DIExpression()), !dbg !1688
  %18 = and i32 %5, 2, !dbg !1691
  %19 = icmp ne i32 %18, 0, !dbg !1691
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1691

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1692
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1693
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1694
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1631, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1630, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1621, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1626, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1625, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1622, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.label(metadata !1636), !dbg !1695
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1688
  switch i32 %28, label %100 [
    i32 6, label %40
    i32 5, label %41
    i32 7, label %101
    i32 0, label %99
    i32 2, label %94
    i32 4, label %93
    i32 3, label %92
    i32 1, label %91
    i32 10, label %70
    i32 8, label %45
    i32 9, label %45
  ], !dbg !1696

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1622, metadata !DIExpression()), !dbg !1688
  br label %101, !dbg !1697

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1622, metadata !DIExpression()), !dbg !1688
  br i1 %36, label %101, label %42, !dbg !1697

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1698
  br i1 %43, label %101, label %44, !dbg !1702

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1698, !tbaa !828
  br label %101, !dbg !1698

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !526, metadata !DIExpression(), metadata !1682, metadata ptr %12, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.assign(metadata i1 undef, metadata !527, metadata !DIExpression(), metadata !1683, metadata ptr %13, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !523, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 %28, metadata !524, metadata !DIExpression()), !dbg !1703
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #37, !dbg !1707
  call void @llvm.dbg.value(metadata ptr %46, metadata !525, metadata !DIExpression()), !dbg !1703
  %47 = icmp eq ptr %46, @.str.11.64, !dbg !1708
  br i1 %47, label %48, label %57, !dbg !1710

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1711
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %13, metadata !1713, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata ptr %13, metadata !1721, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i64 8, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i64 0, ptr %13, align 8, !dbg !1728
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1729
  %50 = icmp eq i64 %49, 3, !dbg !1731
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1732
  %54 = icmp eq i32 %28, 9, !dbg !1732
  %55 = select i1 %54, ptr @.str.10.66, ptr @.str.12.67, !dbg !1732
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1733
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1733
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1703
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1625, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !526, metadata !DIExpression(), metadata !1680, metadata ptr %10, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.assign(metadata i1 undef, metadata !527, metadata !DIExpression(), metadata !1681, metadata ptr %11, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !523, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i32 %28, metadata !524, metadata !DIExpression()), !dbg !1734
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #37, !dbg !1736
  call void @llvm.dbg.value(metadata ptr %59, metadata !525, metadata !DIExpression()), !dbg !1734
  %60 = icmp eq ptr %59, @.str.12.67, !dbg !1737
  br i1 %60, label %61, label %70, !dbg !1738

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1739
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1740
  call void @llvm.dbg.value(metadata ptr %11, metadata !1713, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata ptr %11, metadata !1721, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 8, metadata !1725, metadata !DIExpression()), !dbg !1743
  store i64 0, ptr %11, align 8, !dbg !1745
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1746
  %63 = icmp eq i64 %62, 3, !dbg !1747
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1748
  %67 = icmp eq i32 %28, 9, !dbg !1748
  %68 = select i1 %67, ptr @.str.10.66, ptr @.str.12.67, !dbg !1748
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1748
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1749
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1749
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1626, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1625, metadata !DIExpression()), !dbg !1688
  br i1 %36, label %88, label %73, !dbg !1750

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1638, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1628, metadata !DIExpression()), !dbg !1688
  %74 = load i8, ptr %71, align 1, !dbg !1752, !tbaa !828
  %75 = icmp eq i8 %74, 0, !dbg !1754
  br i1 %75, label %88, label %.preheader11, !dbg !1754

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1754

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1638, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1628, metadata !DIExpression()), !dbg !1688
  %80 = icmp ult i64 %79, %39, !dbg !1755
  br i1 %80, label %81, label %83, !dbg !1758

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1755
  store i8 %77, ptr %82, align 1, !dbg !1755, !tbaa !828
  br label %83, !dbg !1755

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1628, metadata !DIExpression()), !dbg !1688
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1759
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1638, metadata !DIExpression()), !dbg !1751
  %86 = load i8, ptr %85, align 1, !dbg !1752, !tbaa !828
  %87 = icmp eq i8 %86, 0, !dbg !1754
  br i1 %87, label %.loopexit12, label %76, !dbg !1754, !llvm.loop !1760

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1758
  br label %88, !dbg !1762

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1630, metadata !DIExpression()), !dbg !1688
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1762
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1631, metadata !DIExpression()), !dbg !1688
  br label %101, !dbg !1764

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1633, metadata !DIExpression()), !dbg !1688
  br label %101, !dbg !1765

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1688
  br label %101, !dbg !1766

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1688
  br i1 %36, label %101, label %95, !dbg !1767

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1622, metadata !DIExpression()), !dbg !1688
  br i1 %36, label %101, label %95, !dbg !1766

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1768
  br i1 %97, label %101, label %98, !dbg !1772

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1768, !tbaa !828
  br label %101, !dbg !1768

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1688
  br label %101, !dbg !1773

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1774
  unreachable, !dbg !1774

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1763
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.66, %42 ], [ @.str.10.66, %44 ], [ @.str.10.66, %41 ], [ %33, %27 ], [ @.str.12.67, %95 ], [ @.str.12.67, %98 ], [ @.str.12.67, %94 ], [ @.str.10.66, %40 ], [ @.str.12.67, %91 ], [ @.str.12.67, %92 ], [ @.str.12.67, %93 ], !dbg !1688
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1688
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1632, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1631, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1630, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1626, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1625, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1622, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1643, metadata !DIExpression()), !dbg !1775
  %110 = icmp ne i32 %102, 2
  %111 = and i1 %110, %108
  %112 = icmp ne i64 %107, 0
  %113 = select i1 %111, i1 %112, i1 false
  %114 = icmp ugt i64 %107, 1
  %115 = icmp eq i32 %102, 2
  %116 = and i1 %108, %109
  %117 = select i1 %116, i1 %112, i1 false
  %118 = and i1 %115, %109
  %119 = xor i1 %108, true
  %120 = and i1 %25, %109
  br label %121, !dbg !1776

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1763
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1692
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1777
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1621, metadata !DIExpression()), !dbg !1688
  %130 = icmp eq i64 %122, -1, !dbg !1778
  br i1 %130, label %131, label %135, !dbg !1779

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1780
  %133 = load i8, ptr %132, align 1, !dbg !1780, !tbaa !828
  %134 = icmp eq i8 %133, 0, !dbg !1781
  br i1 %134, label %573, label %137, !dbg !1782

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1783
  br i1 %136, label %573, label %137, !dbg !1782

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1784
  br i1 %113, label %138, label %151, !dbg !1785

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1787
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1788
  br i1 %140, label %141, label %143, !dbg !1788

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1789
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1621, metadata !DIExpression()), !dbg !1688
  br label %143, !dbg !1790

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1790
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1621, metadata !DIExpression()), !dbg !1688
  %145 = icmp ugt i64 %139, %144, !dbg !1791
  br i1 %145, label %151, label %146, !dbg !1792

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1793
  call void @llvm.dbg.value(metadata ptr %147, metadata !1794, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata ptr %106, metadata !1797, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i64 %107, metadata !1798, metadata !DIExpression()), !dbg !1799
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1801
  %149 = icmp eq i32 %148, 0, !dbg !1802
  %150 = and i1 %149, %109, !dbg !1803
  br i1 %150, label %.loopexit7, label %151, !dbg !1803

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1621, metadata !DIExpression()), !dbg !1688
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1804
  %155 = load i8, ptr %154, align 1, !dbg !1804, !tbaa !828
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1650, metadata !DIExpression()), !dbg !1784
  switch i8 %155, label %284 [
    i8 0, label %156
    i8 63, label %204
    i8 7, label %249
    i8 8, label %239
    i8 12, label %240
    i8 10, label %247
    i8 13, label %241
    i8 9, label %242
    i8 11, label %243
    i8 92, label %244
    i8 123, label %251
    i8 125, label %251
    i8 35, label %255
    i8 126, label %255
    i8 32, label %257
    i8 33, label %258
    i8 34, label %258
    i8 36, label %258
    i8 38, label %258
    i8 40, label %258
    i8 41, label %258
    i8 42, label %258
    i8 59, label %258
    i8 60, label %258
    i8 61, label %258
    i8 62, label %258
    i8 91, label %258
    i8 94, label %258
    i8 96, label %258
    i8 124, label %258
    i8 39, label %261
    i8 37, label %433
    i8 43, label %433
    i8 44, label %433
    i8 45, label %433
    i8 46, label %433
    i8 47, label %433
    i8 48, label %433
    i8 49, label %433
    i8 50, label %433
    i8 51, label %433
    i8 52, label %433
    i8 53, label %433
    i8 54, label %433
    i8 55, label %433
    i8 56, label %433
    i8 57, label %433
    i8 58, label %433
    i8 65, label %433
    i8 66, label %433
    i8 67, label %433
    i8 68, label %433
    i8 69, label %433
    i8 70, label %433
    i8 71, label %433
    i8 72, label %433
    i8 73, label %433
    i8 74, label %433
    i8 75, label %433
    i8 76, label %433
    i8 77, label %433
    i8 78, label %433
    i8 79, label %433
    i8 80, label %433
    i8 81, label %433
    i8 82, label %433
    i8 83, label %433
    i8 84, label %433
    i8 85, label %433
    i8 86, label %433
    i8 87, label %433
    i8 88, label %433
    i8 89, label %433
    i8 90, label %433
    i8 93, label %433
    i8 95, label %433
    i8 97, label %433
    i8 98, label %433
    i8 99, label %433
    i8 100, label %433
    i8 101, label %433
    i8 102, label %433
    i8 103, label %433
    i8 104, label %433
    i8 105, label %433
    i8 106, label %433
    i8 107, label %433
    i8 108, label %433
    i8 109, label %433
    i8 110, label %433
    i8 111, label %433
    i8 112, label %433
    i8 113, label %433
    i8 114, label %433
    i8 115, label %433
    i8 116, label %433
    i8 117, label %433
    i8 118, label %433
    i8 119, label %433
    i8 120, label %433
    i8 121, label %433
    i8 122, label %433
  ], !dbg !1805

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1806

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1807

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1784
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1811
  br i1 %159, label %176, label %160, !dbg !1811

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1813
  br i1 %161, label %162, label %164, !dbg !1817

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1813
  store i8 39, ptr %163, align 1, !dbg !1813, !tbaa !828
  br label %164, !dbg !1813

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1628, metadata !DIExpression()), !dbg !1688
  %166 = icmp ult i64 %165, %129, !dbg !1818
  br i1 %166, label %167, label %169, !dbg !1821

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1818
  store i8 36, ptr %168, align 1, !dbg !1818, !tbaa !828
  br label %169, !dbg !1818

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1628, metadata !DIExpression()), !dbg !1688
  %171 = icmp ult i64 %170, %129, !dbg !1822
  br i1 %171, label %172, label %174, !dbg !1825

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1822
  store i8 39, ptr %173, align 1, !dbg !1822, !tbaa !828
  br label %174, !dbg !1822

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1688
  br label %176, !dbg !1826

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1688
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1628, metadata !DIExpression()), !dbg !1688
  %179 = icmp ult i64 %177, %129, !dbg !1827
  br i1 %179, label %180, label %182, !dbg !1830

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1827
  store i8 92, ptr %181, align 1, !dbg !1827, !tbaa !828
  br label %182, !dbg !1827

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1830
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1628, metadata !DIExpression()), !dbg !1688
  br i1 %110, label %184, label %476, !dbg !1831

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1833
  %186 = icmp ult i64 %185, %152, !dbg !1834
  br i1 %186, label %187, label %433, !dbg !1835

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1836
  %189 = load i8, ptr %188, align 1, !dbg !1836, !tbaa !828
  %190 = add i8 %189, -48, !dbg !1837
  %191 = icmp ult i8 %190, 10, !dbg !1837
  br i1 %191, label %192, label %433, !dbg !1837

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1838
  br i1 %193, label %194, label %196, !dbg !1842

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1838
  store i8 48, ptr %195, align 1, !dbg !1838, !tbaa !828
  br label %196, !dbg !1838

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1842
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1628, metadata !DIExpression()), !dbg !1688
  %198 = icmp ult i64 %197, %129, !dbg !1843
  br i1 %198, label %199, label %201, !dbg !1846

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1843
  store i8 48, ptr %200, align 1, !dbg !1843, !tbaa !828
  br label %201, !dbg !1843

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1846
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1628, metadata !DIExpression()), !dbg !1688
  br label %433, !dbg !1847

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1848

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1849

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1850

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1852

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1854
  %209 = icmp ult i64 %208, %152, !dbg !1855
  br i1 %209, label %210, label %433, !dbg !1856

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1857
  %212 = load i8, ptr %211, align 1, !dbg !1857, !tbaa !828
  %213 = icmp eq i8 %212, 63, !dbg !1858
  br i1 %213, label %214, label %433, !dbg !1859

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1860
  %216 = load i8, ptr %215, align 1, !dbg !1860, !tbaa !828
  switch i8 %216, label %433 [
    i8 33, label %217
    i8 39, label %217
    i8 40, label %217
    i8 41, label %217
    i8 45, label %217
    i8 47, label %217
    i8 60, label %217
    i8 61, label %217
    i8 62, label %217
  ], !dbg !1861

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1862

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1643, metadata !DIExpression()), !dbg !1775
  %219 = icmp ult i64 %123, %129, !dbg !1864
  br i1 %219, label %220, label %222, !dbg !1867

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1864
  store i8 63, ptr %221, align 1, !dbg !1864, !tbaa !828
  br label %222, !dbg !1864

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1867
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1628, metadata !DIExpression()), !dbg !1688
  %224 = icmp ult i64 %223, %129, !dbg !1868
  br i1 %224, label %225, label %227, !dbg !1871

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1868
  store i8 34, ptr %226, align 1, !dbg !1868, !tbaa !828
  br label %227, !dbg !1868

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1871
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1628, metadata !DIExpression()), !dbg !1688
  %229 = icmp ult i64 %228, %129, !dbg !1872
  br i1 %229, label %230, label %232, !dbg !1875

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1872
  store i8 34, ptr %231, align 1, !dbg !1872, !tbaa !828
  br label %232, !dbg !1872

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1875
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1628, metadata !DIExpression()), !dbg !1688
  %234 = icmp ult i64 %233, %129, !dbg !1876
  br i1 %234, label %235, label %237, !dbg !1879

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1876
  store i8 63, ptr %236, align 1, !dbg !1876, !tbaa !828
  br label %237, !dbg !1876

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1879
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1628, metadata !DIExpression()), !dbg !1688
  br label %433, !dbg !1880

239:                                              ; preds = %151
  br label %249, !dbg !1881

240:                                              ; preds = %151
  br label %249, !dbg !1882

241:                                              ; preds = %151
  br label %247, !dbg !1883

242:                                              ; preds = %151
  br label %247, !dbg !1884

243:                                              ; preds = %151
  br label %249, !dbg !1885

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1886

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1887

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1890

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1892
  call void @llvm.dbg.label(metadata !1651), !dbg !1893
  br i1 %118, label %.loopexit8, label %249, !dbg !1894

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1892
  call void @llvm.dbg.label(metadata !1654), !dbg !1896
  br i1 %108, label %487, label %444, !dbg !1897

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1898

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1899, !tbaa !828
  %254 = icmp eq i8 %253, 0, !dbg !1901
  br i1 %254, label %255, label %433, !dbg !1902

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1903
  br i1 %256, label %257, label %433, !dbg !1905

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1784
  br label %258, !dbg !1906

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1784
  br i1 %115, label %260, label %433, !dbg !1907

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1909

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1784
  br i1 %115, label %262, label %433, !dbg !1910

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1911

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1914
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1916
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1916
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1916
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1629, metadata !DIExpression()), !dbg !1688
  %269 = icmp ult i64 %123, %268, !dbg !1917
  br i1 %269, label %270, label %272, !dbg !1920

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1917
  store i8 39, ptr %271, align 1, !dbg !1917, !tbaa !828
  br label %272, !dbg !1917

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1628, metadata !DIExpression()), !dbg !1688
  %274 = icmp ult i64 %273, %268, !dbg !1921
  br i1 %274, label %275, label %277, !dbg !1924

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1921
  store i8 92, ptr %276, align 1, !dbg !1921, !tbaa !828
  br label %277, !dbg !1921

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1628, metadata !DIExpression()), !dbg !1688
  %279 = icmp ult i64 %278, %268, !dbg !1925
  br i1 %279, label %280, label %282, !dbg !1928

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1925
  store i8 39, ptr %281, align 1, !dbg !1925, !tbaa !828
  br label %282, !dbg !1925

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1688
  br label %433, !dbg !1929

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1930

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1655, metadata !DIExpression()), !dbg !1931
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1932
  %287 = load ptr, ptr %286, align 8, !dbg !1932, !tbaa !759
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1932
  %290 = load i16, ptr %289, align 2, !dbg !1932, !tbaa !860
  %291 = and i16 %290, 16384, !dbg !1932
  %292 = icmp ne i16 %291, 0, !dbg !1934
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1657, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1931
  br label %334, !dbg !1935

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1936
  call void @llvm.dbg.value(metadata ptr %14, metadata !1713, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata ptr %14, metadata !1721, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i64 8, metadata !1725, metadata !DIExpression()), !dbg !1939
  store i64 0, ptr %14, align 8, !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1931
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1657, metadata !DIExpression()), !dbg !1931
  %294 = icmp eq i64 %152, -1, !dbg !1942
  br i1 %294, label %295, label %297, !dbg !1944

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1621, metadata !DIExpression()), !dbg !1688
  br label %297, !dbg !1946

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1621, metadata !DIExpression()), !dbg !1688
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1947
  %299 = sub i64 %298, %128, !dbg !1948
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1949
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1665, metadata !DIExpression()), !dbg !1687
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1950

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1931
  %302 = icmp ult i64 %128, %298, !dbg !1951
  br i1 %302, label %.preheader5, label %329, !dbg !1953

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1954

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1657, metadata !DIExpression()), !dbg !1931
  br label %329, !dbg !1955

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1655, metadata !DIExpression()), !dbg !1931
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1957
  %308 = load i8, ptr %307, align 1, !dbg !1957, !tbaa !828
  %309 = icmp eq i8 %308, 0, !dbg !1953
  br i1 %309, label %.loopexit6, label %310, !dbg !1954

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1655, metadata !DIExpression()), !dbg !1931
  %312 = add i64 %311, %128, !dbg !1959
  %313 = icmp eq i64 %311, %299, !dbg !1951
  br i1 %313, label %.loopexit6, label %304, !dbg !1953, !llvm.loop !1960

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1666, metadata !DIExpression()), !dbg !1961
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1962
  %317 = and i1 %316, %109, !dbg !1962
  br i1 %317, label %.preheader3, label %325, !dbg !1962

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1963

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1666, metadata !DIExpression()), !dbg !1961
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1964
  %321 = load i8, ptr %320, align 1, !dbg !1964, !tbaa !828
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1966

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1967
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1666, metadata !DIExpression()), !dbg !1961
  %324 = icmp eq i64 %323, %300, !dbg !1968
  br i1 %324, label %.loopexit4, label %318, !dbg !1963, !llvm.loop !1969

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1971

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1971, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %326, metadata !1973, metadata !DIExpression()), !dbg !1981
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1983
  %328 = icmp ne i32 %327, 0, !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1657, metadata !DIExpression()), !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1655, metadata !DIExpression()), !dbg !1931
  br label %329, !dbg !1985

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1986

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1657, metadata !DIExpression()), !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1655, metadata !DIExpression()), !dbg !1931
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1987
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1657, metadata !DIExpression()), !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1655, metadata !DIExpression()), !dbg !1931
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1987
  call void @llvm.dbg.label(metadata !1679), !dbg !1988
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1989
  br label %624, !dbg !1989

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1784
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1991
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1657, metadata !DIExpression()), !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1655, metadata !DIExpression()), !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1621, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1649, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1784
  %338 = icmp ult i64 %336, 2, !dbg !1992
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1993
  br i1 %340, label %433, label %341, !dbg !1993

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1674, metadata !DIExpression()), !dbg !1995
  br label %343, !dbg !1996

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1688
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1775
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1628, metadata !DIExpression()), !dbg !1688
  br i1 %339, label %394, label %350, !dbg !1997

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2002

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1784
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2005
  br i1 %352, label %369, label %353, !dbg !2005

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2007
  br i1 %354, label %355, label %357, !dbg !2011

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2007
  store i8 39, ptr %356, align 1, !dbg !2007, !tbaa !828
  br label %357, !dbg !2007

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1628, metadata !DIExpression()), !dbg !1688
  %359 = icmp ult i64 %358, %129, !dbg !2012
  br i1 %359, label %360, label %362, !dbg !2015

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2012
  store i8 36, ptr %361, align 1, !dbg !2012, !tbaa !828
  br label %362, !dbg !2012

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2015
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1628, metadata !DIExpression()), !dbg !1688
  %364 = icmp ult i64 %363, %129, !dbg !2016
  br i1 %364, label %365, label %367, !dbg !2019

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2016
  store i8 39, ptr %366, align 1, !dbg !2016, !tbaa !828
  br label %367, !dbg !2016

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1688
  br label %369, !dbg !2020

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1688
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1628, metadata !DIExpression()), !dbg !1688
  %372 = icmp ult i64 %370, %129, !dbg !2021
  br i1 %372, label %373, label %375, !dbg !2024

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2021
  store i8 92, ptr %374, align 1, !dbg !2021, !tbaa !828
  br label %375, !dbg !2021

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2024
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1628, metadata !DIExpression()), !dbg !1688
  %377 = icmp ult i64 %376, %129, !dbg !2025
  br i1 %377, label %378, label %382, !dbg !2028

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2025
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2025
  store i8 %380, ptr %381, align 1, !dbg !2025, !tbaa !828
  br label %382, !dbg !2025

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1628, metadata !DIExpression()), !dbg !1688
  %384 = icmp ult i64 %383, %129, !dbg !2029
  br i1 %384, label %385, label %390, !dbg !2032

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2029
  %388 = or disjoint i8 %387, 48, !dbg !2029
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2029
  store i8 %388, ptr %389, align 1, !dbg !2029, !tbaa !828
  br label %390, !dbg !2029

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2032
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1628, metadata !DIExpression()), !dbg !1688
  %392 = and i8 %349, 7, !dbg !2033
  %393 = or disjoint i8 %392, 48, !dbg !2034
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1650, metadata !DIExpression()), !dbg !1784
  br label %401, !dbg !2035

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2036

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2037
  br i1 %396, label %397, label %399, !dbg !2042

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2037
  store i8 92, ptr %398, align 1, !dbg !2037, !tbaa !828
  br label %399, !dbg !2037

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2042
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1645, metadata !DIExpression()), !dbg !1784
  br label %401, !dbg !2043

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1688
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1628, metadata !DIExpression()), !dbg !1688
  %407 = add i64 %346, 1, !dbg !2044
  %408 = icmp ugt i64 %342, %407, !dbg !2046
  br i1 %408, label %409, label %.loopexit2, !dbg !2047

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2048
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2048
  br i1 %411, label %423, label %412, !dbg !2048

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2051
  br i1 %413, label %414, label %416, !dbg !2055

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2051
  store i8 39, ptr %415, align 1, !dbg !2051, !tbaa !828
  br label %416, !dbg !2051

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2055
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1628, metadata !DIExpression()), !dbg !1688
  %418 = icmp ult i64 %417, %129, !dbg !2056
  br i1 %418, label %419, label %421, !dbg !2059

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2056
  store i8 39, ptr %420, align 1, !dbg !2056, !tbaa !828
  br label %421, !dbg !2056

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2059
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1688
  br label %423, !dbg !2060

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2061
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1628, metadata !DIExpression()), !dbg !1688
  %426 = icmp ult i64 %424, %129, !dbg !2062
  br i1 %426, label %427, label %429, !dbg !2065

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2062
  store i8 %406, ptr %428, align 1, !dbg !2062, !tbaa !828
  br label %429, !dbg !2062

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2065
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1643, metadata !DIExpression()), !dbg !1775
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2066
  %432 = load i8, ptr %431, align 1, !dbg !2066, !tbaa !828
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1650, metadata !DIExpression()), !dbg !1784
  br label %343, !dbg !2067, !llvm.loop !2068

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2071
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1688
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1692
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1775
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1784
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1645, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1621, metadata !DIExpression()), !dbg !1688
  br i1 %111, label %455, label %444, !dbg !2072

444:                                              ; preds = %203, %249, %433
  %445 = phi i64 [ %443, %433 ], [ %129, %249 ], [ %129, %203 ]
  %446 = phi i8 [ %442, %433 ], [ %155, %249 ], [ 0, %203 ]
  %447 = phi i1 [ %441, %433 ], [ false, %249 ], [ false, %203 ]
  %448 = phi i1 [ %440, %433 ], [ false, %249 ], [ false, %203 ]
  %449 = phi i64 [ %439, %433 ], [ %128, %249 ], [ %128, %203 ]
  %450 = phi i1 [ %438, %433 ], [ %127, %249 ], [ %127, %203 ]
  %451 = phi i1 [ %437, %433 ], [ %125, %249 ], [ %125, %203 ]
  %452 = phi i64 [ %436, %433 ], [ %124, %249 ], [ %124, %203 ]
  %453 = phi i64 [ %435, %433 ], [ %123, %249 ], [ %123, %203 ]
  %454 = phi i64 [ %434, %433 ], [ %152, %249 ], [ %152, %203 ]
  br i1 %120, label %456, label %476, !dbg !2074

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2075

456:                                              ; preds = %444, %455
  %457 = phi i64 [ %445, %444 ], [ %443, %455 ]
  %458 = phi i8 [ %446, %444 ], [ %442, %455 ]
  %459 = phi i1 [ %447, %444 ], [ %441, %455 ]
  %460 = phi i1 [ %448, %444 ], [ %440, %455 ]
  %461 = phi i64 [ %449, %444 ], [ %439, %455 ]
  %462 = phi i1 [ %450, %444 ], [ %438, %455 ]
  %463 = phi i1 [ %451, %444 ], [ %437, %455 ]
  %464 = phi i64 [ %452, %444 ], [ %436, %455 ]
  %465 = phi i64 [ %453, %444 ], [ %435, %455 ]
  %466 = phi i64 [ %454, %444 ], [ %434, %455 ]
  %467 = lshr i8 %458, 5, !dbg !2076
  %468 = zext nneg i8 %467 to i64, !dbg !2076
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2077
  %470 = load i32, ptr %469, align 4, !dbg !2077, !tbaa !819
  %471 = and i8 %458, 31, !dbg !2078
  %472 = zext nneg i8 %471 to i32, !dbg !2078
  %473 = shl nuw i32 1, %472, !dbg !2079
  %474 = and i32 %470, %473, !dbg !2079
  %475 = icmp eq i32 %474, 0, !dbg !2079
  br i1 %475, label %476, label %487, !dbg !2080

476:                                              ; preds = %182, %456, %455, %444
  %477 = phi i64 [ %457, %456 ], [ %443, %455 ], [ %445, %444 ], [ %129, %182 ]
  %478 = phi i8 [ %458, %456 ], [ %442, %455 ], [ %446, %444 ], [ 48, %182 ]
  %479 = phi i1 [ %459, %456 ], [ %441, %455 ], [ %447, %444 ], [ false, %182 ]
  %480 = phi i1 [ %460, %456 ], [ %440, %455 ], [ %448, %444 ], [ true, %182 ]
  %481 = phi i64 [ %461, %456 ], [ %439, %455 ], [ %449, %444 ], [ %128, %182 ]
  %482 = phi i1 [ %462, %456 ], [ %438, %455 ], [ %450, %444 ], [ %178, %182 ]
  %483 = phi i1 [ %463, %456 ], [ %437, %455 ], [ %451, %444 ], [ %125, %182 ]
  %484 = phi i64 [ %464, %456 ], [ %436, %455 ], [ %452, %444 ], [ %124, %182 ]
  %485 = phi i64 [ %465, %456 ], [ %435, %455 ], [ %453, %444 ], [ %183, %182 ]
  %486 = phi i64 [ %466, %456 ], [ %434, %455 ], [ %454, %444 ], [ %152, %182 ]
  br i1 %153, label %487, label %523, !dbg !2081

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2071
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1688
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1692
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2082
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1784
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1621, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.label(metadata !1677), !dbg !2083
  br i1 %109, label %.loopexit8, label %497, !dbg !2084

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1784
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2086
  br i1 %498, label %515, label %499, !dbg !2086

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2088
  br i1 %500, label %501, label %503, !dbg !2092

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2088
  store i8 39, ptr %502, align 1, !dbg !2088, !tbaa !828
  br label %503, !dbg !2088

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2092
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1628, metadata !DIExpression()), !dbg !1688
  %505 = icmp ult i64 %504, %496, !dbg !2093
  br i1 %505, label %506, label %508, !dbg !2096

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2093
  store i8 36, ptr %507, align 1, !dbg !2093, !tbaa !828
  br label %508, !dbg !2093

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1628, metadata !DIExpression()), !dbg !1688
  %510 = icmp ult i64 %509, %496, !dbg !2097
  br i1 %510, label %511, label %513, !dbg !2100

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2097
  store i8 39, ptr %512, align 1, !dbg !2097, !tbaa !828
  br label %513, !dbg !2097

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1688
  br label %515, !dbg !2101

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1784
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1628, metadata !DIExpression()), !dbg !1688
  %518 = icmp ult i64 %516, %496, !dbg !2102
  br i1 %518, label %519, label %521, !dbg !2105

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2102
  store i8 92, ptr %520, align 1, !dbg !2102, !tbaa !828
  br label %521, !dbg !2102

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1621, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.label(metadata !1678), !dbg !2106
  br label %547, !dbg !2107

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1688
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1784
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1775
  br label %523, !dbg !2107

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2071
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1688
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1692
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2082
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2110
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1650, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1784
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1621, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.label(metadata !1678), !dbg !2106
  %534 = xor i1 %528, true, !dbg !2107
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2107
  br i1 %535, label %547, label %536, !dbg !2107

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2111
  br i1 %537, label %538, label %540, !dbg !2115

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2111
  store i8 39, ptr %539, align 1, !dbg !2111, !tbaa !828
  br label %540, !dbg !2111

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1628, metadata !DIExpression()), !dbg !1688
  %542 = icmp ult i64 %541, %533, !dbg !2116
  br i1 %542, label %543, label %545, !dbg !2119

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2116
  store i8 39, ptr %544, align 1, !dbg !2116, !tbaa !828
  br label %545, !dbg !2116

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2119
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1688
  br label %547, !dbg !2120

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1784
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1628, metadata !DIExpression()), !dbg !1688
  %557 = icmp ult i64 %555, %548, !dbg !2121
  br i1 %557, label %558, label %560, !dbg !2124

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2121
  store i8 %549, ptr %559, align 1, !dbg !2121, !tbaa !828
  br label %560, !dbg !2121

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2124
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1628, metadata !DIExpression()), !dbg !1688
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2125
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1688
  br label %563, !dbg !2126

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2071
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1688
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1692
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2082
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1643, metadata !DIExpression()), !dbg !1775
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1621, metadata !DIExpression()), !dbg !1688
  %572 = add i64 %570, 1, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1643, metadata !DIExpression()), !dbg !1775
  br label %121, !dbg !2128, !llvm.loop !2129

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1763
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1692
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1619, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1629, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1628, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1621, metadata !DIExpression()), !dbg !1688
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2131
  %575 = xor i1 %109, true, !dbg !2133
  %576 = or i1 %574, %575, !dbg !2133
  %577 = or i1 %576, %110, !dbg !2133
  br i1 %577, label %578, label %.loopexit13, !dbg !2133

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2134
  %580 = xor i1 %.lcssa38, true, !dbg !2134
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2134
  br i1 %581, label %589, label %582, !dbg !2134

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2136

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1692
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2138
  br label %638, !dbg !2140

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2141
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2143
  br i1 %588, label %27, label %589, !dbg !2143

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1688
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1763
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2144
  %592 = or i1 %591, %590, !dbg !2146
  br i1 %592, label %608, label %593, !dbg !2146

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1630, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1628, metadata !DIExpression()), !dbg !1688
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2147, !tbaa !828
  %595 = icmp eq i8 %594, 0, !dbg !2150
  br i1 %595, label %608, label %.preheader, !dbg !2150

.preheader:                                       ; preds = %593
  br label %596, !dbg !2150

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1630, metadata !DIExpression()), !dbg !1688
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1628, metadata !DIExpression()), !dbg !1688
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2151
  br i1 %600, label %601, label %603, !dbg !2154

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2151
  store i8 %597, ptr %602, align 1, !dbg !2151, !tbaa !828
  br label %603, !dbg !2151

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2154
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1628, metadata !DIExpression()), !dbg !1688
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2155
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1630, metadata !DIExpression()), !dbg !1688
  %606 = load i8, ptr %605, align 1, !dbg !2147, !tbaa !828
  %607 = icmp eq i8 %606, 0, !dbg !2150
  br i1 %607, label %.loopexit, label %596, !dbg !2150, !llvm.loop !2156

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2154
  br label %608, !dbg !2158

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1628, metadata !DIExpression()), !dbg !1688
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2158
  br i1 %610, label %611, label %638, !dbg !2160

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2161
  store i8 0, ptr %612, align 1, !dbg !2162, !tbaa !828
  br label %638, !dbg !2161

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1679), !dbg !1988
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2163
  br i1 %614, label %624, label %630, !dbg !1989

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1784
  br label %615, !dbg !2163

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2163

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2163

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1679), !dbg !1988
  %622 = icmp eq i32 %616, 2, !dbg !2163
  %623 = select i1 %619, i32 4, i32 2, !dbg !1989
  br i1 %622, label %624, label %630, !dbg !1989

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1989

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1790
  br label %630, !dbg !2164

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1622, metadata !DIExpression()), !dbg !1688
  %636 = and i32 %5, -3, !dbg !2164
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2165
  br label %638, !dbg !2166

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2167
}

; Function Attrs: nounwind
declare !dbg !2168 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2171 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2174 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2176 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2183
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2181, metadata !DIExpression()), !dbg !2183
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.value(metadata ptr %0, metadata !2184, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i64 %1, metadata !2189, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata ptr null, metadata !2190, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata ptr %2, metadata !2191, metadata !DIExpression()), !dbg !2197
  %4 = icmp eq ptr %2, null, !dbg !2199
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2199
  call void @llvm.dbg.value(metadata ptr %5, metadata !2192, metadata !DIExpression()), !dbg !2197
  %6 = tail call ptr @__errno_location() #40, !dbg !2200
  %7 = load i32, ptr %6, align 4, !dbg !2200, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %7, metadata !2193, metadata !DIExpression()), !dbg !2197
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2201
  %9 = load i32, ptr %8, align 4, !dbg !2201, !tbaa !1562
  %10 = or i32 %9, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i32 %10, metadata !2194, metadata !DIExpression()), !dbg !2197
  %11 = load i32, ptr %5, align 8, !dbg !2203, !tbaa !1512
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2204
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2205
  %14 = load ptr, ptr %13, align 8, !dbg !2205, !tbaa !1583
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2206
  %16 = load ptr, ptr %15, align 8, !dbg !2206, !tbaa !1586
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2207
  %18 = add i64 %17, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %18, metadata !2195, metadata !DIExpression()), !dbg !2197
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2209
  call void @llvm.dbg.value(metadata ptr %19, metadata !2196, metadata !DIExpression()), !dbg !2197
  %20 = load i32, ptr %5, align 8, !dbg !2210, !tbaa !1512
  %21 = load ptr, ptr %13, align 8, !dbg !2211, !tbaa !1583
  %22 = load ptr, ptr %15, align 8, !dbg !2212, !tbaa !1586
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2213
  store i32 %7, ptr %6, align 4, !dbg !2214, !tbaa !819
  ret ptr %19, !dbg !2215
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2185 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2184, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2189, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2190, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2191, metadata !DIExpression()), !dbg !2216
  %5 = icmp eq ptr %3, null, !dbg !2217
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2217
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2192, metadata !DIExpression()), !dbg !2216
  %7 = tail call ptr @__errno_location() #40, !dbg !2218
  %8 = load i32, ptr %7, align 4, !dbg !2218, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2193, metadata !DIExpression()), !dbg !2216
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2219
  %10 = load i32, ptr %9, align 4, !dbg !2219, !tbaa !1562
  %11 = icmp eq ptr %2, null, !dbg !2220
  %12 = zext i1 %11 to i32, !dbg !2220
  %13 = or i32 %10, %12, !dbg !2221
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2194, metadata !DIExpression()), !dbg !2216
  %14 = load i32, ptr %6, align 8, !dbg !2222, !tbaa !1512
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2223
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2224
  %17 = load ptr, ptr %16, align 8, !dbg !2224, !tbaa !1583
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2225
  %19 = load ptr, ptr %18, align 8, !dbg !2225, !tbaa !1586
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2226
  %21 = add i64 %20, 1, !dbg !2227
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2195, metadata !DIExpression()), !dbg !2216
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2228
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2196, metadata !DIExpression()), !dbg !2216
  %23 = load i32, ptr %6, align 8, !dbg !2229, !tbaa !1512
  %24 = load ptr, ptr %16, align 8, !dbg !2230, !tbaa !1583
  %25 = load ptr, ptr %18, align 8, !dbg !2231, !tbaa !1586
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2232
  store i32 %8, ptr %7, align 4, !dbg !2233, !tbaa !819
  br i1 %11, label %28, label %27, !dbg !2234

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2235, !tbaa !2237
  br label %28, !dbg !2238

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2239
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2240 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2245, !tbaa !759
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2242, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2243, metadata !DIExpression()), !dbg !2247
  %2 = load i32, ptr @nslots, align 4, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2243, metadata !DIExpression()), !dbg !2247
  %3 = icmp sgt i32 %2, 1, !dbg !2248
  br i1 %3, label %4, label %6, !dbg !2250

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2248
  br label %10, !dbg !2250

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2251

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2251
  %8 = load ptr, ptr %7, align 8, !dbg !2251, !tbaa !2253
  %9 = icmp eq ptr %8, @slot0, !dbg !2255
  br i1 %9, label %17, label %16, !dbg !2256

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2243, metadata !DIExpression()), !dbg !2247
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2257
  %13 = load ptr, ptr %12, align 8, !dbg !2257, !tbaa !2253
  tail call void @free(ptr noundef %13) #37, !dbg !2258
  %14 = add nuw nsw i64 %11, 1, !dbg !2259
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2243, metadata !DIExpression()), !dbg !2247
  %15 = icmp eq i64 %14, %5, !dbg !2248
  br i1 %15, label %.loopexit, label %10, !dbg !2250, !llvm.loop !2260

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2262
  store i64 256, ptr @slotvec0, align 8, !dbg !2264, !tbaa !2265
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2266, !tbaa !2253
  br label %17, !dbg !2267

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2268
  br i1 %18, label %20, label %19, !dbg !2270

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2271
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2273, !tbaa !759
  br label %20, !dbg !2274

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2275, !tbaa !819
  ret void, !dbg !2276
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2277 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2280 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2282, metadata !DIExpression()), !dbg !2284
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2283, metadata !DIExpression()), !dbg !2284
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2285
  ret ptr %3, !dbg !2286
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2287 {
  %5 = alloca i64, align 8, !DIAssignID !2307
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2301, metadata !DIExpression(), metadata !2307, metadata ptr %5, metadata !DIExpression()), !dbg !2308
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2291, metadata !DIExpression()), !dbg !2309
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2292, metadata !DIExpression()), !dbg !2309
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2293, metadata !DIExpression()), !dbg !2309
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2294, metadata !DIExpression()), !dbg !2309
  %6 = tail call ptr @__errno_location() #40, !dbg !2310
  %7 = load i32, ptr %6, align 4, !dbg !2310, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2295, metadata !DIExpression()), !dbg !2309
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2311, !tbaa !759
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2296, metadata !DIExpression()), !dbg !2309
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2297, metadata !DIExpression()), !dbg !2309
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2312
  br i1 %9, label %10, label %11, !dbg !2312

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2314
  unreachable, !dbg !2314

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2315, !tbaa !819
  %13 = icmp sgt i32 %12, %0, !dbg !2316
  br i1 %13, label %32, label %14, !dbg !2317

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2318
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2298, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2319
  %16 = sext i32 %12 to i64, !dbg !2320
  store i64 %16, ptr %5, align 8, !dbg !2321, !tbaa !2237, !DIAssignID !2322
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2301, metadata !DIExpression(), metadata !2322, metadata ptr %5, metadata !DIExpression()), !dbg !2308
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2323
  %18 = add nuw nsw i32 %0, 1, !dbg !2324
  %19 = sub i32 %18, %12, !dbg !2325
  %20 = sext i32 %19 to i64, !dbg !2326
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2327
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2296, metadata !DIExpression()), !dbg !2309
  store ptr %21, ptr @slotvec, align 8, !dbg !2328, !tbaa !759
  br i1 %15, label %22, label %23, !dbg !2329

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2330, !tbaa.struct !2332
  br label %23, !dbg !2333

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2334, !tbaa !819
  %25 = sext i32 %24 to i64, !dbg !2335
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2335
  %27 = load i64, ptr %5, align 8, !dbg !2336, !tbaa !2237
  %28 = sub nsw i64 %27, %25, !dbg !2337
  %29 = shl i64 %28, 4, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %26, metadata !1721, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i32 0, metadata !1724, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata i64 %29, metadata !1725, metadata !DIExpression()), !dbg !2339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2341
  %30 = load i64, ptr %5, align 8, !dbg !2342, !tbaa !2237
  %31 = trunc i64 %30 to i32, !dbg !2342
  store i32 %31, ptr @nslots, align 4, !dbg !2343, !tbaa !819
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2344
  br label %32, !dbg !2345

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2309
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2296, metadata !DIExpression()), !dbg !2309
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2346
  %36 = load i64, ptr %35, align 8, !dbg !2347, !tbaa !2265
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2302, metadata !DIExpression()), !dbg !2348
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2349
  %38 = load ptr, ptr %37, align 8, !dbg !2349, !tbaa !2253
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2304, metadata !DIExpression()), !dbg !2348
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2350
  %40 = load i32, ptr %39, align 4, !dbg !2350, !tbaa !1562
  %41 = or i32 %40, 1, !dbg !2351
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2305, metadata !DIExpression()), !dbg !2348
  %42 = load i32, ptr %3, align 8, !dbg !2352, !tbaa !1512
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2353
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2354
  %45 = load ptr, ptr %44, align 8, !dbg !2354, !tbaa !1583
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2355
  %47 = load ptr, ptr %46, align 8, !dbg !2355, !tbaa !1586
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2356
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2306, metadata !DIExpression()), !dbg !2348
  %49 = icmp ugt i64 %36, %48, !dbg !2357
  br i1 %49, label %60, label %50, !dbg !2359

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2360
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2302, metadata !DIExpression()), !dbg !2348
  store i64 %51, ptr %35, align 8, !dbg !2362, !tbaa !2265
  %52 = icmp eq ptr %38, @slot0, !dbg !2363
  br i1 %52, label %54, label %53, !dbg !2365

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2366
  br label %54, !dbg !2366

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2367
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2304, metadata !DIExpression()), !dbg !2348
  store ptr %55, ptr %37, align 8, !dbg !2368, !tbaa !2253
  %56 = load i32, ptr %3, align 8, !dbg !2369, !tbaa !1512
  %57 = load ptr, ptr %44, align 8, !dbg !2370, !tbaa !1583
  %58 = load ptr, ptr %46, align 8, !dbg !2371, !tbaa !1586
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2372
  br label %60, !dbg !2373

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2348
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2304, metadata !DIExpression()), !dbg !2348
  store i32 %7, ptr %6, align 4, !dbg !2374, !tbaa !819
  ret ptr %61, !dbg !2375
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2376 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2381, metadata !DIExpression()), !dbg !2383
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2382, metadata !DIExpression()), !dbg !2383
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2384
  ret ptr %4, !dbg !2385
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2386 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata ptr %0, metadata !2283, metadata !DIExpression()), !dbg !2390
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2392
  ret ptr %2, !dbg !2393
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2394 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2400
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2399, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 0, metadata !2380, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata ptr %0, metadata !2381, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i64 %1, metadata !2382, metadata !DIExpression()), !dbg !2401
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2403
  ret ptr %3, !dbg !2404
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2405 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2413
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2412, metadata !DIExpression(), metadata !2413, metadata ptr %4, metadata !DIExpression()), !dbg !2414
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2409, metadata !DIExpression()), !dbg !2414
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2410, metadata !DIExpression()), !dbg !2414
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2411, metadata !DIExpression()), !dbg !2414
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2415
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416), !dbg !2419
  call void @llvm.dbg.value(metadata i32 %1, metadata !2420, metadata !DIExpression()), !dbg !2426
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2428, !alias.scope !2416, !DIAssignID !2429
  call void @llvm.dbg.assign(metadata i8 0, metadata !2412, metadata !DIExpression(), metadata !2429, metadata ptr %4, metadata !DIExpression()), !dbg !2414
  %5 = icmp eq i32 %1, 10, !dbg !2430
  br i1 %5, label %6, label %7, !dbg !2432

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2433, !noalias !2416
  unreachable, !dbg !2433

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2434, !tbaa !1512, !alias.scope !2416, !DIAssignID !2435
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2435, metadata ptr %4, metadata !DIExpression()), !dbg !2414
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2436
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2437
  ret ptr %8, !dbg !2438
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2439 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2448
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2447, metadata !DIExpression(), metadata !2448, metadata ptr %5, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2443, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2444, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2445, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2446, metadata !DIExpression()), !dbg !2449
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %1, metadata !2420, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2425, metadata !DIExpression()), !dbg !2457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2457, !alias.scope !2451, !DIAssignID !2458
  call void @llvm.dbg.assign(metadata i8 0, metadata !2447, metadata !DIExpression(), metadata !2458, metadata ptr %5, metadata !DIExpression()), !dbg !2449
  %6 = icmp eq i32 %1, 10, !dbg !2459
  br i1 %6, label %7, label %8, !dbg !2460

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2461, !noalias !2451
  unreachable, !dbg !2461

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2462, !tbaa !1512, !alias.scope !2451, !DIAssignID !2463
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2447, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2463, metadata ptr %5, metadata !DIExpression()), !dbg !2449
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2464
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2465
  ret ptr %9, !dbg !2466
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2467 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2473
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2471, metadata !DIExpression()), !dbg !2474
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2412, metadata !DIExpression(), metadata !2473, metadata ptr %3, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %1, metadata !2411, metadata !DIExpression()), !dbg !2475
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2477
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478), !dbg !2481
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2425, metadata !DIExpression()), !dbg !2484
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2484, !alias.scope !2478, !DIAssignID !2485
  call void @llvm.dbg.assign(metadata i8 0, metadata !2412, metadata !DIExpression(), metadata !2485, metadata ptr %3, metadata !DIExpression()), !dbg !2475
  %4 = icmp eq i32 %0, 10, !dbg !2486
  br i1 %4, label %5, label %6, !dbg !2487

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2488, !noalias !2478
  unreachable, !dbg !2488

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2489, !tbaa !1512, !alias.scope !2478, !DIAssignID !2490
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2490, metadata ptr %3, metadata !DIExpression()), !dbg !2475
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2491
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2492
  ret ptr %7, !dbg !2493
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2494 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2501
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2498, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2499, metadata !DIExpression()), !dbg !2502
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2500, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2447, metadata !DIExpression(), metadata !2501, metadata ptr %4, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 0, metadata !2443, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata ptr %1, metadata !2445, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %2, metadata !2446, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2505
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506), !dbg !2509
  call void @llvm.dbg.value(metadata i32 %0, metadata !2420, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2425, metadata !DIExpression()), !dbg !2512
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2512, !alias.scope !2506, !DIAssignID !2513
  call void @llvm.dbg.assign(metadata i8 0, metadata !2447, metadata !DIExpression(), metadata !2513, metadata ptr %4, metadata !DIExpression()), !dbg !2503
  %5 = icmp eq i32 %0, 10, !dbg !2514
  br i1 %5, label %6, label %7, !dbg !2515

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2516, !noalias !2506
  unreachable, !dbg !2516

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2517, !tbaa !1512, !alias.scope !2506, !DIAssignID !2518
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2447, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2518, metadata ptr %4, metadata !DIExpression()), !dbg !2503
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2519
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2520
  ret ptr %8, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2522 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2530
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2530, metadata ptr %4, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2528, metadata !DIExpression()), !dbg !2531
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2533, !tbaa.struct !2534, !DIAssignID !2535
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2535, metadata ptr %4, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1529, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1530, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1531, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1532, metadata !DIExpression()), !dbg !2536
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2538
  %6 = lshr i8 %2, 5, !dbg !2539
  %7 = zext nneg i8 %6 to i64, !dbg !2539
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2540
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1533, metadata !DIExpression()), !dbg !2536
  %9 = and i8 %2, 31, !dbg !2541
  %10 = zext nneg i8 %9 to i32, !dbg !2541
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1535, metadata !DIExpression()), !dbg !2536
  %11 = load i32, ptr %8, align 4, !dbg !2542, !tbaa !819
  %12 = lshr i32 %11, %10, !dbg !2543
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1536, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2536
  %13 = and i32 %12, 1, !dbg !2544
  %14 = xor i32 %13, 1, !dbg !2544
  %15 = shl nuw i32 %14, %10, !dbg !2545
  %16 = xor i32 %15, %11, !dbg !2546
  store i32 %16, ptr %8, align 4, !dbg !2546, !tbaa !819
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2547
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2548
  ret ptr %17, !dbg !2549
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2550 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2556
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2554, metadata !DIExpression()), !dbg !2557
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2555, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2556, metadata ptr %3, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 -1, metadata !2527, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %1, metadata !2528, metadata !DIExpression()), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2561, !tbaa.struct !2534, !DIAssignID !2562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2562, metadata ptr %3, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %3, metadata !1529, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %1, metadata !1530, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 1, metadata !1531, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 %1, metadata !1532, metadata !DIExpression()), !dbg !2563
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2565
  %5 = lshr i8 %1, 5, !dbg !2566
  %6 = zext nneg i8 %5 to i64, !dbg !2566
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2567
  call void @llvm.dbg.value(metadata ptr %7, metadata !1533, metadata !DIExpression()), !dbg !2563
  %8 = and i8 %1, 31, !dbg !2568
  %9 = zext nneg i8 %8 to i32, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %9, metadata !1535, metadata !DIExpression()), !dbg !2563
  %10 = load i32, ptr %7, align 4, !dbg !2569, !tbaa !819
  %11 = lshr i32 %10, %9, !dbg !2570
  call void @llvm.dbg.value(metadata i32 %11, metadata !1536, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2563
  %12 = and i32 %11, 1, !dbg !2571
  %13 = xor i32 %12, 1, !dbg !2571
  %14 = shl nuw i32 %13, %9, !dbg !2572
  %15 = xor i32 %14, %10, !dbg !2573
  store i32 %15, ptr %7, align 4, !dbg !2573, !tbaa !819
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2574
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2575
  ret ptr %16, !dbg !2576
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2577 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2580
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata ptr %0, metadata !2554, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !2555, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2580, metadata ptr %2, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 -1, metadata !2527, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8 58, metadata !2528, metadata !DIExpression()), !dbg !2584
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2587, !tbaa.struct !2534, !DIAssignID !2588
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2588, metadata ptr %2, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %2, metadata !1529, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 58, metadata !1530, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 1, metadata !1531, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2589
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2591
  call void @llvm.dbg.value(metadata ptr %3, metadata !1533, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 26, metadata !1535, metadata !DIExpression()), !dbg !2589
  %4 = load i32, ptr %3, align 4, !dbg !2592, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %4, metadata !1536, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2589
  %5 = or i32 %4, 67108864, !dbg !2593
  store i32 %5, ptr %3, align 4, !dbg !2593, !tbaa !819
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2594
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2595
  ret ptr %6, !dbg !2596
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2597 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2601
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2599, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2601, metadata ptr %3, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i64 %1, metadata !2527, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i8 58, metadata !2528, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2606, !tbaa.struct !2534, !DIAssignID !2607
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2529, metadata !DIExpression(), metadata !2607, metadata ptr %3, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %3, metadata !1529, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 58, metadata !1530, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 1, metadata !1531, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2608
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2610
  call void @llvm.dbg.value(metadata ptr %4, metadata !1533, metadata !DIExpression()), !dbg !2608
  call void @llvm.dbg.value(metadata i32 26, metadata !1535, metadata !DIExpression()), !dbg !2608
  %5 = load i32, ptr %4, align 4, !dbg !2611, !tbaa !819
  call void @llvm.dbg.value(metadata i32 %5, metadata !1536, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2608
  %6 = or i32 %5, 67108864, !dbg !2612
  store i32 %6, ptr %4, align 4, !dbg !2612, !tbaa !819
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2613
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2614
  ret ptr %7, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2616 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2622
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2621, metadata !DIExpression(), metadata !2622, metadata ptr %4, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2425, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2618, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2619, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2626
  call void @llvm.dbg.value(metadata i32 %1, metadata !2420, metadata !DIExpression()), !dbg !2627
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2425, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2627
  %5 = icmp eq i32 %1, 10, !dbg !2628
  br i1 %5, label %6, label %7, !dbg !2629

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2630, !noalias !2631
  unreachable, !dbg !2630

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2425, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2627
  store i32 %1, ptr %4, align 8, !dbg !2634, !tbaa.struct !2534, !DIAssignID !2635
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2634
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2634
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2621, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2635, metadata ptr %4, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2621, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2636, metadata ptr %8, metadata !DIExpression()), !dbg !2623
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1529, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1530, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1531, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2637
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2639
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1533, metadata !DIExpression()), !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1535, metadata !DIExpression()), !dbg !2637
  %10 = load i32, ptr %9, align 4, !dbg !2640, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1536, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2637
  %11 = or i32 %10, 67108864, !dbg !2641
  store i32 %11, ptr %9, align 4, !dbg !2641, !tbaa !819, !DIAssignID !2642
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2621, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2642, metadata ptr %9, metadata !DIExpression()), !dbg !2623
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2643
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2644
  ret ptr %12, !dbg !2645
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2646 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2654
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2651, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2652, metadata !DIExpression()), !dbg !2655
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2653, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2654, metadata ptr %5, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1, metadata !2662, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %2, metadata !2663, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %3, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 -1, metadata !2665, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2669, !tbaa.struct !2534, !DIAssignID !2670
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2670, metadata ptr %5, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2671, metadata ptr undef, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %5, metadata !1569, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %1, metadata !1570, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %5, metadata !1569, metadata !DIExpression()), !dbg !2672
  store i32 10, ptr %5, align 8, !dbg !2674, !tbaa !1512, !DIAssignID !2675
  call void @llvm.dbg.assign(metadata i32 10, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2675, metadata ptr %5, metadata !DIExpression()), !dbg !2666
  %6 = icmp ne ptr %1, null, !dbg !2676
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2677
  br i1 %8, label %10, label %9, !dbg !2677

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2678
  unreachable, !dbg !2678

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2679
  store ptr %1, ptr %11, align 8, !dbg !2680, !tbaa !1583, !DIAssignID !2681
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2681, metadata ptr %11, metadata !DIExpression()), !dbg !2666
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2682
  store ptr %2, ptr %12, align 8, !dbg !2683, !tbaa !1586, !DIAssignID !2684
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2684, metadata ptr %12, metadata !DIExpression()), !dbg !2666
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2685
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2686
  ret ptr %13, !dbg !2687
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2657 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2688
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2688, metadata ptr %6, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2661, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2662, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2663, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2664, metadata !DIExpression()), !dbg !2689
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2665, metadata !DIExpression()), !dbg !2689
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2691, !tbaa.struct !2534, !DIAssignID !2692
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2692, metadata ptr %6, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2693, metadata ptr undef, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %6, metadata !1569, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %1, metadata !1570, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata ptr %6, metadata !1569, metadata !DIExpression()), !dbg !2694
  store i32 10, ptr %6, align 8, !dbg !2696, !tbaa !1512, !DIAssignID !2697
  call void @llvm.dbg.assign(metadata i32 10, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2697, metadata ptr %6, metadata !DIExpression()), !dbg !2689
  %7 = icmp ne ptr %1, null, !dbg !2698
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2699
  br i1 %9, label %11, label %10, !dbg !2699

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2700
  unreachable, !dbg !2700

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2701
  store ptr %1, ptr %12, align 8, !dbg !2702, !tbaa !1583, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2703, metadata ptr %12, metadata !DIExpression()), !dbg !2689
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2704
  store ptr %2, ptr %13, align 8, !dbg !2705, !tbaa !1586, !DIAssignID !2706
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2706, metadata ptr %13, metadata !DIExpression()), !dbg !2689
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2707
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2708
  ret ptr %14, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2710 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2717
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2714, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2715, metadata !DIExpression()), !dbg !2718
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %0, metadata !2651, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %1, metadata !2652, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %2, metadata !2653, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2717, metadata ptr %4, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2661, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %0, metadata !2662, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %1, metadata !2663, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %2, metadata !2664, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 -1, metadata !2665, metadata !DIExpression()), !dbg !2721
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2724, !tbaa.struct !2534, !DIAssignID !2725
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2725, metadata ptr %4, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2726, metadata ptr undef, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata ptr %4, metadata !1569, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %0, metadata !1570, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %1, metadata !1571, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %4, metadata !1569, metadata !DIExpression()), !dbg !2727
  store i32 10, ptr %4, align 8, !dbg !2729, !tbaa !1512, !DIAssignID !2730
  call void @llvm.dbg.assign(metadata i32 10, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2730, metadata ptr %4, metadata !DIExpression()), !dbg !2721
  %5 = icmp ne ptr %0, null, !dbg !2731
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2732
  br i1 %7, label %9, label %8, !dbg !2732

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2733
  unreachable, !dbg !2733

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2734
  store ptr %0, ptr %10, align 8, !dbg !2735, !tbaa !1583, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2736, metadata ptr %10, metadata !DIExpression()), !dbg !2721
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2737
  store ptr %1, ptr %11, align 8, !dbg !2738, !tbaa !1586, !DIAssignID !2739
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2739, metadata ptr %11, metadata !DIExpression()), !dbg !2721
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2740
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2741
  ret ptr %12, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2743 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2751
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2748, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2749, metadata !DIExpression()), !dbg !2752
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2750, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2751, metadata ptr %5, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2661, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %0, metadata !2662, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %1, metadata !2663, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %2, metadata !2664, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %3, metadata !2665, metadata !DIExpression()), !dbg !2753
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2756, !tbaa.struct !2534, !DIAssignID !2757
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(), metadata !2757, metadata ptr %5, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2758, metadata ptr undef, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %5, metadata !1569, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %0, metadata !1570, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %1, metadata !1571, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %5, metadata !1569, metadata !DIExpression()), !dbg !2759
  store i32 10, ptr %5, align 8, !dbg !2761, !tbaa !1512, !DIAssignID !2762
  call void @llvm.dbg.assign(metadata i32 10, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2762, metadata ptr %5, metadata !DIExpression()), !dbg !2753
  %6 = icmp ne ptr %0, null, !dbg !2763
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2764
  br i1 %8, label %10, label %9, !dbg !2764

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2765
  unreachable, !dbg !2765

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2766
  store ptr %0, ptr %11, align 8, !dbg !2767, !tbaa !1583, !DIAssignID !2768
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2768, metadata ptr %11, metadata !DIExpression()), !dbg !2753
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2769
  store ptr %1, ptr %12, align 8, !dbg !2770, !tbaa !1586, !DIAssignID !2771
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2656, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2771, metadata ptr %12, metadata !DIExpression()), !dbg !2753
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2772
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2773
  ret ptr %13, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2775 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2782
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2781, metadata !DIExpression()), !dbg !2782
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2783
  ret ptr %4, !dbg !2784
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2785 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2789, metadata !DIExpression()), !dbg !2791
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %0, metadata !2780, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2781, metadata !DIExpression()), !dbg !2792
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2794
  ret ptr %3, !dbg !2795
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2796 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2800, metadata !DIExpression()), !dbg !2802
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2801, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.value(metadata i64 -1, metadata !2781, metadata !DIExpression()), !dbg !2803
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2805
  ret ptr %3, !dbg !2806
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.value(metadata i32 0, metadata !2800, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata ptr %0, metadata !2780, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.value(metadata i64 -1, metadata !2781, metadata !DIExpression()), !dbg !2815
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2817
  ret ptr %2, !dbg !2818
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2819 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2858, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2859, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2861, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2862, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2863, metadata !DIExpression()), !dbg !2864
  %7 = icmp eq ptr %1, null, !dbg !2865
  br i1 %7, label %10, label %8, !dbg !2867

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2868
  br label %12, !dbg !2868

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #37, !dbg !2869
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #37, !dbg !2870
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2870
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2871
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #37, !dbg !2872
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #37, !dbg !2872
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2873
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
  ], !dbg !2874

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #37, !dbg !2875
  %21 = load ptr, ptr %4, align 8, !dbg !2875, !tbaa !759
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2875
  br label %147, !dbg !2877

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #37, !dbg !2878
  %25 = load ptr, ptr %4, align 8, !dbg !2878, !tbaa !759
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2878
  %27 = load ptr, ptr %26, align 8, !dbg !2878, !tbaa !759
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2878
  br label %147, !dbg !2879

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #37, !dbg !2880
  %31 = load ptr, ptr %4, align 8, !dbg !2880, !tbaa !759
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2880
  %33 = load ptr, ptr %32, align 8, !dbg !2880, !tbaa !759
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2880
  %35 = load ptr, ptr %34, align 8, !dbg !2880, !tbaa !759
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2880
  br label %147, !dbg !2881

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #37, !dbg !2882
  %39 = load ptr, ptr %4, align 8, !dbg !2882, !tbaa !759
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2882
  %41 = load ptr, ptr %40, align 8, !dbg !2882, !tbaa !759
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2882
  %43 = load ptr, ptr %42, align 8, !dbg !2882, !tbaa !759
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2882
  %45 = load ptr, ptr %44, align 8, !dbg !2882, !tbaa !759
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2882
  br label %147, !dbg !2883

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #37, !dbg !2884
  %49 = load ptr, ptr %4, align 8, !dbg !2884, !tbaa !759
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2884
  %51 = load ptr, ptr %50, align 8, !dbg !2884, !tbaa !759
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2884
  %53 = load ptr, ptr %52, align 8, !dbg !2884, !tbaa !759
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2884
  %55 = load ptr, ptr %54, align 8, !dbg !2884, !tbaa !759
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2884
  %57 = load ptr, ptr %56, align 8, !dbg !2884, !tbaa !759
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2884
  br label %147, !dbg !2885

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #37, !dbg !2886
  %61 = load ptr, ptr %4, align 8, !dbg !2886, !tbaa !759
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2886
  %63 = load ptr, ptr %62, align 8, !dbg !2886, !tbaa !759
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2886
  %65 = load ptr, ptr %64, align 8, !dbg !2886, !tbaa !759
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2886
  %67 = load ptr, ptr %66, align 8, !dbg !2886, !tbaa !759
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2886
  %69 = load ptr, ptr %68, align 8, !dbg !2886, !tbaa !759
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2886
  %71 = load ptr, ptr %70, align 8, !dbg !2886, !tbaa !759
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2886
  br label %147, !dbg !2887

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #37, !dbg !2888
  %75 = load ptr, ptr %4, align 8, !dbg !2888, !tbaa !759
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2888
  %77 = load ptr, ptr %76, align 8, !dbg !2888, !tbaa !759
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2888
  %79 = load ptr, ptr %78, align 8, !dbg !2888, !tbaa !759
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2888
  %81 = load ptr, ptr %80, align 8, !dbg !2888, !tbaa !759
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2888
  %83 = load ptr, ptr %82, align 8, !dbg !2888, !tbaa !759
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2888
  %85 = load ptr, ptr %84, align 8, !dbg !2888, !tbaa !759
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2888
  %87 = load ptr, ptr %86, align 8, !dbg !2888, !tbaa !759
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2888
  br label %147, !dbg !2889

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #37, !dbg !2890
  %91 = load ptr, ptr %4, align 8, !dbg !2890, !tbaa !759
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2890
  %93 = load ptr, ptr %92, align 8, !dbg !2890, !tbaa !759
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2890
  %95 = load ptr, ptr %94, align 8, !dbg !2890, !tbaa !759
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2890
  %97 = load ptr, ptr %96, align 8, !dbg !2890, !tbaa !759
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2890
  %99 = load ptr, ptr %98, align 8, !dbg !2890, !tbaa !759
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2890
  %101 = load ptr, ptr %100, align 8, !dbg !2890, !tbaa !759
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2890
  %103 = load ptr, ptr %102, align 8, !dbg !2890, !tbaa !759
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2890
  %105 = load ptr, ptr %104, align 8, !dbg !2890, !tbaa !759
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2890
  br label %147, !dbg !2891

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #37, !dbg !2892
  %109 = load ptr, ptr %4, align 8, !dbg !2892, !tbaa !759
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2892
  %111 = load ptr, ptr %110, align 8, !dbg !2892, !tbaa !759
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2892
  %113 = load ptr, ptr %112, align 8, !dbg !2892, !tbaa !759
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2892
  %115 = load ptr, ptr %114, align 8, !dbg !2892, !tbaa !759
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2892
  %117 = load ptr, ptr %116, align 8, !dbg !2892, !tbaa !759
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2892
  %119 = load ptr, ptr %118, align 8, !dbg !2892, !tbaa !759
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2892
  %121 = load ptr, ptr %120, align 8, !dbg !2892, !tbaa !759
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2892
  %123 = load ptr, ptr %122, align 8, !dbg !2892, !tbaa !759
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2892
  %125 = load ptr, ptr %124, align 8, !dbg !2892, !tbaa !759
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2892
  br label %147, !dbg !2893

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #37, !dbg !2894
  %129 = load ptr, ptr %4, align 8, !dbg !2894, !tbaa !759
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2894
  %131 = load ptr, ptr %130, align 8, !dbg !2894, !tbaa !759
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2894
  %133 = load ptr, ptr %132, align 8, !dbg !2894, !tbaa !759
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2894
  %135 = load ptr, ptr %134, align 8, !dbg !2894, !tbaa !759
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2894
  %137 = load ptr, ptr %136, align 8, !dbg !2894, !tbaa !759
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2894
  %139 = load ptr, ptr %138, align 8, !dbg !2894, !tbaa !759
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2894
  %141 = load ptr, ptr %140, align 8, !dbg !2894, !tbaa !759
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2894
  %143 = load ptr, ptr %142, align 8, !dbg !2894, !tbaa !759
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2894
  %145 = load ptr, ptr %144, align 8, !dbg !2894, !tbaa !759
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2894
  br label %147, !dbg !2895

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2897 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2901, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2902, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2903, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2904, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2905, metadata !DIExpression()), !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2906, metadata !DIExpression()), !dbg !2907
  br label %6, !dbg !2908

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2910
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2906, metadata !DIExpression()), !dbg !2907
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2911
  %9 = load ptr, ptr %8, align 8, !dbg !2911, !tbaa !759
  %10 = icmp eq ptr %9, null, !dbg !2913
  %11 = add i64 %7, 1, !dbg !2914
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2906, metadata !DIExpression()), !dbg !2907
  br i1 %10, label %12, label %6, !dbg !2913, !llvm.loop !2915

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2910
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2917
  ret void, !dbg !2918
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2919 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2941
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2939, metadata !DIExpression(), metadata !2941, metadata ptr %6, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2934, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2935, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2936, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression(DW_OP_deref)), !dbg !2942
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2943
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2938, metadata !DIExpression()), !dbg !2942
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2938, metadata !DIExpression()), !dbg !2942
  %10 = icmp sgt i32 %9, -1, !dbg !2944
  br i1 %10, label %18, label %11, !dbg !2944

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2944
  store i32 %12, ptr %7, align 8, !dbg !2944
  %13 = icmp ult i32 %9, -7, !dbg !2944
  br i1 %13, label %14, label %18, !dbg !2944

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2944
  %16 = sext i32 %9 to i64, !dbg !2944
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2944
  br label %22, !dbg !2944

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2944
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2944
  store ptr %21, ptr %4, align 8, !dbg !2944
  br label %22, !dbg !2944

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2944
  %25 = load ptr, ptr %24, align 8, !dbg !2944
  store ptr %25, ptr %6, align 8, !dbg !2947, !tbaa !759
  %26 = icmp eq ptr %25, null, !dbg !2948
  br i1 %26, label %197, label %27, !dbg !2949

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2938, metadata !DIExpression()), !dbg !2942
  %28 = icmp sgt i32 %23, -1, !dbg !2944
  br i1 %28, label %36, label %29, !dbg !2944

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2944
  store i32 %30, ptr %7, align 8, !dbg !2944
  %31 = icmp ult i32 %23, -7, !dbg !2944
  br i1 %31, label %32, label %36, !dbg !2944

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2944
  %34 = sext i32 %23 to i64, !dbg !2944
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2944
  br label %40, !dbg !2944

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2944
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2944
  store ptr %39, ptr %4, align 8, !dbg !2944
  br label %40, !dbg !2944

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2944
  %43 = load ptr, ptr %42, align 8, !dbg !2944
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2950
  store ptr %43, ptr %44, align 8, !dbg !2947, !tbaa !759
  %45 = icmp eq ptr %43, null, !dbg !2948
  br i1 %45, label %197, label %46, !dbg !2949

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2938, metadata !DIExpression()), !dbg !2942
  %47 = icmp sgt i32 %41, -1, !dbg !2944
  br i1 %47, label %55, label %48, !dbg !2944

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2944
  store i32 %49, ptr %7, align 8, !dbg !2944
  %50 = icmp ult i32 %41, -7, !dbg !2944
  br i1 %50, label %51, label %55, !dbg !2944

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2944
  %53 = sext i32 %41 to i64, !dbg !2944
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2944
  br label %59, !dbg !2944

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2944
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2944
  store ptr %58, ptr %4, align 8, !dbg !2944
  br label %59, !dbg !2944

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2944
  %62 = load ptr, ptr %61, align 8, !dbg !2944
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2950
  store ptr %62, ptr %63, align 8, !dbg !2947, !tbaa !759
  %64 = icmp eq ptr %62, null, !dbg !2948
  br i1 %64, label %197, label %65, !dbg !2949

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2938, metadata !DIExpression()), !dbg !2942
  %66 = icmp sgt i32 %60, -1, !dbg !2944
  br i1 %66, label %74, label %67, !dbg !2944

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2944
  store i32 %68, ptr %7, align 8, !dbg !2944
  %69 = icmp ult i32 %60, -7, !dbg !2944
  br i1 %69, label %70, label %74, !dbg !2944

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2944
  %72 = sext i32 %60 to i64, !dbg !2944
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2944
  br label %78, !dbg !2944

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2944
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2944
  store ptr %77, ptr %4, align 8, !dbg !2944
  br label %78, !dbg !2944

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2944
  %81 = load ptr, ptr %80, align 8, !dbg !2944
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2950
  store ptr %81, ptr %82, align 8, !dbg !2947, !tbaa !759
  %83 = icmp eq ptr %81, null, !dbg !2948
  br i1 %83, label %197, label %84, !dbg !2949

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2938, metadata !DIExpression()), !dbg !2942
  %85 = icmp sgt i32 %79, -1, !dbg !2944
  br i1 %85, label %93, label %86, !dbg !2944

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2944
  store i32 %87, ptr %7, align 8, !dbg !2944
  %88 = icmp ult i32 %79, -7, !dbg !2944
  br i1 %88, label %89, label %93, !dbg !2944

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2944
  %91 = sext i32 %79 to i64, !dbg !2944
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2944
  br label %97, !dbg !2944

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2944
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2944
  store ptr %96, ptr %4, align 8, !dbg !2944
  br label %97, !dbg !2944

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2944
  %100 = load ptr, ptr %99, align 8, !dbg !2944
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2950
  store ptr %100, ptr %101, align 8, !dbg !2947, !tbaa !759
  %102 = icmp eq ptr %100, null, !dbg !2948
  br i1 %102, label %197, label %103, !dbg !2949

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2938, metadata !DIExpression()), !dbg !2942
  %104 = icmp sgt i32 %98, -1, !dbg !2944
  br i1 %104, label %112, label %105, !dbg !2944

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2944
  store i32 %106, ptr %7, align 8, !dbg !2944
  %107 = icmp ult i32 %98, -7, !dbg !2944
  br i1 %107, label %108, label %112, !dbg !2944

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2944
  %110 = sext i32 %98 to i64, !dbg !2944
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2944
  br label %116, !dbg !2944

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2944
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2944
  store ptr %115, ptr %4, align 8, !dbg !2944
  br label %116, !dbg !2944

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2944
  %119 = load ptr, ptr %118, align 8, !dbg !2944
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2950
  store ptr %119, ptr %120, align 8, !dbg !2947, !tbaa !759
  %121 = icmp eq ptr %119, null, !dbg !2948
  br i1 %121, label %197, label %122, !dbg !2949

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2938, metadata !DIExpression()), !dbg !2942
  %123 = icmp sgt i32 %117, -1, !dbg !2944
  br i1 %123, label %131, label %124, !dbg !2944

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2944
  store i32 %125, ptr %7, align 8, !dbg !2944
  %126 = icmp ult i32 %117, -7, !dbg !2944
  br i1 %126, label %127, label %131, !dbg !2944

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2944
  %129 = sext i32 %117 to i64, !dbg !2944
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2944
  br label %135, !dbg !2944

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2944
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2944
  store ptr %134, ptr %4, align 8, !dbg !2944
  br label %135, !dbg !2944

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2944
  %138 = load ptr, ptr %137, align 8, !dbg !2944
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2950
  store ptr %138, ptr %139, align 8, !dbg !2947, !tbaa !759
  %140 = icmp eq ptr %138, null, !dbg !2948
  br i1 %140, label %197, label %141, !dbg !2949

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2938, metadata !DIExpression()), !dbg !2942
  %142 = icmp sgt i32 %136, -1, !dbg !2944
  br i1 %142, label %150, label %143, !dbg !2944

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2944
  store i32 %144, ptr %7, align 8, !dbg !2944
  %145 = icmp ult i32 %136, -7, !dbg !2944
  br i1 %145, label %146, label %150, !dbg !2944

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2944
  %148 = sext i32 %136 to i64, !dbg !2944
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2944
  br label %154, !dbg !2944

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2944
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2944
  store ptr %153, ptr %4, align 8, !dbg !2944
  br label %154, !dbg !2944

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2944
  %157 = load ptr, ptr %156, align 8, !dbg !2944
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2950
  store ptr %157, ptr %158, align 8, !dbg !2947, !tbaa !759
  %159 = icmp eq ptr %157, null, !dbg !2948
  br i1 %159, label %197, label %160, !dbg !2949

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2938, metadata !DIExpression()), !dbg !2942
  %161 = icmp sgt i32 %155, -1, !dbg !2944
  br i1 %161, label %169, label %162, !dbg !2944

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2944
  store i32 %163, ptr %7, align 8, !dbg !2944
  %164 = icmp ult i32 %155, -7, !dbg !2944
  br i1 %164, label %165, label %169, !dbg !2944

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2944
  %167 = sext i32 %155 to i64, !dbg !2944
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2944
  br label %173, !dbg !2944

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2944
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2944
  store ptr %172, ptr %4, align 8, !dbg !2944
  br label %173, !dbg !2944

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2944
  %176 = load ptr, ptr %175, align 8, !dbg !2944
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2950
  store ptr %176, ptr %177, align 8, !dbg !2947, !tbaa !759
  %178 = icmp eq ptr %176, null, !dbg !2948
  br i1 %178, label %197, label %179, !dbg !2949

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2938, metadata !DIExpression()), !dbg !2942
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2938, metadata !DIExpression()), !dbg !2942
  %180 = icmp sgt i32 %174, -1, !dbg !2944
  br i1 %180, label %188, label %181, !dbg !2944

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2944
  store i32 %182, ptr %7, align 8, !dbg !2944
  %183 = icmp ult i32 %174, -7, !dbg !2944
  br i1 %183, label %184, label %188, !dbg !2944

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2944
  %186 = sext i32 %174 to i64, !dbg !2944
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2944
  br label %191, !dbg !2944

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2944
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2944
  store ptr %190, ptr %4, align 8, !dbg !2944
  br label %191, !dbg !2944

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2944
  %193 = load ptr, ptr %192, align 8, !dbg !2944
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2950
  store ptr %193, ptr %194, align 8, !dbg !2947, !tbaa !759
  %195 = icmp eq ptr %193, null, !dbg !2948
  %196 = select i1 %195, i64 9, i64 10, !dbg !2949
  br label %197, !dbg !2949

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2951
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2952
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2953
  ret void, !dbg !2953
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2954 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2963
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2962, metadata !DIExpression(), metadata !2963, metadata ptr %5, metadata !DIExpression()), !dbg !2964
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2958, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2959, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2960, metadata !DIExpression()), !dbg !2964
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2961, metadata !DIExpression()), !dbg !2964
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2965
  call void @llvm.va_start(ptr nonnull %5), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2967
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2967, !tbaa.struct !1113
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2967
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2967
  call void @llvm.va_end(ptr nonnull %5), !dbg !2968
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2969
  ret void, !dbg !2969
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2970 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2971, !tbaa !759
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2971
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #37, !dbg !2972
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #37, !dbg !2972
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2973
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #37, !dbg !2973
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2974
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2974
  ret void, !dbg !2975
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2976 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2981, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2983, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %1, metadata !2988, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %2, metadata !2989, metadata !DIExpression()), !dbg !2990
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2992
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !2998
  %5 = icmp eq ptr %4, null, !dbg !3000
  br i1 %5, label %6, label %7, !dbg !3002

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3003
  unreachable, !dbg !3003

7:                                                ; preds = %3
  ret ptr %4, !dbg !3004
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2986 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2988, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2989, metadata !DIExpression()), !dbg !3005
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3006
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !3007
  %5 = icmp eq ptr %4, null, !dbg !3009
  br i1 %5, label %6, label %7, !dbg !3010

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3011
  unreachable, !dbg !3011

7:                                                ; preds = %3
  ret ptr %4, !dbg !3012
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3013 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3018
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3019
  call void @llvm.dbg.value(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !3020
  %3 = icmp eq ptr %2, null, !dbg !3022
  br i1 %3, label %4, label %5, !dbg !3023

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3024
  unreachable, !dbg !3024

5:                                                ; preds = %1
  ret ptr %2, !dbg !3025
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3026 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3027 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3031, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %0, metadata !3033, metadata !DIExpression()), !dbg !3037
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3039
  call void @llvm.dbg.value(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !3040
  %3 = icmp eq ptr %2, null, !dbg !3042
  br i1 %3, label %4, label %5, !dbg !3043

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3044
  unreachable, !dbg !3044

5:                                                ; preds = %1
  ret ptr %2, !dbg !3045
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3046 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3052
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !3055
  %3 = icmp eq ptr %2, null, !dbg !3057
  br i1 %3, label %4, label %5, !dbg !3058

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3059
  unreachable, !dbg !3059

5:                                                ; preds = %1
  ret ptr %2, !dbg !3060
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3061 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata ptr %0, metadata !3068, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3073
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3075
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3076
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !3077
  %5 = icmp eq ptr %4, null, !dbg !3079
  br i1 %5, label %6, label %7, !dbg !3080

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3081
  unreachable, !dbg !3081

7:                                                ; preds = %2
  ret ptr %4, !dbg !3082
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3083 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3084 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3088, metadata !DIExpression()), !dbg !3090
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata ptr %0, metadata !3068, metadata !DIExpression()), !dbg !3097
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3097
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3099
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !3101
  %5 = icmp eq ptr %4, null, !dbg !3103
  br i1 %5, label %6, label %7, !dbg !3104

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3105
  unreachable, !dbg !3105

7:                                                ; preds = %2
  ret ptr %4, !dbg !3106
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3107 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3111, metadata !DIExpression()), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !3115, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1, metadata !3118, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %2, metadata !3119, metadata !DIExpression()), !dbg !3120
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3122
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !3123
  %5 = icmp eq ptr %4, null, !dbg !3125
  br i1 %5, label %6, label %7, !dbg !3126

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3127
  unreachable, !dbg !3127

7:                                                ; preds = %3
  ret ptr %4, !dbg !3128
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3129 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3133, metadata !DIExpression()), !dbg !3135
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata ptr null, metadata !2985, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %0, metadata !2988, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()), !dbg !3136
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3138
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3139
  %4 = icmp eq ptr %3, null, !dbg !3141
  br i1 %4, label %5, label %6, !dbg !3142

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3143
  unreachable, !dbg !3143

6:                                                ; preds = %2
  ret ptr %3, !dbg !3144
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3145 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3149, metadata !DIExpression()), !dbg !3151
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3150, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr null, metadata !3111, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3152
  call void @llvm.dbg.value(metadata ptr null, metadata !3115, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %0, metadata !3118, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()), !dbg !3154
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3156
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3157
  %4 = icmp eq ptr %3, null, !dbg !3159
  br i1 %4, label %5, label %6, !dbg !3160

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3161
  unreachable, !dbg !3161

6:                                                ; preds = %2
  ret ptr %3, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3163 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3167, metadata !DIExpression()), !dbg !3169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3168, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %0, metadata !695, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %1, metadata !696, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata i64 1, metadata !697, metadata !DIExpression()), !dbg !3170
  %3 = load i64, ptr %1, align 8, !dbg !3172, !tbaa !2237
  call void @llvm.dbg.value(metadata i64 %3, metadata !698, metadata !DIExpression()), !dbg !3170
  %4 = icmp eq ptr %0, null, !dbg !3173
  br i1 %4, label %5, label %8, !dbg !3175

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3176
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3179
  br label %15, !dbg !3179

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3180
  %10 = add nuw i64 %9, 1, !dbg !3180
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3180
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3180
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %13, metadata !698, metadata !DIExpression()), !dbg !3170
  br i1 %12, label %14, label %15, !dbg !3183

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3184
  unreachable, !dbg !3184

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3170
  call void @llvm.dbg.value(metadata i64 %16, metadata !698, metadata !DIExpression()), !dbg !3170
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %16, metadata !2988, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 1, metadata !2989, metadata !DIExpression()), !dbg !3185
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3187
  call void @llvm.dbg.value(metadata ptr %17, metadata !2993, metadata !DIExpression()), !dbg !3188
  %18 = icmp eq ptr %17, null, !dbg !3190
  br i1 %18, label %19, label %20, !dbg !3191

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3192
  unreachable, !dbg !3192

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !695, metadata !DIExpression()), !dbg !3170
  store i64 %16, ptr %1, align 8, !dbg !3193, !tbaa !2237
  ret ptr %17, !dbg !3194
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !690 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !695, metadata !DIExpression()), !dbg !3195
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !696, metadata !DIExpression()), !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !697, metadata !DIExpression()), !dbg !3195
  %4 = load i64, ptr %1, align 8, !dbg !3196, !tbaa !2237
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !698, metadata !DIExpression()), !dbg !3195
  %5 = icmp eq ptr %0, null, !dbg !3197
  br i1 %5, label %6, label %13, !dbg !3198

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3199
  br i1 %7, label %8, label %20, !dbg !3200

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !698, metadata !DIExpression()), !dbg !3195
  %10 = icmp ugt i64 %2, 128, !dbg !3203
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3204
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !698, metadata !DIExpression()), !dbg !3195
  br label %20, !dbg !3205

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3206
  %15 = add nuw i64 %14, 1, !dbg !3206
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3206
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3206
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !698, metadata !DIExpression()), !dbg !3195
  br i1 %17, label %19, label %20, !dbg !3207

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3208
  unreachable, !dbg !3208

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !698, metadata !DIExpression()), !dbg !3195
  call void @llvm.dbg.value(metadata ptr %0, metadata !2985, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %21, metadata !2988, metadata !DIExpression()), !dbg !3209
  call void @llvm.dbg.value(metadata i64 %2, metadata !2989, metadata !DIExpression()), !dbg !3209
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3211
  call void @llvm.dbg.value(metadata ptr %22, metadata !2993, metadata !DIExpression()), !dbg !3212
  %23 = icmp eq ptr %22, null, !dbg !3214
  br i1 %23, label %24, label %25, !dbg !3215

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3216
  unreachable, !dbg !3216

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !695, metadata !DIExpression()), !dbg !3195
  store i64 %21, ptr %1, align 8, !dbg !3217, !tbaa !2237
  ret ptr %22, !dbg !3218
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !711, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !712, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !713, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !714, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !715, metadata !DIExpression()), !dbg !3219
  %6 = load i64, ptr %1, align 8, !dbg !3220, !tbaa !2237
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !716, metadata !DIExpression()), !dbg !3219
  %7 = ashr i64 %6, 1, !dbg !3221
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3221
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3221
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3221
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !717, metadata !DIExpression()), !dbg !3219
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !717, metadata !DIExpression()), !dbg !3219
  %12 = icmp sgt i64 %3, -1, !dbg !3224
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3226
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3226
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !717, metadata !DIExpression()), !dbg !3219
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3227
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3227
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !718, metadata !DIExpression()), !dbg !3219
  %18 = icmp slt i64 %17, 128, !dbg !3227
  %19 = select i1 %18, i64 128, i64 0, !dbg !3227
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !719, metadata !DIExpression()), !dbg !3219
  %21 = icmp eq i64 %20, 0, !dbg !3228
  br i1 %21, label %28, label %22, !dbg !3230

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3231
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !717, metadata !DIExpression()), !dbg !3219
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !718, metadata !DIExpression()), !dbg !3219
  br label %28, !dbg !3234

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3219
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !718, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !717, metadata !DIExpression()), !dbg !3219
  %31 = icmp eq ptr %0, null, !dbg !3235
  br i1 %31, label %32, label %33, !dbg !3237

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3238, !tbaa !2237
  br label %33, !dbg !3239

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3240
  %35 = icmp slt i64 %34, %2, !dbg !3242
  br i1 %35, label %36, label %48, !dbg !3243

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3244
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3244
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !717, metadata !DIExpression()), !dbg !3219
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3245
  br i1 %42, label %47, label %43, !dbg !3245

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3246
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3246
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3246
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !718, metadata !DIExpression()), !dbg !3219
  br i1 %45, label %47, label %48, !dbg !3247

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3248
  unreachable, !dbg !3248

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3219
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !718, metadata !DIExpression()), !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !717, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %50, metadata !3066, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %0, metadata !3068, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i64 %50, metadata !3072, metadata !DIExpression()), !dbg !3251
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3253
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %52, metadata !2993, metadata !DIExpression()), !dbg !3255
  %53 = icmp eq ptr %52, null, !dbg !3257
  br i1 %53, label %54, label %55, !dbg !3258

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3259
  unreachable, !dbg !3259

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !711, metadata !DIExpression()), !dbg !3219
  store i64 %49, ptr %1, align 8, !dbg !3260, !tbaa !2237
  ret ptr %52, !dbg !3261
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3262 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 1, metadata !3269, metadata !DIExpression()), !dbg !3270
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3272
  call void @llvm.dbg.value(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !3273
  %3 = icmp eq ptr %2, null, !dbg !3275
  br i1 %3, label %4, label %5, !dbg !3276

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3277
  unreachable, !dbg !3277

5:                                                ; preds = %1
  ret ptr %2, !dbg !3278
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3279 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3280
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()), !dbg !3280
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3281
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3282
  %4 = icmp eq ptr %3, null, !dbg !3284
  br i1 %4, label %5, label %6, !dbg !3285

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3286
  unreachable, !dbg !3286

6:                                                ; preds = %2
  ret ptr %3, !dbg !3287
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3288 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 1, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %0, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 1, metadata !3301, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %0, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 1, metadata !3301, metadata !DIExpression()), !dbg !3302
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3304
  call void @llvm.dbg.value(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !3305
  %3 = icmp eq ptr %2, null, !dbg !3307
  br i1 %3, label %4, label %5, !dbg !3308

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3309
  unreachable, !dbg !3309

5:                                                ; preds = %1
  ret ptr %2, !dbg !3310
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3293 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata i64 %0, metadata !3298, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %0, metadata !3298, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3312
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3314
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3315
  %4 = icmp eq ptr %3, null, !dbg !3317
  br i1 %4, label %5, label %6, !dbg !3318

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3319
  unreachable, !dbg !3319

6:                                                ; preds = %2
  ret ptr %3, !dbg !3320
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3321 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3325, metadata !DIExpression()), !dbg !3327
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3328
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3330
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3331
  %4 = icmp eq ptr %3, null, !dbg !3333
  br i1 %4, label %5, label %6, !dbg !3334

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3335
  unreachable, !dbg !3335

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3336, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3346
  ret ptr %3, !dbg !3347
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3352, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3031, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3357
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3359
  call void @llvm.dbg.value(metadata ptr %3, metadata !2993, metadata !DIExpression()), !dbg !3360
  %4 = icmp eq ptr %3, null, !dbg !3362
  br i1 %4, label %5, label %6, !dbg !3363

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3364
  unreachable, !dbg !3364

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3336, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3365
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3367
  ret ptr %3, !dbg !3368
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3369 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3373, metadata !DIExpression()), !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3374, metadata !DIExpression()), !dbg !3376
  %3 = add nsw i64 %1, 1, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %3, metadata !3031, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %3, metadata !3033, metadata !DIExpression()), !dbg !3380
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3382
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !3383
  %5 = icmp eq ptr %4, null, !dbg !3385
  br i1 %5, label %6, label %7, !dbg !3386

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3387
  unreachable, !dbg !3387

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3375, metadata !DIExpression()), !dbg !3376
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3388
  store i8 0, ptr %8, align 1, !dbg !3389, !tbaa !828
  call void @llvm.dbg.value(metadata ptr %4, metadata !3336, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3390
  call void @llvm.dbg.value(metadata i64 %1, metadata !3343, metadata !DIExpression()), !dbg !3390
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3392
  ret ptr %4, !dbg !3393
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3394 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3397
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3398
  %3 = add i64 %2, 1, !dbg !3399
  call void @llvm.dbg.value(metadata ptr %0, metadata !3325, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3326, metadata !DIExpression()), !dbg !3400
  call void @llvm.dbg.value(metadata i64 %3, metadata !3017, metadata !DIExpression()), !dbg !3402
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3404
  call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !3405
  %5 = icmp eq ptr %4, null, !dbg !3407
  br i1 %5, label %6, label %7, !dbg !3408

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3409
  unreachable, !dbg !3409

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3336, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata ptr %0, metadata !3342, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %3, metadata !3343, metadata !DIExpression()), !dbg !3410
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3412
  ret ptr %4, !dbg !3413
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3414 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3419, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3416, metadata !DIExpression()), !dbg !3420
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #37, !dbg !3419
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #37, !dbg !3419
  %3 = icmp eq i32 %1, 0, !dbg !3419
  tail call void @llvm.assume(i1 %3), !dbg !3419
  tail call void @abort() #39, !dbg !3421
  unreachable, !dbg !3421
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3422 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3460, metadata !DIExpression()), !dbg !3465
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3461, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3467, metadata !DIExpression()), !dbg !3470
  %3 = load i32, ptr %0, align 8, !dbg !3472, !tbaa !3473
  %4 = and i32 %3, 32, !dbg !3474
  %5 = icmp eq i32 %4, 0, !dbg !3474
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3463, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3465
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3475
  %7 = icmp eq i32 %6, 0, !dbg !3476
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3464, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3465
  br i1 %5, label %8, label %18, !dbg !3477

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3479
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3465
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3480
  %11 = xor i1 %7, true, !dbg !3480
  %12 = sext i1 %11 to i32, !dbg !3480
  br i1 %10, label %21, label %13, !dbg !3480

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3481
  %15 = load i32, ptr %14, align 4, !dbg !3481, !tbaa !819
  %16 = icmp ne i32 %15, 9, !dbg !3482
  %17 = sext i1 %16 to i32, !dbg !3483
  br label %21, !dbg !3483

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3484

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3486
  store i32 0, ptr %20, align 4, !dbg !3488, !tbaa !819
  br label %21, !dbg !3486

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3465
  ret i32 %22, !dbg !3489
}

; Function Attrs: nounwind
declare !dbg !3490 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3536
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3533, metadata !DIExpression()), !dbg !3536
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3537
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3534, metadata !DIExpression()), !dbg !3536
  %3 = icmp slt i32 %2, 0, !dbg !3538
  br i1 %3, label %4, label %6, !dbg !3540

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3541
  br label %24, !dbg !3542

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3543
  %8 = icmp eq i32 %7, 0, !dbg !3543
  br i1 %8, label %13, label %9, !dbg !3545

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3546
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3547
  %12 = icmp eq i64 %11, -1, !dbg !3548
  br i1 %12, label %16, label %13, !dbg !3549

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3550
  %15 = icmp eq i32 %14, 0, !dbg !3550
  br i1 %15, label %16, label %18, !dbg !3551

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3533, metadata !DIExpression()), !dbg !3536
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3535, metadata !DIExpression()), !dbg !3536
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3535, metadata !DIExpression()), !dbg !3536
  br label %24, !dbg !3553

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3554
  %20 = load i32, ptr %19, align 4, !dbg !3554, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3533, metadata !DIExpression()), !dbg !3536
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3535, metadata !DIExpression()), !dbg !3536
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3552
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3535, metadata !DIExpression()), !dbg !3536
  %22 = icmp eq i32 %20, 0, !dbg !3555
  br i1 %22, label %24, label %23, !dbg !3553

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3557, !tbaa !819
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3535, metadata !DIExpression()), !dbg !3536
  br label %24, !dbg !3559

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3536
  ret i32 %25, !dbg !3560
}

; Function Attrs: nofree nounwind
declare !dbg !3561 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3562 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3563 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3564 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3567 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3605, metadata !DIExpression()), !dbg !3606
  %2 = icmp eq ptr %0, null, !dbg !3607
  br i1 %2, label %6, label %3, !dbg !3609

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3610
  %5 = icmp eq i32 %4, 0, !dbg !3610
  br i1 %5, label %6, label %8, !dbg !3611

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3612
  br label %16, !dbg !3613

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3614, metadata !DIExpression()), !dbg !3619
  %9 = load i32, ptr %0, align 8, !dbg !3621, !tbaa !3473
  %10 = and i32 %9, 256, !dbg !3623
  %11 = icmp eq i32 %10, 0, !dbg !3623
  br i1 %11, label %14, label %12, !dbg !3624

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3625
  br label %14, !dbg !3625

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3626
  br label %16, !dbg !3627

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3606
  ret i32 %17, !dbg !3628
}

; Function Attrs: nofree nounwind
declare !dbg !3629 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3630 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3669, metadata !DIExpression()), !dbg !3675
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3670, metadata !DIExpression()), !dbg !3675
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3671, metadata !DIExpression()), !dbg !3675
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3676
  %5 = load ptr, ptr %4, align 8, !dbg !3676, !tbaa !3677
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3678
  %7 = load ptr, ptr %6, align 8, !dbg !3678, !tbaa !3679
  %8 = icmp eq ptr %5, %7, !dbg !3680
  br i1 %8, label %9, label %27, !dbg !3681

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3682
  %11 = load ptr, ptr %10, align 8, !dbg !3682, !tbaa !1226
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3683
  %13 = load ptr, ptr %12, align 8, !dbg !3683, !tbaa !3684
  %14 = icmp eq ptr %11, %13, !dbg !3685
  br i1 %14, label %15, label %27, !dbg !3686

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3687
  %17 = load ptr, ptr %16, align 8, !dbg !3687, !tbaa !3688
  %18 = icmp eq ptr %17, null, !dbg !3689
  br i1 %18, label %19, label %27, !dbg !3690

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3691
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3672, metadata !DIExpression()), !dbg !3693
  %22 = icmp eq i64 %21, -1, !dbg !3694
  br i1 %22, label %29, label %23, !dbg !3696

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3697, !tbaa !3473
  %25 = and i32 %24, -17, !dbg !3697
  store i32 %25, ptr %0, align 8, !dbg !3697, !tbaa !3473
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3698
  store i64 %21, ptr %26, align 8, !dbg !3699, !tbaa !3700
  br label %29, !dbg !3701

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3702
  br label %29, !dbg !3703

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3675
  ret i32 %30, !dbg !3704
}

; Function Attrs: nofree nounwind
declare !dbg !3705 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3708 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3713, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3714, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3715, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3716, metadata !DIExpression()), !dbg !3718
  %5 = icmp eq ptr %1, null, !dbg !3719
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3721
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3721
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3721
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3715, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3714, metadata !DIExpression()), !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3713, metadata !DIExpression()), !dbg !3718
  %9 = icmp eq ptr %3, null, !dbg !3722
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3724
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3716, metadata !DIExpression()), !dbg !3718
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3725
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3717, metadata !DIExpression()), !dbg !3718
  %12 = icmp ult i64 %11, -3, !dbg !3726
  br i1 %12, label %13, label %17, !dbg !3728

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3729
  %15 = icmp eq i32 %14, 0, !dbg !3729
  br i1 %15, label %16, label %29, !dbg !3730

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3731, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr %10, metadata !3738, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 0, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i64 8, metadata !3742, metadata !DIExpression()), !dbg !3743
  store i64 0, ptr %10, align 1, !dbg !3745
  br label %29, !dbg !3746

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3747
  br i1 %18, label %19, label %20, !dbg !3749

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3750
  unreachable, !dbg !3750

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3751

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3753
  br i1 %23, label %29, label %24, !dbg !3754

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3755
  br i1 %25, label %29, label %26, !dbg !3758

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3759, !tbaa !828
  %28 = zext i8 %27 to i32, !dbg !3760
  store i32 %28, ptr %6, align 4, !dbg !3761, !tbaa !819
  br label %29, !dbg !3762

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3718
  ret i64 %30, !dbg !3763
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3764 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3770 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3772, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3773, metadata !DIExpression()), !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3774, metadata !DIExpression()), !dbg !3776
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3777
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3775, metadata !DIExpression()), !dbg !3776
  br i1 %5, label %6, label %8, !dbg !3779

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3780
  store i32 12, ptr %7, align 4, !dbg !3782, !tbaa !819
  br label %12, !dbg !3783

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3777
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %0, metadata !3784, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.value(metadata i64 %9, metadata !3787, metadata !DIExpression()), !dbg !3788
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3790
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3791
  br label %12, !dbg !3792

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3776
  ret ptr %13, !dbg !3793
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3794 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3803
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3799, metadata !DIExpression(), metadata !3803, metadata ptr %2, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3798, metadata !DIExpression()), !dbg !3804
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3805
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3806
  %4 = icmp eq i32 %3, 0, !dbg !3806
  br i1 %4, label %5, label %12, !dbg !3808

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3809, metadata !DIExpression()), !dbg !3813
  call void @llvm.dbg.value(metadata ptr @.str.123, metadata !3812, metadata !DIExpression()), !dbg !3813
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.123, i64 2), !dbg !3816
  %7 = icmp eq i32 %6, 0, !dbg !3817
  br i1 %7, label %11, label %8, !dbg !3818

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3809, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr @.str.1.124, metadata !3812, metadata !DIExpression()), !dbg !3819
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.124, i64 6), !dbg !3821
  %10 = icmp eq i32 %9, 0, !dbg !3822
  br i1 %10, label %11, label %12, !dbg !3823

11:                                               ; preds = %8, %5
  br label %12, !dbg !3824

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3804
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3825
  ret i1 %13, !dbg !3825
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3826 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3830, metadata !DIExpression()), !dbg !3833
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3831, metadata !DIExpression()), !dbg !3833
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3832, metadata !DIExpression()), !dbg !3833
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3834
  ret i32 %4, !dbg !3835
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3836 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3840, metadata !DIExpression()), !dbg !3841
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3842
  ret ptr %2, !dbg !3843
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3844 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3848
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3847, metadata !DIExpression()), !dbg !3848
  ret ptr %2, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3851 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3854, metadata !DIExpression()), !dbg !3860
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3855, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3861
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3863
  call void @llvm.dbg.value(metadata ptr %4, metadata !3847, metadata !DIExpression()), !dbg !3861
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3856, metadata !DIExpression()), !dbg !3860
  %5 = icmp eq ptr %4, null, !dbg !3864
  br i1 %5, label %6, label %9, !dbg !3865

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3866
  br i1 %7, label %19, label %8, !dbg !3869

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3870, !tbaa !828
  br label %19, !dbg !3871

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3872
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3857, metadata !DIExpression()), !dbg !3873
  %11 = icmp ult i64 %10, %2, !dbg !3874
  br i1 %11, label %12, label %14, !dbg !3876

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3877
  call void @llvm.dbg.value(metadata ptr %1, metadata !3879, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata ptr %4, metadata !3882, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.value(metadata i64 %13, metadata !3883, metadata !DIExpression()), !dbg !3884
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3886
  br label %19, !dbg !3887

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3888
  br i1 %15, label %19, label %16, !dbg !3891

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3892
  call void @llvm.dbg.value(metadata ptr %1, metadata !3879, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata ptr %4, metadata !3882, metadata !DIExpression()), !dbg !3894
  call void @llvm.dbg.value(metadata i64 %17, metadata !3883, metadata !DIExpression()), !dbg !3894
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3896
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3897
  store i8 0, ptr %18, align 1, !dbg !3898, !tbaa !828
  br label %19, !dbg !3899

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3900
  ret i32 %20, !dbg !3901
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
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { cold }
attributes #43 = { nounwind allocsize(1) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !301, !305, !320, !644, !678, !379, !400, !414, !465, !680, !636, !686, !721, !723, !725, !727, !729, !660, !731, !733, !735, !737}
!llvm.ident = !{!739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739}
!llvm.module.flags = !{!740, !741, !742, !743, !744, !745, !746, !747}

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
!95 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!319 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !320, file: !321, line: 66, type: !371, isLocal: false, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C11, file: !321, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !322, globals: !323, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!322 = !{!91, !101}
!323 = !{!324, !326, !350, !352, !354, !356, !318, !358, !360, !362, !364, !369}
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !321, line: 272, type: !105, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "old_file_name", scope: !328, file: !321, line: 304, type: !70, isLocal: true, isDefinition: true)
!328 = distinct !DISubprogram(name: "verror_at_line", scope: !321, file: !321, line: 298, type: !329, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !343)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !97, !97, !70, !76, !70, !331}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 52, baseType: !333)
!332 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !334, line: 12, baseType: !335)
!334 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !321, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !337)
!337 = !{!338, !339, !340, !341, !342}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !336, file: !321, baseType: !91, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !336, file: !321, baseType: !91, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !336, file: !321, baseType: !91, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !336, file: !321, baseType: !97, size: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !336, file: !321, baseType: !97, size: 32, offset: 224)
!343 = !{!344, !345, !346, !347, !348, !349}
!344 = !DILocalVariable(name: "status", arg: 1, scope: !328, file: !321, line: 298, type: !97)
!345 = !DILocalVariable(name: "errnum", arg: 2, scope: !328, file: !321, line: 298, type: !97)
!346 = !DILocalVariable(name: "file_name", arg: 3, scope: !328, file: !321, line: 298, type: !70)
!347 = !DILocalVariable(name: "line_number", arg: 4, scope: !328, file: !321, line: 298, type: !76)
!348 = !DILocalVariable(name: "message", arg: 5, scope: !328, file: !321, line: 298, type: !70)
!349 = !DILocalVariable(name: "args", arg: 6, scope: !328, file: !321, line: 298, type: !331)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "old_line_number", scope: !328, file: !321, line: 305, type: !76, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !321, line: 338, type: !112, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !144, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !321, line: 346, type: !122, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(name: "error_message_count", scope: !320, file: !321, line: 69, type: !76, isLocal: false, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !320, file: !321, line: 295, type: !97, isLocal: false, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !19, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !321, line: 208, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 21)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !321, line: 214, type: !105, isLocal: true, isDefinition: true)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null}
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !376, line: 60, type: !122, isLocal: true, isDefinition: true)
!376 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "long_options", scope: !379, file: !376, line: 34, type: !388, isLocal: true, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C11, file: !376, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, globals: !381, splitDebugInlining: false, nameTableKind: None)
!380 = !{!91}
!381 = !{!374, !382, !384, !386, !377}
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !376, line: 112, type: !34, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !376, line: 36, type: !105, isLocal: true, isDefinition: true)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !376, line: 37, type: !144, isLocal: true, isDefinition: true)
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
!400 = distinct !DICompileUnit(language: DW_LANG_C11, file: !401, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !402, globals: !403, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!402 = !{!91, !246}
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
!414 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !415, splitDebugInlining: false, nameTableKind: None)
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
!465 = distinct !DICompileUnit(language: DW_LANG_C11, file: !441, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !466, retainedTypes: !486, globals: !487, splitDebugInlining: false, nameTableKind: None)
!466 = !{!467, !481, !74}
!467 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !468, line: 42, baseType: !76, size: 32, elements: !469)
!468 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!486 = !{!91, !97, !98, !99}
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
!636 = distinct !DICompileUnit(language: DW_LANG_C11, file: !637, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !638, splitDebugInlining: false, nameTableKind: None)
!637 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!638 = !{!634}
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 47)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "exit_failure", scope: !644, file: !645, line: 24, type: !647, isLocal: false, isDefinition: true)
!644 = distinct !DICompileUnit(language: DW_LANG_C11, file: !645, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !646, splitDebugInlining: false, nameTableKind: None)
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
!660 = distinct !DICompileUnit(language: DW_LANG_C11, file: !657, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !661, globals: !662, splitDebugInlining: false, nameTableKind: None)
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
!678 = distinct !DICompileUnit(language: DW_LANG_C11, file: !679, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!679 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !557, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !681, retainedTypes: !380, globals: !685, splitDebugInlining: false, nameTableKind: None)
!681 = !{!682}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !557, line: 40, baseType: !76, size: 32, elements: !683)
!683 = !{!684}
!684 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!685 = !{!555, !558, !560, !562, !564, !566, !571, !576, !578, !580, !585, !590, !595, !597, !602, !607, !612, !617, !619, !621, !623, !625, !627, !629}
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !688, retainedTypes: !720, splitDebugInlining: false, nameTableKind: None)
!687 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!688 = !{!689, !701}
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !690, file: !687, line: 188, baseType: !76, size: 32, elements: !699)
!690 = distinct !DISubprogram(name: "x2nrealloc", scope: !687, file: !687, line: 176, type: !691, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !694)
!691 = !DISubroutineType(types: !692)
!692 = !{!91, !91, !693, !99}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!694 = !{!695, !696, !697, !698}
!695 = !DILocalVariable(name: "p", arg: 1, scope: !690, file: !687, line: 176, type: !91)
!696 = !DILocalVariable(name: "pn", arg: 2, scope: !690, file: !687, line: 176, type: !693)
!697 = !DILocalVariable(name: "s", arg: 3, scope: !690, file: !687, line: 176, type: !99)
!698 = !DILocalVariable(name: "n", scope: !690, file: !687, line: 178, type: !99)
!699 = !{!700}
!700 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!701 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !702, file: !687, line: 228, baseType: !76, size: 32, elements: !699)
!702 = distinct !DISubprogram(name: "xpalloc", scope: !687, file: !687, line: 223, type: !703, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !710)
!703 = !DISubroutineType(types: !704)
!704 = !{!91, !91, !705, !706, !708, !706}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !707, line: 130, baseType: !708)
!707 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !709, line: 18, baseType: !266)
!709 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719}
!711 = !DILocalVariable(name: "pa", arg: 1, scope: !702, file: !687, line: 223, type: !91)
!712 = !DILocalVariable(name: "pn", arg: 2, scope: !702, file: !687, line: 223, type: !705)
!713 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !702, file: !687, line: 223, type: !706)
!714 = !DILocalVariable(name: "n_max", arg: 4, scope: !702, file: !687, line: 223, type: !708)
!715 = !DILocalVariable(name: "s", arg: 5, scope: !702, file: !687, line: 223, type: !706)
!716 = !DILocalVariable(name: "n0", scope: !702, file: !687, line: 230, type: !706)
!717 = !DILocalVariable(name: "n", scope: !702, file: !687, line: 237, type: !706)
!718 = !DILocalVariable(name: "nbytes", scope: !702, file: !687, line: 248, type: !706)
!719 = !DILocalVariable(name: "adjusted_nbytes", scope: !702, file: !687, line: 252, type: !706)
!720 = !{!246, !91}
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !650, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !722, splitDebugInlining: false, nameTableKind: None)
!722 = !{!648, !651, !653}
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !734, splitDebugInlining: false, nameTableKind: None)
!734 = !{!673, !676}
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !380, splitDebugInlining: false, nameTableKind: None)
!738 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!739 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!740 = !{i32 7, !"Dwarf Version", i32 5}
!741 = !{i32 2, !"Debug Info Version", i32 3}
!742 = !{i32 1, !"wchar_size", i32 4}
!743 = !{i32 8, !"PIC Level", i32 2}
!744 = !{i32 7, !"PIE Level", i32 2}
!745 = !{i32 7, !"uwtable", i32 2}
!746 = !{i32 7, !"frame-pointer", i32 1}
!747 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!787 = !{}
!788 = !DILocation(line: 857, column: 3, scope: !769, inlinedAt: !786)
!789 = !DILocation(line: 861, column: 29, scope: !769, inlinedAt: !786)
!790 = !DILocation(line: 862, column: 7, scope: !791, inlinedAt: !786)
!791 = distinct !DILexicalBlock(scope: !769, file: !67, line: 862, column: 7)
!792 = !DILocation(line: 862, column: 19, scope: !791, inlinedAt: !786)
!793 = !DILocation(line: 862, column: 22, scope: !791, inlinedAt: !786)
!794 = !DILocation(line: 862, column: 7, scope: !769, inlinedAt: !786)
!795 = !DILocation(line: 868, column: 7, scope: !796, inlinedAt: !786)
!796 = distinct !DILexicalBlock(scope: !791, file: !67, line: 863, column: 5)
!797 = !DILocation(line: 870, column: 5, scope: !796, inlinedAt: !786)
!798 = !DILocation(line: 875, column: 3, scope: !769, inlinedAt: !786)
!799 = !DILocation(line: 877, column: 3, scope: !769, inlinedAt: !786)
!800 = !DILocation(line: 52, column: 3, scope: !748)
!801 = !DISubprogram(name: "dcgettext", scope: !802, file: !802, line: 51, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!802 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!803 = !DISubroutineType(types: !804)
!804 = !{!246, !70, !70, !97}
!805 = !DISubprogram(name: "__fprintf_chk", scope: !806, file: !806, line: 93, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!807 = !DISubroutineType(types: !808)
!808 = !{!97, !809, !97, !810, null}
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !238)
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!811 = !DISubprogram(name: "__printf_chk", scope: !806, file: !806, line: 95, type: !812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DISubroutineType(types: !813)
!813 = !{!97, !97, !810, null}
!814 = !DISubprogram(name: "fputs_unlocked", scope: !332, file: !332, line: 691, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!931 = !DISubprogram(name: "setlocale", scope: !932, file: !932, line: 122, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!932 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!933 = !DISubroutineType(types: !934)
!934 = !{!246, !97, !70}
!935 = !DISubprogram(name: "strncmp", scope: !936, file: !936, line: 159, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!937 = !DISubroutineType(types: !938)
!938 = !{!97, !70, !70, !99}
!939 = !DISubprogram(name: "exit", scope: !940, file: !940, line: 624, type: !749, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!940 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!941 = !DISubprogram(name: "getenv", scope: !940, file: !940, line: 641, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!246, !70}
!944 = !DISubprogram(name: "strcmp", scope: !936, file: !936, line: 156, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{!97, !70, !70}
!947 = !DISubprogram(name: "strspn", scope: !936, file: !936, line: 297, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{!96, !70, !70}
!950 = !DISubprogram(name: "strchr", scope: !936, file: !936, line: 246, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!246, !70, !97}
!953 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!959 = !DISubprogram(name: "strcspn", scope: !936, file: !936, line: 293, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubprogram(name: "fwrite_unlocked", scope: !332, file: !332, line: 704, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1025 = !DISubprogram(name: "bindtextdomain", scope: !802, file: !802, line: 86, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!246, !70, !70}
!1028 = !DISubprogram(name: "textdomain", scope: !802, file: !802, line: 82, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1029 = !DISubprogram(name: "atexit", scope: !940, file: !940, line: 602, type: !1030, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!97, !371}
!1032 = !DISubprogram(name: "__errno_location", scope: !1033, file: !1033, line: 37, type: !1034, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1033 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!396}
!1036 = !DISubprogram(name: "geteuid", scope: !1037, file: !1037, line: 700, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!976}
!1040 = !DISubprogram(name: "getpwuid", scope: !981, file: !981, line: 110, type: !1041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!979, !976}
!1043 = !DISubprogram(name: "puts", scope: !332, file: !332, line: 661, type: !1044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!1062 = distinct !DISubprogram(name: "close_stdout", scope: !306, file: !306, line: 116, type: !372, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !305, retainedNodes: !1063)
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
!1095 = !DISubprogram(name: "_exit", scope: !1037, file: !1037, line: 624, type: !749, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1096 = distinct !DISubprogram(name: "verror", scope: !321, file: !321, line: 251, type: !1097, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{null, !97, !97, !70, !331}
!1099 = !{!1100, !1101, !1102, !1103}
!1100 = !DILocalVariable(name: "status", arg: 1, scope: !1096, file: !321, line: 251, type: !97)
!1101 = !DILocalVariable(name: "errnum", arg: 2, scope: !1096, file: !321, line: 251, type: !97)
!1102 = !DILocalVariable(name: "message", arg: 3, scope: !1096, file: !321, line: 251, type: !70)
!1103 = !DILocalVariable(name: "args", arg: 4, scope: !1096, file: !321, line: 251, type: !331)
!1104 = !DILocation(line: 0, scope: !1096)
!1105 = !DILocation(line: 261, column: 3, scope: !1096)
!1106 = !DILocation(line: 265, column: 7, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1096, file: !321, line: 265, column: 7)
!1108 = !DILocation(line: 265, column: 7, scope: !1096)
!1109 = !DILocation(line: 266, column: 5, scope: !1107)
!1110 = !DILocation(line: 272, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !321, line: 268, column: 5)
!1112 = !DILocation(line: 276, column: 3, scope: !1096)
!1113 = !{i64 0, i64 8, !759, i64 8, i64 8, !759, i64 16, i64 8, !759, i64 24, i64 4, !819, i64 28, i64 4, !819}
!1114 = !DILocation(line: 282, column: 1, scope: !1096)
!1115 = distinct !DISubprogram(name: "flush_stdout", scope: !321, file: !321, line: 163, type: !372, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1116)
!1116 = !{!1117}
!1117 = !DILocalVariable(name: "stdout_fd", scope: !1115, file: !321, line: 166, type: !97)
!1118 = !DILocation(line: 0, scope: !1115)
!1119 = !DILocalVariable(name: "fd", arg: 1, scope: !1120, file: !321, line: 145, type: !97)
!1120 = distinct !DISubprogram(name: "is_open", scope: !321, file: !321, line: 145, type: !1121, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!97, !97}
!1123 = !{!1119}
!1124 = !DILocation(line: 0, scope: !1120, inlinedAt: !1125)
!1125 = distinct !DILocation(line: 182, column: 25, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1115, file: !321, line: 182, column: 7)
!1127 = !DILocation(line: 157, column: 15, scope: !1120, inlinedAt: !1125)
!1128 = !DILocation(line: 157, column: 12, scope: !1120, inlinedAt: !1125)
!1129 = !DILocation(line: 182, column: 7, scope: !1115)
!1130 = !DILocation(line: 184, column: 5, scope: !1126)
!1131 = !DILocation(line: 185, column: 1, scope: !1115)
!1132 = distinct !DISubprogram(name: "error_tail", scope: !321, file: !321, line: 219, type: !1097, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1133)
!1133 = !{!1134, !1135, !1136, !1137}
!1134 = !DILocalVariable(name: "status", arg: 1, scope: !1132, file: !321, line: 219, type: !97)
!1135 = !DILocalVariable(name: "errnum", arg: 2, scope: !1132, file: !321, line: 219, type: !97)
!1136 = !DILocalVariable(name: "message", arg: 3, scope: !1132, file: !321, line: 219, type: !70)
!1137 = !DILocalVariable(name: "args", arg: 4, scope: !1132, file: !321, line: 219, type: !331)
!1138 = distinct !DIAssignID()
!1139 = !DILocation(line: 0, scope: !1132)
!1140 = !DILocation(line: 229, column: 13, scope: !1132)
!1141 = !DILocation(line: 135, column: 10, scope: !1142, inlinedAt: !1184)
!1142 = distinct !DISubprogram(name: "vfprintf", scope: !806, file: !806, line: 132, type: !1143, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1180)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!97, !1145, !810, !333}
!1145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1146)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !1149)
!1149 = !{!1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1148, file: !242, line: 51, baseType: !97, size: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1148, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1148, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1148, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1148, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1148, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1148, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1148, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1148, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1148, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1148, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1148, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1148, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1148, file: !242, line: 70, baseType: !1164, size: 64, offset: 832)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1148, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1148, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1148, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1148, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1148, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1148, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1148, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1148, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1148, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1148, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1148, file: !242, line: 93, baseType: !1164, size: 64, offset: 1344)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1148, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1148, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1148, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1148, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!1180 = !{!1181, !1182, !1183}
!1181 = !DILocalVariable(name: "__stream", arg: 1, scope: !1142, file: !806, line: 132, type: !1145)
!1182 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1142, file: !806, line: 133, type: !810)
!1183 = !DILocalVariable(name: "__ap", arg: 3, scope: !1142, file: !806, line: 133, type: !333)
!1184 = distinct !DILocation(line: 229, column: 3, scope: !1132)
!1185 = !{!1186, !1188}
!1186 = distinct !{!1186, !1187, !"vfprintf.inline: argument 0"}
!1187 = distinct !{!1187, !"vfprintf.inline"}
!1188 = distinct !{!1188, !1187, !"vfprintf.inline: argument 1"}
!1189 = !DILocation(line: 229, column: 3, scope: !1132)
!1190 = !DILocation(line: 0, scope: !1142, inlinedAt: !1184)
!1191 = !DILocation(line: 232, column: 3, scope: !1132)
!1192 = !DILocation(line: 233, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1132, file: !321, line: 233, column: 7)
!1194 = !DILocation(line: 233, column: 7, scope: !1132)
!1195 = !DILocalVariable(name: "errbuf", scope: !1196, file: !321, line: 193, type: !1200)
!1196 = distinct !DISubprogram(name: "print_errno_message", scope: !321, file: !321, line: 188, type: !749, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1197)
!1197 = !{!1198, !1199, !1195}
!1198 = !DILocalVariable(name: "errnum", arg: 1, scope: !1196, file: !321, line: 188, type: !97)
!1199 = !DILocalVariable(name: "s", scope: !1196, file: !321, line: 190, type: !70)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 1024)
!1203 = !DILocation(line: 0, scope: !1196, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 234, column: 5, scope: !1193)
!1205 = !DILocation(line: 193, column: 3, scope: !1196, inlinedAt: !1204)
!1206 = !DILocation(line: 195, column: 7, scope: !1196, inlinedAt: !1204)
!1207 = !DILocation(line: 207, column: 9, scope: !1208, inlinedAt: !1204)
!1208 = distinct !DILexicalBlock(scope: !1196, file: !321, line: 207, column: 7)
!1209 = !DILocation(line: 207, column: 7, scope: !1196, inlinedAt: !1204)
!1210 = !DILocation(line: 208, column: 9, scope: !1208, inlinedAt: !1204)
!1211 = !DILocation(line: 208, column: 5, scope: !1208, inlinedAt: !1204)
!1212 = !DILocation(line: 214, column: 3, scope: !1196, inlinedAt: !1204)
!1213 = !DILocation(line: 216, column: 1, scope: !1196, inlinedAt: !1204)
!1214 = !DILocation(line: 234, column: 5, scope: !1193)
!1215 = !DILocation(line: 238, column: 3, scope: !1132)
!1216 = !DILocalVariable(name: "__c", arg: 1, scope: !1217, file: !1218, line: 101, type: !97)
!1217 = distinct !DISubprogram(name: "putc_unlocked", scope: !1218, file: !1218, line: 101, type: !1219, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1221)
!1218 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!97, !97, !1146}
!1221 = !{!1216, !1222}
!1222 = !DILocalVariable(name: "__stream", arg: 2, scope: !1217, file: !1218, line: 101, type: !1146)
!1223 = !DILocation(line: 0, scope: !1217, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 238, column: 3, scope: !1132)
!1225 = !DILocation(line: 103, column: 10, scope: !1217, inlinedAt: !1224)
!1226 = !{!1227, !760, i64 40}
!1227 = !{!"_IO_FILE", !820, i64 0, !760, i64 8, !760, i64 16, !760, i64 24, !760, i64 32, !760, i64 40, !760, i64 48, !760, i64 56, !760, i64 64, !760, i64 72, !760, i64 80, !760, i64 88, !760, i64 96, !760, i64 104, !820, i64 112, !820, i64 116, !1228, i64 120, !861, i64 128, !761, i64 130, !761, i64 131, !760, i64 136, !1228, i64 144, !760, i64 152, !760, i64 160, !760, i64 168, !760, i64 176, !1228, i64 184, !820, i64 192, !761, i64 196}
!1228 = !{!"long", !761, i64 0}
!1229 = !{!1227, !760, i64 48}
!1230 = !{!"branch_weights", i32 2000, i32 1}
!1231 = !DILocation(line: 240, column: 3, scope: !1132)
!1232 = !DILocation(line: 241, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1132, file: !321, line: 241, column: 7)
!1234 = !DILocation(line: 241, column: 7, scope: !1132)
!1235 = !DILocation(line: 242, column: 5, scope: !1233)
!1236 = !DILocation(line: 243, column: 1, scope: !1132)
!1237 = !DISubprogram(name: "__vfprintf_chk", scope: !806, file: !806, line: 96, type: !1238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!97, !1145, !97, !810, !333}
!1240 = !DISubprogram(name: "strerror_r", scope: !936, file: !936, line: 444, type: !1241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!246, !97, !246, !99}
!1243 = !DISubprogram(name: "__overflow", scope: !332, file: !332, line: 886, type: !1244, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{!97, !1146, !97}
!1246 = !DISubprogram(name: "fflush_unlocked", scope: !332, file: !332, line: 239, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!97, !1146}
!1249 = !DISubprogram(name: "fcntl", scope: !1250, file: !1250, line: 149, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!97, !97, !97, null}
!1253 = distinct !DISubprogram(name: "error", scope: !321, file: !321, line: 285, type: !1254, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{null, !97, !97, !70, null}
!1256 = !{!1257, !1258, !1259, !1260}
!1257 = !DILocalVariable(name: "status", arg: 1, scope: !1253, file: !321, line: 285, type: !97)
!1258 = !DILocalVariable(name: "errnum", arg: 2, scope: !1253, file: !321, line: 285, type: !97)
!1259 = !DILocalVariable(name: "message", arg: 3, scope: !1253, file: !321, line: 285, type: !70)
!1260 = !DILocalVariable(name: "ap", scope: !1253, file: !321, line: 287, type: !331)
!1261 = distinct !DIAssignID()
!1262 = !DILocation(line: 0, scope: !1253)
!1263 = !DILocation(line: 287, column: 3, scope: !1253)
!1264 = !DILocation(line: 288, column: 3, scope: !1253)
!1265 = !DILocation(line: 289, column: 3, scope: !1253)
!1266 = !DILocation(line: 290, column: 3, scope: !1253)
!1267 = !DILocation(line: 291, column: 1, scope: !1253)
!1268 = !DILocation(line: 0, scope: !328)
!1269 = !DILocation(line: 302, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !328, file: !321, line: 302, column: 7)
!1271 = !DILocation(line: 302, column: 7, scope: !328)
!1272 = !DILocation(line: 307, column: 11, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !321, line: 307, column: 11)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !321, line: 303, column: 5)
!1275 = !DILocation(line: 307, column: 27, scope: !1273)
!1276 = !DILocation(line: 308, column: 11, scope: !1273)
!1277 = !DILocation(line: 308, column: 28, scope: !1273)
!1278 = !DILocation(line: 308, column: 25, scope: !1273)
!1279 = !DILocation(line: 309, column: 15, scope: !1273)
!1280 = !DILocation(line: 309, column: 33, scope: !1273)
!1281 = !DILocation(line: 310, column: 19, scope: !1273)
!1282 = !DILocation(line: 311, column: 22, scope: !1273)
!1283 = !DILocation(line: 311, column: 56, scope: !1273)
!1284 = !DILocation(line: 307, column: 11, scope: !1274)
!1285 = !DILocation(line: 316, column: 21, scope: !1274)
!1286 = !DILocation(line: 317, column: 23, scope: !1274)
!1287 = !DILocation(line: 318, column: 5, scope: !1274)
!1288 = !DILocation(line: 327, column: 3, scope: !328)
!1289 = !DILocation(line: 331, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !328, file: !321, line: 331, column: 7)
!1291 = !DILocation(line: 331, column: 7, scope: !328)
!1292 = !DILocation(line: 332, column: 5, scope: !1290)
!1293 = !DILocation(line: 338, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !321, line: 334, column: 5)
!1295 = !DILocation(line: 346, column: 3, scope: !328)
!1296 = !DILocation(line: 350, column: 3, scope: !328)
!1297 = !DILocation(line: 356, column: 1, scope: !328)
!1298 = distinct !DISubprogram(name: "error_at_line", scope: !321, file: !321, line: 359, type: !1299, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{null, !97, !97, !70, !76, !70, null}
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307}
!1302 = !DILocalVariable(name: "status", arg: 1, scope: !1298, file: !321, line: 359, type: !97)
!1303 = !DILocalVariable(name: "errnum", arg: 2, scope: !1298, file: !321, line: 359, type: !97)
!1304 = !DILocalVariable(name: "file_name", arg: 3, scope: !1298, file: !321, line: 359, type: !70)
!1305 = !DILocalVariable(name: "line_number", arg: 4, scope: !1298, file: !321, line: 360, type: !76)
!1306 = !DILocalVariable(name: "message", arg: 5, scope: !1298, file: !321, line: 360, type: !70)
!1307 = !DILocalVariable(name: "ap", scope: !1298, file: !321, line: 362, type: !331)
!1308 = distinct !DIAssignID()
!1309 = !DILocation(line: 0, scope: !1298)
!1310 = !DILocation(line: 362, column: 3, scope: !1298)
!1311 = !DILocation(line: 363, column: 3, scope: !1298)
!1312 = !DILocation(line: 364, column: 3, scope: !1298)
!1313 = !DILocation(line: 366, column: 3, scope: !1298)
!1314 = !DILocation(line: 367, column: 1, scope: !1298)
!1315 = distinct !DISubprogram(name: "getprogname", scope: !679, file: !679, line: 54, type: !1316, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !678)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!70}
!1318 = !DILocation(line: 58, column: 10, scope: !1315)
!1319 = !DILocation(line: 58, column: 3, scope: !1315)
!1320 = distinct !DISubprogram(name: "parse_long_options", scope: !376, file: !376, line: 45, type: !1321, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !1324)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !97, !969, !70, !70, !70, !1323, null}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1335}
!1325 = !DILocalVariable(name: "argc", arg: 1, scope: !1320, file: !376, line: 45, type: !97)
!1326 = !DILocalVariable(name: "argv", arg: 2, scope: !1320, file: !376, line: 46, type: !969)
!1327 = !DILocalVariable(name: "command_name", arg: 3, scope: !1320, file: !376, line: 47, type: !70)
!1328 = !DILocalVariable(name: "package", arg: 4, scope: !1320, file: !376, line: 48, type: !70)
!1329 = !DILocalVariable(name: "version", arg: 5, scope: !1320, file: !376, line: 49, type: !70)
!1330 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1320, file: !376, line: 50, type: !1323)
!1331 = !DILocalVariable(name: "saved_opterr", scope: !1320, file: !376, line: 53, type: !97)
!1332 = !DILocalVariable(name: "c", scope: !1333, file: !376, line: 60, type: !97)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !376, line: 59, column: 5)
!1334 = distinct !DILexicalBlock(scope: !1320, file: !376, line: 58, column: 7)
!1335 = !DILocalVariable(name: "authors", scope: !1336, file: !376, line: 71, type: !1340)
!1336 = distinct !DILexicalBlock(scope: !1337, file: !376, line: 70, column: 15)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !376, line: 64, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !376, line: 62, column: 9)
!1339 = distinct !DILexicalBlock(scope: !1333, file: !376, line: 61, column: 11)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 52, baseType: !1341)
!1341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !334, line: 12, baseType: !1342)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !376, baseType: !1343)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1343, file: !376, line: 71, baseType: !91, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1343, file: !376, line: 71, baseType: !91, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1343, file: !376, line: 71, baseType: !91, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1343, file: !376, line: 71, baseType: !97, size: 32, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1343, file: !376, line: 71, baseType: !97, size: 32, offset: 224)
!1350 = distinct !DIAssignID()
!1351 = !DILocation(line: 0, scope: !1336)
!1352 = !DILocation(line: 0, scope: !1320)
!1353 = !DILocation(line: 53, column: 22, scope: !1320)
!1354 = !DILocation(line: 56, column: 10, scope: !1320)
!1355 = !DILocation(line: 58, column: 12, scope: !1334)
!1356 = !DILocation(line: 58, column: 7, scope: !1320)
!1357 = !DILocation(line: 60, column: 15, scope: !1333)
!1358 = !DILocation(line: 0, scope: !1333)
!1359 = !DILocation(line: 61, column: 11, scope: !1333)
!1360 = !DILocation(line: 66, column: 15, scope: !1337)
!1361 = !DILocation(line: 67, column: 15, scope: !1337)
!1362 = !DILocation(line: 71, column: 17, scope: !1336)
!1363 = !DILocation(line: 72, column: 17, scope: !1336)
!1364 = !DILocation(line: 73, column: 33, scope: !1336)
!1365 = !DILocation(line: 73, column: 17, scope: !1336)
!1366 = !DILocation(line: 74, column: 17, scope: !1336)
!1367 = !DILocation(line: 85, column: 10, scope: !1320)
!1368 = !DILocation(line: 89, column: 10, scope: !1320)
!1369 = !DILocation(line: 90, column: 1, scope: !1320)
!1370 = !DISubprogram(name: "getopt_long", scope: !391, file: !391, line: 66, type: !1371, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!97, !97, !1373, !70, !1375, !396}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1376 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !376, file: !376, line: 98, type: !1377, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !379, retainedNodes: !1379)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{null, !97, !969, !70, !70, !70, !225, !1323, null}
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1380 = !DILocalVariable(name: "argc", arg: 1, scope: !1376, file: !376, line: 98, type: !97)
!1381 = !DILocalVariable(name: "argv", arg: 2, scope: !1376, file: !376, line: 99, type: !969)
!1382 = !DILocalVariable(name: "command_name", arg: 3, scope: !1376, file: !376, line: 100, type: !70)
!1383 = !DILocalVariable(name: "package", arg: 4, scope: !1376, file: !376, line: 101, type: !70)
!1384 = !DILocalVariable(name: "version", arg: 5, scope: !1376, file: !376, line: 102, type: !70)
!1385 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1376, file: !376, line: 103, type: !225)
!1386 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1376, file: !376, line: 104, type: !1323)
!1387 = !DILocalVariable(name: "saved_opterr", scope: !1376, file: !376, line: 107, type: !97)
!1388 = !DILocalVariable(name: "optstring", scope: !1376, file: !376, line: 112, type: !70)
!1389 = !DILocalVariable(name: "c", scope: !1376, file: !376, line: 114, type: !97)
!1390 = !DILocalVariable(name: "authors", scope: !1391, file: !376, line: 125, type: !1340)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !376, line: 124, column: 11)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !376, line: 118, column: 9)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !376, line: 116, column: 5)
!1394 = distinct !DILexicalBlock(scope: !1376, file: !376, line: 115, column: 7)
!1395 = distinct !DIAssignID()
!1396 = !DILocation(line: 0, scope: !1391)
!1397 = !DILocation(line: 0, scope: !1376)
!1398 = !DILocation(line: 107, column: 22, scope: !1376)
!1399 = !DILocation(line: 110, column: 10, scope: !1376)
!1400 = !DILocation(line: 112, column: 27, scope: !1376)
!1401 = !DILocation(line: 114, column: 11, scope: !1376)
!1402 = !DILocation(line: 115, column: 7, scope: !1376)
!1403 = !DILocation(line: 125, column: 13, scope: !1391)
!1404 = !DILocation(line: 126, column: 13, scope: !1391)
!1405 = !DILocation(line: 127, column: 29, scope: !1391)
!1406 = !DILocation(line: 127, column: 13, scope: !1391)
!1407 = !DILocation(line: 128, column: 13, scope: !1391)
!1408 = !DILocation(line: 132, column: 26, scope: !1392)
!1409 = !DILocation(line: 133, column: 11, scope: !1392)
!1410 = !DILocation(line: 0, scope: !1392)
!1411 = !DILocation(line: 138, column: 10, scope: !1376)
!1412 = !DILocation(line: 139, column: 1, scope: !1376)
!1413 = distinct !DISubprogram(name: "set_program_name", scope: !401, file: !401, line: 37, type: !770, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DILocalVariable(name: "argv0", arg: 1, scope: !1413, file: !401, line: 37, type: !70)
!1416 = !DILocalVariable(name: "slash", scope: !1413, file: !401, line: 44, type: !70)
!1417 = !DILocalVariable(name: "base", scope: !1413, file: !401, line: 45, type: !70)
!1418 = !DILocation(line: 0, scope: !1413)
!1419 = !DILocation(line: 44, column: 23, scope: !1413)
!1420 = !DILocation(line: 45, column: 22, scope: !1413)
!1421 = !DILocation(line: 46, column: 17, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1413, file: !401, line: 46, column: 7)
!1423 = !DILocation(line: 46, column: 9, scope: !1422)
!1424 = !DILocation(line: 46, column: 25, scope: !1422)
!1425 = !DILocation(line: 46, column: 40, scope: !1422)
!1426 = !DILocalVariable(name: "__s1", arg: 1, scope: !1427, file: !832, line: 974, type: !964)
!1427 = distinct !DISubprogram(name: "memeq", scope: !832, file: !832, line: 974, type: !1428, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !1430)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!225, !964, !964, !99}
!1430 = !{!1426, !1431, !1432}
!1431 = !DILocalVariable(name: "__s2", arg: 2, scope: !1427, file: !832, line: 974, type: !964)
!1432 = !DILocalVariable(name: "__n", arg: 3, scope: !1427, file: !832, line: 974, type: !99)
!1433 = !DILocation(line: 0, scope: !1427, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 46, column: 28, scope: !1422)
!1435 = !DILocation(line: 976, column: 11, scope: !1427, inlinedAt: !1434)
!1436 = !DILocation(line: 976, column: 10, scope: !1427, inlinedAt: !1434)
!1437 = !DILocation(line: 46, column: 7, scope: !1413)
!1438 = !DILocation(line: 49, column: 11, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !401, line: 49, column: 11)
!1440 = distinct !DILexicalBlock(scope: !1422, file: !401, line: 47, column: 5)
!1441 = !DILocation(line: 49, column: 36, scope: !1439)
!1442 = !DILocation(line: 49, column: 11, scope: !1440)
!1443 = !DILocation(line: 65, column: 16, scope: !1413)
!1444 = !DILocation(line: 71, column: 27, scope: !1413)
!1445 = !DILocation(line: 74, column: 33, scope: !1413)
!1446 = !DILocation(line: 76, column: 1, scope: !1413)
!1447 = !DISubprogram(name: "strrchr", scope: !936, file: !936, line: 273, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1448 = distinct !DIAssignID()
!1449 = !DILocation(line: 0, scope: !410)
!1450 = distinct !DIAssignID()
!1451 = !DILocation(line: 40, column: 29, scope: !410)
!1452 = !DILocation(line: 41, column: 19, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !410, file: !411, line: 41, column: 7)
!1454 = !DILocation(line: 41, column: 7, scope: !410)
!1455 = !DILocation(line: 47, column: 3, scope: !410)
!1456 = !DILocation(line: 48, column: 3, scope: !410)
!1457 = !DILocalVariable(name: "ps", arg: 1, scope: !1458, file: !1459, line: 1135, type: !1462)
!1458 = distinct !DISubprogram(name: "mbszero", scope: !1459, file: !1459, line: 1135, type: !1460, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1463)
!1459 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1460 = !DISubroutineType(types: !1461)
!1461 = !{null, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1463 = !{!1457}
!1464 = !DILocation(line: 0, scope: !1458, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 48, column: 18, scope: !410)
!1466 = !DILocalVariable(name: "__dest", arg: 1, scope: !1467, file: !1468, line: 57, type: !91)
!1467 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1469, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !1471)
!1468 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!91, !91, !97, !99}
!1471 = !{!1466, !1472, !1473}
!1472 = !DILocalVariable(name: "__ch", arg: 2, scope: !1467, file: !1468, line: 57, type: !97)
!1473 = !DILocalVariable(name: "__len", arg: 3, scope: !1467, file: !1468, line: 57, type: !99)
!1474 = !DILocation(line: 0, scope: !1467, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 1137, column: 3, scope: !1458, inlinedAt: !1465)
!1476 = !DILocation(line: 59, column: 10, scope: !1467, inlinedAt: !1475)
!1477 = !DILocation(line: 49, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !410, file: !411, line: 49, column: 7)
!1479 = !DILocation(line: 49, column: 39, scope: !1478)
!1480 = !DILocation(line: 49, column: 44, scope: !1478)
!1481 = !DILocation(line: 54, column: 1, scope: !410)
!1482 = !DISubprogram(name: "mbrtoc32", scope: !422, file: !422, line: 57, type: !1483, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!99, !1485, !810, !99, !1487}
!1485 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1486)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1462)
!1488 = distinct !DISubprogram(name: "clone_quoting_options", scope: !441, file: !441, line: 113, type: !1489, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1492)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1491, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1492 = !{!1493, !1494, !1495}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1488, file: !441, line: 113, type: !1491)
!1494 = !DILocalVariable(name: "saved_errno", scope: !1488, file: !441, line: 115, type: !97)
!1495 = !DILocalVariable(name: "p", scope: !1488, file: !441, line: 116, type: !1491)
!1496 = !DILocation(line: 0, scope: !1488)
!1497 = !DILocation(line: 115, column: 21, scope: !1488)
!1498 = !DILocation(line: 116, column: 40, scope: !1488)
!1499 = !DILocation(line: 116, column: 31, scope: !1488)
!1500 = !DILocation(line: 118, column: 9, scope: !1488)
!1501 = !DILocation(line: 119, column: 3, scope: !1488)
!1502 = distinct !DISubprogram(name: "get_quoting_style", scope: !441, file: !441, line: 124, type: !1503, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1507)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!467, !1505}
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!1507 = !{!1508}
!1508 = !DILocalVariable(name: "o", arg: 1, scope: !1502, file: !441, line: 124, type: !1505)
!1509 = !DILocation(line: 0, scope: !1502)
!1510 = !DILocation(line: 126, column: 11, scope: !1502)
!1511 = !DILocation(line: 126, column: 46, scope: !1502)
!1512 = !{!1513, !820, i64 0}
!1513 = !{!"quoting_options", !820, i64 0, !820, i64 4, !761, i64 8, !760, i64 40, !760, i64 48}
!1514 = !DILocation(line: 126, column: 3, scope: !1502)
!1515 = distinct !DISubprogram(name: "set_quoting_style", scope: !441, file: !441, line: 132, type: !1516, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1491, !467}
!1518 = !{!1519, !1520}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1515, file: !441, line: 132, type: !1491)
!1520 = !DILocalVariable(name: "s", arg: 2, scope: !1515, file: !441, line: 132, type: !467)
!1521 = !DILocation(line: 0, scope: !1515)
!1522 = !DILocation(line: 134, column: 4, scope: !1515)
!1523 = !DILocation(line: 134, column: 45, scope: !1515)
!1524 = !DILocation(line: 135, column: 1, scope: !1515)
!1525 = distinct !DISubprogram(name: "set_char_quoting", scope: !441, file: !441, line: 143, type: !1526, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1528)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!97, !1491, !4, !97}
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1535, !1536}
!1529 = !DILocalVariable(name: "o", arg: 1, scope: !1525, file: !441, line: 143, type: !1491)
!1530 = !DILocalVariable(name: "c", arg: 2, scope: !1525, file: !441, line: 143, type: !4)
!1531 = !DILocalVariable(name: "i", arg: 3, scope: !1525, file: !441, line: 143, type: !97)
!1532 = !DILocalVariable(name: "uc", scope: !1525, file: !441, line: 145, type: !101)
!1533 = !DILocalVariable(name: "p", scope: !1525, file: !441, line: 146, type: !1534)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1535 = !DILocalVariable(name: "shift", scope: !1525, file: !441, line: 148, type: !97)
!1536 = !DILocalVariable(name: "r", scope: !1525, file: !441, line: 149, type: !76)
!1537 = !DILocation(line: 0, scope: !1525)
!1538 = !DILocation(line: 147, column: 6, scope: !1525)
!1539 = !DILocation(line: 147, column: 41, scope: !1525)
!1540 = !DILocation(line: 147, column: 62, scope: !1525)
!1541 = !DILocation(line: 147, column: 57, scope: !1525)
!1542 = !DILocation(line: 148, column: 15, scope: !1525)
!1543 = !DILocation(line: 149, column: 21, scope: !1525)
!1544 = !DILocation(line: 149, column: 24, scope: !1525)
!1545 = !DILocation(line: 149, column: 34, scope: !1525)
!1546 = !DILocation(line: 150, column: 19, scope: !1525)
!1547 = !DILocation(line: 150, column: 24, scope: !1525)
!1548 = !DILocation(line: 150, column: 6, scope: !1525)
!1549 = !DILocation(line: 151, column: 3, scope: !1525)
!1550 = distinct !DISubprogram(name: "set_quoting_flags", scope: !441, file: !441, line: 159, type: !1551, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1553)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!97, !1491, !97}
!1553 = !{!1554, !1555, !1556}
!1554 = !DILocalVariable(name: "o", arg: 1, scope: !1550, file: !441, line: 159, type: !1491)
!1555 = !DILocalVariable(name: "i", arg: 2, scope: !1550, file: !441, line: 159, type: !97)
!1556 = !DILocalVariable(name: "r", scope: !1550, file: !441, line: 163, type: !97)
!1557 = !DILocation(line: 0, scope: !1550)
!1558 = !DILocation(line: 161, column: 8, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1550, file: !441, line: 161, column: 7)
!1560 = !DILocation(line: 161, column: 7, scope: !1550)
!1561 = !DILocation(line: 163, column: 14, scope: !1550)
!1562 = !{!1513, !820, i64 4}
!1563 = !DILocation(line: 164, column: 12, scope: !1550)
!1564 = !DILocation(line: 165, column: 3, scope: !1550)
!1565 = distinct !DISubprogram(name: "set_custom_quoting", scope: !441, file: !441, line: 169, type: !1566, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1491, !70, !70}
!1568 = !{!1569, !1570, !1571}
!1569 = !DILocalVariable(name: "o", arg: 1, scope: !1565, file: !441, line: 169, type: !1491)
!1570 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1565, file: !441, line: 170, type: !70)
!1571 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1565, file: !441, line: 170, type: !70)
!1572 = !DILocation(line: 0, scope: !1565)
!1573 = !DILocation(line: 172, column: 8, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1565, file: !441, line: 172, column: 7)
!1575 = !DILocation(line: 172, column: 7, scope: !1565)
!1576 = !DILocation(line: 174, column: 12, scope: !1565)
!1577 = !DILocation(line: 175, column: 8, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1565, file: !441, line: 175, column: 7)
!1579 = !DILocation(line: 175, column: 19, scope: !1578)
!1580 = !DILocation(line: 176, column: 5, scope: !1578)
!1581 = !DILocation(line: 177, column: 6, scope: !1565)
!1582 = !DILocation(line: 177, column: 17, scope: !1565)
!1583 = !{!1513, !760, i64 40}
!1584 = !DILocation(line: 178, column: 6, scope: !1565)
!1585 = !DILocation(line: 178, column: 18, scope: !1565)
!1586 = !{!1513, !760, i64 48}
!1587 = !DILocation(line: 179, column: 1, scope: !1565)
!1588 = !DISubprogram(name: "abort", scope: !940, file: !940, line: 598, type: !372, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1589 = distinct !DISubprogram(name: "quotearg_buffer", scope: !441, file: !441, line: 774, type: !1590, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!99, !246, !99, !70, !99, !1505}
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1593 = !DILocalVariable(name: "buffer", arg: 1, scope: !1589, file: !441, line: 774, type: !246)
!1594 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1589, file: !441, line: 774, type: !99)
!1595 = !DILocalVariable(name: "arg", arg: 3, scope: !1589, file: !441, line: 775, type: !70)
!1596 = !DILocalVariable(name: "argsize", arg: 4, scope: !1589, file: !441, line: 775, type: !99)
!1597 = !DILocalVariable(name: "o", arg: 5, scope: !1589, file: !441, line: 776, type: !1505)
!1598 = !DILocalVariable(name: "p", scope: !1589, file: !441, line: 778, type: !1505)
!1599 = !DILocalVariable(name: "saved_errno", scope: !1589, file: !441, line: 779, type: !97)
!1600 = !DILocalVariable(name: "r", scope: !1589, file: !441, line: 780, type: !99)
!1601 = !DILocation(line: 0, scope: !1589)
!1602 = !DILocation(line: 778, column: 37, scope: !1589)
!1603 = !DILocation(line: 779, column: 21, scope: !1589)
!1604 = !DILocation(line: 781, column: 43, scope: !1589)
!1605 = !DILocation(line: 781, column: 53, scope: !1589)
!1606 = !DILocation(line: 781, column: 63, scope: !1589)
!1607 = !DILocation(line: 782, column: 43, scope: !1589)
!1608 = !DILocation(line: 782, column: 58, scope: !1589)
!1609 = !DILocation(line: 780, column: 14, scope: !1589)
!1610 = !DILocation(line: 783, column: 9, scope: !1589)
!1611 = !DILocation(line: 784, column: 3, scope: !1589)
!1612 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !441, file: !441, line: 251, type: !1613, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1617)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!99, !246, !99, !70, !99, !467, !97, !1615, !70, !70}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1617 = !{!1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1643, !1645, !1648, !1649, !1650, !1651, !1654, !1655, !1657, !1658, !1661, !1665, !1666, !1674, !1677, !1678, !1679}
!1618 = !DILocalVariable(name: "buffer", arg: 1, scope: !1612, file: !441, line: 251, type: !246)
!1619 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1612, file: !441, line: 251, type: !99)
!1620 = !DILocalVariable(name: "arg", arg: 3, scope: !1612, file: !441, line: 252, type: !70)
!1621 = !DILocalVariable(name: "argsize", arg: 4, scope: !1612, file: !441, line: 252, type: !99)
!1622 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1612, file: !441, line: 253, type: !467)
!1623 = !DILocalVariable(name: "flags", arg: 6, scope: !1612, file: !441, line: 253, type: !97)
!1624 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1612, file: !441, line: 254, type: !1615)
!1625 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1612, file: !441, line: 255, type: !70)
!1626 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1612, file: !441, line: 256, type: !70)
!1627 = !DILocalVariable(name: "unibyte_locale", scope: !1612, file: !441, line: 258, type: !225)
!1628 = !DILocalVariable(name: "len", scope: !1612, file: !441, line: 260, type: !99)
!1629 = !DILocalVariable(name: "orig_buffersize", scope: !1612, file: !441, line: 261, type: !99)
!1630 = !DILocalVariable(name: "quote_string", scope: !1612, file: !441, line: 262, type: !70)
!1631 = !DILocalVariable(name: "quote_string_len", scope: !1612, file: !441, line: 263, type: !99)
!1632 = !DILocalVariable(name: "backslash_escapes", scope: !1612, file: !441, line: 264, type: !225)
!1633 = !DILocalVariable(name: "elide_outer_quotes", scope: !1612, file: !441, line: 265, type: !225)
!1634 = !DILocalVariable(name: "encountered_single_quote", scope: !1612, file: !441, line: 266, type: !225)
!1635 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1612, file: !441, line: 267, type: !225)
!1636 = !DILabel(scope: !1612, name: "process_input", file: !441, line: 308)
!1637 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1612, file: !441, line: 309, type: !225)
!1638 = !DILocalVariable(name: "lq", scope: !1639, file: !441, line: 361, type: !70)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !441, line: 361, column: 11)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !441, line: 360, column: 13)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !441, line: 333, column: 7)
!1642 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 312, column: 5)
!1643 = !DILocalVariable(name: "i", scope: !1644, file: !441, line: 395, type: !99)
!1644 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 395, column: 3)
!1645 = !DILocalVariable(name: "is_right_quote", scope: !1646, file: !441, line: 397, type: !225)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !441, line: 396, column: 5)
!1647 = distinct !DILexicalBlock(scope: !1644, file: !441, line: 395, column: 3)
!1648 = !DILocalVariable(name: "escaping", scope: !1646, file: !441, line: 398, type: !225)
!1649 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1646, file: !441, line: 399, type: !225)
!1650 = !DILocalVariable(name: "c", scope: !1646, file: !441, line: 417, type: !101)
!1651 = !DILabel(scope: !1652, name: "c_and_shell_escape", file: !441, line: 502)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 478, column: 9)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !441, line: 419, column: 9)
!1654 = !DILabel(scope: !1652, name: "c_escape", file: !441, line: 507)
!1655 = !DILocalVariable(name: "m", scope: !1656, file: !441, line: 598, type: !99)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 596, column: 11)
!1657 = !DILocalVariable(name: "printable", scope: !1656, file: !441, line: 600, type: !225)
!1658 = !DILocalVariable(name: "mbs", scope: !1659, file: !441, line: 609, type: !528)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !441, line: 608, column: 15)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !441, line: 602, column: 17)
!1661 = !DILocalVariable(name: "w", scope: !1662, file: !441, line: 618, type: !421)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !441, line: 617, column: 19)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !441, line: 616, column: 17)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !441, line: 616, column: 17)
!1665 = !DILocalVariable(name: "bytes", scope: !1662, file: !441, line: 619, type: !99)
!1666 = !DILocalVariable(name: "j", scope: !1667, file: !441, line: 648, type: !99)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !441, line: 648, column: 29)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !441, line: 647, column: 27)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !441, line: 645, column: 29)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !441, line: 636, column: 23)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !441, line: 628, column: 30)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !441, line: 623, column: 30)
!1673 = distinct !DILexicalBlock(scope: !1662, file: !441, line: 621, column: 25)
!1674 = !DILocalVariable(name: "ilim", scope: !1675, file: !441, line: 674, type: !99)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !441, line: 671, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1656, file: !441, line: 670, column: 17)
!1677 = !DILabel(scope: !1646, name: "store_escape", file: !441, line: 709)
!1678 = !DILabel(scope: !1646, name: "store_c", file: !441, line: 712)
!1679 = !DILabel(scope: !1612, name: "force_outer_quoting_style", file: !441, line: 753)
!1680 = distinct !DIAssignID()
!1681 = distinct !DIAssignID()
!1682 = distinct !DIAssignID()
!1683 = distinct !DIAssignID()
!1684 = distinct !DIAssignID()
!1685 = !DILocation(line: 0, scope: !1659)
!1686 = distinct !DIAssignID()
!1687 = !DILocation(line: 0, scope: !1662)
!1688 = !DILocation(line: 0, scope: !1612)
!1689 = !DILocation(line: 258, column: 25, scope: !1612)
!1690 = !DILocation(line: 258, column: 36, scope: !1612)
!1691 = !DILocation(line: 267, column: 3, scope: !1612)
!1692 = !DILocation(line: 261, column: 10, scope: !1612)
!1693 = !DILocation(line: 262, column: 15, scope: !1612)
!1694 = !DILocation(line: 263, column: 10, scope: !1612)
!1695 = !DILocation(line: 308, column: 2, scope: !1612)
!1696 = !DILocation(line: 311, column: 3, scope: !1612)
!1697 = !DILocation(line: 318, column: 11, scope: !1642)
!1698 = !DILocation(line: 319, column: 9, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !441, line: 319, column: 9)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !441, line: 319, column: 9)
!1701 = distinct !DILexicalBlock(scope: !1642, file: !441, line: 318, column: 11)
!1702 = !DILocation(line: 319, column: 9, scope: !1700)
!1703 = !DILocation(line: 0, scope: !519, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 357, column: 26, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !441, line: 335, column: 11)
!1706 = distinct !DILexicalBlock(scope: !1641, file: !441, line: 334, column: 13)
!1707 = !DILocation(line: 199, column: 29, scope: !519, inlinedAt: !1704)
!1708 = !DILocation(line: 201, column: 19, scope: !1709, inlinedAt: !1704)
!1709 = distinct !DILexicalBlock(scope: !519, file: !441, line: 201, column: 7)
!1710 = !DILocation(line: 201, column: 7, scope: !519, inlinedAt: !1704)
!1711 = !DILocation(line: 229, column: 3, scope: !519, inlinedAt: !1704)
!1712 = !DILocation(line: 230, column: 3, scope: !519, inlinedAt: !1704)
!1713 = !DILocalVariable(name: "ps", arg: 1, scope: !1714, file: !1459, line: 1135, type: !1717)
!1714 = distinct !DISubprogram(name: "mbszero", scope: !1459, file: !1459, line: 1135, type: !1715, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1718)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!1718 = !{!1713}
!1719 = !DILocation(line: 0, scope: !1714, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 230, column: 18, scope: !519, inlinedAt: !1704)
!1721 = !DILocalVariable(name: "__dest", arg: 1, scope: !1722, file: !1468, line: 57, type: !91)
!1722 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1469, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1723)
!1723 = !{!1721, !1724, !1725}
!1724 = !DILocalVariable(name: "__ch", arg: 2, scope: !1722, file: !1468, line: 57, type: !97)
!1725 = !DILocalVariable(name: "__len", arg: 3, scope: !1722, file: !1468, line: 57, type: !99)
!1726 = !DILocation(line: 0, scope: !1722, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 1137, column: 3, scope: !1714, inlinedAt: !1720)
!1728 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !1727)
!1729 = !DILocation(line: 231, column: 7, scope: !1730, inlinedAt: !1704)
!1730 = distinct !DILexicalBlock(scope: !519, file: !441, line: 231, column: 7)
!1731 = !DILocation(line: 231, column: 40, scope: !1730, inlinedAt: !1704)
!1732 = !DILocation(line: 231, column: 45, scope: !1730, inlinedAt: !1704)
!1733 = !DILocation(line: 235, column: 1, scope: !519, inlinedAt: !1704)
!1734 = !DILocation(line: 0, scope: !519, inlinedAt: !1735)
!1735 = distinct !DILocation(line: 358, column: 27, scope: !1705)
!1736 = !DILocation(line: 199, column: 29, scope: !519, inlinedAt: !1735)
!1737 = !DILocation(line: 201, column: 19, scope: !1709, inlinedAt: !1735)
!1738 = !DILocation(line: 201, column: 7, scope: !519, inlinedAt: !1735)
!1739 = !DILocation(line: 229, column: 3, scope: !519, inlinedAt: !1735)
!1740 = !DILocation(line: 230, column: 3, scope: !519, inlinedAt: !1735)
!1741 = !DILocation(line: 0, scope: !1714, inlinedAt: !1742)
!1742 = distinct !DILocation(line: 230, column: 18, scope: !519, inlinedAt: !1735)
!1743 = !DILocation(line: 0, scope: !1722, inlinedAt: !1744)
!1744 = distinct !DILocation(line: 1137, column: 3, scope: !1714, inlinedAt: !1742)
!1745 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !1744)
!1746 = !DILocation(line: 231, column: 7, scope: !1730, inlinedAt: !1735)
!1747 = !DILocation(line: 231, column: 40, scope: !1730, inlinedAt: !1735)
!1748 = !DILocation(line: 231, column: 45, scope: !1730, inlinedAt: !1735)
!1749 = !DILocation(line: 235, column: 1, scope: !519, inlinedAt: !1735)
!1750 = !DILocation(line: 360, column: 13, scope: !1641)
!1751 = !DILocation(line: 0, scope: !1639)
!1752 = !DILocation(line: 361, column: 45, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1639, file: !441, line: 361, column: 11)
!1754 = !DILocation(line: 361, column: 11, scope: !1639)
!1755 = !DILocation(line: 362, column: 13, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !441, line: 362, column: 13)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !441, line: 362, column: 13)
!1758 = !DILocation(line: 362, column: 13, scope: !1757)
!1759 = !DILocation(line: 361, column: 52, scope: !1753)
!1760 = distinct !{!1760, !1754, !1761, !866}
!1761 = !DILocation(line: 362, column: 13, scope: !1639)
!1762 = !DILocation(line: 365, column: 28, scope: !1641)
!1763 = !DILocation(line: 260, column: 10, scope: !1612)
!1764 = !DILocation(line: 367, column: 7, scope: !1642)
!1765 = !DILocation(line: 373, column: 7, scope: !1642)
!1766 = !DILocation(line: 381, column: 11, scope: !1642)
!1767 = !DILocation(line: 376, column: 11, scope: !1642)
!1768 = !DILocation(line: 382, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !441, line: 382, column: 9)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !441, line: 382, column: 9)
!1771 = distinct !DILexicalBlock(scope: !1642, file: !441, line: 381, column: 11)
!1772 = !DILocation(line: 382, column: 9, scope: !1770)
!1773 = !DILocation(line: 389, column: 7, scope: !1642)
!1774 = !DILocation(line: 392, column: 7, scope: !1642)
!1775 = !DILocation(line: 0, scope: !1644)
!1776 = !DILocation(line: 395, column: 8, scope: !1644)
!1777 = !DILocation(line: 395, scope: !1644)
!1778 = !DILocation(line: 395, column: 34, scope: !1647)
!1779 = !DILocation(line: 395, column: 26, scope: !1647)
!1780 = !DILocation(line: 395, column: 48, scope: !1647)
!1781 = !DILocation(line: 395, column: 55, scope: !1647)
!1782 = !DILocation(line: 395, column: 3, scope: !1644)
!1783 = !DILocation(line: 395, column: 67, scope: !1647)
!1784 = !DILocation(line: 0, scope: !1646)
!1785 = !DILocation(line: 402, column: 11, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1646, file: !441, line: 401, column: 11)
!1787 = !DILocation(line: 404, column: 17, scope: !1786)
!1788 = !DILocation(line: 405, column: 39, scope: !1786)
!1789 = !DILocation(line: 409, column: 32, scope: !1786)
!1790 = !DILocation(line: 405, column: 19, scope: !1786)
!1791 = !DILocation(line: 405, column: 15, scope: !1786)
!1792 = !DILocation(line: 410, column: 11, scope: !1786)
!1793 = !DILocation(line: 410, column: 25, scope: !1786)
!1794 = !DILocalVariable(name: "__s1", arg: 1, scope: !1795, file: !832, line: 974, type: !964)
!1795 = distinct !DISubprogram(name: "memeq", scope: !832, file: !832, line: 974, type: !1428, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !1796)
!1796 = !{!1794, !1797, !1798}
!1797 = !DILocalVariable(name: "__s2", arg: 2, scope: !1795, file: !832, line: 974, type: !964)
!1798 = !DILocalVariable(name: "__n", arg: 3, scope: !1795, file: !832, line: 974, type: !99)
!1799 = !DILocation(line: 0, scope: !1795, inlinedAt: !1800)
!1800 = distinct !DILocation(line: 410, column: 14, scope: !1786)
!1801 = !DILocation(line: 976, column: 11, scope: !1795, inlinedAt: !1800)
!1802 = !DILocation(line: 976, column: 10, scope: !1795, inlinedAt: !1800)
!1803 = !DILocation(line: 401, column: 11, scope: !1646)
!1804 = !DILocation(line: 417, column: 25, scope: !1646)
!1805 = !DILocation(line: 418, column: 7, scope: !1646)
!1806 = !DILocation(line: 421, column: 15, scope: !1653)
!1807 = !DILocation(line: 423, column: 15, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !441, line: 423, column: 15)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !441, line: 422, column: 13)
!1810 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 421, column: 15)
!1811 = !DILocation(line: 423, column: 15, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !441, line: 423, column: 15)
!1813 = !DILocation(line: 423, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !441, line: 423, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !441, line: 423, column: 15)
!1816 = distinct !DILexicalBlock(scope: !1812, file: !441, line: 423, column: 15)
!1817 = !DILocation(line: 423, column: 15, scope: !1815)
!1818 = !DILocation(line: 423, column: 15, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !441, line: 423, column: 15)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !441, line: 423, column: 15)
!1821 = !DILocation(line: 423, column: 15, scope: !1820)
!1822 = !DILocation(line: 423, column: 15, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !441, line: 423, column: 15)
!1824 = distinct !DILexicalBlock(scope: !1816, file: !441, line: 423, column: 15)
!1825 = !DILocation(line: 423, column: 15, scope: !1824)
!1826 = !DILocation(line: 423, column: 15, scope: !1816)
!1827 = !DILocation(line: 423, column: 15, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !441, line: 423, column: 15)
!1829 = distinct !DILexicalBlock(scope: !1808, file: !441, line: 423, column: 15)
!1830 = !DILocation(line: 423, column: 15, scope: !1829)
!1831 = !DILocation(line: 431, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1809, file: !441, line: 430, column: 19)
!1833 = !DILocation(line: 431, column: 24, scope: !1832)
!1834 = !DILocation(line: 431, column: 28, scope: !1832)
!1835 = !DILocation(line: 431, column: 38, scope: !1832)
!1836 = !DILocation(line: 431, column: 48, scope: !1832)
!1837 = !DILocation(line: 431, column: 59, scope: !1832)
!1838 = !DILocation(line: 433, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !441, line: 433, column: 19)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !441, line: 433, column: 19)
!1841 = distinct !DILexicalBlock(scope: !1832, file: !441, line: 432, column: 17)
!1842 = !DILocation(line: 433, column: 19, scope: !1840)
!1843 = !DILocation(line: 434, column: 19, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !441, line: 434, column: 19)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !441, line: 434, column: 19)
!1846 = !DILocation(line: 434, column: 19, scope: !1845)
!1847 = !DILocation(line: 435, column: 17, scope: !1841)
!1848 = !DILocation(line: 442, column: 20, scope: !1810)
!1849 = !DILocation(line: 447, column: 11, scope: !1653)
!1850 = !DILocation(line: 450, column: 19, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 448, column: 13)
!1852 = !DILocation(line: 456, column: 19, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1851, file: !441, line: 455, column: 19)
!1854 = !DILocation(line: 456, column: 24, scope: !1853)
!1855 = !DILocation(line: 456, column: 28, scope: !1853)
!1856 = !DILocation(line: 456, column: 38, scope: !1853)
!1857 = !DILocation(line: 456, column: 41, scope: !1853)
!1858 = !DILocation(line: 456, column: 52, scope: !1853)
!1859 = !DILocation(line: 455, column: 19, scope: !1851)
!1860 = !DILocation(line: 457, column: 25, scope: !1853)
!1861 = !DILocation(line: 457, column: 17, scope: !1853)
!1862 = !DILocation(line: 464, column: 25, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1853, file: !441, line: 458, column: 19)
!1864 = !DILocation(line: 468, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !441, line: 468, column: 21)
!1866 = distinct !DILexicalBlock(scope: !1863, file: !441, line: 468, column: 21)
!1867 = !DILocation(line: 468, column: 21, scope: !1866)
!1868 = !DILocation(line: 469, column: 21, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !441, line: 469, column: 21)
!1870 = distinct !DILexicalBlock(scope: !1863, file: !441, line: 469, column: 21)
!1871 = !DILocation(line: 469, column: 21, scope: !1870)
!1872 = !DILocation(line: 470, column: 21, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !441, line: 470, column: 21)
!1874 = distinct !DILexicalBlock(scope: !1863, file: !441, line: 470, column: 21)
!1875 = !DILocation(line: 470, column: 21, scope: !1874)
!1876 = !DILocation(line: 471, column: 21, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !441, line: 471, column: 21)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !441, line: 471, column: 21)
!1879 = !DILocation(line: 471, column: 21, scope: !1878)
!1880 = !DILocation(line: 472, column: 21, scope: !1863)
!1881 = !DILocation(line: 482, column: 33, scope: !1652)
!1882 = !DILocation(line: 483, column: 33, scope: !1652)
!1883 = !DILocation(line: 485, column: 33, scope: !1652)
!1884 = !DILocation(line: 486, column: 33, scope: !1652)
!1885 = !DILocation(line: 487, column: 33, scope: !1652)
!1886 = !DILocation(line: 490, column: 17, scope: !1652)
!1887 = !DILocation(line: 492, column: 21, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !441, line: 491, column: 15)
!1889 = distinct !DILexicalBlock(scope: !1652, file: !441, line: 490, column: 17)
!1890 = !DILocation(line: 499, column: 35, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1652, file: !441, line: 499, column: 17)
!1892 = !DILocation(line: 0, scope: !1652)
!1893 = !DILocation(line: 502, column: 11, scope: !1652)
!1894 = !DILocation(line: 504, column: 17, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1652, file: !441, line: 503, column: 17)
!1896 = !DILocation(line: 507, column: 11, scope: !1652)
!1897 = !DILocation(line: 508, column: 17, scope: !1652)
!1898 = !DILocation(line: 517, column: 15, scope: !1653)
!1899 = !DILocation(line: 517, column: 40, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 517, column: 15)
!1901 = !DILocation(line: 517, column: 47, scope: !1900)
!1902 = !DILocation(line: 517, column: 18, scope: !1900)
!1903 = !DILocation(line: 521, column: 17, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 521, column: 15)
!1905 = !DILocation(line: 521, column: 15, scope: !1653)
!1906 = !DILocation(line: 525, column: 11, scope: !1653)
!1907 = !DILocation(line: 537, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 536, column: 15)
!1909 = !DILocation(line: 536, column: 15, scope: !1653)
!1910 = !DILocation(line: 544, column: 15, scope: !1653)
!1911 = !DILocation(line: 546, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !441, line: 545, column: 13)
!1913 = distinct !DILexicalBlock(scope: !1653, file: !441, line: 544, column: 15)
!1914 = !DILocation(line: 549, column: 19, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1912, file: !441, line: 549, column: 19)
!1916 = !DILocation(line: 549, column: 30, scope: !1915)
!1917 = !DILocation(line: 558, column: 15, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1919, file: !441, line: 558, column: 15)
!1919 = distinct !DILexicalBlock(scope: !1912, file: !441, line: 558, column: 15)
!1920 = !DILocation(line: 558, column: 15, scope: !1919)
!1921 = !DILocation(line: 559, column: 15, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !441, line: 559, column: 15)
!1923 = distinct !DILexicalBlock(scope: !1912, file: !441, line: 559, column: 15)
!1924 = !DILocation(line: 559, column: 15, scope: !1923)
!1925 = !DILocation(line: 560, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !441, line: 560, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1912, file: !441, line: 560, column: 15)
!1928 = !DILocation(line: 560, column: 15, scope: !1927)
!1929 = !DILocation(line: 562, column: 13, scope: !1912)
!1930 = !DILocation(line: 602, column: 17, scope: !1656)
!1931 = !DILocation(line: 0, scope: !1656)
!1932 = !DILocation(line: 605, column: 29, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1660, file: !441, line: 603, column: 15)
!1934 = !DILocation(line: 605, column: 41, scope: !1933)
!1935 = !DILocation(line: 606, column: 15, scope: !1933)
!1936 = !DILocation(line: 609, column: 17, scope: !1659)
!1937 = !DILocation(line: 0, scope: !1714, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 609, column: 32, scope: !1659)
!1939 = !DILocation(line: 0, scope: !1722, inlinedAt: !1940)
!1940 = distinct !DILocation(line: 1137, column: 3, scope: !1714, inlinedAt: !1938)
!1941 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !1940)
!1942 = !DILocation(line: 613, column: 29, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1659, file: !441, line: 613, column: 21)
!1944 = !DILocation(line: 613, column: 21, scope: !1659)
!1945 = !DILocation(line: 614, column: 29, scope: !1943)
!1946 = !DILocation(line: 614, column: 19, scope: !1943)
!1947 = !DILocation(line: 618, column: 21, scope: !1662)
!1948 = !DILocation(line: 620, column: 54, scope: !1662)
!1949 = !DILocation(line: 619, column: 36, scope: !1662)
!1950 = !DILocation(line: 621, column: 25, scope: !1662)
!1951 = !DILocation(line: 631, column: 38, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1671, file: !441, line: 629, column: 23)
!1953 = !DILocation(line: 631, column: 48, scope: !1952)
!1954 = !DILocation(line: 631, column: 25, scope: !1952)
!1955 = !DILocation(line: 626, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1672, file: !441, line: 624, column: 23)
!1957 = !DILocation(line: 631, column: 51, scope: !1952)
!1958 = !DILocation(line: 632, column: 28, scope: !1952)
!1959 = !DILocation(line: 631, column: 34, scope: !1952)
!1960 = distinct !{!1960, !1954, !1958, !866}
!1961 = !DILocation(line: 0, scope: !1667)
!1962 = !DILocation(line: 646, column: 29, scope: !1669)
!1963 = !DILocation(line: 648, column: 29, scope: !1667)
!1964 = !DILocation(line: 649, column: 39, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1667, file: !441, line: 648, column: 29)
!1966 = !DILocation(line: 649, column: 31, scope: !1965)
!1967 = !DILocation(line: 648, column: 60, scope: !1965)
!1968 = !DILocation(line: 648, column: 50, scope: !1965)
!1969 = distinct !{!1969, !1963, !1970, !866}
!1970 = !DILocation(line: 654, column: 33, scope: !1667)
!1971 = !DILocation(line: 657, column: 43, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1670, file: !441, line: 657, column: 29)
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
!1985 = !DILocation(line: 664, column: 23, scope: !1662)
!1986 = !DILocation(line: 665, column: 19, scope: !1663)
!1987 = !DILocation(line: 666, column: 15, scope: !1660)
!1988 = !DILocation(line: 753, column: 2, scope: !1612)
!1989 = !DILocation(line: 756, column: 51, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 756, column: 7)
!1991 = !DILocation(line: 0, scope: !1660)
!1992 = !DILocation(line: 670, column: 19, scope: !1676)
!1993 = !DILocation(line: 670, column: 23, scope: !1676)
!1994 = !DILocation(line: 674, column: 33, scope: !1675)
!1995 = !DILocation(line: 0, scope: !1675)
!1996 = !DILocation(line: 676, column: 17, scope: !1675)
!1997 = !DILocation(line: 678, column: 43, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !441, line: 678, column: 25)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !441, line: 677, column: 19)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !441, line: 676, column: 17)
!2001 = distinct !DILexicalBlock(scope: !1675, file: !441, line: 676, column: 17)
!2002 = !DILocation(line: 680, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !441, line: 680, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !441, line: 679, column: 23)
!2005 = !DILocation(line: 680, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !441, line: 680, column: 25)
!2007 = !DILocation(line: 680, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !441, line: 680, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !441, line: 680, column: 25)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !441, line: 680, column: 25)
!2011 = !DILocation(line: 680, column: 25, scope: !2009)
!2012 = !DILocation(line: 680, column: 25, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !441, line: 680, column: 25)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !441, line: 680, column: 25)
!2015 = !DILocation(line: 680, column: 25, scope: !2014)
!2016 = !DILocation(line: 680, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !441, line: 680, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2010, file: !441, line: 680, column: 25)
!2019 = !DILocation(line: 680, column: 25, scope: !2018)
!2020 = !DILocation(line: 680, column: 25, scope: !2010)
!2021 = !DILocation(line: 680, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !441, line: 680, column: 25)
!2023 = distinct !DILexicalBlock(scope: !2003, file: !441, line: 680, column: 25)
!2024 = !DILocation(line: 680, column: 25, scope: !2023)
!2025 = !DILocation(line: 681, column: 25, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !441, line: 681, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2004, file: !441, line: 681, column: 25)
!2028 = !DILocation(line: 681, column: 25, scope: !2027)
!2029 = !DILocation(line: 682, column: 25, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !441, line: 682, column: 25)
!2031 = distinct !DILexicalBlock(scope: !2004, file: !441, line: 682, column: 25)
!2032 = !DILocation(line: 682, column: 25, scope: !2031)
!2033 = !DILocation(line: 683, column: 38, scope: !2004)
!2034 = !DILocation(line: 683, column: 33, scope: !2004)
!2035 = !DILocation(line: 684, column: 23, scope: !2004)
!2036 = !DILocation(line: 685, column: 30, scope: !1998)
!2037 = !DILocation(line: 687, column: 25, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !441, line: 687, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !441, line: 687, column: 25)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !441, line: 686, column: 23)
!2041 = distinct !DILexicalBlock(scope: !1998, file: !441, line: 685, column: 30)
!2042 = !DILocation(line: 687, column: 25, scope: !2039)
!2043 = !DILocation(line: 689, column: 23, scope: !2040)
!2044 = !DILocation(line: 690, column: 35, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1999, file: !441, line: 690, column: 25)
!2046 = !DILocation(line: 690, column: 30, scope: !2045)
!2047 = !DILocation(line: 690, column: 25, scope: !1999)
!2048 = !DILocation(line: 692, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !441, line: 692, column: 21)
!2050 = distinct !DILexicalBlock(scope: !1999, file: !441, line: 692, column: 21)
!2051 = !DILocation(line: 692, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !441, line: 692, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !441, line: 692, column: 21)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !441, line: 692, column: 21)
!2055 = !DILocation(line: 692, column: 21, scope: !2053)
!2056 = !DILocation(line: 692, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !441, line: 692, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !441, line: 692, column: 21)
!2059 = !DILocation(line: 692, column: 21, scope: !2058)
!2060 = !DILocation(line: 692, column: 21, scope: !2054)
!2061 = !DILocation(line: 0, scope: !1999)
!2062 = !DILocation(line: 693, column: 21, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !441, line: 693, column: 21)
!2064 = distinct !DILexicalBlock(scope: !1999, file: !441, line: 693, column: 21)
!2065 = !DILocation(line: 693, column: 21, scope: !2064)
!2066 = !DILocation(line: 694, column: 25, scope: !1999)
!2067 = !DILocation(line: 676, column: 17, scope: !2000)
!2068 = distinct !{!2068, !2069, !2070}
!2069 = !DILocation(line: 676, column: 17, scope: !2001)
!2070 = !DILocation(line: 695, column: 19, scope: !2001)
!2071 = !DILocation(line: 409, column: 30, scope: !1786)
!2072 = !DILocation(line: 702, column: 34, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1646, file: !441, line: 702, column: 11)
!2074 = !DILocation(line: 704, column: 14, scope: !2073)
!2075 = !DILocation(line: 705, column: 14, scope: !2073)
!2076 = !DILocation(line: 705, column: 35, scope: !2073)
!2077 = !DILocation(line: 705, column: 17, scope: !2073)
!2078 = !DILocation(line: 705, column: 47, scope: !2073)
!2079 = !DILocation(line: 705, column: 65, scope: !2073)
!2080 = !DILocation(line: 706, column: 11, scope: !2073)
!2081 = !DILocation(line: 702, column: 11, scope: !1646)
!2082 = !DILocation(line: 395, column: 15, scope: !1644)
!2083 = !DILocation(line: 709, column: 5, scope: !1646)
!2084 = !DILocation(line: 710, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1646, file: !441, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !441, line: 710, column: 7)
!2088 = !DILocation(line: 710, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !441, line: 710, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !441, line: 710, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !441, line: 710, column: 7)
!2092 = !DILocation(line: 710, column: 7, scope: !2090)
!2093 = !DILocation(line: 710, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !441, line: 710, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !441, line: 710, column: 7)
!2096 = !DILocation(line: 710, column: 7, scope: !2095)
!2097 = !DILocation(line: 710, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !441, line: 710, column: 7)
!2099 = distinct !DILexicalBlock(scope: !2091, file: !441, line: 710, column: 7)
!2100 = !DILocation(line: 710, column: 7, scope: !2099)
!2101 = !DILocation(line: 710, column: 7, scope: !2091)
!2102 = !DILocation(line: 710, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !441, line: 710, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2085, file: !441, line: 710, column: 7)
!2105 = !DILocation(line: 710, column: 7, scope: !2104)
!2106 = !DILocation(line: 712, column: 5, scope: !1646)
!2107 = !DILocation(line: 713, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !441, line: 713, column: 7)
!2109 = distinct !DILexicalBlock(scope: !1646, file: !441, line: 713, column: 7)
!2110 = !DILocation(line: 417, column: 21, scope: !1646)
!2111 = !DILocation(line: 713, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !441, line: 713, column: 7)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !441, line: 713, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !441, line: 713, column: 7)
!2115 = !DILocation(line: 713, column: 7, scope: !2113)
!2116 = !DILocation(line: 713, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !441, line: 713, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !441, line: 713, column: 7)
!2119 = !DILocation(line: 713, column: 7, scope: !2118)
!2120 = !DILocation(line: 713, column: 7, scope: !2114)
!2121 = !DILocation(line: 714, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !441, line: 714, column: 7)
!2123 = distinct !DILexicalBlock(scope: !1646, file: !441, line: 714, column: 7)
!2124 = !DILocation(line: 714, column: 7, scope: !2123)
!2125 = !DILocation(line: 716, column: 11, scope: !1646)
!2126 = !DILocation(line: 718, column: 5, scope: !1647)
!2127 = !DILocation(line: 395, column: 82, scope: !1647)
!2128 = !DILocation(line: 395, column: 3, scope: !1647)
!2129 = distinct !{!2129, !1782, !2130, !866}
!2130 = !DILocation(line: 718, column: 5, scope: !1644)
!2131 = !DILocation(line: 720, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 720, column: 7)
!2133 = !DILocation(line: 720, column: 16, scope: !2132)
!2134 = !DILocation(line: 728, column: 51, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 728, column: 7)
!2136 = !DILocation(line: 731, column: 11, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !441, line: 730, column: 5)
!2138 = !DILocation(line: 732, column: 16, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2137, file: !441, line: 731, column: 11)
!2140 = !DILocation(line: 732, column: 9, scope: !2139)
!2141 = !DILocation(line: 736, column: 18, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !441, line: 736, column: 16)
!2143 = !DILocation(line: 736, column: 29, scope: !2142)
!2144 = !DILocation(line: 745, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 745, column: 7)
!2146 = !DILocation(line: 745, column: 20, scope: !2145)
!2147 = !DILocation(line: 746, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !441, line: 746, column: 5)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !441, line: 746, column: 5)
!2150 = !DILocation(line: 746, column: 5, scope: !2149)
!2151 = !DILocation(line: 747, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !441, line: 747, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !441, line: 747, column: 7)
!2154 = !DILocation(line: 747, column: 7, scope: !2153)
!2155 = !DILocation(line: 746, column: 39, scope: !2148)
!2156 = distinct !{!2156, !2150, !2157, !866}
!2157 = !DILocation(line: 747, column: 7, scope: !2149)
!2158 = !DILocation(line: 749, column: 11, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1612, file: !441, line: 749, column: 7)
!2160 = !DILocation(line: 749, column: 7, scope: !1612)
!2161 = !DILocation(line: 750, column: 5, scope: !2159)
!2162 = !DILocation(line: 750, column: 17, scope: !2159)
!2163 = !DILocation(line: 756, column: 21, scope: !1990)
!2164 = !DILocation(line: 760, column: 42, scope: !1612)
!2165 = !DILocation(line: 758, column: 10, scope: !1612)
!2166 = !DILocation(line: 758, column: 3, scope: !1612)
!2167 = !DILocation(line: 762, column: 1, scope: !1612)
!2168 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !940, file: !940, line: 98, type: !2169, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!99}
!2171 = !DISubprogram(name: "strlen", scope: !936, file: !936, line: 407, type: !2172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!96, !70}
!2174 = !DISubprogram(name: "iswprint", scope: !2175, file: !2175, line: 120, type: !1976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2175 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2176 = distinct !DISubprogram(name: "quotearg_alloc", scope: !441, file: !441, line: 788, type: !2177, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2179)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!246, !70, !99, !1505}
!2179 = !{!2180, !2181, !2182}
!2180 = !DILocalVariable(name: "arg", arg: 1, scope: !2176, file: !441, line: 788, type: !70)
!2181 = !DILocalVariable(name: "argsize", arg: 2, scope: !2176, file: !441, line: 788, type: !99)
!2182 = !DILocalVariable(name: "o", arg: 3, scope: !2176, file: !441, line: 789, type: !1505)
!2183 = !DILocation(line: 0, scope: !2176)
!2184 = !DILocalVariable(name: "arg", arg: 1, scope: !2185, file: !441, line: 801, type: !70)
!2185 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !441, file: !441, line: 801, type: !2186, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!246, !70, !99, !693, !1505}
!2188 = !{!2184, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196}
!2189 = !DILocalVariable(name: "argsize", arg: 2, scope: !2185, file: !441, line: 801, type: !99)
!2190 = !DILocalVariable(name: "size", arg: 3, scope: !2185, file: !441, line: 801, type: !693)
!2191 = !DILocalVariable(name: "o", arg: 4, scope: !2185, file: !441, line: 802, type: !1505)
!2192 = !DILocalVariable(name: "p", scope: !2185, file: !441, line: 804, type: !1505)
!2193 = !DILocalVariable(name: "saved_errno", scope: !2185, file: !441, line: 805, type: !97)
!2194 = !DILocalVariable(name: "flags", scope: !2185, file: !441, line: 807, type: !97)
!2195 = !DILocalVariable(name: "bufsize", scope: !2185, file: !441, line: 808, type: !99)
!2196 = !DILocalVariable(name: "buf", scope: !2185, file: !441, line: 812, type: !246)
!2197 = !DILocation(line: 0, scope: !2185, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 791, column: 10, scope: !2176)
!2199 = !DILocation(line: 804, column: 37, scope: !2185, inlinedAt: !2198)
!2200 = !DILocation(line: 805, column: 21, scope: !2185, inlinedAt: !2198)
!2201 = !DILocation(line: 807, column: 18, scope: !2185, inlinedAt: !2198)
!2202 = !DILocation(line: 807, column: 24, scope: !2185, inlinedAt: !2198)
!2203 = !DILocation(line: 808, column: 72, scope: !2185, inlinedAt: !2198)
!2204 = !DILocation(line: 809, column: 56, scope: !2185, inlinedAt: !2198)
!2205 = !DILocation(line: 810, column: 49, scope: !2185, inlinedAt: !2198)
!2206 = !DILocation(line: 811, column: 49, scope: !2185, inlinedAt: !2198)
!2207 = !DILocation(line: 808, column: 20, scope: !2185, inlinedAt: !2198)
!2208 = !DILocation(line: 811, column: 62, scope: !2185, inlinedAt: !2198)
!2209 = !DILocation(line: 812, column: 15, scope: !2185, inlinedAt: !2198)
!2210 = !DILocation(line: 813, column: 60, scope: !2185, inlinedAt: !2198)
!2211 = !DILocation(line: 815, column: 32, scope: !2185, inlinedAt: !2198)
!2212 = !DILocation(line: 815, column: 47, scope: !2185, inlinedAt: !2198)
!2213 = !DILocation(line: 813, column: 3, scope: !2185, inlinedAt: !2198)
!2214 = !DILocation(line: 816, column: 9, scope: !2185, inlinedAt: !2198)
!2215 = !DILocation(line: 791, column: 3, scope: !2176)
!2216 = !DILocation(line: 0, scope: !2185)
!2217 = !DILocation(line: 804, column: 37, scope: !2185)
!2218 = !DILocation(line: 805, column: 21, scope: !2185)
!2219 = !DILocation(line: 807, column: 18, scope: !2185)
!2220 = !DILocation(line: 807, column: 27, scope: !2185)
!2221 = !DILocation(line: 807, column: 24, scope: !2185)
!2222 = !DILocation(line: 808, column: 72, scope: !2185)
!2223 = !DILocation(line: 809, column: 56, scope: !2185)
!2224 = !DILocation(line: 810, column: 49, scope: !2185)
!2225 = !DILocation(line: 811, column: 49, scope: !2185)
!2226 = !DILocation(line: 808, column: 20, scope: !2185)
!2227 = !DILocation(line: 811, column: 62, scope: !2185)
!2228 = !DILocation(line: 812, column: 15, scope: !2185)
!2229 = !DILocation(line: 813, column: 60, scope: !2185)
!2230 = !DILocation(line: 815, column: 32, scope: !2185)
!2231 = !DILocation(line: 815, column: 47, scope: !2185)
!2232 = !DILocation(line: 813, column: 3, scope: !2185)
!2233 = !DILocation(line: 816, column: 9, scope: !2185)
!2234 = !DILocation(line: 817, column: 7, scope: !2185)
!2235 = !DILocation(line: 818, column: 11, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2185, file: !441, line: 817, column: 7)
!2237 = !{!1228, !1228, i64 0}
!2238 = !DILocation(line: 818, column: 5, scope: !2236)
!2239 = !DILocation(line: 819, column: 3, scope: !2185)
!2240 = distinct !DISubprogram(name: "quotearg_free", scope: !441, file: !441, line: 837, type: !372, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2241)
!2241 = !{!2242, !2243}
!2242 = !DILocalVariable(name: "sv", scope: !2240, file: !441, line: 839, type: !542)
!2243 = !DILocalVariable(name: "i", scope: !2244, file: !441, line: 840, type: !97)
!2244 = distinct !DILexicalBlock(scope: !2240, file: !441, line: 840, column: 3)
!2245 = !DILocation(line: 839, column: 24, scope: !2240)
!2246 = !DILocation(line: 0, scope: !2240)
!2247 = !DILocation(line: 0, scope: !2244)
!2248 = !DILocation(line: 840, column: 21, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2244, file: !441, line: 840, column: 3)
!2250 = !DILocation(line: 840, column: 3, scope: !2244)
!2251 = !DILocation(line: 842, column: 13, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2240, file: !441, line: 842, column: 7)
!2253 = !{!2254, !760, i64 8}
!2254 = !{!"slotvec", !1228, i64 0, !760, i64 8}
!2255 = !DILocation(line: 842, column: 17, scope: !2252)
!2256 = !DILocation(line: 842, column: 7, scope: !2240)
!2257 = !DILocation(line: 841, column: 17, scope: !2249)
!2258 = !DILocation(line: 841, column: 5, scope: !2249)
!2259 = !DILocation(line: 840, column: 32, scope: !2249)
!2260 = distinct !{!2260, !2250, !2261, !866}
!2261 = !DILocation(line: 841, column: 20, scope: !2244)
!2262 = !DILocation(line: 844, column: 7, scope: !2263)
!2263 = distinct !DILexicalBlock(scope: !2252, file: !441, line: 843, column: 5)
!2264 = !DILocation(line: 845, column: 21, scope: !2263)
!2265 = !{!2254, !1228, i64 0}
!2266 = !DILocation(line: 846, column: 20, scope: !2263)
!2267 = !DILocation(line: 847, column: 5, scope: !2263)
!2268 = !DILocation(line: 848, column: 10, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2240, file: !441, line: 848, column: 7)
!2270 = !DILocation(line: 848, column: 7, scope: !2240)
!2271 = !DILocation(line: 850, column: 7, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2269, file: !441, line: 849, column: 5)
!2273 = !DILocation(line: 851, column: 15, scope: !2272)
!2274 = !DILocation(line: 852, column: 5, scope: !2272)
!2275 = !DILocation(line: 853, column: 10, scope: !2240)
!2276 = !DILocation(line: 854, column: 1, scope: !2240)
!2277 = !DISubprogram(name: "free", scope: !1459, file: !1459, line: 786, type: !2278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !91}
!2280 = distinct !DISubprogram(name: "quotearg_n", scope: !441, file: !441, line: 919, type: !933, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2281)
!2281 = !{!2282, !2283}
!2282 = !DILocalVariable(name: "n", arg: 1, scope: !2280, file: !441, line: 919, type: !97)
!2283 = !DILocalVariable(name: "arg", arg: 2, scope: !2280, file: !441, line: 919, type: !70)
!2284 = !DILocation(line: 0, scope: !2280)
!2285 = !DILocation(line: 921, column: 10, scope: !2280)
!2286 = !DILocation(line: 921, column: 3, scope: !2280)
!2287 = distinct !DISubprogram(name: "quotearg_n_options", scope: !441, file: !441, line: 866, type: !2288, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2290)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!246, !97, !70, !99, !1505}
!2290 = !{!2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2301, !2302, !2304, !2305, !2306}
!2291 = !DILocalVariable(name: "n", arg: 1, scope: !2287, file: !441, line: 866, type: !97)
!2292 = !DILocalVariable(name: "arg", arg: 2, scope: !2287, file: !441, line: 866, type: !70)
!2293 = !DILocalVariable(name: "argsize", arg: 3, scope: !2287, file: !441, line: 866, type: !99)
!2294 = !DILocalVariable(name: "options", arg: 4, scope: !2287, file: !441, line: 867, type: !1505)
!2295 = !DILocalVariable(name: "saved_errno", scope: !2287, file: !441, line: 869, type: !97)
!2296 = !DILocalVariable(name: "sv", scope: !2287, file: !441, line: 871, type: !542)
!2297 = !DILocalVariable(name: "nslots_max", scope: !2287, file: !441, line: 873, type: !97)
!2298 = !DILocalVariable(name: "preallocated", scope: !2299, file: !441, line: 879, type: !225)
!2299 = distinct !DILexicalBlock(scope: !2300, file: !441, line: 878, column: 5)
!2300 = distinct !DILexicalBlock(scope: !2287, file: !441, line: 877, column: 7)
!2301 = !DILocalVariable(name: "new_nslots", scope: !2299, file: !441, line: 880, type: !706)
!2302 = !DILocalVariable(name: "size", scope: !2303, file: !441, line: 891, type: !99)
!2303 = distinct !DILexicalBlock(scope: !2287, file: !441, line: 890, column: 3)
!2304 = !DILocalVariable(name: "val", scope: !2303, file: !441, line: 892, type: !246)
!2305 = !DILocalVariable(name: "flags", scope: !2303, file: !441, line: 894, type: !97)
!2306 = !DILocalVariable(name: "qsize", scope: !2303, file: !441, line: 895, type: !99)
!2307 = distinct !DIAssignID()
!2308 = !DILocation(line: 0, scope: !2299)
!2309 = !DILocation(line: 0, scope: !2287)
!2310 = !DILocation(line: 869, column: 21, scope: !2287)
!2311 = !DILocation(line: 871, column: 24, scope: !2287)
!2312 = !DILocation(line: 874, column: 17, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2287, file: !441, line: 874, column: 7)
!2314 = !DILocation(line: 875, column: 5, scope: !2313)
!2315 = !DILocation(line: 877, column: 7, scope: !2300)
!2316 = !DILocation(line: 877, column: 14, scope: !2300)
!2317 = !DILocation(line: 877, column: 7, scope: !2287)
!2318 = !DILocation(line: 879, column: 31, scope: !2299)
!2319 = !DILocation(line: 880, column: 7, scope: !2299)
!2320 = !DILocation(line: 880, column: 26, scope: !2299)
!2321 = !DILocation(line: 880, column: 13, scope: !2299)
!2322 = distinct !DIAssignID()
!2323 = !DILocation(line: 882, column: 31, scope: !2299)
!2324 = !DILocation(line: 883, column: 33, scope: !2299)
!2325 = !DILocation(line: 883, column: 42, scope: !2299)
!2326 = !DILocation(line: 883, column: 31, scope: !2299)
!2327 = !DILocation(line: 882, column: 22, scope: !2299)
!2328 = !DILocation(line: 882, column: 15, scope: !2299)
!2329 = !DILocation(line: 884, column: 11, scope: !2299)
!2330 = !DILocation(line: 885, column: 15, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2299, file: !441, line: 884, column: 11)
!2332 = !{i64 0, i64 8, !2237, i64 8, i64 8, !759}
!2333 = !DILocation(line: 885, column: 9, scope: !2331)
!2334 = !DILocation(line: 886, column: 20, scope: !2299)
!2335 = !DILocation(line: 886, column: 18, scope: !2299)
!2336 = !DILocation(line: 886, column: 32, scope: !2299)
!2337 = !DILocation(line: 886, column: 43, scope: !2299)
!2338 = !DILocation(line: 886, column: 53, scope: !2299)
!2339 = !DILocation(line: 0, scope: !1722, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 886, column: 7, scope: !2299)
!2341 = !DILocation(line: 59, column: 10, scope: !1722, inlinedAt: !2340)
!2342 = !DILocation(line: 887, column: 16, scope: !2299)
!2343 = !DILocation(line: 887, column: 14, scope: !2299)
!2344 = !DILocation(line: 888, column: 5, scope: !2300)
!2345 = !DILocation(line: 888, column: 5, scope: !2299)
!2346 = !DILocation(line: 891, column: 19, scope: !2303)
!2347 = !DILocation(line: 891, column: 25, scope: !2303)
!2348 = !DILocation(line: 0, scope: !2303)
!2349 = !DILocation(line: 892, column: 23, scope: !2303)
!2350 = !DILocation(line: 894, column: 26, scope: !2303)
!2351 = !DILocation(line: 894, column: 32, scope: !2303)
!2352 = !DILocation(line: 896, column: 55, scope: !2303)
!2353 = !DILocation(line: 897, column: 55, scope: !2303)
!2354 = !DILocation(line: 898, column: 55, scope: !2303)
!2355 = !DILocation(line: 899, column: 55, scope: !2303)
!2356 = !DILocation(line: 895, column: 20, scope: !2303)
!2357 = !DILocation(line: 901, column: 14, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2303, file: !441, line: 901, column: 9)
!2359 = !DILocation(line: 901, column: 9, scope: !2303)
!2360 = !DILocation(line: 903, column: 35, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2358, file: !441, line: 902, column: 7)
!2362 = !DILocation(line: 903, column: 20, scope: !2361)
!2363 = !DILocation(line: 904, column: 17, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2361, file: !441, line: 904, column: 13)
!2365 = !DILocation(line: 904, column: 13, scope: !2361)
!2366 = !DILocation(line: 905, column: 11, scope: !2364)
!2367 = !DILocation(line: 906, column: 27, scope: !2361)
!2368 = !DILocation(line: 906, column: 19, scope: !2361)
!2369 = !DILocation(line: 907, column: 69, scope: !2361)
!2370 = !DILocation(line: 909, column: 44, scope: !2361)
!2371 = !DILocation(line: 910, column: 44, scope: !2361)
!2372 = !DILocation(line: 907, column: 9, scope: !2361)
!2373 = !DILocation(line: 911, column: 7, scope: !2361)
!2374 = !DILocation(line: 913, column: 11, scope: !2303)
!2375 = !DILocation(line: 914, column: 5, scope: !2303)
!2376 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !441, file: !441, line: 925, type: !2377, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!246, !97, !70, !99}
!2379 = !{!2380, !2381, !2382}
!2380 = !DILocalVariable(name: "n", arg: 1, scope: !2376, file: !441, line: 925, type: !97)
!2381 = !DILocalVariable(name: "arg", arg: 2, scope: !2376, file: !441, line: 925, type: !70)
!2382 = !DILocalVariable(name: "argsize", arg: 3, scope: !2376, file: !441, line: 925, type: !99)
!2383 = !DILocation(line: 0, scope: !2376)
!2384 = !DILocation(line: 927, column: 10, scope: !2376)
!2385 = !DILocation(line: 927, column: 3, scope: !2376)
!2386 = distinct !DISubprogram(name: "quotearg", scope: !441, file: !441, line: 931, type: !942, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2387)
!2387 = !{!2388}
!2388 = !DILocalVariable(name: "arg", arg: 1, scope: !2386, file: !441, line: 931, type: !70)
!2389 = !DILocation(line: 0, scope: !2386)
!2390 = !DILocation(line: 0, scope: !2280, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 933, column: 10, scope: !2386)
!2392 = !DILocation(line: 921, column: 10, scope: !2280, inlinedAt: !2391)
!2393 = !DILocation(line: 933, column: 3, scope: !2386)
!2394 = distinct !DISubprogram(name: "quotearg_mem", scope: !441, file: !441, line: 937, type: !2395, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2397)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!246, !70, !99}
!2397 = !{!2398, !2399}
!2398 = !DILocalVariable(name: "arg", arg: 1, scope: !2394, file: !441, line: 937, type: !70)
!2399 = !DILocalVariable(name: "argsize", arg: 2, scope: !2394, file: !441, line: 937, type: !99)
!2400 = !DILocation(line: 0, scope: !2394)
!2401 = !DILocation(line: 0, scope: !2376, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 939, column: 10, scope: !2394)
!2403 = !DILocation(line: 927, column: 10, scope: !2376, inlinedAt: !2402)
!2404 = !DILocation(line: 939, column: 3, scope: !2394)
!2405 = distinct !DISubprogram(name: "quotearg_n_style", scope: !441, file: !441, line: 943, type: !2406, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!246, !97, !467, !70}
!2408 = !{!2409, !2410, !2411, !2412}
!2409 = !DILocalVariable(name: "n", arg: 1, scope: !2405, file: !441, line: 943, type: !97)
!2410 = !DILocalVariable(name: "s", arg: 2, scope: !2405, file: !441, line: 943, type: !467)
!2411 = !DILocalVariable(name: "arg", arg: 3, scope: !2405, file: !441, line: 943, type: !70)
!2412 = !DILocalVariable(name: "o", scope: !2405, file: !441, line: 945, type: !1506)
!2413 = distinct !DIAssignID()
!2414 = !DILocation(line: 0, scope: !2405)
!2415 = !DILocation(line: 945, column: 3, scope: !2405)
!2416 = !{!2417}
!2417 = distinct !{!2417, !2418, !"quoting_options_from_style: argument 0"}
!2418 = distinct !{!2418, !"quoting_options_from_style"}
!2419 = !DILocation(line: 945, column: 36, scope: !2405)
!2420 = !DILocalVariable(name: "style", arg: 1, scope: !2421, file: !441, line: 183, type: !467)
!2421 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !441, file: !441, line: 183, type: !2422, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!494, !467}
!2424 = !{!2420, !2425}
!2425 = !DILocalVariable(name: "o", scope: !2421, file: !441, line: 185, type: !494)
!2426 = !DILocation(line: 0, scope: !2421, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 945, column: 36, scope: !2405)
!2428 = !DILocation(line: 185, column: 26, scope: !2421, inlinedAt: !2427)
!2429 = distinct !DIAssignID()
!2430 = !DILocation(line: 186, column: 13, scope: !2431, inlinedAt: !2427)
!2431 = distinct !DILexicalBlock(scope: !2421, file: !441, line: 186, column: 7)
!2432 = !DILocation(line: 186, column: 7, scope: !2421, inlinedAt: !2427)
!2433 = !DILocation(line: 187, column: 5, scope: !2431, inlinedAt: !2427)
!2434 = !DILocation(line: 188, column: 11, scope: !2421, inlinedAt: !2427)
!2435 = distinct !DIAssignID()
!2436 = !DILocation(line: 946, column: 10, scope: !2405)
!2437 = !DILocation(line: 947, column: 1, scope: !2405)
!2438 = !DILocation(line: 946, column: 3, scope: !2405)
!2439 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !441, file: !441, line: 950, type: !2440, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2442)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!246, !97, !467, !70, !99}
!2442 = !{!2443, !2444, !2445, !2446, !2447}
!2443 = !DILocalVariable(name: "n", arg: 1, scope: !2439, file: !441, line: 950, type: !97)
!2444 = !DILocalVariable(name: "s", arg: 2, scope: !2439, file: !441, line: 950, type: !467)
!2445 = !DILocalVariable(name: "arg", arg: 3, scope: !2439, file: !441, line: 951, type: !70)
!2446 = !DILocalVariable(name: "argsize", arg: 4, scope: !2439, file: !441, line: 951, type: !99)
!2447 = !DILocalVariable(name: "o", scope: !2439, file: !441, line: 953, type: !1506)
!2448 = distinct !DIAssignID()
!2449 = !DILocation(line: 0, scope: !2439)
!2450 = !DILocation(line: 953, column: 3, scope: !2439)
!2451 = !{!2452}
!2452 = distinct !{!2452, !2453, !"quoting_options_from_style: argument 0"}
!2453 = distinct !{!2453, !"quoting_options_from_style"}
!2454 = !DILocation(line: 953, column: 36, scope: !2439)
!2455 = !DILocation(line: 0, scope: !2421, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 953, column: 36, scope: !2439)
!2457 = !DILocation(line: 185, column: 26, scope: !2421, inlinedAt: !2456)
!2458 = distinct !DIAssignID()
!2459 = !DILocation(line: 186, column: 13, scope: !2431, inlinedAt: !2456)
!2460 = !DILocation(line: 186, column: 7, scope: !2421, inlinedAt: !2456)
!2461 = !DILocation(line: 187, column: 5, scope: !2431, inlinedAt: !2456)
!2462 = !DILocation(line: 188, column: 11, scope: !2421, inlinedAt: !2456)
!2463 = distinct !DIAssignID()
!2464 = !DILocation(line: 954, column: 10, scope: !2439)
!2465 = !DILocation(line: 955, column: 1, scope: !2439)
!2466 = !DILocation(line: 954, column: 3, scope: !2439)
!2467 = distinct !DISubprogram(name: "quotearg_style", scope: !441, file: !441, line: 958, type: !2468, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!246, !467, !70}
!2470 = !{!2471, !2472}
!2471 = !DILocalVariable(name: "s", arg: 1, scope: !2467, file: !441, line: 958, type: !467)
!2472 = !DILocalVariable(name: "arg", arg: 2, scope: !2467, file: !441, line: 958, type: !70)
!2473 = distinct !DIAssignID()
!2474 = !DILocation(line: 0, scope: !2467)
!2475 = !DILocation(line: 0, scope: !2405, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 960, column: 10, scope: !2467)
!2477 = !DILocation(line: 945, column: 3, scope: !2405, inlinedAt: !2476)
!2478 = !{!2479}
!2479 = distinct !{!2479, !2480, !"quoting_options_from_style: argument 0"}
!2480 = distinct !{!2480, !"quoting_options_from_style"}
!2481 = !DILocation(line: 945, column: 36, scope: !2405, inlinedAt: !2476)
!2482 = !DILocation(line: 0, scope: !2421, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 945, column: 36, scope: !2405, inlinedAt: !2476)
!2484 = !DILocation(line: 185, column: 26, scope: !2421, inlinedAt: !2483)
!2485 = distinct !DIAssignID()
!2486 = !DILocation(line: 186, column: 13, scope: !2431, inlinedAt: !2483)
!2487 = !DILocation(line: 186, column: 7, scope: !2421, inlinedAt: !2483)
!2488 = !DILocation(line: 187, column: 5, scope: !2431, inlinedAt: !2483)
!2489 = !DILocation(line: 188, column: 11, scope: !2421, inlinedAt: !2483)
!2490 = distinct !DIAssignID()
!2491 = !DILocation(line: 946, column: 10, scope: !2405, inlinedAt: !2476)
!2492 = !DILocation(line: 947, column: 1, scope: !2405, inlinedAt: !2476)
!2493 = !DILocation(line: 960, column: 3, scope: !2467)
!2494 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !441, file: !441, line: 964, type: !2495, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!246, !467, !70, !99}
!2497 = !{!2498, !2499, !2500}
!2498 = !DILocalVariable(name: "s", arg: 1, scope: !2494, file: !441, line: 964, type: !467)
!2499 = !DILocalVariable(name: "arg", arg: 2, scope: !2494, file: !441, line: 964, type: !70)
!2500 = !DILocalVariable(name: "argsize", arg: 3, scope: !2494, file: !441, line: 964, type: !99)
!2501 = distinct !DIAssignID()
!2502 = !DILocation(line: 0, scope: !2494)
!2503 = !DILocation(line: 0, scope: !2439, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 966, column: 10, scope: !2494)
!2505 = !DILocation(line: 953, column: 3, scope: !2439, inlinedAt: !2504)
!2506 = !{!2507}
!2507 = distinct !{!2507, !2508, !"quoting_options_from_style: argument 0"}
!2508 = distinct !{!2508, !"quoting_options_from_style"}
!2509 = !DILocation(line: 953, column: 36, scope: !2439, inlinedAt: !2504)
!2510 = !DILocation(line: 0, scope: !2421, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 953, column: 36, scope: !2439, inlinedAt: !2504)
!2512 = !DILocation(line: 185, column: 26, scope: !2421, inlinedAt: !2511)
!2513 = distinct !DIAssignID()
!2514 = !DILocation(line: 186, column: 13, scope: !2431, inlinedAt: !2511)
!2515 = !DILocation(line: 186, column: 7, scope: !2421, inlinedAt: !2511)
!2516 = !DILocation(line: 187, column: 5, scope: !2431, inlinedAt: !2511)
!2517 = !DILocation(line: 188, column: 11, scope: !2421, inlinedAt: !2511)
!2518 = distinct !DIAssignID()
!2519 = !DILocation(line: 954, column: 10, scope: !2439, inlinedAt: !2504)
!2520 = !DILocation(line: 955, column: 1, scope: !2439, inlinedAt: !2504)
!2521 = !DILocation(line: 966, column: 3, scope: !2494)
!2522 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !441, file: !441, line: 970, type: !2523, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!246, !70, !99, !4}
!2525 = !{!2526, !2527, !2528, !2529}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !441, line: 970, type: !70)
!2527 = !DILocalVariable(name: "argsize", arg: 2, scope: !2522, file: !441, line: 970, type: !99)
!2528 = !DILocalVariable(name: "ch", arg: 3, scope: !2522, file: !441, line: 970, type: !4)
!2529 = !DILocalVariable(name: "options", scope: !2522, file: !441, line: 972, type: !494)
!2530 = distinct !DIAssignID()
!2531 = !DILocation(line: 0, scope: !2522)
!2532 = !DILocation(line: 972, column: 3, scope: !2522)
!2533 = !DILocation(line: 973, column: 13, scope: !2522)
!2534 = !{i64 0, i64 4, !819, i64 4, i64 4, !819, i64 8, i64 32, !828, i64 40, i64 8, !759, i64 48, i64 8, !759}
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 0, scope: !1525, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 974, column: 3, scope: !2522)
!2538 = !DILocation(line: 147, column: 41, scope: !1525, inlinedAt: !2537)
!2539 = !DILocation(line: 147, column: 62, scope: !1525, inlinedAt: !2537)
!2540 = !DILocation(line: 147, column: 57, scope: !1525, inlinedAt: !2537)
!2541 = !DILocation(line: 148, column: 15, scope: !1525, inlinedAt: !2537)
!2542 = !DILocation(line: 149, column: 21, scope: !1525, inlinedAt: !2537)
!2543 = !DILocation(line: 149, column: 24, scope: !1525, inlinedAt: !2537)
!2544 = !DILocation(line: 150, column: 19, scope: !1525, inlinedAt: !2537)
!2545 = !DILocation(line: 150, column: 24, scope: !1525, inlinedAt: !2537)
!2546 = !DILocation(line: 150, column: 6, scope: !1525, inlinedAt: !2537)
!2547 = !DILocation(line: 975, column: 10, scope: !2522)
!2548 = !DILocation(line: 976, column: 1, scope: !2522)
!2549 = !DILocation(line: 975, column: 3, scope: !2522)
!2550 = distinct !DISubprogram(name: "quotearg_char", scope: !441, file: !441, line: 979, type: !2551, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2553)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!246, !70, !4}
!2553 = !{!2554, !2555}
!2554 = !DILocalVariable(name: "arg", arg: 1, scope: !2550, file: !441, line: 979, type: !70)
!2555 = !DILocalVariable(name: "ch", arg: 2, scope: !2550, file: !441, line: 979, type: !4)
!2556 = distinct !DIAssignID()
!2557 = !DILocation(line: 0, scope: !2550)
!2558 = !DILocation(line: 0, scope: !2522, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 981, column: 10, scope: !2550)
!2560 = !DILocation(line: 972, column: 3, scope: !2522, inlinedAt: !2559)
!2561 = !DILocation(line: 973, column: 13, scope: !2522, inlinedAt: !2559)
!2562 = distinct !DIAssignID()
!2563 = !DILocation(line: 0, scope: !1525, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 974, column: 3, scope: !2522, inlinedAt: !2559)
!2565 = !DILocation(line: 147, column: 41, scope: !1525, inlinedAt: !2564)
!2566 = !DILocation(line: 147, column: 62, scope: !1525, inlinedAt: !2564)
!2567 = !DILocation(line: 147, column: 57, scope: !1525, inlinedAt: !2564)
!2568 = !DILocation(line: 148, column: 15, scope: !1525, inlinedAt: !2564)
!2569 = !DILocation(line: 149, column: 21, scope: !1525, inlinedAt: !2564)
!2570 = !DILocation(line: 149, column: 24, scope: !1525, inlinedAt: !2564)
!2571 = !DILocation(line: 150, column: 19, scope: !1525, inlinedAt: !2564)
!2572 = !DILocation(line: 150, column: 24, scope: !1525, inlinedAt: !2564)
!2573 = !DILocation(line: 150, column: 6, scope: !1525, inlinedAt: !2564)
!2574 = !DILocation(line: 975, column: 10, scope: !2522, inlinedAt: !2559)
!2575 = !DILocation(line: 976, column: 1, scope: !2522, inlinedAt: !2559)
!2576 = !DILocation(line: 981, column: 3, scope: !2550)
!2577 = distinct !DISubprogram(name: "quotearg_colon", scope: !441, file: !441, line: 985, type: !942, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2578)
!2578 = !{!2579}
!2579 = !DILocalVariable(name: "arg", arg: 1, scope: !2577, file: !441, line: 985, type: !70)
!2580 = distinct !DIAssignID()
!2581 = !DILocation(line: 0, scope: !2577)
!2582 = !DILocation(line: 0, scope: !2550, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 987, column: 10, scope: !2577)
!2584 = !DILocation(line: 0, scope: !2522, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 981, column: 10, scope: !2550, inlinedAt: !2583)
!2586 = !DILocation(line: 972, column: 3, scope: !2522, inlinedAt: !2585)
!2587 = !DILocation(line: 973, column: 13, scope: !2522, inlinedAt: !2585)
!2588 = distinct !DIAssignID()
!2589 = !DILocation(line: 0, scope: !1525, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 974, column: 3, scope: !2522, inlinedAt: !2585)
!2591 = !DILocation(line: 147, column: 57, scope: !1525, inlinedAt: !2590)
!2592 = !DILocation(line: 149, column: 21, scope: !1525, inlinedAt: !2590)
!2593 = !DILocation(line: 150, column: 6, scope: !1525, inlinedAt: !2590)
!2594 = !DILocation(line: 975, column: 10, scope: !2522, inlinedAt: !2585)
!2595 = !DILocation(line: 976, column: 1, scope: !2522, inlinedAt: !2585)
!2596 = !DILocation(line: 987, column: 3, scope: !2577)
!2597 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !441, file: !441, line: 991, type: !2395, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2598)
!2598 = !{!2599, !2600}
!2599 = !DILocalVariable(name: "arg", arg: 1, scope: !2597, file: !441, line: 991, type: !70)
!2600 = !DILocalVariable(name: "argsize", arg: 2, scope: !2597, file: !441, line: 991, type: !99)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !2597)
!2603 = !DILocation(line: 0, scope: !2522, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 993, column: 10, scope: !2597)
!2605 = !DILocation(line: 972, column: 3, scope: !2522, inlinedAt: !2604)
!2606 = !DILocation(line: 973, column: 13, scope: !2522, inlinedAt: !2604)
!2607 = distinct !DIAssignID()
!2608 = !DILocation(line: 0, scope: !1525, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 974, column: 3, scope: !2522, inlinedAt: !2604)
!2610 = !DILocation(line: 147, column: 57, scope: !1525, inlinedAt: !2609)
!2611 = !DILocation(line: 149, column: 21, scope: !1525, inlinedAt: !2609)
!2612 = !DILocation(line: 150, column: 6, scope: !1525, inlinedAt: !2609)
!2613 = !DILocation(line: 975, column: 10, scope: !2522, inlinedAt: !2604)
!2614 = !DILocation(line: 976, column: 1, scope: !2522, inlinedAt: !2604)
!2615 = !DILocation(line: 993, column: 3, scope: !2597)
!2616 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !441, file: !441, line: 997, type: !2406, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2617)
!2617 = !{!2618, !2619, !2620, !2621}
!2618 = !DILocalVariable(name: "n", arg: 1, scope: !2616, file: !441, line: 997, type: !97)
!2619 = !DILocalVariable(name: "s", arg: 2, scope: !2616, file: !441, line: 997, type: !467)
!2620 = !DILocalVariable(name: "arg", arg: 3, scope: !2616, file: !441, line: 997, type: !70)
!2621 = !DILocalVariable(name: "options", scope: !2616, file: !441, line: 999, type: !494)
!2622 = distinct !DIAssignID()
!2623 = !DILocation(line: 0, scope: !2616)
!2624 = !DILocation(line: 185, column: 26, scope: !2421, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1000, column: 13, scope: !2616)
!2626 = !DILocation(line: 999, column: 3, scope: !2616)
!2627 = !DILocation(line: 0, scope: !2421, inlinedAt: !2625)
!2628 = !DILocation(line: 186, column: 13, scope: !2431, inlinedAt: !2625)
!2629 = !DILocation(line: 186, column: 7, scope: !2421, inlinedAt: !2625)
!2630 = !DILocation(line: 187, column: 5, scope: !2431, inlinedAt: !2625)
!2631 = !{!2632}
!2632 = distinct !{!2632, !2633, !"quoting_options_from_style: argument 0"}
!2633 = distinct !{!2633, !"quoting_options_from_style"}
!2634 = !DILocation(line: 1000, column: 13, scope: !2616)
!2635 = distinct !DIAssignID()
!2636 = distinct !DIAssignID()
!2637 = !DILocation(line: 0, scope: !1525, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 1001, column: 3, scope: !2616)
!2639 = !DILocation(line: 147, column: 57, scope: !1525, inlinedAt: !2638)
!2640 = !DILocation(line: 149, column: 21, scope: !1525, inlinedAt: !2638)
!2641 = !DILocation(line: 150, column: 6, scope: !1525, inlinedAt: !2638)
!2642 = distinct !DIAssignID()
!2643 = !DILocation(line: 1002, column: 10, scope: !2616)
!2644 = !DILocation(line: 1003, column: 1, scope: !2616)
!2645 = !DILocation(line: 1002, column: 3, scope: !2616)
!2646 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !441, file: !441, line: 1006, type: !2647, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2649)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!246, !97, !70, !70, !70}
!2649 = !{!2650, !2651, !2652, !2653}
!2650 = !DILocalVariable(name: "n", arg: 1, scope: !2646, file: !441, line: 1006, type: !97)
!2651 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2646, file: !441, line: 1006, type: !70)
!2652 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2646, file: !441, line: 1007, type: !70)
!2653 = !DILocalVariable(name: "arg", arg: 4, scope: !2646, file: !441, line: 1007, type: !70)
!2654 = distinct !DIAssignID()
!2655 = !DILocation(line: 0, scope: !2646)
!2656 = !DILocalVariable(name: "o", scope: !2657, file: !441, line: 1018, type: !494)
!2657 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !441, file: !441, line: 1014, type: !2658, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!246, !97, !70, !70, !70, !99}
!2660 = !{!2661, !2662, !2663, !2664, !2665, !2656}
!2661 = !DILocalVariable(name: "n", arg: 1, scope: !2657, file: !441, line: 1014, type: !97)
!2662 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2657, file: !441, line: 1014, type: !70)
!2663 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2657, file: !441, line: 1015, type: !70)
!2664 = !DILocalVariable(name: "arg", arg: 4, scope: !2657, file: !441, line: 1016, type: !70)
!2665 = !DILocalVariable(name: "argsize", arg: 5, scope: !2657, file: !441, line: 1016, type: !99)
!2666 = !DILocation(line: 0, scope: !2657, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1009, column: 10, scope: !2646)
!2668 = !DILocation(line: 1018, column: 3, scope: !2657, inlinedAt: !2667)
!2669 = !DILocation(line: 1018, column: 30, scope: !2657, inlinedAt: !2667)
!2670 = distinct !DIAssignID()
!2671 = distinct !DIAssignID()
!2672 = !DILocation(line: 0, scope: !1565, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1019, column: 3, scope: !2657, inlinedAt: !2667)
!2674 = !DILocation(line: 174, column: 12, scope: !1565, inlinedAt: !2673)
!2675 = distinct !DIAssignID()
!2676 = !DILocation(line: 175, column: 8, scope: !1578, inlinedAt: !2673)
!2677 = !DILocation(line: 175, column: 19, scope: !1578, inlinedAt: !2673)
!2678 = !DILocation(line: 176, column: 5, scope: !1578, inlinedAt: !2673)
!2679 = !DILocation(line: 177, column: 6, scope: !1565, inlinedAt: !2673)
!2680 = !DILocation(line: 177, column: 17, scope: !1565, inlinedAt: !2673)
!2681 = distinct !DIAssignID()
!2682 = !DILocation(line: 178, column: 6, scope: !1565, inlinedAt: !2673)
!2683 = !DILocation(line: 178, column: 18, scope: !1565, inlinedAt: !2673)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 1020, column: 10, scope: !2657, inlinedAt: !2667)
!2686 = !DILocation(line: 1021, column: 1, scope: !2657, inlinedAt: !2667)
!2687 = !DILocation(line: 1009, column: 3, scope: !2646)
!2688 = distinct !DIAssignID()
!2689 = !DILocation(line: 0, scope: !2657)
!2690 = !DILocation(line: 1018, column: 3, scope: !2657)
!2691 = !DILocation(line: 1018, column: 30, scope: !2657)
!2692 = distinct !DIAssignID()
!2693 = distinct !DIAssignID()
!2694 = !DILocation(line: 0, scope: !1565, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1019, column: 3, scope: !2657)
!2696 = !DILocation(line: 174, column: 12, scope: !1565, inlinedAt: !2695)
!2697 = distinct !DIAssignID()
!2698 = !DILocation(line: 175, column: 8, scope: !1578, inlinedAt: !2695)
!2699 = !DILocation(line: 175, column: 19, scope: !1578, inlinedAt: !2695)
!2700 = !DILocation(line: 176, column: 5, scope: !1578, inlinedAt: !2695)
!2701 = !DILocation(line: 177, column: 6, scope: !1565, inlinedAt: !2695)
!2702 = !DILocation(line: 177, column: 17, scope: !1565, inlinedAt: !2695)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 178, column: 6, scope: !1565, inlinedAt: !2695)
!2705 = !DILocation(line: 178, column: 18, scope: !1565, inlinedAt: !2695)
!2706 = distinct !DIAssignID()
!2707 = !DILocation(line: 1020, column: 10, scope: !2657)
!2708 = !DILocation(line: 1021, column: 1, scope: !2657)
!2709 = !DILocation(line: 1020, column: 3, scope: !2657)
!2710 = distinct !DISubprogram(name: "quotearg_custom", scope: !441, file: !441, line: 1024, type: !2711, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!246, !70, !70, !70}
!2713 = !{!2714, !2715, !2716}
!2714 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2710, file: !441, line: 1024, type: !70)
!2715 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2710, file: !441, line: 1024, type: !70)
!2716 = !DILocalVariable(name: "arg", arg: 3, scope: !2710, file: !441, line: 1025, type: !70)
!2717 = distinct !DIAssignID()
!2718 = !DILocation(line: 0, scope: !2710)
!2719 = !DILocation(line: 0, scope: !2646, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1027, column: 10, scope: !2710)
!2721 = !DILocation(line: 0, scope: !2657, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 1009, column: 10, scope: !2646, inlinedAt: !2720)
!2723 = !DILocation(line: 1018, column: 3, scope: !2657, inlinedAt: !2722)
!2724 = !DILocation(line: 1018, column: 30, scope: !2657, inlinedAt: !2722)
!2725 = distinct !DIAssignID()
!2726 = distinct !DIAssignID()
!2727 = !DILocation(line: 0, scope: !1565, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1019, column: 3, scope: !2657, inlinedAt: !2722)
!2729 = !DILocation(line: 174, column: 12, scope: !1565, inlinedAt: !2728)
!2730 = distinct !DIAssignID()
!2731 = !DILocation(line: 175, column: 8, scope: !1578, inlinedAt: !2728)
!2732 = !DILocation(line: 175, column: 19, scope: !1578, inlinedAt: !2728)
!2733 = !DILocation(line: 176, column: 5, scope: !1578, inlinedAt: !2728)
!2734 = !DILocation(line: 177, column: 6, scope: !1565, inlinedAt: !2728)
!2735 = !DILocation(line: 177, column: 17, scope: !1565, inlinedAt: !2728)
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 178, column: 6, scope: !1565, inlinedAt: !2728)
!2738 = !DILocation(line: 178, column: 18, scope: !1565, inlinedAt: !2728)
!2739 = distinct !DIAssignID()
!2740 = !DILocation(line: 1020, column: 10, scope: !2657, inlinedAt: !2722)
!2741 = !DILocation(line: 1021, column: 1, scope: !2657, inlinedAt: !2722)
!2742 = !DILocation(line: 1027, column: 3, scope: !2710)
!2743 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !441, file: !441, line: 1031, type: !2744, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!246, !70, !70, !70, !99}
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2743, file: !441, line: 1031, type: !70)
!2748 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2743, file: !441, line: 1031, type: !70)
!2749 = !DILocalVariable(name: "arg", arg: 3, scope: !2743, file: !441, line: 1032, type: !70)
!2750 = !DILocalVariable(name: "argsize", arg: 4, scope: !2743, file: !441, line: 1032, type: !99)
!2751 = distinct !DIAssignID()
!2752 = !DILocation(line: 0, scope: !2743)
!2753 = !DILocation(line: 0, scope: !2657, inlinedAt: !2754)
!2754 = distinct !DILocation(line: 1034, column: 10, scope: !2743)
!2755 = !DILocation(line: 1018, column: 3, scope: !2657, inlinedAt: !2754)
!2756 = !DILocation(line: 1018, column: 30, scope: !2657, inlinedAt: !2754)
!2757 = distinct !DIAssignID()
!2758 = distinct !DIAssignID()
!2759 = !DILocation(line: 0, scope: !1565, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1019, column: 3, scope: !2657, inlinedAt: !2754)
!2761 = !DILocation(line: 174, column: 12, scope: !1565, inlinedAt: !2760)
!2762 = distinct !DIAssignID()
!2763 = !DILocation(line: 175, column: 8, scope: !1578, inlinedAt: !2760)
!2764 = !DILocation(line: 175, column: 19, scope: !1578, inlinedAt: !2760)
!2765 = !DILocation(line: 176, column: 5, scope: !1578, inlinedAt: !2760)
!2766 = !DILocation(line: 177, column: 6, scope: !1565, inlinedAt: !2760)
!2767 = !DILocation(line: 177, column: 17, scope: !1565, inlinedAt: !2760)
!2768 = distinct !DIAssignID()
!2769 = !DILocation(line: 178, column: 6, scope: !1565, inlinedAt: !2760)
!2770 = !DILocation(line: 178, column: 18, scope: !1565, inlinedAt: !2760)
!2771 = distinct !DIAssignID()
!2772 = !DILocation(line: 1020, column: 10, scope: !2657, inlinedAt: !2754)
!2773 = !DILocation(line: 1021, column: 1, scope: !2657, inlinedAt: !2754)
!2774 = !DILocation(line: 1034, column: 3, scope: !2743)
!2775 = distinct !DISubprogram(name: "quote_n_mem", scope: !441, file: !441, line: 1049, type: !2776, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!70, !97, !70, !99}
!2778 = !{!2779, !2780, !2781}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !441, line: 1049, type: !97)
!2780 = !DILocalVariable(name: "arg", arg: 2, scope: !2775, file: !441, line: 1049, type: !70)
!2781 = !DILocalVariable(name: "argsize", arg: 3, scope: !2775, file: !441, line: 1049, type: !99)
!2782 = !DILocation(line: 0, scope: !2775)
!2783 = !DILocation(line: 1051, column: 10, scope: !2775)
!2784 = !DILocation(line: 1051, column: 3, scope: !2775)
!2785 = distinct !DISubprogram(name: "quote_mem", scope: !441, file: !441, line: 1055, type: !2786, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2788)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!70, !70, !99}
!2788 = !{!2789, !2790}
!2789 = !DILocalVariable(name: "arg", arg: 1, scope: !2785, file: !441, line: 1055, type: !70)
!2790 = !DILocalVariable(name: "argsize", arg: 2, scope: !2785, file: !441, line: 1055, type: !99)
!2791 = !DILocation(line: 0, scope: !2785)
!2792 = !DILocation(line: 0, scope: !2775, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1057, column: 10, scope: !2785)
!2794 = !DILocation(line: 1051, column: 10, scope: !2775, inlinedAt: !2793)
!2795 = !DILocation(line: 1057, column: 3, scope: !2785)
!2796 = distinct !DISubprogram(name: "quote_n", scope: !441, file: !441, line: 1061, type: !2797, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2799)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!70, !97, !70}
!2799 = !{!2800, !2801}
!2800 = !DILocalVariable(name: "n", arg: 1, scope: !2796, file: !441, line: 1061, type: !97)
!2801 = !DILocalVariable(name: "arg", arg: 2, scope: !2796, file: !441, line: 1061, type: !70)
!2802 = !DILocation(line: 0, scope: !2796)
!2803 = !DILocation(line: 0, scope: !2775, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 1063, column: 10, scope: !2796)
!2805 = !DILocation(line: 1051, column: 10, scope: !2775, inlinedAt: !2804)
!2806 = !DILocation(line: 1063, column: 3, scope: !2796)
!2807 = distinct !DISubprogram(name: "quote", scope: !441, file: !441, line: 1067, type: !2808, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !465, retainedNodes: !2810)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!70, !70}
!2810 = !{!2811}
!2811 = !DILocalVariable(name: "arg", arg: 1, scope: !2807, file: !441, line: 1067, type: !70)
!2812 = !DILocation(line: 0, scope: !2807)
!2813 = !DILocation(line: 0, scope: !2796, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1069, column: 10, scope: !2807)
!2815 = !DILocation(line: 0, scope: !2775, inlinedAt: !2816)
!2816 = distinct !DILocation(line: 1063, column: 10, scope: !2796, inlinedAt: !2814)
!2817 = !DILocation(line: 1051, column: 10, scope: !2775, inlinedAt: !2816)
!2818 = !DILocation(line: 1069, column: 3, scope: !2807)
!2819 = distinct !DISubprogram(name: "version_etc_arn", scope: !557, file: !557, line: 61, type: !2820, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2857)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{null, !2822, !70, !70, !70, !2856, !99}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !2824)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !2825)
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2824, file: !242, line: 51, baseType: !97, size: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2824, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2824, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2824, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2824, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2824, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2824, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2824, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2824, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2824, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2824, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2824, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2824, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2824, file: !242, line: 70, baseType: !2840, size: 64, offset: 832)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2824, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2824, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2824, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2824, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2824, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2824, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2824, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2824, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2824, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2824, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2824, file: !242, line: 93, baseType: !2840, size: 64, offset: 1344)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2824, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2824, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2824, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2824, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!2857 = !{!2858, !2859, !2860, !2861, !2862, !2863}
!2858 = !DILocalVariable(name: "stream", arg: 1, scope: !2819, file: !557, line: 61, type: !2822)
!2859 = !DILocalVariable(name: "command_name", arg: 2, scope: !2819, file: !557, line: 62, type: !70)
!2860 = !DILocalVariable(name: "package", arg: 3, scope: !2819, file: !557, line: 62, type: !70)
!2861 = !DILocalVariable(name: "version", arg: 4, scope: !2819, file: !557, line: 63, type: !70)
!2862 = !DILocalVariable(name: "authors", arg: 5, scope: !2819, file: !557, line: 64, type: !2856)
!2863 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2819, file: !557, line: 64, type: !99)
!2864 = !DILocation(line: 0, scope: !2819)
!2865 = !DILocation(line: 66, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2819, file: !557, line: 66, column: 7)
!2867 = !DILocation(line: 66, column: 7, scope: !2819)
!2868 = !DILocation(line: 67, column: 5, scope: !2866)
!2869 = !DILocation(line: 69, column: 5, scope: !2866)
!2870 = !DILocation(line: 83, column: 3, scope: !2819)
!2871 = !DILocation(line: 85, column: 3, scope: !2819)
!2872 = !DILocation(line: 88, column: 3, scope: !2819)
!2873 = !DILocation(line: 95, column: 3, scope: !2819)
!2874 = !DILocation(line: 97, column: 3, scope: !2819)
!2875 = !DILocation(line: 105, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2819, file: !557, line: 98, column: 5)
!2877 = !DILocation(line: 106, column: 7, scope: !2876)
!2878 = !DILocation(line: 109, column: 7, scope: !2876)
!2879 = !DILocation(line: 110, column: 7, scope: !2876)
!2880 = !DILocation(line: 113, column: 7, scope: !2876)
!2881 = !DILocation(line: 115, column: 7, scope: !2876)
!2882 = !DILocation(line: 120, column: 7, scope: !2876)
!2883 = !DILocation(line: 122, column: 7, scope: !2876)
!2884 = !DILocation(line: 127, column: 7, scope: !2876)
!2885 = !DILocation(line: 129, column: 7, scope: !2876)
!2886 = !DILocation(line: 134, column: 7, scope: !2876)
!2887 = !DILocation(line: 137, column: 7, scope: !2876)
!2888 = !DILocation(line: 142, column: 7, scope: !2876)
!2889 = !DILocation(line: 145, column: 7, scope: !2876)
!2890 = !DILocation(line: 150, column: 7, scope: !2876)
!2891 = !DILocation(line: 154, column: 7, scope: !2876)
!2892 = !DILocation(line: 159, column: 7, scope: !2876)
!2893 = !DILocation(line: 163, column: 7, scope: !2876)
!2894 = !DILocation(line: 170, column: 7, scope: !2876)
!2895 = !DILocation(line: 174, column: 7, scope: !2876)
!2896 = !DILocation(line: 176, column: 1, scope: !2819)
!2897 = distinct !DISubprogram(name: "version_etc_ar", scope: !557, file: !557, line: 183, type: !2898, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2900)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2822, !70, !70, !70, !2856}
!2900 = !{!2901, !2902, !2903, !2904, !2905, !2906}
!2901 = !DILocalVariable(name: "stream", arg: 1, scope: !2897, file: !557, line: 183, type: !2822)
!2902 = !DILocalVariable(name: "command_name", arg: 2, scope: !2897, file: !557, line: 184, type: !70)
!2903 = !DILocalVariable(name: "package", arg: 3, scope: !2897, file: !557, line: 184, type: !70)
!2904 = !DILocalVariable(name: "version", arg: 4, scope: !2897, file: !557, line: 185, type: !70)
!2905 = !DILocalVariable(name: "authors", arg: 5, scope: !2897, file: !557, line: 185, type: !2856)
!2906 = !DILocalVariable(name: "n_authors", scope: !2897, file: !557, line: 187, type: !99)
!2907 = !DILocation(line: 0, scope: !2897)
!2908 = !DILocation(line: 189, column: 8, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2897, file: !557, line: 189, column: 3)
!2910 = !DILocation(line: 189, scope: !2909)
!2911 = !DILocation(line: 189, column: 23, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2909, file: !557, line: 189, column: 3)
!2913 = !DILocation(line: 189, column: 3, scope: !2909)
!2914 = !DILocation(line: 189, column: 52, scope: !2912)
!2915 = distinct !{!2915, !2913, !2916, !866}
!2916 = !DILocation(line: 190, column: 5, scope: !2909)
!2917 = !DILocation(line: 191, column: 3, scope: !2897)
!2918 = !DILocation(line: 192, column: 1, scope: !2897)
!2919 = distinct !DISubprogram(name: "version_etc_va", scope: !557, file: !557, line: 199, type: !2920, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2932)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{null, !2822, !70, !70, !70, !2922}
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !332, line: 52, baseType: !2923)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !334, line: 12, baseType: !2924)
!2924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !557, baseType: !2925)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2926)
!2926 = !{!2927, !2928, !2929, !2930, !2931}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2925, file: !557, line: 192, baseType: !91, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2925, file: !557, line: 192, baseType: !91, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2925, file: !557, line: 192, baseType: !91, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2925, file: !557, line: 192, baseType: !97, size: 32, offset: 192)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2925, file: !557, line: 192, baseType: !97, size: 32, offset: 224)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2933 = !DILocalVariable(name: "stream", arg: 1, scope: !2919, file: !557, line: 199, type: !2822)
!2934 = !DILocalVariable(name: "command_name", arg: 2, scope: !2919, file: !557, line: 200, type: !70)
!2935 = !DILocalVariable(name: "package", arg: 3, scope: !2919, file: !557, line: 200, type: !70)
!2936 = !DILocalVariable(name: "version", arg: 4, scope: !2919, file: !557, line: 201, type: !70)
!2937 = !DILocalVariable(name: "authors", arg: 5, scope: !2919, file: !557, line: 201, type: !2922)
!2938 = !DILocalVariable(name: "n_authors", scope: !2919, file: !557, line: 203, type: !99)
!2939 = !DILocalVariable(name: "authtab", scope: !2919, file: !557, line: 204, type: !2940)
!2940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2941 = distinct !DIAssignID()
!2942 = !DILocation(line: 0, scope: !2919)
!2943 = !DILocation(line: 204, column: 3, scope: !2919)
!2944 = !DILocation(line: 208, column: 35, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !557, line: 206, column: 3)
!2946 = distinct !DILexicalBlock(scope: !2919, file: !557, line: 206, column: 3)
!2947 = !DILocation(line: 208, column: 33, scope: !2945)
!2948 = !DILocation(line: 208, column: 67, scope: !2945)
!2949 = !DILocation(line: 206, column: 3, scope: !2946)
!2950 = !DILocation(line: 208, column: 14, scope: !2945)
!2951 = !DILocation(line: 0, scope: !2946)
!2952 = !DILocation(line: 211, column: 3, scope: !2919)
!2953 = !DILocation(line: 213, column: 1, scope: !2919)
!2954 = distinct !DISubprogram(name: "version_etc", scope: !557, file: !557, line: 230, type: !2955, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2822, !70, !70, !70, null}
!2957 = !{!2958, !2959, !2960, !2961, !2962}
!2958 = !DILocalVariable(name: "stream", arg: 1, scope: !2954, file: !557, line: 230, type: !2822)
!2959 = !DILocalVariable(name: "command_name", arg: 2, scope: !2954, file: !557, line: 231, type: !70)
!2960 = !DILocalVariable(name: "package", arg: 3, scope: !2954, file: !557, line: 231, type: !70)
!2961 = !DILocalVariable(name: "version", arg: 4, scope: !2954, file: !557, line: 232, type: !70)
!2962 = !DILocalVariable(name: "authors", scope: !2954, file: !557, line: 234, type: !2922)
!2963 = distinct !DIAssignID()
!2964 = !DILocation(line: 0, scope: !2954)
!2965 = !DILocation(line: 234, column: 3, scope: !2954)
!2966 = !DILocation(line: 235, column: 3, scope: !2954)
!2967 = !DILocation(line: 236, column: 3, scope: !2954)
!2968 = !DILocation(line: 237, column: 3, scope: !2954)
!2969 = !DILocation(line: 238, column: 1, scope: !2954)
!2970 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !557, file: !557, line: 241, type: !372, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680)
!2971 = !DILocation(line: 243, column: 3, scope: !2970)
!2972 = !DILocation(line: 248, column: 3, scope: !2970)
!2973 = !DILocation(line: 254, column: 3, scope: !2970)
!2974 = !DILocation(line: 259, column: 3, scope: !2970)
!2975 = !DILocation(line: 261, column: 1, scope: !2970)
!2976 = distinct !DISubprogram(name: "xnrealloc", scope: !2977, file: !2977, line: 147, type: !2978, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2980)
!2977 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!91, !91, !99, !99}
!2980 = !{!2981, !2982, !2983}
!2981 = !DILocalVariable(name: "p", arg: 1, scope: !2976, file: !2977, line: 147, type: !91)
!2982 = !DILocalVariable(name: "n", arg: 2, scope: !2976, file: !2977, line: 147, type: !99)
!2983 = !DILocalVariable(name: "s", arg: 3, scope: !2976, file: !2977, line: 147, type: !99)
!2984 = !DILocation(line: 0, scope: !2976)
!2985 = !DILocalVariable(name: "p", arg: 1, scope: !2986, file: !687, line: 83, type: !91)
!2986 = distinct !DISubprogram(name: "xreallocarray", scope: !687, file: !687, line: 83, type: !2978, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2987)
!2987 = !{!2985, !2988, !2989}
!2988 = !DILocalVariable(name: "n", arg: 2, scope: !2986, file: !687, line: 83, type: !99)
!2989 = !DILocalVariable(name: "s", arg: 3, scope: !2986, file: !687, line: 83, type: !99)
!2990 = !DILocation(line: 0, scope: !2986, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 149, column: 10, scope: !2976)
!2992 = !DILocation(line: 85, column: 25, scope: !2986, inlinedAt: !2991)
!2993 = !DILocalVariable(name: "p", arg: 1, scope: !2994, file: !687, line: 37, type: !91)
!2994 = distinct !DISubprogram(name: "check_nonnull", scope: !687, file: !687, line: 37, type: !2995, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!91, !91}
!2997 = !{!2993}
!2998 = !DILocation(line: 0, scope: !2994, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 85, column: 10, scope: !2986, inlinedAt: !2991)
!3000 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !2999)
!3001 = distinct !DILexicalBlock(scope: !2994, file: !687, line: 39, column: 7)
!3002 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !2999)
!3003 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !2999)
!3004 = !DILocation(line: 149, column: 3, scope: !2976)
!3005 = !DILocation(line: 0, scope: !2986)
!3006 = !DILocation(line: 85, column: 25, scope: !2986)
!3007 = !DILocation(line: 0, scope: !2994, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 85, column: 10, scope: !2986)
!3009 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3008)
!3010 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3008)
!3011 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3008)
!3012 = !DILocation(line: 85, column: 3, scope: !2986)
!3013 = distinct !DISubprogram(name: "xmalloc", scope: !687, file: !687, line: 47, type: !3014, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!91, !99}
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "s", arg: 1, scope: !3013, file: !687, line: 47, type: !99)
!3018 = !DILocation(line: 0, scope: !3013)
!3019 = !DILocation(line: 49, column: 25, scope: !3013)
!3020 = !DILocation(line: 0, scope: !2994, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 49, column: 10, scope: !3013)
!3022 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3021)
!3023 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3021)
!3024 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3021)
!3025 = !DILocation(line: 49, column: 3, scope: !3013)
!3026 = !DISubprogram(name: "malloc", scope: !940, file: !940, line: 540, type: !3014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3027 = distinct !DISubprogram(name: "ximalloc", scope: !687, file: !687, line: 53, type: !3028, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!91, !706}
!3030 = !{!3031}
!3031 = !DILocalVariable(name: "s", arg: 1, scope: !3027, file: !687, line: 53, type: !706)
!3032 = !DILocation(line: 0, scope: !3027)
!3033 = !DILocalVariable(name: "s", arg: 1, scope: !3034, file: !3035, line: 55, type: !706)
!3034 = distinct !DISubprogram(name: "imalloc", scope: !3035, file: !3035, line: 55, type: !3028, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3036)
!3035 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3036 = !{!3033}
!3037 = !DILocation(line: 0, scope: !3034, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 55, column: 25, scope: !3027)
!3039 = !DILocation(line: 57, column: 26, scope: !3034, inlinedAt: !3038)
!3040 = !DILocation(line: 0, scope: !2994, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 55, column: 10, scope: !3027)
!3042 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3041)
!3043 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3041)
!3044 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3041)
!3045 = !DILocation(line: 55, column: 3, scope: !3027)
!3046 = distinct !DISubprogram(name: "xcharalloc", scope: !687, file: !687, line: 59, type: !3047, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!246, !99}
!3049 = !{!3050}
!3050 = !DILocalVariable(name: "n", arg: 1, scope: !3046, file: !687, line: 59, type: !99)
!3051 = !DILocation(line: 0, scope: !3046)
!3052 = !DILocation(line: 0, scope: !3013, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 61, column: 10, scope: !3046)
!3054 = !DILocation(line: 49, column: 25, scope: !3013, inlinedAt: !3053)
!3055 = !DILocation(line: 0, scope: !2994, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 49, column: 10, scope: !3013, inlinedAt: !3053)
!3057 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3056)
!3058 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3056)
!3059 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3056)
!3060 = !DILocation(line: 61, column: 3, scope: !3046)
!3061 = distinct !DISubprogram(name: "xrealloc", scope: !687, file: !687, line: 68, type: !3062, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!91, !91, !99}
!3064 = !{!3065, !3066}
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3061, file: !687, line: 68, type: !91)
!3066 = !DILocalVariable(name: "s", arg: 2, scope: !3061, file: !687, line: 68, type: !99)
!3067 = !DILocation(line: 0, scope: !3061)
!3068 = !DILocalVariable(name: "ptr", arg: 1, scope: !3069, file: !3070, line: 2057, type: !91)
!3069 = distinct !DISubprogram(name: "rpl_realloc", scope: !3070, file: !3070, line: 2057, type: !3062, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3071)
!3070 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3071 = !{!3068, !3072}
!3072 = !DILocalVariable(name: "size", arg: 2, scope: !3069, file: !3070, line: 2057, type: !99)
!3073 = !DILocation(line: 0, scope: !3069, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 70, column: 25, scope: !3061)
!3075 = !DILocation(line: 2059, column: 24, scope: !3069, inlinedAt: !3074)
!3076 = !DILocation(line: 2059, column: 10, scope: !3069, inlinedAt: !3074)
!3077 = !DILocation(line: 0, scope: !2994, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 70, column: 10, scope: !3061)
!3079 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3078)
!3082 = !DILocation(line: 70, column: 3, scope: !3061)
!3083 = !DISubprogram(name: "realloc", scope: !940, file: !940, line: 551, type: !3062, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3084 = distinct !DISubprogram(name: "xirealloc", scope: !687, file: !687, line: 74, type: !3085, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3087)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!91, !91, !706}
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "p", arg: 1, scope: !3084, file: !687, line: 74, type: !91)
!3089 = !DILocalVariable(name: "s", arg: 2, scope: !3084, file: !687, line: 74, type: !706)
!3090 = !DILocation(line: 0, scope: !3084)
!3091 = !DILocalVariable(name: "p", arg: 1, scope: !3092, file: !3035, line: 66, type: !91)
!3092 = distinct !DISubprogram(name: "irealloc", scope: !3035, file: !3035, line: 66, type: !3085, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3093)
!3093 = !{!3091, !3094}
!3094 = !DILocalVariable(name: "s", arg: 2, scope: !3092, file: !3035, line: 66, type: !706)
!3095 = !DILocation(line: 0, scope: !3092, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 76, column: 25, scope: !3084)
!3097 = !DILocation(line: 0, scope: !3069, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 68, column: 26, scope: !3092, inlinedAt: !3096)
!3099 = !DILocation(line: 2059, column: 24, scope: !3069, inlinedAt: !3098)
!3100 = !DILocation(line: 2059, column: 10, scope: !3069, inlinedAt: !3098)
!3101 = !DILocation(line: 0, scope: !2994, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 76, column: 10, scope: !3084)
!3103 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3102)
!3104 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3102)
!3105 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3102)
!3106 = !DILocation(line: 76, column: 3, scope: !3084)
!3107 = distinct !DISubprogram(name: "xireallocarray", scope: !687, file: !687, line: 89, type: !3108, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!91, !91, !706, !706}
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "p", arg: 1, scope: !3107, file: !687, line: 89, type: !91)
!3112 = !DILocalVariable(name: "n", arg: 2, scope: !3107, file: !687, line: 89, type: !706)
!3113 = !DILocalVariable(name: "s", arg: 3, scope: !3107, file: !687, line: 89, type: !706)
!3114 = !DILocation(line: 0, scope: !3107)
!3115 = !DILocalVariable(name: "p", arg: 1, scope: !3116, file: !3035, line: 98, type: !91)
!3116 = distinct !DISubprogram(name: "ireallocarray", scope: !3035, file: !3035, line: 98, type: !3108, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3117)
!3117 = !{!3115, !3118, !3119}
!3118 = !DILocalVariable(name: "n", arg: 2, scope: !3116, file: !3035, line: 98, type: !706)
!3119 = !DILocalVariable(name: "s", arg: 3, scope: !3116, file: !3035, line: 98, type: !706)
!3120 = !DILocation(line: 0, scope: !3116, inlinedAt: !3121)
!3121 = distinct !DILocation(line: 91, column: 25, scope: !3107)
!3122 = !DILocation(line: 101, column: 13, scope: !3116, inlinedAt: !3121)
!3123 = !DILocation(line: 0, scope: !2994, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 91, column: 10, scope: !3107)
!3125 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3124)
!3126 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3124)
!3127 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3124)
!3128 = !DILocation(line: 91, column: 3, scope: !3107)
!3129 = distinct !DISubprogram(name: "xnmalloc", scope: !687, file: !687, line: 98, type: !3130, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3132)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!91, !99, !99}
!3132 = !{!3133, !3134}
!3133 = !DILocalVariable(name: "n", arg: 1, scope: !3129, file: !687, line: 98, type: !99)
!3134 = !DILocalVariable(name: "s", arg: 2, scope: !3129, file: !687, line: 98, type: !99)
!3135 = !DILocation(line: 0, scope: !3129)
!3136 = !DILocation(line: 0, scope: !2986, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 100, column: 10, scope: !3129)
!3138 = !DILocation(line: 85, column: 25, scope: !2986, inlinedAt: !3137)
!3139 = !DILocation(line: 0, scope: !2994, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 85, column: 10, scope: !2986, inlinedAt: !3137)
!3141 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3140)
!3142 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3140)
!3143 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3140)
!3144 = !DILocation(line: 100, column: 3, scope: !3129)
!3145 = distinct !DISubprogram(name: "xinmalloc", scope: !687, file: !687, line: 104, type: !3146, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!91, !706, !706}
!3148 = !{!3149, !3150}
!3149 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !687, line: 104, type: !706)
!3150 = !DILocalVariable(name: "s", arg: 2, scope: !3145, file: !687, line: 104, type: !706)
!3151 = !DILocation(line: 0, scope: !3145)
!3152 = !DILocation(line: 0, scope: !3107, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 106, column: 10, scope: !3145)
!3154 = !DILocation(line: 0, scope: !3116, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 91, column: 25, scope: !3107, inlinedAt: !3153)
!3156 = !DILocation(line: 101, column: 13, scope: !3116, inlinedAt: !3155)
!3157 = !DILocation(line: 0, scope: !2994, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 91, column: 10, scope: !3107, inlinedAt: !3153)
!3159 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3158)
!3160 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3158)
!3161 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3158)
!3162 = !DILocation(line: 106, column: 3, scope: !3145)
!3163 = distinct !DISubprogram(name: "x2realloc", scope: !687, file: !687, line: 116, type: !3164, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!91, !91, !693}
!3166 = !{!3167, !3168}
!3167 = !DILocalVariable(name: "p", arg: 1, scope: !3163, file: !687, line: 116, type: !91)
!3168 = !DILocalVariable(name: "ps", arg: 2, scope: !3163, file: !687, line: 116, type: !693)
!3169 = !DILocation(line: 0, scope: !3163)
!3170 = !DILocation(line: 0, scope: !690, inlinedAt: !3171)
!3171 = distinct !DILocation(line: 118, column: 10, scope: !3163)
!3172 = !DILocation(line: 178, column: 14, scope: !690, inlinedAt: !3171)
!3173 = !DILocation(line: 180, column: 9, scope: !3174, inlinedAt: !3171)
!3174 = distinct !DILexicalBlock(scope: !690, file: !687, line: 180, column: 7)
!3175 = !DILocation(line: 180, column: 7, scope: !690, inlinedAt: !3171)
!3176 = !DILocation(line: 182, column: 13, scope: !3177, inlinedAt: !3171)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !687, line: 182, column: 11)
!3178 = distinct !DILexicalBlock(scope: !3174, file: !687, line: 181, column: 5)
!3179 = !DILocation(line: 182, column: 11, scope: !3178, inlinedAt: !3171)
!3180 = !DILocation(line: 197, column: 11, scope: !3181, inlinedAt: !3171)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !687, line: 197, column: 11)
!3182 = distinct !DILexicalBlock(scope: !3174, file: !687, line: 195, column: 5)
!3183 = !DILocation(line: 197, column: 11, scope: !3182, inlinedAt: !3171)
!3184 = !DILocation(line: 198, column: 9, scope: !3181, inlinedAt: !3171)
!3185 = !DILocation(line: 0, scope: !2986, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 201, column: 7, scope: !690, inlinedAt: !3171)
!3187 = !DILocation(line: 85, column: 25, scope: !2986, inlinedAt: !3186)
!3188 = !DILocation(line: 0, scope: !2994, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 85, column: 10, scope: !2986, inlinedAt: !3186)
!3190 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3189)
!3191 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3189)
!3192 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3189)
!3193 = !DILocation(line: 202, column: 7, scope: !690, inlinedAt: !3171)
!3194 = !DILocation(line: 118, column: 3, scope: !3163)
!3195 = !DILocation(line: 0, scope: !690)
!3196 = !DILocation(line: 178, column: 14, scope: !690)
!3197 = !DILocation(line: 180, column: 9, scope: !3174)
!3198 = !DILocation(line: 180, column: 7, scope: !690)
!3199 = !DILocation(line: 182, column: 13, scope: !3177)
!3200 = !DILocation(line: 182, column: 11, scope: !3178)
!3201 = !DILocation(line: 190, column: 30, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3177, file: !687, line: 183, column: 9)
!3203 = !DILocation(line: 191, column: 16, scope: !3202)
!3204 = !DILocation(line: 191, column: 13, scope: !3202)
!3205 = !DILocation(line: 192, column: 9, scope: !3202)
!3206 = !DILocation(line: 197, column: 11, scope: !3181)
!3207 = !DILocation(line: 197, column: 11, scope: !3182)
!3208 = !DILocation(line: 198, column: 9, scope: !3181)
!3209 = !DILocation(line: 0, scope: !2986, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 201, column: 7, scope: !690)
!3211 = !DILocation(line: 85, column: 25, scope: !2986, inlinedAt: !3210)
!3212 = !DILocation(line: 0, scope: !2994, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 85, column: 10, scope: !2986, inlinedAt: !3210)
!3214 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3213)
!3215 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3213)
!3216 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3213)
!3217 = !DILocation(line: 202, column: 7, scope: !690)
!3218 = !DILocation(line: 203, column: 3, scope: !690)
!3219 = !DILocation(line: 0, scope: !702)
!3220 = !DILocation(line: 230, column: 14, scope: !702)
!3221 = !DILocation(line: 238, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !702, file: !687, line: 238, column: 7)
!3223 = !DILocation(line: 238, column: 7, scope: !702)
!3224 = !DILocation(line: 240, column: 9, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !702, file: !687, line: 240, column: 7)
!3226 = !DILocation(line: 240, column: 18, scope: !3225)
!3227 = !DILocation(line: 253, column: 8, scope: !702)
!3228 = !DILocation(line: 256, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !702, file: !687, line: 256, column: 7)
!3230 = !DILocation(line: 256, column: 7, scope: !702)
!3231 = !DILocation(line: 258, column: 27, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3229, file: !687, line: 257, column: 5)
!3233 = !DILocation(line: 259, column: 32, scope: !3232)
!3234 = !DILocation(line: 260, column: 5, scope: !3232)
!3235 = !DILocation(line: 262, column: 9, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !702, file: !687, line: 262, column: 7)
!3237 = !DILocation(line: 262, column: 7, scope: !702)
!3238 = !DILocation(line: 263, column: 9, scope: !3236)
!3239 = !DILocation(line: 263, column: 5, scope: !3236)
!3240 = !DILocation(line: 264, column: 9, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !702, file: !687, line: 264, column: 7)
!3242 = !DILocation(line: 264, column: 14, scope: !3241)
!3243 = !DILocation(line: 265, column: 7, scope: !3241)
!3244 = !DILocation(line: 265, column: 11, scope: !3241)
!3245 = !DILocation(line: 266, column: 11, scope: !3241)
!3246 = !DILocation(line: 267, column: 14, scope: !3241)
!3247 = !DILocation(line: 264, column: 7, scope: !702)
!3248 = !DILocation(line: 268, column: 5, scope: !3241)
!3249 = !DILocation(line: 0, scope: !3061, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 269, column: 8, scope: !702)
!3251 = !DILocation(line: 0, scope: !3069, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 70, column: 25, scope: !3061, inlinedAt: !3250)
!3253 = !DILocation(line: 2059, column: 24, scope: !3069, inlinedAt: !3252)
!3254 = !DILocation(line: 2059, column: 10, scope: !3069, inlinedAt: !3252)
!3255 = !DILocation(line: 0, scope: !2994, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 70, column: 10, scope: !3061, inlinedAt: !3250)
!3257 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3256)
!3258 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3256)
!3259 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3256)
!3260 = !DILocation(line: 270, column: 7, scope: !702)
!3261 = !DILocation(line: 271, column: 3, scope: !702)
!3262 = distinct !DISubprogram(name: "xzalloc", scope: !687, file: !687, line: 279, type: !3014, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3263)
!3263 = !{!3264}
!3264 = !DILocalVariable(name: "s", arg: 1, scope: !3262, file: !687, line: 279, type: !99)
!3265 = !DILocation(line: 0, scope: !3262)
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !687, line: 294, type: !99)
!3267 = distinct !DISubprogram(name: "xcalloc", scope: !687, file: !687, line: 294, type: !3130, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3268)
!3268 = !{!3266, !3269}
!3269 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !687, line: 294, type: !99)
!3270 = !DILocation(line: 0, scope: !3267, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 281, column: 10, scope: !3262)
!3272 = !DILocation(line: 296, column: 25, scope: !3267, inlinedAt: !3271)
!3273 = !DILocation(line: 0, scope: !2994, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 296, column: 10, scope: !3267, inlinedAt: !3271)
!3275 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3274)
!3276 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3274)
!3277 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3274)
!3278 = !DILocation(line: 281, column: 3, scope: !3262)
!3279 = !DISubprogram(name: "calloc", scope: !940, file: !940, line: 543, type: !3130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3280 = !DILocation(line: 0, scope: !3267)
!3281 = !DILocation(line: 296, column: 25, scope: !3267)
!3282 = !DILocation(line: 0, scope: !2994, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 296, column: 10, scope: !3267)
!3284 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3283)
!3285 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3283)
!3286 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3283)
!3287 = !DILocation(line: 296, column: 3, scope: !3267)
!3288 = distinct !DISubprogram(name: "xizalloc", scope: !687, file: !687, line: 285, type: !3028, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3289)
!3289 = !{!3290}
!3290 = !DILocalVariable(name: "s", arg: 1, scope: !3288, file: !687, line: 285, type: !706)
!3291 = !DILocation(line: 0, scope: !3288)
!3292 = !DILocalVariable(name: "n", arg: 1, scope: !3293, file: !687, line: 300, type: !706)
!3293 = distinct !DISubprogram(name: "xicalloc", scope: !687, file: !687, line: 300, type: !3146, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3294)
!3294 = !{!3292, !3295}
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3293, file: !687, line: 300, type: !706)
!3296 = !DILocation(line: 0, scope: !3293, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 287, column: 10, scope: !3288)
!3298 = !DILocalVariable(name: "n", arg: 1, scope: !3299, file: !3035, line: 77, type: !706)
!3299 = distinct !DISubprogram(name: "icalloc", scope: !3035, file: !3035, line: 77, type: !3146, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3300)
!3300 = !{!3298, !3301}
!3301 = !DILocalVariable(name: "s", arg: 2, scope: !3299, file: !3035, line: 77, type: !706)
!3302 = !DILocation(line: 0, scope: !3299, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 302, column: 25, scope: !3293, inlinedAt: !3297)
!3304 = !DILocation(line: 91, column: 10, scope: !3299, inlinedAt: !3303)
!3305 = !DILocation(line: 0, scope: !2994, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 302, column: 10, scope: !3293, inlinedAt: !3297)
!3307 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3306)
!3308 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3306)
!3309 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3306)
!3310 = !DILocation(line: 287, column: 3, scope: !3288)
!3311 = !DILocation(line: 0, scope: !3293)
!3312 = !DILocation(line: 0, scope: !3299, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 302, column: 25, scope: !3293)
!3314 = !DILocation(line: 91, column: 10, scope: !3299, inlinedAt: !3313)
!3315 = !DILocation(line: 0, scope: !2994, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 302, column: 10, scope: !3293)
!3317 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3316)
!3318 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3316)
!3319 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3316)
!3320 = !DILocation(line: 302, column: 3, scope: !3293)
!3321 = distinct !DISubprogram(name: "xmemdup", scope: !687, file: !687, line: 310, type: !3322, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!91, !964, !99}
!3324 = !{!3325, !3326}
!3325 = !DILocalVariable(name: "p", arg: 1, scope: !3321, file: !687, line: 310, type: !964)
!3326 = !DILocalVariable(name: "s", arg: 2, scope: !3321, file: !687, line: 310, type: !99)
!3327 = !DILocation(line: 0, scope: !3321)
!3328 = !DILocation(line: 0, scope: !3013, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 312, column: 18, scope: !3321)
!3330 = !DILocation(line: 49, column: 25, scope: !3013, inlinedAt: !3329)
!3331 = !DILocation(line: 0, scope: !2994, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 49, column: 10, scope: !3013, inlinedAt: !3329)
!3333 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3332)
!3334 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3332)
!3335 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3332)
!3336 = !DILocalVariable(name: "__dest", arg: 1, scope: !3337, file: !1468, line: 26, type: !3340)
!3337 = distinct !DISubprogram(name: "memcpy", scope: !1468, file: !1468, line: 26, type: !3338, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3341)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!91, !3340, !963, !99}
!3340 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3341 = !{!3336, !3342, !3343}
!3342 = !DILocalVariable(name: "__src", arg: 2, scope: !3337, file: !1468, line: 26, type: !963)
!3343 = !DILocalVariable(name: "__len", arg: 3, scope: !3337, file: !1468, line: 26, type: !99)
!3344 = !DILocation(line: 0, scope: !3337, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 312, column: 10, scope: !3321)
!3346 = !DILocation(line: 29, column: 10, scope: !3337, inlinedAt: !3345)
!3347 = !DILocation(line: 312, column: 3, scope: !3321)
!3348 = distinct !DISubprogram(name: "ximemdup", scope: !687, file: !687, line: 316, type: !3349, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!91, !964, !706}
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "p", arg: 1, scope: !3348, file: !687, line: 316, type: !964)
!3353 = !DILocalVariable(name: "s", arg: 2, scope: !3348, file: !687, line: 316, type: !706)
!3354 = !DILocation(line: 0, scope: !3348)
!3355 = !DILocation(line: 0, scope: !3027, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 318, column: 18, scope: !3348)
!3357 = !DILocation(line: 0, scope: !3034, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 55, column: 25, scope: !3027, inlinedAt: !3356)
!3359 = !DILocation(line: 57, column: 26, scope: !3034, inlinedAt: !3358)
!3360 = !DILocation(line: 0, scope: !2994, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 55, column: 10, scope: !3027, inlinedAt: !3356)
!3362 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3361)
!3363 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3361)
!3364 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3361)
!3365 = !DILocation(line: 0, scope: !3337, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 318, column: 10, scope: !3348)
!3367 = !DILocation(line: 29, column: 10, scope: !3337, inlinedAt: !3366)
!3368 = !DILocation(line: 318, column: 3, scope: !3348)
!3369 = distinct !DISubprogram(name: "ximemdup0", scope: !687, file: !687, line: 325, type: !3370, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3372)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!246, !964, !706}
!3372 = !{!3373, !3374, !3375}
!3373 = !DILocalVariable(name: "p", arg: 1, scope: !3369, file: !687, line: 325, type: !964)
!3374 = !DILocalVariable(name: "s", arg: 2, scope: !3369, file: !687, line: 325, type: !706)
!3375 = !DILocalVariable(name: "result", scope: !3369, file: !687, line: 327, type: !246)
!3376 = !DILocation(line: 0, scope: !3369)
!3377 = !DILocation(line: 327, column: 30, scope: !3369)
!3378 = !DILocation(line: 0, scope: !3027, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 327, column: 18, scope: !3369)
!3380 = !DILocation(line: 0, scope: !3034, inlinedAt: !3381)
!3381 = distinct !DILocation(line: 55, column: 25, scope: !3027, inlinedAt: !3379)
!3382 = !DILocation(line: 57, column: 26, scope: !3034, inlinedAt: !3381)
!3383 = !DILocation(line: 0, scope: !2994, inlinedAt: !3384)
!3384 = distinct !DILocation(line: 55, column: 10, scope: !3027, inlinedAt: !3379)
!3385 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3384)
!3386 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3384)
!3387 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3384)
!3388 = !DILocation(line: 328, column: 3, scope: !3369)
!3389 = !DILocation(line: 328, column: 13, scope: !3369)
!3390 = !DILocation(line: 0, scope: !3337, inlinedAt: !3391)
!3391 = distinct !DILocation(line: 329, column: 10, scope: !3369)
!3392 = !DILocation(line: 29, column: 10, scope: !3337, inlinedAt: !3391)
!3393 = !DILocation(line: 329, column: 3, scope: !3369)
!3394 = distinct !DISubprogram(name: "xstrdup", scope: !687, file: !687, line: 335, type: !942, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3395)
!3395 = !{!3396}
!3396 = !DILocalVariable(name: "string", arg: 1, scope: !3394, file: !687, line: 335, type: !70)
!3397 = !DILocation(line: 0, scope: !3394)
!3398 = !DILocation(line: 337, column: 27, scope: !3394)
!3399 = !DILocation(line: 337, column: 43, scope: !3394)
!3400 = !DILocation(line: 0, scope: !3321, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 337, column: 10, scope: !3394)
!3402 = !DILocation(line: 0, scope: !3013, inlinedAt: !3403)
!3403 = distinct !DILocation(line: 312, column: 18, scope: !3321, inlinedAt: !3401)
!3404 = !DILocation(line: 49, column: 25, scope: !3013, inlinedAt: !3403)
!3405 = !DILocation(line: 0, scope: !2994, inlinedAt: !3406)
!3406 = distinct !DILocation(line: 49, column: 10, scope: !3013, inlinedAt: !3403)
!3407 = !DILocation(line: 39, column: 8, scope: !3001, inlinedAt: !3406)
!3408 = !DILocation(line: 39, column: 7, scope: !2994, inlinedAt: !3406)
!3409 = !DILocation(line: 40, column: 5, scope: !3001, inlinedAt: !3406)
!3410 = !DILocation(line: 0, scope: !3337, inlinedAt: !3411)
!3411 = distinct !DILocation(line: 312, column: 10, scope: !3321, inlinedAt: !3401)
!3412 = !DILocation(line: 29, column: 10, scope: !3337, inlinedAt: !3411)
!3413 = !DILocation(line: 337, column: 3, scope: !3394)
!3414 = distinct !DISubprogram(name: "xalloc_die", scope: !650, file: !650, line: 32, type: !372, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3415)
!3415 = !{!3416}
!3416 = !DILocalVariable(name: "__errstatus", scope: !3417, file: !650, line: 34, type: !3418)
!3417 = distinct !DILexicalBlock(scope: !3414, file: !650, line: 34, column: 3)
!3418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!3419 = !DILocation(line: 34, column: 3, scope: !3417)
!3420 = !DILocation(line: 0, scope: !3417)
!3421 = !DILocation(line: 40, column: 3, scope: !3414)
!3422 = distinct !DISubprogram(name: "close_stream", scope: !724, file: !724, line: 55, type: !3423, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3459)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!97, !3425}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3427, file: !242, line: 51, baseType: !97, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3427, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3427, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3427, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3427, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3427, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3427, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3427, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3427, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3427, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3427, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3427, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3427, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3427, file: !242, line: 70, baseType: !3443, size: 64, offset: 832)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3427, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3427, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3427, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3427, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3427, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3427, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3427, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3427, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3427, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3427, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3427, file: !242, line: 93, baseType: !3443, size: 64, offset: 1344)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3427, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3427, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3427, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3427, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3459 = !{!3460, !3461, !3463, !3464}
!3460 = !DILocalVariable(name: "stream", arg: 1, scope: !3422, file: !724, line: 55, type: !3425)
!3461 = !DILocalVariable(name: "some_pending", scope: !3422, file: !724, line: 57, type: !3462)
!3462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!3463 = !DILocalVariable(name: "prev_fail", scope: !3422, file: !724, line: 58, type: !3462)
!3464 = !DILocalVariable(name: "fclose_fail", scope: !3422, file: !724, line: 59, type: !3462)
!3465 = !DILocation(line: 0, scope: !3422)
!3466 = !DILocation(line: 57, column: 30, scope: !3422)
!3467 = !DILocalVariable(name: "__stream", arg: 1, scope: !3468, file: !1218, line: 135, type: !3425)
!3468 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1218, file: !1218, line: 135, type: !3423, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3469)
!3469 = !{!3467}
!3470 = !DILocation(line: 0, scope: !3468, inlinedAt: !3471)
!3471 = distinct !DILocation(line: 58, column: 27, scope: !3422)
!3472 = !DILocation(line: 137, column: 10, scope: !3468, inlinedAt: !3471)
!3473 = !{!1227, !820, i64 0}
!3474 = !DILocation(line: 58, column: 43, scope: !3422)
!3475 = !DILocation(line: 59, column: 29, scope: !3422)
!3476 = !DILocation(line: 59, column: 45, scope: !3422)
!3477 = !DILocation(line: 69, column: 17, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3422, file: !724, line: 69, column: 7)
!3479 = !DILocation(line: 57, column: 50, scope: !3422)
!3480 = !DILocation(line: 69, column: 33, scope: !3478)
!3481 = !DILocation(line: 69, column: 53, scope: !3478)
!3482 = !DILocation(line: 69, column: 59, scope: !3478)
!3483 = !DILocation(line: 69, column: 7, scope: !3422)
!3484 = !DILocation(line: 71, column: 11, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3478, file: !724, line: 70, column: 5)
!3486 = !DILocation(line: 72, column: 9, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3485, file: !724, line: 71, column: 11)
!3488 = !DILocation(line: 72, column: 15, scope: !3487)
!3489 = !DILocation(line: 77, column: 1, scope: !3422)
!3490 = !DISubprogram(name: "__fpending", scope: !3491, file: !3491, line: 75, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3491 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!99, !3425}
!3494 = distinct !DISubprogram(name: "rpl_fclose", scope: !726, file: !726, line: 58, type: !3495, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3531)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!97, !3497}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3499, file: !242, line: 51, baseType: !97, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3499, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3499, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3499, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3499, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3499, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3499, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3499, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3499, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3499, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3499, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3499, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3499, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3499, file: !242, line: 70, baseType: !3515, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3499, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3499, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3499, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3499, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3499, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3499, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3499, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3499, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3499, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3499, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3499, file: !242, line: 93, baseType: !3515, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3499, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3499, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3499, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3499, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3531 = !{!3532, !3533, !3534, !3535}
!3532 = !DILocalVariable(name: "fp", arg: 1, scope: !3494, file: !726, line: 58, type: !3497)
!3533 = !DILocalVariable(name: "saved_errno", scope: !3494, file: !726, line: 60, type: !97)
!3534 = !DILocalVariable(name: "fd", scope: !3494, file: !726, line: 63, type: !97)
!3535 = !DILocalVariable(name: "result", scope: !3494, file: !726, line: 74, type: !97)
!3536 = !DILocation(line: 0, scope: !3494)
!3537 = !DILocation(line: 63, column: 12, scope: !3494)
!3538 = !DILocation(line: 64, column: 10, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3494, file: !726, line: 64, column: 7)
!3540 = !DILocation(line: 64, column: 7, scope: !3494)
!3541 = !DILocation(line: 65, column: 12, scope: !3539)
!3542 = !DILocation(line: 65, column: 5, scope: !3539)
!3543 = !DILocation(line: 70, column: 9, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3494, file: !726, line: 70, column: 7)
!3545 = !DILocation(line: 70, column: 23, scope: !3544)
!3546 = !DILocation(line: 70, column: 33, scope: !3544)
!3547 = !DILocation(line: 70, column: 26, scope: !3544)
!3548 = !DILocation(line: 70, column: 59, scope: !3544)
!3549 = !DILocation(line: 71, column: 7, scope: !3544)
!3550 = !DILocation(line: 71, column: 10, scope: !3544)
!3551 = !DILocation(line: 70, column: 7, scope: !3494)
!3552 = !DILocation(line: 100, column: 12, scope: !3494)
!3553 = !DILocation(line: 105, column: 7, scope: !3494)
!3554 = !DILocation(line: 72, column: 19, scope: !3544)
!3555 = !DILocation(line: 105, column: 19, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3494, file: !726, line: 105, column: 7)
!3557 = !DILocation(line: 107, column: 13, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3556, file: !726, line: 106, column: 5)
!3559 = !DILocation(line: 109, column: 5, scope: !3558)
!3560 = !DILocation(line: 112, column: 1, scope: !3494)
!3561 = !DISubprogram(name: "fileno", scope: !332, file: !332, line: 809, type: !3495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3562 = !DISubprogram(name: "fclose", scope: !332, file: !332, line: 178, type: !3495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3563 = !DISubprogram(name: "__freading", scope: !3491, file: !3491, line: 51, type: !3495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3564 = !DISubprogram(name: "lseek", scope: !1037, file: !1037, line: 339, type: !3565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{!265, !97, !265, !97}
!3567 = distinct !DISubprogram(name: "rpl_fflush", scope: !728, file: !728, line: 130, type: !3568, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3604)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!97, !3570}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3572)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3573)
!3573 = !{!3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3572, file: !242, line: 51, baseType: !97, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3572, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3572, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3572, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3572, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3572, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3572, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3572, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3572, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3572, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3572, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3572, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3572, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3572, file: !242, line: 70, baseType: !3588, size: 64, offset: 832)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3572, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3572, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3572, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3572, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3572, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3572, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3572, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3572, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3572, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3572, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3572, file: !242, line: 93, baseType: !3588, size: 64, offset: 1344)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3572, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3572, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3572, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3572, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3604 = !{!3605}
!3605 = !DILocalVariable(name: "stream", arg: 1, scope: !3567, file: !728, line: 130, type: !3570)
!3606 = !DILocation(line: 0, scope: !3567)
!3607 = !DILocation(line: 151, column: 14, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3567, file: !728, line: 151, column: 7)
!3609 = !DILocation(line: 151, column: 22, scope: !3608)
!3610 = !DILocation(line: 151, column: 27, scope: !3608)
!3611 = !DILocation(line: 151, column: 7, scope: !3567)
!3612 = !DILocation(line: 152, column: 12, scope: !3608)
!3613 = !DILocation(line: 152, column: 5, scope: !3608)
!3614 = !DILocalVariable(name: "fp", arg: 1, scope: !3615, file: !728, line: 42, type: !3570)
!3615 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !728, file: !728, line: 42, type: !3616, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3618)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !3570}
!3618 = !{!3614}
!3619 = !DILocation(line: 0, scope: !3615, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 157, column: 3, scope: !3567)
!3621 = !DILocation(line: 44, column: 12, scope: !3622, inlinedAt: !3620)
!3622 = distinct !DILexicalBlock(scope: !3615, file: !728, line: 44, column: 7)
!3623 = !DILocation(line: 44, column: 19, scope: !3622, inlinedAt: !3620)
!3624 = !DILocation(line: 44, column: 7, scope: !3615, inlinedAt: !3620)
!3625 = !DILocation(line: 46, column: 5, scope: !3622, inlinedAt: !3620)
!3626 = !DILocation(line: 159, column: 10, scope: !3567)
!3627 = !DILocation(line: 159, column: 3, scope: !3567)
!3628 = !DILocation(line: 236, column: 1, scope: !3567)
!3629 = !DISubprogram(name: "fflush", scope: !332, file: !332, line: 230, type: !3568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3630 = distinct !DISubprogram(name: "rpl_fseeko", scope: !730, file: !730, line: 28, type: !3631, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3668)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!97, !3633, !3667, !97}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !240, line: 7, baseType: !3635)
!3635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !242, line: 49, size: 1728, elements: !3636)
!3636 = !{!3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3635, file: !242, line: 51, baseType: !97, size: 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3635, file: !242, line: 54, baseType: !246, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3635, file: !242, line: 55, baseType: !246, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3635, file: !242, line: 56, baseType: !246, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3635, file: !242, line: 57, baseType: !246, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3635, file: !242, line: 58, baseType: !246, size: 64, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3635, file: !242, line: 59, baseType: !246, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3635, file: !242, line: 60, baseType: !246, size: 64, offset: 448)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3635, file: !242, line: 61, baseType: !246, size: 64, offset: 512)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3635, file: !242, line: 64, baseType: !246, size: 64, offset: 576)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3635, file: !242, line: 65, baseType: !246, size: 64, offset: 640)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3635, file: !242, line: 66, baseType: !246, size: 64, offset: 704)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3635, file: !242, line: 68, baseType: !258, size: 64, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3635, file: !242, line: 70, baseType: !3651, size: 64, offset: 832)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3635, file: !242, line: 72, baseType: !97, size: 32, offset: 896)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3635, file: !242, line: 73, baseType: !97, size: 32, offset: 928)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3635, file: !242, line: 74, baseType: !265, size: 64, offset: 960)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3635, file: !242, line: 77, baseType: !98, size: 16, offset: 1024)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3635, file: !242, line: 78, baseType: !269, size: 8, offset: 1040)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3635, file: !242, line: 79, baseType: !34, size: 8, offset: 1048)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3635, file: !242, line: 81, baseType: !272, size: 64, offset: 1088)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3635, file: !242, line: 89, baseType: !275, size: 64, offset: 1152)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3635, file: !242, line: 91, baseType: !277, size: 64, offset: 1216)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3635, file: !242, line: 92, baseType: !280, size: 64, offset: 1280)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3635, file: !242, line: 93, baseType: !3651, size: 64, offset: 1344)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3635, file: !242, line: 94, baseType: !91, size: 64, offset: 1408)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3635, file: !242, line: 95, baseType: !99, size: 64, offset: 1472)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3635, file: !242, line: 96, baseType: !97, size: 32, offset: 1536)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3635, file: !242, line: 98, baseType: !287, size: 160, offset: 1568)
!3667 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !332, line: 63, baseType: !265)
!3668 = !{!3669, !3670, !3671, !3672}
!3669 = !DILocalVariable(name: "fp", arg: 1, scope: !3630, file: !730, line: 28, type: !3633)
!3670 = !DILocalVariable(name: "offset", arg: 2, scope: !3630, file: !730, line: 28, type: !3667)
!3671 = !DILocalVariable(name: "whence", arg: 3, scope: !3630, file: !730, line: 28, type: !97)
!3672 = !DILocalVariable(name: "pos", scope: !3673, file: !730, line: 123, type: !3667)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !730, line: 119, column: 5)
!3674 = distinct !DILexicalBlock(scope: !3630, file: !730, line: 55, column: 7)
!3675 = !DILocation(line: 0, scope: !3630)
!3676 = !DILocation(line: 55, column: 12, scope: !3674)
!3677 = !{!1227, !760, i64 16}
!3678 = !DILocation(line: 55, column: 33, scope: !3674)
!3679 = !{!1227, !760, i64 8}
!3680 = !DILocation(line: 55, column: 25, scope: !3674)
!3681 = !DILocation(line: 56, column: 7, scope: !3674)
!3682 = !DILocation(line: 56, column: 15, scope: !3674)
!3683 = !DILocation(line: 56, column: 37, scope: !3674)
!3684 = !{!1227, !760, i64 32}
!3685 = !DILocation(line: 56, column: 29, scope: !3674)
!3686 = !DILocation(line: 57, column: 7, scope: !3674)
!3687 = !DILocation(line: 57, column: 15, scope: !3674)
!3688 = !{!1227, !760, i64 72}
!3689 = !DILocation(line: 57, column: 29, scope: !3674)
!3690 = !DILocation(line: 55, column: 7, scope: !3630)
!3691 = !DILocation(line: 123, column: 26, scope: !3673)
!3692 = !DILocation(line: 123, column: 19, scope: !3673)
!3693 = !DILocation(line: 0, scope: !3673)
!3694 = !DILocation(line: 124, column: 15, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3673, file: !730, line: 124, column: 11)
!3696 = !DILocation(line: 124, column: 11, scope: !3673)
!3697 = !DILocation(line: 135, column: 19, scope: !3673)
!3698 = !DILocation(line: 136, column: 12, scope: !3673)
!3699 = !DILocation(line: 136, column: 20, scope: !3673)
!3700 = !{!1227, !1228, i64 144}
!3701 = !DILocation(line: 167, column: 7, scope: !3673)
!3702 = !DILocation(line: 169, column: 10, scope: !3630)
!3703 = !DILocation(line: 169, column: 3, scope: !3630)
!3704 = !DILocation(line: 170, column: 1, scope: !3630)
!3705 = !DISubprogram(name: "fseeko", scope: !332, file: !332, line: 736, type: !3706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!97, !3633, !265, !97}
!3708 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !657, file: !657, line: 100, type: !3709, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !3712)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!99, !1486, !70, !99, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!3712 = !{!3713, !3714, !3715, !3716, !3717}
!3713 = !DILocalVariable(name: "pwc", arg: 1, scope: !3708, file: !657, line: 100, type: !1486)
!3714 = !DILocalVariable(name: "s", arg: 2, scope: !3708, file: !657, line: 100, type: !70)
!3715 = !DILocalVariable(name: "n", arg: 3, scope: !3708, file: !657, line: 100, type: !99)
!3716 = !DILocalVariable(name: "ps", arg: 4, scope: !3708, file: !657, line: 100, type: !3711)
!3717 = !DILocalVariable(name: "ret", scope: !3708, file: !657, line: 130, type: !99)
!3718 = !DILocation(line: 0, scope: !3708)
!3719 = !DILocation(line: 105, column: 9, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3708, file: !657, line: 105, column: 7)
!3721 = !DILocation(line: 105, column: 7, scope: !3708)
!3722 = !DILocation(line: 117, column: 10, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3708, file: !657, line: 117, column: 7)
!3724 = !DILocation(line: 117, column: 7, scope: !3708)
!3725 = !DILocation(line: 130, column: 16, scope: !3708)
!3726 = !DILocation(line: 135, column: 11, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3708, file: !657, line: 135, column: 7)
!3728 = !DILocation(line: 135, column: 25, scope: !3727)
!3729 = !DILocation(line: 135, column: 30, scope: !3727)
!3730 = !DILocation(line: 135, column: 7, scope: !3708)
!3731 = !DILocalVariable(name: "ps", arg: 1, scope: !3732, file: !1459, line: 1135, type: !3711)
!3732 = distinct !DISubprogram(name: "mbszero", scope: !1459, file: !1459, line: 1135, type: !3733, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !3735)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3711}
!3735 = !{!3731}
!3736 = !DILocation(line: 0, scope: !3732, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 137, column: 5, scope: !3727)
!3738 = !DILocalVariable(name: "__dest", arg: 1, scope: !3739, file: !1468, line: 57, type: !91)
!3739 = distinct !DISubprogram(name: "memset", scope: !1468, file: !1468, line: 57, type: !1469, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !660, retainedNodes: !3740)
!3740 = !{!3738, !3741, !3742}
!3741 = !DILocalVariable(name: "__ch", arg: 2, scope: !3739, file: !1468, line: 57, type: !97)
!3742 = !DILocalVariable(name: "__len", arg: 3, scope: !3739, file: !1468, line: 57, type: !99)
!3743 = !DILocation(line: 0, scope: !3739, inlinedAt: !3744)
!3744 = distinct !DILocation(line: 1137, column: 3, scope: !3732, inlinedAt: !3737)
!3745 = !DILocation(line: 59, column: 10, scope: !3739, inlinedAt: !3744)
!3746 = !DILocation(line: 137, column: 5, scope: !3727)
!3747 = !DILocation(line: 138, column: 11, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3708, file: !657, line: 138, column: 7)
!3749 = !DILocation(line: 138, column: 7, scope: !3708)
!3750 = !DILocation(line: 139, column: 5, scope: !3748)
!3751 = !DILocation(line: 143, column: 26, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3708, file: !657, line: 143, column: 7)
!3753 = !DILocation(line: 143, column: 41, scope: !3752)
!3754 = !DILocation(line: 143, column: 7, scope: !3708)
!3755 = !DILocation(line: 145, column: 15, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !657, line: 145, column: 11)
!3757 = distinct !DILexicalBlock(scope: !3752, file: !657, line: 144, column: 5)
!3758 = !DILocation(line: 145, column: 11, scope: !3757)
!3759 = !DILocation(line: 146, column: 32, scope: !3756)
!3760 = !DILocation(line: 146, column: 16, scope: !3756)
!3761 = !DILocation(line: 146, column: 14, scope: !3756)
!3762 = !DILocation(line: 146, column: 9, scope: !3756)
!3763 = !DILocation(line: 286, column: 1, scope: !3708)
!3764 = !DISubprogram(name: "mbsinit", scope: !3765, file: !3765, line: 293, type: !3766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3765 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!97, !3768}
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !663)
!3770 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !732, file: !732, line: 27, type: !2978, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3771)
!3771 = !{!3772, !3773, !3774, !3775}
!3772 = !DILocalVariable(name: "ptr", arg: 1, scope: !3770, file: !732, line: 27, type: !91)
!3773 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3770, file: !732, line: 27, type: !99)
!3774 = !DILocalVariable(name: "size", arg: 3, scope: !3770, file: !732, line: 27, type: !99)
!3775 = !DILocalVariable(name: "nbytes", scope: !3770, file: !732, line: 29, type: !99)
!3776 = !DILocation(line: 0, scope: !3770)
!3777 = !DILocation(line: 30, column: 7, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3770, file: !732, line: 30, column: 7)
!3779 = !DILocation(line: 30, column: 7, scope: !3770)
!3780 = !DILocation(line: 32, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3778, file: !732, line: 31, column: 5)
!3782 = !DILocation(line: 32, column: 13, scope: !3781)
!3783 = !DILocation(line: 33, column: 7, scope: !3781)
!3784 = !DILocalVariable(name: "ptr", arg: 1, scope: !3785, file: !3070, line: 2057, type: !91)
!3785 = distinct !DISubprogram(name: "rpl_realloc", scope: !3070, file: !3070, line: 2057, type: !3062, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3786)
!3786 = !{!3784, !3787}
!3787 = !DILocalVariable(name: "size", arg: 2, scope: !3785, file: !3070, line: 2057, type: !99)
!3788 = !DILocation(line: 0, scope: !3785, inlinedAt: !3789)
!3789 = distinct !DILocation(line: 37, column: 10, scope: !3770)
!3790 = !DILocation(line: 2059, column: 24, scope: !3785, inlinedAt: !3789)
!3791 = !DILocation(line: 2059, column: 10, scope: !3785, inlinedAt: !3789)
!3792 = !DILocation(line: 37, column: 3, scope: !3770)
!3793 = !DILocation(line: 38, column: 1, scope: !3770)
!3794 = distinct !DISubprogram(name: "hard_locale", scope: !675, file: !675, line: 28, type: !3795, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3797)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!225, !97}
!3797 = !{!3798, !3799}
!3798 = !DILocalVariable(name: "category", arg: 1, scope: !3794, file: !675, line: 28, type: !97)
!3799 = !DILocalVariable(name: "locale", scope: !3794, file: !675, line: 30, type: !3800)
!3800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3801)
!3801 = !{!3802}
!3802 = !DISubrange(count: 257)
!3803 = distinct !DIAssignID()
!3804 = !DILocation(line: 0, scope: !3794)
!3805 = !DILocation(line: 30, column: 3, scope: !3794)
!3806 = !DILocation(line: 32, column: 7, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3794, file: !675, line: 32, column: 7)
!3808 = !DILocation(line: 32, column: 7, scope: !3794)
!3809 = !DILocalVariable(name: "__s1", arg: 1, scope: !3810, file: !832, line: 1359, type: !70)
!3810 = distinct !DISubprogram(name: "streq", scope: !832, file: !832, line: 1359, type: !833, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3811)
!3811 = !{!3809, !3812}
!3812 = !DILocalVariable(name: "__s2", arg: 2, scope: !3810, file: !832, line: 1359, type: !70)
!3813 = !DILocation(line: 0, scope: !3810, inlinedAt: !3814)
!3814 = distinct !DILocation(line: 35, column: 9, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3794, file: !675, line: 35, column: 7)
!3816 = !DILocation(line: 1361, column: 11, scope: !3810, inlinedAt: !3814)
!3817 = !DILocation(line: 1361, column: 10, scope: !3810, inlinedAt: !3814)
!3818 = !DILocation(line: 35, column: 29, scope: !3815)
!3819 = !DILocation(line: 0, scope: !3810, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 35, column: 32, scope: !3815)
!3821 = !DILocation(line: 1361, column: 11, scope: !3810, inlinedAt: !3820)
!3822 = !DILocation(line: 1361, column: 10, scope: !3810, inlinedAt: !3820)
!3823 = !DILocation(line: 35, column: 7, scope: !3794)
!3824 = !DILocation(line: 46, column: 3, scope: !3794)
!3825 = !DILocation(line: 47, column: 1, scope: !3794)
!3826 = distinct !DISubprogram(name: "setlocale_null_r", scope: !736, file: !736, line: 154, type: !3827, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3829)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!97, !97, !246, !99}
!3829 = !{!3830, !3831, !3832}
!3830 = !DILocalVariable(name: "category", arg: 1, scope: !3826, file: !736, line: 154, type: !97)
!3831 = !DILocalVariable(name: "buf", arg: 2, scope: !3826, file: !736, line: 154, type: !246)
!3832 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3826, file: !736, line: 154, type: !99)
!3833 = !DILocation(line: 0, scope: !3826)
!3834 = !DILocation(line: 159, column: 10, scope: !3826)
!3835 = !DILocation(line: 159, column: 3, scope: !3826)
!3836 = distinct !DISubprogram(name: "setlocale_null", scope: !736, file: !736, line: 186, type: !3837, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3839)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!70, !97}
!3839 = !{!3840}
!3840 = !DILocalVariable(name: "category", arg: 1, scope: !3836, file: !736, line: 186, type: !97)
!3841 = !DILocation(line: 0, scope: !3836)
!3842 = !DILocation(line: 189, column: 10, scope: !3836)
!3843 = !DILocation(line: 189, column: 3, scope: !3836)
!3844 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !738, file: !738, line: 35, type: !3837, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3845)
!3845 = !{!3846, !3847}
!3846 = !DILocalVariable(name: "category", arg: 1, scope: !3844, file: !738, line: 35, type: !97)
!3847 = !DILocalVariable(name: "result", scope: !3844, file: !738, line: 37, type: !70)
!3848 = !DILocation(line: 0, scope: !3844)
!3849 = !DILocation(line: 37, column: 24, scope: !3844)
!3850 = !DILocation(line: 62, column: 3, scope: !3844)
!3851 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !738, file: !738, line: 66, type: !3827, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3852)
!3852 = !{!3853, !3854, !3855, !3856, !3857}
!3853 = !DILocalVariable(name: "category", arg: 1, scope: !3851, file: !738, line: 66, type: !97)
!3854 = !DILocalVariable(name: "buf", arg: 2, scope: !3851, file: !738, line: 66, type: !246)
!3855 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3851, file: !738, line: 66, type: !99)
!3856 = !DILocalVariable(name: "result", scope: !3851, file: !738, line: 111, type: !70)
!3857 = !DILocalVariable(name: "length", scope: !3858, file: !738, line: 125, type: !99)
!3858 = distinct !DILexicalBlock(scope: !3859, file: !738, line: 124, column: 5)
!3859 = distinct !DILexicalBlock(scope: !3851, file: !738, line: 113, column: 7)
!3860 = !DILocation(line: 0, scope: !3851)
!3861 = !DILocation(line: 0, scope: !3844, inlinedAt: !3862)
!3862 = distinct !DILocation(line: 111, column: 24, scope: !3851)
!3863 = !DILocation(line: 37, column: 24, scope: !3844, inlinedAt: !3862)
!3864 = !DILocation(line: 113, column: 14, scope: !3859)
!3865 = !DILocation(line: 113, column: 7, scope: !3851)
!3866 = !DILocation(line: 116, column: 19, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !738, line: 116, column: 11)
!3868 = distinct !DILexicalBlock(scope: !3859, file: !738, line: 114, column: 5)
!3869 = !DILocation(line: 116, column: 11, scope: !3868)
!3870 = !DILocation(line: 120, column: 16, scope: !3867)
!3871 = !DILocation(line: 120, column: 9, scope: !3867)
!3872 = !DILocation(line: 125, column: 23, scope: !3858)
!3873 = !DILocation(line: 0, scope: !3858)
!3874 = !DILocation(line: 126, column: 18, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3858, file: !738, line: 126, column: 11)
!3876 = !DILocation(line: 126, column: 11, scope: !3858)
!3877 = !DILocation(line: 128, column: 39, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3875, file: !738, line: 127, column: 9)
!3879 = !DILocalVariable(name: "__dest", arg: 1, scope: !3880, file: !1468, line: 26, type: !3340)
!3880 = distinct !DISubprogram(name: "memcpy", scope: !1468, file: !1468, line: 26, type: !3338, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3881)
!3881 = !{!3879, !3882, !3883}
!3882 = !DILocalVariable(name: "__src", arg: 2, scope: !3880, file: !1468, line: 26, type: !963)
!3883 = !DILocalVariable(name: "__len", arg: 3, scope: !3880, file: !1468, line: 26, type: !99)
!3884 = !DILocation(line: 0, scope: !3880, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 128, column: 11, scope: !3878)
!3886 = !DILocation(line: 29, column: 10, scope: !3880, inlinedAt: !3885)
!3887 = !DILocation(line: 129, column: 11, scope: !3878)
!3888 = !DILocation(line: 133, column: 23, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !738, line: 133, column: 15)
!3890 = distinct !DILexicalBlock(scope: !3875, file: !738, line: 132, column: 9)
!3891 = !DILocation(line: 133, column: 15, scope: !3890)
!3892 = !DILocation(line: 138, column: 44, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3889, file: !738, line: 134, column: 13)
!3894 = !DILocation(line: 0, scope: !3880, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 138, column: 15, scope: !3893)
!3896 = !DILocation(line: 29, column: 10, scope: !3880, inlinedAt: !3895)
!3897 = !DILocation(line: 139, column: 15, scope: !3893)
!3898 = !DILocation(line: 139, column: 32, scope: !3893)
!3899 = !DILocation(line: 140, column: 13, scope: !3893)
!3900 = !DILocation(line: 0, scope: !3859)
!3901 = !DILocation(line: 145, column: 1, scope: !3851)
