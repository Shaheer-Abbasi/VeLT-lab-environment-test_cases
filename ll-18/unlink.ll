; ModuleID = 'src/unlink.bc'
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
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1, !dbg !64
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !66
@.str.14 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !115
@.str.15 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !120
@.str.16 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !122
@.str.17 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !127
@.str.31 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !167
@.str.32 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !169
@.str.33 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !171
@.str.34 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !173
@.str.35 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !178
@.str.36 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !183
@.str.37 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !188
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !190
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !192
@.str.40 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !194
@.str.44 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !205
@.str.45 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !207
@.str.46 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !212
@.str.47 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !217
@.str.48 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !222
@.str.18 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !306
@Version = dso_local local_unnamed_addr global ptr @.str.18, align 8, !dbg !309
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !313
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !326
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !318
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !320
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !322
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !324
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !328
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !334
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !370
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !336
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !360
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !362
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !364
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !366
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !368
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !372
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !374
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !379
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !384
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !387
@optind = external local_unnamed_addr global i32, align 4
@.str.1.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !392
@.str.2.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !394
@.str.3.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !396
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !408
@.str.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !414
@.str.1.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !416
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !418
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !449
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !452
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !454
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !459
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !461
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !463
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !465
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !467
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !469
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !471
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 8, !dbg !473
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !486
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !500
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !538
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !545
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !502
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !547
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !490
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !507
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !509
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !511
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !513
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !515
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !553
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !556
@.str.2.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !558
@.str.3.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !560
@.str.4.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !562
@.str.5.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !564
@.str.6.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !569
@.str.7.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !574
@.str.8.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !576
@.str.9.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !581
@.str.10.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !586
@.str.11.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !591
@.str.12.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !596
@.str.13.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !598
@.str.14.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !603
@.str.15.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !608
@.str.16.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !613
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !618
@.str.18.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !620
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !622
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !624
@.str.21.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !626
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !628
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !630
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !635
@exit_failure = dso_local global i32 1, align 4, !dbg !643
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !649
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !652
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !654
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !656
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !659
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !674
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !677

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !749 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !753, metadata !DIExpression()), !dbg !754
  %2 = icmp eq i32 %0, 0, !dbg !755
  br i1 %2, label %8, label %3, !dbg !757

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !758, !tbaa !760
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !758
  %6 = load ptr, ptr @program_name, align 8, !dbg !758, !tbaa !760
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !758
  br label %31, !dbg !758

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !764
  %10 = load ptr, ptr @program_name, align 8, !dbg !764, !tbaa !760
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #37, !dbg !764
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !766
  %13 = load ptr, ptr @stdout, align 8, !dbg !766, !tbaa !760
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !766
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !767
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !767
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !768
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !768
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !769, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata !788, metadata !782, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr poison, metadata !781, metadata !DIExpression()), !dbg !786
  tail call void @emit_bug_reporting_address() #37, !dbg !789
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !790
  call void @llvm.dbg.value(metadata ptr %17, metadata !784, metadata !DIExpression()), !dbg !786
  %18 = icmp eq ptr %17, null, !dbg !791
  br i1 %18, label %26, label %19, !dbg !793

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #38, !dbg !794
  %21 = icmp eq i32 %20, 0, !dbg !794
  br i1 %21, label %26, label %22, !dbg !795

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !796
  %24 = load ptr, ptr @stdout, align 8, !dbg !796, !tbaa !760
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !796
  br label %26, !dbg !798

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !781, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !785, metadata !DIExpression()), !dbg !786
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !799
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3) #37, !dbg !799
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !800
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #37, !dbg !800
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !801
  unreachable, !dbg !801
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !802 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !806 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !812 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !815 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !68 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !818
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !819, !tbaa !820
  %3 = icmp eq i32 %2, -1, !dbg !822
  br i1 %3, label %4, label %16, !dbg !823

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #37, !dbg !824
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !825
  %6 = icmp eq ptr %5, null, !dbg !826
  br i1 %6, label %14, label %7, !dbg !827

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !828, !tbaa !829
  %9 = icmp eq i8 %8, 0, !dbg !828
  br i1 %9, label %14, label %10, !dbg !830

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !831, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !837, metadata !DIExpression()), !dbg !838
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #38, !dbg !840
  %12 = icmp eq i32 %11, 0, !dbg !841
  %13 = zext i1 %12 to i32, !dbg !830
  br label %14, !dbg !830

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !842, !tbaa !820
  br label %16, !dbg !843

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !844
  %18 = icmp eq i32 %17, 0, !dbg !844
  br i1 %18, label %22, label %19, !dbg !846

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !847, !tbaa !760
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !847
  br label %121, !dbg !849

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !818
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #38, !dbg !850
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !851
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !818
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !852
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !818
  %26 = icmp eq ptr %25, null, !dbg !853
  br i1 %26, label %53, label %27, !dbg !854

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !855
  br i1 %28, label %53, label %29, !dbg !856

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !857
  %30 = icmp ult ptr %24, %25, !dbg !858
  br i1 %30, label %31, label %53, !dbg !859

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !818
  %33 = load ptr, ptr %32, align 8, !tbaa !760
  br label %34, !dbg !859

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !857
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !857
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !860
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !857
  %38 = load i8, ptr %35, align 1, !dbg !860, !tbaa !829
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !860
  %41 = load i16, ptr %40, align 2, !dbg !860, !tbaa !861
  %42 = freeze i16 %41, !dbg !863
  %43 = lshr i16 %42, 13, !dbg !863
  %44 = and i16 %43, 1, !dbg !863
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !857
  %47 = icmp ult ptr %37, %25, !dbg !858
  %48 = icmp ult i64 %46, 2, !dbg !865
  %49 = select i1 %47, i1 %48, i1 false, !dbg !865
  br i1 %49, label %34, label %50, !dbg !859, !llvm.loop !866

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !864
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !868
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !870
  br label %53, !dbg !870

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !818
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !236, metadata !DIExpression()), !dbg !818
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.17) #38, !dbg !871
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !242, metadata !DIExpression()), !dbg !818
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !872
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !243, metadata !DIExpression()), !dbg !818
  br label %58, !dbg !873

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !818
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !818
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !243, metadata !DIExpression()), !dbg !818
  %61 = load i8, ptr %59, align 1, !dbg !874, !tbaa !829
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !875

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !876
  %64 = load i8, ptr %63, align 1, !dbg !879, !tbaa !829
  %65 = icmp ne i8 %64, 45, !dbg !880
  %66 = select i1 %65, i1 %60, i1 false, !dbg !881
  br label %67, !dbg !881

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !818
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !882
  %70 = load ptr, ptr %69, align 8, !dbg !882, !tbaa !760
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !882
  %73 = load i16, ptr %72, align 2, !dbg !882, !tbaa !861
  %74 = and i16 %73, 8192, !dbg !882
  %75 = icmp eq i16 %74, 0, !dbg !882
  br i1 %75, label %89, label %76, !dbg !884

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !885
  br i1 %77, label %91, label %78, !dbg !888

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !889
  %80 = load i8, ptr %79, align 1, !dbg !889, !tbaa !829
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !889
  %83 = load i16, ptr %82, align 2, !dbg !889, !tbaa !861
  %84 = and i16 %83, 8192, !dbg !889
  %85 = icmp eq i16 %84, 0, !dbg !889
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !890
  br i1 %88, label %89, label %91, !dbg !890

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !891
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !243, metadata !DIExpression()), !dbg !818
  br label %58, !dbg !873, !llvm.loop !892

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !818
  %92 = ptrtoint ptr %24 to i64, !dbg !894
  %93 = load ptr, ptr @stdout, align 8, !dbg !894, !tbaa !760
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata !788, metadata !837, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !301, metadata !DIExpression()), !dbg !818
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #38, !dbg !915
  %96 = icmp eq i32 %95, 0, !dbg !915
  br i1 %96, label %100, label %97, !dbg !917

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #38, !dbg !918
  %99 = icmp eq i32 %98, 0, !dbg !918
  br i1 %99, label %100, label %103, !dbg !919

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !920
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !920
  br label %106, !dbg !922

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !923
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !923
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !760
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %107), !dbg !925
  %109 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !760
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %109), !dbg !926
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !927
  %112 = sub i64 %111, %92, !dbg !927
  %113 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !760
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !927
  %115 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !760
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %115), !dbg !928
  %117 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !760
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %117), !dbg !929
  %119 = load ptr, ptr @stdout, align 8, !dbg !930, !tbaa !760
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !930
  br label %121, !dbg !931

121:                                              ; preds = %106, %19
  ret void, !dbg !931
}

; Function Attrs: nounwind
declare !dbg !932 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !936 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !940 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !942 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !945 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !948 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !951 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !954 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !960 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !961 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !967 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !972, metadata !DIExpression()), !dbg !974
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !973, metadata !DIExpression()), !dbg !974
  %3 = load ptr, ptr %1, align 8, !dbg !975, !tbaa !760
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !976
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !977
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !978
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !979
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !980
  %8 = load ptr, ptr @Version, align 8, !dbg !981, !tbaa !760
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !982
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !983
  %10 = load i32, ptr @optind, align 4, !dbg !984, !tbaa !820
  %11 = icmp slt i32 %10, %0, !dbg !986
  br i1 %11, label %14, label %12, !dbg !987

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !988
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #37, !dbg !988
  tail call void @usage(i32 noundef 1) #41, !dbg !990
  unreachable, !dbg !990

14:                                               ; preds = %2
  %15 = add nsw i32 %10, 1, !dbg !991
  %16 = icmp slt i32 %15, %0, !dbg !992
  br i1 %16, label %17, label %25, !dbg !994

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !995
  %19 = load i32, ptr @optind, align 4, !dbg !995, !tbaa !820
  %20 = sext i32 %19 to i64, !dbg !995
  %21 = getelementptr ptr, ptr %1, i64 %20, !dbg !995
  %22 = getelementptr ptr, ptr %21, i64 1, !dbg !995
  %23 = load ptr, ptr %22, align 8, !dbg !995, !tbaa !760
  %24 = tail call ptr @quote(ptr noundef %23) #37, !dbg !995
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %24) #37, !dbg !995
  tail call void @usage(i32 noundef 1) #41, !dbg !997
  unreachable, !dbg !997

25:                                               ; preds = %14
  %26 = sext i32 %10 to i64, !dbg !998
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26, !dbg !998
  %28 = load ptr, ptr %27, align 8, !dbg !998, !tbaa !760
  %29 = tail call i32 @unlink(ptr noundef %28) #37, !dbg !1000
  %30 = icmp eq i32 %29, 0, !dbg !1001
  br i1 %30, label %40, label %31, !dbg !1002

31:                                               ; preds = %25
  %32 = tail call ptr @__errno_location() #40, !dbg !1003
  %33 = load i32, ptr %32, align 4, !dbg !1003, !tbaa !820
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1003
  %35 = load i32, ptr @optind, align 4, !dbg !1003, !tbaa !820
  %36 = sext i32 %35 to i64, !dbg !1003
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1003
  %38 = load ptr, ptr %37, align 8, !dbg !1003, !tbaa !760
  %39 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %38) #37, !dbg !1003
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %33, ptr noundef %34, ptr noundef %39) #37, !dbg !1003
  unreachable, !dbg !1003

40:                                               ; preds = %25
  ret i32 0, !dbg !1004
}

; Function Attrs: nounwind
declare !dbg !1005 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1008 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1009 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1012 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1016 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1020 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1022, metadata !DIExpression()), !dbg !1023
  store ptr %0, ptr @file_name, align 8, !dbg !1024, !tbaa !760
  ret void, !dbg !1025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1026 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1030, metadata !DIExpression()), !dbg !1031
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1032, !tbaa !1033
  ret void, !dbg !1035
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1036 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1041, !tbaa !760
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1042
  %3 = icmp eq i32 %2, 0, !dbg !1043
  br i1 %3, label %22, label %4, !dbg !1044

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1045, !tbaa !1033, !range !1046, !noundef !788
  %6 = icmp eq i8 %5, 0, !dbg !1045
  br i1 %6, label %11, label %7, !dbg !1047

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1048
  %9 = load i32, ptr %8, align 4, !dbg !1048, !tbaa !820
  %10 = icmp eq i32 %9, 32, !dbg !1049
  br i1 %10, label %22, label %11, !dbg !1050

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1051
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1038, metadata !DIExpression()), !dbg !1052
  %13 = load ptr, ptr @file_name, align 8, !dbg !1053, !tbaa !760
  %14 = icmp eq ptr %13, null, !dbg !1053
  %15 = tail call ptr @__errno_location() #40, !dbg !1055
  %16 = load i32, ptr %15, align 4, !dbg !1055, !tbaa !820
  br i1 %14, label %19, label %17, !dbg !1056

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1057
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #37, !dbg !1057
  br label %20, !dbg !1057

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #37, !dbg !1058
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1059, !tbaa !820
  tail call void @_exit(i32 noundef %21) #39, !dbg !1060
  unreachable, !dbg !1060

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1061, !tbaa !760
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1063
  %25 = icmp eq i32 %24, 0, !dbg !1064
  br i1 %25, label %28, label %26, !dbg !1065

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1066, !tbaa !820
  tail call void @_exit(i32 noundef %27) #39, !dbg !1067
  unreachable, !dbg !1067

28:                                               ; preds = %22
  ret void, !dbg !1068
}

; Function Attrs: noreturn
declare !dbg !1069 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1070 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1074, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1075, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1076, metadata !DIExpression()), !dbg !1078
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1077, metadata !DIExpression(DW_OP_deref)), !dbg !1078
  tail call fastcc void @flush_stdout(), !dbg !1079
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1080, !tbaa !760
  %7 = icmp eq ptr %6, null, !dbg !1080
  br i1 %7, label %9, label %8, !dbg !1082

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1083
  br label %13, !dbg !1083

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1084, !tbaa !760
  %11 = tail call ptr @getprogname() #38, !dbg !1084
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %11) #37, !dbg !1084
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1086, !tbaa.struct !1087
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1086
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1086
  ret void, !dbg !1088
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1089 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1091, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !1098
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1101
  %2 = icmp slt i32 %1, 0, !dbg !1102
  br i1 %2, label %6, label %3, !dbg !1103

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1104, !tbaa !760
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1104
  br label %6, !dbg !1104

6:                                                ; preds = %3, %0
  ret void, !dbg !1105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1106 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1112
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1108, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1109, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1110, metadata !DIExpression()), !dbg !1113
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1111, metadata !DIExpression(DW_OP_deref)), !dbg !1113
  %7 = load ptr, ptr @stderr, align 8, !dbg !1114, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1115, !noalias !1159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %7, metadata !1155, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata ptr %2, metadata !1156, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.value(metadata ptr poison, metadata !1157, metadata !DIExpression(DW_OP_deref)), !dbg !1164
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1115
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1115, !noalias !1159
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1165, !tbaa !820
  %10 = add i32 %9, 1, !dbg !1165
  store i32 %10, ptr @error_message_count, align 4, !dbg !1165, !tbaa !820
  %11 = icmp eq i32 %1, 0, !dbg !1166
  br i1 %11, label %21, label %12, !dbg !1168

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1169, metadata !DIExpression(), metadata !1112, metadata ptr %5, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %1, metadata !1172, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1179
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1180
  call void @llvm.dbg.value(metadata ptr %13, metadata !1173, metadata !DIExpression()), !dbg !1177
  %14 = icmp eq ptr %13, null, !dbg !1181
  br i1 %14, label %15, label %17, !dbg !1183

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #37, !dbg !1184
  call void @llvm.dbg.value(metadata ptr %16, metadata !1173, metadata !DIExpression()), !dbg !1177
  br label %17, !dbg !1185

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1177
  call void @llvm.dbg.value(metadata ptr %18, metadata !1173, metadata !DIExpression()), !dbg !1177
  %19 = load ptr, ptr @stderr, align 8, !dbg !1186, !tbaa !760
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %18) #37, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1187
  br label %21, !dbg !1188

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1189, !tbaa !760
  call void @llvm.dbg.value(metadata i32 10, metadata !1190, metadata !DIExpression()), !dbg !1197
  call void @llvm.dbg.value(metadata ptr %22, metadata !1196, metadata !DIExpression()), !dbg !1197
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1199
  %24 = load ptr, ptr %23, align 8, !dbg !1199, !tbaa !1200
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1199
  %26 = load ptr, ptr %25, align 8, !dbg !1199, !tbaa !1203
  %27 = icmp ult ptr %24, %26, !dbg !1199
  br i1 %27, label %30, label %28, !dbg !1199, !prof !1204

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1199
  br label %32, !dbg !1199

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1199
  store ptr %31, ptr %23, align 8, !dbg !1199, !tbaa !1200
  store i8 10, ptr %24, align 1, !dbg !1199, !tbaa !829
  br label %32, !dbg !1199

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1205, !tbaa !760
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1205
  %35 = icmp eq i32 %0, 0, !dbg !1206
  br i1 %35, label %37, label %36, !dbg !1208

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1209
  unreachable, !dbg !1209

37:                                               ; preds = %32
  ret void, !dbg !1210
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1211 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1214 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1217 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1220 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1223 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1227 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1235
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1234, metadata !DIExpression(), metadata !1235, metadata ptr %4, metadata !DIExpression()), !dbg !1236
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1231, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1232, metadata !DIExpression()), !dbg !1236
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1233, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1237
  call void @llvm.va_start(ptr nonnull %4), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1239, !tbaa.struct !1087
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1239
  call void @llvm.va_end(ptr nonnull %4), !dbg !1240
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1241
  ret void, !dbg !1241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !338 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !355, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !357, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !358, metadata !DIExpression()), !dbg !1242
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !359, metadata !DIExpression(DW_OP_deref)), !dbg !1242
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1243, !tbaa !820
  %9 = icmp eq i32 %8, 0, !dbg !1243
  br i1 %9, label %24, label %10, !dbg !1245

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1246, !tbaa !820
  %12 = icmp eq i32 %11, %3, !dbg !1249
  br i1 %12, label %13, label %23, !dbg !1250

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1251, !tbaa !760
  %15 = icmp eq ptr %14, %2, !dbg !1252
  br i1 %15, label %37, label %16, !dbg !1253

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1254
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1255
  br i1 %19, label %20, label %23, !dbg !1255

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1256
  %22 = icmp eq i32 %21, 0, !dbg !1257
  br i1 %22, label %37, label %23, !dbg !1258

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1259, !tbaa !760
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1260, !tbaa !820
  br label %24, !dbg !1261

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1262
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1263, !tbaa !760
  %26 = icmp eq ptr %25, null, !dbg !1263
  br i1 %26, label %28, label %27, !dbg !1265

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1266
  br label %32, !dbg !1266

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1267, !tbaa !760
  %30 = tail call ptr @getprogname() #38, !dbg !1267
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %30) #37, !dbg !1267
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1269, !tbaa !760
  %34 = icmp eq ptr %2, null, !dbg !1269
  %35 = select i1 %34, ptr @.str.3.32, ptr @.str.2.33, !dbg !1269
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1269
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1270, !tbaa.struct !1087
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1270
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1270
  br label %37, !dbg !1271

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1271
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1272 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1282
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1281, metadata !DIExpression(), metadata !1282, metadata ptr %6, metadata !DIExpression()), !dbg !1283
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1276, metadata !DIExpression()), !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1277, metadata !DIExpression()), !dbg !1283
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1278, metadata !DIExpression()), !dbg !1283
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1279, metadata !DIExpression()), !dbg !1283
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1280, metadata !DIExpression()), !dbg !1283
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1284
  call void @llvm.va_start(ptr nonnull %6), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1286, !tbaa.struct !1087
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1286
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1286
  call void @llvm.va_end(ptr nonnull %6), !dbg !1287
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1288
  ret void, !dbg !1288
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1289 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1292, !tbaa !760
  ret ptr %1, !dbg !1293
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1294 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1324
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1309, metadata !DIExpression(), metadata !1324, metadata ptr %7, metadata !DIExpression()), !dbg !1325
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1299, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1300, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1301, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1302, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1303, metadata !DIExpression()), !dbg !1326
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1304, metadata !DIExpression()), !dbg !1326
  %9 = load i32, ptr @opterr, align 4, !dbg !1327, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1305, metadata !DIExpression()), !dbg !1326
  store i32 0, ptr @opterr, align 4, !dbg !1328, !tbaa !820
  %10 = icmp eq i32 %0, 2, !dbg !1329
  br i1 %10, label %11, label %16, !dbg !1330

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1331
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1306, metadata !DIExpression()), !dbg !1332
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1333

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #37, !dbg !1334
  br label %16, !dbg !1335

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1336
  call void @llvm.va_start(ptr nonnull %7), !dbg !1337
  %15 = load ptr, ptr @stdout, align 8, !dbg !1338, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1339
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1339, !tbaa.struct !1087
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1339
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #37, !dbg !1339
  call void @exit(i32 noundef 0) #39, !dbg !1340
  unreachable, !dbg !1340

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1341, !tbaa !820
  store i32 0, ptr @optind, align 4, !dbg !1342, !tbaa !820
  ret void, !dbg !1343
}

; Function Attrs: nounwind
declare !dbg !1344 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1350 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1369
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1364, metadata !DIExpression(), metadata !1369, metadata ptr %8, metadata !DIExpression()), !dbg !1370
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1354, metadata !DIExpression()), !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1355, metadata !DIExpression()), !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1356, metadata !DIExpression()), !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1357, metadata !DIExpression()), !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1358, metadata !DIExpression()), !dbg !1371
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1359, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1360, metadata !DIExpression()), !dbg !1371
  %10 = load i32, ptr @opterr, align 4, !dbg !1372, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1361, metadata !DIExpression()), !dbg !1371
  store i32 1, ptr @opterr, align 4, !dbg !1373, !tbaa !820
  %11 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1374
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1362, metadata !DIExpression()), !dbg !1371
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1375
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1363, metadata !DIExpression()), !dbg !1371
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1376

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1377
  call void @llvm.va_start(ptr nonnull %8), !dbg !1378
  %14 = load ptr, ptr @stdout, align 8, !dbg !1379, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #37, !dbg !1380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1380, !tbaa.struct !1087
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #37, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #37, !dbg !1380
  call void @exit(i32 noundef 0) #39, !dbg !1381
  unreachable, !dbg !1381

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1382, !tbaa !820
  br label %17, !dbg !1383

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #37, !dbg !1384
  br label %19, !dbg !1385

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1385, !tbaa !820
  ret void, !dbg !1386
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1387 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1389, metadata !DIExpression()), !dbg !1392
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1390, metadata !DIExpression()), !dbg !1392
  %3 = icmp eq ptr %2, null, !dbg !1394
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1394
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1391, metadata !DIExpression()), !dbg !1392
  %6 = ptrtoint ptr %5 to i64, !dbg !1395
  %7 = ptrtoint ptr %0 to i64, !dbg !1395
  %8 = sub i64 %6, %7, !dbg !1395
  %9 = icmp sgt i64 %8, 6, !dbg !1397
  br i1 %9, label %10, label %19, !dbg !1398

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %11, metadata !1400, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1405, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i64 7, metadata !1406, metadata !DIExpression()), !dbg !1407
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1409
  %13 = icmp eq i32 %12, 0, !dbg !1410
  br i1 %13, label %14, label %19, !dbg !1411

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1389, metadata !DIExpression()), !dbg !1392
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #38, !dbg !1412
  %16 = icmp eq i32 %15, 0, !dbg !1415
  %17 = select i1 %16, i64 3, i64 0, !dbg !1416
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1416
  br label %19, !dbg !1416

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1392
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1391, metadata !DIExpression()), !dbg !1392
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1389, metadata !DIExpression()), !dbg !1392
  store ptr %20, ptr @program_name, align 8, !dbg !1417, !tbaa !760
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1418, !tbaa !760
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1419, !tbaa !760
  ret void, !dbg !1420
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1421 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !420 {
  %3 = alloca i32, align 4, !DIAssignID !1422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !430, metadata !DIExpression(), metadata !1422, metadata ptr %3, metadata !DIExpression()), !dbg !1423
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !435, metadata !DIExpression(), metadata !1424, metadata ptr %4, metadata !DIExpression()), !dbg !1423
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !427, metadata !DIExpression()), !dbg !1423
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !428, metadata !DIExpression()), !dbg !1423
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1425
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !429, metadata !DIExpression()), !dbg !1423
  %6 = icmp eq ptr %5, %0, !dbg !1426
  br i1 %6, label %7, label %14, !dbg !1428

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1429
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1430
  call void @llvm.dbg.value(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata ptr %4, metadata !1440, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 8, metadata !1447, metadata !DIExpression()), !dbg !1448
  store i64 0, ptr %4, align 8, !dbg !1450
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1451
  %9 = icmp eq i64 %8, 2, !dbg !1453
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1454
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1455
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1455
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1423
  ret ptr %15, !dbg !1455
}

; Function Attrs: nounwind
declare !dbg !1456 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1462 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1467, metadata !DIExpression()), !dbg !1470
  %2 = tail call ptr @__errno_location() #40, !dbg !1471
  %3 = load i32, ptr %2, align 4, !dbg !1471, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1468, metadata !DIExpression()), !dbg !1470
  %4 = icmp eq ptr %0, null, !dbg !1472
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1472
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1473
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i32 %3, ptr %2, align 4, !dbg !1474, !tbaa !820
  ret ptr %6, !dbg !1475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1476 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1483
  %2 = icmp eq ptr %0, null, !dbg !1484
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1484
  %4 = load i32, ptr %3, align 8, !dbg !1485, !tbaa !1486
  ret i32 %4, !dbg !1488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1489 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1493, metadata !DIExpression()), !dbg !1495
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1494, metadata !DIExpression()), !dbg !1495
  %3 = icmp eq ptr %0, null, !dbg !1496
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1496
  store i32 %1, ptr %4, align 8, !dbg !1497, !tbaa !1486
  ret void, !dbg !1498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1499 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1503, metadata !DIExpression()), !dbg !1511
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1504, metadata !DIExpression()), !dbg !1511
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1505, metadata !DIExpression()), !dbg !1511
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !1511
  %4 = icmp eq ptr %0, null, !dbg !1512
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1512
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1513
  %7 = lshr i8 %1, 5, !dbg !1514
  %8 = zext nneg i8 %7 to i64, !dbg !1514
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1515
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1507, metadata !DIExpression()), !dbg !1511
  %10 = and i8 %1, 31, !dbg !1516
  %11 = zext nneg i8 %10 to i32, !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1509, metadata !DIExpression()), !dbg !1511
  %12 = load i32, ptr %9, align 4, !dbg !1517, !tbaa !820
  %13 = lshr i32 %12, %11, !dbg !1518
  %14 = and i32 %13, 1, !dbg !1519
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1510, metadata !DIExpression()), !dbg !1511
  %15 = xor i32 %13, %2, !dbg !1520
  %16 = and i32 %15, 1, !dbg !1520
  %17 = shl nuw i32 %16, %11, !dbg !1521
  %18 = xor i32 %17, %12, !dbg !1522
  store i32 %18, ptr %9, align 4, !dbg !1522, !tbaa !820
  ret i32 %14, !dbg !1523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1524 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1528, metadata !DIExpression()), !dbg !1531
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1529, metadata !DIExpression()), !dbg !1531
  %3 = icmp eq ptr %0, null, !dbg !1532
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1534
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !1531
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1535
  %6 = load i32, ptr %5, align 4, !dbg !1535, !tbaa !1536
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1530, metadata !DIExpression()), !dbg !1531
  store i32 %1, ptr %5, align 4, !dbg !1537, !tbaa !1536
  ret i32 %6, !dbg !1538
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1539 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1546
  %4 = icmp eq ptr %0, null, !dbg !1547
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1549
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !1546
  store i32 10, ptr %5, align 8, !dbg !1550, !tbaa !1486
  %6 = icmp ne ptr %1, null, !dbg !1551
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1553
  br i1 %8, label %10, label %9, !dbg !1553

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1554
  unreachable, !dbg !1554

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1555
  store ptr %1, ptr %11, align 8, !dbg !1556, !tbaa !1557
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1558
  store ptr %2, ptr %12, align 8, !dbg !1559, !tbaa !1560
  ret void, !dbg !1561
}

; Function Attrs: noreturn nounwind
declare !dbg !1562 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1563 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1567, metadata !DIExpression()), !dbg !1575
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1568, metadata !DIExpression()), !dbg !1575
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1569, metadata !DIExpression()), !dbg !1575
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1570, metadata !DIExpression()), !dbg !1575
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1571, metadata !DIExpression()), !dbg !1575
  %6 = icmp eq ptr %4, null, !dbg !1576
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1576
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1572, metadata !DIExpression()), !dbg !1575
  %8 = tail call ptr @__errno_location() #40, !dbg !1577
  %9 = load i32, ptr %8, align 4, !dbg !1577, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1573, metadata !DIExpression()), !dbg !1575
  %10 = load i32, ptr %7, align 8, !dbg !1578, !tbaa !1486
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1579
  %12 = load i32, ptr %11, align 4, !dbg !1579, !tbaa !1536
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1580
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1581
  %15 = load ptr, ptr %14, align 8, !dbg !1581, !tbaa !1557
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1582
  %17 = load ptr, ptr %16, align 8, !dbg !1582, !tbaa !1560
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1583
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1574, metadata !DIExpression()), !dbg !1575
  store i32 %9, ptr %8, align 4, !dbg !1584, !tbaa !820
  ret i64 %18, !dbg !1585
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1586 {
  %10 = alloca i32, align 4, !DIAssignID !1654
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1655
  %12 = alloca i32, align 4, !DIAssignID !1656
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1657
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1632, metadata !DIExpression(), metadata !1658, metadata ptr %14, metadata !DIExpression()), !dbg !1659
  %15 = alloca i32, align 4, !DIAssignID !1660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1635, metadata !DIExpression(), metadata !1660, metadata ptr %15, metadata !DIExpression()), !dbg !1661
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1592, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1594, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1595, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1596, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1597, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1598, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1599, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1600, metadata !DIExpression()), !dbg !1662
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1663
  %17 = icmp eq i64 %16, 1, !dbg !1664
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1601, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1604, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1662
  %18 = and i32 %5, 2, !dbg !1665
  %19 = icmp ne i32 %18, 0, !dbg !1665
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1665

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1666
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1667
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1668
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1605, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1604, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1595, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1600, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1599, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1596, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1610), !dbg !1669
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1662
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
  ], !dbg !1670

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1596, metadata !DIExpression()), !dbg !1662
  br label %101, !dbg !1671

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1596, metadata !DIExpression()), !dbg !1662
  br i1 %36, label %101, label %42, !dbg !1671

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1672
  br i1 %43, label %101, label %44, !dbg !1676

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1672, !tbaa !829
  br label %101, !dbg !1672

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !524, metadata !DIExpression(), metadata !1656, metadata ptr %12, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1657, metadata ptr %13, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !521, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i32 %28, metadata !522, metadata !DIExpression()), !dbg !1677
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #37, !dbg !1681
  call void @llvm.dbg.value(metadata ptr %46, metadata !523, metadata !DIExpression()), !dbg !1677
  %47 = icmp eq ptr %46, @.str.11.65, !dbg !1682
  br i1 %47, label %48, label %57, !dbg !1684

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1685
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %13, metadata !1687, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata ptr %13, metadata !1695, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 0, metadata !1698, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i64 8, metadata !1699, metadata !DIExpression()), !dbg !1700
  store i64 0, ptr %13, align 8, !dbg !1702
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1703
  %50 = icmp eq i64 %49, 3, !dbg !1705
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1706
  %54 = icmp eq i32 %28, 9, !dbg !1706
  %55 = select i1 %54, ptr @.str.10.67, ptr @.str.12.68, !dbg !1706
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1707
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1677
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1599, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !524, metadata !DIExpression(), metadata !1654, metadata ptr %10, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1655, metadata ptr %11, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !521, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i32 %28, metadata !522, metadata !DIExpression()), !dbg !1708
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #37, !dbg !1710
  call void @llvm.dbg.value(metadata ptr %59, metadata !523, metadata !DIExpression()), !dbg !1708
  %60 = icmp eq ptr %59, @.str.12.68, !dbg !1711
  br i1 %60, label %61, label %70, !dbg !1712

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1713
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1714
  call void @llvm.dbg.value(metadata ptr %11, metadata !1687, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata ptr %11, metadata !1695, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i32 0, metadata !1698, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 8, metadata !1699, metadata !DIExpression()), !dbg !1717
  store i64 0, ptr %11, align 8, !dbg !1719
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1720
  %63 = icmp eq i64 %62, 3, !dbg !1721
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1722
  %67 = icmp eq i32 %28, 9, !dbg !1722
  %68 = select i1 %67, ptr @.str.10.67, ptr @.str.12.68, !dbg !1722
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1723
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1723
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1600, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1599, metadata !DIExpression()), !dbg !1662
  br i1 %36, label %88, label %73, !dbg !1724

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1612, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1662
  %74 = load i8, ptr %71, align 1, !dbg !1726, !tbaa !829
  %75 = icmp eq i8 %74, 0, !dbg !1728
  br i1 %75, label %88, label %.preheader11, !dbg !1728

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1728

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1612, metadata !DIExpression()), !dbg !1725
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1602, metadata !DIExpression()), !dbg !1662
  %80 = icmp ult i64 %79, %39, !dbg !1729
  br i1 %80, label %81, label %83, !dbg !1732

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1729
  store i8 %77, ptr %82, align 1, !dbg !1729, !tbaa !829
  br label %83, !dbg !1729

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1732
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1602, metadata !DIExpression()), !dbg !1662
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1733
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1612, metadata !DIExpression()), !dbg !1725
  %86 = load i8, ptr %85, align 1, !dbg !1726, !tbaa !829
  %87 = icmp eq i8 %86, 0, !dbg !1728
  br i1 %87, label %.loopexit12, label %76, !dbg !1728, !llvm.loop !1734

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1732
  br label %88, !dbg !1736

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1604, metadata !DIExpression()), !dbg !1662
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1736
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1605, metadata !DIExpression()), !dbg !1662
  br label %101, !dbg !1738

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1662
  br label %101, !dbg !1739

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1596, metadata !DIExpression()), !dbg !1662
  br label %101, !dbg !1740

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1662
  br i1 %36, label %101, label %95, !dbg !1741

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1596, metadata !DIExpression()), !dbg !1662
  br i1 %36, label %101, label %95, !dbg !1740

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1742
  br i1 %97, label %101, label %98, !dbg !1746

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1742, !tbaa !829
  br label %101, !dbg !1742

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1662
  br label %101, !dbg !1747

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1748
  unreachable, !dbg !1748

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1737
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.67, %42 ], [ @.str.10.67, %44 ], [ @.str.10.67, %41 ], [ %33, %27 ], [ @.str.12.68, %95 ], [ @.str.12.68, %98 ], [ @.str.12.68, %94 ], [ @.str.10.67, %40 ], [ @.str.12.68, %91 ], [ @.str.12.68, %92 ], [ @.str.12.68, %93 ], !dbg !1662
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1662
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1605, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1604, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1600, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1599, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1596, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1617, metadata !DIExpression()), !dbg !1749
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
  br label %121, !dbg !1750

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1737
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1666
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1751
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1595, metadata !DIExpression()), !dbg !1662
  %130 = icmp eq i64 %122, -1, !dbg !1752
  br i1 %130, label %131, label %135, !dbg !1753

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1754
  %133 = load i8, ptr %132, align 1, !dbg !1754, !tbaa !829
  %134 = icmp eq i8 %133, 0, !dbg !1755
  br i1 %134, label %573, label %137, !dbg !1756

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1757
  br i1 %136, label %573, label %137, !dbg !1756

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1623, metadata !DIExpression()), !dbg !1758
  br i1 %113, label %138, label %151, !dbg !1759

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1761
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1762
  br i1 %140, label %141, label %143, !dbg !1762

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1595, metadata !DIExpression()), !dbg !1662
  br label %143, !dbg !1764

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1764
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1595, metadata !DIExpression()), !dbg !1662
  %145 = icmp ugt i64 %139, %144, !dbg !1765
  br i1 %145, label %151, label %146, !dbg !1766

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %147, metadata !1768, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %106, metadata !1771, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %107, metadata !1772, metadata !DIExpression()), !dbg !1773
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1775
  %149 = icmp eq i32 %148, 0, !dbg !1776
  %150 = and i1 %149, %109, !dbg !1777
  br i1 %150, label %.loopexit7, label %151, !dbg !1777

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1595, metadata !DIExpression()), !dbg !1662
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1778
  %155 = load i8, ptr %154, align 1, !dbg !1778, !tbaa !829
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1624, metadata !DIExpression()), !dbg !1758
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
  ], !dbg !1779

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1780

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1781

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1758
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1785
  br i1 %159, label %176, label %160, !dbg !1785

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1787
  br i1 %161, label %162, label %164, !dbg !1791

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1787
  store i8 39, ptr %163, align 1, !dbg !1787, !tbaa !829
  br label %164, !dbg !1787

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1791
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1602, metadata !DIExpression()), !dbg !1662
  %166 = icmp ult i64 %165, %129, !dbg !1792
  br i1 %166, label %167, label %169, !dbg !1795

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1792
  store i8 36, ptr %168, align 1, !dbg !1792, !tbaa !829
  br label %169, !dbg !1792

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1602, metadata !DIExpression()), !dbg !1662
  %171 = icmp ult i64 %170, %129, !dbg !1796
  br i1 %171, label %172, label %174, !dbg !1799

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1796
  store i8 39, ptr %173, align 1, !dbg !1796, !tbaa !829
  br label %174, !dbg !1796

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1662
  br label %176, !dbg !1800

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1662
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1602, metadata !DIExpression()), !dbg !1662
  %179 = icmp ult i64 %177, %129, !dbg !1801
  br i1 %179, label %180, label %182, !dbg !1804

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1801
  store i8 92, ptr %181, align 1, !dbg !1801, !tbaa !829
  br label %182, !dbg !1801

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1602, metadata !DIExpression()), !dbg !1662
  br i1 %110, label %184, label %476, !dbg !1805

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1807
  %186 = icmp ult i64 %185, %152, !dbg !1808
  br i1 %186, label %187, label %433, !dbg !1809

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1810
  %189 = load i8, ptr %188, align 1, !dbg !1810, !tbaa !829
  %190 = add i8 %189, -48, !dbg !1811
  %191 = icmp ult i8 %190, 10, !dbg !1811
  br i1 %191, label %192, label %433, !dbg !1811

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1812
  br i1 %193, label %194, label %196, !dbg !1816

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1812
  store i8 48, ptr %195, align 1, !dbg !1812, !tbaa !829
  br label %196, !dbg !1812

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1816
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1602, metadata !DIExpression()), !dbg !1662
  %198 = icmp ult i64 %197, %129, !dbg !1817
  br i1 %198, label %199, label %201, !dbg !1820

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1817
  store i8 48, ptr %200, align 1, !dbg !1817, !tbaa !829
  br label %201, !dbg !1817

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1820
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1602, metadata !DIExpression()), !dbg !1662
  br label %433, !dbg !1821

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1822

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1823

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1824

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1826

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1828
  %209 = icmp ult i64 %208, %152, !dbg !1829
  br i1 %209, label %210, label %433, !dbg !1830

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1831
  %212 = load i8, ptr %211, align 1, !dbg !1831, !tbaa !829
  %213 = icmp eq i8 %212, 63, !dbg !1832
  br i1 %213, label %214, label %433, !dbg !1833

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1834
  %216 = load i8, ptr %215, align 1, !dbg !1834, !tbaa !829
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
  ], !dbg !1835

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1836

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1617, metadata !DIExpression()), !dbg !1749
  %219 = icmp ult i64 %123, %129, !dbg !1838
  br i1 %219, label %220, label %222, !dbg !1841

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1838
  store i8 63, ptr %221, align 1, !dbg !1838, !tbaa !829
  br label %222, !dbg !1838

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1841
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1602, metadata !DIExpression()), !dbg !1662
  %224 = icmp ult i64 %223, %129, !dbg !1842
  br i1 %224, label %225, label %227, !dbg !1845

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1842
  store i8 34, ptr %226, align 1, !dbg !1842, !tbaa !829
  br label %227, !dbg !1842

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1845
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1602, metadata !DIExpression()), !dbg !1662
  %229 = icmp ult i64 %228, %129, !dbg !1846
  br i1 %229, label %230, label %232, !dbg !1849

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1846
  store i8 34, ptr %231, align 1, !dbg !1846, !tbaa !829
  br label %232, !dbg !1846

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1602, metadata !DIExpression()), !dbg !1662
  %234 = icmp ult i64 %233, %129, !dbg !1850
  br i1 %234, label %235, label %237, !dbg !1853

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1850
  store i8 63, ptr %236, align 1, !dbg !1850, !tbaa !829
  br label %237, !dbg !1850

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1602, metadata !DIExpression()), !dbg !1662
  br label %433, !dbg !1854

239:                                              ; preds = %151
  br label %249, !dbg !1855

240:                                              ; preds = %151
  br label %249, !dbg !1856

241:                                              ; preds = %151
  br label %247, !dbg !1857

242:                                              ; preds = %151
  br label %247, !dbg !1858

243:                                              ; preds = %151
  br label %249, !dbg !1859

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1860

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1861

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1864

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1866
  call void @llvm.dbg.label(metadata !1625), !dbg !1867
  br i1 %118, label %.loopexit8, label %249, !dbg !1868

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1866
  call void @llvm.dbg.label(metadata !1628), !dbg !1870
  br i1 %108, label %487, label %444, !dbg !1871

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1872

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1873, !tbaa !829
  %254 = icmp eq i8 %253, 0, !dbg !1875
  br i1 %254, label %255, label %433, !dbg !1876

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1877
  br i1 %256, label %257, label %433, !dbg !1879

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1623, metadata !DIExpression()), !dbg !1758
  br label %258, !dbg !1880

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1623, metadata !DIExpression()), !dbg !1758
  br i1 %115, label %260, label %433, !dbg !1881

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1883

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1623, metadata !DIExpression()), !dbg !1758
  br i1 %115, label %262, label %433, !dbg !1884

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1885

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1888
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1890
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1890
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1890
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1603, metadata !DIExpression()), !dbg !1662
  %269 = icmp ult i64 %123, %268, !dbg !1891
  br i1 %269, label %270, label %272, !dbg !1894

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1891
  store i8 39, ptr %271, align 1, !dbg !1891, !tbaa !829
  br label %272, !dbg !1891

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1894
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1602, metadata !DIExpression()), !dbg !1662
  %274 = icmp ult i64 %273, %268, !dbg !1895
  br i1 %274, label %275, label %277, !dbg !1898

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1895
  store i8 92, ptr %276, align 1, !dbg !1895, !tbaa !829
  br label %277, !dbg !1895

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1602, metadata !DIExpression()), !dbg !1662
  %279 = icmp ult i64 %278, %268, !dbg !1899
  br i1 %279, label %280, label %282, !dbg !1902

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1899
  store i8 39, ptr %281, align 1, !dbg !1899, !tbaa !829
  br label %282, !dbg !1899

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1662
  br label %433, !dbg !1903

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1904

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1629, metadata !DIExpression()), !dbg !1905
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1906
  %287 = load ptr, ptr %286, align 8, !dbg !1906, !tbaa !760
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1906
  %290 = load i16, ptr %289, align 2, !dbg !1906, !tbaa !861
  %291 = and i16 %290, 16384, !dbg !1906
  %292 = icmp ne i16 %291, 0, !dbg !1908
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1631, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1905
  br label %334, !dbg !1909

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1910
  call void @llvm.dbg.value(metadata ptr %14, metadata !1687, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %14, metadata !1695, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i32 0, metadata !1698, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata i64 8, metadata !1699, metadata !DIExpression()), !dbg !1913
  store i64 0, ptr %14, align 8, !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1629, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1905
  %294 = icmp eq i64 %152, -1, !dbg !1916
  br i1 %294, label %295, label %297, !dbg !1918

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1919
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1595, metadata !DIExpression()), !dbg !1662
  br label %297, !dbg !1920

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1595, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1921
  %299 = sub i64 %298, %128, !dbg !1922
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1923
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1639, metadata !DIExpression()), !dbg !1661
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1924

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1629, metadata !DIExpression()), !dbg !1905
  %302 = icmp ult i64 %128, %298, !dbg !1925
  br i1 %302, label %.preheader5, label %329, !dbg !1927

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1928

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1905
  br label %329, !dbg !1929

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1629, metadata !DIExpression()), !dbg !1905
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1931
  %308 = load i8, ptr %307, align 1, !dbg !1931, !tbaa !829
  %309 = icmp eq i8 %308, 0, !dbg !1927
  br i1 %309, label %.loopexit6, label %310, !dbg !1928

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1629, metadata !DIExpression()), !dbg !1905
  %312 = add i64 %311, %128, !dbg !1933
  %313 = icmp eq i64 %311, %299, !dbg !1925
  br i1 %313, label %.loopexit6, label %304, !dbg !1927, !llvm.loop !1934

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1640, metadata !DIExpression()), !dbg !1935
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1936
  %317 = and i1 %316, %109, !dbg !1936
  br i1 %317, label %.preheader3, label %325, !dbg !1936

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1937

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1640, metadata !DIExpression()), !dbg !1935
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1938
  %321 = load i8, ptr %320, align 1, !dbg !1938, !tbaa !829
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1940

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1941
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1640, metadata !DIExpression()), !dbg !1935
  %324 = icmp eq i64 %323, %300, !dbg !1942
  br i1 %324, label %.loopexit4, label %318, !dbg !1937, !llvm.loop !1943

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1945

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1945, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %326, metadata !1947, metadata !DIExpression()), !dbg !1955
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1957
  %328 = icmp ne i32 %327, 0, !dbg !1958
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1629, metadata !DIExpression()), !dbg !1905
  br label %329, !dbg !1959

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1960

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1629, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1961
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1629, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1961
  call void @llvm.dbg.label(metadata !1653), !dbg !1962
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1963
  br label %624, !dbg !1963

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1758
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1965
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1629, metadata !DIExpression()), !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1595, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1623, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1758
  %338 = icmp ult i64 %336, 2, !dbg !1966
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1967
  br i1 %340, label %433, label %341, !dbg !1967

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1968
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1648, metadata !DIExpression()), !dbg !1969
  br label %343, !dbg !1970

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1662
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1749
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1602, metadata !DIExpression()), !dbg !1662
  br i1 %339, label %394, label %350, !dbg !1971

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1976

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1758
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1979
  br i1 %352, label %369, label %353, !dbg !1979

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1981
  br i1 %354, label %355, label %357, !dbg !1985

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1981
  store i8 39, ptr %356, align 1, !dbg !1981, !tbaa !829
  br label %357, !dbg !1981

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1985
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1602, metadata !DIExpression()), !dbg !1662
  %359 = icmp ult i64 %358, %129, !dbg !1986
  br i1 %359, label %360, label %362, !dbg !1989

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1986
  store i8 36, ptr %361, align 1, !dbg !1986, !tbaa !829
  br label %362, !dbg !1986

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1989
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1602, metadata !DIExpression()), !dbg !1662
  %364 = icmp ult i64 %363, %129, !dbg !1990
  br i1 %364, label %365, label %367, !dbg !1993

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1990
  store i8 39, ptr %366, align 1, !dbg !1990, !tbaa !829
  br label %367, !dbg !1990

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1993
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1662
  br label %369, !dbg !1994

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1662
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1602, metadata !DIExpression()), !dbg !1662
  %372 = icmp ult i64 %370, %129, !dbg !1995
  br i1 %372, label %373, label %375, !dbg !1998

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1995
  store i8 92, ptr %374, align 1, !dbg !1995, !tbaa !829
  br label %375, !dbg !1995

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1602, metadata !DIExpression()), !dbg !1662
  %377 = icmp ult i64 %376, %129, !dbg !1999
  br i1 %377, label %378, label %382, !dbg !2002

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1999
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1999
  store i8 %380, ptr %381, align 1, !dbg !1999, !tbaa !829
  br label %382, !dbg !1999

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2002
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1602, metadata !DIExpression()), !dbg !1662
  %384 = icmp ult i64 %383, %129, !dbg !2003
  br i1 %384, label %385, label %390, !dbg !2006

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2003
  %388 = or disjoint i8 %387, 48, !dbg !2003
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2003
  store i8 %388, ptr %389, align 1, !dbg !2003, !tbaa !829
  br label %390, !dbg !2003

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1602, metadata !DIExpression()), !dbg !1662
  %392 = and i8 %349, 7, !dbg !2007
  %393 = or disjoint i8 %392, 48, !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1624, metadata !DIExpression()), !dbg !1758
  br label %401, !dbg !2009

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2010

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2011
  br i1 %396, label %397, label %399, !dbg !2016

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2011
  store i8 92, ptr %398, align 1, !dbg !2011, !tbaa !829
  br label %399, !dbg !2011

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2016
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1758
  br label %401, !dbg !2017

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1662
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1602, metadata !DIExpression()), !dbg !1662
  %407 = add i64 %346, 1, !dbg !2018
  %408 = icmp ugt i64 %342, %407, !dbg !2020
  br i1 %408, label %409, label %.loopexit2, !dbg !2021

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2022
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2022
  br i1 %411, label %423, label %412, !dbg !2022

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2025
  br i1 %413, label %414, label %416, !dbg !2029

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2025
  store i8 39, ptr %415, align 1, !dbg !2025, !tbaa !829
  br label %416, !dbg !2025

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1602, metadata !DIExpression()), !dbg !1662
  %418 = icmp ult i64 %417, %129, !dbg !2030
  br i1 %418, label %419, label %421, !dbg !2033

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2030
  store i8 39, ptr %420, align 1, !dbg !2030, !tbaa !829
  br label %421, !dbg !2030

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1662
  br label %423, !dbg !2034

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2035
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1602, metadata !DIExpression()), !dbg !1662
  %426 = icmp ult i64 %424, %129, !dbg !2036
  br i1 %426, label %427, label %429, !dbg !2039

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2036
  store i8 %406, ptr %428, align 1, !dbg !2036, !tbaa !829
  br label %429, !dbg !2036

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2039
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1617, metadata !DIExpression()), !dbg !1749
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2040
  %432 = load i8, ptr %431, align 1, !dbg !2040, !tbaa !829
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1624, metadata !DIExpression()), !dbg !1758
  br label %343, !dbg !2041, !llvm.loop !2042

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2045
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1662
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1666
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1749
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1758
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1623, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1619, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1595, metadata !DIExpression()), !dbg !1662
  br i1 %111, label %455, label %444, !dbg !2046

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
  br i1 %120, label %456, label %476, !dbg !2048

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2049

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
  %467 = lshr i8 %458, 5, !dbg !2050
  %468 = zext nneg i8 %467 to i64, !dbg !2050
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2051
  %470 = load i32, ptr %469, align 4, !dbg !2051, !tbaa !820
  %471 = and i8 %458, 31, !dbg !2052
  %472 = zext nneg i8 %471 to i32, !dbg !2052
  %473 = shl nuw i32 1, %472, !dbg !2053
  %474 = and i32 %470, %473, !dbg !2053
  %475 = icmp eq i32 %474, 0, !dbg !2053
  br i1 %475, label %476, label %487, !dbg !2054

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
  br i1 %153, label %487, label %523, !dbg !2055

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2045
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1662
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1666
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2056
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1758
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1623, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1595, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1651), !dbg !2057
  br i1 %109, label %.loopexit8, label %497, !dbg !2058

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1758
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2060
  br i1 %498, label %515, label %499, !dbg !2060

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2062
  br i1 %500, label %501, label %503, !dbg !2066

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2062
  store i8 39, ptr %502, align 1, !dbg !2062, !tbaa !829
  br label %503, !dbg !2062

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2066
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1602, metadata !DIExpression()), !dbg !1662
  %505 = icmp ult i64 %504, %496, !dbg !2067
  br i1 %505, label %506, label %508, !dbg !2070

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2067
  store i8 36, ptr %507, align 1, !dbg !2067, !tbaa !829
  br label %508, !dbg !2067

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2070
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1602, metadata !DIExpression()), !dbg !1662
  %510 = icmp ult i64 %509, %496, !dbg !2071
  br i1 %510, label %511, label %513, !dbg !2074

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2071
  store i8 39, ptr %512, align 1, !dbg !2071, !tbaa !829
  br label %513, !dbg !2071

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2074
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1662
  br label %515, !dbg !2075

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1758
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1602, metadata !DIExpression()), !dbg !1662
  %518 = icmp ult i64 %516, %496, !dbg !2076
  br i1 %518, label %519, label %521, !dbg !2079

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2076
  store i8 92, ptr %520, align 1, !dbg !2076, !tbaa !829
  br label %521, !dbg !2076

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1623, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1595, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1652), !dbg !2080
  br label %547, !dbg !2081

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1662
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1758
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1749
  br label %523, !dbg !2081

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2045
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1662
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1666
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2056
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2084
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1624, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1623, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1758
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1595, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.label(metadata !1652), !dbg !2080
  %534 = xor i1 %528, true, !dbg !2081
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2081
  br i1 %535, label %547, label %536, !dbg !2081

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2085
  br i1 %537, label %538, label %540, !dbg !2089

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2085
  store i8 39, ptr %539, align 1, !dbg !2085, !tbaa !829
  br label %540, !dbg !2085

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2089
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1602, metadata !DIExpression()), !dbg !1662
  %542 = icmp ult i64 %541, %533, !dbg !2090
  br i1 %542, label %543, label %545, !dbg !2093

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2090
  store i8 39, ptr %544, align 1, !dbg !2090, !tbaa !829
  br label %545, !dbg !2090

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2093
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1662
  br label %547, !dbg !2094

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1758
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1602, metadata !DIExpression()), !dbg !1662
  %557 = icmp ult i64 %555, %548, !dbg !2095
  br i1 %557, label %558, label %560, !dbg !2098

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2095
  store i8 %549, ptr %559, align 1, !dbg !2095, !tbaa !829
  br label %560, !dbg !2095

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1602, metadata !DIExpression()), !dbg !1662
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2099
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1662
  br label %563, !dbg !2100

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2045
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1662
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1666
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2056
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1617, metadata !DIExpression()), !dbg !1749
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1595, metadata !DIExpression()), !dbg !1662
  %572 = add i64 %570, 1, !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1617, metadata !DIExpression()), !dbg !1749
  br label %121, !dbg !2102, !llvm.loop !2103

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1737
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1666
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1593, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1603, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1602, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1595, metadata !DIExpression()), !dbg !1662
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2105
  %575 = xor i1 %109, true, !dbg !2107
  %576 = or i1 %574, %575, !dbg !2107
  %577 = or i1 %576, %110, !dbg !2107
  br i1 %577, label %578, label %.loopexit13, !dbg !2107

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2108
  %580 = xor i1 %.lcssa38, true, !dbg !2108
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2108
  br i1 %581, label %589, label %582, !dbg !2108

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2110

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1666
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2112
  br label %638, !dbg !2114

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2115
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2117
  br i1 %588, label %27, label %589, !dbg !2117

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1662
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1737
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2118
  %592 = or i1 %591, %590, !dbg !2120
  br i1 %592, label %608, label %593, !dbg !2120

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1604, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1602, metadata !DIExpression()), !dbg !1662
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2121, !tbaa !829
  %595 = icmp eq i8 %594, 0, !dbg !2124
  br i1 %595, label %608, label %.preheader, !dbg !2124

.preheader:                                       ; preds = %593
  br label %596, !dbg !2124

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1604, metadata !DIExpression()), !dbg !1662
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1602, metadata !DIExpression()), !dbg !1662
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2125
  br i1 %600, label %601, label %603, !dbg !2128

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2125
  store i8 %597, ptr %602, align 1, !dbg !2125, !tbaa !829
  br label %603, !dbg !2125

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2128
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1602, metadata !DIExpression()), !dbg !1662
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2129
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1604, metadata !DIExpression()), !dbg !1662
  %606 = load i8, ptr %605, align 1, !dbg !2121, !tbaa !829
  %607 = icmp eq i8 %606, 0, !dbg !2124
  br i1 %607, label %.loopexit, label %596, !dbg !2124, !llvm.loop !2130

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2128
  br label %608, !dbg !2132

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1602, metadata !DIExpression()), !dbg !1662
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2132
  br i1 %610, label %611, label %638, !dbg !2134

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2135
  store i8 0, ptr %612, align 1, !dbg !2136, !tbaa !829
  br label %638, !dbg !2135

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1653), !dbg !1962
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2137
  br i1 %614, label %624, label %630, !dbg !1963

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1758
  br label %615, !dbg !2137

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2137

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2137

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1653), !dbg !1962
  %622 = icmp eq i32 %616, 2, !dbg !2137
  %623 = select i1 %619, i32 4, i32 2, !dbg !1963
  br i1 %622, label %624, label %630, !dbg !1963

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1963

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1764
  br label %630, !dbg !2138

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1596, metadata !DIExpression()), !dbg !1662
  %636 = and i32 %5, -3, !dbg !2138
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2139
  br label %638, !dbg !2140

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2141
}

; Function Attrs: nounwind
declare !dbg !2142 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2145 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2148 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2150 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2154, metadata !DIExpression()), !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2155, metadata !DIExpression()), !dbg !2157
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2156, metadata !DIExpression()), !dbg !2157
  call void @llvm.dbg.value(metadata ptr %0, metadata !2158, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata i64 %1, metadata !2163, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr null, metadata !2164, metadata !DIExpression()), !dbg !2171
  call void @llvm.dbg.value(metadata ptr %2, metadata !2165, metadata !DIExpression()), !dbg !2171
  %4 = icmp eq ptr %2, null, !dbg !2173
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %5, metadata !2166, metadata !DIExpression()), !dbg !2171
  %6 = tail call ptr @__errno_location() #40, !dbg !2174
  %7 = load i32, ptr %6, align 4, !dbg !2174, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %7, metadata !2167, metadata !DIExpression()), !dbg !2171
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2175
  %9 = load i32, ptr %8, align 4, !dbg !2175, !tbaa !1536
  %10 = or i32 %9, 1, !dbg !2176
  call void @llvm.dbg.value(metadata i32 %10, metadata !2168, metadata !DIExpression()), !dbg !2171
  %11 = load i32, ptr %5, align 8, !dbg !2177, !tbaa !1486
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2178
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2179
  %14 = load ptr, ptr %13, align 8, !dbg !2179, !tbaa !1557
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2180
  %16 = load ptr, ptr %15, align 8, !dbg !2180, !tbaa !1560
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2181
  %18 = add i64 %17, 1, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %18, metadata !2169, metadata !DIExpression()), !dbg !2171
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2183
  call void @llvm.dbg.value(metadata ptr %19, metadata !2170, metadata !DIExpression()), !dbg !2171
  %20 = load i32, ptr %5, align 8, !dbg !2184, !tbaa !1486
  %21 = load ptr, ptr %13, align 8, !dbg !2185, !tbaa !1557
  %22 = load ptr, ptr %15, align 8, !dbg !2186, !tbaa !1560
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2187
  store i32 %7, ptr %6, align 4, !dbg !2188, !tbaa !820
  ret ptr %19, !dbg !2189
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2159 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2158, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2163, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2164, metadata !DIExpression()), !dbg !2190
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2165, metadata !DIExpression()), !dbg !2190
  %5 = icmp eq ptr %3, null, !dbg !2191
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2191
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2166, metadata !DIExpression()), !dbg !2190
  %7 = tail call ptr @__errno_location() #40, !dbg !2192
  %8 = load i32, ptr %7, align 4, !dbg !2192, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2167, metadata !DIExpression()), !dbg !2190
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2193
  %10 = load i32, ptr %9, align 4, !dbg !2193, !tbaa !1536
  %11 = icmp eq ptr %2, null, !dbg !2194
  %12 = zext i1 %11 to i32, !dbg !2194
  %13 = or i32 %10, %12, !dbg !2195
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2168, metadata !DIExpression()), !dbg !2190
  %14 = load i32, ptr %6, align 8, !dbg !2196, !tbaa !1486
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2197
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2198
  %17 = load ptr, ptr %16, align 8, !dbg !2198, !tbaa !1557
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2199
  %19 = load ptr, ptr %18, align 8, !dbg !2199, !tbaa !1560
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2200
  %21 = add i64 %20, 1, !dbg !2201
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2169, metadata !DIExpression()), !dbg !2190
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2202
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2170, metadata !DIExpression()), !dbg !2190
  %23 = load i32, ptr %6, align 8, !dbg !2203, !tbaa !1486
  %24 = load ptr, ptr %16, align 8, !dbg !2204, !tbaa !1557
  %25 = load ptr, ptr %18, align 8, !dbg !2205, !tbaa !1560
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2206
  store i32 %8, ptr %7, align 4, !dbg !2207, !tbaa !820
  br i1 %11, label %28, label %27, !dbg !2208

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2209, !tbaa !2211
  br label %28, !dbg !2212

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2213
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2214 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2219, !tbaa !760
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2216, metadata !DIExpression()), !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2221
  %2 = load i32, ptr @nslots, align 4, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2217, metadata !DIExpression()), !dbg !2221
  %3 = icmp sgt i32 %2, 1, !dbg !2222
  br i1 %3, label %4, label %6, !dbg !2224

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2222
  br label %10, !dbg !2224

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2225

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2225
  %8 = load ptr, ptr %7, align 8, !dbg !2225, !tbaa !2227
  %9 = icmp eq ptr %8, @slot0, !dbg !2229
  br i1 %9, label %17, label %16, !dbg !2230

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2217, metadata !DIExpression()), !dbg !2221
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2231
  %13 = load ptr, ptr %12, align 8, !dbg !2231, !tbaa !2227
  tail call void @free(ptr noundef %13) #37, !dbg !2232
  %14 = add nuw nsw i64 %11, 1, !dbg !2233
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2217, metadata !DIExpression()), !dbg !2221
  %15 = icmp eq i64 %14, %5, !dbg !2222
  br i1 %15, label %.loopexit, label %10, !dbg !2224, !llvm.loop !2234

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2236
  store i64 256, ptr @slotvec0, align 8, !dbg !2238, !tbaa !2239
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2240, !tbaa !2227
  br label %17, !dbg !2241

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2242
  br i1 %18, label %20, label %19, !dbg !2244

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2245
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2247, !tbaa !760
  br label %20, !dbg !2248

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2249, !tbaa !820
  ret void, !dbg !2250
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2251 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2254 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2256, metadata !DIExpression()), !dbg !2258
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2257, metadata !DIExpression()), !dbg !2258
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2259
  ret ptr %3, !dbg !2260
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2261 {
  %5 = alloca i64, align 8, !DIAssignID !2281
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2275, metadata !DIExpression(), metadata !2281, metadata ptr %5, metadata !DIExpression()), !dbg !2282
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2265, metadata !DIExpression()), !dbg !2283
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2266, metadata !DIExpression()), !dbg !2283
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2267, metadata !DIExpression()), !dbg !2283
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2268, metadata !DIExpression()), !dbg !2283
  %6 = tail call ptr @__errno_location() #40, !dbg !2284
  %7 = load i32, ptr %6, align 4, !dbg !2284, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2269, metadata !DIExpression()), !dbg !2283
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2285, !tbaa !760
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2270, metadata !DIExpression()), !dbg !2283
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2271, metadata !DIExpression()), !dbg !2283
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2286
  br i1 %9, label %10, label %11, !dbg !2286

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2288
  unreachable, !dbg !2288

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2289, !tbaa !820
  %13 = icmp sgt i32 %12, %0, !dbg !2290
  br i1 %13, label %32, label %14, !dbg !2291

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2292
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2272, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2282
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2293
  %16 = sext i32 %12 to i64, !dbg !2294
  store i64 %16, ptr %5, align 8, !dbg !2295, !tbaa !2211, !DIAssignID !2296
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2275, metadata !DIExpression(), metadata !2296, metadata ptr %5, metadata !DIExpression()), !dbg !2282
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2297
  %18 = add nuw nsw i32 %0, 1, !dbg !2298
  %19 = sub i32 %18, %12, !dbg !2299
  %20 = sext i32 %19 to i64, !dbg !2300
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2301
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2270, metadata !DIExpression()), !dbg !2283
  store ptr %21, ptr @slotvec, align 8, !dbg !2302, !tbaa !760
  br i1 %15, label %22, label %23, !dbg !2303

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2304, !tbaa.struct !2306
  br label %23, !dbg !2307

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2308, !tbaa !820
  %25 = sext i32 %24 to i64, !dbg !2309
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2309
  %27 = load i64, ptr %5, align 8, !dbg !2310, !tbaa !2211
  %28 = sub nsw i64 %27, %25, !dbg !2311
  %29 = shl i64 %28, 4, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %26, metadata !1695, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i32 0, metadata !1698, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata i64 %29, metadata !1699, metadata !DIExpression()), !dbg !2313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2315
  %30 = load i64, ptr %5, align 8, !dbg !2316, !tbaa !2211
  %31 = trunc i64 %30 to i32, !dbg !2316
  store i32 %31, ptr @nslots, align 4, !dbg !2317, !tbaa !820
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2318
  br label %32, !dbg !2319

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2283
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2270, metadata !DIExpression()), !dbg !2283
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2320
  %36 = load i64, ptr %35, align 8, !dbg !2321, !tbaa !2239
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2276, metadata !DIExpression()), !dbg !2322
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2323
  %38 = load ptr, ptr %37, align 8, !dbg !2323, !tbaa !2227
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2278, metadata !DIExpression()), !dbg !2322
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2324
  %40 = load i32, ptr %39, align 4, !dbg !2324, !tbaa !1536
  %41 = or i32 %40, 1, !dbg !2325
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2279, metadata !DIExpression()), !dbg !2322
  %42 = load i32, ptr %3, align 8, !dbg !2326, !tbaa !1486
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2327
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2328
  %45 = load ptr, ptr %44, align 8, !dbg !2328, !tbaa !1557
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2329
  %47 = load ptr, ptr %46, align 8, !dbg !2329, !tbaa !1560
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2330
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2280, metadata !DIExpression()), !dbg !2322
  %49 = icmp ugt i64 %36, %48, !dbg !2331
  br i1 %49, label %60, label %50, !dbg !2333

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2334
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2276, metadata !DIExpression()), !dbg !2322
  store i64 %51, ptr %35, align 8, !dbg !2336, !tbaa !2239
  %52 = icmp eq ptr %38, @slot0, !dbg !2337
  br i1 %52, label %54, label %53, !dbg !2339

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2340
  br label %54, !dbg !2340

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2341
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2278, metadata !DIExpression()), !dbg !2322
  store ptr %55, ptr %37, align 8, !dbg !2342, !tbaa !2227
  %56 = load i32, ptr %3, align 8, !dbg !2343, !tbaa !1486
  %57 = load ptr, ptr %44, align 8, !dbg !2344, !tbaa !1557
  %58 = load ptr, ptr %46, align 8, !dbg !2345, !tbaa !1560
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2346
  br label %60, !dbg !2347

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2322
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2278, metadata !DIExpression()), !dbg !2322
  store i32 %7, ptr %6, align 4, !dbg !2348, !tbaa !820
  ret ptr %61, !dbg !2349
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2350 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2354, metadata !DIExpression()), !dbg !2357
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2355, metadata !DIExpression()), !dbg !2357
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2356, metadata !DIExpression()), !dbg !2357
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2358
  ret ptr %4, !dbg !2359
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2360 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 0, metadata !2256, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %0, metadata !2257, metadata !DIExpression()), !dbg !2364
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2366
  ret ptr %2, !dbg !2367
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2372, metadata !DIExpression()), !dbg !2374
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2373, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i32 0, metadata !2354, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %0, metadata !2355, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i64 %1, metadata !2356, metadata !DIExpression()), !dbg !2375
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2377
  ret ptr %3, !dbg !2378
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2379 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2387
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2387, metadata ptr %4, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2383, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2384, metadata !DIExpression()), !dbg !2388
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2385, metadata !DIExpression()), !dbg !2388
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2390), !dbg !2393
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2399, metadata !DIExpression()), !dbg !2402
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2402, !alias.scope !2390, !DIAssignID !2403
  call void @llvm.dbg.assign(metadata i8 0, metadata !2386, metadata !DIExpression(), metadata !2403, metadata ptr %4, metadata !DIExpression()), !dbg !2388
  %5 = icmp eq i32 %1, 10, !dbg !2404
  br i1 %5, label %6, label %7, !dbg !2406

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2407, !noalias !2390
  unreachable, !dbg !2407

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2408, !tbaa !1486, !alias.scope !2390, !DIAssignID !2409
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2409, metadata ptr %4, metadata !DIExpression()), !dbg !2388
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2410
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2411
  ret ptr %8, !dbg !2412
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2413 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2422
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2421, metadata !DIExpression(), metadata !2422, metadata ptr %5, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2418, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2419, metadata !DIExpression()), !dbg !2423
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2424
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425), !dbg !2428
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2429
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2399, metadata !DIExpression()), !dbg !2431
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2431, !alias.scope !2425, !DIAssignID !2432
  call void @llvm.dbg.assign(metadata i8 0, metadata !2421, metadata !DIExpression(), metadata !2432, metadata ptr %5, metadata !DIExpression()), !dbg !2423
  %6 = icmp eq i32 %1, 10, !dbg !2433
  br i1 %6, label %7, label %8, !dbg !2434

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2435, !noalias !2425
  unreachable, !dbg !2435

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2436, !tbaa !1486, !alias.scope !2425, !DIAssignID !2437
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2437, metadata ptr %5, metadata !DIExpression()), !dbg !2423
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2438
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2439
  ret ptr %9, !dbg !2440
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2441 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2447
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()), !dbg !2448
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2446, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2386, metadata !DIExpression(), metadata !2447, metadata ptr %3, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 0, metadata !2383, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %0, metadata !2384, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata ptr %1, metadata !2385, metadata !DIExpression()), !dbg !2449
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452), !dbg !2455
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2399, metadata !DIExpression()), !dbg !2458
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2458, !alias.scope !2452, !DIAssignID !2459
  call void @llvm.dbg.assign(metadata i8 0, metadata !2386, metadata !DIExpression(), metadata !2459, metadata ptr %3, metadata !DIExpression()), !dbg !2449
  %4 = icmp eq i32 %0, 10, !dbg !2460
  br i1 %4, label %5, label %6, !dbg !2461

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2462, !noalias !2452
  unreachable, !dbg !2462

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2463, !tbaa !1486, !alias.scope !2452, !DIAssignID !2464
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2386, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2464, metadata ptr %3, metadata !DIExpression()), !dbg !2449
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2465
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2466
  ret ptr %7, !dbg !2467
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2468 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2475
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2472, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2473, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2421, metadata !DIExpression(), metadata !2475, metadata ptr %4, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2417, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %1, metadata !2419, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %2, metadata !2420, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2479
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2399, metadata !DIExpression()), !dbg !2486
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2486, !alias.scope !2480, !DIAssignID !2487
  call void @llvm.dbg.assign(metadata i8 0, metadata !2421, metadata !DIExpression(), metadata !2487, metadata ptr %4, metadata !DIExpression()), !dbg !2477
  %5 = icmp eq i32 %0, 10, !dbg !2488
  br i1 %5, label %6, label %7, !dbg !2489

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2490, !noalias !2480
  unreachable, !dbg !2490

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2491, !tbaa !1486, !alias.scope !2480, !DIAssignID !2492
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2421, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2492, metadata ptr %4, metadata !DIExpression()), !dbg !2477
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2493
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2494
  ret ptr %8, !dbg !2495
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2496 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2504
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2504, metadata ptr %4, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2500, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2501, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2507, !tbaa.struct !2508, !DIAssignID !2509
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2509, metadata ptr %4, metadata !DIExpression()), !dbg !2505
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1504, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1506, metadata !DIExpression()), !dbg !2510
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2512
  %6 = lshr i8 %2, 5, !dbg !2513
  %7 = zext nneg i8 %6 to i64, !dbg !2513
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2514
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1507, metadata !DIExpression()), !dbg !2510
  %9 = and i8 %2, 31, !dbg !2515
  %10 = zext nneg i8 %9 to i32, !dbg !2515
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1509, metadata !DIExpression()), !dbg !2510
  %11 = load i32, ptr %8, align 4, !dbg !2516, !tbaa !820
  %12 = lshr i32 %11, %10, !dbg !2517
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2510
  %13 = and i32 %12, 1, !dbg !2518
  %14 = xor i32 %13, 1, !dbg !2518
  %15 = shl nuw i32 %14, %10, !dbg !2519
  %16 = xor i32 %15, %11, !dbg !2520
  store i32 %16, ptr %8, align 4, !dbg !2520, !tbaa !820
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2521
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2522
  ret ptr %17, !dbg !2523
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2524 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2530
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2531
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2529, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2530, metadata ptr %3, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %0, metadata !2500, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i64 -1, metadata !2501, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8 %1, metadata !2502, metadata !DIExpression()), !dbg !2532
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2534
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2535, !tbaa.struct !2508, !DIAssignID !2536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2536, metadata ptr %3, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 %1, metadata !1504, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !2537
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2539
  %5 = lshr i8 %1, 5, !dbg !2540
  %6 = zext nneg i8 %5 to i64, !dbg !2540
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2541
  call void @llvm.dbg.value(metadata ptr %7, metadata !1507, metadata !DIExpression()), !dbg !2537
  %8 = and i8 %1, 31, !dbg !2542
  %9 = zext nneg i8 %8 to i32, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %9, metadata !1509, metadata !DIExpression()), !dbg !2537
  %10 = load i32, ptr %7, align 4, !dbg !2543, !tbaa !820
  %11 = lshr i32 %10, %9, !dbg !2544
  call void @llvm.dbg.value(metadata i32 %11, metadata !1510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2537
  %12 = and i32 %11, 1, !dbg !2545
  %13 = xor i32 %12, 1, !dbg !2545
  %14 = shl nuw i32 %13, %9, !dbg !2546
  %15 = xor i32 %14, %10, !dbg !2547
  store i32 %15, ptr %7, align 4, !dbg !2547, !tbaa !820
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2548
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2549
  ret ptr %16, !dbg !2550
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2551 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2554
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2553, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata ptr %0, metadata !2528, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.value(metadata i8 58, metadata !2529, metadata !DIExpression()), !dbg !2556
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2554, metadata ptr %2, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %0, metadata !2500, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 -1, metadata !2501, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !2502, metadata !DIExpression()), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2560
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2561, !tbaa.struct !2508, !DIAssignID !2562
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2562, metadata ptr %2, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %2, metadata !1503, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2563
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2565
  call void @llvm.dbg.value(metadata ptr %3, metadata !1507, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2563
  %4 = load i32, ptr %3, align 4, !dbg !2566, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %4, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2563
  %5 = or i32 %4, 67108864, !dbg !2567
  store i32 %5, ptr %3, align 4, !dbg !2567, !tbaa !820
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2568
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2569
  ret ptr %6, !dbg !2570
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2571 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2575
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2573, metadata !DIExpression()), !dbg !2576
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2574, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2575, metadata ptr %3, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %0, metadata !2500, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2501, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 58, metadata !2502, metadata !DIExpression()), !dbg !2577
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2579
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2580, !tbaa.struct !2508, !DIAssignID !2581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2503, metadata !DIExpression(), metadata !2581, metadata ptr %3, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2582
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2584
  call void @llvm.dbg.value(metadata ptr %4, metadata !1507, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2582
  %5 = load i32, ptr %4, align 4, !dbg !2585, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %5, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2582
  %6 = or i32 %5, 67108864, !dbg !2586
  store i32 %6, ptr %4, align 4, !dbg !2586, !tbaa !820
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2587
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2588
  ret ptr %7, !dbg !2589
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2590 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2595, metadata !DIExpression(), metadata !2596, metadata ptr %4, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2598
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2592, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2593, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2594, metadata !DIExpression()), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2601
  %5 = icmp eq i32 %1, 10, !dbg !2602
  br i1 %5, label %6, label %7, !dbg !2603

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2604, !noalias !2605
  unreachable, !dbg !2604

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2601
  store i32 %1, ptr %4, align 8, !dbg !2608, !tbaa.struct !2508, !DIAssignID !2609
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2608
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2608
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2595, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2609, metadata ptr %4, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2595, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2610, metadata ptr %8, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2611
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2613
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1507, metadata !DIExpression()), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2611
  %10 = load i32, ptr %9, align 4, !dbg !2614, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2611
  %11 = or i32 %10, 67108864, !dbg !2615
  store i32 %11, ptr %9, align 4, !dbg !2615, !tbaa !820, !DIAssignID !2616
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2595, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2616, metadata ptr %9, metadata !DIExpression()), !dbg !2597
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2617
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2618
  ret ptr %12, !dbg !2619
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2620 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2628
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2625, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2626, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2627, metadata !DIExpression()), !dbg !2629
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2628, metadata ptr %5, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %2, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %3, metadata !2638, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata i64 -1, metadata !2639, metadata !DIExpression()), !dbg !2640
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2642
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2643, !tbaa.struct !2508, !DIAssignID !2644
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2644, metadata ptr %5, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2645, metadata ptr undef, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2646
  store i32 10, ptr %5, align 8, !dbg !2648, !tbaa !1486, !DIAssignID !2649
  call void @llvm.dbg.assign(metadata i32 10, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2649, metadata ptr %5, metadata !DIExpression()), !dbg !2640
  %6 = icmp ne ptr %1, null, !dbg !2650
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2651
  br i1 %8, label %10, label %9, !dbg !2651

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2652
  unreachable, !dbg !2652

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2653
  store ptr %1, ptr %11, align 8, !dbg !2654, !tbaa !1557, !DIAssignID !2655
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2655, metadata ptr %11, metadata !DIExpression()), !dbg !2640
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2656
  store ptr %2, ptr %12, align 8, !dbg !2657, !tbaa !1560, !DIAssignID !2658
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2658, metadata ptr %12, metadata !DIExpression()), !dbg !2640
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2659
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2660
  ret ptr %13, !dbg !2661
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2631 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2662, metadata ptr %6, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2635, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2636, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2637, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2638, metadata !DIExpression()), !dbg !2663
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2639, metadata !DIExpression()), !dbg !2663
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2665, !tbaa.struct !2508, !DIAssignID !2666
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2666, metadata ptr %6, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2667, metadata ptr undef, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !2668
  store i32 10, ptr %6, align 8, !dbg !2670, !tbaa !1486, !DIAssignID !2671
  call void @llvm.dbg.assign(metadata i32 10, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2671, metadata ptr %6, metadata !DIExpression()), !dbg !2663
  %7 = icmp ne ptr %1, null, !dbg !2672
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2673
  br i1 %9, label %11, label %10, !dbg !2673

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2674
  unreachable, !dbg !2674

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2675
  store ptr %1, ptr %12, align 8, !dbg !2676, !tbaa !1557, !DIAssignID !2677
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2677, metadata ptr %12, metadata !DIExpression()), !dbg !2663
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2678
  store ptr %2, ptr %13, align 8, !dbg !2679, !tbaa !1560, !DIAssignID !2680
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2680, metadata ptr %13, metadata !DIExpression()), !dbg !2663
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2682
  ret ptr %14, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2684 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2691
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2688, metadata !DIExpression()), !dbg !2692
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2689, metadata !DIExpression()), !dbg !2692
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2624, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %0, metadata !2625, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2691, metadata ptr %4, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %0, metadata !2636, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %2, metadata !2638, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i64 -1, metadata !2639, metadata !DIExpression()), !dbg !2695
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2698, !tbaa.struct !2508, !DIAssignID !2699
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2699, metadata ptr %4, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2700, metadata ptr undef, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %1, metadata !1545, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !2701
  store i32 10, ptr %4, align 8, !dbg !2703, !tbaa !1486, !DIAssignID !2704
  call void @llvm.dbg.assign(metadata i32 10, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2704, metadata ptr %4, metadata !DIExpression()), !dbg !2695
  %5 = icmp ne ptr %0, null, !dbg !2705
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2706
  br i1 %7, label %9, label %8, !dbg !2706

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2707
  unreachable, !dbg !2707

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2708
  store ptr %0, ptr %10, align 8, !dbg !2709, !tbaa !1557, !DIAssignID !2710
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2710, metadata ptr %10, metadata !DIExpression()), !dbg !2695
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2711
  store ptr %1, ptr %11, align 8, !dbg !2712, !tbaa !1560, !DIAssignID !2713
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2713, metadata ptr %11, metadata !DIExpression()), !dbg !2695
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2714
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2715
  ret ptr %12, !dbg !2716
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2717 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2725
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2726
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2722, metadata !DIExpression()), !dbg !2726
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2723, metadata !DIExpression()), !dbg !2726
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2724, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2725, metadata ptr %5, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %0, metadata !2636, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %1, metadata !2637, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %2, metadata !2638, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %3, metadata !2639, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2730, !tbaa.struct !2508, !DIAssignID !2731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(), metadata !2731, metadata ptr %5, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2732, metadata ptr undef, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %1, metadata !1545, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2733
  store i32 10, ptr %5, align 8, !dbg !2735, !tbaa !1486, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata i32 10, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2736, metadata ptr %5, metadata !DIExpression()), !dbg !2727
  %6 = icmp ne ptr %0, null, !dbg !2737
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2738
  br i1 %8, label %10, label %9, !dbg !2738

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2739
  unreachable, !dbg !2739

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2740
  store ptr %0, ptr %11, align 8, !dbg !2741, !tbaa !1557, !DIAssignID !2742
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2742, metadata ptr %11, metadata !DIExpression()), !dbg !2727
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2743
  store ptr %1, ptr %12, align 8, !dbg !2744, !tbaa !1560, !DIAssignID !2745
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2630, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2745, metadata ptr %12, metadata !DIExpression()), !dbg !2727
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2746
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2747
  ret ptr %13, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2749 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2754, metadata !DIExpression()), !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2755, metadata !DIExpression()), !dbg !2756
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2757
  ret ptr %4, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2759 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2763, metadata !DIExpression()), !dbg !2765
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i64 %1, metadata !2755, metadata !DIExpression()), !dbg !2766
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2768
  ret ptr %3, !dbg !2769
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2770 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2774, metadata !DIExpression()), !dbg !2776
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 %0, metadata !2753, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %1, metadata !2754, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i64 -1, metadata !2755, metadata !DIExpression()), !dbg !2777
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2779
  ret ptr %3, !dbg !2780
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2781 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i32 0, metadata !2774, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i32 0, metadata !2753, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata ptr %0, metadata !2754, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 -1, metadata !2755, metadata !DIExpression()), !dbg !2789
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2791
  ret ptr %2, !dbg !2792
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2793 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2832, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2833, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2834, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2835, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2836, metadata !DIExpression()), !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2837, metadata !DIExpression()), !dbg !2838
  %7 = icmp eq ptr %1, null, !dbg !2839
  br i1 %7, label %10, label %8, !dbg !2841

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2842
  br label %12, !dbg !2842

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.76, ptr noundef %2, ptr noundef %3) #37, !dbg !2843
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.3.78, i32 noundef 5) #37, !dbg !2844
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2844
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2845
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.5.80, i32 noundef 5) #37, !dbg !2846
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.81) #37, !dbg !2846
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2847
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
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.7.82, i32 noundef 5) #37, !dbg !2849
  %21 = load ptr, ptr %4, align 8, !dbg !2849, !tbaa !760
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2849
  br label %147, !dbg !2851

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.8.83, i32 noundef 5) #37, !dbg !2852
  %25 = load ptr, ptr %4, align 8, !dbg !2852, !tbaa !760
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2852
  %27 = load ptr, ptr %26, align 8, !dbg !2852, !tbaa !760
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2852
  br label %147, !dbg !2853

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.9.84, i32 noundef 5) #37, !dbg !2854
  %31 = load ptr, ptr %4, align 8, !dbg !2854, !tbaa !760
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2854
  %33 = load ptr, ptr %32, align 8, !dbg !2854, !tbaa !760
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2854
  %35 = load ptr, ptr %34, align 8, !dbg !2854, !tbaa !760
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2854
  br label %147, !dbg !2855

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.10.85, i32 noundef 5) #37, !dbg !2856
  %39 = load ptr, ptr %4, align 8, !dbg !2856, !tbaa !760
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2856
  %41 = load ptr, ptr %40, align 8, !dbg !2856, !tbaa !760
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2856
  %43 = load ptr, ptr %42, align 8, !dbg !2856, !tbaa !760
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2856
  %45 = load ptr, ptr %44, align 8, !dbg !2856, !tbaa !760
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2856
  br label %147, !dbg !2857

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.11.86, i32 noundef 5) #37, !dbg !2858
  %49 = load ptr, ptr %4, align 8, !dbg !2858, !tbaa !760
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2858
  %51 = load ptr, ptr %50, align 8, !dbg !2858, !tbaa !760
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2858
  %53 = load ptr, ptr %52, align 8, !dbg !2858, !tbaa !760
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2858
  %55 = load ptr, ptr %54, align 8, !dbg !2858, !tbaa !760
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2858
  %57 = load ptr, ptr %56, align 8, !dbg !2858, !tbaa !760
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2858
  br label %147, !dbg !2859

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.12.87, i32 noundef 5) #37, !dbg !2860
  %61 = load ptr, ptr %4, align 8, !dbg !2860, !tbaa !760
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2860
  %63 = load ptr, ptr %62, align 8, !dbg !2860, !tbaa !760
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2860
  %65 = load ptr, ptr %64, align 8, !dbg !2860, !tbaa !760
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2860
  %67 = load ptr, ptr %66, align 8, !dbg !2860, !tbaa !760
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2860
  %69 = load ptr, ptr %68, align 8, !dbg !2860, !tbaa !760
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2860
  %71 = load ptr, ptr %70, align 8, !dbg !2860, !tbaa !760
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2860
  br label %147, !dbg !2861

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.13.88, i32 noundef 5) #37, !dbg !2862
  %75 = load ptr, ptr %4, align 8, !dbg !2862, !tbaa !760
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2862
  %77 = load ptr, ptr %76, align 8, !dbg !2862, !tbaa !760
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2862
  %79 = load ptr, ptr %78, align 8, !dbg !2862, !tbaa !760
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2862
  %81 = load ptr, ptr %80, align 8, !dbg !2862, !tbaa !760
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2862
  %83 = load ptr, ptr %82, align 8, !dbg !2862, !tbaa !760
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2862
  %85 = load ptr, ptr %84, align 8, !dbg !2862, !tbaa !760
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2862
  %87 = load ptr, ptr %86, align 8, !dbg !2862, !tbaa !760
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2862
  br label %147, !dbg !2863

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.14.89, i32 noundef 5) #37, !dbg !2864
  %91 = load ptr, ptr %4, align 8, !dbg !2864, !tbaa !760
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2864
  %93 = load ptr, ptr %92, align 8, !dbg !2864, !tbaa !760
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2864
  %95 = load ptr, ptr %94, align 8, !dbg !2864, !tbaa !760
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2864
  %97 = load ptr, ptr %96, align 8, !dbg !2864, !tbaa !760
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2864
  %99 = load ptr, ptr %98, align 8, !dbg !2864, !tbaa !760
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2864
  %101 = load ptr, ptr %100, align 8, !dbg !2864, !tbaa !760
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2864
  %103 = load ptr, ptr %102, align 8, !dbg !2864, !tbaa !760
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2864
  %105 = load ptr, ptr %104, align 8, !dbg !2864, !tbaa !760
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2864
  br label %147, !dbg !2865

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.15.90, i32 noundef 5) #37, !dbg !2866
  %109 = load ptr, ptr %4, align 8, !dbg !2866, !tbaa !760
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2866
  %111 = load ptr, ptr %110, align 8, !dbg !2866, !tbaa !760
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2866
  %113 = load ptr, ptr %112, align 8, !dbg !2866, !tbaa !760
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2866
  %115 = load ptr, ptr %114, align 8, !dbg !2866, !tbaa !760
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2866
  %117 = load ptr, ptr %116, align 8, !dbg !2866, !tbaa !760
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2866
  %119 = load ptr, ptr %118, align 8, !dbg !2866, !tbaa !760
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2866
  %121 = load ptr, ptr %120, align 8, !dbg !2866, !tbaa !760
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2866
  %123 = load ptr, ptr %122, align 8, !dbg !2866, !tbaa !760
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2866
  %125 = load ptr, ptr %124, align 8, !dbg !2866, !tbaa !760
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2866
  br label %147, !dbg !2867

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.16.91, i32 noundef 5) #37, !dbg !2868
  %129 = load ptr, ptr %4, align 8, !dbg !2868, !tbaa !760
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2868
  %131 = load ptr, ptr %130, align 8, !dbg !2868, !tbaa !760
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2868
  %133 = load ptr, ptr %132, align 8, !dbg !2868, !tbaa !760
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2868
  %135 = load ptr, ptr %134, align 8, !dbg !2868, !tbaa !760
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2868
  %137 = load ptr, ptr %136, align 8, !dbg !2868, !tbaa !760
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2868
  %139 = load ptr, ptr %138, align 8, !dbg !2868, !tbaa !760
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2868
  %141 = load ptr, ptr %140, align 8, !dbg !2868, !tbaa !760
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2868
  %143 = load ptr, ptr %142, align 8, !dbg !2868, !tbaa !760
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2868
  %145 = load ptr, ptr %144, align 8, !dbg !2868, !tbaa !760
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2868
  br label %147, !dbg !2869

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2871 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2875, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2876, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2877, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2878, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2879, metadata !DIExpression()), !dbg !2881
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2880, metadata !DIExpression()), !dbg !2881
  br label %6, !dbg !2882

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2884
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2880, metadata !DIExpression()), !dbg !2881
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2885
  %9 = load ptr, ptr %8, align 8, !dbg !2885, !tbaa !760
  %10 = icmp eq ptr %9, null, !dbg !2887
  %11 = add i64 %7, 1, !dbg !2888
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2880, metadata !DIExpression()), !dbg !2881
  br i1 %10, label %12, label %6, !dbg !2887, !llvm.loop !2889

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2884
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2891
  ret void, !dbg !2892
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2893 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2915
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2913, metadata !DIExpression(), metadata !2915, metadata ptr %6, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2907, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2908, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2909, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2910, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2911, metadata !DIExpression(DW_OP_deref)), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2917
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2916
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2912, metadata !DIExpression()), !dbg !2916
  %10 = icmp sgt i32 %9, -1, !dbg !2918
  br i1 %10, label %18, label %11, !dbg !2918

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2918
  store i32 %12, ptr %7, align 8, !dbg !2918
  %13 = icmp ult i32 %9, -7, !dbg !2918
  br i1 %13, label %14, label %18, !dbg !2918

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2918
  %16 = sext i32 %9 to i64, !dbg !2918
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2918
  br label %22, !dbg !2918

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2918
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2918
  store ptr %21, ptr %4, align 8, !dbg !2918
  br label %22, !dbg !2918

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2918
  %25 = load ptr, ptr %24, align 8, !dbg !2918
  store ptr %25, ptr %6, align 8, !dbg !2921, !tbaa !760
  %26 = icmp eq ptr %25, null, !dbg !2922
  br i1 %26, label %197, label %27, !dbg !2923

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2912, metadata !DIExpression()), !dbg !2916
  %28 = icmp sgt i32 %23, -1, !dbg !2918
  br i1 %28, label %36, label %29, !dbg !2918

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2918
  store i32 %30, ptr %7, align 8, !dbg !2918
  %31 = icmp ult i32 %23, -7, !dbg !2918
  br i1 %31, label %32, label %36, !dbg !2918

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2918
  %34 = sext i32 %23 to i64, !dbg !2918
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2918
  br label %40, !dbg !2918

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2918
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2918
  store ptr %39, ptr %4, align 8, !dbg !2918
  br label %40, !dbg !2918

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2918
  %43 = load ptr, ptr %42, align 8, !dbg !2918
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2924
  store ptr %43, ptr %44, align 8, !dbg !2921, !tbaa !760
  %45 = icmp eq ptr %43, null, !dbg !2922
  br i1 %45, label %197, label %46, !dbg !2923

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2912, metadata !DIExpression()), !dbg !2916
  %47 = icmp sgt i32 %41, -1, !dbg !2918
  br i1 %47, label %55, label %48, !dbg !2918

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2918
  store i32 %49, ptr %7, align 8, !dbg !2918
  %50 = icmp ult i32 %41, -7, !dbg !2918
  br i1 %50, label %51, label %55, !dbg !2918

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2918
  %53 = sext i32 %41 to i64, !dbg !2918
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2918
  br label %59, !dbg !2918

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2918
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2918
  store ptr %58, ptr %4, align 8, !dbg !2918
  br label %59, !dbg !2918

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2918
  %62 = load ptr, ptr %61, align 8, !dbg !2918
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2924
  store ptr %62, ptr %63, align 8, !dbg !2921, !tbaa !760
  %64 = icmp eq ptr %62, null, !dbg !2922
  br i1 %64, label %197, label %65, !dbg !2923

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2912, metadata !DIExpression()), !dbg !2916
  %66 = icmp sgt i32 %60, -1, !dbg !2918
  br i1 %66, label %74, label %67, !dbg !2918

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2918
  store i32 %68, ptr %7, align 8, !dbg !2918
  %69 = icmp ult i32 %60, -7, !dbg !2918
  br i1 %69, label %70, label %74, !dbg !2918

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2918
  %72 = sext i32 %60 to i64, !dbg !2918
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2918
  br label %78, !dbg !2918

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2918
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2918
  store ptr %77, ptr %4, align 8, !dbg !2918
  br label %78, !dbg !2918

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2918
  %81 = load ptr, ptr %80, align 8, !dbg !2918
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2924
  store ptr %81, ptr %82, align 8, !dbg !2921, !tbaa !760
  %83 = icmp eq ptr %81, null, !dbg !2922
  br i1 %83, label %197, label %84, !dbg !2923

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2912, metadata !DIExpression()), !dbg !2916
  %85 = icmp sgt i32 %79, -1, !dbg !2918
  br i1 %85, label %93, label %86, !dbg !2918

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2918
  store i32 %87, ptr %7, align 8, !dbg !2918
  %88 = icmp ult i32 %79, -7, !dbg !2918
  br i1 %88, label %89, label %93, !dbg !2918

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2918
  %91 = sext i32 %79 to i64, !dbg !2918
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2918
  br label %97, !dbg !2918

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2918
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2918
  store ptr %96, ptr %4, align 8, !dbg !2918
  br label %97, !dbg !2918

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2918
  %100 = load ptr, ptr %99, align 8, !dbg !2918
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2924
  store ptr %100, ptr %101, align 8, !dbg !2921, !tbaa !760
  %102 = icmp eq ptr %100, null, !dbg !2922
  br i1 %102, label %197, label %103, !dbg !2923

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2912, metadata !DIExpression()), !dbg !2916
  %104 = icmp sgt i32 %98, -1, !dbg !2918
  br i1 %104, label %112, label %105, !dbg !2918

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2918
  store i32 %106, ptr %7, align 8, !dbg !2918
  %107 = icmp ult i32 %98, -7, !dbg !2918
  br i1 %107, label %108, label %112, !dbg !2918

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2918
  %110 = sext i32 %98 to i64, !dbg !2918
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2918
  br label %116, !dbg !2918

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2918
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2918
  store ptr %115, ptr %4, align 8, !dbg !2918
  br label %116, !dbg !2918

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2918
  %119 = load ptr, ptr %118, align 8, !dbg !2918
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2924
  store ptr %119, ptr %120, align 8, !dbg !2921, !tbaa !760
  %121 = icmp eq ptr %119, null, !dbg !2922
  br i1 %121, label %197, label %122, !dbg !2923

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2912, metadata !DIExpression()), !dbg !2916
  %123 = icmp sgt i32 %117, -1, !dbg !2918
  br i1 %123, label %131, label %124, !dbg !2918

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2918
  store i32 %125, ptr %7, align 8, !dbg !2918
  %126 = icmp ult i32 %117, -7, !dbg !2918
  br i1 %126, label %127, label %131, !dbg !2918

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2918
  %129 = sext i32 %117 to i64, !dbg !2918
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2918
  br label %135, !dbg !2918

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2918
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2918
  store ptr %134, ptr %4, align 8, !dbg !2918
  br label %135, !dbg !2918

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2918
  %138 = load ptr, ptr %137, align 8, !dbg !2918
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2924
  store ptr %138, ptr %139, align 8, !dbg !2921, !tbaa !760
  %140 = icmp eq ptr %138, null, !dbg !2922
  br i1 %140, label %197, label %141, !dbg !2923

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2912, metadata !DIExpression()), !dbg !2916
  %142 = icmp sgt i32 %136, -1, !dbg !2918
  br i1 %142, label %150, label %143, !dbg !2918

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2918
  store i32 %144, ptr %7, align 8, !dbg !2918
  %145 = icmp ult i32 %136, -7, !dbg !2918
  br i1 %145, label %146, label %150, !dbg !2918

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2918
  %148 = sext i32 %136 to i64, !dbg !2918
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2918
  br label %154, !dbg !2918

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2918
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2918
  store ptr %153, ptr %4, align 8, !dbg !2918
  br label %154, !dbg !2918

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2918
  %157 = load ptr, ptr %156, align 8, !dbg !2918
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2924
  store ptr %157, ptr %158, align 8, !dbg !2921, !tbaa !760
  %159 = icmp eq ptr %157, null, !dbg !2922
  br i1 %159, label %197, label %160, !dbg !2923

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2912, metadata !DIExpression()), !dbg !2916
  %161 = icmp sgt i32 %155, -1, !dbg !2918
  br i1 %161, label %169, label %162, !dbg !2918

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2918
  store i32 %163, ptr %7, align 8, !dbg !2918
  %164 = icmp ult i32 %155, -7, !dbg !2918
  br i1 %164, label %165, label %169, !dbg !2918

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2918
  %167 = sext i32 %155 to i64, !dbg !2918
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2918
  br label %173, !dbg !2918

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2918
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2918
  store ptr %172, ptr %4, align 8, !dbg !2918
  br label %173, !dbg !2918

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2918
  %176 = load ptr, ptr %175, align 8, !dbg !2918
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2924
  store ptr %176, ptr %177, align 8, !dbg !2921, !tbaa !760
  %178 = icmp eq ptr %176, null, !dbg !2922
  br i1 %178, label %197, label %179, !dbg !2923

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2912, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2912, metadata !DIExpression()), !dbg !2916
  %180 = icmp sgt i32 %174, -1, !dbg !2918
  br i1 %180, label %188, label %181, !dbg !2918

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2918
  store i32 %182, ptr %7, align 8, !dbg !2918
  %183 = icmp ult i32 %174, -7, !dbg !2918
  br i1 %183, label %184, label %188, !dbg !2918

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2918
  %186 = sext i32 %174 to i64, !dbg !2918
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2918
  br label %191, !dbg !2918

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2918
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2918
  store ptr %190, ptr %4, align 8, !dbg !2918
  br label %191, !dbg !2918

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2918
  %193 = load ptr, ptr %192, align 8, !dbg !2918
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2924
  store ptr %193, ptr %194, align 8, !dbg !2921, !tbaa !760
  %195 = icmp eq ptr %193, null, !dbg !2922
  %196 = select i1 %195, i64 9, i64 10, !dbg !2923
  br label %197, !dbg !2923

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2925
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2926
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2927
  ret void, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2928 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2936, metadata !DIExpression(), metadata !2937, metadata ptr %5, metadata !DIExpression()), !dbg !2938
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2934, metadata !DIExpression()), !dbg !2938
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2939
  call void @llvm.va_start(ptr nonnull %5), !dbg !2940
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2941, !tbaa.struct !1087
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2941
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2941
  call void @llvm.va_end(ptr nonnull %5), !dbg !2942
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2943
  ret void, !dbg !2943
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2944 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2945, !tbaa !760
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %1), !dbg !2945
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.17.96, i32 noundef 5) #37, !dbg !2946
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.97) #37, !dbg !2946
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2947
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.98) #37, !dbg !2947
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2948
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2948
  ret void, !dbg !2949
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2955, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2956, metadata !DIExpression()), !dbg !2958
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !2964
  call void @llvm.dbg.value(metadata i64 %2, metadata !2963, metadata !DIExpression()), !dbg !2964
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2966
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !2972
  %5 = icmp eq ptr %4, null, !dbg !2974
  br i1 %5, label %6, label %7, !dbg !2976

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2977
  unreachable, !dbg !2977

7:                                                ; preds = %3
  ret ptr %4, !dbg !2978
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2960 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !2979
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2963, metadata !DIExpression()), !dbg !2979
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2980
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !2981
  %5 = icmp eq ptr %4, null, !dbg !2983
  br i1 %5, label %6, label %7, !dbg !2984

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2985
  unreachable, !dbg !2985

7:                                                ; preds = %3
  ret ptr %4, !dbg !2986
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2987 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()), !dbg !2992
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %2, metadata !2967, metadata !DIExpression()), !dbg !2994
  %3 = icmp eq ptr %2, null, !dbg !2996
  br i1 %3, label %4, label %5, !dbg !2997

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2998
  unreachable, !dbg !2998

5:                                                ; preds = %1
  ret ptr %2, !dbg !2999
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3000 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3001 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3011
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3013
  call void @llvm.dbg.value(metadata ptr %2, metadata !2967, metadata !DIExpression()), !dbg !3014
  %3 = icmp eq ptr %2, null, !dbg !3016
  br i1 %3, label %4, label %5, !dbg !3017

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3018
  unreachable, !dbg !3018

5:                                                ; preds = %1
  ret ptr %2, !dbg !3019
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3020 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %0, metadata !2991, metadata !DIExpression()), !dbg !3026
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3028
  call void @llvm.dbg.value(metadata ptr %2, metadata !2967, metadata !DIExpression()), !dbg !3029
  %3 = icmp eq ptr %2, null, !dbg !3031
  br i1 %3, label %4, label %5, !dbg !3032

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3033
  unreachable, !dbg !3033

5:                                                ; preds = %1
  ret ptr %2, !dbg !3034
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3039, metadata !DIExpression()), !dbg !3041
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3040, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !3046, metadata !DIExpression()), !dbg !3047
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3049
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3050
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !3051
  %5 = icmp eq ptr %4, null, !dbg !3053
  br i1 %5, label %6, label %7, !dbg !3054

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3055
  unreachable, !dbg !3055

7:                                                ; preds = %2
  ret ptr %4, !dbg !3056
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3057 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3058 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3062, metadata !DIExpression()), !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3046, metadata !DIExpression()), !dbg !3071
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3073
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3074
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !3075
  %5 = icmp eq ptr %4, null, !dbg !3077
  br i1 %5, label %6, label %7, !dbg !3078

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3079
  unreachable, !dbg !3079

7:                                                ; preds = %2
  ret ptr %4, !dbg !3080
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3081 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3085, metadata !DIExpression()), !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3086, metadata !DIExpression()), !dbg !3088
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata ptr %0, metadata !3089, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64 %2, metadata !3093, metadata !DIExpression()), !dbg !3094
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3096
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !3097
  %5 = icmp eq ptr %4, null, !dbg !3099
  br i1 %5, label %6, label %7, !dbg !3100

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3101
  unreachable, !dbg !3101

7:                                                ; preds = %3
  ret ptr %4, !dbg !3102
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3103 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3107, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3108, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.value(metadata ptr null, metadata !2959, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !3110
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %3, metadata !2967, metadata !DIExpression()), !dbg !3113
  %4 = icmp eq ptr %3, null, !dbg !3115
  br i1 %4, label %5, label %6, !dbg !3116

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3117
  unreachable, !dbg !3117

6:                                                ; preds = %2
  ret ptr %3, !dbg !3118
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3119 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3123, metadata !DIExpression()), !dbg !3125
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata ptr null, metadata !3085, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %0, metadata !3086, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3126
  call void @llvm.dbg.value(metadata ptr null, metadata !3089, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %0, metadata !3092, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i64 %1, metadata !3093, metadata !DIExpression()), !dbg !3128
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3130
  call void @llvm.dbg.value(metadata ptr %3, metadata !2967, metadata !DIExpression()), !dbg !3131
  %4 = icmp eq ptr %3, null, !dbg !3133
  br i1 %4, label %5, label %6, !dbg !3134

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3135
  unreachable, !dbg !3135

6:                                                ; preds = %2
  ret ptr %3, !dbg !3136
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3137 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3141, metadata !DIExpression()), !dbg !3143
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %1, metadata !697, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 1, metadata !698, metadata !DIExpression()), !dbg !3144
  %3 = load i64, ptr %1, align 8, !dbg !3146, !tbaa !2211
  call void @llvm.dbg.value(metadata i64 %3, metadata !699, metadata !DIExpression()), !dbg !3144
  %4 = icmp eq ptr %0, null, !dbg !3147
  br i1 %4, label %5, label %8, !dbg !3149

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3150
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3153
  br label %15, !dbg !3153

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3154
  %10 = add nuw i64 %9, 1, !dbg !3154
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3154
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3154
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %13, metadata !699, metadata !DIExpression()), !dbg !3144
  br i1 %12, label %14, label %15, !dbg !3157

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3158
  unreachable, !dbg !3158

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3144
  call void @llvm.dbg.value(metadata i64 %16, metadata !699, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %16, metadata !2962, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i64 1, metadata !2963, metadata !DIExpression()), !dbg !3159
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3161
  call void @llvm.dbg.value(metadata ptr %17, metadata !2967, metadata !DIExpression()), !dbg !3162
  %18 = icmp eq ptr %17, null, !dbg !3164
  br i1 %18, label %19, label %20, !dbg !3165

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3166
  unreachable, !dbg !3166

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !696, metadata !DIExpression()), !dbg !3144
  store i64 %16, ptr %1, align 8, !dbg !3167, !tbaa !2211
  ret ptr %17, !dbg !3168
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !691 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !696, metadata !DIExpression()), !dbg !3169
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !697, metadata !DIExpression()), !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !698, metadata !DIExpression()), !dbg !3169
  %4 = load i64, ptr %1, align 8, !dbg !3170, !tbaa !2211
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !699, metadata !DIExpression()), !dbg !3169
  %5 = icmp eq ptr %0, null, !dbg !3171
  br i1 %5, label %6, label %13, !dbg !3172

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3173
  br i1 %7, label %8, label %20, !dbg !3174

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !699, metadata !DIExpression()), !dbg !3169
  %10 = icmp ugt i64 %2, 128, !dbg !3177
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !699, metadata !DIExpression()), !dbg !3169
  br label %20, !dbg !3179

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3180
  %15 = add nuw i64 %14, 1, !dbg !3180
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3180
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3180
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !699, metadata !DIExpression()), !dbg !3169
  br i1 %17, label %19, label %20, !dbg !3181

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3182
  unreachable, !dbg !3182

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3169
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !699, metadata !DIExpression()), !dbg !3169
  call void @llvm.dbg.value(metadata ptr %0, metadata !2959, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %21, metadata !2962, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata i64 %2, metadata !2963, metadata !DIExpression()), !dbg !3183
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3185
  call void @llvm.dbg.value(metadata ptr %22, metadata !2967, metadata !DIExpression()), !dbg !3186
  %23 = icmp eq ptr %22, null, !dbg !3188
  br i1 %23, label %24, label %25, !dbg !3189

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3190
  unreachable, !dbg !3190

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !696, metadata !DIExpression()), !dbg !3169
  store i64 %21, ptr %1, align 8, !dbg !3191, !tbaa !2211
  ret ptr %22, !dbg !3192
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !703 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !712, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !713, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !714, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !715, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !716, metadata !DIExpression()), !dbg !3193
  %6 = load i64, ptr %1, align 8, !dbg !3194, !tbaa !2211
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !717, metadata !DIExpression()), !dbg !3193
  %7 = ashr i64 %6, 1, !dbg !3195
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3195
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3195
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !718, metadata !DIExpression()), !dbg !3193
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !718, metadata !DIExpression()), !dbg !3193
  %12 = icmp sgt i64 %3, -1, !dbg !3198
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3200
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !718, metadata !DIExpression()), !dbg !3193
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3201
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3201
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !719, metadata !DIExpression()), !dbg !3193
  %18 = icmp slt i64 %17, 128, !dbg !3201
  %19 = select i1 %18, i64 128, i64 0, !dbg !3201
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !720, metadata !DIExpression()), !dbg !3193
  %21 = icmp eq i64 %20, 0, !dbg !3202
  br i1 %21, label %28, label %22, !dbg !3204

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !718, metadata !DIExpression()), !dbg !3193
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !719, metadata !DIExpression()), !dbg !3193
  br label %28, !dbg !3208

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3193
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !719, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !718, metadata !DIExpression()), !dbg !3193
  %31 = icmp eq ptr %0, null, !dbg !3209
  br i1 %31, label %32, label %33, !dbg !3211

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3212, !tbaa !2211
  br label %33, !dbg !3213

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3214
  %35 = icmp slt i64 %34, %2, !dbg !3216
  br i1 %35, label %36, label %48, !dbg !3217

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3218
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3218
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !718, metadata !DIExpression()), !dbg !3193
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3219
  br i1 %42, label %47, label %43, !dbg !3219

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3220
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3220
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !719, metadata !DIExpression()), !dbg !3193
  br i1 %45, label %47, label %48, !dbg !3221

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3222
  unreachable, !dbg !3222

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3193
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !719, metadata !DIExpression()), !dbg !3193
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !718, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata ptr %0, metadata !3039, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %50, metadata !3040, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i64 %50, metadata !3046, metadata !DIExpression()), !dbg !3225
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3227
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3228
  call void @llvm.dbg.value(metadata ptr %52, metadata !2967, metadata !DIExpression()), !dbg !3229
  %53 = icmp eq ptr %52, null, !dbg !3231
  br i1 %53, label %54, label %55, !dbg !3232

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3233
  unreachable, !dbg !3233

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !712, metadata !DIExpression()), !dbg !3193
  store i64 %49, ptr %1, align 8, !dbg !3234, !tbaa !2211
  ret ptr %52, !dbg !3235
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3236 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 1, metadata !3243, metadata !DIExpression()), !dbg !3244
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %2, metadata !2967, metadata !DIExpression()), !dbg !3247
  %3 = icmp eq ptr %2, null, !dbg !3249
  br i1 %3, label %4, label %5, !dbg !3250

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3251
  unreachable, !dbg !3251

5:                                                ; preds = %1
  ret ptr %2, !dbg !3252
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3253 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3241 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3254
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3254
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3255
  call void @llvm.dbg.value(metadata ptr %3, metadata !2967, metadata !DIExpression()), !dbg !3256
  %4 = icmp eq ptr %3, null, !dbg !3258
  br i1 %4, label %5, label %6, !dbg !3259

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3260
  unreachable, !dbg !3260

6:                                                ; preds = %2
  ret ptr %3, !dbg !3261
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3262 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3264, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 1, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 1, metadata !3275, metadata !DIExpression()), !dbg !3276
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3278
  call void @llvm.dbg.value(metadata ptr %2, metadata !2967, metadata !DIExpression()), !dbg !3279
  %3 = icmp eq ptr %2, null, !dbg !3281
  br i1 %3, label %4, label %5, !dbg !3282

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3283
  unreachable, !dbg !3283

5:                                                ; preds = %1
  ret ptr %2, !dbg !3284
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3269, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3275, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %0, metadata !3272, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3275, metadata !DIExpression()), !dbg !3286
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3288
  call void @llvm.dbg.value(metadata ptr %3, metadata !2967, metadata !DIExpression()), !dbg !3289
  %4 = icmp eq ptr %3, null, !dbg !3291
  br i1 %4, label %5, label %6, !dbg !3292

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3293
  unreachable, !dbg !3293

6:                                                ; preds = %2
  ret ptr %3, !dbg !3294
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3295 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !2991, metadata !DIExpression()), !dbg !3302
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3304
  call void @llvm.dbg.value(metadata ptr %3, metadata !2967, metadata !DIExpression()), !dbg !3305
  %4 = icmp eq ptr %3, null, !dbg !3307
  br i1 %4, label %5, label %6, !dbg !3308

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3309
  unreachable, !dbg !3309

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3310, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3320
  ret ptr %3, !dbg !3321
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3322 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3326, metadata !DIExpression()), !dbg !3328
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3005, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3007, metadata !DIExpression()), !dbg !3331
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3333
  call void @llvm.dbg.value(metadata ptr %3, metadata !2967, metadata !DIExpression()), !dbg !3334
  %4 = icmp eq ptr %3, null, !dbg !3336
  br i1 %4, label %5, label %6, !dbg !3337

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3338
  unreachable, !dbg !3338

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3310, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3339
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3341
  ret ptr %3, !dbg !3342
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3343 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  %3 = add nsw i64 %1, 1, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %3, metadata !3005, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %3, metadata !3007, metadata !DIExpression()), !dbg !3354
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3356
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !3357
  %5 = icmp eq ptr %4, null, !dbg !3359
  br i1 %5, label %6, label %7, !dbg !3360

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3361
  unreachable, !dbg !3361

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3349, metadata !DIExpression()), !dbg !3350
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3362
  store i8 0, ptr %8, align 1, !dbg !3363, !tbaa !829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3310, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3364
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3366
  ret ptr %4, !dbg !3367
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3368 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3370, metadata !DIExpression()), !dbg !3371
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3372
  %3 = add i64 %2, 1, !dbg !3373
  call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3300, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !2991, metadata !DIExpression()), !dbg !3376
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3378
  call void @llvm.dbg.value(metadata ptr %4, metadata !2967, metadata !DIExpression()), !dbg !3379
  %5 = icmp eq ptr %4, null, !dbg !3381
  br i1 %5, label %6, label %7, !dbg !3382

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3383
  unreachable, !dbg !3383

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3310, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %3, metadata !3317, metadata !DIExpression()), !dbg !3384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3386
  ret ptr %4, !dbg !3387
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3388 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3393, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()), !dbg !3394
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #37, !dbg !3393
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #37, !dbg !3393
  %3 = icmp eq i32 %1, 0, !dbg !3393
  tail call void @llvm.assume(i1 %3), !dbg !3393
  tail call void @abort() #39, !dbg !3395
  unreachable, !dbg !3395
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3396 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3439
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3435, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3439
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3441, metadata !DIExpression()), !dbg !3444
  %3 = load i32, ptr %0, align 8, !dbg !3446, !tbaa !3447
  %4 = and i32 %3, 32, !dbg !3448
  %5 = icmp eq i32 %4, 0, !dbg !3448
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3437, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3439
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3449
  %7 = icmp eq i32 %6, 0, !dbg !3450
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3438, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3439
  br i1 %5, label %8, label %18, !dbg !3451

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3453
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3435, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3439
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3454
  %11 = xor i1 %7, true, !dbg !3454
  %12 = sext i1 %11 to i32, !dbg !3454
  br i1 %10, label %21, label %13, !dbg !3454

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3455
  %15 = load i32, ptr %14, align 4, !dbg !3455, !tbaa !820
  %16 = icmp ne i32 %15, 9, !dbg !3456
  %17 = sext i1 %16 to i32, !dbg !3457
  br label %21, !dbg !3457

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3458

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3460
  store i32 0, ptr %20, align 4, !dbg !3462, !tbaa !820
  br label %21, !dbg !3460

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3439
  ret i32 %22, !dbg !3463
}

; Function Attrs: nounwind
declare !dbg !3464 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3468 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3506, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3507, metadata !DIExpression()), !dbg !3510
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3511
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3508, metadata !DIExpression()), !dbg !3510
  %3 = icmp slt i32 %2, 0, !dbg !3512
  br i1 %3, label %4, label %6, !dbg !3514

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3515
  br label %24, !dbg !3516

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3517
  %8 = icmp eq i32 %7, 0, !dbg !3517
  br i1 %8, label %13, label %9, !dbg !3519

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3520
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3521
  %12 = icmp eq i64 %11, -1, !dbg !3522
  br i1 %12, label %16, label %13, !dbg !3523

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3524
  %15 = icmp eq i32 %14, 0, !dbg !3524
  br i1 %15, label %16, label %18, !dbg !3525

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3507, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3509, metadata !DIExpression()), !dbg !3510
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3509, metadata !DIExpression()), !dbg !3510
  br label %24, !dbg !3527

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3528
  %20 = load i32, ptr %19, align 4, !dbg !3528, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3507, metadata !DIExpression()), !dbg !3510
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3509, metadata !DIExpression()), !dbg !3510
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3509, metadata !DIExpression()), !dbg !3510
  %22 = icmp eq i32 %20, 0, !dbg !3529
  br i1 %22, label %24, label %23, !dbg !3527

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3531, !tbaa !820
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3509, metadata !DIExpression()), !dbg !3510
  br label %24, !dbg !3533

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3510
  ret i32 %25, !dbg !3534
}

; Function Attrs: nofree nounwind
declare !dbg !3535 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3536 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3537 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3538 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3541 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3579, metadata !DIExpression()), !dbg !3580
  %2 = icmp eq ptr %0, null, !dbg !3581
  br i1 %2, label %6, label %3, !dbg !3583

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3584
  %5 = icmp eq i32 %4, 0, !dbg !3584
  br i1 %5, label %6, label %8, !dbg !3585

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3586
  br label %16, !dbg !3587

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3588, metadata !DIExpression()), !dbg !3593
  %9 = load i32, ptr %0, align 8, !dbg !3595, !tbaa !3447
  %10 = and i32 %9, 256, !dbg !3597
  %11 = icmp eq i32 %10, 0, !dbg !3597
  br i1 %11, label %14, label %12, !dbg !3598

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3599
  br label %14, !dbg !3599

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3600
  br label %16, !dbg !3601

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3580
  ret i32 %17, !dbg !3602
}

; Function Attrs: nofree nounwind
declare !dbg !3603 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3604 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3643, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3644, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3645, metadata !DIExpression()), !dbg !3649
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3650
  %5 = load ptr, ptr %4, align 8, !dbg !3650, !tbaa !3651
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3652
  %7 = load ptr, ptr %6, align 8, !dbg !3652, !tbaa !3653
  %8 = icmp eq ptr %5, %7, !dbg !3654
  br i1 %8, label %9, label %27, !dbg !3655

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3656
  %11 = load ptr, ptr %10, align 8, !dbg !3656, !tbaa !1200
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3657
  %13 = load ptr, ptr %12, align 8, !dbg !3657, !tbaa !3658
  %14 = icmp eq ptr %11, %13, !dbg !3659
  br i1 %14, label %15, label %27, !dbg !3660

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3661
  %17 = load ptr, ptr %16, align 8, !dbg !3661, !tbaa !3662
  %18 = icmp eq ptr %17, null, !dbg !3663
  br i1 %18, label %19, label %27, !dbg !3664

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3665
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3666
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3646, metadata !DIExpression()), !dbg !3667
  %22 = icmp eq i64 %21, -1, !dbg !3668
  br i1 %22, label %29, label %23, !dbg !3670

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3671, !tbaa !3447
  %25 = and i32 %24, -17, !dbg !3671
  store i32 %25, ptr %0, align 8, !dbg !3671, !tbaa !3447
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3672
  store i64 %21, ptr %26, align 8, !dbg !3673, !tbaa !3674
  br label %29, !dbg !3675

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3676
  br label %29, !dbg !3677

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3649
  ret i32 %30, !dbg !3678
}

; Function Attrs: nofree nounwind
declare !dbg !3679 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3682 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3687, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3688, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3689, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3690, metadata !DIExpression()), !dbg !3692
  %5 = icmp eq ptr %1, null, !dbg !3693
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3695
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3695
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3695
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3689, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3688, metadata !DIExpression()), !dbg !3692
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3687, metadata !DIExpression()), !dbg !3692
  %9 = icmp eq ptr %3, null, !dbg !3696
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3698
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3690, metadata !DIExpression()), !dbg !3692
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3699
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3691, metadata !DIExpression()), !dbg !3692
  %12 = icmp ult i64 %11, -3, !dbg !3700
  br i1 %12, label %13, label %17, !dbg !3702

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3703
  %15 = icmp eq i32 %14, 0, !dbg !3703
  br i1 %15, label %16, label %29, !dbg !3704

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3705, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata ptr %10, metadata !3712, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !3715, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i64 8, metadata !3716, metadata !DIExpression()), !dbg !3717
  store i64 0, ptr %10, align 1, !dbg !3719
  br label %29, !dbg !3720

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3721
  br i1 %18, label %19, label %20, !dbg !3723

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3724
  unreachable, !dbg !3724

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3725

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3727
  br i1 %23, label %29, label %24, !dbg !3728

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3729
  br i1 %25, label %29, label %26, !dbg !3732

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3733, !tbaa !829
  %28 = zext i8 %27 to i32, !dbg !3734
  store i32 %28, ptr %6, align 4, !dbg !3735, !tbaa !820
  br label %29, !dbg !3736

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3692
  ret i64 %30, !dbg !3737
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3738 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3744 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3746, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3747, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3748, metadata !DIExpression()), !dbg !3750
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3751
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3749, metadata !DIExpression()), !dbg !3750
  br i1 %5, label %6, label %8, !dbg !3753

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3754
  store i32 12, ptr %7, align 4, !dbg !3756, !tbaa !820
  br label %12, !dbg !3757

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3749, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.value(metadata ptr %0, metadata !3758, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.value(metadata i64 %9, metadata !3761, metadata !DIExpression()), !dbg !3762
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3764
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3765
  br label %12, !dbg !3766

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3750
  ret ptr %13, !dbg !3767
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3768 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3777
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3773, metadata !DIExpression(), metadata !3777, metadata ptr %2, metadata !DIExpression()), !dbg !3778
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3778
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3779
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3780
  %4 = icmp eq i32 %3, 0, !dbg !3780
  br i1 %4, label %5, label %12, !dbg !3782

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr @.str.127, metadata !3786, metadata !DIExpression()), !dbg !3787
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.127, i64 2), !dbg !3790
  %7 = icmp eq i32 %6, 0, !dbg !3791
  br i1 %7, label %11, label %8, !dbg !3792

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3783, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata ptr @.str.1.128, metadata !3786, metadata !DIExpression()), !dbg !3793
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.128, i64 6), !dbg !3795
  %10 = icmp eq i32 %9, 0, !dbg !3796
  br i1 %10, label %11, label %12, !dbg !3797

11:                                               ; preds = %8, %5
  br label %12, !dbg !3798

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3778
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3799
  ret i1 %13, !dbg !3799
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3800 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3804, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3805, metadata !DIExpression()), !dbg !3807
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()), !dbg !3807
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3808
  ret i32 %4, !dbg !3809
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3810 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3814, metadata !DIExpression()), !dbg !3815
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3816
  ret ptr %2, !dbg !3817
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3818 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3822
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3823
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3821, metadata !DIExpression()), !dbg !3822
  ret ptr %2, !dbg !3824
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3825 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3827, metadata !DIExpression()), !dbg !3834
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3828, metadata !DIExpression()), !dbg !3834
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3829, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.value(metadata i32 %0, metadata !3820, metadata !DIExpression()), !dbg !3835
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3837
  call void @llvm.dbg.value(metadata ptr %4, metadata !3821, metadata !DIExpression()), !dbg !3835
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3830, metadata !DIExpression()), !dbg !3834
  %5 = icmp eq ptr %4, null, !dbg !3838
  br i1 %5, label %6, label %9, !dbg !3839

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3840
  br i1 %7, label %19, label %8, !dbg !3843

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3844, !tbaa !829
  br label %19, !dbg !3845

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3846
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3831, metadata !DIExpression()), !dbg !3847
  %11 = icmp ult i64 %10, %2, !dbg !3848
  br i1 %11, label %12, label %14, !dbg !3850

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3851
  call void @llvm.dbg.value(metadata ptr %1, metadata !3853, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata ptr %4, metadata !3856, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %13, metadata !3857, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3860
  br label %19, !dbg !3861

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3862
  br i1 %15, label %19, label %16, !dbg !3865

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3866
  call void @llvm.dbg.value(metadata ptr %1, metadata !3853, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %4, metadata !3856, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %17, metadata !3857, metadata !DIExpression()), !dbg !3868
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3870
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3871
  store i8 0, ptr %18, align 1, !dbg !3872, !tbaa !829
  br label %19, !dbg !3873

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3874
  ret i32 %20, !dbg !3875
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

!llvm.dbg.cu = !{!74, !311, !315, !330, !645, !679, !389, !410, !424, !475, !681, !637, !687, !722, !724, !726, !728, !730, !661, !732, !734, !736, !738}
!llvm.ident = !{!740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740, !740}
!llvm.module.flags = !{!741, !742, !743, !744, !745, !746, !747, !748}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/unlink.c", directory: "/src", checksumkind: CSK_MD5, checksum: "db068e42b0dc801df6f06dd298eed8bd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 456, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 57)
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
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 14)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !49, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 72, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 16)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 78, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 17)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !61, isLocal: true, isDefinition: true)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !68, file: !69, line: 575, type: !108, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "oputs_", scope: !69, file: !69, line: 573, type: !70, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !227)
!69 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!70 = !DISubroutineType(cc: DW_CC_nocall, types: !71)
!71 = !{null, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/unlink.o -MD -MP -MF src/.deps/unlink.Tpo -c src/unlink.c -o src/.unlink.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !106, globals: !114, splitDebugInlining: false, nameTableKind: None)
!75 = !{!76, !91}
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !77, line: 42, baseType: !78, size: 32, elements: !79)
!77 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90}
!80 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!81 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!82 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!83 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!84 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!85 = !DIEnumerator(name: "c_quoting_style", value: 5)
!86 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!87 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!88 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!89 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!90 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !92, line: 46, baseType: !78, size: 32, elements: !93)
!92 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105}
!94 = !DIEnumerator(name: "_ISupper", value: 256)
!95 = !DIEnumerator(name: "_ISlower", value: 512)
!96 = !DIEnumerator(name: "_ISalpha", value: 1024)
!97 = !DIEnumerator(name: "_ISdigit", value: 2048)
!98 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!99 = !DIEnumerator(name: "_ISspace", value: 8192)
!100 = !DIEnumerator(name: "_ISprint", value: 16384)
!101 = !DIEnumerator(name: "_ISgraph", value: 32768)
!102 = !DIEnumerator(name: "_ISblank", value: 1)
!103 = !DIEnumerator(name: "_IScntrl", value: 2)
!104 = !DIEnumerator(name: "_ISpunct", value: 4)
!105 = !DIEnumerator(name: "_ISalnum", value: 8)
!106 = !{!72, !107, !108, !109, !110, !113}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 18, baseType: !112)
!111 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!114 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !64, !66, !115, !120, !122, !127, !132, !137, !139, !141, !146, !148, !150, !152, !154, !159, !161, !163, !165, !167, !169, !171, !173, !178, !183, !188, !190, !192, !194, !196, !198, !203, !205, !207, !212, !217, !222}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !69, line: 585, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 5)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !69, line: 586, type: !117, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !69, line: 595, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 4)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !69, line: 620, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 6)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 2)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !69, line: 648, type: !117, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !124, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !69, line: 649, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !69, line: 650, type: !117, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !129, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !69, line: 651, type: !129, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !69, line: 652, type: !19, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !69, line: 653, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 8)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !69, line: 654, type: !39, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !69, line: 655, type: !39, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !69, line: 656, type: !39, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !69, line: 657, type: !39, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !69, line: 663, type: !19, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !69, line: 664, type: !39, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !61, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !69, line: 669, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 40)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 15)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !69, line: 676, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 61)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !69, line: 679, type: !143, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !69, line: 683, type: !117, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !69, line: 688, type: !117, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !69, line: 691, type: !156, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !69, line: 839, type: !56, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !69, line: 840, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 22)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !69, line: 841, type: !180, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(scope: null, file: !69, line: 862, type: !124, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !69, line: 868, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 71)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !69, line: 875, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 27)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 51)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !69, line: 877, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 12)
!227 = !{!228, !229, !230, !233, !235, !236, !237, !241, !242, !243, !244, !246, !300, !301, !302, !304, !305}
!228 = !DILocalVariable(name: "program", arg: 1, scope: !68, file: !69, line: 573, type: !72)
!229 = !DILocalVariable(name: "option", arg: 2, scope: !68, file: !69, line: 573, type: !72)
!230 = !DILocalVariable(name: "term", scope: !231, file: !69, line: 585, type: !72)
!231 = distinct !DILexicalBlock(scope: !232, file: !69, line: 582, column: 5)
!232 = distinct !DILexicalBlock(scope: !68, file: !69, line: 581, column: 7)
!233 = !DILocalVariable(name: "double_space", scope: !68, file: !69, line: 594, type: !234)
!234 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!235 = !DILocalVariable(name: "first_word", scope: !68, file: !69, line: 595, type: !72)
!236 = !DILocalVariable(name: "option_text", scope: !68, file: !69, line: 596, type: !72)
!237 = !DILocalVariable(name: "s", scope: !238, file: !69, line: 608, type: !72)
!238 = distinct !DILexicalBlock(scope: !239, file: !69, line: 605, column: 5)
!239 = distinct !DILexicalBlock(scope: !240, file: !69, line: 604, column: 12)
!240 = distinct !DILexicalBlock(scope: !68, file: !69, line: 597, column: 7)
!241 = !DILocalVariable(name: "spaces", scope: !238, file: !69, line: 609, type: !110)
!242 = !DILocalVariable(name: "anchor_len", scope: !68, file: !69, line: 620, type: !110)
!243 = !DILocalVariable(name: "desc_text", scope: !68, file: !69, line: 625, type: !72)
!244 = !DILocalVariable(name: "__ptr", scope: !245, file: !69, line: 644, type: !72)
!245 = distinct !DILexicalBlock(scope: !68, file: !69, line: 644, column: 3)
!246 = !DILocalVariable(name: "__stream", scope: !245, file: !69, line: 644, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !250)
!249 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !252)
!251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!252 = !{!253, !254, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !269, !271, !272, !273, !277, !278, !280, !281, !284, !286, !289, !292, !293, !294, !295, !296}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !250, file: !251, line: 51, baseType: !108, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !250, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !250, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !250, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !250, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !250, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !250, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !250, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !250, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !250, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !250, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !250, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !250, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !251, line: 36, flags: DIFlagFwdDecl)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !250, file: !251, line: 70, baseType: !270, size: 64, offset: 832)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !250, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !250, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !250, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !275, line: 152, baseType: !276)
!275 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!276 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !250, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !250, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!279 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !250, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !250, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !251, line: 43, baseType: null)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !250, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !275, line: 153, baseType: !276)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !250, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !251, line: 37, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !250, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !251, line: 38, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !250, file: !251, line: 93, baseType: !270, size: 64, offset: 1344)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !250, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !250, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !250, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !250, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 20)
!300 = !DILocalVariable(name: "__cnt", scope: !245, file: !69, line: 644, type: !110)
!301 = !DILocalVariable(name: "url_program", scope: !68, file: !69, line: 648, type: !72)
!302 = !DILocalVariable(name: "__ptr", scope: !303, file: !69, line: 686, type: !72)
!303 = distinct !DILexicalBlock(scope: !68, file: !69, line: 686, column: 3)
!304 = !DILocalVariable(name: "__stream", scope: !303, file: !69, line: 686, type: !247)
!305 = !DILocalVariable(name: "__cnt", scope: !303, file: !69, line: 686, type: !110)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !308, line: 3, type: !180, isLocal: true, isDefinition: true)
!308 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "Version", scope: !311, file: !308, line: 3, type: !72, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C11, file: !308, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !312, splitDebugInlining: false, nameTableKind: None)
!312 = !{!306, !309}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "file_name", scope: !315, file: !316, line: 45, type: !72, isLocal: true, isDefinition: true)
!315 = distinct !DICompileUnit(language: DW_LANG_C11, file: !316, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !317, splitDebugInlining: false, nameTableKind: None)
!316 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!317 = !{!318, !320, !322, !324, !313, !326}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !316, line: 121, type: !19, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !316, line: 121, type: !224, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !316, line: 123, type: !19, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !316, line: 126, type: !143, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !315, file: !316, line: 55, type: !234, isLocal: true, isDefinition: true)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !330, file: !331, line: 66, type: !381, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !331, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !332, globals: !333, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!332 = !{!107, !113}
!333 = !{!334, !336, !360, !362, !364, !366, !328, !368, !370, !372, !374, !379}
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !331, line: 272, type: !117, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "old_file_name", scope: !338, file: !331, line: 304, type: !72, isLocal: true, isDefinition: true)
!338 = distinct !DISubprogram(name: "verror_at_line", scope: !331, file: !331, line: 298, type: !339, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !353)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !108, !108, !72, !78, !72, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !343)
!342 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 12, baseType: !345)
!344 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !331, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !347)
!347 = !{!348, !349, !350, !351, !352}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !346, file: !331, baseType: !107, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !346, file: !331, baseType: !107, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !346, file: !331, baseType: !107, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !346, file: !331, baseType: !108, size: 32, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !346, file: !331, baseType: !108, size: 32, offset: 224)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DILocalVariable(name: "status", arg: 1, scope: !338, file: !331, line: 298, type: !108)
!355 = !DILocalVariable(name: "errnum", arg: 2, scope: !338, file: !331, line: 298, type: !108)
!356 = !DILocalVariable(name: "file_name", arg: 3, scope: !338, file: !331, line: 298, type: !72)
!357 = !DILocalVariable(name: "line_number", arg: 4, scope: !338, file: !331, line: 298, type: !78)
!358 = !DILocalVariable(name: "message", arg: 5, scope: !338, file: !331, line: 298, type: !72)
!359 = !DILocalVariable(name: "args", arg: 6, scope: !338, file: !331, line: 298, type: !341)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "old_line_number", scope: !338, file: !331, line: 305, type: !78, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !331, line: 338, type: !124, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !156, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !134, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "error_message_count", scope: !330, file: !331, line: 69, type: !78, isLocal: false, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !330, file: !331, line: 295, type: !108, isLocal: false, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !19, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 21)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !331, line: 214, type: !117, isLocal: true, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !386, line: 60, type: !134, isLocal: true, isDefinition: true)
!386 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "long_options", scope: !389, file: !386, line: 34, type: !398, isLocal: true, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C11, file: !386, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, globals: !391, splitDebugInlining: false, nameTableKind: None)
!390 = !{!107}
!391 = !{!384, !392, !394, !396, !387}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !386, line: 112, type: !34, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !386, line: 36, type: !117, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !386, line: 37, type: !156, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 768, elements: !144)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !401, line: 50, size: 256, elements: !402)
!401 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!402 = !{!403, !404, !405, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !401, line: 52, baseType: !72, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !400, file: !401, line: 55, baseType: !108, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !400, file: !401, line: 56, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !401, line: 57, baseType: !108, size: 32, offset: 192)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "program_name", scope: !410, file: !411, line: 31, type: !72, isLocal: false, isDefinition: true)
!410 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, globals: !413, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!412 = !{!107, !255}
!413 = !{!408, !414, !416}
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !411, line: 46, type: !156, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !411, line: 49, type: !124, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "utf07FF", scope: !420, file: !421, line: 46, type: !448, isLocal: true, isDefinition: true)
!420 = distinct !DISubprogram(name: "proper_name_lite", scope: !421, file: !421, line: 38, type: !422, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !426)
!421 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!422 = !DISubroutineType(types: !423)
!423 = !{!72, !72, !72}
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
!425 = !{!418}
!426 = !{!427, !428, !429, !430, !435}
!427 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !420, file: !421, line: 38, type: !72)
!428 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !420, file: !421, line: 38, type: !72)
!429 = !DILocalVariable(name: "translation", scope: !420, file: !421, line: 40, type: !72)
!430 = !DILocalVariable(name: "w", scope: !420, file: !421, line: 47, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !432, line: 37, baseType: !433)
!432 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !275, line: 57, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !275, line: 42, baseType: !78)
!435 = !DILocalVariable(name: "mbs", scope: !420, file: !421, line: 48, type: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !438)
!437 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !440)
!439 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !440, file: !439, line: 15, baseType: !108, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !440, file: !439, line: 20, baseType: !444, size: 32, offset: 32)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !439, line: 16, size: 32, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !444, file: !439, line: 18, baseType: !78, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !444, file: !439, line: 19, baseType: !124, size: 32)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !135)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !451, line: 78, type: !156, isLocal: true, isDefinition: true)
!451 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !451, line: 79, type: !129, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !451, line: 80, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 13)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !451, line: 81, type: !456, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !451, line: 82, type: !297, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !451, line: 83, type: !134, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !451, line: 84, type: !156, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !451, line: 85, type: !19, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !451, line: 86, type: !19, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !451, line: 87, type: !156, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !475, file: !451, line: 76, type: !549, isLocal: false, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !451, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !484, globals: !485, splitDebugInlining: false, nameTableKind: None)
!476 = !{!477, !479, !91}
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !478, line: 42, baseType: !78, size: 32, elements: !79)
!478 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !478, line: 254, baseType: !78, size: 32, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!482 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!483 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!484 = !{!107, !108, !109, !110}
!485 = !{!449, !452, !454, !459, !461, !463, !465, !467, !469, !471, !473, !486, !490, !500, !502, !507, !509, !511, !513, !515, !538, !545, !547}
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !475, file: !451, line: 92, type: !488, isLocal: false, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 320, elements: !40)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !475, file: !451, line: 1040, type: !492, isLocal: false, isDefinition: true)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !451, line: 56, size: 448, elements: !493)
!493 = !{!494, !495, !496, !498, !499}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !492, file: !451, line: 59, baseType: !477, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !451, line: 62, baseType: !108, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !492, file: !451, line: 66, baseType: !497, size: 256, offset: 64)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !157)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !492, file: !451, line: 69, baseType: !72, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !492, file: !451, line: 72, baseType: !72, size: 64, offset: 384)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !475, file: !451, line: 107, type: !492, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "slot0", scope: !475, file: !451, line: 831, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 256)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !451, line: 321, type: !134, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !451, line: 357, type: !134, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !451, line: 358, type: !134, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !451, line: 199, type: !19, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "quote", scope: !517, file: !451, line: 228, type: !536, isLocal: true, isDefinition: true)
!517 = distinct !DISubprogram(name: "gettext_quote", scope: !451, file: !451, line: 197, type: !518, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!72, !72, !477}
!520 = !{!521, !522, !523, !524, !525}
!521 = !DILocalVariable(name: "msgid", arg: 1, scope: !517, file: !451, line: 197, type: !72)
!522 = !DILocalVariable(name: "s", arg: 2, scope: !517, file: !451, line: 197, type: !477)
!523 = !DILocalVariable(name: "translation", scope: !517, file: !451, line: 199, type: !72)
!524 = !DILocalVariable(name: "w", scope: !517, file: !451, line: 229, type: !431)
!525 = !DILocalVariable(name: "mbs", scope: !517, file: !451, line: 230, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !528, file: !439, line: 15, baseType: !108, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !528, file: !439, line: 20, baseType: !532, size: 32, offset: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !439, line: 16, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !532, file: !439, line: 18, baseType: !78, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !532, file: !439, line: 19, baseType: !124, size: 32)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !537)
!537 = !{!136, !126}
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "slotvec", scope: !475, file: !451, line: 834, type: !540, isLocal: true, isDefinition: true)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !451, line: 823, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !541, file: !451, line: 825, baseType: !110, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !541, file: !451, line: 826, baseType: !255, size: 64, offset: 64)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "nslots", scope: !475, file: !451, line: 832, type: !108, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "slotvec0", scope: !475, file: !451, line: 833, type: !541, isLocal: true, isDefinition: true)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 704, elements: !551)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!551 = !{!552}
!552 = !DISubrange(count: 11)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !555, line: 67, type: !224, isLocal: true, isDefinition: true)
!555 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !555, line: 69, type: !19, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !555, line: 83, type: !19, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !555, line: 83, type: !124, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !555, line: 85, type: !134, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !555, line: 88, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 171)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !555, line: 88, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 34)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !555, line: 105, type: !56, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !555, line: 109, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 23)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !555, line: 113, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 28)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !555, line: 120, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 32)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !555, line: 127, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 36)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !555, line: 134, type: !175, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !555, line: 142, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 44)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !555, line: 150, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 48)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !555, line: 159, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 52)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !555, line: 170, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 60)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !555, line: 248, type: !297, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !555, line: 248, type: !200, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !555, line: 254, type: !297, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !555, line: 254, type: !49, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !555, line: 254, type: !175, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !555, line: 259, type: !3, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !555, line: 259, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 29)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !637, file: !638, line: 26, type: !640, isLocal: false, isDefinition: true)
!637 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !639, splitDebugInlining: false, nameTableKind: None)
!638 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!639 = !{!635}
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 47)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "exit_failure", scope: !645, file: !646, line: 24, type: !648, isLocal: false, isDefinition: true)
!645 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !647, splitDebugInlining: false, nameTableKind: None)
!646 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!647 = !{!643}
!648 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 34, type: !143, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !651, line: 34, type: !19, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !651, line: 34, type: !61, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !658, line: 108, type: !34, isLocal: true, isDefinition: true)
!658 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "internal_state", scope: !661, file: !658, line: 97, type: !664, isLocal: true, isDefinition: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !662, globals: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !{!107, !110, !113}
!663 = !{!656, !659}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !666, file: !439, line: 15, baseType: !108, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !666, file: !439, line: 20, baseType: !670, size: 32, offset: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !439, line: 16, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !670, file: !439, line: 18, baseType: !78, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !670, file: !439, line: 19, baseType: !124, size: 32)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !676, line: 35, type: !134, isLocal: true, isDefinition: true)
!676 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !676, line: 35, type: !129, isLocal: true, isDefinition: true)
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !555, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !390, globals: !686, splitDebugInlining: false, nameTableKind: None)
!682 = !{!683}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !555, line: 40, baseType: !78, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!686 = !{!553, !556, !558, !560, !562, !564, !569, !574, !576, !581, !586, !591, !596, !598, !603, !608, !613, !618, !620, !622, !624, !626, !628, !630}
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !689, retainedTypes: !721, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!689 = !{!690, !702}
!690 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !691, file: !688, line: 188, baseType: !78, size: 32, elements: !700)
!691 = distinct !DISubprogram(name: "x2nrealloc", scope: !688, file: !688, line: 176, type: !692, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !695)
!692 = !DISubroutineType(types: !693)
!693 = !{!107, !107, !694, !110}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!695 = !{!696, !697, !698, !699}
!696 = !DILocalVariable(name: "p", arg: 1, scope: !691, file: !688, line: 176, type: !107)
!697 = !DILocalVariable(name: "pn", arg: 2, scope: !691, file: !688, line: 176, type: !694)
!698 = !DILocalVariable(name: "s", arg: 3, scope: !691, file: !688, line: 176, type: !110)
!699 = !DILocalVariable(name: "n", scope: !691, file: !688, line: 178, type: !110)
!700 = !{!701}
!701 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!702 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !703, file: !688, line: 228, baseType: !78, size: 32, elements: !700)
!703 = distinct !DISubprogram(name: "xpalloc", scope: !688, file: !688, line: 223, type: !704, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !711)
!704 = !DISubroutineType(types: !705)
!705 = !{!107, !107, !706, !707, !709, !707}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !708, line: 130, baseType: !709)
!708 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !710, line: 18, baseType: !276)
!710 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720}
!712 = !DILocalVariable(name: "pa", arg: 1, scope: !703, file: !688, line: 223, type: !107)
!713 = !DILocalVariable(name: "pn", arg: 2, scope: !703, file: !688, line: 223, type: !706)
!714 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !703, file: !688, line: 223, type: !707)
!715 = !DILocalVariable(name: "n_max", arg: 4, scope: !703, file: !688, line: 223, type: !709)
!716 = !DILocalVariable(name: "s", arg: 5, scope: !703, file: !688, line: 223, type: !707)
!717 = !DILocalVariable(name: "n0", scope: !703, file: !688, line: 230, type: !707)
!718 = !DILocalVariable(name: "n", scope: !703, file: !688, line: 237, type: !707)
!719 = !DILocalVariable(name: "nbytes", scope: !703, file: !688, line: 248, type: !707)
!720 = !DILocalVariable(name: "adjusted_nbytes", scope: !703, file: !688, line: 252, type: !707)
!721 = !{!255, !107}
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !723, splitDebugInlining: false, nameTableKind: None)
!723 = !{!649, !652, !654}
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !735, splitDebugInlining: false, nameTableKind: None)
!735 = !{!674, !677}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !737, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!737 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!740 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!741 = !{i32 7, !"Dwarf Version", i32 5}
!742 = !{i32 2, !"Debug Info Version", i32 3}
!743 = !{i32 1, !"wchar_size", i32 4}
!744 = !{i32 8, !"PIC Level", i32 2}
!745 = !{i32 7, !"PIE Level", i32 2}
!746 = !{i32 7, !"uwtable", i32 2}
!747 = !{i32 7, !"frame-pointer", i32 1}
!748 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!749 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !750, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !108}
!752 = !{!753}
!753 = !DILocalVariable(name: "status", arg: 1, scope: !749, file: !2, line: 37, type: !108)
!754 = !DILocation(line: 0, scope: !749)
!755 = !DILocation(line: 39, column: 14, scope: !756)
!756 = distinct !DILexicalBlock(scope: !749, file: !2, line: 39, column: 7)
!757 = !DILocation(line: 39, column: 7, scope: !749)
!758 = !DILocation(line: 40, column: 5, scope: !759)
!759 = distinct !DILexicalBlock(scope: !756, file: !2, line: 40, column: 5)
!760 = !{!761, !761, i64 0}
!761 = !{!"any pointer", !762, i64 0}
!762 = !{!"omnipotent char", !763, i64 0}
!763 = !{!"Simple C/C++ TBAA"}
!764 = !DILocation(line: 43, column: 7, scope: !765)
!765 = distinct !DILexicalBlock(scope: !756, file: !2, line: 42, column: 5)
!766 = !DILocation(line: 46, column: 7, scope: !765)
!767 = !DILocation(line: 48, column: 7, scope: !765)
!768 = !DILocation(line: 49, column: 7, scope: !765)
!769 = !DILocalVariable(name: "program", arg: 1, scope: !770, file: !69, line: 836, type: !72)
!770 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !771, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !72}
!773 = !{!769, !774, !781, !782, !784, !785}
!774 = !DILocalVariable(name: "infomap", scope: !770, file: !69, line: 838, type: !775)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 896, elements: !20)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !770, file: !69, line: 838, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !777, file: !69, line: 838, baseType: !72, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !777, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!781 = !DILocalVariable(name: "node", scope: !770, file: !69, line: 848, type: !72)
!782 = !DILocalVariable(name: "map_prog", scope: !770, file: !69, line: 849, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!784 = !DILocalVariable(name: "lc_messages", scope: !770, file: !69, line: 861, type: !72)
!785 = !DILocalVariable(name: "url_program", scope: !770, file: !69, line: 874, type: !72)
!786 = !DILocation(line: 0, scope: !770, inlinedAt: !787)
!787 = distinct !DILocation(line: 50, column: 7, scope: !765)
!788 = !{}
!789 = !DILocation(line: 857, column: 3, scope: !770, inlinedAt: !787)
!790 = !DILocation(line: 861, column: 29, scope: !770, inlinedAt: !787)
!791 = !DILocation(line: 862, column: 7, scope: !792, inlinedAt: !787)
!792 = distinct !DILexicalBlock(scope: !770, file: !69, line: 862, column: 7)
!793 = !DILocation(line: 862, column: 19, scope: !792, inlinedAt: !787)
!794 = !DILocation(line: 862, column: 22, scope: !792, inlinedAt: !787)
!795 = !DILocation(line: 862, column: 7, scope: !770, inlinedAt: !787)
!796 = !DILocation(line: 868, column: 7, scope: !797, inlinedAt: !787)
!797 = distinct !DILexicalBlock(scope: !792, file: !69, line: 863, column: 5)
!798 = !DILocation(line: 870, column: 5, scope: !797, inlinedAt: !787)
!799 = !DILocation(line: 875, column: 3, scope: !770, inlinedAt: !787)
!800 = !DILocation(line: 877, column: 3, scope: !770, inlinedAt: !787)
!801 = !DILocation(line: 52, column: 3, scope: !749)
!802 = !DISubprogram(name: "dcgettext", scope: !803, file: !803, line: 51, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!804 = !DISubroutineType(types: !805)
!805 = !{!255, !72, !72, !108}
!806 = !DISubprogram(name: "__fprintf_chk", scope: !807, file: !807, line: 93, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!808 = !DISubroutineType(types: !809)
!809 = !{!108, !810, !108, !811, null}
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!812 = !DISubprogram(name: "__printf_chk", scope: !807, file: !807, line: 95, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!813 = !DISubroutineType(types: !814)
!814 = !{!108, !108, !811, null}
!815 = !DISubprogram(name: "fputs_unlocked", scope: !342, file: !342, line: 691, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!816 = !DISubroutineType(types: !817)
!817 = !{!108, !811, !810}
!818 = !DILocation(line: 0, scope: !68)
!819 = !DILocation(line: 581, column: 7, scope: !232)
!820 = !{!821, !821, i64 0}
!821 = !{!"int", !762, i64 0}
!822 = !DILocation(line: 581, column: 19, scope: !232)
!823 = !DILocation(line: 581, column: 7, scope: !68)
!824 = !DILocation(line: 585, column: 26, scope: !231)
!825 = !DILocation(line: 0, scope: !231)
!826 = !DILocation(line: 586, column: 23, scope: !231)
!827 = !DILocation(line: 586, column: 28, scope: !231)
!828 = !DILocation(line: 586, column: 32, scope: !231)
!829 = !{!762, !762, i64 0}
!830 = !DILocation(line: 586, column: 38, scope: !231)
!831 = !DILocalVariable(name: "__s1", arg: 1, scope: !832, file: !833, line: 1359, type: !72)
!832 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !836)
!833 = !DIFile(filename: "./lib/string.h", directory: "/src")
!834 = !DISubroutineType(types: !835)
!835 = !{!234, !72, !72}
!836 = !{!831, !837}
!837 = !DILocalVariable(name: "__s2", arg: 2, scope: !832, file: !833, line: 1359, type: !72)
!838 = !DILocation(line: 0, scope: !832, inlinedAt: !839)
!839 = distinct !DILocation(line: 586, column: 41, scope: !231)
!840 = !DILocation(line: 1361, column: 11, scope: !832, inlinedAt: !839)
!841 = !DILocation(line: 1361, column: 10, scope: !832, inlinedAt: !839)
!842 = !DILocation(line: 586, column: 19, scope: !231)
!843 = !DILocation(line: 587, column: 5, scope: !231)
!844 = !DILocation(line: 588, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!846 = !DILocation(line: 588, column: 7, scope: !68)
!847 = !DILocation(line: 590, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !69, line: 589, column: 5)
!849 = !DILocation(line: 591, column: 7, scope: !848)
!850 = !DILocation(line: 595, column: 37, scope: !68)
!851 = !DILocation(line: 595, column: 35, scope: !68)
!852 = !DILocation(line: 596, column: 29, scope: !68)
!853 = !DILocation(line: 597, column: 8, scope: !240)
!854 = !DILocation(line: 597, column: 7, scope: !68)
!855 = !DILocation(line: 604, column: 24, scope: !239)
!856 = !DILocation(line: 604, column: 12, scope: !240)
!857 = !DILocation(line: 0, scope: !238)
!858 = !DILocation(line: 610, column: 16, scope: !238)
!859 = !DILocation(line: 610, column: 7, scope: !238)
!860 = !DILocation(line: 611, column: 21, scope: !238)
!861 = !{!862, !862, i64 0}
!862 = !{!"short", !762, i64 0}
!863 = !DILocation(line: 611, column: 19, scope: !238)
!864 = !DILocation(line: 611, column: 16, scope: !238)
!865 = !DILocation(line: 610, column: 30, scope: !238)
!866 = distinct !{!866, !859, !860, !867}
!867 = !{!"llvm.loop.mustprogress"}
!868 = !DILocation(line: 612, column: 18, scope: !869)
!869 = distinct !DILexicalBlock(scope: !238, file: !69, line: 612, column: 11)
!870 = !DILocation(line: 612, column: 11, scope: !238)
!871 = !DILocation(line: 620, column: 23, scope: !68)
!872 = !DILocation(line: 625, column: 39, scope: !68)
!873 = !DILocation(line: 626, column: 3, scope: !68)
!874 = !DILocation(line: 626, column: 10, scope: !68)
!875 = !DILocation(line: 626, column: 21, scope: !68)
!876 = !DILocation(line: 628, column: 44, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !69, line: 628, column: 11)
!878 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!879 = !DILocation(line: 628, column: 32, scope: !877)
!880 = !DILocation(line: 628, column: 49, scope: !877)
!881 = !DILocation(line: 628, column: 11, scope: !878)
!882 = !DILocation(line: 630, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !69, line: 630, column: 11)
!884 = !DILocation(line: 630, column: 11, scope: !878)
!885 = !DILocation(line: 632, column: 26, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !69, line: 632, column: 15)
!887 = distinct !DILexicalBlock(scope: !883, file: !69, line: 631, column: 9)
!888 = !DILocation(line: 632, column: 34, scope: !886)
!889 = !DILocation(line: 632, column: 37, scope: !886)
!890 = !DILocation(line: 632, column: 15, scope: !887)
!891 = !DILocation(line: 640, column: 16, scope: !878)
!892 = distinct !{!892, !873, !893, !867}
!893 = !DILocation(line: 641, column: 5, scope: !68)
!894 = !DILocation(line: 644, column: 3, scope: !68)
!895 = !DILocation(line: 0, scope: !832, inlinedAt: !896)
!896 = distinct !DILocation(line: 648, column: 31, scope: !68)
!897 = !DILocation(line: 0, scope: !832, inlinedAt: !898)
!898 = distinct !DILocation(line: 649, column: 31, scope: !68)
!899 = !DILocation(line: 0, scope: !832, inlinedAt: !900)
!900 = distinct !DILocation(line: 650, column: 31, scope: !68)
!901 = !DILocation(line: 0, scope: !832, inlinedAt: !902)
!902 = distinct !DILocation(line: 651, column: 31, scope: !68)
!903 = !DILocation(line: 0, scope: !832, inlinedAt: !904)
!904 = distinct !DILocation(line: 652, column: 31, scope: !68)
!905 = !DILocation(line: 0, scope: !832, inlinedAt: !906)
!906 = distinct !DILocation(line: 653, column: 31, scope: !68)
!907 = !DILocation(line: 0, scope: !832, inlinedAt: !908)
!908 = distinct !DILocation(line: 654, column: 31, scope: !68)
!909 = !DILocation(line: 0, scope: !832, inlinedAt: !910)
!910 = distinct !DILocation(line: 655, column: 31, scope: !68)
!911 = !DILocation(line: 0, scope: !832, inlinedAt: !912)
!912 = distinct !DILocation(line: 656, column: 31, scope: !68)
!913 = !DILocation(line: 0, scope: !832, inlinedAt: !914)
!914 = distinct !DILocation(line: 657, column: 31, scope: !68)
!915 = !DILocation(line: 663, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!917 = !DILocation(line: 664, column: 7, scope: !916)
!918 = !DILocation(line: 664, column: 10, scope: !916)
!919 = !DILocation(line: 663, column: 7, scope: !68)
!920 = !DILocation(line: 669, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !69, line: 665, column: 5)
!922 = !DILocation(line: 671, column: 5, scope: !921)
!923 = !DILocation(line: 676, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !69, line: 673, column: 5)
!925 = !DILocation(line: 679, column: 3, scope: !68)
!926 = !DILocation(line: 683, column: 3, scope: !68)
!927 = !DILocation(line: 686, column: 3, scope: !68)
!928 = !DILocation(line: 688, column: 3, scope: !68)
!929 = !DILocation(line: 691, column: 3, scope: !68)
!930 = !DILocation(line: 695, column: 3, scope: !68)
!931 = !DILocation(line: 696, column: 1, scope: !68)
!932 = !DISubprogram(name: "setlocale", scope: !933, file: !933, line: 122, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!934 = !DISubroutineType(types: !935)
!935 = !{!255, !108, !72}
!936 = !DISubprogram(name: "strncmp", scope: !937, file: !937, line: 159, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!938 = !DISubroutineType(types: !939)
!939 = !{!108, !72, !72, !110}
!940 = !DISubprogram(name: "exit", scope: !941, file: !941, line: 624, type: !750, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!941 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!942 = !DISubprogram(name: "getenv", scope: !941, file: !941, line: 641, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!255, !72}
!945 = !DISubprogram(name: "strcmp", scope: !937, file: !937, line: 156, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubroutineType(types: !947)
!947 = !{!108, !72, !72}
!948 = !DISubprogram(name: "strspn", scope: !937, file: !937, line: 297, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DISubroutineType(types: !950)
!950 = !{!112, !72, !72}
!951 = !DISubprogram(name: "strchr", scope: !937, file: !937, line: 246, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubroutineType(types: !953)
!953 = !{!255, !72, !108}
!954 = !DISubprogram(name: "__ctype_b_loc", scope: !92, file: !92, line: 79, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!960 = !DISubprogram(name: "strcspn", scope: !937, file: !937, line: 293, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubprogram(name: "fwrite_unlocked", scope: !342, file: !342, line: 704, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!110, !964, !110, !110, !810}
!964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!967 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 56, type: !968, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !971)
!968 = !DISubroutineType(types: !969)
!969 = !{!108, !108, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!971 = !{!972, !973}
!972 = !DILocalVariable(name: "argc", arg: 1, scope: !967, file: !2, line: 56, type: !108)
!973 = !DILocalVariable(name: "argv", arg: 2, scope: !967, file: !2, line: 56, type: !970)
!974 = !DILocation(line: 0, scope: !967)
!975 = !DILocation(line: 59, column: 21, scope: !967)
!976 = !DILocation(line: 59, column: 3, scope: !967)
!977 = !DILocation(line: 60, column: 3, scope: !967)
!978 = !DILocation(line: 61, column: 3, scope: !967)
!979 = !DILocation(line: 62, column: 3, scope: !967)
!980 = !DILocation(line: 64, column: 3, scope: !967)
!981 = !DILocation(line: 67, column: 36, scope: !967)
!982 = !DILocation(line: 67, column: 58, scope: !967)
!983 = !DILocation(line: 66, column: 3, scope: !967)
!984 = !DILocation(line: 70, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !967, file: !2, line: 70, column: 7)
!986 = !DILocation(line: 70, column: 12, scope: !985)
!987 = !DILocation(line: 70, column: 7, scope: !967)
!988 = !DILocation(line: 72, column: 7, scope: !989)
!989 = distinct !DILexicalBlock(scope: !985, file: !2, line: 71, column: 5)
!990 = !DILocation(line: 73, column: 7, scope: !989)
!991 = !DILocation(line: 70, column: 21, scope: !985)
!992 = !DILocation(line: 76, column: 18, scope: !993)
!993 = distinct !DILexicalBlock(scope: !967, file: !2, line: 76, column: 7)
!994 = !DILocation(line: 76, column: 7, scope: !967)
!995 = !DILocation(line: 78, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !993, file: !2, line: 77, column: 5)
!997 = !DILocation(line: 79, column: 7, scope: !996)
!998 = !DILocation(line: 82, column: 15, scope: !999)
!999 = distinct !DILexicalBlock(scope: !967, file: !2, line: 82, column: 7)
!1000 = !DILocation(line: 82, column: 7, scope: !999)
!1001 = !DILocation(line: 82, column: 29, scope: !999)
!1002 = !DILocation(line: 82, column: 7, scope: !967)
!1003 = !DILocation(line: 83, column: 5, scope: !999)
!1004 = !DILocation(line: 85, column: 3, scope: !967)
!1005 = !DISubprogram(name: "bindtextdomain", scope: !803, file: !803, line: 86, type: !1006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!255, !72, !72}
!1008 = !DISubprogram(name: "textdomain", scope: !803, file: !803, line: 82, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1009 = !DISubprogram(name: "atexit", scope: !941, file: !941, line: 602, type: !1010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{!108, !381}
!1012 = !DISubprogram(name: "unlink", scope: !1013, file: !1013, line: 858, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!108, !72}
!1016 = !DISubprogram(name: "__errno_location", scope: !1017, file: !1017, line: 37, type: !1018, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!406}
!1020 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !316, file: !316, line: 50, type: !771, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1021)
!1021 = !{!1022}
!1022 = !DILocalVariable(name: "file", arg: 1, scope: !1020, file: !316, line: 50, type: !72)
!1023 = !DILocation(line: 0, scope: !1020)
!1024 = !DILocation(line: 52, column: 13, scope: !1020)
!1025 = !DILocation(line: 53, column: 1, scope: !1020)
!1026 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !316, file: !316, line: 87, type: !1027, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1029)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !234}
!1029 = !{!1030}
!1030 = !DILocalVariable(name: "ignore", arg: 1, scope: !1026, file: !316, line: 87, type: !234)
!1031 = !DILocation(line: 0, scope: !1026)
!1032 = !DILocation(line: 89, column: 16, scope: !1026)
!1033 = !{!1034, !1034, i64 0}
!1034 = !{!"_Bool", !762, i64 0}
!1035 = !DILocation(line: 90, column: 1, scope: !1026)
!1036 = distinct !DISubprogram(name: "close_stdout", scope: !316, file: !316, line: 116, type: !382, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1037)
!1037 = !{!1038}
!1038 = !DILocalVariable(name: "write_error", scope: !1039, file: !316, line: 121, type: !72)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !316, line: 120, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1036, file: !316, line: 118, column: 7)
!1041 = !DILocation(line: 118, column: 21, scope: !1040)
!1042 = !DILocation(line: 118, column: 7, scope: !1040)
!1043 = !DILocation(line: 118, column: 29, scope: !1040)
!1044 = !DILocation(line: 119, column: 7, scope: !1040)
!1045 = !DILocation(line: 119, column: 12, scope: !1040)
!1046 = !{i8 0, i8 2}
!1047 = !DILocation(line: 119, column: 25, scope: !1040)
!1048 = !DILocation(line: 119, column: 28, scope: !1040)
!1049 = !DILocation(line: 119, column: 34, scope: !1040)
!1050 = !DILocation(line: 118, column: 7, scope: !1036)
!1051 = !DILocation(line: 121, column: 33, scope: !1039)
!1052 = !DILocation(line: 0, scope: !1039)
!1053 = !DILocation(line: 122, column: 11, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1039, file: !316, line: 122, column: 11)
!1055 = !DILocation(line: 0, scope: !1054)
!1056 = !DILocation(line: 122, column: 11, scope: !1039)
!1057 = !DILocation(line: 123, column: 9, scope: !1054)
!1058 = !DILocation(line: 126, column: 9, scope: !1054)
!1059 = !DILocation(line: 128, column: 14, scope: !1039)
!1060 = !DILocation(line: 128, column: 7, scope: !1039)
!1061 = !DILocation(line: 133, column: 42, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1036, file: !316, line: 133, column: 7)
!1063 = !DILocation(line: 133, column: 28, scope: !1062)
!1064 = !DILocation(line: 133, column: 50, scope: !1062)
!1065 = !DILocation(line: 133, column: 7, scope: !1036)
!1066 = !DILocation(line: 134, column: 12, scope: !1062)
!1067 = !DILocation(line: 134, column: 5, scope: !1062)
!1068 = !DILocation(line: 135, column: 1, scope: !1036)
!1069 = !DISubprogram(name: "_exit", scope: !1013, file: !1013, line: 624, type: !750, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1070 = distinct !DISubprogram(name: "verror", scope: !331, file: !331, line: 251, type: !1071, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !108, !108, !72, !341}
!1073 = !{!1074, !1075, !1076, !1077}
!1074 = !DILocalVariable(name: "status", arg: 1, scope: !1070, file: !331, line: 251, type: !108)
!1075 = !DILocalVariable(name: "errnum", arg: 2, scope: !1070, file: !331, line: 251, type: !108)
!1076 = !DILocalVariable(name: "message", arg: 3, scope: !1070, file: !331, line: 251, type: !72)
!1077 = !DILocalVariable(name: "args", arg: 4, scope: !1070, file: !331, line: 251, type: !341)
!1078 = !DILocation(line: 0, scope: !1070)
!1079 = !DILocation(line: 261, column: 3, scope: !1070)
!1080 = !DILocation(line: 265, column: 7, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1070, file: !331, line: 265, column: 7)
!1082 = !DILocation(line: 265, column: 7, scope: !1070)
!1083 = !DILocation(line: 266, column: 5, scope: !1081)
!1084 = !DILocation(line: 272, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !331, line: 268, column: 5)
!1086 = !DILocation(line: 276, column: 3, scope: !1070)
!1087 = !{i64 0, i64 8, !760, i64 8, i64 8, !760, i64 16, i64 8, !760, i64 24, i64 4, !820, i64 28, i64 4, !820}
!1088 = !DILocation(line: 282, column: 1, scope: !1070)
!1089 = distinct !DISubprogram(name: "flush_stdout", scope: !331, file: !331, line: 163, type: !382, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1090)
!1090 = !{!1091}
!1091 = !DILocalVariable(name: "stdout_fd", scope: !1089, file: !331, line: 166, type: !108)
!1092 = !DILocation(line: 0, scope: !1089)
!1093 = !DILocalVariable(name: "fd", arg: 1, scope: !1094, file: !331, line: 145, type: !108)
!1094 = distinct !DISubprogram(name: "is_open", scope: !331, file: !331, line: 145, type: !1095, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1097)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!108, !108}
!1097 = !{!1093}
!1098 = !DILocation(line: 0, scope: !1094, inlinedAt: !1099)
!1099 = distinct !DILocation(line: 182, column: 25, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1089, file: !331, line: 182, column: 7)
!1101 = !DILocation(line: 157, column: 15, scope: !1094, inlinedAt: !1099)
!1102 = !DILocation(line: 157, column: 12, scope: !1094, inlinedAt: !1099)
!1103 = !DILocation(line: 182, column: 7, scope: !1089)
!1104 = !DILocation(line: 184, column: 5, scope: !1100)
!1105 = !DILocation(line: 185, column: 1, scope: !1089)
!1106 = distinct !DISubprogram(name: "error_tail", scope: !331, file: !331, line: 219, type: !1071, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1107)
!1107 = !{!1108, !1109, !1110, !1111}
!1108 = !DILocalVariable(name: "status", arg: 1, scope: !1106, file: !331, line: 219, type: !108)
!1109 = !DILocalVariable(name: "errnum", arg: 2, scope: !1106, file: !331, line: 219, type: !108)
!1110 = !DILocalVariable(name: "message", arg: 3, scope: !1106, file: !331, line: 219, type: !72)
!1111 = !DILocalVariable(name: "args", arg: 4, scope: !1106, file: !331, line: 219, type: !341)
!1112 = distinct !DIAssignID()
!1113 = !DILocation(line: 0, scope: !1106)
!1114 = !DILocation(line: 229, column: 13, scope: !1106)
!1115 = !DILocation(line: 135, column: 10, scope: !1116, inlinedAt: !1158)
!1116 = distinct !DISubprogram(name: "vfprintf", scope: !807, file: !807, line: 132, type: !1117, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1154)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!108, !1119, !811, !343}
!1119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1122)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1122, file: !251, line: 51, baseType: !108, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1122, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1122, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1122, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1122, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1122, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1122, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1122, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1122, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1122, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1122, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1122, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1122, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1122, file: !251, line: 70, baseType: !1138, size: 64, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1122, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1122, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1122, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1122, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1122, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1122, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1122, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1122, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1122, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1122, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1122, file: !251, line: 93, baseType: !1138, size: 64, offset: 1344)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1122, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1122, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1122, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1122, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!1154 = !{!1155, !1156, !1157}
!1155 = !DILocalVariable(name: "__stream", arg: 1, scope: !1116, file: !807, line: 132, type: !1119)
!1156 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1116, file: !807, line: 133, type: !811)
!1157 = !DILocalVariable(name: "__ap", arg: 3, scope: !1116, file: !807, line: 133, type: !343)
!1158 = distinct !DILocation(line: 229, column: 3, scope: !1106)
!1159 = !{!1160, !1162}
!1160 = distinct !{!1160, !1161, !"vfprintf.inline: argument 0"}
!1161 = distinct !{!1161, !"vfprintf.inline"}
!1162 = distinct !{!1162, !1161, !"vfprintf.inline: argument 1"}
!1163 = !DILocation(line: 229, column: 3, scope: !1106)
!1164 = !DILocation(line: 0, scope: !1116, inlinedAt: !1158)
!1165 = !DILocation(line: 232, column: 3, scope: !1106)
!1166 = !DILocation(line: 233, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1106, file: !331, line: 233, column: 7)
!1168 = !DILocation(line: 233, column: 7, scope: !1106)
!1169 = !DILocalVariable(name: "errbuf", scope: !1170, file: !331, line: 193, type: !1174)
!1170 = distinct !DISubprogram(name: "print_errno_message", scope: !331, file: !331, line: 188, type: !750, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1171)
!1171 = !{!1172, !1173, !1169}
!1172 = !DILocalVariable(name: "errnum", arg: 1, scope: !1170, file: !331, line: 188, type: !108)
!1173 = !DILocalVariable(name: "s", scope: !1170, file: !331, line: 190, type: !72)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 1024)
!1177 = !DILocation(line: 0, scope: !1170, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 234, column: 5, scope: !1167)
!1179 = !DILocation(line: 193, column: 3, scope: !1170, inlinedAt: !1178)
!1180 = !DILocation(line: 195, column: 7, scope: !1170, inlinedAt: !1178)
!1181 = !DILocation(line: 207, column: 9, scope: !1182, inlinedAt: !1178)
!1182 = distinct !DILexicalBlock(scope: !1170, file: !331, line: 207, column: 7)
!1183 = !DILocation(line: 207, column: 7, scope: !1170, inlinedAt: !1178)
!1184 = !DILocation(line: 208, column: 9, scope: !1182, inlinedAt: !1178)
!1185 = !DILocation(line: 208, column: 5, scope: !1182, inlinedAt: !1178)
!1186 = !DILocation(line: 214, column: 3, scope: !1170, inlinedAt: !1178)
!1187 = !DILocation(line: 216, column: 1, scope: !1170, inlinedAt: !1178)
!1188 = !DILocation(line: 234, column: 5, scope: !1167)
!1189 = !DILocation(line: 238, column: 3, scope: !1106)
!1190 = !DILocalVariable(name: "__c", arg: 1, scope: !1191, file: !1192, line: 101, type: !108)
!1191 = distinct !DISubprogram(name: "putc_unlocked", scope: !1192, file: !1192, line: 101, type: !1193, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1195)
!1192 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!108, !108, !1120}
!1195 = !{!1190, !1196}
!1196 = !DILocalVariable(name: "__stream", arg: 2, scope: !1191, file: !1192, line: 101, type: !1120)
!1197 = !DILocation(line: 0, scope: !1191, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 238, column: 3, scope: !1106)
!1199 = !DILocation(line: 103, column: 10, scope: !1191, inlinedAt: !1198)
!1200 = !{!1201, !761, i64 40}
!1201 = !{!"_IO_FILE", !821, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !761, i64 40, !761, i64 48, !761, i64 56, !761, i64 64, !761, i64 72, !761, i64 80, !761, i64 88, !761, i64 96, !761, i64 104, !821, i64 112, !821, i64 116, !1202, i64 120, !862, i64 128, !762, i64 130, !762, i64 131, !761, i64 136, !1202, i64 144, !761, i64 152, !761, i64 160, !761, i64 168, !761, i64 176, !1202, i64 184, !821, i64 192, !762, i64 196}
!1202 = !{!"long", !762, i64 0}
!1203 = !{!1201, !761, i64 48}
!1204 = !{!"branch_weights", i32 2000, i32 1}
!1205 = !DILocation(line: 240, column: 3, scope: !1106)
!1206 = !DILocation(line: 241, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1106, file: !331, line: 241, column: 7)
!1208 = !DILocation(line: 241, column: 7, scope: !1106)
!1209 = !DILocation(line: 242, column: 5, scope: !1207)
!1210 = !DILocation(line: 243, column: 1, scope: !1106)
!1211 = !DISubprogram(name: "__vfprintf_chk", scope: !807, file: !807, line: 96, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!108, !1119, !108, !811, !343}
!1214 = !DISubprogram(name: "strerror_r", scope: !937, file: !937, line: 444, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!255, !108, !255, !110}
!1217 = !DISubprogram(name: "__overflow", scope: !342, file: !342, line: 886, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!108, !1120, !108}
!1220 = !DISubprogram(name: "fflush_unlocked", scope: !342, file: !342, line: 239, type: !1221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!108, !1120}
!1223 = !DISubprogram(name: "fcntl", scope: !1224, file: !1224, line: 149, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1224 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!108, !108, !108, null}
!1227 = distinct !DISubprogram(name: "error", scope: !331, file: !331, line: 285, type: !1228, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1230)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{null, !108, !108, !72, null}
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DILocalVariable(name: "status", arg: 1, scope: !1227, file: !331, line: 285, type: !108)
!1232 = !DILocalVariable(name: "errnum", arg: 2, scope: !1227, file: !331, line: 285, type: !108)
!1233 = !DILocalVariable(name: "message", arg: 3, scope: !1227, file: !331, line: 285, type: !72)
!1234 = !DILocalVariable(name: "ap", scope: !1227, file: !331, line: 287, type: !341)
!1235 = distinct !DIAssignID()
!1236 = !DILocation(line: 0, scope: !1227)
!1237 = !DILocation(line: 287, column: 3, scope: !1227)
!1238 = !DILocation(line: 288, column: 3, scope: !1227)
!1239 = !DILocation(line: 289, column: 3, scope: !1227)
!1240 = !DILocation(line: 290, column: 3, scope: !1227)
!1241 = !DILocation(line: 291, column: 1, scope: !1227)
!1242 = !DILocation(line: 0, scope: !338)
!1243 = !DILocation(line: 302, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !338, file: !331, line: 302, column: 7)
!1245 = !DILocation(line: 302, column: 7, scope: !338)
!1246 = !DILocation(line: 307, column: 11, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !331, line: 307, column: 11)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !331, line: 303, column: 5)
!1249 = !DILocation(line: 307, column: 27, scope: !1247)
!1250 = !DILocation(line: 308, column: 11, scope: !1247)
!1251 = !DILocation(line: 308, column: 28, scope: !1247)
!1252 = !DILocation(line: 308, column: 25, scope: !1247)
!1253 = !DILocation(line: 309, column: 15, scope: !1247)
!1254 = !DILocation(line: 309, column: 33, scope: !1247)
!1255 = !DILocation(line: 310, column: 19, scope: !1247)
!1256 = !DILocation(line: 311, column: 22, scope: !1247)
!1257 = !DILocation(line: 311, column: 56, scope: !1247)
!1258 = !DILocation(line: 307, column: 11, scope: !1248)
!1259 = !DILocation(line: 316, column: 21, scope: !1248)
!1260 = !DILocation(line: 317, column: 23, scope: !1248)
!1261 = !DILocation(line: 318, column: 5, scope: !1248)
!1262 = !DILocation(line: 327, column: 3, scope: !338)
!1263 = !DILocation(line: 331, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !338, file: !331, line: 331, column: 7)
!1265 = !DILocation(line: 331, column: 7, scope: !338)
!1266 = !DILocation(line: 332, column: 5, scope: !1264)
!1267 = !DILocation(line: 338, column: 7, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !331, line: 334, column: 5)
!1269 = !DILocation(line: 346, column: 3, scope: !338)
!1270 = !DILocation(line: 350, column: 3, scope: !338)
!1271 = !DILocation(line: 356, column: 1, scope: !338)
!1272 = distinct !DISubprogram(name: "error_at_line", scope: !331, file: !331, line: 359, type: !1273, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !108, !108, !72, !78, !72, null}
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281}
!1276 = !DILocalVariable(name: "status", arg: 1, scope: !1272, file: !331, line: 359, type: !108)
!1277 = !DILocalVariable(name: "errnum", arg: 2, scope: !1272, file: !331, line: 359, type: !108)
!1278 = !DILocalVariable(name: "file_name", arg: 3, scope: !1272, file: !331, line: 359, type: !72)
!1279 = !DILocalVariable(name: "line_number", arg: 4, scope: !1272, file: !331, line: 360, type: !78)
!1280 = !DILocalVariable(name: "message", arg: 5, scope: !1272, file: !331, line: 360, type: !72)
!1281 = !DILocalVariable(name: "ap", scope: !1272, file: !331, line: 362, type: !341)
!1282 = distinct !DIAssignID()
!1283 = !DILocation(line: 0, scope: !1272)
!1284 = !DILocation(line: 362, column: 3, scope: !1272)
!1285 = !DILocation(line: 363, column: 3, scope: !1272)
!1286 = !DILocation(line: 364, column: 3, scope: !1272)
!1287 = !DILocation(line: 366, column: 3, scope: !1272)
!1288 = !DILocation(line: 367, column: 1, scope: !1272)
!1289 = distinct !DISubprogram(name: "getprogname", scope: !680, file: !680, line: 54, type: !1290, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!72}
!1292 = !DILocation(line: 58, column: 10, scope: !1289)
!1293 = !DILocation(line: 58, column: 3, scope: !1289)
!1294 = distinct !DISubprogram(name: "parse_long_options", scope: !386, file: !386, line: 45, type: !1295, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1298)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !108, !970, !72, !72, !72, !1297, null}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1309}
!1299 = !DILocalVariable(name: "argc", arg: 1, scope: !1294, file: !386, line: 45, type: !108)
!1300 = !DILocalVariable(name: "argv", arg: 2, scope: !1294, file: !386, line: 46, type: !970)
!1301 = !DILocalVariable(name: "command_name", arg: 3, scope: !1294, file: !386, line: 47, type: !72)
!1302 = !DILocalVariable(name: "package", arg: 4, scope: !1294, file: !386, line: 48, type: !72)
!1303 = !DILocalVariable(name: "version", arg: 5, scope: !1294, file: !386, line: 49, type: !72)
!1304 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1294, file: !386, line: 50, type: !1297)
!1305 = !DILocalVariable(name: "saved_opterr", scope: !1294, file: !386, line: 53, type: !108)
!1306 = !DILocalVariable(name: "c", scope: !1307, file: !386, line: 60, type: !108)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !386, line: 59, column: 5)
!1308 = distinct !DILexicalBlock(scope: !1294, file: !386, line: 58, column: 7)
!1309 = !DILocalVariable(name: "authors", scope: !1310, file: !386, line: 71, type: !1314)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !386, line: 70, column: 15)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !386, line: 64, column: 13)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !386, line: 62, column: 9)
!1313 = distinct !DILexicalBlock(scope: !1307, file: !386, line: 61, column: 11)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !1315)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 12, baseType: !1316)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !386, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1317, file: !386, line: 71, baseType: !107, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1317, file: !386, line: 71, baseType: !107, size: 64, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1317, file: !386, line: 71, baseType: !107, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1317, file: !386, line: 71, baseType: !108, size: 32, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1317, file: !386, line: 71, baseType: !108, size: 32, offset: 224)
!1324 = distinct !DIAssignID()
!1325 = !DILocation(line: 0, scope: !1310)
!1326 = !DILocation(line: 0, scope: !1294)
!1327 = !DILocation(line: 53, column: 22, scope: !1294)
!1328 = !DILocation(line: 56, column: 10, scope: !1294)
!1329 = !DILocation(line: 58, column: 12, scope: !1308)
!1330 = !DILocation(line: 58, column: 7, scope: !1294)
!1331 = !DILocation(line: 60, column: 15, scope: !1307)
!1332 = !DILocation(line: 0, scope: !1307)
!1333 = !DILocation(line: 61, column: 11, scope: !1307)
!1334 = !DILocation(line: 66, column: 15, scope: !1311)
!1335 = !DILocation(line: 67, column: 15, scope: !1311)
!1336 = !DILocation(line: 71, column: 17, scope: !1310)
!1337 = !DILocation(line: 72, column: 17, scope: !1310)
!1338 = !DILocation(line: 73, column: 33, scope: !1310)
!1339 = !DILocation(line: 73, column: 17, scope: !1310)
!1340 = !DILocation(line: 74, column: 17, scope: !1310)
!1341 = !DILocation(line: 85, column: 10, scope: !1294)
!1342 = !DILocation(line: 89, column: 10, scope: !1294)
!1343 = !DILocation(line: 90, column: 1, scope: !1294)
!1344 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!108, !108, !1347, !72, !1349, !406}
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1350 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !386, file: !386, line: 98, type: !1351, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1353)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{null, !108, !970, !72, !72, !72, !234, !1297, null}
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1354 = !DILocalVariable(name: "argc", arg: 1, scope: !1350, file: !386, line: 98, type: !108)
!1355 = !DILocalVariable(name: "argv", arg: 2, scope: !1350, file: !386, line: 99, type: !970)
!1356 = !DILocalVariable(name: "command_name", arg: 3, scope: !1350, file: !386, line: 100, type: !72)
!1357 = !DILocalVariable(name: "package", arg: 4, scope: !1350, file: !386, line: 101, type: !72)
!1358 = !DILocalVariable(name: "version", arg: 5, scope: !1350, file: !386, line: 102, type: !72)
!1359 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1350, file: !386, line: 103, type: !234)
!1360 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1350, file: !386, line: 104, type: !1297)
!1361 = !DILocalVariable(name: "saved_opterr", scope: !1350, file: !386, line: 107, type: !108)
!1362 = !DILocalVariable(name: "optstring", scope: !1350, file: !386, line: 112, type: !72)
!1363 = !DILocalVariable(name: "c", scope: !1350, file: !386, line: 114, type: !108)
!1364 = !DILocalVariable(name: "authors", scope: !1365, file: !386, line: 125, type: !1314)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !386, line: 124, column: 11)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !386, line: 118, column: 9)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !386, line: 116, column: 5)
!1368 = distinct !DILexicalBlock(scope: !1350, file: !386, line: 115, column: 7)
!1369 = distinct !DIAssignID()
!1370 = !DILocation(line: 0, scope: !1365)
!1371 = !DILocation(line: 0, scope: !1350)
!1372 = !DILocation(line: 107, column: 22, scope: !1350)
!1373 = !DILocation(line: 110, column: 10, scope: !1350)
!1374 = !DILocation(line: 112, column: 27, scope: !1350)
!1375 = !DILocation(line: 114, column: 11, scope: !1350)
!1376 = !DILocation(line: 115, column: 7, scope: !1350)
!1377 = !DILocation(line: 125, column: 13, scope: !1365)
!1378 = !DILocation(line: 126, column: 13, scope: !1365)
!1379 = !DILocation(line: 127, column: 29, scope: !1365)
!1380 = !DILocation(line: 127, column: 13, scope: !1365)
!1381 = !DILocation(line: 128, column: 13, scope: !1365)
!1382 = !DILocation(line: 132, column: 26, scope: !1366)
!1383 = !DILocation(line: 133, column: 11, scope: !1366)
!1384 = !DILocation(line: 0, scope: !1366)
!1385 = !DILocation(line: 138, column: 10, scope: !1350)
!1386 = !DILocation(line: 139, column: 1, scope: !1350)
!1387 = distinct !DISubprogram(name: "set_program_name", scope: !411, file: !411, line: 37, type: !771, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1388)
!1388 = !{!1389, !1390, !1391}
!1389 = !DILocalVariable(name: "argv0", arg: 1, scope: !1387, file: !411, line: 37, type: !72)
!1390 = !DILocalVariable(name: "slash", scope: !1387, file: !411, line: 44, type: !72)
!1391 = !DILocalVariable(name: "base", scope: !1387, file: !411, line: 45, type: !72)
!1392 = !DILocation(line: 0, scope: !1387)
!1393 = !DILocation(line: 44, column: 23, scope: !1387)
!1394 = !DILocation(line: 45, column: 22, scope: !1387)
!1395 = !DILocation(line: 46, column: 17, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1387, file: !411, line: 46, column: 7)
!1397 = !DILocation(line: 46, column: 9, scope: !1396)
!1398 = !DILocation(line: 46, column: 25, scope: !1396)
!1399 = !DILocation(line: 46, column: 40, scope: !1396)
!1400 = !DILocalVariable(name: "__s1", arg: 1, scope: !1401, file: !833, line: 974, type: !965)
!1401 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1402, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1404)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!234, !965, !965, !110}
!1404 = !{!1400, !1405, !1406}
!1405 = !DILocalVariable(name: "__s2", arg: 2, scope: !1401, file: !833, line: 974, type: !965)
!1406 = !DILocalVariable(name: "__n", arg: 3, scope: !1401, file: !833, line: 974, type: !110)
!1407 = !DILocation(line: 0, scope: !1401, inlinedAt: !1408)
!1408 = distinct !DILocation(line: 46, column: 28, scope: !1396)
!1409 = !DILocation(line: 976, column: 11, scope: !1401, inlinedAt: !1408)
!1410 = !DILocation(line: 976, column: 10, scope: !1401, inlinedAt: !1408)
!1411 = !DILocation(line: 46, column: 7, scope: !1387)
!1412 = !DILocation(line: 49, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !411, line: 49, column: 11)
!1414 = distinct !DILexicalBlock(scope: !1396, file: !411, line: 47, column: 5)
!1415 = !DILocation(line: 49, column: 36, scope: !1413)
!1416 = !DILocation(line: 49, column: 11, scope: !1414)
!1417 = !DILocation(line: 65, column: 16, scope: !1387)
!1418 = !DILocation(line: 71, column: 27, scope: !1387)
!1419 = !DILocation(line: 74, column: 33, scope: !1387)
!1420 = !DILocation(line: 76, column: 1, scope: !1387)
!1421 = !DISubprogram(name: "strrchr", scope: !937, file: !937, line: 273, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1422 = distinct !DIAssignID()
!1423 = !DILocation(line: 0, scope: !420)
!1424 = distinct !DIAssignID()
!1425 = !DILocation(line: 40, column: 29, scope: !420)
!1426 = !DILocation(line: 41, column: 19, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !420, file: !421, line: 41, column: 7)
!1428 = !DILocation(line: 41, column: 7, scope: !420)
!1429 = !DILocation(line: 47, column: 3, scope: !420)
!1430 = !DILocation(line: 48, column: 3, scope: !420)
!1431 = !DILocalVariable(name: "ps", arg: 1, scope: !1432, file: !1433, line: 1135, type: !1436)
!1432 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !1434, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1437)
!1433 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !1436}
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1437 = !{!1431}
!1438 = !DILocation(line: 0, scope: !1432, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 48, column: 18, scope: !420)
!1440 = !DILocalVariable(name: "__dest", arg: 1, scope: !1441, file: !1442, line: 57, type: !107)
!1441 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1445)
!1442 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!107, !107, !108, !110}
!1445 = !{!1440, !1446, !1447}
!1446 = !DILocalVariable(name: "__ch", arg: 2, scope: !1441, file: !1442, line: 57, type: !108)
!1447 = !DILocalVariable(name: "__len", arg: 3, scope: !1441, file: !1442, line: 57, type: !110)
!1448 = !DILocation(line: 0, scope: !1441, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 1137, column: 3, scope: !1432, inlinedAt: !1439)
!1450 = !DILocation(line: 59, column: 10, scope: !1441, inlinedAt: !1449)
!1451 = !DILocation(line: 49, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !420, file: !421, line: 49, column: 7)
!1453 = !DILocation(line: 49, column: 39, scope: !1452)
!1454 = !DILocation(line: 49, column: 44, scope: !1452)
!1455 = !DILocation(line: 54, column: 1, scope: !420)
!1456 = !DISubprogram(name: "mbrtoc32", scope: !432, file: !432, line: 57, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!110, !1459, !811, !110, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1436)
!1462 = distinct !DISubprogram(name: "clone_quoting_options", scope: !451, file: !451, line: 113, type: !1463, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1466)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1466 = !{!1467, !1468, !1469}
!1467 = !DILocalVariable(name: "o", arg: 1, scope: !1462, file: !451, line: 113, type: !1465)
!1468 = !DILocalVariable(name: "saved_errno", scope: !1462, file: !451, line: 115, type: !108)
!1469 = !DILocalVariable(name: "p", scope: !1462, file: !451, line: 116, type: !1465)
!1470 = !DILocation(line: 0, scope: !1462)
!1471 = !DILocation(line: 115, column: 21, scope: !1462)
!1472 = !DILocation(line: 116, column: 40, scope: !1462)
!1473 = !DILocation(line: 116, column: 31, scope: !1462)
!1474 = !DILocation(line: 118, column: 9, scope: !1462)
!1475 = !DILocation(line: 119, column: 3, scope: !1462)
!1476 = distinct !DISubprogram(name: "get_quoting_style", scope: !451, file: !451, line: 124, type: !1477, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1481)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!477, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "o", arg: 1, scope: !1476, file: !451, line: 124, type: !1479)
!1483 = !DILocation(line: 0, scope: !1476)
!1484 = !DILocation(line: 126, column: 11, scope: !1476)
!1485 = !DILocation(line: 126, column: 46, scope: !1476)
!1486 = !{!1487, !821, i64 0}
!1487 = !{!"quoting_options", !821, i64 0, !821, i64 4, !762, i64 8, !761, i64 40, !761, i64 48}
!1488 = !DILocation(line: 126, column: 3, scope: !1476)
!1489 = distinct !DISubprogram(name: "set_quoting_style", scope: !451, file: !451, line: 132, type: !1490, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1465, !477}
!1492 = !{!1493, !1494}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !451, line: 132, type: !1465)
!1494 = !DILocalVariable(name: "s", arg: 2, scope: !1489, file: !451, line: 132, type: !477)
!1495 = !DILocation(line: 0, scope: !1489)
!1496 = !DILocation(line: 134, column: 4, scope: !1489)
!1497 = !DILocation(line: 134, column: 45, scope: !1489)
!1498 = !DILocation(line: 135, column: 1, scope: !1489)
!1499 = distinct !DISubprogram(name: "set_char_quoting", scope: !451, file: !451, line: 143, type: !1500, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!108, !1465, !4, !108}
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1509, !1510}
!1503 = !DILocalVariable(name: "o", arg: 1, scope: !1499, file: !451, line: 143, type: !1465)
!1504 = !DILocalVariable(name: "c", arg: 2, scope: !1499, file: !451, line: 143, type: !4)
!1505 = !DILocalVariable(name: "i", arg: 3, scope: !1499, file: !451, line: 143, type: !108)
!1506 = !DILocalVariable(name: "uc", scope: !1499, file: !451, line: 145, type: !113)
!1507 = !DILocalVariable(name: "p", scope: !1499, file: !451, line: 146, type: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1509 = !DILocalVariable(name: "shift", scope: !1499, file: !451, line: 148, type: !108)
!1510 = !DILocalVariable(name: "r", scope: !1499, file: !451, line: 149, type: !78)
!1511 = !DILocation(line: 0, scope: !1499)
!1512 = !DILocation(line: 147, column: 6, scope: !1499)
!1513 = !DILocation(line: 147, column: 41, scope: !1499)
!1514 = !DILocation(line: 147, column: 62, scope: !1499)
!1515 = !DILocation(line: 147, column: 57, scope: !1499)
!1516 = !DILocation(line: 148, column: 15, scope: !1499)
!1517 = !DILocation(line: 149, column: 21, scope: !1499)
!1518 = !DILocation(line: 149, column: 24, scope: !1499)
!1519 = !DILocation(line: 149, column: 34, scope: !1499)
!1520 = !DILocation(line: 150, column: 19, scope: !1499)
!1521 = !DILocation(line: 150, column: 24, scope: !1499)
!1522 = !DILocation(line: 150, column: 6, scope: !1499)
!1523 = !DILocation(line: 151, column: 3, scope: !1499)
!1524 = distinct !DISubprogram(name: "set_quoting_flags", scope: !451, file: !451, line: 159, type: !1525, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1527)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!108, !1465, !108}
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "o", arg: 1, scope: !1524, file: !451, line: 159, type: !1465)
!1529 = !DILocalVariable(name: "i", arg: 2, scope: !1524, file: !451, line: 159, type: !108)
!1530 = !DILocalVariable(name: "r", scope: !1524, file: !451, line: 163, type: !108)
!1531 = !DILocation(line: 0, scope: !1524)
!1532 = !DILocation(line: 161, column: 8, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1524, file: !451, line: 161, column: 7)
!1534 = !DILocation(line: 161, column: 7, scope: !1524)
!1535 = !DILocation(line: 163, column: 14, scope: !1524)
!1536 = !{!1487, !821, i64 4}
!1537 = !DILocation(line: 164, column: 12, scope: !1524)
!1538 = !DILocation(line: 165, column: 3, scope: !1524)
!1539 = distinct !DISubprogram(name: "set_custom_quoting", scope: !451, file: !451, line: 169, type: !1540, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1465, !72, !72}
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "o", arg: 1, scope: !1539, file: !451, line: 169, type: !1465)
!1544 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1539, file: !451, line: 170, type: !72)
!1545 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1539, file: !451, line: 170, type: !72)
!1546 = !DILocation(line: 0, scope: !1539)
!1547 = !DILocation(line: 172, column: 8, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !451, line: 172, column: 7)
!1549 = !DILocation(line: 172, column: 7, scope: !1539)
!1550 = !DILocation(line: 174, column: 12, scope: !1539)
!1551 = !DILocation(line: 175, column: 8, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1539, file: !451, line: 175, column: 7)
!1553 = !DILocation(line: 175, column: 19, scope: !1552)
!1554 = !DILocation(line: 176, column: 5, scope: !1552)
!1555 = !DILocation(line: 177, column: 6, scope: !1539)
!1556 = !DILocation(line: 177, column: 17, scope: !1539)
!1557 = !{!1487, !761, i64 40}
!1558 = !DILocation(line: 178, column: 6, scope: !1539)
!1559 = !DILocation(line: 178, column: 18, scope: !1539)
!1560 = !{!1487, !761, i64 48}
!1561 = !DILocation(line: 179, column: 1, scope: !1539)
!1562 = !DISubprogram(name: "abort", scope: !941, file: !941, line: 598, type: !382, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1563 = distinct !DISubprogram(name: "quotearg_buffer", scope: !451, file: !451, line: 774, type: !1564, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!110, !255, !110, !72, !110, !1479}
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1567 = !DILocalVariable(name: "buffer", arg: 1, scope: !1563, file: !451, line: 774, type: !255)
!1568 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1563, file: !451, line: 774, type: !110)
!1569 = !DILocalVariable(name: "arg", arg: 3, scope: !1563, file: !451, line: 775, type: !72)
!1570 = !DILocalVariable(name: "argsize", arg: 4, scope: !1563, file: !451, line: 775, type: !110)
!1571 = !DILocalVariable(name: "o", arg: 5, scope: !1563, file: !451, line: 776, type: !1479)
!1572 = !DILocalVariable(name: "p", scope: !1563, file: !451, line: 778, type: !1479)
!1573 = !DILocalVariable(name: "saved_errno", scope: !1563, file: !451, line: 779, type: !108)
!1574 = !DILocalVariable(name: "r", scope: !1563, file: !451, line: 780, type: !110)
!1575 = !DILocation(line: 0, scope: !1563)
!1576 = !DILocation(line: 778, column: 37, scope: !1563)
!1577 = !DILocation(line: 779, column: 21, scope: !1563)
!1578 = !DILocation(line: 781, column: 43, scope: !1563)
!1579 = !DILocation(line: 781, column: 53, scope: !1563)
!1580 = !DILocation(line: 781, column: 63, scope: !1563)
!1581 = !DILocation(line: 782, column: 43, scope: !1563)
!1582 = !DILocation(line: 782, column: 58, scope: !1563)
!1583 = !DILocation(line: 780, column: 14, scope: !1563)
!1584 = !DILocation(line: 783, column: 9, scope: !1563)
!1585 = !DILocation(line: 784, column: 3, scope: !1563)
!1586 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !451, file: !451, line: 251, type: !1587, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1591)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!110, !255, !110, !72, !110, !477, !108, !1589, !72, !72}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1617, !1619, !1622, !1623, !1624, !1625, !1628, !1629, !1631, !1632, !1635, !1639, !1640, !1648, !1651, !1652, !1653}
!1592 = !DILocalVariable(name: "buffer", arg: 1, scope: !1586, file: !451, line: 251, type: !255)
!1593 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1586, file: !451, line: 251, type: !110)
!1594 = !DILocalVariable(name: "arg", arg: 3, scope: !1586, file: !451, line: 252, type: !72)
!1595 = !DILocalVariable(name: "argsize", arg: 4, scope: !1586, file: !451, line: 252, type: !110)
!1596 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1586, file: !451, line: 253, type: !477)
!1597 = !DILocalVariable(name: "flags", arg: 6, scope: !1586, file: !451, line: 253, type: !108)
!1598 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1586, file: !451, line: 254, type: !1589)
!1599 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1586, file: !451, line: 255, type: !72)
!1600 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1586, file: !451, line: 256, type: !72)
!1601 = !DILocalVariable(name: "unibyte_locale", scope: !1586, file: !451, line: 258, type: !234)
!1602 = !DILocalVariable(name: "len", scope: !1586, file: !451, line: 260, type: !110)
!1603 = !DILocalVariable(name: "orig_buffersize", scope: !1586, file: !451, line: 261, type: !110)
!1604 = !DILocalVariable(name: "quote_string", scope: !1586, file: !451, line: 262, type: !72)
!1605 = !DILocalVariable(name: "quote_string_len", scope: !1586, file: !451, line: 263, type: !110)
!1606 = !DILocalVariable(name: "backslash_escapes", scope: !1586, file: !451, line: 264, type: !234)
!1607 = !DILocalVariable(name: "elide_outer_quotes", scope: !1586, file: !451, line: 265, type: !234)
!1608 = !DILocalVariable(name: "encountered_single_quote", scope: !1586, file: !451, line: 266, type: !234)
!1609 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1586, file: !451, line: 267, type: !234)
!1610 = !DILabel(scope: !1586, name: "process_input", file: !451, line: 308)
!1611 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1586, file: !451, line: 309, type: !234)
!1612 = !DILocalVariable(name: "lq", scope: !1613, file: !451, line: 361, type: !72)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !451, line: 361, column: 11)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 360, column: 13)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !451, line: 333, column: 7)
!1616 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 312, column: 5)
!1617 = !DILocalVariable(name: "i", scope: !1618, file: !451, line: 395, type: !110)
!1618 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 395, column: 3)
!1619 = !DILocalVariable(name: "is_right_quote", scope: !1620, file: !451, line: 397, type: !234)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !451, line: 396, column: 5)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !451, line: 395, column: 3)
!1622 = !DILocalVariable(name: "escaping", scope: !1620, file: !451, line: 398, type: !234)
!1623 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1620, file: !451, line: 399, type: !234)
!1624 = !DILocalVariable(name: "c", scope: !1620, file: !451, line: 417, type: !113)
!1625 = !DILabel(scope: !1626, name: "c_and_shell_escape", file: !451, line: 502)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 478, column: 9)
!1627 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 419, column: 9)
!1628 = !DILabel(scope: !1626, name: "c_escape", file: !451, line: 507)
!1629 = !DILocalVariable(name: "m", scope: !1630, file: !451, line: 598, type: !110)
!1630 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 596, column: 11)
!1631 = !DILocalVariable(name: "printable", scope: !1630, file: !451, line: 600, type: !234)
!1632 = !DILocalVariable(name: "mbs", scope: !1633, file: !451, line: 609, type: !526)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !451, line: 608, column: 15)
!1634 = distinct !DILexicalBlock(scope: !1630, file: !451, line: 602, column: 17)
!1635 = !DILocalVariable(name: "w", scope: !1636, file: !451, line: 618, type: !431)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !451, line: 617, column: 19)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !451, line: 616, column: 17)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !451, line: 616, column: 17)
!1639 = !DILocalVariable(name: "bytes", scope: !1636, file: !451, line: 619, type: !110)
!1640 = !DILocalVariable(name: "j", scope: !1641, file: !451, line: 648, type: !110)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !451, line: 648, column: 29)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !451, line: 647, column: 27)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !451, line: 645, column: 29)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !451, line: 636, column: 23)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !451, line: 628, column: 30)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !451, line: 623, column: 30)
!1647 = distinct !DILexicalBlock(scope: !1636, file: !451, line: 621, column: 25)
!1648 = !DILocalVariable(name: "ilim", scope: !1649, file: !451, line: 674, type: !110)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !451, line: 671, column: 15)
!1650 = distinct !DILexicalBlock(scope: !1630, file: !451, line: 670, column: 17)
!1651 = !DILabel(scope: !1620, name: "store_escape", file: !451, line: 709)
!1652 = !DILabel(scope: !1620, name: "store_c", file: !451, line: 712)
!1653 = !DILabel(scope: !1586, name: "force_outer_quoting_style", file: !451, line: 753)
!1654 = distinct !DIAssignID()
!1655 = distinct !DIAssignID()
!1656 = distinct !DIAssignID()
!1657 = distinct !DIAssignID()
!1658 = distinct !DIAssignID()
!1659 = !DILocation(line: 0, scope: !1633)
!1660 = distinct !DIAssignID()
!1661 = !DILocation(line: 0, scope: !1636)
!1662 = !DILocation(line: 0, scope: !1586)
!1663 = !DILocation(line: 258, column: 25, scope: !1586)
!1664 = !DILocation(line: 258, column: 36, scope: !1586)
!1665 = !DILocation(line: 267, column: 3, scope: !1586)
!1666 = !DILocation(line: 261, column: 10, scope: !1586)
!1667 = !DILocation(line: 262, column: 15, scope: !1586)
!1668 = !DILocation(line: 263, column: 10, scope: !1586)
!1669 = !DILocation(line: 308, column: 2, scope: !1586)
!1670 = !DILocation(line: 311, column: 3, scope: !1586)
!1671 = !DILocation(line: 318, column: 11, scope: !1616)
!1672 = !DILocation(line: 319, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !451, line: 319, column: 9)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !451, line: 319, column: 9)
!1675 = distinct !DILexicalBlock(scope: !1616, file: !451, line: 318, column: 11)
!1676 = !DILocation(line: 319, column: 9, scope: !1674)
!1677 = !DILocation(line: 0, scope: !517, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 357, column: 26, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !451, line: 335, column: 11)
!1680 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 334, column: 13)
!1681 = !DILocation(line: 199, column: 29, scope: !517, inlinedAt: !1678)
!1682 = !DILocation(line: 201, column: 19, scope: !1683, inlinedAt: !1678)
!1683 = distinct !DILexicalBlock(scope: !517, file: !451, line: 201, column: 7)
!1684 = !DILocation(line: 201, column: 7, scope: !517, inlinedAt: !1678)
!1685 = !DILocation(line: 229, column: 3, scope: !517, inlinedAt: !1678)
!1686 = !DILocation(line: 230, column: 3, scope: !517, inlinedAt: !1678)
!1687 = !DILocalVariable(name: "ps", arg: 1, scope: !1688, file: !1433, line: 1135, type: !1691)
!1688 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !1689, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1692)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1691}
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1692 = !{!1687}
!1693 = !DILocation(line: 0, scope: !1688, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 230, column: 18, scope: !517, inlinedAt: !1678)
!1695 = !DILocalVariable(name: "__dest", arg: 1, scope: !1696, file: !1442, line: 57, type: !107)
!1696 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1697)
!1697 = !{!1695, !1698, !1699}
!1698 = !DILocalVariable(name: "__ch", arg: 2, scope: !1696, file: !1442, line: 57, type: !108)
!1699 = !DILocalVariable(name: "__len", arg: 3, scope: !1696, file: !1442, line: 57, type: !110)
!1700 = !DILocation(line: 0, scope: !1696, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 1137, column: 3, scope: !1688, inlinedAt: !1694)
!1702 = !DILocation(line: 59, column: 10, scope: !1696, inlinedAt: !1701)
!1703 = !DILocation(line: 231, column: 7, scope: !1704, inlinedAt: !1678)
!1704 = distinct !DILexicalBlock(scope: !517, file: !451, line: 231, column: 7)
!1705 = !DILocation(line: 231, column: 40, scope: !1704, inlinedAt: !1678)
!1706 = !DILocation(line: 231, column: 45, scope: !1704, inlinedAt: !1678)
!1707 = !DILocation(line: 235, column: 1, scope: !517, inlinedAt: !1678)
!1708 = !DILocation(line: 0, scope: !517, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 358, column: 27, scope: !1679)
!1710 = !DILocation(line: 199, column: 29, scope: !517, inlinedAt: !1709)
!1711 = !DILocation(line: 201, column: 19, scope: !1683, inlinedAt: !1709)
!1712 = !DILocation(line: 201, column: 7, scope: !517, inlinedAt: !1709)
!1713 = !DILocation(line: 229, column: 3, scope: !517, inlinedAt: !1709)
!1714 = !DILocation(line: 230, column: 3, scope: !517, inlinedAt: !1709)
!1715 = !DILocation(line: 0, scope: !1688, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 230, column: 18, scope: !517, inlinedAt: !1709)
!1717 = !DILocation(line: 0, scope: !1696, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 1137, column: 3, scope: !1688, inlinedAt: !1716)
!1719 = !DILocation(line: 59, column: 10, scope: !1696, inlinedAt: !1718)
!1720 = !DILocation(line: 231, column: 7, scope: !1704, inlinedAt: !1709)
!1721 = !DILocation(line: 231, column: 40, scope: !1704, inlinedAt: !1709)
!1722 = !DILocation(line: 231, column: 45, scope: !1704, inlinedAt: !1709)
!1723 = !DILocation(line: 235, column: 1, scope: !517, inlinedAt: !1709)
!1724 = !DILocation(line: 360, column: 13, scope: !1615)
!1725 = !DILocation(line: 0, scope: !1613)
!1726 = !DILocation(line: 361, column: 45, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1613, file: !451, line: 361, column: 11)
!1728 = !DILocation(line: 361, column: 11, scope: !1613)
!1729 = !DILocation(line: 362, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !451, line: 362, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !451, line: 362, column: 13)
!1732 = !DILocation(line: 362, column: 13, scope: !1731)
!1733 = !DILocation(line: 361, column: 52, scope: !1727)
!1734 = distinct !{!1734, !1728, !1735, !867}
!1735 = !DILocation(line: 362, column: 13, scope: !1613)
!1736 = !DILocation(line: 365, column: 28, scope: !1615)
!1737 = !DILocation(line: 260, column: 10, scope: !1586)
!1738 = !DILocation(line: 367, column: 7, scope: !1616)
!1739 = !DILocation(line: 373, column: 7, scope: !1616)
!1740 = !DILocation(line: 381, column: 11, scope: !1616)
!1741 = !DILocation(line: 376, column: 11, scope: !1616)
!1742 = !DILocation(line: 382, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !451, line: 382, column: 9)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !451, line: 382, column: 9)
!1745 = distinct !DILexicalBlock(scope: !1616, file: !451, line: 381, column: 11)
!1746 = !DILocation(line: 382, column: 9, scope: !1744)
!1747 = !DILocation(line: 389, column: 7, scope: !1616)
!1748 = !DILocation(line: 392, column: 7, scope: !1616)
!1749 = !DILocation(line: 0, scope: !1618)
!1750 = !DILocation(line: 395, column: 8, scope: !1618)
!1751 = !DILocation(line: 395, scope: !1618)
!1752 = !DILocation(line: 395, column: 34, scope: !1621)
!1753 = !DILocation(line: 395, column: 26, scope: !1621)
!1754 = !DILocation(line: 395, column: 48, scope: !1621)
!1755 = !DILocation(line: 395, column: 55, scope: !1621)
!1756 = !DILocation(line: 395, column: 3, scope: !1618)
!1757 = !DILocation(line: 395, column: 67, scope: !1621)
!1758 = !DILocation(line: 0, scope: !1620)
!1759 = !DILocation(line: 402, column: 11, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 401, column: 11)
!1761 = !DILocation(line: 404, column: 17, scope: !1760)
!1762 = !DILocation(line: 405, column: 39, scope: !1760)
!1763 = !DILocation(line: 409, column: 32, scope: !1760)
!1764 = !DILocation(line: 405, column: 19, scope: !1760)
!1765 = !DILocation(line: 405, column: 15, scope: !1760)
!1766 = !DILocation(line: 410, column: 11, scope: !1760)
!1767 = !DILocation(line: 410, column: 25, scope: !1760)
!1768 = !DILocalVariable(name: "__s1", arg: 1, scope: !1769, file: !833, line: 974, type: !965)
!1769 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1402, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1770)
!1770 = !{!1768, !1771, !1772}
!1771 = !DILocalVariable(name: "__s2", arg: 2, scope: !1769, file: !833, line: 974, type: !965)
!1772 = !DILocalVariable(name: "__n", arg: 3, scope: !1769, file: !833, line: 974, type: !110)
!1773 = !DILocation(line: 0, scope: !1769, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 410, column: 14, scope: !1760)
!1775 = !DILocation(line: 976, column: 11, scope: !1769, inlinedAt: !1774)
!1776 = !DILocation(line: 976, column: 10, scope: !1769, inlinedAt: !1774)
!1777 = !DILocation(line: 401, column: 11, scope: !1620)
!1778 = !DILocation(line: 417, column: 25, scope: !1620)
!1779 = !DILocation(line: 418, column: 7, scope: !1620)
!1780 = !DILocation(line: 421, column: 15, scope: !1627)
!1781 = !DILocation(line: 423, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !451, line: 423, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !451, line: 422, column: 13)
!1784 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 421, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !451, line: 423, column: 15)
!1787 = !DILocation(line: 423, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !451, line: 423, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !451, line: 423, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !451, line: 423, column: 15)
!1791 = !DILocation(line: 423, column: 15, scope: !1789)
!1792 = !DILocation(line: 423, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !451, line: 423, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !451, line: 423, column: 15)
!1795 = !DILocation(line: 423, column: 15, scope: !1794)
!1796 = !DILocation(line: 423, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !451, line: 423, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !451, line: 423, column: 15)
!1799 = !DILocation(line: 423, column: 15, scope: !1798)
!1800 = !DILocation(line: 423, column: 15, scope: !1790)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !451, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1782, file: !451, line: 423, column: 15)
!1804 = !DILocation(line: 423, column: 15, scope: !1803)
!1805 = !DILocation(line: 431, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1783, file: !451, line: 430, column: 19)
!1807 = !DILocation(line: 431, column: 24, scope: !1806)
!1808 = !DILocation(line: 431, column: 28, scope: !1806)
!1809 = !DILocation(line: 431, column: 38, scope: !1806)
!1810 = !DILocation(line: 431, column: 48, scope: !1806)
!1811 = !DILocation(line: 431, column: 59, scope: !1806)
!1812 = !DILocation(line: 433, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !451, line: 433, column: 19)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !451, line: 433, column: 19)
!1815 = distinct !DILexicalBlock(scope: !1806, file: !451, line: 432, column: 17)
!1816 = !DILocation(line: 433, column: 19, scope: !1814)
!1817 = !DILocation(line: 434, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !451, line: 434, column: 19)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !451, line: 434, column: 19)
!1820 = !DILocation(line: 434, column: 19, scope: !1819)
!1821 = !DILocation(line: 435, column: 17, scope: !1815)
!1822 = !DILocation(line: 442, column: 20, scope: !1784)
!1823 = !DILocation(line: 447, column: 11, scope: !1627)
!1824 = !DILocation(line: 450, column: 19, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 448, column: 13)
!1826 = !DILocation(line: 456, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !451, line: 455, column: 19)
!1828 = !DILocation(line: 456, column: 24, scope: !1827)
!1829 = !DILocation(line: 456, column: 28, scope: !1827)
!1830 = !DILocation(line: 456, column: 38, scope: !1827)
!1831 = !DILocation(line: 456, column: 41, scope: !1827)
!1832 = !DILocation(line: 456, column: 52, scope: !1827)
!1833 = !DILocation(line: 455, column: 19, scope: !1825)
!1834 = !DILocation(line: 457, column: 25, scope: !1827)
!1835 = !DILocation(line: 457, column: 17, scope: !1827)
!1836 = !DILocation(line: 464, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1827, file: !451, line: 458, column: 19)
!1838 = !DILocation(line: 468, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !451, line: 468, column: 21)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !451, line: 468, column: 21)
!1841 = !DILocation(line: 468, column: 21, scope: !1840)
!1842 = !DILocation(line: 469, column: 21, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !451, line: 469, column: 21)
!1844 = distinct !DILexicalBlock(scope: !1837, file: !451, line: 469, column: 21)
!1845 = !DILocation(line: 469, column: 21, scope: !1844)
!1846 = !DILocation(line: 470, column: 21, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !451, line: 470, column: 21)
!1848 = distinct !DILexicalBlock(scope: !1837, file: !451, line: 470, column: 21)
!1849 = !DILocation(line: 470, column: 21, scope: !1848)
!1850 = !DILocation(line: 471, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !451, line: 471, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1837, file: !451, line: 471, column: 21)
!1853 = !DILocation(line: 471, column: 21, scope: !1852)
!1854 = !DILocation(line: 472, column: 21, scope: !1837)
!1855 = !DILocation(line: 482, column: 33, scope: !1626)
!1856 = !DILocation(line: 483, column: 33, scope: !1626)
!1857 = !DILocation(line: 485, column: 33, scope: !1626)
!1858 = !DILocation(line: 486, column: 33, scope: !1626)
!1859 = !DILocation(line: 487, column: 33, scope: !1626)
!1860 = !DILocation(line: 490, column: 17, scope: !1626)
!1861 = !DILocation(line: 492, column: 21, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !451, line: 491, column: 15)
!1863 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 490, column: 17)
!1864 = !DILocation(line: 499, column: 35, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 499, column: 17)
!1866 = !DILocation(line: 0, scope: !1626)
!1867 = !DILocation(line: 502, column: 11, scope: !1626)
!1868 = !DILocation(line: 504, column: 17, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 503, column: 17)
!1870 = !DILocation(line: 507, column: 11, scope: !1626)
!1871 = !DILocation(line: 508, column: 17, scope: !1626)
!1872 = !DILocation(line: 517, column: 15, scope: !1627)
!1873 = !DILocation(line: 517, column: 40, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 517, column: 15)
!1875 = !DILocation(line: 517, column: 47, scope: !1874)
!1876 = !DILocation(line: 517, column: 18, scope: !1874)
!1877 = !DILocation(line: 521, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 521, column: 15)
!1879 = !DILocation(line: 521, column: 15, scope: !1627)
!1880 = !DILocation(line: 525, column: 11, scope: !1627)
!1881 = !DILocation(line: 537, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 536, column: 15)
!1883 = !DILocation(line: 536, column: 15, scope: !1627)
!1884 = !DILocation(line: 544, column: 15, scope: !1627)
!1885 = !DILocation(line: 546, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !451, line: 545, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1627, file: !451, line: 544, column: 15)
!1888 = !DILocation(line: 549, column: 19, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !451, line: 549, column: 19)
!1890 = !DILocation(line: 549, column: 30, scope: !1889)
!1891 = !DILocation(line: 558, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !451, line: 558, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1886, file: !451, line: 558, column: 15)
!1894 = !DILocation(line: 558, column: 15, scope: !1893)
!1895 = !DILocation(line: 559, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !451, line: 559, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1886, file: !451, line: 559, column: 15)
!1898 = !DILocation(line: 559, column: 15, scope: !1897)
!1899 = !DILocation(line: 560, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !451, line: 560, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1886, file: !451, line: 560, column: 15)
!1902 = !DILocation(line: 560, column: 15, scope: !1901)
!1903 = !DILocation(line: 562, column: 13, scope: !1886)
!1904 = !DILocation(line: 602, column: 17, scope: !1630)
!1905 = !DILocation(line: 0, scope: !1630)
!1906 = !DILocation(line: 605, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1634, file: !451, line: 603, column: 15)
!1908 = !DILocation(line: 605, column: 41, scope: !1907)
!1909 = !DILocation(line: 606, column: 15, scope: !1907)
!1910 = !DILocation(line: 609, column: 17, scope: !1633)
!1911 = !DILocation(line: 0, scope: !1688, inlinedAt: !1912)
!1912 = distinct !DILocation(line: 609, column: 32, scope: !1633)
!1913 = !DILocation(line: 0, scope: !1696, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 1137, column: 3, scope: !1688, inlinedAt: !1912)
!1915 = !DILocation(line: 59, column: 10, scope: !1696, inlinedAt: !1914)
!1916 = !DILocation(line: 613, column: 29, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1633, file: !451, line: 613, column: 21)
!1918 = !DILocation(line: 613, column: 21, scope: !1633)
!1919 = !DILocation(line: 614, column: 29, scope: !1917)
!1920 = !DILocation(line: 614, column: 19, scope: !1917)
!1921 = !DILocation(line: 618, column: 21, scope: !1636)
!1922 = !DILocation(line: 620, column: 54, scope: !1636)
!1923 = !DILocation(line: 619, column: 36, scope: !1636)
!1924 = !DILocation(line: 621, column: 25, scope: !1636)
!1925 = !DILocation(line: 631, column: 38, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1645, file: !451, line: 629, column: 23)
!1927 = !DILocation(line: 631, column: 48, scope: !1926)
!1928 = !DILocation(line: 631, column: 25, scope: !1926)
!1929 = !DILocation(line: 626, column: 25, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1646, file: !451, line: 624, column: 23)
!1931 = !DILocation(line: 631, column: 51, scope: !1926)
!1932 = !DILocation(line: 632, column: 28, scope: !1926)
!1933 = !DILocation(line: 631, column: 34, scope: !1926)
!1934 = distinct !{!1934, !1928, !1932, !867}
!1935 = !DILocation(line: 0, scope: !1641)
!1936 = !DILocation(line: 646, column: 29, scope: !1643)
!1937 = !DILocation(line: 648, column: 29, scope: !1641)
!1938 = !DILocation(line: 649, column: 39, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1641, file: !451, line: 648, column: 29)
!1940 = !DILocation(line: 649, column: 31, scope: !1939)
!1941 = !DILocation(line: 648, column: 60, scope: !1939)
!1942 = !DILocation(line: 648, column: 50, scope: !1939)
!1943 = distinct !{!1943, !1937, !1944, !867}
!1944 = !DILocation(line: 654, column: 33, scope: !1641)
!1945 = !DILocation(line: 657, column: 43, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1644, file: !451, line: 657, column: 29)
!1947 = !DILocalVariable(name: "wc", arg: 1, scope: !1948, file: !1949, line: 865, type: !1952)
!1948 = distinct !DISubprogram(name: "c32isprint", scope: !1949, file: !1949, line: 865, type: !1950, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1954)
!1949 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!108, !1952}
!1952 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1953, line: 20, baseType: !78)
!1953 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1954 = !{!1947}
!1955 = !DILocation(line: 0, scope: !1948, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 657, column: 31, scope: !1946)
!1957 = !DILocation(line: 871, column: 10, scope: !1948, inlinedAt: !1956)
!1958 = !DILocation(line: 657, column: 31, scope: !1946)
!1959 = !DILocation(line: 664, column: 23, scope: !1636)
!1960 = !DILocation(line: 665, column: 19, scope: !1637)
!1961 = !DILocation(line: 666, column: 15, scope: !1634)
!1962 = !DILocation(line: 753, column: 2, scope: !1586)
!1963 = !DILocation(line: 756, column: 51, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 756, column: 7)
!1965 = !DILocation(line: 0, scope: !1634)
!1966 = !DILocation(line: 670, column: 19, scope: !1650)
!1967 = !DILocation(line: 670, column: 23, scope: !1650)
!1968 = !DILocation(line: 674, column: 33, scope: !1649)
!1969 = !DILocation(line: 0, scope: !1649)
!1970 = !DILocation(line: 676, column: 17, scope: !1649)
!1971 = !DILocation(line: 678, column: 43, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !451, line: 678, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !451, line: 677, column: 19)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !451, line: 676, column: 17)
!1975 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 676, column: 17)
!1976 = !DILocation(line: 680, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !451, line: 680, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1972, file: !451, line: 679, column: 23)
!1979 = !DILocation(line: 680, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1977, file: !451, line: 680, column: 25)
!1981 = !DILocation(line: 680, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 680, column: 25)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 680, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1980, file: !451, line: 680, column: 25)
!1985 = !DILocation(line: 680, column: 25, scope: !1983)
!1986 = !DILocation(line: 680, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !451, line: 680, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 680, column: 25)
!1989 = !DILocation(line: 680, column: 25, scope: !1988)
!1990 = !DILocation(line: 680, column: 25, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !451, line: 680, column: 25)
!1992 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 680, column: 25)
!1993 = !DILocation(line: 680, column: 25, scope: !1992)
!1994 = !DILocation(line: 680, column: 25, scope: !1984)
!1995 = !DILocation(line: 680, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !451, line: 680, column: 25)
!1997 = distinct !DILexicalBlock(scope: !1977, file: !451, line: 680, column: 25)
!1998 = !DILocation(line: 680, column: 25, scope: !1997)
!1999 = !DILocation(line: 681, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !451, line: 681, column: 25)
!2001 = distinct !DILexicalBlock(scope: !1978, file: !451, line: 681, column: 25)
!2002 = !DILocation(line: 681, column: 25, scope: !2001)
!2003 = !DILocation(line: 682, column: 25, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !451, line: 682, column: 25)
!2005 = distinct !DILexicalBlock(scope: !1978, file: !451, line: 682, column: 25)
!2006 = !DILocation(line: 682, column: 25, scope: !2005)
!2007 = !DILocation(line: 683, column: 38, scope: !1978)
!2008 = !DILocation(line: 683, column: 33, scope: !1978)
!2009 = !DILocation(line: 684, column: 23, scope: !1978)
!2010 = !DILocation(line: 685, column: 30, scope: !1972)
!2011 = !DILocation(line: 687, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !451, line: 687, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !451, line: 687, column: 25)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !451, line: 686, column: 23)
!2015 = distinct !DILexicalBlock(scope: !1972, file: !451, line: 685, column: 30)
!2016 = !DILocation(line: 687, column: 25, scope: !2013)
!2017 = !DILocation(line: 689, column: 23, scope: !2014)
!2018 = !DILocation(line: 690, column: 35, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1973, file: !451, line: 690, column: 25)
!2020 = !DILocation(line: 690, column: 30, scope: !2019)
!2021 = !DILocation(line: 690, column: 25, scope: !1973)
!2022 = !DILocation(line: 692, column: 21, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !451, line: 692, column: 21)
!2024 = distinct !DILexicalBlock(scope: !1973, file: !451, line: 692, column: 21)
!2025 = !DILocation(line: 692, column: 21, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !451, line: 692, column: 21)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !451, line: 692, column: 21)
!2028 = distinct !DILexicalBlock(scope: !2023, file: !451, line: 692, column: 21)
!2029 = !DILocation(line: 692, column: 21, scope: !2027)
!2030 = !DILocation(line: 692, column: 21, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !451, line: 692, column: 21)
!2032 = distinct !DILexicalBlock(scope: !2028, file: !451, line: 692, column: 21)
!2033 = !DILocation(line: 692, column: 21, scope: !2032)
!2034 = !DILocation(line: 692, column: 21, scope: !2028)
!2035 = !DILocation(line: 0, scope: !1973)
!2036 = !DILocation(line: 693, column: 21, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2038, file: !451, line: 693, column: 21)
!2038 = distinct !DILexicalBlock(scope: !1973, file: !451, line: 693, column: 21)
!2039 = !DILocation(line: 693, column: 21, scope: !2038)
!2040 = !DILocation(line: 694, column: 25, scope: !1973)
!2041 = !DILocation(line: 676, column: 17, scope: !1974)
!2042 = distinct !{!2042, !2043, !2044}
!2043 = !DILocation(line: 676, column: 17, scope: !1975)
!2044 = !DILocation(line: 695, column: 19, scope: !1975)
!2045 = !DILocation(line: 409, column: 30, scope: !1760)
!2046 = !DILocation(line: 702, column: 34, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 702, column: 11)
!2048 = !DILocation(line: 704, column: 14, scope: !2047)
!2049 = !DILocation(line: 705, column: 14, scope: !2047)
!2050 = !DILocation(line: 705, column: 35, scope: !2047)
!2051 = !DILocation(line: 705, column: 17, scope: !2047)
!2052 = !DILocation(line: 705, column: 47, scope: !2047)
!2053 = !DILocation(line: 705, column: 65, scope: !2047)
!2054 = !DILocation(line: 706, column: 11, scope: !2047)
!2055 = !DILocation(line: 702, column: 11, scope: !1620)
!2056 = !DILocation(line: 395, column: 15, scope: !1618)
!2057 = !DILocation(line: 709, column: 5, scope: !1620)
!2058 = !DILocation(line: 710, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 710, column: 7)
!2060 = !DILocation(line: 710, column: 7, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2059, file: !451, line: 710, column: 7)
!2062 = !DILocation(line: 710, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !451, line: 710, column: 7)
!2064 = distinct !DILexicalBlock(scope: !2065, file: !451, line: 710, column: 7)
!2065 = distinct !DILexicalBlock(scope: !2061, file: !451, line: 710, column: 7)
!2066 = !DILocation(line: 710, column: 7, scope: !2064)
!2067 = !DILocation(line: 710, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !451, line: 710, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !451, line: 710, column: 7)
!2070 = !DILocation(line: 710, column: 7, scope: !2069)
!2071 = !DILocation(line: 710, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !451, line: 710, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2065, file: !451, line: 710, column: 7)
!2074 = !DILocation(line: 710, column: 7, scope: !2073)
!2075 = !DILocation(line: 710, column: 7, scope: !2065)
!2076 = !DILocation(line: 710, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !451, line: 710, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2059, file: !451, line: 710, column: 7)
!2079 = !DILocation(line: 710, column: 7, scope: !2078)
!2080 = !DILocation(line: 712, column: 5, scope: !1620)
!2081 = !DILocation(line: 713, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !451, line: 713, column: 7)
!2083 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 713, column: 7)
!2084 = !DILocation(line: 417, column: 21, scope: !1620)
!2085 = !DILocation(line: 713, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !451, line: 713, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !451, line: 713, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2082, file: !451, line: 713, column: 7)
!2089 = !DILocation(line: 713, column: 7, scope: !2087)
!2090 = !DILocation(line: 713, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !451, line: 713, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2088, file: !451, line: 713, column: 7)
!2093 = !DILocation(line: 713, column: 7, scope: !2092)
!2094 = !DILocation(line: 713, column: 7, scope: !2088)
!2095 = !DILocation(line: 714, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !451, line: 714, column: 7)
!2097 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 714, column: 7)
!2098 = !DILocation(line: 714, column: 7, scope: !2097)
!2099 = !DILocation(line: 716, column: 11, scope: !1620)
!2100 = !DILocation(line: 718, column: 5, scope: !1621)
!2101 = !DILocation(line: 395, column: 82, scope: !1621)
!2102 = !DILocation(line: 395, column: 3, scope: !1621)
!2103 = distinct !{!2103, !1756, !2104, !867}
!2104 = !DILocation(line: 718, column: 5, scope: !1618)
!2105 = !DILocation(line: 720, column: 11, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 720, column: 7)
!2107 = !DILocation(line: 720, column: 16, scope: !2106)
!2108 = !DILocation(line: 728, column: 51, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 728, column: 7)
!2110 = !DILocation(line: 731, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2109, file: !451, line: 730, column: 5)
!2112 = !DILocation(line: 732, column: 16, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2111, file: !451, line: 731, column: 11)
!2114 = !DILocation(line: 732, column: 9, scope: !2113)
!2115 = !DILocation(line: 736, column: 18, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !451, line: 736, column: 16)
!2117 = !DILocation(line: 736, column: 29, scope: !2116)
!2118 = !DILocation(line: 745, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 745, column: 7)
!2120 = !DILocation(line: 745, column: 20, scope: !2119)
!2121 = !DILocation(line: 746, column: 12, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !451, line: 746, column: 5)
!2123 = distinct !DILexicalBlock(scope: !2119, file: !451, line: 746, column: 5)
!2124 = !DILocation(line: 746, column: 5, scope: !2123)
!2125 = !DILocation(line: 747, column: 7, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !451, line: 747, column: 7)
!2127 = distinct !DILexicalBlock(scope: !2122, file: !451, line: 747, column: 7)
!2128 = !DILocation(line: 747, column: 7, scope: !2127)
!2129 = !DILocation(line: 746, column: 39, scope: !2122)
!2130 = distinct !{!2130, !2124, !2131, !867}
!2131 = !DILocation(line: 747, column: 7, scope: !2123)
!2132 = !DILocation(line: 749, column: 11, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 749, column: 7)
!2134 = !DILocation(line: 749, column: 7, scope: !1586)
!2135 = !DILocation(line: 750, column: 5, scope: !2133)
!2136 = !DILocation(line: 750, column: 17, scope: !2133)
!2137 = !DILocation(line: 756, column: 21, scope: !1964)
!2138 = !DILocation(line: 760, column: 42, scope: !1586)
!2139 = !DILocation(line: 758, column: 10, scope: !1586)
!2140 = !DILocation(line: 758, column: 3, scope: !1586)
!2141 = !DILocation(line: 762, column: 1, scope: !1586)
!2142 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !941, file: !941, line: 98, type: !2143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!110}
!2145 = !DISubprogram(name: "strlen", scope: !937, file: !937, line: 407, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!112, !72}
!2148 = !DISubprogram(name: "iswprint", scope: !2149, file: !2149, line: 120, type: !1950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2150 = distinct !DISubprogram(name: "quotearg_alloc", scope: !451, file: !451, line: 788, type: !2151, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!255, !72, !110, !1479}
!2153 = !{!2154, !2155, !2156}
!2154 = !DILocalVariable(name: "arg", arg: 1, scope: !2150, file: !451, line: 788, type: !72)
!2155 = !DILocalVariable(name: "argsize", arg: 2, scope: !2150, file: !451, line: 788, type: !110)
!2156 = !DILocalVariable(name: "o", arg: 3, scope: !2150, file: !451, line: 789, type: !1479)
!2157 = !DILocation(line: 0, scope: !2150)
!2158 = !DILocalVariable(name: "arg", arg: 1, scope: !2159, file: !451, line: 801, type: !72)
!2159 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !451, file: !451, line: 801, type: !2160, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!255, !72, !110, !694, !1479}
!2162 = !{!2158, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170}
!2163 = !DILocalVariable(name: "argsize", arg: 2, scope: !2159, file: !451, line: 801, type: !110)
!2164 = !DILocalVariable(name: "size", arg: 3, scope: !2159, file: !451, line: 801, type: !694)
!2165 = !DILocalVariable(name: "o", arg: 4, scope: !2159, file: !451, line: 802, type: !1479)
!2166 = !DILocalVariable(name: "p", scope: !2159, file: !451, line: 804, type: !1479)
!2167 = !DILocalVariable(name: "saved_errno", scope: !2159, file: !451, line: 805, type: !108)
!2168 = !DILocalVariable(name: "flags", scope: !2159, file: !451, line: 807, type: !108)
!2169 = !DILocalVariable(name: "bufsize", scope: !2159, file: !451, line: 808, type: !110)
!2170 = !DILocalVariable(name: "buf", scope: !2159, file: !451, line: 812, type: !255)
!2171 = !DILocation(line: 0, scope: !2159, inlinedAt: !2172)
!2172 = distinct !DILocation(line: 791, column: 10, scope: !2150)
!2173 = !DILocation(line: 804, column: 37, scope: !2159, inlinedAt: !2172)
!2174 = !DILocation(line: 805, column: 21, scope: !2159, inlinedAt: !2172)
!2175 = !DILocation(line: 807, column: 18, scope: !2159, inlinedAt: !2172)
!2176 = !DILocation(line: 807, column: 24, scope: !2159, inlinedAt: !2172)
!2177 = !DILocation(line: 808, column: 72, scope: !2159, inlinedAt: !2172)
!2178 = !DILocation(line: 809, column: 56, scope: !2159, inlinedAt: !2172)
!2179 = !DILocation(line: 810, column: 49, scope: !2159, inlinedAt: !2172)
!2180 = !DILocation(line: 811, column: 49, scope: !2159, inlinedAt: !2172)
!2181 = !DILocation(line: 808, column: 20, scope: !2159, inlinedAt: !2172)
!2182 = !DILocation(line: 811, column: 62, scope: !2159, inlinedAt: !2172)
!2183 = !DILocation(line: 812, column: 15, scope: !2159, inlinedAt: !2172)
!2184 = !DILocation(line: 813, column: 60, scope: !2159, inlinedAt: !2172)
!2185 = !DILocation(line: 815, column: 32, scope: !2159, inlinedAt: !2172)
!2186 = !DILocation(line: 815, column: 47, scope: !2159, inlinedAt: !2172)
!2187 = !DILocation(line: 813, column: 3, scope: !2159, inlinedAt: !2172)
!2188 = !DILocation(line: 816, column: 9, scope: !2159, inlinedAt: !2172)
!2189 = !DILocation(line: 791, column: 3, scope: !2150)
!2190 = !DILocation(line: 0, scope: !2159)
!2191 = !DILocation(line: 804, column: 37, scope: !2159)
!2192 = !DILocation(line: 805, column: 21, scope: !2159)
!2193 = !DILocation(line: 807, column: 18, scope: !2159)
!2194 = !DILocation(line: 807, column: 27, scope: !2159)
!2195 = !DILocation(line: 807, column: 24, scope: !2159)
!2196 = !DILocation(line: 808, column: 72, scope: !2159)
!2197 = !DILocation(line: 809, column: 56, scope: !2159)
!2198 = !DILocation(line: 810, column: 49, scope: !2159)
!2199 = !DILocation(line: 811, column: 49, scope: !2159)
!2200 = !DILocation(line: 808, column: 20, scope: !2159)
!2201 = !DILocation(line: 811, column: 62, scope: !2159)
!2202 = !DILocation(line: 812, column: 15, scope: !2159)
!2203 = !DILocation(line: 813, column: 60, scope: !2159)
!2204 = !DILocation(line: 815, column: 32, scope: !2159)
!2205 = !DILocation(line: 815, column: 47, scope: !2159)
!2206 = !DILocation(line: 813, column: 3, scope: !2159)
!2207 = !DILocation(line: 816, column: 9, scope: !2159)
!2208 = !DILocation(line: 817, column: 7, scope: !2159)
!2209 = !DILocation(line: 818, column: 11, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2159, file: !451, line: 817, column: 7)
!2211 = !{!1202, !1202, i64 0}
!2212 = !DILocation(line: 818, column: 5, scope: !2210)
!2213 = !DILocation(line: 819, column: 3, scope: !2159)
!2214 = distinct !DISubprogram(name: "quotearg_free", scope: !451, file: !451, line: 837, type: !382, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2215)
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "sv", scope: !2214, file: !451, line: 839, type: !540)
!2217 = !DILocalVariable(name: "i", scope: !2218, file: !451, line: 840, type: !108)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !451, line: 840, column: 3)
!2219 = !DILocation(line: 839, column: 24, scope: !2214)
!2220 = !DILocation(line: 0, scope: !2214)
!2221 = !DILocation(line: 0, scope: !2218)
!2222 = !DILocation(line: 840, column: 21, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !451, line: 840, column: 3)
!2224 = !DILocation(line: 840, column: 3, scope: !2218)
!2225 = !DILocation(line: 842, column: 13, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2214, file: !451, line: 842, column: 7)
!2227 = !{!2228, !761, i64 8}
!2228 = !{!"slotvec", !1202, i64 0, !761, i64 8}
!2229 = !DILocation(line: 842, column: 17, scope: !2226)
!2230 = !DILocation(line: 842, column: 7, scope: !2214)
!2231 = !DILocation(line: 841, column: 17, scope: !2223)
!2232 = !DILocation(line: 841, column: 5, scope: !2223)
!2233 = !DILocation(line: 840, column: 32, scope: !2223)
!2234 = distinct !{!2234, !2224, !2235, !867}
!2235 = !DILocation(line: 841, column: 20, scope: !2218)
!2236 = !DILocation(line: 844, column: 7, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2226, file: !451, line: 843, column: 5)
!2238 = !DILocation(line: 845, column: 21, scope: !2237)
!2239 = !{!2228, !1202, i64 0}
!2240 = !DILocation(line: 846, column: 20, scope: !2237)
!2241 = !DILocation(line: 847, column: 5, scope: !2237)
!2242 = !DILocation(line: 848, column: 10, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2214, file: !451, line: 848, column: 7)
!2244 = !DILocation(line: 848, column: 7, scope: !2214)
!2245 = !DILocation(line: 850, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2243, file: !451, line: 849, column: 5)
!2247 = !DILocation(line: 851, column: 15, scope: !2246)
!2248 = !DILocation(line: 852, column: 5, scope: !2246)
!2249 = !DILocation(line: 853, column: 10, scope: !2214)
!2250 = !DILocation(line: 854, column: 1, scope: !2214)
!2251 = !DISubprogram(name: "free", scope: !1433, file: !1433, line: 786, type: !2252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{null, !107}
!2254 = distinct !DISubprogram(name: "quotearg_n", scope: !451, file: !451, line: 919, type: !934, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2255)
!2255 = !{!2256, !2257}
!2256 = !DILocalVariable(name: "n", arg: 1, scope: !2254, file: !451, line: 919, type: !108)
!2257 = !DILocalVariable(name: "arg", arg: 2, scope: !2254, file: !451, line: 919, type: !72)
!2258 = !DILocation(line: 0, scope: !2254)
!2259 = !DILocation(line: 921, column: 10, scope: !2254)
!2260 = !DILocation(line: 921, column: 3, scope: !2254)
!2261 = distinct !DISubprogram(name: "quotearg_n_options", scope: !451, file: !451, line: 866, type: !2262, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2264)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!255, !108, !72, !110, !1479}
!2264 = !{!2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2275, !2276, !2278, !2279, !2280}
!2265 = !DILocalVariable(name: "n", arg: 1, scope: !2261, file: !451, line: 866, type: !108)
!2266 = !DILocalVariable(name: "arg", arg: 2, scope: !2261, file: !451, line: 866, type: !72)
!2267 = !DILocalVariable(name: "argsize", arg: 3, scope: !2261, file: !451, line: 866, type: !110)
!2268 = !DILocalVariable(name: "options", arg: 4, scope: !2261, file: !451, line: 867, type: !1479)
!2269 = !DILocalVariable(name: "saved_errno", scope: !2261, file: !451, line: 869, type: !108)
!2270 = !DILocalVariable(name: "sv", scope: !2261, file: !451, line: 871, type: !540)
!2271 = !DILocalVariable(name: "nslots_max", scope: !2261, file: !451, line: 873, type: !108)
!2272 = !DILocalVariable(name: "preallocated", scope: !2273, file: !451, line: 879, type: !234)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !451, line: 878, column: 5)
!2274 = distinct !DILexicalBlock(scope: !2261, file: !451, line: 877, column: 7)
!2275 = !DILocalVariable(name: "new_nslots", scope: !2273, file: !451, line: 880, type: !707)
!2276 = !DILocalVariable(name: "size", scope: !2277, file: !451, line: 891, type: !110)
!2277 = distinct !DILexicalBlock(scope: !2261, file: !451, line: 890, column: 3)
!2278 = !DILocalVariable(name: "val", scope: !2277, file: !451, line: 892, type: !255)
!2279 = !DILocalVariable(name: "flags", scope: !2277, file: !451, line: 894, type: !108)
!2280 = !DILocalVariable(name: "qsize", scope: !2277, file: !451, line: 895, type: !110)
!2281 = distinct !DIAssignID()
!2282 = !DILocation(line: 0, scope: !2273)
!2283 = !DILocation(line: 0, scope: !2261)
!2284 = !DILocation(line: 869, column: 21, scope: !2261)
!2285 = !DILocation(line: 871, column: 24, scope: !2261)
!2286 = !DILocation(line: 874, column: 17, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2261, file: !451, line: 874, column: 7)
!2288 = !DILocation(line: 875, column: 5, scope: !2287)
!2289 = !DILocation(line: 877, column: 7, scope: !2274)
!2290 = !DILocation(line: 877, column: 14, scope: !2274)
!2291 = !DILocation(line: 877, column: 7, scope: !2261)
!2292 = !DILocation(line: 879, column: 31, scope: !2273)
!2293 = !DILocation(line: 880, column: 7, scope: !2273)
!2294 = !DILocation(line: 880, column: 26, scope: !2273)
!2295 = !DILocation(line: 880, column: 13, scope: !2273)
!2296 = distinct !DIAssignID()
!2297 = !DILocation(line: 882, column: 31, scope: !2273)
!2298 = !DILocation(line: 883, column: 33, scope: !2273)
!2299 = !DILocation(line: 883, column: 42, scope: !2273)
!2300 = !DILocation(line: 883, column: 31, scope: !2273)
!2301 = !DILocation(line: 882, column: 22, scope: !2273)
!2302 = !DILocation(line: 882, column: 15, scope: !2273)
!2303 = !DILocation(line: 884, column: 11, scope: !2273)
!2304 = !DILocation(line: 885, column: 15, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2273, file: !451, line: 884, column: 11)
!2306 = !{i64 0, i64 8, !2211, i64 8, i64 8, !760}
!2307 = !DILocation(line: 885, column: 9, scope: !2305)
!2308 = !DILocation(line: 886, column: 20, scope: !2273)
!2309 = !DILocation(line: 886, column: 18, scope: !2273)
!2310 = !DILocation(line: 886, column: 32, scope: !2273)
!2311 = !DILocation(line: 886, column: 43, scope: !2273)
!2312 = !DILocation(line: 886, column: 53, scope: !2273)
!2313 = !DILocation(line: 0, scope: !1696, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 886, column: 7, scope: !2273)
!2315 = !DILocation(line: 59, column: 10, scope: !1696, inlinedAt: !2314)
!2316 = !DILocation(line: 887, column: 16, scope: !2273)
!2317 = !DILocation(line: 887, column: 14, scope: !2273)
!2318 = !DILocation(line: 888, column: 5, scope: !2274)
!2319 = !DILocation(line: 888, column: 5, scope: !2273)
!2320 = !DILocation(line: 891, column: 19, scope: !2277)
!2321 = !DILocation(line: 891, column: 25, scope: !2277)
!2322 = !DILocation(line: 0, scope: !2277)
!2323 = !DILocation(line: 892, column: 23, scope: !2277)
!2324 = !DILocation(line: 894, column: 26, scope: !2277)
!2325 = !DILocation(line: 894, column: 32, scope: !2277)
!2326 = !DILocation(line: 896, column: 55, scope: !2277)
!2327 = !DILocation(line: 897, column: 55, scope: !2277)
!2328 = !DILocation(line: 898, column: 55, scope: !2277)
!2329 = !DILocation(line: 899, column: 55, scope: !2277)
!2330 = !DILocation(line: 895, column: 20, scope: !2277)
!2331 = !DILocation(line: 901, column: 14, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2277, file: !451, line: 901, column: 9)
!2333 = !DILocation(line: 901, column: 9, scope: !2277)
!2334 = !DILocation(line: 903, column: 35, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !451, line: 902, column: 7)
!2336 = !DILocation(line: 903, column: 20, scope: !2335)
!2337 = !DILocation(line: 904, column: 17, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !451, line: 904, column: 13)
!2339 = !DILocation(line: 904, column: 13, scope: !2335)
!2340 = !DILocation(line: 905, column: 11, scope: !2338)
!2341 = !DILocation(line: 906, column: 27, scope: !2335)
!2342 = !DILocation(line: 906, column: 19, scope: !2335)
!2343 = !DILocation(line: 907, column: 69, scope: !2335)
!2344 = !DILocation(line: 909, column: 44, scope: !2335)
!2345 = !DILocation(line: 910, column: 44, scope: !2335)
!2346 = !DILocation(line: 907, column: 9, scope: !2335)
!2347 = !DILocation(line: 911, column: 7, scope: !2335)
!2348 = !DILocation(line: 913, column: 11, scope: !2277)
!2349 = !DILocation(line: 914, column: 5, scope: !2277)
!2350 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !451, file: !451, line: 925, type: !2351, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!255, !108, !72, !110}
!2353 = !{!2354, !2355, !2356}
!2354 = !DILocalVariable(name: "n", arg: 1, scope: !2350, file: !451, line: 925, type: !108)
!2355 = !DILocalVariable(name: "arg", arg: 2, scope: !2350, file: !451, line: 925, type: !72)
!2356 = !DILocalVariable(name: "argsize", arg: 3, scope: !2350, file: !451, line: 925, type: !110)
!2357 = !DILocation(line: 0, scope: !2350)
!2358 = !DILocation(line: 927, column: 10, scope: !2350)
!2359 = !DILocation(line: 927, column: 3, scope: !2350)
!2360 = distinct !DISubprogram(name: "quotearg", scope: !451, file: !451, line: 931, type: !943, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2361)
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "arg", arg: 1, scope: !2360, file: !451, line: 931, type: !72)
!2363 = !DILocation(line: 0, scope: !2360)
!2364 = !DILocation(line: 0, scope: !2254, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 933, column: 10, scope: !2360)
!2366 = !DILocation(line: 921, column: 10, scope: !2254, inlinedAt: !2365)
!2367 = !DILocation(line: 933, column: 3, scope: !2360)
!2368 = distinct !DISubprogram(name: "quotearg_mem", scope: !451, file: !451, line: 937, type: !2369, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!255, !72, !110}
!2371 = !{!2372, !2373}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2368, file: !451, line: 937, type: !72)
!2373 = !DILocalVariable(name: "argsize", arg: 2, scope: !2368, file: !451, line: 937, type: !110)
!2374 = !DILocation(line: 0, scope: !2368)
!2375 = !DILocation(line: 0, scope: !2350, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 939, column: 10, scope: !2368)
!2377 = !DILocation(line: 927, column: 10, scope: !2350, inlinedAt: !2376)
!2378 = !DILocation(line: 939, column: 3, scope: !2368)
!2379 = distinct !DISubprogram(name: "quotearg_n_style", scope: !451, file: !451, line: 943, type: !2380, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2382)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!255, !108, !477, !72}
!2382 = !{!2383, !2384, !2385, !2386}
!2383 = !DILocalVariable(name: "n", arg: 1, scope: !2379, file: !451, line: 943, type: !108)
!2384 = !DILocalVariable(name: "s", arg: 2, scope: !2379, file: !451, line: 943, type: !477)
!2385 = !DILocalVariable(name: "arg", arg: 3, scope: !2379, file: !451, line: 943, type: !72)
!2386 = !DILocalVariable(name: "o", scope: !2379, file: !451, line: 945, type: !1480)
!2387 = distinct !DIAssignID()
!2388 = !DILocation(line: 0, scope: !2379)
!2389 = !DILocation(line: 945, column: 3, scope: !2379)
!2390 = !{!2391}
!2391 = distinct !{!2391, !2392, !"quoting_options_from_style: argument 0"}
!2392 = distinct !{!2392, !"quoting_options_from_style"}
!2393 = !DILocation(line: 945, column: 36, scope: !2379)
!2394 = !DILocalVariable(name: "style", arg: 1, scope: !2395, file: !451, line: 183, type: !477)
!2395 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !451, file: !451, line: 183, type: !2396, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!492, !477}
!2398 = !{!2394, !2399}
!2399 = !DILocalVariable(name: "o", scope: !2395, file: !451, line: 185, type: !492)
!2400 = !DILocation(line: 0, scope: !2395, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 945, column: 36, scope: !2379)
!2402 = !DILocation(line: 185, column: 26, scope: !2395, inlinedAt: !2401)
!2403 = distinct !DIAssignID()
!2404 = !DILocation(line: 186, column: 13, scope: !2405, inlinedAt: !2401)
!2405 = distinct !DILexicalBlock(scope: !2395, file: !451, line: 186, column: 7)
!2406 = !DILocation(line: 186, column: 7, scope: !2395, inlinedAt: !2401)
!2407 = !DILocation(line: 187, column: 5, scope: !2405, inlinedAt: !2401)
!2408 = !DILocation(line: 188, column: 11, scope: !2395, inlinedAt: !2401)
!2409 = distinct !DIAssignID()
!2410 = !DILocation(line: 946, column: 10, scope: !2379)
!2411 = !DILocation(line: 947, column: 1, scope: !2379)
!2412 = !DILocation(line: 946, column: 3, scope: !2379)
!2413 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !451, file: !451, line: 950, type: !2414, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!255, !108, !477, !72, !110}
!2416 = !{!2417, !2418, !2419, !2420, !2421}
!2417 = !DILocalVariable(name: "n", arg: 1, scope: !2413, file: !451, line: 950, type: !108)
!2418 = !DILocalVariable(name: "s", arg: 2, scope: !2413, file: !451, line: 950, type: !477)
!2419 = !DILocalVariable(name: "arg", arg: 3, scope: !2413, file: !451, line: 951, type: !72)
!2420 = !DILocalVariable(name: "argsize", arg: 4, scope: !2413, file: !451, line: 951, type: !110)
!2421 = !DILocalVariable(name: "o", scope: !2413, file: !451, line: 953, type: !1480)
!2422 = distinct !DIAssignID()
!2423 = !DILocation(line: 0, scope: !2413)
!2424 = !DILocation(line: 953, column: 3, scope: !2413)
!2425 = !{!2426}
!2426 = distinct !{!2426, !2427, !"quoting_options_from_style: argument 0"}
!2427 = distinct !{!2427, !"quoting_options_from_style"}
!2428 = !DILocation(line: 953, column: 36, scope: !2413)
!2429 = !DILocation(line: 0, scope: !2395, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 953, column: 36, scope: !2413)
!2431 = !DILocation(line: 185, column: 26, scope: !2395, inlinedAt: !2430)
!2432 = distinct !DIAssignID()
!2433 = !DILocation(line: 186, column: 13, scope: !2405, inlinedAt: !2430)
!2434 = !DILocation(line: 186, column: 7, scope: !2395, inlinedAt: !2430)
!2435 = !DILocation(line: 187, column: 5, scope: !2405, inlinedAt: !2430)
!2436 = !DILocation(line: 188, column: 11, scope: !2395, inlinedAt: !2430)
!2437 = distinct !DIAssignID()
!2438 = !DILocation(line: 954, column: 10, scope: !2413)
!2439 = !DILocation(line: 955, column: 1, scope: !2413)
!2440 = !DILocation(line: 954, column: 3, scope: !2413)
!2441 = distinct !DISubprogram(name: "quotearg_style", scope: !451, file: !451, line: 958, type: !2442, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!255, !477, !72}
!2444 = !{!2445, !2446}
!2445 = !DILocalVariable(name: "s", arg: 1, scope: !2441, file: !451, line: 958, type: !477)
!2446 = !DILocalVariable(name: "arg", arg: 2, scope: !2441, file: !451, line: 958, type: !72)
!2447 = distinct !DIAssignID()
!2448 = !DILocation(line: 0, scope: !2441)
!2449 = !DILocation(line: 0, scope: !2379, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 960, column: 10, scope: !2441)
!2451 = !DILocation(line: 945, column: 3, scope: !2379, inlinedAt: !2450)
!2452 = !{!2453}
!2453 = distinct !{!2453, !2454, !"quoting_options_from_style: argument 0"}
!2454 = distinct !{!2454, !"quoting_options_from_style"}
!2455 = !DILocation(line: 945, column: 36, scope: !2379, inlinedAt: !2450)
!2456 = !DILocation(line: 0, scope: !2395, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 945, column: 36, scope: !2379, inlinedAt: !2450)
!2458 = !DILocation(line: 185, column: 26, scope: !2395, inlinedAt: !2457)
!2459 = distinct !DIAssignID()
!2460 = !DILocation(line: 186, column: 13, scope: !2405, inlinedAt: !2457)
!2461 = !DILocation(line: 186, column: 7, scope: !2395, inlinedAt: !2457)
!2462 = !DILocation(line: 187, column: 5, scope: !2405, inlinedAt: !2457)
!2463 = !DILocation(line: 188, column: 11, scope: !2395, inlinedAt: !2457)
!2464 = distinct !DIAssignID()
!2465 = !DILocation(line: 946, column: 10, scope: !2379, inlinedAt: !2450)
!2466 = !DILocation(line: 947, column: 1, scope: !2379, inlinedAt: !2450)
!2467 = !DILocation(line: 960, column: 3, scope: !2441)
!2468 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !451, file: !451, line: 964, type: !2469, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!255, !477, !72, !110}
!2471 = !{!2472, !2473, !2474}
!2472 = !DILocalVariable(name: "s", arg: 1, scope: !2468, file: !451, line: 964, type: !477)
!2473 = !DILocalVariable(name: "arg", arg: 2, scope: !2468, file: !451, line: 964, type: !72)
!2474 = !DILocalVariable(name: "argsize", arg: 3, scope: !2468, file: !451, line: 964, type: !110)
!2475 = distinct !DIAssignID()
!2476 = !DILocation(line: 0, scope: !2468)
!2477 = !DILocation(line: 0, scope: !2413, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 966, column: 10, scope: !2468)
!2479 = !DILocation(line: 953, column: 3, scope: !2413, inlinedAt: !2478)
!2480 = !{!2481}
!2481 = distinct !{!2481, !2482, !"quoting_options_from_style: argument 0"}
!2482 = distinct !{!2482, !"quoting_options_from_style"}
!2483 = !DILocation(line: 953, column: 36, scope: !2413, inlinedAt: !2478)
!2484 = !DILocation(line: 0, scope: !2395, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 953, column: 36, scope: !2413, inlinedAt: !2478)
!2486 = !DILocation(line: 185, column: 26, scope: !2395, inlinedAt: !2485)
!2487 = distinct !DIAssignID()
!2488 = !DILocation(line: 186, column: 13, scope: !2405, inlinedAt: !2485)
!2489 = !DILocation(line: 186, column: 7, scope: !2395, inlinedAt: !2485)
!2490 = !DILocation(line: 187, column: 5, scope: !2405, inlinedAt: !2485)
!2491 = !DILocation(line: 188, column: 11, scope: !2395, inlinedAt: !2485)
!2492 = distinct !DIAssignID()
!2493 = !DILocation(line: 954, column: 10, scope: !2413, inlinedAt: !2478)
!2494 = !DILocation(line: 955, column: 1, scope: !2413, inlinedAt: !2478)
!2495 = !DILocation(line: 966, column: 3, scope: !2468)
!2496 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !451, file: !451, line: 970, type: !2497, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2499)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!255, !72, !110, !4}
!2499 = !{!2500, !2501, !2502, !2503}
!2500 = !DILocalVariable(name: "arg", arg: 1, scope: !2496, file: !451, line: 970, type: !72)
!2501 = !DILocalVariable(name: "argsize", arg: 2, scope: !2496, file: !451, line: 970, type: !110)
!2502 = !DILocalVariable(name: "ch", arg: 3, scope: !2496, file: !451, line: 970, type: !4)
!2503 = !DILocalVariable(name: "options", scope: !2496, file: !451, line: 972, type: !492)
!2504 = distinct !DIAssignID()
!2505 = !DILocation(line: 0, scope: !2496)
!2506 = !DILocation(line: 972, column: 3, scope: !2496)
!2507 = !DILocation(line: 973, column: 13, scope: !2496)
!2508 = !{i64 0, i64 4, !820, i64 4, i64 4, !820, i64 8, i64 32, !829, i64 40, i64 8, !760, i64 48, i64 8, !760}
!2509 = distinct !DIAssignID()
!2510 = !DILocation(line: 0, scope: !1499, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 974, column: 3, scope: !2496)
!2512 = !DILocation(line: 147, column: 41, scope: !1499, inlinedAt: !2511)
!2513 = !DILocation(line: 147, column: 62, scope: !1499, inlinedAt: !2511)
!2514 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2511)
!2515 = !DILocation(line: 148, column: 15, scope: !1499, inlinedAt: !2511)
!2516 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2511)
!2517 = !DILocation(line: 149, column: 24, scope: !1499, inlinedAt: !2511)
!2518 = !DILocation(line: 150, column: 19, scope: !1499, inlinedAt: !2511)
!2519 = !DILocation(line: 150, column: 24, scope: !1499, inlinedAt: !2511)
!2520 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2511)
!2521 = !DILocation(line: 975, column: 10, scope: !2496)
!2522 = !DILocation(line: 976, column: 1, scope: !2496)
!2523 = !DILocation(line: 975, column: 3, scope: !2496)
!2524 = distinct !DISubprogram(name: "quotearg_char", scope: !451, file: !451, line: 979, type: !2525, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2527)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!255, !72, !4}
!2527 = !{!2528, !2529}
!2528 = !DILocalVariable(name: "arg", arg: 1, scope: !2524, file: !451, line: 979, type: !72)
!2529 = !DILocalVariable(name: "ch", arg: 2, scope: !2524, file: !451, line: 979, type: !4)
!2530 = distinct !DIAssignID()
!2531 = !DILocation(line: 0, scope: !2524)
!2532 = !DILocation(line: 0, scope: !2496, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 981, column: 10, scope: !2524)
!2534 = !DILocation(line: 972, column: 3, scope: !2496, inlinedAt: !2533)
!2535 = !DILocation(line: 973, column: 13, scope: !2496, inlinedAt: !2533)
!2536 = distinct !DIAssignID()
!2537 = !DILocation(line: 0, scope: !1499, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 974, column: 3, scope: !2496, inlinedAt: !2533)
!2539 = !DILocation(line: 147, column: 41, scope: !1499, inlinedAt: !2538)
!2540 = !DILocation(line: 147, column: 62, scope: !1499, inlinedAt: !2538)
!2541 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2538)
!2542 = !DILocation(line: 148, column: 15, scope: !1499, inlinedAt: !2538)
!2543 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2538)
!2544 = !DILocation(line: 149, column: 24, scope: !1499, inlinedAt: !2538)
!2545 = !DILocation(line: 150, column: 19, scope: !1499, inlinedAt: !2538)
!2546 = !DILocation(line: 150, column: 24, scope: !1499, inlinedAt: !2538)
!2547 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2538)
!2548 = !DILocation(line: 975, column: 10, scope: !2496, inlinedAt: !2533)
!2549 = !DILocation(line: 976, column: 1, scope: !2496, inlinedAt: !2533)
!2550 = !DILocation(line: 981, column: 3, scope: !2524)
!2551 = distinct !DISubprogram(name: "quotearg_colon", scope: !451, file: !451, line: 985, type: !943, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2552)
!2552 = !{!2553}
!2553 = !DILocalVariable(name: "arg", arg: 1, scope: !2551, file: !451, line: 985, type: !72)
!2554 = distinct !DIAssignID()
!2555 = !DILocation(line: 0, scope: !2551)
!2556 = !DILocation(line: 0, scope: !2524, inlinedAt: !2557)
!2557 = distinct !DILocation(line: 987, column: 10, scope: !2551)
!2558 = !DILocation(line: 0, scope: !2496, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 981, column: 10, scope: !2524, inlinedAt: !2557)
!2560 = !DILocation(line: 972, column: 3, scope: !2496, inlinedAt: !2559)
!2561 = !DILocation(line: 973, column: 13, scope: !2496, inlinedAt: !2559)
!2562 = distinct !DIAssignID()
!2563 = !DILocation(line: 0, scope: !1499, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 974, column: 3, scope: !2496, inlinedAt: !2559)
!2565 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2564)
!2566 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2564)
!2567 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2564)
!2568 = !DILocation(line: 975, column: 10, scope: !2496, inlinedAt: !2559)
!2569 = !DILocation(line: 976, column: 1, scope: !2496, inlinedAt: !2559)
!2570 = !DILocation(line: 987, column: 3, scope: !2551)
!2571 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !451, file: !451, line: 991, type: !2369, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2572)
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "arg", arg: 1, scope: !2571, file: !451, line: 991, type: !72)
!2574 = !DILocalVariable(name: "argsize", arg: 2, scope: !2571, file: !451, line: 991, type: !110)
!2575 = distinct !DIAssignID()
!2576 = !DILocation(line: 0, scope: !2571)
!2577 = !DILocation(line: 0, scope: !2496, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 993, column: 10, scope: !2571)
!2579 = !DILocation(line: 972, column: 3, scope: !2496, inlinedAt: !2578)
!2580 = !DILocation(line: 973, column: 13, scope: !2496, inlinedAt: !2578)
!2581 = distinct !DIAssignID()
!2582 = !DILocation(line: 0, scope: !1499, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 974, column: 3, scope: !2496, inlinedAt: !2578)
!2584 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2583)
!2585 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2583)
!2586 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2583)
!2587 = !DILocation(line: 975, column: 10, scope: !2496, inlinedAt: !2578)
!2588 = !DILocation(line: 976, column: 1, scope: !2496, inlinedAt: !2578)
!2589 = !DILocation(line: 993, column: 3, scope: !2571)
!2590 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !451, file: !451, line: 997, type: !2380, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2591)
!2591 = !{!2592, !2593, !2594, !2595}
!2592 = !DILocalVariable(name: "n", arg: 1, scope: !2590, file: !451, line: 997, type: !108)
!2593 = !DILocalVariable(name: "s", arg: 2, scope: !2590, file: !451, line: 997, type: !477)
!2594 = !DILocalVariable(name: "arg", arg: 3, scope: !2590, file: !451, line: 997, type: !72)
!2595 = !DILocalVariable(name: "options", scope: !2590, file: !451, line: 999, type: !492)
!2596 = distinct !DIAssignID()
!2597 = !DILocation(line: 0, scope: !2590)
!2598 = !DILocation(line: 185, column: 26, scope: !2395, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 1000, column: 13, scope: !2590)
!2600 = !DILocation(line: 999, column: 3, scope: !2590)
!2601 = !DILocation(line: 0, scope: !2395, inlinedAt: !2599)
!2602 = !DILocation(line: 186, column: 13, scope: !2405, inlinedAt: !2599)
!2603 = !DILocation(line: 186, column: 7, scope: !2395, inlinedAt: !2599)
!2604 = !DILocation(line: 187, column: 5, scope: !2405, inlinedAt: !2599)
!2605 = !{!2606}
!2606 = distinct !{!2606, !2607, !"quoting_options_from_style: argument 0"}
!2607 = distinct !{!2607, !"quoting_options_from_style"}
!2608 = !DILocation(line: 1000, column: 13, scope: !2590)
!2609 = distinct !DIAssignID()
!2610 = distinct !DIAssignID()
!2611 = !DILocation(line: 0, scope: !1499, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1001, column: 3, scope: !2590)
!2613 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2612)
!2614 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2612)
!2615 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2612)
!2616 = distinct !DIAssignID()
!2617 = !DILocation(line: 1002, column: 10, scope: !2590)
!2618 = !DILocation(line: 1003, column: 1, scope: !2590)
!2619 = !DILocation(line: 1002, column: 3, scope: !2590)
!2620 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !451, file: !451, line: 1006, type: !2621, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2623)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!255, !108, !72, !72, !72}
!2623 = !{!2624, !2625, !2626, !2627}
!2624 = !DILocalVariable(name: "n", arg: 1, scope: !2620, file: !451, line: 1006, type: !108)
!2625 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2620, file: !451, line: 1006, type: !72)
!2626 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2620, file: !451, line: 1007, type: !72)
!2627 = !DILocalVariable(name: "arg", arg: 4, scope: !2620, file: !451, line: 1007, type: !72)
!2628 = distinct !DIAssignID()
!2629 = !DILocation(line: 0, scope: !2620)
!2630 = !DILocalVariable(name: "o", scope: !2631, file: !451, line: 1018, type: !492)
!2631 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !451, file: !451, line: 1014, type: !2632, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!255, !108, !72, !72, !72, !110}
!2634 = !{!2635, !2636, !2637, !2638, !2639, !2630}
!2635 = !DILocalVariable(name: "n", arg: 1, scope: !2631, file: !451, line: 1014, type: !108)
!2636 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2631, file: !451, line: 1014, type: !72)
!2637 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2631, file: !451, line: 1015, type: !72)
!2638 = !DILocalVariable(name: "arg", arg: 4, scope: !2631, file: !451, line: 1016, type: !72)
!2639 = !DILocalVariable(name: "argsize", arg: 5, scope: !2631, file: !451, line: 1016, type: !110)
!2640 = !DILocation(line: 0, scope: !2631, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 1009, column: 10, scope: !2620)
!2642 = !DILocation(line: 1018, column: 3, scope: !2631, inlinedAt: !2641)
!2643 = !DILocation(line: 1018, column: 30, scope: !2631, inlinedAt: !2641)
!2644 = distinct !DIAssignID()
!2645 = distinct !DIAssignID()
!2646 = !DILocation(line: 0, scope: !1539, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 1019, column: 3, scope: !2631, inlinedAt: !2641)
!2648 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2647)
!2649 = distinct !DIAssignID()
!2650 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2647)
!2651 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2647)
!2652 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2647)
!2653 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2647)
!2654 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2647)
!2655 = distinct !DIAssignID()
!2656 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2647)
!2657 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2647)
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 1020, column: 10, scope: !2631, inlinedAt: !2641)
!2660 = !DILocation(line: 1021, column: 1, scope: !2631, inlinedAt: !2641)
!2661 = !DILocation(line: 1009, column: 3, scope: !2620)
!2662 = distinct !DIAssignID()
!2663 = !DILocation(line: 0, scope: !2631)
!2664 = !DILocation(line: 1018, column: 3, scope: !2631)
!2665 = !DILocation(line: 1018, column: 30, scope: !2631)
!2666 = distinct !DIAssignID()
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 0, scope: !1539, inlinedAt: !2669)
!2669 = distinct !DILocation(line: 1019, column: 3, scope: !2631)
!2670 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2669)
!2671 = distinct !DIAssignID()
!2672 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2669)
!2673 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2669)
!2674 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2669)
!2675 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2669)
!2676 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2669)
!2677 = distinct !DIAssignID()
!2678 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2669)
!2679 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2669)
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 1020, column: 10, scope: !2631)
!2682 = !DILocation(line: 1021, column: 1, scope: !2631)
!2683 = !DILocation(line: 1020, column: 3, scope: !2631)
!2684 = distinct !DISubprogram(name: "quotearg_custom", scope: !451, file: !451, line: 1024, type: !2685, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!255, !72, !72, !72}
!2687 = !{!2688, !2689, !2690}
!2688 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2684, file: !451, line: 1024, type: !72)
!2689 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2684, file: !451, line: 1024, type: !72)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !451, line: 1025, type: !72)
!2691 = distinct !DIAssignID()
!2692 = !DILocation(line: 0, scope: !2684)
!2693 = !DILocation(line: 0, scope: !2620, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 1027, column: 10, scope: !2684)
!2695 = !DILocation(line: 0, scope: !2631, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1009, column: 10, scope: !2620, inlinedAt: !2694)
!2697 = !DILocation(line: 1018, column: 3, scope: !2631, inlinedAt: !2696)
!2698 = !DILocation(line: 1018, column: 30, scope: !2631, inlinedAt: !2696)
!2699 = distinct !DIAssignID()
!2700 = distinct !DIAssignID()
!2701 = !DILocation(line: 0, scope: !1539, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 1019, column: 3, scope: !2631, inlinedAt: !2696)
!2703 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2702)
!2704 = distinct !DIAssignID()
!2705 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2702)
!2706 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2702)
!2707 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2702)
!2708 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2702)
!2709 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2702)
!2710 = distinct !DIAssignID()
!2711 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2702)
!2712 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2702)
!2713 = distinct !DIAssignID()
!2714 = !DILocation(line: 1020, column: 10, scope: !2631, inlinedAt: !2696)
!2715 = !DILocation(line: 1021, column: 1, scope: !2631, inlinedAt: !2696)
!2716 = !DILocation(line: 1027, column: 3, scope: !2684)
!2717 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !451, file: !451, line: 1031, type: !2718, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!255, !72, !72, !72, !110}
!2720 = !{!2721, !2722, !2723, !2724}
!2721 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2717, file: !451, line: 1031, type: !72)
!2722 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2717, file: !451, line: 1031, type: !72)
!2723 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !451, line: 1032, type: !72)
!2724 = !DILocalVariable(name: "argsize", arg: 4, scope: !2717, file: !451, line: 1032, type: !110)
!2725 = distinct !DIAssignID()
!2726 = !DILocation(line: 0, scope: !2717)
!2727 = !DILocation(line: 0, scope: !2631, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1034, column: 10, scope: !2717)
!2729 = !DILocation(line: 1018, column: 3, scope: !2631, inlinedAt: !2728)
!2730 = !DILocation(line: 1018, column: 30, scope: !2631, inlinedAt: !2728)
!2731 = distinct !DIAssignID()
!2732 = distinct !DIAssignID()
!2733 = !DILocation(line: 0, scope: !1539, inlinedAt: !2734)
!2734 = distinct !DILocation(line: 1019, column: 3, scope: !2631, inlinedAt: !2728)
!2735 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2734)
!2736 = distinct !DIAssignID()
!2737 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2734)
!2738 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2734)
!2739 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2734)
!2740 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2734)
!2741 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2734)
!2742 = distinct !DIAssignID()
!2743 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2734)
!2744 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2734)
!2745 = distinct !DIAssignID()
!2746 = !DILocation(line: 1020, column: 10, scope: !2631, inlinedAt: !2728)
!2747 = !DILocation(line: 1021, column: 1, scope: !2631, inlinedAt: !2728)
!2748 = !DILocation(line: 1034, column: 3, scope: !2717)
!2749 = distinct !DISubprogram(name: "quote_n_mem", scope: !451, file: !451, line: 1049, type: !2750, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!72, !108, !72, !110}
!2752 = !{!2753, !2754, !2755}
!2753 = !DILocalVariable(name: "n", arg: 1, scope: !2749, file: !451, line: 1049, type: !108)
!2754 = !DILocalVariable(name: "arg", arg: 2, scope: !2749, file: !451, line: 1049, type: !72)
!2755 = !DILocalVariable(name: "argsize", arg: 3, scope: !2749, file: !451, line: 1049, type: !110)
!2756 = !DILocation(line: 0, scope: !2749)
!2757 = !DILocation(line: 1051, column: 10, scope: !2749)
!2758 = !DILocation(line: 1051, column: 3, scope: !2749)
!2759 = distinct !DISubprogram(name: "quote_mem", scope: !451, file: !451, line: 1055, type: !2760, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!72, !72, !110}
!2762 = !{!2763, !2764}
!2763 = !DILocalVariable(name: "arg", arg: 1, scope: !2759, file: !451, line: 1055, type: !72)
!2764 = !DILocalVariable(name: "argsize", arg: 2, scope: !2759, file: !451, line: 1055, type: !110)
!2765 = !DILocation(line: 0, scope: !2759)
!2766 = !DILocation(line: 0, scope: !2749, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1057, column: 10, scope: !2759)
!2768 = !DILocation(line: 1051, column: 10, scope: !2749, inlinedAt: !2767)
!2769 = !DILocation(line: 1057, column: 3, scope: !2759)
!2770 = distinct !DISubprogram(name: "quote_n", scope: !451, file: !451, line: 1061, type: !2771, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2773)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!72, !108, !72}
!2773 = !{!2774, !2775}
!2774 = !DILocalVariable(name: "n", arg: 1, scope: !2770, file: !451, line: 1061, type: !108)
!2775 = !DILocalVariable(name: "arg", arg: 2, scope: !2770, file: !451, line: 1061, type: !72)
!2776 = !DILocation(line: 0, scope: !2770)
!2777 = !DILocation(line: 0, scope: !2749, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1063, column: 10, scope: !2770)
!2779 = !DILocation(line: 1051, column: 10, scope: !2749, inlinedAt: !2778)
!2780 = !DILocation(line: 1063, column: 3, scope: !2770)
!2781 = distinct !DISubprogram(name: "quote", scope: !451, file: !451, line: 1067, type: !2782, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!72, !72}
!2784 = !{!2785}
!2785 = !DILocalVariable(name: "arg", arg: 1, scope: !2781, file: !451, line: 1067, type: !72)
!2786 = !DILocation(line: 0, scope: !2781)
!2787 = !DILocation(line: 0, scope: !2770, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1069, column: 10, scope: !2781)
!2789 = !DILocation(line: 0, scope: !2749, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1063, column: 10, scope: !2770, inlinedAt: !2788)
!2791 = !DILocation(line: 1051, column: 10, scope: !2749, inlinedAt: !2790)
!2792 = !DILocation(line: 1069, column: 3, scope: !2781)
!2793 = distinct !DISubprogram(name: "version_etc_arn", scope: !555, file: !555, line: 61, type: !2794, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2831)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2796, !72, !72, !72, !2830, !110}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !2798)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2798, file: !251, line: 51, baseType: !108, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2798, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2798, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2798, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2798, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2798, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2798, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2798, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2798, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2798, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2798, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2798, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2798, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2798, file: !251, line: 70, baseType: !2814, size: 64, offset: 832)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2798, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2798, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2798, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2798, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2798, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2798, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2798, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2798, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2798, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2798, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2798, file: !251, line: 93, baseType: !2814, size: 64, offset: 1344)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2798, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2798, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2798, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2798, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!2831 = !{!2832, !2833, !2834, !2835, !2836, !2837}
!2832 = !DILocalVariable(name: "stream", arg: 1, scope: !2793, file: !555, line: 61, type: !2796)
!2833 = !DILocalVariable(name: "command_name", arg: 2, scope: !2793, file: !555, line: 62, type: !72)
!2834 = !DILocalVariable(name: "package", arg: 3, scope: !2793, file: !555, line: 62, type: !72)
!2835 = !DILocalVariable(name: "version", arg: 4, scope: !2793, file: !555, line: 63, type: !72)
!2836 = !DILocalVariable(name: "authors", arg: 5, scope: !2793, file: !555, line: 64, type: !2830)
!2837 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2793, file: !555, line: 64, type: !110)
!2838 = !DILocation(line: 0, scope: !2793)
!2839 = !DILocation(line: 66, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2793, file: !555, line: 66, column: 7)
!2841 = !DILocation(line: 66, column: 7, scope: !2793)
!2842 = !DILocation(line: 67, column: 5, scope: !2840)
!2843 = !DILocation(line: 69, column: 5, scope: !2840)
!2844 = !DILocation(line: 83, column: 3, scope: !2793)
!2845 = !DILocation(line: 85, column: 3, scope: !2793)
!2846 = !DILocation(line: 88, column: 3, scope: !2793)
!2847 = !DILocation(line: 95, column: 3, scope: !2793)
!2848 = !DILocation(line: 97, column: 3, scope: !2793)
!2849 = !DILocation(line: 105, column: 7, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2793, file: !555, line: 98, column: 5)
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
!2871 = distinct !DISubprogram(name: "version_etc_ar", scope: !555, file: !555, line: 183, type: !2872, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2874)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2796, !72, !72, !72, !2830}
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880}
!2875 = !DILocalVariable(name: "stream", arg: 1, scope: !2871, file: !555, line: 183, type: !2796)
!2876 = !DILocalVariable(name: "command_name", arg: 2, scope: !2871, file: !555, line: 184, type: !72)
!2877 = !DILocalVariable(name: "package", arg: 3, scope: !2871, file: !555, line: 184, type: !72)
!2878 = !DILocalVariable(name: "version", arg: 4, scope: !2871, file: !555, line: 185, type: !72)
!2879 = !DILocalVariable(name: "authors", arg: 5, scope: !2871, file: !555, line: 185, type: !2830)
!2880 = !DILocalVariable(name: "n_authors", scope: !2871, file: !555, line: 187, type: !110)
!2881 = !DILocation(line: 0, scope: !2871)
!2882 = !DILocation(line: 189, column: 8, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2871, file: !555, line: 189, column: 3)
!2884 = !DILocation(line: 189, scope: !2883)
!2885 = !DILocation(line: 189, column: 23, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2883, file: !555, line: 189, column: 3)
!2887 = !DILocation(line: 189, column: 3, scope: !2883)
!2888 = !DILocation(line: 189, column: 52, scope: !2886)
!2889 = distinct !{!2889, !2887, !2890, !867}
!2890 = !DILocation(line: 190, column: 5, scope: !2883)
!2891 = !DILocation(line: 191, column: 3, scope: !2871)
!2892 = !DILocation(line: 192, column: 1, scope: !2871)
!2893 = distinct !DISubprogram(name: "version_etc_va", scope: !555, file: !555, line: 199, type: !2894, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2906)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{null, !2796, !72, !72, !72, !2896}
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !2897)
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 12, baseType: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !555, baseType: !2899)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2900)
!2900 = !{!2901, !2902, !2903, !2904, !2905}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2899, file: !555, line: 192, baseType: !107, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2899, file: !555, line: 192, baseType: !107, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2899, file: !555, line: 192, baseType: !107, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2899, file: !555, line: 192, baseType: !108, size: 32, offset: 192)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2899, file: !555, line: 192, baseType: !108, size: 32, offset: 224)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913}
!2907 = !DILocalVariable(name: "stream", arg: 1, scope: !2893, file: !555, line: 199, type: !2796)
!2908 = !DILocalVariable(name: "command_name", arg: 2, scope: !2893, file: !555, line: 200, type: !72)
!2909 = !DILocalVariable(name: "package", arg: 3, scope: !2893, file: !555, line: 200, type: !72)
!2910 = !DILocalVariable(name: "version", arg: 4, scope: !2893, file: !555, line: 201, type: !72)
!2911 = !DILocalVariable(name: "authors", arg: 5, scope: !2893, file: !555, line: 201, type: !2896)
!2912 = !DILocalVariable(name: "n_authors", scope: !2893, file: !555, line: 203, type: !110)
!2913 = !DILocalVariable(name: "authtab", scope: !2893, file: !555, line: 204, type: !2914)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !40)
!2915 = distinct !DIAssignID()
!2916 = !DILocation(line: 0, scope: !2893)
!2917 = !DILocation(line: 204, column: 3, scope: !2893)
!2918 = !DILocation(line: 208, column: 35, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !555, line: 206, column: 3)
!2920 = distinct !DILexicalBlock(scope: !2893, file: !555, line: 206, column: 3)
!2921 = !DILocation(line: 208, column: 33, scope: !2919)
!2922 = !DILocation(line: 208, column: 67, scope: !2919)
!2923 = !DILocation(line: 206, column: 3, scope: !2920)
!2924 = !DILocation(line: 208, column: 14, scope: !2919)
!2925 = !DILocation(line: 0, scope: !2920)
!2926 = !DILocation(line: 211, column: 3, scope: !2893)
!2927 = !DILocation(line: 213, column: 1, scope: !2893)
!2928 = distinct !DISubprogram(name: "version_etc", scope: !555, file: !555, line: 230, type: !2929, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{null, !2796, !72, !72, !72, null}
!2931 = !{!2932, !2933, !2934, !2935, !2936}
!2932 = !DILocalVariable(name: "stream", arg: 1, scope: !2928, file: !555, line: 230, type: !2796)
!2933 = !DILocalVariable(name: "command_name", arg: 2, scope: !2928, file: !555, line: 231, type: !72)
!2934 = !DILocalVariable(name: "package", arg: 3, scope: !2928, file: !555, line: 231, type: !72)
!2935 = !DILocalVariable(name: "version", arg: 4, scope: !2928, file: !555, line: 232, type: !72)
!2936 = !DILocalVariable(name: "authors", scope: !2928, file: !555, line: 234, type: !2896)
!2937 = distinct !DIAssignID()
!2938 = !DILocation(line: 0, scope: !2928)
!2939 = !DILocation(line: 234, column: 3, scope: !2928)
!2940 = !DILocation(line: 235, column: 3, scope: !2928)
!2941 = !DILocation(line: 236, column: 3, scope: !2928)
!2942 = !DILocation(line: 237, column: 3, scope: !2928)
!2943 = !DILocation(line: 238, column: 1, scope: !2928)
!2944 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !555, file: !555, line: 241, type: !382, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681)
!2945 = !DILocation(line: 243, column: 3, scope: !2944)
!2946 = !DILocation(line: 248, column: 3, scope: !2944)
!2947 = !DILocation(line: 254, column: 3, scope: !2944)
!2948 = !DILocation(line: 259, column: 3, scope: !2944)
!2949 = !DILocation(line: 261, column: 1, scope: !2944)
!2950 = distinct !DISubprogram(name: "xnrealloc", scope: !2951, file: !2951, line: 147, type: !2952, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2954)
!2951 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!107, !107, !110, !110}
!2954 = !{!2955, !2956, !2957}
!2955 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !2951, line: 147, type: !107)
!2956 = !DILocalVariable(name: "n", arg: 2, scope: !2950, file: !2951, line: 147, type: !110)
!2957 = !DILocalVariable(name: "s", arg: 3, scope: !2950, file: !2951, line: 147, type: !110)
!2958 = !DILocation(line: 0, scope: !2950)
!2959 = !DILocalVariable(name: "p", arg: 1, scope: !2960, file: !688, line: 83, type: !107)
!2960 = distinct !DISubprogram(name: "xreallocarray", scope: !688, file: !688, line: 83, type: !2952, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2961)
!2961 = !{!2959, !2962, !2963}
!2962 = !DILocalVariable(name: "n", arg: 2, scope: !2960, file: !688, line: 83, type: !110)
!2963 = !DILocalVariable(name: "s", arg: 3, scope: !2960, file: !688, line: 83, type: !110)
!2964 = !DILocation(line: 0, scope: !2960, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 149, column: 10, scope: !2950)
!2966 = !DILocation(line: 85, column: 25, scope: !2960, inlinedAt: !2965)
!2967 = !DILocalVariable(name: "p", arg: 1, scope: !2968, file: !688, line: 37, type: !107)
!2968 = distinct !DISubprogram(name: "check_nonnull", scope: !688, file: !688, line: 37, type: !2969, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!107, !107}
!2971 = !{!2967}
!2972 = !DILocation(line: 0, scope: !2968, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 85, column: 10, scope: !2960, inlinedAt: !2965)
!2974 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !2973)
!2975 = distinct !DILexicalBlock(scope: !2968, file: !688, line: 39, column: 7)
!2976 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !2973)
!2977 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !2973)
!2978 = !DILocation(line: 149, column: 3, scope: !2950)
!2979 = !DILocation(line: 0, scope: !2960)
!2980 = !DILocation(line: 85, column: 25, scope: !2960)
!2981 = !DILocation(line: 0, scope: !2968, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 85, column: 10, scope: !2960)
!2983 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !2982)
!2984 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !2982)
!2985 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !2982)
!2986 = !DILocation(line: 85, column: 3, scope: !2960)
!2987 = distinct !DISubprogram(name: "xmalloc", scope: !688, file: !688, line: 47, type: !2988, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!107, !110}
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "s", arg: 1, scope: !2987, file: !688, line: 47, type: !110)
!2992 = !DILocation(line: 0, scope: !2987)
!2993 = !DILocation(line: 49, column: 25, scope: !2987)
!2994 = !DILocation(line: 0, scope: !2968, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 49, column: 10, scope: !2987)
!2996 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !2995)
!2997 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !2995)
!2998 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !2995)
!2999 = !DILocation(line: 49, column: 3, scope: !2987)
!3000 = !DISubprogram(name: "malloc", scope: !941, file: !941, line: 540, type: !2988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3001 = distinct !DISubprogram(name: "ximalloc", scope: !688, file: !688, line: 53, type: !3002, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!107, !707}
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "s", arg: 1, scope: !3001, file: !688, line: 53, type: !707)
!3006 = !DILocation(line: 0, scope: !3001)
!3007 = !DILocalVariable(name: "s", arg: 1, scope: !3008, file: !3009, line: 55, type: !707)
!3008 = distinct !DISubprogram(name: "imalloc", scope: !3009, file: !3009, line: 55, type: !3002, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3010)
!3009 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3010 = !{!3007}
!3011 = !DILocation(line: 0, scope: !3008, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 55, column: 25, scope: !3001)
!3013 = !DILocation(line: 57, column: 26, scope: !3008, inlinedAt: !3012)
!3014 = !DILocation(line: 0, scope: !2968, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 55, column: 10, scope: !3001)
!3016 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3015)
!3017 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3015)
!3018 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3015)
!3019 = !DILocation(line: 55, column: 3, scope: !3001)
!3020 = distinct !DISubprogram(name: "xcharalloc", scope: !688, file: !688, line: 59, type: !3021, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!255, !110}
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "n", arg: 1, scope: !3020, file: !688, line: 59, type: !110)
!3025 = !DILocation(line: 0, scope: !3020)
!3026 = !DILocation(line: 0, scope: !2987, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 61, column: 10, scope: !3020)
!3028 = !DILocation(line: 49, column: 25, scope: !2987, inlinedAt: !3027)
!3029 = !DILocation(line: 0, scope: !2968, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 49, column: 10, scope: !2987, inlinedAt: !3027)
!3031 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3030)
!3032 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3030)
!3033 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3030)
!3034 = !DILocation(line: 61, column: 3, scope: !3020)
!3035 = distinct !DISubprogram(name: "xrealloc", scope: !688, file: !688, line: 68, type: !3036, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3038)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!107, !107, !110}
!3038 = !{!3039, !3040}
!3039 = !DILocalVariable(name: "p", arg: 1, scope: !3035, file: !688, line: 68, type: !107)
!3040 = !DILocalVariable(name: "s", arg: 2, scope: !3035, file: !688, line: 68, type: !110)
!3041 = !DILocation(line: 0, scope: !3035)
!3042 = !DILocalVariable(name: "ptr", arg: 1, scope: !3043, file: !3044, line: 2057, type: !107)
!3043 = distinct !DISubprogram(name: "rpl_realloc", scope: !3044, file: !3044, line: 2057, type: !3036, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3045)
!3044 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3045 = !{!3042, !3046}
!3046 = !DILocalVariable(name: "size", arg: 2, scope: !3043, file: !3044, line: 2057, type: !110)
!3047 = !DILocation(line: 0, scope: !3043, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 70, column: 25, scope: !3035)
!3049 = !DILocation(line: 2059, column: 24, scope: !3043, inlinedAt: !3048)
!3050 = !DILocation(line: 2059, column: 10, scope: !3043, inlinedAt: !3048)
!3051 = !DILocation(line: 0, scope: !2968, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 70, column: 10, scope: !3035)
!3053 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3052)
!3054 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3052)
!3055 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3052)
!3056 = !DILocation(line: 70, column: 3, scope: !3035)
!3057 = !DISubprogram(name: "realloc", scope: !941, file: !941, line: 551, type: !3036, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3058 = distinct !DISubprogram(name: "xirealloc", scope: !688, file: !688, line: 74, type: !3059, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!107, !107, !707}
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "p", arg: 1, scope: !3058, file: !688, line: 74, type: !107)
!3063 = !DILocalVariable(name: "s", arg: 2, scope: !3058, file: !688, line: 74, type: !707)
!3064 = !DILocation(line: 0, scope: !3058)
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3066, file: !3009, line: 66, type: !107)
!3066 = distinct !DISubprogram(name: "irealloc", scope: !3009, file: !3009, line: 66, type: !3059, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3067)
!3067 = !{!3065, !3068}
!3068 = !DILocalVariable(name: "s", arg: 2, scope: !3066, file: !3009, line: 66, type: !707)
!3069 = !DILocation(line: 0, scope: !3066, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 76, column: 25, scope: !3058)
!3071 = !DILocation(line: 0, scope: !3043, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 68, column: 26, scope: !3066, inlinedAt: !3070)
!3073 = !DILocation(line: 2059, column: 24, scope: !3043, inlinedAt: !3072)
!3074 = !DILocation(line: 2059, column: 10, scope: !3043, inlinedAt: !3072)
!3075 = !DILocation(line: 0, scope: !2968, inlinedAt: !3076)
!3076 = distinct !DILocation(line: 76, column: 10, scope: !3058)
!3077 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3076)
!3078 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3076)
!3079 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3076)
!3080 = !DILocation(line: 76, column: 3, scope: !3058)
!3081 = distinct !DISubprogram(name: "xireallocarray", scope: !688, file: !688, line: 89, type: !3082, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!107, !107, !707, !707}
!3084 = !{!3085, !3086, !3087}
!3085 = !DILocalVariable(name: "p", arg: 1, scope: !3081, file: !688, line: 89, type: !107)
!3086 = !DILocalVariable(name: "n", arg: 2, scope: !3081, file: !688, line: 89, type: !707)
!3087 = !DILocalVariable(name: "s", arg: 3, scope: !3081, file: !688, line: 89, type: !707)
!3088 = !DILocation(line: 0, scope: !3081)
!3089 = !DILocalVariable(name: "p", arg: 1, scope: !3090, file: !3009, line: 98, type: !107)
!3090 = distinct !DISubprogram(name: "ireallocarray", scope: !3009, file: !3009, line: 98, type: !3082, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3091)
!3091 = !{!3089, !3092, !3093}
!3092 = !DILocalVariable(name: "n", arg: 2, scope: !3090, file: !3009, line: 98, type: !707)
!3093 = !DILocalVariable(name: "s", arg: 3, scope: !3090, file: !3009, line: 98, type: !707)
!3094 = !DILocation(line: 0, scope: !3090, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 91, column: 25, scope: !3081)
!3096 = !DILocation(line: 101, column: 13, scope: !3090, inlinedAt: !3095)
!3097 = !DILocation(line: 0, scope: !2968, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 91, column: 10, scope: !3081)
!3099 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3098)
!3100 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3098)
!3101 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3098)
!3102 = !DILocation(line: 91, column: 3, scope: !3081)
!3103 = distinct !DISubprogram(name: "xnmalloc", scope: !688, file: !688, line: 98, type: !3104, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3106)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!107, !110, !110}
!3106 = !{!3107, !3108}
!3107 = !DILocalVariable(name: "n", arg: 1, scope: !3103, file: !688, line: 98, type: !110)
!3108 = !DILocalVariable(name: "s", arg: 2, scope: !3103, file: !688, line: 98, type: !110)
!3109 = !DILocation(line: 0, scope: !3103)
!3110 = !DILocation(line: 0, scope: !2960, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 100, column: 10, scope: !3103)
!3112 = !DILocation(line: 85, column: 25, scope: !2960, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !2968, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 85, column: 10, scope: !2960, inlinedAt: !3111)
!3115 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3114)
!3118 = !DILocation(line: 100, column: 3, scope: !3103)
!3119 = distinct !DISubprogram(name: "xinmalloc", scope: !688, file: !688, line: 104, type: !3120, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!107, !707, !707}
!3122 = !{!3123, !3124}
!3123 = !DILocalVariable(name: "n", arg: 1, scope: !3119, file: !688, line: 104, type: !707)
!3124 = !DILocalVariable(name: "s", arg: 2, scope: !3119, file: !688, line: 104, type: !707)
!3125 = !DILocation(line: 0, scope: !3119)
!3126 = !DILocation(line: 0, scope: !3081, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 106, column: 10, scope: !3119)
!3128 = !DILocation(line: 0, scope: !3090, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 91, column: 25, scope: !3081, inlinedAt: !3127)
!3130 = !DILocation(line: 101, column: 13, scope: !3090, inlinedAt: !3129)
!3131 = !DILocation(line: 0, scope: !2968, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 91, column: 10, scope: !3081, inlinedAt: !3127)
!3133 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3132)
!3134 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3132)
!3135 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3132)
!3136 = !DILocation(line: 106, column: 3, scope: !3119)
!3137 = distinct !DISubprogram(name: "x2realloc", scope: !688, file: !688, line: 116, type: !3138, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3140)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!107, !107, !694}
!3140 = !{!3141, !3142}
!3141 = !DILocalVariable(name: "p", arg: 1, scope: !3137, file: !688, line: 116, type: !107)
!3142 = !DILocalVariable(name: "ps", arg: 2, scope: !3137, file: !688, line: 116, type: !694)
!3143 = !DILocation(line: 0, scope: !3137)
!3144 = !DILocation(line: 0, scope: !691, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 118, column: 10, scope: !3137)
!3146 = !DILocation(line: 178, column: 14, scope: !691, inlinedAt: !3145)
!3147 = !DILocation(line: 180, column: 9, scope: !3148, inlinedAt: !3145)
!3148 = distinct !DILexicalBlock(scope: !691, file: !688, line: 180, column: 7)
!3149 = !DILocation(line: 180, column: 7, scope: !691, inlinedAt: !3145)
!3150 = !DILocation(line: 182, column: 13, scope: !3151, inlinedAt: !3145)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !688, line: 182, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3148, file: !688, line: 181, column: 5)
!3153 = !DILocation(line: 182, column: 11, scope: !3152, inlinedAt: !3145)
!3154 = !DILocation(line: 197, column: 11, scope: !3155, inlinedAt: !3145)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !688, line: 197, column: 11)
!3156 = distinct !DILexicalBlock(scope: !3148, file: !688, line: 195, column: 5)
!3157 = !DILocation(line: 197, column: 11, scope: !3156, inlinedAt: !3145)
!3158 = !DILocation(line: 198, column: 9, scope: !3155, inlinedAt: !3145)
!3159 = !DILocation(line: 0, scope: !2960, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 201, column: 7, scope: !691, inlinedAt: !3145)
!3161 = !DILocation(line: 85, column: 25, scope: !2960, inlinedAt: !3160)
!3162 = !DILocation(line: 0, scope: !2968, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 85, column: 10, scope: !2960, inlinedAt: !3160)
!3164 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3163)
!3165 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3163)
!3166 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3163)
!3167 = !DILocation(line: 202, column: 7, scope: !691, inlinedAt: !3145)
!3168 = !DILocation(line: 118, column: 3, scope: !3137)
!3169 = !DILocation(line: 0, scope: !691)
!3170 = !DILocation(line: 178, column: 14, scope: !691)
!3171 = !DILocation(line: 180, column: 9, scope: !3148)
!3172 = !DILocation(line: 180, column: 7, scope: !691)
!3173 = !DILocation(line: 182, column: 13, scope: !3151)
!3174 = !DILocation(line: 182, column: 11, scope: !3152)
!3175 = !DILocation(line: 190, column: 30, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3151, file: !688, line: 183, column: 9)
!3177 = !DILocation(line: 191, column: 16, scope: !3176)
!3178 = !DILocation(line: 191, column: 13, scope: !3176)
!3179 = !DILocation(line: 192, column: 9, scope: !3176)
!3180 = !DILocation(line: 197, column: 11, scope: !3155)
!3181 = !DILocation(line: 197, column: 11, scope: !3156)
!3182 = !DILocation(line: 198, column: 9, scope: !3155)
!3183 = !DILocation(line: 0, scope: !2960, inlinedAt: !3184)
!3184 = distinct !DILocation(line: 201, column: 7, scope: !691)
!3185 = !DILocation(line: 85, column: 25, scope: !2960, inlinedAt: !3184)
!3186 = !DILocation(line: 0, scope: !2968, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 85, column: 10, scope: !2960, inlinedAt: !3184)
!3188 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3187)
!3189 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3187)
!3190 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3187)
!3191 = !DILocation(line: 202, column: 7, scope: !691)
!3192 = !DILocation(line: 203, column: 3, scope: !691)
!3193 = !DILocation(line: 0, scope: !703)
!3194 = !DILocation(line: 230, column: 14, scope: !703)
!3195 = !DILocation(line: 238, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !703, file: !688, line: 238, column: 7)
!3197 = !DILocation(line: 238, column: 7, scope: !703)
!3198 = !DILocation(line: 240, column: 9, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !703, file: !688, line: 240, column: 7)
!3200 = !DILocation(line: 240, column: 18, scope: !3199)
!3201 = !DILocation(line: 253, column: 8, scope: !703)
!3202 = !DILocation(line: 256, column: 7, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !703, file: !688, line: 256, column: 7)
!3204 = !DILocation(line: 256, column: 7, scope: !703)
!3205 = !DILocation(line: 258, column: 27, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3203, file: !688, line: 257, column: 5)
!3207 = !DILocation(line: 259, column: 32, scope: !3206)
!3208 = !DILocation(line: 260, column: 5, scope: !3206)
!3209 = !DILocation(line: 262, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !703, file: !688, line: 262, column: 7)
!3211 = !DILocation(line: 262, column: 7, scope: !703)
!3212 = !DILocation(line: 263, column: 9, scope: !3210)
!3213 = !DILocation(line: 263, column: 5, scope: !3210)
!3214 = !DILocation(line: 264, column: 9, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !703, file: !688, line: 264, column: 7)
!3216 = !DILocation(line: 264, column: 14, scope: !3215)
!3217 = !DILocation(line: 265, column: 7, scope: !3215)
!3218 = !DILocation(line: 265, column: 11, scope: !3215)
!3219 = !DILocation(line: 266, column: 11, scope: !3215)
!3220 = !DILocation(line: 267, column: 14, scope: !3215)
!3221 = !DILocation(line: 264, column: 7, scope: !703)
!3222 = !DILocation(line: 268, column: 5, scope: !3215)
!3223 = !DILocation(line: 0, scope: !3035, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 269, column: 8, scope: !703)
!3225 = !DILocation(line: 0, scope: !3043, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 70, column: 25, scope: !3035, inlinedAt: !3224)
!3227 = !DILocation(line: 2059, column: 24, scope: !3043, inlinedAt: !3226)
!3228 = !DILocation(line: 2059, column: 10, scope: !3043, inlinedAt: !3226)
!3229 = !DILocation(line: 0, scope: !2968, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 70, column: 10, scope: !3035, inlinedAt: !3224)
!3231 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3230)
!3232 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3230)
!3233 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3230)
!3234 = !DILocation(line: 270, column: 7, scope: !703)
!3235 = !DILocation(line: 271, column: 3, scope: !703)
!3236 = distinct !DISubprogram(name: "xzalloc", scope: !688, file: !688, line: 279, type: !2988, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3237)
!3237 = !{!3238}
!3238 = !DILocalVariable(name: "s", arg: 1, scope: !3236, file: !688, line: 279, type: !110)
!3239 = !DILocation(line: 0, scope: !3236)
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !688, line: 294, type: !110)
!3241 = distinct !DISubprogram(name: "xcalloc", scope: !688, file: !688, line: 294, type: !3104, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3242)
!3242 = !{!3240, !3243}
!3243 = !DILocalVariable(name: "s", arg: 2, scope: !3241, file: !688, line: 294, type: !110)
!3244 = !DILocation(line: 0, scope: !3241, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 281, column: 10, scope: !3236)
!3246 = !DILocation(line: 296, column: 25, scope: !3241, inlinedAt: !3245)
!3247 = !DILocation(line: 0, scope: !2968, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 296, column: 10, scope: !3241, inlinedAt: !3245)
!3249 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3248)
!3250 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3248)
!3251 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3248)
!3252 = !DILocation(line: 281, column: 3, scope: !3236)
!3253 = !DISubprogram(name: "calloc", scope: !941, file: !941, line: 543, type: !3104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3254 = !DILocation(line: 0, scope: !3241)
!3255 = !DILocation(line: 296, column: 25, scope: !3241)
!3256 = !DILocation(line: 0, scope: !2968, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 296, column: 10, scope: !3241)
!3258 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3257)
!3259 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3257)
!3260 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3257)
!3261 = !DILocation(line: 296, column: 3, scope: !3241)
!3262 = distinct !DISubprogram(name: "xizalloc", scope: !688, file: !688, line: 285, type: !3002, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3263)
!3263 = !{!3264}
!3264 = !DILocalVariable(name: "s", arg: 1, scope: !3262, file: !688, line: 285, type: !707)
!3265 = !DILocation(line: 0, scope: !3262)
!3266 = !DILocalVariable(name: "n", arg: 1, scope: !3267, file: !688, line: 300, type: !707)
!3267 = distinct !DISubprogram(name: "xicalloc", scope: !688, file: !688, line: 300, type: !3120, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3268)
!3268 = !{!3266, !3269}
!3269 = !DILocalVariable(name: "s", arg: 2, scope: !3267, file: !688, line: 300, type: !707)
!3270 = !DILocation(line: 0, scope: !3267, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 287, column: 10, scope: !3262)
!3272 = !DILocalVariable(name: "n", arg: 1, scope: !3273, file: !3009, line: 77, type: !707)
!3273 = distinct !DISubprogram(name: "icalloc", scope: !3009, file: !3009, line: 77, type: !3120, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3274)
!3274 = !{!3272, !3275}
!3275 = !DILocalVariable(name: "s", arg: 2, scope: !3273, file: !3009, line: 77, type: !707)
!3276 = !DILocation(line: 0, scope: !3273, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 302, column: 25, scope: !3267, inlinedAt: !3271)
!3278 = !DILocation(line: 91, column: 10, scope: !3273, inlinedAt: !3277)
!3279 = !DILocation(line: 0, scope: !2968, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 302, column: 10, scope: !3267, inlinedAt: !3271)
!3281 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3280)
!3282 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3280)
!3283 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3280)
!3284 = !DILocation(line: 287, column: 3, scope: !3262)
!3285 = !DILocation(line: 0, scope: !3267)
!3286 = !DILocation(line: 0, scope: !3273, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 302, column: 25, scope: !3267)
!3288 = !DILocation(line: 91, column: 10, scope: !3273, inlinedAt: !3287)
!3289 = !DILocation(line: 0, scope: !2968, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 302, column: 10, scope: !3267)
!3291 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3290)
!3292 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3290)
!3293 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3290)
!3294 = !DILocation(line: 302, column: 3, scope: !3267)
!3295 = distinct !DISubprogram(name: "xmemdup", scope: !688, file: !688, line: 310, type: !3296, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!107, !965, !110}
!3298 = !{!3299, !3300}
!3299 = !DILocalVariable(name: "p", arg: 1, scope: !3295, file: !688, line: 310, type: !965)
!3300 = !DILocalVariable(name: "s", arg: 2, scope: !3295, file: !688, line: 310, type: !110)
!3301 = !DILocation(line: 0, scope: !3295)
!3302 = !DILocation(line: 0, scope: !2987, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 312, column: 18, scope: !3295)
!3304 = !DILocation(line: 49, column: 25, scope: !2987, inlinedAt: !3303)
!3305 = !DILocation(line: 0, scope: !2968, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 49, column: 10, scope: !2987, inlinedAt: !3303)
!3307 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3306)
!3308 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3306)
!3309 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3306)
!3310 = !DILocalVariable(name: "__dest", arg: 1, scope: !3311, file: !1442, line: 26, type: !3314)
!3311 = distinct !DISubprogram(name: "memcpy", scope: !1442, file: !1442, line: 26, type: !3312, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3315)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!107, !3314, !964, !110}
!3314 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!3315 = !{!3310, !3316, !3317}
!3316 = !DILocalVariable(name: "__src", arg: 2, scope: !3311, file: !1442, line: 26, type: !964)
!3317 = !DILocalVariable(name: "__len", arg: 3, scope: !3311, file: !1442, line: 26, type: !110)
!3318 = !DILocation(line: 0, scope: !3311, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 312, column: 10, scope: !3295)
!3320 = !DILocation(line: 29, column: 10, scope: !3311, inlinedAt: !3319)
!3321 = !DILocation(line: 312, column: 3, scope: !3295)
!3322 = distinct !DISubprogram(name: "ximemdup", scope: !688, file: !688, line: 316, type: !3323, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!107, !965, !707}
!3325 = !{!3326, !3327}
!3326 = !DILocalVariable(name: "p", arg: 1, scope: !3322, file: !688, line: 316, type: !965)
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3322, file: !688, line: 316, type: !707)
!3328 = !DILocation(line: 0, scope: !3322)
!3329 = !DILocation(line: 0, scope: !3001, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 318, column: 18, scope: !3322)
!3331 = !DILocation(line: 0, scope: !3008, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 55, column: 25, scope: !3001, inlinedAt: !3330)
!3333 = !DILocation(line: 57, column: 26, scope: !3008, inlinedAt: !3332)
!3334 = !DILocation(line: 0, scope: !2968, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 55, column: 10, scope: !3001, inlinedAt: !3330)
!3336 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3335)
!3337 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3335)
!3338 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3335)
!3339 = !DILocation(line: 0, scope: !3311, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 318, column: 10, scope: !3322)
!3341 = !DILocation(line: 29, column: 10, scope: !3311, inlinedAt: !3340)
!3342 = !DILocation(line: 318, column: 3, scope: !3322)
!3343 = distinct !DISubprogram(name: "ximemdup0", scope: !688, file: !688, line: 325, type: !3344, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!255, !965, !707}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "p", arg: 1, scope: !3343, file: !688, line: 325, type: !965)
!3348 = !DILocalVariable(name: "s", arg: 2, scope: !3343, file: !688, line: 325, type: !707)
!3349 = !DILocalVariable(name: "result", scope: !3343, file: !688, line: 327, type: !255)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 327, column: 30, scope: !3343)
!3352 = !DILocation(line: 0, scope: !3001, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 327, column: 18, scope: !3343)
!3354 = !DILocation(line: 0, scope: !3008, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 55, column: 25, scope: !3001, inlinedAt: !3353)
!3356 = !DILocation(line: 57, column: 26, scope: !3008, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !2968, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 55, column: 10, scope: !3001, inlinedAt: !3353)
!3359 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3358)
!3362 = !DILocation(line: 328, column: 3, scope: !3343)
!3363 = !DILocation(line: 328, column: 13, scope: !3343)
!3364 = !DILocation(line: 0, scope: !3311, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 329, column: 10, scope: !3343)
!3366 = !DILocation(line: 29, column: 10, scope: !3311, inlinedAt: !3365)
!3367 = !DILocation(line: 329, column: 3, scope: !3343)
!3368 = distinct !DISubprogram(name: "xstrdup", scope: !688, file: !688, line: 335, type: !943, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !3369)
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "string", arg: 1, scope: !3368, file: !688, line: 335, type: !72)
!3371 = !DILocation(line: 0, scope: !3368)
!3372 = !DILocation(line: 337, column: 27, scope: !3368)
!3373 = !DILocation(line: 337, column: 43, scope: !3368)
!3374 = !DILocation(line: 0, scope: !3295, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 337, column: 10, scope: !3368)
!3376 = !DILocation(line: 0, scope: !2987, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 312, column: 18, scope: !3295, inlinedAt: !3375)
!3378 = !DILocation(line: 49, column: 25, scope: !2987, inlinedAt: !3377)
!3379 = !DILocation(line: 0, scope: !2968, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 49, column: 10, scope: !2987, inlinedAt: !3377)
!3381 = !DILocation(line: 39, column: 8, scope: !2975, inlinedAt: !3380)
!3382 = !DILocation(line: 39, column: 7, scope: !2968, inlinedAt: !3380)
!3383 = !DILocation(line: 40, column: 5, scope: !2975, inlinedAt: !3380)
!3384 = !DILocation(line: 0, scope: !3311, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 312, column: 10, scope: !3295, inlinedAt: !3375)
!3386 = !DILocation(line: 29, column: 10, scope: !3311, inlinedAt: !3385)
!3387 = !DILocation(line: 337, column: 3, scope: !3368)
!3388 = distinct !DISubprogram(name: "xalloc_die", scope: !651, file: !651, line: 32, type: !382, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3389)
!3389 = !{!3390}
!3390 = !DILocalVariable(name: "__errstatus", scope: !3391, file: !651, line: 34, type: !3392)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !651, line: 34, column: 3)
!3392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!3393 = !DILocation(line: 34, column: 3, scope: !3391)
!3394 = !DILocation(line: 0, scope: !3391)
!3395 = !DILocation(line: 40, column: 3, scope: !3388)
!3396 = distinct !DISubprogram(name: "close_stream", scope: !725, file: !725, line: 55, type: !3397, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3433)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!108, !3399}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3401, file: !251, line: 51, baseType: !108, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3401, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3401, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3401, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3401, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3401, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3401, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3401, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3401, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3401, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3401, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3401, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3401, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3401, file: !251, line: 70, baseType: !3417, size: 64, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3401, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3401, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3401, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3401, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3401, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3401, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3401, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3401, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3401, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3401, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3401, file: !251, line: 93, baseType: !3417, size: 64, offset: 1344)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3401, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3401, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3401, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3401, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3433 = !{!3434, !3435, !3437, !3438}
!3434 = !DILocalVariable(name: "stream", arg: 1, scope: !3396, file: !725, line: 55, type: !3399)
!3435 = !DILocalVariable(name: "some_pending", scope: !3396, file: !725, line: 57, type: !3436)
!3436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3437 = !DILocalVariable(name: "prev_fail", scope: !3396, file: !725, line: 58, type: !3436)
!3438 = !DILocalVariable(name: "fclose_fail", scope: !3396, file: !725, line: 59, type: !3436)
!3439 = !DILocation(line: 0, scope: !3396)
!3440 = !DILocation(line: 57, column: 30, scope: !3396)
!3441 = !DILocalVariable(name: "__stream", arg: 1, scope: !3442, file: !1192, line: 135, type: !3399)
!3442 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1192, file: !1192, line: 135, type: !3397, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3443)
!3443 = !{!3441}
!3444 = !DILocation(line: 0, scope: !3442, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 58, column: 27, scope: !3396)
!3446 = !DILocation(line: 137, column: 10, scope: !3442, inlinedAt: !3445)
!3447 = !{!1201, !821, i64 0}
!3448 = !DILocation(line: 58, column: 43, scope: !3396)
!3449 = !DILocation(line: 59, column: 29, scope: !3396)
!3450 = !DILocation(line: 59, column: 45, scope: !3396)
!3451 = !DILocation(line: 69, column: 17, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3396, file: !725, line: 69, column: 7)
!3453 = !DILocation(line: 57, column: 50, scope: !3396)
!3454 = !DILocation(line: 69, column: 33, scope: !3452)
!3455 = !DILocation(line: 69, column: 53, scope: !3452)
!3456 = !DILocation(line: 69, column: 59, scope: !3452)
!3457 = !DILocation(line: 69, column: 7, scope: !3396)
!3458 = !DILocation(line: 71, column: 11, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3452, file: !725, line: 70, column: 5)
!3460 = !DILocation(line: 72, column: 9, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3459, file: !725, line: 71, column: 11)
!3462 = !DILocation(line: 72, column: 15, scope: !3461)
!3463 = !DILocation(line: 77, column: 1, scope: !3396)
!3464 = !DISubprogram(name: "__fpending", scope: !3465, file: !3465, line: 75, type: !3466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3465 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!110, !3399}
!3468 = distinct !DISubprogram(name: "rpl_fclose", scope: !727, file: !727, line: 58, type: !3469, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3505)
!3469 = !DISubroutineType(types: !3470)
!3470 = !{!108, !3471}
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3473, file: !251, line: 51, baseType: !108, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3473, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3473, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3473, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3473, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3473, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3473, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3473, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3473, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3473, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3473, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3473, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3473, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3473, file: !251, line: 70, baseType: !3489, size: 64, offset: 832)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3473, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3473, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3473, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3473, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3473, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3473, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3473, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3473, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3473, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3473, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3473, file: !251, line: 93, baseType: !3489, size: 64, offset: 1344)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3473, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3473, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3473, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3473, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3505 = !{!3506, !3507, !3508, !3509}
!3506 = !DILocalVariable(name: "fp", arg: 1, scope: !3468, file: !727, line: 58, type: !3471)
!3507 = !DILocalVariable(name: "saved_errno", scope: !3468, file: !727, line: 60, type: !108)
!3508 = !DILocalVariable(name: "fd", scope: !3468, file: !727, line: 63, type: !108)
!3509 = !DILocalVariable(name: "result", scope: !3468, file: !727, line: 74, type: !108)
!3510 = !DILocation(line: 0, scope: !3468)
!3511 = !DILocation(line: 63, column: 12, scope: !3468)
!3512 = !DILocation(line: 64, column: 10, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3468, file: !727, line: 64, column: 7)
!3514 = !DILocation(line: 64, column: 7, scope: !3468)
!3515 = !DILocation(line: 65, column: 12, scope: !3513)
!3516 = !DILocation(line: 65, column: 5, scope: !3513)
!3517 = !DILocation(line: 70, column: 9, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3468, file: !727, line: 70, column: 7)
!3519 = !DILocation(line: 70, column: 23, scope: !3518)
!3520 = !DILocation(line: 70, column: 33, scope: !3518)
!3521 = !DILocation(line: 70, column: 26, scope: !3518)
!3522 = !DILocation(line: 70, column: 59, scope: !3518)
!3523 = !DILocation(line: 71, column: 7, scope: !3518)
!3524 = !DILocation(line: 71, column: 10, scope: !3518)
!3525 = !DILocation(line: 70, column: 7, scope: !3468)
!3526 = !DILocation(line: 100, column: 12, scope: !3468)
!3527 = !DILocation(line: 105, column: 7, scope: !3468)
!3528 = !DILocation(line: 72, column: 19, scope: !3518)
!3529 = !DILocation(line: 105, column: 19, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3468, file: !727, line: 105, column: 7)
!3531 = !DILocation(line: 107, column: 13, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3530, file: !727, line: 106, column: 5)
!3533 = !DILocation(line: 109, column: 5, scope: !3532)
!3534 = !DILocation(line: 112, column: 1, scope: !3468)
!3535 = !DISubprogram(name: "fileno", scope: !342, file: !342, line: 809, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3536 = !DISubprogram(name: "fclose", scope: !342, file: !342, line: 178, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3537 = !DISubprogram(name: "__freading", scope: !3465, file: !3465, line: 51, type: !3469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3538 = !DISubprogram(name: "lseek", scope: !1013, file: !1013, line: 339, type: !3539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!274, !108, !274, !108}
!3541 = distinct !DISubprogram(name: "rpl_fflush", scope: !729, file: !729, line: 130, type: !3542, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3578)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!108, !3544}
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3546)
!3546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3547)
!3547 = !{!3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3546, file: !251, line: 51, baseType: !108, size: 32)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3546, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3546, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3546, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3546, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3546, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3546, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3546, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3546, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3546, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3546, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3546, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3546, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3546, file: !251, line: 70, baseType: !3562, size: 64, offset: 832)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3546, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3546, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3546, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3546, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3546, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3546, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3546, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3546, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3546, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3546, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3546, file: !251, line: 93, baseType: !3562, size: 64, offset: 1344)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3546, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3546, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3546, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3546, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3578 = !{!3579}
!3579 = !DILocalVariable(name: "stream", arg: 1, scope: !3541, file: !729, line: 130, type: !3544)
!3580 = !DILocation(line: 0, scope: !3541)
!3581 = !DILocation(line: 151, column: 14, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3541, file: !729, line: 151, column: 7)
!3583 = !DILocation(line: 151, column: 22, scope: !3582)
!3584 = !DILocation(line: 151, column: 27, scope: !3582)
!3585 = !DILocation(line: 151, column: 7, scope: !3541)
!3586 = !DILocation(line: 152, column: 12, scope: !3582)
!3587 = !DILocation(line: 152, column: 5, scope: !3582)
!3588 = !DILocalVariable(name: "fp", arg: 1, scope: !3589, file: !729, line: 42, type: !3544)
!3589 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !729, file: !729, line: 42, type: !3590, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{null, !3544}
!3592 = !{!3588}
!3593 = !DILocation(line: 0, scope: !3589, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 157, column: 3, scope: !3541)
!3595 = !DILocation(line: 44, column: 12, scope: !3596, inlinedAt: !3594)
!3596 = distinct !DILexicalBlock(scope: !3589, file: !729, line: 44, column: 7)
!3597 = !DILocation(line: 44, column: 19, scope: !3596, inlinedAt: !3594)
!3598 = !DILocation(line: 44, column: 7, scope: !3589, inlinedAt: !3594)
!3599 = !DILocation(line: 46, column: 5, scope: !3596, inlinedAt: !3594)
!3600 = !DILocation(line: 159, column: 10, scope: !3541)
!3601 = !DILocation(line: 159, column: 3, scope: !3541)
!3602 = !DILocation(line: 236, column: 1, scope: !3541)
!3603 = !DISubprogram(name: "fflush", scope: !342, file: !342, line: 230, type: !3542, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3604 = distinct !DISubprogram(name: "rpl_fseeko", scope: !731, file: !731, line: 28, type: !3605, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3642)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{!108, !3607, !3641, !108}
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3609)
!3609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3610)
!3610 = !{!3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3609, file: !251, line: 51, baseType: !108, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3609, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3609, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3609, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3609, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3609, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3609, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3609, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3609, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3609, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3609, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3609, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3609, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3609, file: !251, line: 70, baseType: !3625, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3609, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3609, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3609, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3609, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3609, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3609, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3609, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3609, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3609, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3609, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3609, file: !251, line: 93, baseType: !3625, size: 64, offset: 1344)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3609, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3609, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3609, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3609, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !342, line: 63, baseType: !274)
!3642 = !{!3643, !3644, !3645, !3646}
!3643 = !DILocalVariable(name: "fp", arg: 1, scope: !3604, file: !731, line: 28, type: !3607)
!3644 = !DILocalVariable(name: "offset", arg: 2, scope: !3604, file: !731, line: 28, type: !3641)
!3645 = !DILocalVariable(name: "whence", arg: 3, scope: !3604, file: !731, line: 28, type: !108)
!3646 = !DILocalVariable(name: "pos", scope: !3647, file: !731, line: 123, type: !3641)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !731, line: 119, column: 5)
!3648 = distinct !DILexicalBlock(scope: !3604, file: !731, line: 55, column: 7)
!3649 = !DILocation(line: 0, scope: !3604)
!3650 = !DILocation(line: 55, column: 12, scope: !3648)
!3651 = !{!1201, !761, i64 16}
!3652 = !DILocation(line: 55, column: 33, scope: !3648)
!3653 = !{!1201, !761, i64 8}
!3654 = !DILocation(line: 55, column: 25, scope: !3648)
!3655 = !DILocation(line: 56, column: 7, scope: !3648)
!3656 = !DILocation(line: 56, column: 15, scope: !3648)
!3657 = !DILocation(line: 56, column: 37, scope: !3648)
!3658 = !{!1201, !761, i64 32}
!3659 = !DILocation(line: 56, column: 29, scope: !3648)
!3660 = !DILocation(line: 57, column: 7, scope: !3648)
!3661 = !DILocation(line: 57, column: 15, scope: !3648)
!3662 = !{!1201, !761, i64 72}
!3663 = !DILocation(line: 57, column: 29, scope: !3648)
!3664 = !DILocation(line: 55, column: 7, scope: !3604)
!3665 = !DILocation(line: 123, column: 26, scope: !3647)
!3666 = !DILocation(line: 123, column: 19, scope: !3647)
!3667 = !DILocation(line: 0, scope: !3647)
!3668 = !DILocation(line: 124, column: 15, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3647, file: !731, line: 124, column: 11)
!3670 = !DILocation(line: 124, column: 11, scope: !3647)
!3671 = !DILocation(line: 135, column: 19, scope: !3647)
!3672 = !DILocation(line: 136, column: 12, scope: !3647)
!3673 = !DILocation(line: 136, column: 20, scope: !3647)
!3674 = !{!1201, !1202, i64 144}
!3675 = !DILocation(line: 167, column: 7, scope: !3647)
!3676 = !DILocation(line: 169, column: 10, scope: !3604)
!3677 = !DILocation(line: 169, column: 3, scope: !3604)
!3678 = !DILocation(line: 170, column: 1, scope: !3604)
!3679 = !DISubprogram(name: "fseeko", scope: !342, file: !342, line: 736, type: !3680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!108, !3607, !274, !108}
!3682 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !658, file: !658, line: 100, type: !3683, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3686)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!110, !1460, !72, !110, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!3686 = !{!3687, !3688, !3689, !3690, !3691}
!3687 = !DILocalVariable(name: "pwc", arg: 1, scope: !3682, file: !658, line: 100, type: !1460)
!3688 = !DILocalVariable(name: "s", arg: 2, scope: !3682, file: !658, line: 100, type: !72)
!3689 = !DILocalVariable(name: "n", arg: 3, scope: !3682, file: !658, line: 100, type: !110)
!3690 = !DILocalVariable(name: "ps", arg: 4, scope: !3682, file: !658, line: 100, type: !3685)
!3691 = !DILocalVariable(name: "ret", scope: !3682, file: !658, line: 130, type: !110)
!3692 = !DILocation(line: 0, scope: !3682)
!3693 = !DILocation(line: 105, column: 9, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3682, file: !658, line: 105, column: 7)
!3695 = !DILocation(line: 105, column: 7, scope: !3682)
!3696 = !DILocation(line: 117, column: 10, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3682, file: !658, line: 117, column: 7)
!3698 = !DILocation(line: 117, column: 7, scope: !3682)
!3699 = !DILocation(line: 130, column: 16, scope: !3682)
!3700 = !DILocation(line: 135, column: 11, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3682, file: !658, line: 135, column: 7)
!3702 = !DILocation(line: 135, column: 25, scope: !3701)
!3703 = !DILocation(line: 135, column: 30, scope: !3701)
!3704 = !DILocation(line: 135, column: 7, scope: !3682)
!3705 = !DILocalVariable(name: "ps", arg: 1, scope: !3706, file: !1433, line: 1135, type: !3685)
!3706 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !3707, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3709)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3685}
!3709 = !{!3705}
!3710 = !DILocation(line: 0, scope: !3706, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 137, column: 5, scope: !3701)
!3712 = !DILocalVariable(name: "__dest", arg: 1, scope: !3713, file: !1442, line: 57, type: !107)
!3713 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3714)
!3714 = !{!3712, !3715, !3716}
!3715 = !DILocalVariable(name: "__ch", arg: 2, scope: !3713, file: !1442, line: 57, type: !108)
!3716 = !DILocalVariable(name: "__len", arg: 3, scope: !3713, file: !1442, line: 57, type: !110)
!3717 = !DILocation(line: 0, scope: !3713, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 1137, column: 3, scope: !3706, inlinedAt: !3711)
!3719 = !DILocation(line: 59, column: 10, scope: !3713, inlinedAt: !3718)
!3720 = !DILocation(line: 137, column: 5, scope: !3701)
!3721 = !DILocation(line: 138, column: 11, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3682, file: !658, line: 138, column: 7)
!3723 = !DILocation(line: 138, column: 7, scope: !3682)
!3724 = !DILocation(line: 139, column: 5, scope: !3722)
!3725 = !DILocation(line: 143, column: 26, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3682, file: !658, line: 143, column: 7)
!3727 = !DILocation(line: 143, column: 41, scope: !3726)
!3728 = !DILocation(line: 143, column: 7, scope: !3682)
!3729 = !DILocation(line: 145, column: 15, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3731, file: !658, line: 145, column: 11)
!3731 = distinct !DILexicalBlock(scope: !3726, file: !658, line: 144, column: 5)
!3732 = !DILocation(line: 145, column: 11, scope: !3731)
!3733 = !DILocation(line: 146, column: 32, scope: !3730)
!3734 = !DILocation(line: 146, column: 16, scope: !3730)
!3735 = !DILocation(line: 146, column: 14, scope: !3730)
!3736 = !DILocation(line: 146, column: 9, scope: !3730)
!3737 = !DILocation(line: 286, column: 1, scope: !3682)
!3738 = !DISubprogram(name: "mbsinit", scope: !3739, file: !3739, line: 293, type: !3740, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3739 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!108, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!3744 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !733, file: !733, line: 27, type: !2952, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3745)
!3745 = !{!3746, !3747, !3748, !3749}
!3746 = !DILocalVariable(name: "ptr", arg: 1, scope: !3744, file: !733, line: 27, type: !107)
!3747 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3744, file: !733, line: 27, type: !110)
!3748 = !DILocalVariable(name: "size", arg: 3, scope: !3744, file: !733, line: 27, type: !110)
!3749 = !DILocalVariable(name: "nbytes", scope: !3744, file: !733, line: 29, type: !110)
!3750 = !DILocation(line: 0, scope: !3744)
!3751 = !DILocation(line: 30, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3744, file: !733, line: 30, column: 7)
!3753 = !DILocation(line: 30, column: 7, scope: !3744)
!3754 = !DILocation(line: 32, column: 7, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3752, file: !733, line: 31, column: 5)
!3756 = !DILocation(line: 32, column: 13, scope: !3755)
!3757 = !DILocation(line: 33, column: 7, scope: !3755)
!3758 = !DILocalVariable(name: "ptr", arg: 1, scope: !3759, file: !3044, line: 2057, type: !107)
!3759 = distinct !DISubprogram(name: "rpl_realloc", scope: !3044, file: !3044, line: 2057, type: !3036, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3760)
!3760 = !{!3758, !3761}
!3761 = !DILocalVariable(name: "size", arg: 2, scope: !3759, file: !3044, line: 2057, type: !110)
!3762 = !DILocation(line: 0, scope: !3759, inlinedAt: !3763)
!3763 = distinct !DILocation(line: 37, column: 10, scope: !3744)
!3764 = !DILocation(line: 2059, column: 24, scope: !3759, inlinedAt: !3763)
!3765 = !DILocation(line: 2059, column: 10, scope: !3759, inlinedAt: !3763)
!3766 = !DILocation(line: 37, column: 3, scope: !3744)
!3767 = !DILocation(line: 38, column: 1, scope: !3744)
!3768 = distinct !DISubprogram(name: "hard_locale", scope: !676, file: !676, line: 28, type: !3769, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3771)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!234, !108}
!3771 = !{!3772, !3773}
!3772 = !DILocalVariable(name: "category", arg: 1, scope: !3768, file: !676, line: 28, type: !108)
!3773 = !DILocalVariable(name: "locale", scope: !3768, file: !676, line: 30, type: !3774)
!3774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3775)
!3775 = !{!3776}
!3776 = !DISubrange(count: 257)
!3777 = distinct !DIAssignID()
!3778 = !DILocation(line: 0, scope: !3768)
!3779 = !DILocation(line: 30, column: 3, scope: !3768)
!3780 = !DILocation(line: 32, column: 7, scope: !3781)
!3781 = distinct !DILexicalBlock(scope: !3768, file: !676, line: 32, column: 7)
!3782 = !DILocation(line: 32, column: 7, scope: !3768)
!3783 = !DILocalVariable(name: "__s1", arg: 1, scope: !3784, file: !833, line: 1359, type: !72)
!3784 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3785)
!3785 = !{!3783, !3786}
!3786 = !DILocalVariable(name: "__s2", arg: 2, scope: !3784, file: !833, line: 1359, type: !72)
!3787 = !DILocation(line: 0, scope: !3784, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 35, column: 9, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3768, file: !676, line: 35, column: 7)
!3790 = !DILocation(line: 1361, column: 11, scope: !3784, inlinedAt: !3788)
!3791 = !DILocation(line: 1361, column: 10, scope: !3784, inlinedAt: !3788)
!3792 = !DILocation(line: 35, column: 29, scope: !3789)
!3793 = !DILocation(line: 0, scope: !3784, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 35, column: 32, scope: !3789)
!3795 = !DILocation(line: 1361, column: 11, scope: !3784, inlinedAt: !3794)
!3796 = !DILocation(line: 1361, column: 10, scope: !3784, inlinedAt: !3794)
!3797 = !DILocation(line: 35, column: 7, scope: !3768)
!3798 = !DILocation(line: 46, column: 3, scope: !3768)
!3799 = !DILocation(line: 47, column: 1, scope: !3768)
!3800 = distinct !DISubprogram(name: "setlocale_null_r", scope: !737, file: !737, line: 154, type: !3801, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!108, !108, !255, !110}
!3803 = !{!3804, !3805, !3806}
!3804 = !DILocalVariable(name: "category", arg: 1, scope: !3800, file: !737, line: 154, type: !108)
!3805 = !DILocalVariable(name: "buf", arg: 2, scope: !3800, file: !737, line: 154, type: !255)
!3806 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3800, file: !737, line: 154, type: !110)
!3807 = !DILocation(line: 0, scope: !3800)
!3808 = !DILocation(line: 159, column: 10, scope: !3800)
!3809 = !DILocation(line: 159, column: 3, scope: !3800)
!3810 = distinct !DISubprogram(name: "setlocale_null", scope: !737, file: !737, line: 186, type: !3811, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3813)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!72, !108}
!3813 = !{!3814}
!3814 = !DILocalVariable(name: "category", arg: 1, scope: !3810, file: !737, line: 186, type: !108)
!3815 = !DILocation(line: 0, scope: !3810)
!3816 = !DILocation(line: 189, column: 10, scope: !3810)
!3817 = !DILocation(line: 189, column: 3, scope: !3810)
!3818 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !739, file: !739, line: 35, type: !3811, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3819)
!3819 = !{!3820, !3821}
!3820 = !DILocalVariable(name: "category", arg: 1, scope: !3818, file: !739, line: 35, type: !108)
!3821 = !DILocalVariable(name: "result", scope: !3818, file: !739, line: 37, type: !72)
!3822 = !DILocation(line: 0, scope: !3818)
!3823 = !DILocation(line: 37, column: 24, scope: !3818)
!3824 = !DILocation(line: 62, column: 3, scope: !3818)
!3825 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !739, file: !739, line: 66, type: !3801, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3826)
!3826 = !{!3827, !3828, !3829, !3830, !3831}
!3827 = !DILocalVariable(name: "category", arg: 1, scope: !3825, file: !739, line: 66, type: !108)
!3828 = !DILocalVariable(name: "buf", arg: 2, scope: !3825, file: !739, line: 66, type: !255)
!3829 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3825, file: !739, line: 66, type: !110)
!3830 = !DILocalVariable(name: "result", scope: !3825, file: !739, line: 111, type: !72)
!3831 = !DILocalVariable(name: "length", scope: !3832, file: !739, line: 125, type: !110)
!3832 = distinct !DILexicalBlock(scope: !3833, file: !739, line: 124, column: 5)
!3833 = distinct !DILexicalBlock(scope: !3825, file: !739, line: 113, column: 7)
!3834 = !DILocation(line: 0, scope: !3825)
!3835 = !DILocation(line: 0, scope: !3818, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 111, column: 24, scope: !3825)
!3837 = !DILocation(line: 37, column: 24, scope: !3818, inlinedAt: !3836)
!3838 = !DILocation(line: 113, column: 14, scope: !3833)
!3839 = !DILocation(line: 113, column: 7, scope: !3825)
!3840 = !DILocation(line: 116, column: 19, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3842, file: !739, line: 116, column: 11)
!3842 = distinct !DILexicalBlock(scope: !3833, file: !739, line: 114, column: 5)
!3843 = !DILocation(line: 116, column: 11, scope: !3842)
!3844 = !DILocation(line: 120, column: 16, scope: !3841)
!3845 = !DILocation(line: 120, column: 9, scope: !3841)
!3846 = !DILocation(line: 125, column: 23, scope: !3832)
!3847 = !DILocation(line: 0, scope: !3832)
!3848 = !DILocation(line: 126, column: 18, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3832, file: !739, line: 126, column: 11)
!3850 = !DILocation(line: 126, column: 11, scope: !3832)
!3851 = !DILocation(line: 128, column: 39, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3849, file: !739, line: 127, column: 9)
!3853 = !DILocalVariable(name: "__dest", arg: 1, scope: !3854, file: !1442, line: 26, type: !3314)
!3854 = distinct !DISubprogram(name: "memcpy", scope: !1442, file: !1442, line: 26, type: !3312, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3855)
!3855 = !{!3853, !3856, !3857}
!3856 = !DILocalVariable(name: "__src", arg: 2, scope: !3854, file: !1442, line: 26, type: !964)
!3857 = !DILocalVariable(name: "__len", arg: 3, scope: !3854, file: !1442, line: 26, type: !110)
!3858 = !DILocation(line: 0, scope: !3854, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 128, column: 11, scope: !3852)
!3860 = !DILocation(line: 29, column: 10, scope: !3854, inlinedAt: !3859)
!3861 = !DILocation(line: 129, column: 11, scope: !3852)
!3862 = !DILocation(line: 133, column: 23, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3864, file: !739, line: 133, column: 15)
!3864 = distinct !DILexicalBlock(scope: !3849, file: !739, line: 132, column: 9)
!3865 = !DILocation(line: 133, column: 15, scope: !3864)
!3866 = !DILocation(line: 138, column: 44, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3863, file: !739, line: 134, column: 13)
!3868 = !DILocation(line: 0, scope: !3854, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 138, column: 15, scope: !3867)
!3870 = !DILocation(line: 29, column: 10, scope: !3854, inlinedAt: !3869)
!3871 = !DILocation(line: 139, column: 15, scope: !3867)
!3872 = !DILocation(line: 139, column: 32, scope: !3867)
!3873 = !DILocation(line: 140, column: 13, scope: !3867)
!3874 = !DILocation(line: 0, scope: !3833)
!3875 = !DILocation(line: 145, column: 1, scope: !3825)
