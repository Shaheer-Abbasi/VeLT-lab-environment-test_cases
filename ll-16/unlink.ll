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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !371
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !336
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !361
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !363
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !365
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !367
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !369
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !373
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !375
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !380
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !385
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !388
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !484
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !498
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !536
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !543
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !500
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !545
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !488
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !505
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !507
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !509
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !511
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !513
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !551
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !554
@.str.2.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !556
@.str.3.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !558
@.str.4.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !560
@.str.5.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !562
@.str.6.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !567
@.str.7.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !572
@.str.8.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !574
@.str.9.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !579
@.str.10.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !584
@.str.11.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !589
@.str.12.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !594
@.str.13.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !596
@.str.14.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !601
@.str.15.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !606
@.str.16.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !611
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !616
@.str.18.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !618
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !620
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !622
@.str.21.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !624
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !626
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !628
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !633
@exit_failure = dso_local global i32 1, align 4, !dbg !641
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !647
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !650
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !652
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !654
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !657
@.str.127 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !672
@.str.1.128 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !675

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !747 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !751, metadata !DIExpression()), !dbg !752
  %2 = icmp eq i32 %0, 0, !dbg !753
  br i1 %2, label %8, label %3, !dbg !755

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !756, !tbaa !758
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !756
  %6 = load ptr, ptr @program_name, align 8, !dbg !756, !tbaa !758
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !756
  br label %31, !dbg !756

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !762
  %10 = load ptr, ptr @program_name, align 8, !dbg !762, !tbaa !758
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #36, !dbg !762
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !764
  %13 = load ptr, ptr @stdout, align 8, !dbg !764, !tbaa !758
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !764
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !765
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !765
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !766
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !766
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !767, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !779, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata ptr poison, metadata !779, metadata !DIExpression()), !dbg !784
  tail call void @emit_bug_reporting_address() #36, !dbg !786
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !787
  call void @llvm.dbg.value(metadata ptr %17, metadata !782, metadata !DIExpression()), !dbg !784
  %18 = icmp eq ptr %17, null, !dbg !788
  br i1 %18, label %26, label %19, !dbg !790

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #37, !dbg !791
  %21 = icmp eq i32 %20, 0, !dbg !791
  br i1 %21, label %26, label %22, !dbg !792

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !793
  %24 = load ptr, ptr @stdout, align 8, !dbg !793, !tbaa !758
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !793
  br label %26, !dbg !795

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !779, metadata !DIExpression()), !dbg !784
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !783, metadata !DIExpression()), !dbg !784
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !796
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3) #36, !dbg !796
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !797
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #36, !dbg !797
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !798
  unreachable, !dbg !798
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !799 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !804 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !810 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !813 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !68 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !816
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !817, !tbaa !818
  %3 = icmp eq i32 %2, -1, !dbg !820
  br i1 %3, label %4, label %16, !dbg !821

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #36, !dbg !822
  call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !823
  %6 = icmp eq ptr %5, null, !dbg !824
  br i1 %6, label %14, label %7, !dbg !825

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !826, !tbaa !827
  %9 = icmp eq i8 %8, 0, !dbg !826
  br i1 %9, label %14, label %10, !dbg !828

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !829, metadata !DIExpression()), !dbg !836
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !835, metadata !DIExpression()), !dbg !836
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #37, !dbg !838
  %12 = icmp eq i32 %11, 0, !dbg !839
  %13 = zext i1 %12 to i32, !dbg !828
  br label %14, !dbg !828

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !840, !tbaa !818
  br label %16, !dbg !841

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !842
  %18 = icmp eq i32 %17, 0, !dbg !842
  br i1 %18, label %22, label %19, !dbg !844

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !845, !tbaa !758
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !845
  br label %122, !dbg !847

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !816
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #37, !dbg !848
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !849
  call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !816
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !850
  call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !816
  %26 = icmp eq ptr %25, null, !dbg !851
  br i1 %26, label %54, label %27, !dbg !852

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !853
  br i1 %28, label %54, label %29, !dbg !854

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !855
  %30 = icmp ult ptr %24, %25, !dbg !856
  br i1 %30, label %31, label %52, !dbg !857

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !816
  %33 = load ptr, ptr %32, align 8, !tbaa !758
  br label %34, !dbg !857

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !855
  call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !855
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !858
  call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !855
  %38 = load i8, ptr %35, align 1, !dbg !858, !tbaa !827
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !858
  %41 = load i16, ptr %40, align 2, !dbg !858, !tbaa !859
  %42 = freeze i16 %41, !dbg !861
  %43 = lshr i16 %42, 13, !dbg !861
  %44 = and i16 %43, 1, !dbg !861
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !862
  call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !855
  %47 = icmp ult ptr %37, %25, !dbg !856
  %48 = icmp ult i64 %46, 2, !dbg !863
  %49 = select i1 %47, i1 %48, i1 false, !dbg !863
  br i1 %49, label %34, label %50, !dbg !857, !llvm.loop !864

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !866
  br i1 %51, label %52, label %54, !dbg !868

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !868

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !816
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %55, metadata !236, metadata !DIExpression()), !dbg !816
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #37, !dbg !869
  call void @llvm.dbg.value(metadata i64 %57, metadata !242, metadata !DIExpression()), !dbg !816
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !870
  call void @llvm.dbg.value(metadata ptr %58, metadata !243, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !871

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !816
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata ptr %60, metadata !243, metadata !DIExpression()), !dbg !816
  %62 = load i8, ptr %60, align 1, !dbg !872, !tbaa !827
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !873

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !874
  %65 = load i8, ptr %64, align 1, !dbg !877, !tbaa !827
  %66 = icmp ne i8 %65, 45, !dbg !878
  %67 = select i1 %66, i1 %61, i1 false, !dbg !879
  br label %68, !dbg !879

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !233, metadata !DIExpression()), !dbg !816
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !880
  %71 = load ptr, ptr %70, align 8, !dbg !880, !tbaa !758
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !880
  %74 = load i16, ptr %73, align 2, !dbg !880, !tbaa !859
  %75 = and i16 %74, 8192, !dbg !880
  %76 = icmp eq i16 %75, 0, !dbg !880
  br i1 %76, label %90, label %77, !dbg !882

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !883
  br i1 %78, label %92, label %79, !dbg !886

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !887
  %81 = load i8, ptr %80, align 1, !dbg !887, !tbaa !827
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !887
  %84 = load i16, ptr %83, align 2, !dbg !887, !tbaa !859
  %85 = and i16 %84, 8192, !dbg !887
  %86 = icmp eq i16 %85, 0, !dbg !887
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !888
  br i1 %89, label %90, label %92, !dbg !888

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !889
  call void @llvm.dbg.value(metadata ptr %91, metadata !243, metadata !DIExpression()), !dbg !816
  br label %59, !dbg !871, !llvm.loop !890

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !892
  %94 = load ptr, ptr @stdout, align 8, !dbg !892, !tbaa !758
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !829, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !301, metadata !DIExpression()), !dbg !816
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #37, !dbg !913
  %97 = icmp eq i32 %96, 0, !dbg !913
  br i1 %97, label %101, label %98, !dbg !915

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #37, !dbg !916
  %100 = icmp eq i32 %99, 0, !dbg !916
  br i1 %100, label %101, label %104, !dbg !917

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !918
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !918
  br label %107, !dbg !920

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !921
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !921
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !758
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %108), !dbg !923
  %110 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !758
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %110), !dbg !924
  %112 = ptrtoint ptr %60 to i64, !dbg !925
  %113 = sub i64 %112, %93, !dbg !925
  %114 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !758
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !925
  %116 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !758
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %116), !dbg !926
  %118 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !758
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %118), !dbg !927
  %120 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !758
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !928
  br label %122, !dbg !929

122:                                              ; preds = %107, %19
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !970, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !972
  %3 = load ptr, ptr %1, align 8, !dbg !973, !tbaa !758
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !974
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !975
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !976
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !977
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !978
  %8 = load ptr, ptr @Version, align 8, !dbg !979, !tbaa !758
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !980
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !981
  %10 = load i32, ptr @optind, align 4, !dbg !982, !tbaa !818
  %11 = icmp slt i32 %10, %0, !dbg !984
  br i1 %11, label %14, label %12, !dbg !985

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !986
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #36, !dbg !986
  tail call void @usage(i32 noundef 1) #40, !dbg !988
  unreachable, !dbg !988

14:                                               ; preds = %2
  %15 = add nsw i32 %10, 1, !dbg !989
  %16 = icmp slt i32 %15, %0, !dbg !990
  br i1 %16, label %17, label %25, !dbg !992

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !993
  %19 = load i32, ptr @optind, align 4, !dbg !993, !tbaa !818
  %20 = add nsw i32 %19, 1, !dbg !993
  %21 = sext i32 %20 to i64, !dbg !993
  %22 = getelementptr inbounds ptr, ptr %1, i64 %21, !dbg !993
  %23 = load ptr, ptr %22, align 8, !dbg !993, !tbaa !758
  %24 = tail call ptr @quote(ptr noundef %23) #36, !dbg !993
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %24) #36, !dbg !993
  tail call void @usage(i32 noundef 1) #40, !dbg !995
  unreachable, !dbg !995

25:                                               ; preds = %14
  %26 = sext i32 %10 to i64, !dbg !996
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26, !dbg !996
  %28 = load ptr, ptr %27, align 8, !dbg !996, !tbaa !758
  %29 = tail call i32 @unlink(ptr noundef %28) #36, !dbg !998
  %30 = icmp eq i32 %29, 0, !dbg !999
  br i1 %30, label %40, label %31, !dbg !1000

31:                                               ; preds = %25
  %32 = tail call ptr @__errno_location() #39, !dbg !1001
  %33 = load i32, ptr %32, align 4, !dbg !1001, !tbaa !818
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1001
  %35 = load i32, ptr @optind, align 4, !dbg !1001, !tbaa !818
  %36 = sext i32 %35 to i64, !dbg !1001
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1001
  %38 = load ptr, ptr %37, align 8, !dbg !1001, !tbaa !758
  %39 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %38) #36, !dbg !1001
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %33, ptr noundef %34, ptr noundef %39) #36, !dbg !1001
  unreachable, !dbg !1001

40:                                               ; preds = %25
  ret i32 0, !dbg !1002
}

; Function Attrs: nounwind
declare !dbg !1003 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1006 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1007 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1010 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1014 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1018 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1020, metadata !DIExpression()), !dbg !1021
  store ptr %0, ptr @file_name, align 8, !dbg !1022, !tbaa !758
  ret void, !dbg !1023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1024 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1030, !tbaa !1031
  ret void, !dbg !1033
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1034 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !758
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1040
  %3 = icmp eq i32 %2, 0, !dbg !1041
  br i1 %3, label %22, label %4, !dbg !1042

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1043, !tbaa !1031, !range !1044, !noundef !803
  %6 = icmp eq i8 %5, 0, !dbg !1043
  br i1 %6, label %11, label %7, !dbg !1045

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1046
  %9 = load i32, ptr %8, align 4, !dbg !1046, !tbaa !818
  %10 = icmp eq i32 %9, 32, !dbg !1047
  br i1 %10, label %22, label %11, !dbg !1048

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1049
  call void @llvm.dbg.value(metadata ptr %12, metadata !1036, metadata !DIExpression()), !dbg !1050
  %13 = load ptr, ptr @file_name, align 8, !dbg !1051, !tbaa !758
  %14 = icmp eq ptr %13, null, !dbg !1051
  %15 = tail call ptr @__errno_location() #39, !dbg !1053
  %16 = load i32, ptr %15, align 4, !dbg !1053, !tbaa !818
  br i1 %14, label %19, label %17, !dbg !1054

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1055
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #36, !dbg !1055
  br label %20, !dbg !1055

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #36, !dbg !1056
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1057, !tbaa !818
  tail call void @_exit(i32 noundef %21) #38, !dbg !1058
  unreachable, !dbg !1058

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1059, !tbaa !758
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1061
  %25 = icmp eq i32 %24, 0, !dbg !1062
  br i1 %25, label %28, label %26, !dbg !1063

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1064, !tbaa !818
  tail call void @_exit(i32 noundef %27) #38, !dbg !1065
  unreachable, !dbg !1065

28:                                               ; preds = %22
  ret void, !dbg !1066
}

; Function Attrs: noreturn
declare !dbg !1067 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1068 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1072, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata i32 %1, metadata !1073, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.value(metadata ptr %2, metadata !1074, metadata !DIExpression()), !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1075, metadata !DIExpression()), !dbg !1077
  tail call fastcc void @flush_stdout(), !dbg !1078
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1079, !tbaa !758
  %7 = icmp eq ptr %6, null, !dbg !1079
  br i1 %7, label %9, label %8, !dbg !1081

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1082
  br label %13, !dbg !1082

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1083, !tbaa !758
  %11 = tail call ptr @getprogname() #37, !dbg !1083
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %11) #36, !dbg !1083
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1085, !tbaa.struct !1086
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1085
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1085
  ret void, !dbg !1087
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1088 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1090, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i32 1, metadata !1092, metadata !DIExpression()), !dbg !1097
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1100
  %2 = icmp slt i32 %1, 0, !dbg !1101
  br i1 %2, label %6, label %3, !dbg !1102

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1103, !tbaa !758
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1103
  br label %6, !dbg !1103

6:                                                ; preds = %3, %0
  ret void, !dbg !1104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1105 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1107, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i32 %1, metadata !1108, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata ptr %2, metadata !1109, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1110, metadata !DIExpression()), !dbg !1112
  %7 = load ptr, ptr @stderr, align 8, !dbg !1113, !tbaa !758
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1114, !noalias !1158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1162
  call void @llvm.dbg.value(metadata ptr %7, metadata !1154, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.value(metadata ptr %2, metadata !1155, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1156, metadata !DIExpression()), !dbg !1164
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1114
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1114, !noalias !1158
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1165, !tbaa !818
  %10 = add i32 %9, 1, !dbg !1165
  store i32 %10, ptr @error_message_count, align 4, !dbg !1165, !tbaa !818
  %11 = icmp eq i32 %1, 0, !dbg !1166
  br i1 %11, label %21, label %12, !dbg !1168

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1169, metadata !DIExpression()), !dbg !1177
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1173, metadata !DIExpression()), !dbg !1180
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1181
  call void @llvm.dbg.value(metadata ptr %13, metadata !1172, metadata !DIExpression()), !dbg !1177
  %14 = icmp eq ptr %13, null, !dbg !1182
  br i1 %14, label %15, label %17, !dbg !1184

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #36, !dbg !1185
  call void @llvm.dbg.value(metadata ptr %16, metadata !1172, metadata !DIExpression()), !dbg !1177
  br label %17, !dbg !1186

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1177
  call void @llvm.dbg.value(metadata ptr %18, metadata !1172, metadata !DIExpression()), !dbg !1177
  %19 = load ptr, ptr @stderr, align 8, !dbg !1187, !tbaa !758
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %18) #36, !dbg !1187
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1188
  br label %21, !dbg !1189

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1190, !tbaa !758
  call void @llvm.dbg.value(metadata i32 10, metadata !1191, metadata !DIExpression()), !dbg !1198
  call void @llvm.dbg.value(metadata ptr %22, metadata !1197, metadata !DIExpression()), !dbg !1198
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1200
  %24 = load ptr, ptr %23, align 8, !dbg !1200, !tbaa !1201
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1200
  %26 = load ptr, ptr %25, align 8, !dbg !1200, !tbaa !1204
  %27 = icmp ult ptr %24, %26, !dbg !1200
  br i1 %27, label %30, label %28, !dbg !1200, !prof !1205

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1200
  br label %32, !dbg !1200

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1200
  store ptr %31, ptr %23, align 8, !dbg !1200, !tbaa !1201
  store i8 10, ptr %24, align 1, !dbg !1200, !tbaa !827
  br label %32, !dbg !1200

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1206, !tbaa !758
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1206
  %35 = icmp eq i32 %0, 0, !dbg !1207
  br i1 %35, label %37, label %36, !dbg !1209

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1210
  unreachable, !dbg !1210

37:                                               ; preds = %32
  ret void, !dbg !1211
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1212 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1215 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1218 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1221 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1224 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1228 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1232, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i32 %1, metadata !1233, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %2, metadata !1234, metadata !DIExpression()), !dbg !1236
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1235, metadata !DIExpression()), !dbg !1238
  call void @llvm.va_start(ptr nonnull %4), !dbg !1239
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1240, !tbaa.struct !1086
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1240
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1240
  call void @llvm.va_end(ptr nonnull %4), !dbg !1241
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1242
  ret void, !dbg !1242
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !338 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !355, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %1, metadata !356, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata i32 %3, metadata !358, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr %4, metadata !359, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %5, metadata !360, metadata !DIExpression()), !dbg !1244
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1245, !tbaa !818
  %9 = icmp eq i32 %8, 0, !dbg !1245
  br i1 %9, label %24, label %10, !dbg !1247

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1248, !tbaa !818
  %12 = icmp eq i32 %11, %3, !dbg !1251
  br i1 %12, label %13, label %23, !dbg !1252

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1253, !tbaa !758
  %15 = icmp eq ptr %14, %2, !dbg !1254
  br i1 %15, label %37, label %16, !dbg !1255

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1256
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1257
  br i1 %19, label %20, label %23, !dbg !1257

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1258
  %22 = icmp eq i32 %21, 0, !dbg !1259
  br i1 %22, label %37, label %23, !dbg !1260

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1261, !tbaa !758
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1262, !tbaa !818
  br label %24, !dbg !1263

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1264
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1265, !tbaa !758
  %26 = icmp eq ptr %25, null, !dbg !1265
  br i1 %26, label %28, label %27, !dbg !1267

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1268
  br label %32, !dbg !1268

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1269, !tbaa !758
  %30 = tail call ptr @getprogname() #37, !dbg !1269
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %30) #36, !dbg !1269
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1271, !tbaa !758
  %34 = icmp eq ptr %2, null, !dbg !1271
  %35 = select i1 %34, ptr @.str.3.32, ptr @.str.2.33, !dbg !1271
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1271
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1272, !tbaa.struct !1086
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1272
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1272
  br label %37, !dbg !1273

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1274 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %1, metadata !1279, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %2, metadata !1280, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %3, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %4, metadata !1282, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1283, metadata !DIExpression()), !dbg !1286
  call void @llvm.va_start(ptr nonnull %6), !dbg !1287
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1288, !tbaa.struct !1086
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1288
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1288
  call void @llvm.va_end(ptr nonnull %6), !dbg !1289
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1290
  ret void, !dbg !1290
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1291 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1294, !tbaa !758
  ret ptr %1, !dbg !1295
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1296 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1301, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %1, metadata !1302, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %2, metadata !1303, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %3, metadata !1304, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %4, metadata !1305, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %5, metadata !1306, metadata !DIExpression()), !dbg !1327
  %9 = load i32, ptr @opterr, align 4, !dbg !1328, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %9, metadata !1307, metadata !DIExpression()), !dbg !1327
  store i32 0, ptr @opterr, align 4, !dbg !1329, !tbaa !818
  %10 = icmp eq i32 %0, 2, !dbg !1330
  br i1 %10, label %11, label %16, !dbg !1331

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %12, metadata !1308, metadata !DIExpression()), !dbg !1333
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1334

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #36, !dbg !1335
  br label %16, !dbg !1336

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1311, metadata !DIExpression()), !dbg !1338
  call void @llvm.va_start(ptr nonnull %7), !dbg !1339
  %15 = load ptr, ptr @stdout, align 8, !dbg !1340, !tbaa !758
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1341, !tbaa.struct !1086
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1341
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #36, !dbg !1341
  call void @exit(i32 noundef 0) #38, !dbg !1342
  unreachable, !dbg !1342

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1343, !tbaa !818
  store i32 0, ptr @optind, align 4, !dbg !1344, !tbaa !818
  ret void, !dbg !1345
}

; Function Attrs: nounwind
declare !dbg !1346 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1352 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1356, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %1, metadata !1357, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %2, metadata !1358, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %3, metadata !1359, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %4, metadata !1360, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i1 %5, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %6, metadata !1362, metadata !DIExpression()), !dbg !1371
  %10 = load i32, ptr @opterr, align 4, !dbg !1372, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %10, metadata !1363, metadata !DIExpression()), !dbg !1371
  store i32 1, ptr @opterr, align 4, !dbg !1373, !tbaa !818
  %11 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1374
  call void @llvm.dbg.value(metadata ptr %11, metadata !1364, metadata !DIExpression()), !dbg !1371
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %12, metadata !1365, metadata !DIExpression()), !dbg !1371
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1376

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1366, metadata !DIExpression()), !dbg !1378
  call void @llvm.va_start(ptr nonnull %8), !dbg !1379
  %14 = load ptr, ptr @stdout, align 8, !dbg !1380, !tbaa !758
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #36, !dbg !1381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1381, !tbaa.struct !1086
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #36, !dbg !1381
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #36, !dbg !1381
  call void @exit(i32 noundef 0) #38, !dbg !1382
  unreachable, !dbg !1382

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1383, !tbaa !818
  br label %17, !dbg !1384

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #36, !dbg !1385
  br label %19, !dbg !1386

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1386, !tbaa !818
  ret void, !dbg !1387
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1388 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1390, metadata !DIExpression()), !dbg !1393
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1394
  call void @llvm.dbg.value(metadata ptr %2, metadata !1391, metadata !DIExpression()), !dbg !1393
  %3 = icmp eq ptr %2, null, !dbg !1395
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1395
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1395
  call void @llvm.dbg.value(metadata ptr %5, metadata !1392, metadata !DIExpression()), !dbg !1393
  %6 = ptrtoint ptr %5 to i64, !dbg !1396
  %7 = ptrtoint ptr %0 to i64, !dbg !1396
  %8 = sub i64 %6, %7, !dbg !1396
  %9 = icmp sgt i64 %8, 6, !dbg !1398
  br i1 %9, label %10, label %19, !dbg !1399

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %11, metadata !1401, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1406, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 7, metadata !1407, metadata !DIExpression()), !dbg !1408
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1410
  %13 = icmp eq i32 %12, 0, !dbg !1411
  br i1 %13, label %14, label %19, !dbg !1412

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1390, metadata !DIExpression()), !dbg !1393
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #37, !dbg !1413
  %16 = icmp eq i32 %15, 0, !dbg !1416
  %17 = select i1 %16, i64 3, i64 0, !dbg !1417
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1417
  br label %19, !dbg !1417

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1393
  call void @llvm.dbg.value(metadata ptr %21, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %20, metadata !1390, metadata !DIExpression()), !dbg !1393
  store ptr %20, ptr @program_name, align 8, !dbg !1418, !tbaa !758
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1419, !tbaa !758
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1420, !tbaa !758
  ret void, !dbg !1421
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1422 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !420 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !427, metadata !DIExpression()), !dbg !1423
  call void @llvm.dbg.value(metadata ptr %1, metadata !428, metadata !DIExpression()), !dbg !1423
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1424
  call void @llvm.dbg.value(metadata ptr %5, metadata !429, metadata !DIExpression()), !dbg !1423
  %6 = icmp eq ptr %5, %0, !dbg !1425
  br i1 %6, label %7, label %14, !dbg !1427

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1428
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %4, metadata !435, metadata !DIExpression()), !dbg !1430
  call void @llvm.dbg.value(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata ptr %4, metadata !1440, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i32 0, metadata !1446, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i64 8, metadata !1447, metadata !DIExpression()), !dbg !1448
  store i64 0, ptr %4, align 8, !dbg !1450
  call void @llvm.dbg.value(metadata ptr %3, metadata !430, metadata !DIExpression(DW_OP_deref)), !dbg !1423
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1451
  %9 = icmp eq i64 %8, 2, !dbg !1453
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !430, metadata !DIExpression()), !dbg !1423
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1454
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1455
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1455
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1423
  ret ptr %15, !dbg !1455
}

; Function Attrs: nounwind
declare !dbg !1456 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1462 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1467, metadata !DIExpression()), !dbg !1470
  %2 = tail call ptr @__errno_location() #39, !dbg !1471
  %3 = load i32, ptr %2, align 4, !dbg !1471, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %3, metadata !1468, metadata !DIExpression()), !dbg !1470
  %4 = icmp eq ptr %0, null, !dbg !1472
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1472
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %6, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i32 %3, ptr %2, align 4, !dbg !1474, !tbaa !818
  ret ptr %6, !dbg !1475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1476 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1483
  %2 = icmp eq ptr %0, null, !dbg !1484
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1484
  %4 = load i32, ptr %3, align 8, !dbg !1485, !tbaa !1486
  ret i32 %4, !dbg !1488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1489 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1493, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %1, metadata !1494, metadata !DIExpression()), !dbg !1495
  %3 = icmp eq ptr %0, null, !dbg !1496
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1496
  store i32 %1, ptr %4, align 8, !dbg !1497, !tbaa !1486
  ret void, !dbg !1498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1499 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1503, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %1, metadata !1504, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i32 %2, metadata !1505, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !1511
  %4 = icmp eq ptr %0, null, !dbg !1512
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1512
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1513
  %7 = lshr i8 %1, 5, !dbg !1514
  %8 = zext i8 %7 to i64, !dbg !1514
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1515
  call void @llvm.dbg.value(metadata ptr %9, metadata !1507, metadata !DIExpression()), !dbg !1511
  %10 = and i8 %1, 31, !dbg !1516
  %11 = zext i8 %10 to i32, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %11, metadata !1509, metadata !DIExpression()), !dbg !1511
  %12 = load i32, ptr %9, align 4, !dbg !1517, !tbaa !818
  %13 = lshr i32 %12, %11, !dbg !1518
  %14 = and i32 %13, 1, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %14, metadata !1510, metadata !DIExpression()), !dbg !1511
  %15 = xor i32 %13, %2, !dbg !1520
  %16 = and i32 %15, 1, !dbg !1520
  %17 = shl nuw i32 %16, %11, !dbg !1521
  %18 = xor i32 %17, %12, !dbg !1522
  store i32 %18, ptr %9, align 4, !dbg !1522, !tbaa !818
  ret i32 %14, !dbg !1523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1524 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1528, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.value(metadata i32 %1, metadata !1529, metadata !DIExpression()), !dbg !1531
  %3 = icmp eq ptr %0, null, !dbg !1532
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %4, metadata !1528, metadata !DIExpression()), !dbg !1531
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1535
  %6 = load i32, ptr %5, align 4, !dbg !1535, !tbaa !1536
  call void @llvm.dbg.value(metadata i32 %6, metadata !1530, metadata !DIExpression()), !dbg !1531
  store i32 %1, ptr %5, align 4, !dbg !1537, !tbaa !1536
  ret i32 %6, !dbg !1538
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1539 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1543, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1546
  %4 = icmp eq ptr %0, null, !dbg !1547
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1549
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !1546
  store i32 10, ptr %5, align 8, !dbg !1550, !tbaa !1486
  %6 = icmp ne ptr %1, null, !dbg !1551
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1553
  br i1 %8, label %10, label %9, !dbg !1553

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1554
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1567, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i64 %1, metadata !1568, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata ptr %2, metadata !1569, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i64 %3, metadata !1570, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata ptr %4, metadata !1571, metadata !DIExpression()), !dbg !1575
  %6 = icmp eq ptr %4, null, !dbg !1576
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1576
  call void @llvm.dbg.value(metadata ptr %7, metadata !1572, metadata !DIExpression()), !dbg !1575
  %8 = tail call ptr @__errno_location() #39, !dbg !1577
  %9 = load i32, ptr %8, align 4, !dbg !1577, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %9, metadata !1573, metadata !DIExpression()), !dbg !1575
  %10 = load i32, ptr %7, align 8, !dbg !1578, !tbaa !1486
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1579
  %12 = load i32, ptr %11, align 4, !dbg !1579, !tbaa !1536
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1580
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1581
  %15 = load ptr, ptr %14, align 8, !dbg !1581, !tbaa !1557
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1582
  %17 = load ptr, ptr %16, align 8, !dbg !1582, !tbaa !1560
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1583
  call void @llvm.dbg.value(metadata i64 %18, metadata !1574, metadata !DIExpression()), !dbg !1575
  store i32 %9, ptr %8, align 4, !dbg !1584, !tbaa !818
  ret i64 %18, !dbg !1585
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1586 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1592, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %1, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %2, metadata !1594, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %3, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %4, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %5, metadata !1597, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %6, metadata !1598, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %7, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %8, metadata !1600, metadata !DIExpression()), !dbg !1654
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1655
  %17 = icmp eq i64 %16, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i1 %17, metadata !1601, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr null, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %5, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1654
  %18 = and i32 %5, 2, !dbg !1657
  %19 = icmp ne i32 %18, 0, !dbg !1657
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1657

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1658
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1659
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1660
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %34, metadata !1605, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %33, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %32, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %31, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %30, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %29, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %28, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1647), !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
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
  ], !dbg !1662

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 5, metadata !1596, metadata !DIExpression()), !dbg !1654
  br label %102, !dbg !1663

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 5, metadata !1596, metadata !DIExpression()), !dbg !1654
  br i1 %36, label %102, label %42, !dbg !1663

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1664
  br i1 %43, label %102, label %44, !dbg !1668

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1664, !tbaa !827
  br label %102, !dbg !1664

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !519, metadata !DIExpression()), !dbg !1669
  call void @llvm.dbg.value(metadata i32 %28, metadata !520, metadata !DIExpression()), !dbg !1669
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #36, !dbg !1673
  call void @llvm.dbg.value(metadata ptr %46, metadata !521, metadata !DIExpression()), !dbg !1669
  %47 = icmp eq ptr %46, @.str.11.65, !dbg !1674
  br i1 %47, label %48, label %57, !dbg !1676

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %13, metadata !523, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr %13, metadata !1680, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata ptr %13, metadata !1688, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i32 0, metadata !1691, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 8, metadata !1692, metadata !DIExpression()), !dbg !1693
  store i64 0, ptr %13, align 8, !dbg !1695
  call void @llvm.dbg.value(metadata ptr %12, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !1669
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1696
  %50 = icmp eq i64 %49, 3, !dbg !1698
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !522, metadata !DIExpression()), !dbg !1669
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1699
  %54 = icmp eq i32 %28, 9, !dbg !1699
  %55 = select i1 %54, ptr @.str.10.67, ptr @.str.12.68, !dbg !1699
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1700
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1700
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1669
  call void @llvm.dbg.value(metadata ptr %58, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !519, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i32 %28, metadata !520, metadata !DIExpression()), !dbg !1701
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #36, !dbg !1703
  call void @llvm.dbg.value(metadata ptr %59, metadata !521, metadata !DIExpression()), !dbg !1701
  %60 = icmp eq ptr %59, @.str.12.68, !dbg !1704
  br i1 %60, label %61, label %70, !dbg !1705

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1706
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %11, metadata !523, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %11, metadata !1680, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata ptr %11, metadata !1688, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 0, metadata !1691, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i64 8, metadata !1692, metadata !DIExpression()), !dbg !1711
  store i64 0, ptr %11, align 8, !dbg !1713
  call void @llvm.dbg.value(metadata ptr %10, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !1701
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1714
  %63 = icmp eq i64 %62, 3, !dbg !1715
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !522, metadata !DIExpression()), !dbg !1701
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1716
  %67 = icmp eq i32 %28, 9, !dbg !1716
  %68 = select i1 %67, ptr @.str.10.67, ptr @.str.12.68, !dbg !1716
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1717
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %71, metadata !1599, metadata !DIExpression()), !dbg !1654
  br i1 %36, label %88, label %73, !dbg !1718

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1611, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1654
  %74 = load i8, ptr %71, align 1, !dbg !1720, !tbaa !827
  %75 = icmp eq i8 %74, 0, !dbg !1722
  br i1 %75, label %88, label %76, !dbg !1722

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1611, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i64 %79, metadata !1602, metadata !DIExpression()), !dbg !1654
  %80 = icmp ult i64 %79, %39, !dbg !1723
  br i1 %80, label %81, label %83, !dbg !1726

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1723
  store i8 %77, ptr %82, align 1, !dbg !1723, !tbaa !827
  br label %83, !dbg !1723

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %84, metadata !1602, metadata !DIExpression()), !dbg !1654
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %85, metadata !1611, metadata !DIExpression()), !dbg !1719
  %86 = load i8, ptr %85, align 1, !dbg !1720, !tbaa !827
  %87 = icmp eq i8 %86, 0, !dbg !1722
  br i1 %87, label %88, label %76, !dbg !1722, !llvm.loop !1728

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1730
  call void @llvm.dbg.value(metadata i64 %89, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %72, metadata !1604, metadata !DIExpression()), !dbg !1654
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %90, metadata !1605, metadata !DIExpression()), !dbg !1654
  br label %102, !dbg !1732

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1654
  br label %93, !dbg !1733

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1654
  br i1 %36, label %102, label %96, !dbg !1734

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 2, metadata !1596, metadata !DIExpression()), !dbg !1654
  br label %102, !dbg !1735

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 2, metadata !1596, metadata !DIExpression()), !dbg !1654
  br i1 %36, label %102, label %96, !dbg !1735

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1736
  br i1 %98, label %102, label %99, !dbg !1740

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1736, !tbaa !827
  br label %102, !dbg !1736

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1654
  br label %102, !dbg !1741

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1742
  unreachable, !dbg !1742

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1730
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.67, %42 ], [ @.str.10.67, %44 ], [ @.str.10.67, %41 ], [ %33, %27 ], [ @.str.12.68, %96 ], [ @.str.12.68, %99 ], [ @.str.12.68, %95 ], [ @.str.10.67, %40 ], [ @.str.12.68, %93 ], [ @.str.12.68, %92 ], !dbg !1654
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1654
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %108, metadata !1605, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %107, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %106, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %105, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %104, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %103, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1743
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
  br label %122, !dbg !1744

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1730
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1658
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1745
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %129, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %125, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %123, metadata !1595, metadata !DIExpression()), !dbg !1654
  %131 = icmp eq i64 %123, -1, !dbg !1746
  br i1 %131, label %132, label %136, !dbg !1747

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1748
  %134 = load i8, ptr %133, align 1, !dbg !1748, !tbaa !827
  %135 = icmp eq i8 %134, 0, !dbg !1749
  br i1 %135, label %579, label %138, !dbg !1750

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1751
  br i1 %137, label %579, label %138, !dbg !1750

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1752
  br i1 %114, label %139, label %152, !dbg !1753

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1755
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1756
  br i1 %141, label %142, label %144, !dbg !1756

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1757
  call void @llvm.dbg.value(metadata i64 %143, metadata !1595, metadata !DIExpression()), !dbg !1654
  br label %144, !dbg !1758

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %145, metadata !1595, metadata !DIExpression()), !dbg !1654
  %146 = icmp ugt i64 %140, %145, !dbg !1759
  br i1 %146, label %152, label %147, !dbg !1760

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1761
  call void @llvm.dbg.value(metadata ptr %148, metadata !1762, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata ptr %107, metadata !1765, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i64 %108, metadata !1766, metadata !DIExpression()), !dbg !1767
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1769
  %150 = icmp eq i32 %149, 0, !dbg !1770
  %151 = and i1 %150, %110, !dbg !1771
  br i1 %151, label %630, label %152, !dbg !1771

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %153, metadata !1595, metadata !DIExpression()), !dbg !1654
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1772
  %156 = load i8, ptr %155, align 1, !dbg !1772, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %156, metadata !1623, metadata !DIExpression()), !dbg !1752
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
  ], !dbg !1773

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1774

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1775

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1752
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1779
  br i1 %160, label %177, label %161, !dbg !1779

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1781
  br i1 %162, label %163, label %165, !dbg !1785

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1781
  store i8 39, ptr %164, align 1, !dbg !1781, !tbaa !827
  br label %165, !dbg !1781

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1785
  call void @llvm.dbg.value(metadata i64 %166, metadata !1602, metadata !DIExpression()), !dbg !1654
  %167 = icmp ult i64 %166, %130, !dbg !1786
  br i1 %167, label %168, label %170, !dbg !1789

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1786
  store i8 36, ptr %169, align 1, !dbg !1786, !tbaa !827
  br label %170, !dbg !1786

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %171, metadata !1602, metadata !DIExpression()), !dbg !1654
  %172 = icmp ult i64 %171, %130, !dbg !1790
  br i1 %172, label %173, label %175, !dbg !1793

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1790
  store i8 39, ptr %174, align 1, !dbg !1790, !tbaa !827
  br label %175, !dbg !1790

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %176, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %177, !dbg !1794

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1654
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %178, metadata !1602, metadata !DIExpression()), !dbg !1654
  %180 = icmp ult i64 %178, %130, !dbg !1795
  br i1 %180, label %181, label %183, !dbg !1798

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1795
  store i8 92, ptr %182, align 1, !dbg !1795, !tbaa !827
  br label %183, !dbg !1795

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %184, metadata !1602, metadata !DIExpression()), !dbg !1654
  br i1 %111, label %185, label %482, !dbg !1799

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1801
  %187 = icmp ult i64 %186, %153, !dbg !1802
  br i1 %187, label %188, label %439, !dbg !1803

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1804
  %190 = load i8, ptr %189, align 1, !dbg !1804, !tbaa !827
  %191 = add i8 %190, -48, !dbg !1805
  %192 = icmp ult i8 %191, 10, !dbg !1805
  br i1 %192, label %193, label %439, !dbg !1805

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1806
  br i1 %194, label %195, label %197, !dbg !1810

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1806
  store i8 48, ptr %196, align 1, !dbg !1806, !tbaa !827
  br label %197, !dbg !1806

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %198, metadata !1602, metadata !DIExpression()), !dbg !1654
  %199 = icmp ult i64 %198, %130, !dbg !1811
  br i1 %199, label %200, label %202, !dbg !1814

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1811
  store i8 48, ptr %201, align 1, !dbg !1811, !tbaa !827
  br label %202, !dbg !1811

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1814
  call void @llvm.dbg.value(metadata i64 %203, metadata !1602, metadata !DIExpression()), !dbg !1654
  br label %439, !dbg !1815

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1816

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1817

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1818

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1820

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1822
  %210 = icmp ult i64 %209, %153, !dbg !1823
  br i1 %210, label %211, label %439, !dbg !1824

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1825
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1826
  %214 = load i8, ptr %213, align 1, !dbg !1826, !tbaa !827
  %215 = icmp eq i8 %214, 63, !dbg !1827
  br i1 %215, label %216, label %439, !dbg !1828

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1829
  %218 = load i8, ptr %217, align 1, !dbg !1829, !tbaa !827
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
  ], !dbg !1830

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1831

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %209, metadata !1616, metadata !DIExpression()), !dbg !1743
  %221 = icmp ult i64 %124, %130, !dbg !1833
  br i1 %221, label %222, label %224, !dbg !1836

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1833
  store i8 63, ptr %223, align 1, !dbg !1833, !tbaa !827
  br label %224, !dbg !1833

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %225, metadata !1602, metadata !DIExpression()), !dbg !1654
  %226 = icmp ult i64 %225, %130, !dbg !1837
  br i1 %226, label %227, label %229, !dbg !1840

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1837
  store i8 34, ptr %228, align 1, !dbg !1837, !tbaa !827
  br label %229, !dbg !1837

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1840
  call void @llvm.dbg.value(metadata i64 %230, metadata !1602, metadata !DIExpression()), !dbg !1654
  %231 = icmp ult i64 %230, %130, !dbg !1841
  br i1 %231, label %232, label %234, !dbg !1844

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1841
  store i8 34, ptr %233, align 1, !dbg !1841, !tbaa !827
  br label %234, !dbg !1841

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1844
  call void @llvm.dbg.value(metadata i64 %235, metadata !1602, metadata !DIExpression()), !dbg !1654
  %236 = icmp ult i64 %235, %130, !dbg !1845
  br i1 %236, label %237, label %239, !dbg !1848

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1845
  store i8 63, ptr %238, align 1, !dbg !1845, !tbaa !827
  br label %239, !dbg !1845

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %240, metadata !1602, metadata !DIExpression()), !dbg !1654
  br label %439, !dbg !1849

241:                                              ; preds = %152
  br label %251, !dbg !1850

242:                                              ; preds = %152
  br label %251, !dbg !1851

243:                                              ; preds = %152
  br label %249, !dbg !1852

244:                                              ; preds = %152
  br label %249, !dbg !1853

245:                                              ; preds = %152
  br label %251, !dbg !1854

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1855

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1856

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1859

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1861
  call void @llvm.dbg.label(metadata !1648), !dbg !1862
  br i1 %119, label %621, label %251, !dbg !1863

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1861
  call void @llvm.dbg.label(metadata !1650), !dbg !1865
  br i1 %109, label %493, label %450, !dbg !1866

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1867

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1868, !tbaa !827
  %256 = icmp eq i8 %255, 0, !dbg !1870
  br i1 %256, label %257, label %439, !dbg !1871

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1872
  br i1 %258, label %259, label %439, !dbg !1874

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1752
  br label %260, !dbg !1875

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1752
  br i1 %116, label %262, label %439, !dbg !1876

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1878

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1752
  br i1 %116, label %264, label %439, !dbg !1879

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1880

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1883
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1885
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1885
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1885
  call void @llvm.dbg.value(metadata i64 %270, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %269, metadata !1603, metadata !DIExpression()), !dbg !1654
  %271 = icmp ult i64 %124, %270, !dbg !1886
  br i1 %271, label %272, label %274, !dbg !1889

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1886
  store i8 39, ptr %273, align 1, !dbg !1886, !tbaa !827
  br label %274, !dbg !1886

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1889
  call void @llvm.dbg.value(metadata i64 %275, metadata !1602, metadata !DIExpression()), !dbg !1654
  %276 = icmp ult i64 %275, %270, !dbg !1890
  br i1 %276, label %277, label %279, !dbg !1893

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1890
  store i8 92, ptr %278, align 1, !dbg !1890, !tbaa !827
  br label %279, !dbg !1890

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1893
  call void @llvm.dbg.value(metadata i64 %280, metadata !1602, metadata !DIExpression()), !dbg !1654
  %281 = icmp ult i64 %280, %270, !dbg !1894
  br i1 %281, label %282, label %284, !dbg !1897

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1894
  store i8 39, ptr %283, align 1, !dbg !1894, !tbaa !827
  br label %284, !dbg !1894

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1897
  call void @llvm.dbg.value(metadata i64 %285, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %439, !dbg !1898

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1899

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1624, metadata !DIExpression()), !dbg !1900
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1901
  %289 = load ptr, ptr %288, align 8, !dbg !1901, !tbaa !758
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1901
  %292 = load i16, ptr %291, align 2, !dbg !1901, !tbaa !859
  %293 = and i16 %292, 16384, !dbg !1901
  %294 = icmp ne i16 %293, 0, !dbg !1903
  call void @llvm.dbg.value(metadata i1 %294, metadata !1627, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1900
  br label %337, !dbg !1904

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1905
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1628, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata ptr %14, metadata !1680, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata ptr %14, metadata !1688, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 0, metadata !1691, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i64 8, metadata !1692, metadata !DIExpression()), !dbg !1909
  store i64 0, ptr %14, align 8, !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1900
  %296 = icmp eq i64 %153, -1, !dbg !1912
  br i1 %296, label %297, label %299, !dbg !1914

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1915
  call void @llvm.dbg.value(metadata i64 %298, metadata !1595, metadata !DIExpression()), !dbg !1654
  br label %299, !dbg !1916

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1752
  call void @llvm.dbg.value(metadata i64 %300, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1917
  %301 = sub i64 %300, %129, !dbg !1918
  call void @llvm.dbg.value(metadata ptr %15, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1919
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %302, metadata !1635, metadata !DIExpression()), !dbg !1919
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1921

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1900
  %304 = icmp ugt i64 %300, %129, !dbg !1922
  br i1 %304, label %306, label %332, !dbg !1924

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1900
  br label %332, !dbg !1925

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1624, metadata !DIExpression()), !dbg !1900
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1927
  %310 = load i8, ptr %309, align 1, !dbg !1927, !tbaa !827
  %311 = icmp eq i8 %310, 0, !dbg !1924
  br i1 %311, label %332, label %312, !dbg !1928

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %313, metadata !1624, metadata !DIExpression()), !dbg !1900
  %314 = add i64 %313, %129, !dbg !1930
  %315 = icmp eq i64 %313, %301, !dbg !1922
  br i1 %315, label %332, label %306, !dbg !1924, !llvm.loop !1931

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1932
  %319 = and i1 %318, %110, !dbg !1932
  call void @llvm.dbg.value(metadata i64 1, metadata !1636, metadata !DIExpression()), !dbg !1933
  br i1 %319, label %320, label %328, !dbg !1932

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1636, metadata !DIExpression()), !dbg !1933
  %322 = add i64 %321, %129, !dbg !1934
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1936
  %324 = load i8, ptr %323, align 1, !dbg !1936, !tbaa !827
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1937

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %326, metadata !1636, metadata !DIExpression()), !dbg !1933
  %327 = icmp eq i64 %326, %302, !dbg !1939
  br i1 %327, label %328, label %320, !dbg !1940, !llvm.loop !1941

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1943, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %329, metadata !1631, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i32 %329, metadata !1945, metadata !DIExpression()), !dbg !1953
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1955
  %331 = icmp ne i32 %330, 0, !dbg !1956
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %302, metadata !1624, metadata !DIExpression()), !dbg !1900
  br label %332, !dbg !1957

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %333, metadata !1624, metadata !DIExpression()), !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1959
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1900
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1958
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1959
  call void @llvm.dbg.label(metadata !1653), !dbg !1960
  %336 = select i1 %109, i32 4, i32 2, !dbg !1961
  br label %626, !dbg !1961

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1752
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1963
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %339, metadata !1624, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 %338, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i1 %340, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1752
  %341 = icmp ult i64 %339, 2, !dbg !1964
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1965
  br i1 %343, label %439, label %344, !dbg !1965

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %345, metadata !1644, metadata !DIExpression()), !dbg !1967
  br label %346, !dbg !1968

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1654
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1743
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1969
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1752
  call void @llvm.dbg.value(metadata i8 %352, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 %351, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %349, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %347, metadata !1602, metadata !DIExpression()), !dbg !1654
  br i1 %342, label %397, label %353, !dbg !1970

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1975

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1752
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1978
  br i1 %355, label %372, label %356, !dbg !1978

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1980
  br i1 %357, label %358, label %360, !dbg !1984

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1980
  store i8 39, ptr %359, align 1, !dbg !1980, !tbaa !827
  br label %360, !dbg !1980

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %361, metadata !1602, metadata !DIExpression()), !dbg !1654
  %362 = icmp ult i64 %361, %130, !dbg !1985
  br i1 %362, label %363, label %365, !dbg !1988

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1985
  store i8 36, ptr %364, align 1, !dbg !1985, !tbaa !827
  br label %365, !dbg !1985

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %366, metadata !1602, metadata !DIExpression()), !dbg !1654
  %367 = icmp ult i64 %366, %130, !dbg !1989
  br i1 %367, label %368, label %370, !dbg !1992

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1989
  store i8 39, ptr %369, align 1, !dbg !1989, !tbaa !827
  br label %370, !dbg !1989

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %371, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %372, !dbg !1993

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1654
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %373, metadata !1602, metadata !DIExpression()), !dbg !1654
  %375 = icmp ult i64 %373, %130, !dbg !1994
  br i1 %375, label %376, label %378, !dbg !1997

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1994
  store i8 92, ptr %377, align 1, !dbg !1994, !tbaa !827
  br label %378, !dbg !1994

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %379, metadata !1602, metadata !DIExpression()), !dbg !1654
  %380 = icmp ult i64 %379, %130, !dbg !1998
  br i1 %380, label %381, label %385, !dbg !2001

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1998
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1998
  store i8 %383, ptr %384, align 1, !dbg !1998, !tbaa !827
  br label %385, !dbg !1998

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %386, metadata !1602, metadata !DIExpression()), !dbg !1654
  %387 = icmp ult i64 %386, %130, !dbg !2002
  br i1 %387, label %388, label %393, !dbg !2005

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2002
  %391 = or i8 %390, 48, !dbg !2002
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2002
  store i8 %391, ptr %392, align 1, !dbg !2002, !tbaa !827
  br label %393, !dbg !2002

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2005
  call void @llvm.dbg.value(metadata i64 %394, metadata !1602, metadata !DIExpression()), !dbg !1654
  %395 = and i8 %352, 7, !dbg !2006
  %396 = or i8 %395, 48, !dbg !2007
  call void @llvm.dbg.value(metadata i8 %396, metadata !1623, metadata !DIExpression()), !dbg !1752
  br label %404, !dbg !2008

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2009

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2010
  br i1 %399, label %400, label %402, !dbg !2015

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2010
  store i8 92, ptr %401, align 1, !dbg !2010, !tbaa !827
  br label %402, !dbg !2010

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %403, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1752
  br label %404, !dbg !2016

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1654
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1752
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1752
  call void @llvm.dbg.value(metadata i8 %409, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 %408, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %405, metadata !1602, metadata !DIExpression()), !dbg !1654
  %410 = add i64 %349, 1, !dbg !2017
  %411 = icmp ugt i64 %345, %410, !dbg !2019
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2020

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2021
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2021
  br i1 %415, label %416, label %427, !dbg !2021

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2024
  br i1 %417, label %418, label %420, !dbg !2028

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2024
  store i8 39, ptr %419, align 1, !dbg !2024, !tbaa !827
  br label %420, !dbg !2024

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %421, metadata !1602, metadata !DIExpression()), !dbg !1654
  %422 = icmp ult i64 %421, %130, !dbg !2029
  br i1 %422, label %423, label %425, !dbg !2032

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2029
  store i8 39, ptr %424, align 1, !dbg !2029, !tbaa !827
  br label %425, !dbg !2029

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %426, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %427, !dbg !2033

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2034
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %428, metadata !1602, metadata !DIExpression()), !dbg !1654
  %430 = icmp ult i64 %428, %130, !dbg !2035
  br i1 %430, label %431, label %433, !dbg !2038

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2035
  store i8 %409, ptr %432, align 1, !dbg !2035, !tbaa !827
  br label %433, !dbg !2035

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %434, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %410, metadata !1616, metadata !DIExpression()), !dbg !1743
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2039
  %436 = load i8, ptr %435, align 1, !dbg !2039, !tbaa !827
  call void @llvm.dbg.value(metadata i8 %436, metadata !1623, metadata !DIExpression()), !dbg !1752
  br label %346, !dbg !2040, !llvm.loop !2041

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i1 %340, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1752
  call void @llvm.dbg.value(metadata i8 %408, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %349, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %405, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %338, metadata !1595, metadata !DIExpression()), !dbg !1654
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2044
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1654
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1658
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1743
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1752
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %448, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %445, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %442, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %441, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %440, metadata !1595, metadata !DIExpression()), !dbg !1654
  br i1 %112, label %461, label %450, !dbg !2045

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
  br i1 %121, label %462, label %482, !dbg !2047

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2048

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
  %473 = lshr i8 %464, 5, !dbg !2049
  %474 = zext i8 %473 to i64, !dbg !2049
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2050
  %476 = load i32, ptr %475, align 4, !dbg !2050, !tbaa !818
  %477 = and i8 %464, 31, !dbg !2051
  %478 = zext i8 %477 to i32, !dbg !2051
  %479 = shl nuw i32 1, %478, !dbg !2052
  %480 = and i32 %476, %479, !dbg !2052
  %481 = icmp eq i32 %480, 0, !dbg !2052
  br i1 %481, label %482, label %493, !dbg !2053

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
  br i1 %154, label %493, label %529, !dbg !2054

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2044
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1654
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1658
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2055
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1752
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %501, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %499, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %496, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %495, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %494, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1651), !dbg !2056
  br i1 %110, label %621, label %503, !dbg !2057

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1752
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2059
  br i1 %504, label %521, label %505, !dbg !2059

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2061
  br i1 %506, label %507, label %509, !dbg !2065

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2061
  store i8 39, ptr %508, align 1, !dbg !2061, !tbaa !827
  br label %509, !dbg !2061

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %510, metadata !1602, metadata !DIExpression()), !dbg !1654
  %511 = icmp ult i64 %510, %502, !dbg !2066
  br i1 %511, label %512, label %514, !dbg !2069

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2066
  store i8 36, ptr %513, align 1, !dbg !2066, !tbaa !827
  br label %514, !dbg !2066

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %515, metadata !1602, metadata !DIExpression()), !dbg !1654
  %516 = icmp ult i64 %515, %502, !dbg !2070
  br i1 %516, label %517, label %519, !dbg !2073

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2070
  store i8 39, ptr %518, align 1, !dbg !2070, !tbaa !827
  br label %519, !dbg !2070

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %520, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %521, !dbg !2074

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1752
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %522, metadata !1602, metadata !DIExpression()), !dbg !1654
  %524 = icmp ult i64 %522, %502, !dbg !2075
  br i1 %524, label %525, label %527, !dbg !2078

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2075
  store i8 92, ptr %526, align 1, !dbg !2075, !tbaa !827
  br label %527, !dbg !2075

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2078
  call void @llvm.dbg.value(metadata i64 %502, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %501, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %499, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %496, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %528, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %494, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1652), !dbg !2079
  br label %553, !dbg !2080

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2044
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1654
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1658
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2055
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2083
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %538, metadata !1623, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1622, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i64 %535, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %532, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %531, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %530, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1652), !dbg !2079
  %540 = xor i1 %534, true, !dbg !2080
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2080
  br i1 %541, label %553, label %542, !dbg !2080

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2084
  br i1 %543, label %544, label %546, !dbg !2088

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2084
  store i8 39, ptr %545, align 1, !dbg !2084, !tbaa !827
  br label %546, !dbg !2084

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %547, metadata !1602, metadata !DIExpression()), !dbg !1654
  %548 = icmp ult i64 %547, %539, !dbg !2089
  br i1 %548, label %549, label %551, !dbg !2092

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2089
  store i8 39, ptr %550, align 1, !dbg !2089, !tbaa !827
  br label %551, !dbg !2089

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %552, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %553, !dbg !2093

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1752
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %561, metadata !1602, metadata !DIExpression()), !dbg !1654
  %563 = icmp ult i64 %561, %554, !dbg !2094
  br i1 %563, label %564, label %566, !dbg !2097

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2094
  store i8 %555, ptr %565, align 1, !dbg !2094, !tbaa !827
  br label %566, !dbg !2094

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2097
  call void @llvm.dbg.value(metadata i64 %567, metadata !1602, metadata !DIExpression()), !dbg !1654
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2098
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1654
  br label %569, !dbg !2099

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2044
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1654
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1658
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2055
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %576, metadata !1616, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %572, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %571, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %570, metadata !1595, metadata !DIExpression()), !dbg !1654
  %578 = add i64 %576, 1, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %578, metadata !1616, metadata !DIExpression()), !dbg !1743
  br label %122, !dbg !2101, !llvm.loop !2102

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %125, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %123, metadata !1595, metadata !DIExpression()), !dbg !1654
  %580 = icmp ne i64 %124, 0, !dbg !2104
  %581 = xor i1 %110, true, !dbg !2106
  %582 = or i1 %580, %581, !dbg !2106
  %583 = or i1 %582, %111, !dbg !2106
  br i1 %583, label %584, label %621, !dbg !2106

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2107
  %586 = xor i1 %126, true, !dbg !2107
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2107
  br i1 %587, label %595, label %588, !dbg !2107

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2109

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2111
  br label %636, !dbg !2113

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2114
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2116
  br i1 %594, label %27, label %595, !dbg !2116

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2117
  %598 = or i1 %597, %596, !dbg !2119
  br i1 %598, label %614, label %599, !dbg !2119

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %124, metadata !1602, metadata !DIExpression()), !dbg !1654
  %600 = load i8, ptr %107, align 1, !dbg !2120, !tbaa !827
  %601 = icmp eq i8 %600, 0, !dbg !2123
  br i1 %601, label %614, label %602, !dbg !2123

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %605, metadata !1602, metadata !DIExpression()), !dbg !1654
  %606 = icmp ult i64 %605, %130, !dbg !2124
  br i1 %606, label %607, label %609, !dbg !2127

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2124
  store i8 %603, ptr %608, align 1, !dbg !2124, !tbaa !827
  br label %609, !dbg !2124

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %610, metadata !1602, metadata !DIExpression()), !dbg !1654
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2128
  call void @llvm.dbg.value(metadata ptr %611, metadata !1604, metadata !DIExpression()), !dbg !1654
  %612 = load i8, ptr %611, align 1, !dbg !2120, !tbaa !827
  %613 = icmp eq i8 %612, 0, !dbg !2123
  br i1 %613, label %614, label %602, !dbg !2123, !llvm.loop !2129

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1730
  call void @llvm.dbg.value(metadata i64 %615, metadata !1602, metadata !DIExpression()), !dbg !1654
  %616 = icmp ult i64 %615, %130, !dbg !2131
  br i1 %616, label %617, label %636, !dbg !2133

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2134
  store i8 0, ptr %618, align 1, !dbg !2135, !tbaa !827
  br label %636, !dbg !2134

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1653), !dbg !1960
  %620 = icmp eq i32 %103, 2, !dbg !2136
  br i1 %620, label %626, label %630, !dbg !1961

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1653), !dbg !1960
  %624 = icmp eq i32 %103, 2, !dbg !2136
  %625 = select i1 %109, i32 4, i32 2, !dbg !1961
  br i1 %624, label %626, label %630, !dbg !1961

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1961

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1596, metadata !DIExpression()), !dbg !1654
  %634 = and i32 %5, -3, !dbg !2137
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2138
  br label %636, !dbg !2139

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2140
}

; Function Attrs: nounwind
declare !dbg !2141 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2144 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2147 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2149 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %1, metadata !2154, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %2, metadata !2155, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr %0, metadata !2157, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %1, metadata !2162, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr null, metadata !2163, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr %2, metadata !2164, metadata !DIExpression()), !dbg !2170
  %4 = icmp eq ptr %2, null, !dbg !2172
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %5, metadata !2165, metadata !DIExpression()), !dbg !2170
  %6 = tail call ptr @__errno_location() #39, !dbg !2173
  %7 = load i32, ptr %6, align 4, !dbg !2173, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %7, metadata !2166, metadata !DIExpression()), !dbg !2170
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2174
  %9 = load i32, ptr %8, align 4, !dbg !2174, !tbaa !1536
  %10 = or i32 %9, 1, !dbg !2175
  call void @llvm.dbg.value(metadata i32 %10, metadata !2167, metadata !DIExpression()), !dbg !2170
  %11 = load i32, ptr %5, align 8, !dbg !2176, !tbaa !1486
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2177
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2178
  %14 = load ptr, ptr %13, align 8, !dbg !2178, !tbaa !1557
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2179
  %16 = load ptr, ptr %15, align 8, !dbg !2179, !tbaa !1560
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2180
  %18 = add i64 %17, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %18, metadata !2168, metadata !DIExpression()), !dbg !2170
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %19, metadata !2169, metadata !DIExpression()), !dbg !2170
  %20 = load i32, ptr %5, align 8, !dbg !2183, !tbaa !1486
  %21 = load ptr, ptr %13, align 8, !dbg !2184, !tbaa !1557
  %22 = load ptr, ptr %15, align 8, !dbg !2185, !tbaa !1560
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2186
  store i32 %7, ptr %6, align 4, !dbg !2187, !tbaa !818
  ret ptr %19, !dbg !2188
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2158 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2157, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %1, metadata !2162, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %2, metadata !2163, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %3, metadata !2164, metadata !DIExpression()), !dbg !2189
  %5 = icmp eq ptr %3, null, !dbg !2190
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2190
  call void @llvm.dbg.value(metadata ptr %6, metadata !2165, metadata !DIExpression()), !dbg !2189
  %7 = tail call ptr @__errno_location() #39, !dbg !2191
  %8 = load i32, ptr %7, align 4, !dbg !2191, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %8, metadata !2166, metadata !DIExpression()), !dbg !2189
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2192
  %10 = load i32, ptr %9, align 4, !dbg !2192, !tbaa !1536
  %11 = icmp eq ptr %2, null, !dbg !2193
  %12 = zext i1 %11 to i32, !dbg !2193
  %13 = or i32 %10, %12, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %13, metadata !2167, metadata !DIExpression()), !dbg !2189
  %14 = load i32, ptr %6, align 8, !dbg !2195, !tbaa !1486
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2196
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2197
  %17 = load ptr, ptr %16, align 8, !dbg !2197, !tbaa !1557
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2198
  %19 = load ptr, ptr %18, align 8, !dbg !2198, !tbaa !1560
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2199
  %21 = add i64 %20, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %21, metadata !2168, metadata !DIExpression()), !dbg !2189
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %22, metadata !2169, metadata !DIExpression()), !dbg !2189
  %23 = load i32, ptr %6, align 8, !dbg !2202, !tbaa !1486
  %24 = load ptr, ptr %16, align 8, !dbg !2203, !tbaa !1557
  %25 = load ptr, ptr %18, align 8, !dbg !2204, !tbaa !1560
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2205
  store i32 %8, ptr %7, align 4, !dbg !2206, !tbaa !818
  br i1 %11, label %28, label %27, !dbg !2207

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2208, !tbaa !2210
  br label %28, !dbg !2211

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2212
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2213 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2218, !tbaa !758
  call void @llvm.dbg.value(metadata ptr %1, metadata !2215, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !2220
  %2 = load i32, ptr @nslots, align 4, !tbaa !818
  call void @llvm.dbg.value(metadata i32 1, metadata !2216, metadata !DIExpression()), !dbg !2220
  %3 = icmp sgt i32 %2, 1, !dbg !2221
  br i1 %3, label %4, label %6, !dbg !2223

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2221
  br label %10, !dbg !2223

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2224
  %8 = load ptr, ptr %7, align 8, !dbg !2224, !tbaa !2226
  %9 = icmp eq ptr %8, @slot0, !dbg !2228
  br i1 %9, label %17, label %16, !dbg !2229

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2216, metadata !DIExpression()), !dbg !2220
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2230
  %13 = load ptr, ptr %12, align 8, !dbg !2230, !tbaa !2226
  tail call void @free(ptr noundef %13) #36, !dbg !2231
  %14 = add nuw nsw i64 %11, 1, !dbg !2232
  call void @llvm.dbg.value(metadata i64 %14, metadata !2216, metadata !DIExpression()), !dbg !2220
  %15 = icmp eq i64 %14, %5, !dbg !2221
  br i1 %15, label %6, label %10, !dbg !2223, !llvm.loop !2233

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2235
  store i64 256, ptr @slotvec0, align 8, !dbg !2237, !tbaa !2238
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2239, !tbaa !2226
  br label %17, !dbg !2240

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2241
  br i1 %18, label %20, label %19, !dbg !2243

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2244
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2246, !tbaa !758
  br label %20, !dbg !2247

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2248, !tbaa !818
  ret void, !dbg !2249
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2250 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2253 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata ptr %1, metadata !2256, metadata !DIExpression()), !dbg !2257
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2258
  ret ptr %3, !dbg !2259
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2260 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2264, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata ptr %1, metadata !2265, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i64 %2, metadata !2266, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata ptr %3, metadata !2267, metadata !DIExpression()), !dbg !2280
  %6 = tail call ptr @__errno_location() #39, !dbg !2281
  %7 = load i32, ptr %6, align 4, !dbg !2281, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %7, metadata !2268, metadata !DIExpression()), !dbg !2280
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2282, !tbaa !758
  call void @llvm.dbg.value(metadata ptr %8, metadata !2269, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2270, metadata !DIExpression()), !dbg !2280
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2283
  br i1 %9, label %10, label %11, !dbg !2283

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2285
  unreachable, !dbg !2285

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2286, !tbaa !818
  %13 = icmp sgt i32 %12, %0, !dbg !2287
  br i1 %13, label %32, label %14, !dbg !2288

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2289
  call void @llvm.dbg.value(metadata i1 %15, metadata !2271, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2291
  %16 = sext i32 %12 to i64, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %16, metadata !2274, metadata !DIExpression()), !dbg !2290
  store i64 %16, ptr %5, align 8, !dbg !2293, !tbaa !2210
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2294
  %18 = add nuw nsw i32 %0, 1, !dbg !2295
  %19 = sub i32 %18, %12, !dbg !2296
  %20 = sext i32 %19 to i64, !dbg !2297
  call void @llvm.dbg.value(metadata ptr %5, metadata !2274, metadata !DIExpression(DW_OP_deref)), !dbg !2290
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2298
  call void @llvm.dbg.value(metadata ptr %21, metadata !2269, metadata !DIExpression()), !dbg !2280
  store ptr %21, ptr @slotvec, align 8, !dbg !2299, !tbaa !758
  br i1 %15, label %22, label %23, !dbg !2300

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2301, !tbaa.struct !2303
  br label %23, !dbg !2304

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2305, !tbaa !818
  %25 = sext i32 %24 to i64, !dbg !2306
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2306
  %27 = load i64, ptr %5, align 8, !dbg !2307, !tbaa !2210
  call void @llvm.dbg.value(metadata i64 %27, metadata !2274, metadata !DIExpression()), !dbg !2290
  %28 = sub nsw i64 %27, %25, !dbg !2308
  %29 = shl i64 %28, 4, !dbg !2309
  call void @llvm.dbg.value(metadata ptr %26, metadata !1688, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i32 0, metadata !1691, metadata !DIExpression()), !dbg !2310
  call void @llvm.dbg.value(metadata i64 %29, metadata !1692, metadata !DIExpression()), !dbg !2310
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2312
  %30 = load i64, ptr %5, align 8, !dbg !2313, !tbaa !2210
  call void @llvm.dbg.value(metadata i64 %30, metadata !2274, metadata !DIExpression()), !dbg !2290
  %31 = trunc i64 %30 to i32, !dbg !2313
  store i32 %31, ptr @nslots, align 4, !dbg !2314, !tbaa !818
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2315
  br label %32, !dbg !2316

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2280
  call void @llvm.dbg.value(metadata ptr %33, metadata !2269, metadata !DIExpression()), !dbg !2280
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2317
  %36 = load i64, ptr %35, align 8, !dbg !2318, !tbaa !2238
  call void @llvm.dbg.value(metadata i64 %36, metadata !2275, metadata !DIExpression()), !dbg !2319
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2320
  %38 = load ptr, ptr %37, align 8, !dbg !2320, !tbaa !2226
  call void @llvm.dbg.value(metadata ptr %38, metadata !2277, metadata !DIExpression()), !dbg !2319
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2321
  %40 = load i32, ptr %39, align 4, !dbg !2321, !tbaa !1536
  %41 = or i32 %40, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i32 %41, metadata !2278, metadata !DIExpression()), !dbg !2319
  %42 = load i32, ptr %3, align 8, !dbg !2323, !tbaa !1486
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2324
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2325
  %45 = load ptr, ptr %44, align 8, !dbg !2325, !tbaa !1557
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2326
  %47 = load ptr, ptr %46, align 8, !dbg !2326, !tbaa !1560
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %48, metadata !2279, metadata !DIExpression()), !dbg !2319
  %49 = icmp ugt i64 %36, %48, !dbg !2328
  br i1 %49, label %60, label %50, !dbg !2330

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2331
  call void @llvm.dbg.value(metadata i64 %51, metadata !2275, metadata !DIExpression()), !dbg !2319
  store i64 %51, ptr %35, align 8, !dbg !2333, !tbaa !2238
  %52 = icmp eq ptr %38, @slot0, !dbg !2334
  br i1 %52, label %54, label %53, !dbg !2336

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2337
  br label %54, !dbg !2337

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2338
  call void @llvm.dbg.value(metadata ptr %55, metadata !2277, metadata !DIExpression()), !dbg !2319
  store ptr %55, ptr %37, align 8, !dbg !2339, !tbaa !2226
  %56 = load i32, ptr %3, align 8, !dbg !2340, !tbaa !1486
  %57 = load ptr, ptr %44, align 8, !dbg !2341, !tbaa !1557
  %58 = load ptr, ptr %46, align 8, !dbg !2342, !tbaa !1560
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2343
  br label %60, !dbg !2344

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2319
  call void @llvm.dbg.value(metadata ptr %61, metadata !2277, metadata !DIExpression()), !dbg !2319
  store i32 %7, ptr %6, align 4, !dbg !2345, !tbaa !818
  ret ptr %61, !dbg !2346
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2351, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %1, metadata !2352, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %2, metadata !2353, metadata !DIExpression()), !dbg !2354
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2355
  ret ptr %4, !dbg !2356
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2357 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i32 0, metadata !2255, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata ptr %0, metadata !2256, metadata !DIExpression()), !dbg !2361
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2363
  ret ptr %2, !dbg !2364
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2365 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i64 %1, metadata !2370, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata i32 0, metadata !2351, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata ptr %0, metadata !2352, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i64 %1, metadata !2353, metadata !DIExpression()), !dbg !2372
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2374
  ret ptr %3, !dbg !2375
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2376 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 %1, metadata !2381, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata ptr %2, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2385
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2383, metadata !DIExpression()), !dbg !2386
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2387), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %1, metadata !2391, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2396, metadata !DIExpression()), !dbg !2399
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2399, !alias.scope !2387
  %5 = icmp eq i32 %1, 10, !dbg !2400
  br i1 %5, label %6, label %7, !dbg !2402

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2403, !noalias !2387
  unreachable, !dbg !2403

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2404, !tbaa !1486, !alias.scope !2387
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2405
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2406
  ret ptr %8, !dbg !2407
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2408 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 %1, metadata !2413, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata ptr %2, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i64 %3, metadata !2415, metadata !DIExpression()), !dbg !2417
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2416, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2420), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %1, metadata !2391, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2396, metadata !DIExpression()), !dbg !2426
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2426, !alias.scope !2420
  %6 = icmp eq i32 %1, 10, !dbg !2427
  br i1 %6, label %7, label %8, !dbg !2428

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2429, !noalias !2420
  unreachable, !dbg !2429

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2430, !tbaa !1486, !alias.scope !2420
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2431
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2432
  ret ptr %9, !dbg !2433
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2434 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata ptr %1, metadata !2439, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.value(metadata i32 0, metadata !2380, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %0, metadata !2381, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %1, metadata !2382, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2443
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2383, metadata !DIExpression()), !dbg !2444
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2445), !dbg !2448
  call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2396, metadata !DIExpression()), !dbg !2451
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2451, !alias.scope !2445
  %4 = icmp eq i32 %0, 10, !dbg !2452
  br i1 %4, label %5, label %6, !dbg !2453

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2454, !noalias !2445
  unreachable, !dbg !2454

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2455, !tbaa !1486, !alias.scope !2445
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2456
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2457
  ret ptr %7, !dbg !2458
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2459 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2463, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata ptr %1, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i64 %2, metadata !2465, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %0, metadata !2413, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %1, metadata !2414, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %2, metadata !2415, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2469
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2416, metadata !DIExpression()), !dbg !2470
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2471), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2396, metadata !DIExpression()), !dbg !2477
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2477, !alias.scope !2471
  %5 = icmp eq i32 %0, 10, !dbg !2478
  br i1 %5, label %6, label %7, !dbg !2479

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2480, !noalias !2471
  unreachable, !dbg !2480

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2481, !tbaa !1486, !alias.scope !2471
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2482
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2483
  ret ptr %8, !dbg !2484
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2485 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i64 %1, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8 %2, metadata !2491, metadata !DIExpression()), !dbg !2493
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2494
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2496, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 %2, metadata !1504, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8 %2, metadata !1506, metadata !DIExpression()), !dbg !2498
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2500
  %6 = lshr i8 %2, 5, !dbg !2501
  %7 = zext i8 %6 to i64, !dbg !2501
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2502
  call void @llvm.dbg.value(metadata ptr %8, metadata !1507, metadata !DIExpression()), !dbg !2498
  %9 = and i8 %2, 31, !dbg !2503
  %10 = zext i8 %9 to i32, !dbg !2503
  call void @llvm.dbg.value(metadata i32 %10, metadata !1509, metadata !DIExpression()), !dbg !2498
  %11 = load i32, ptr %8, align 4, !dbg !2504, !tbaa !818
  %12 = lshr i32 %11, %10, !dbg !2505
  call void @llvm.dbg.value(metadata i32 %12, metadata !1510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2498
  %13 = and i32 %12, 1, !dbg !2506
  %14 = xor i32 %13, 1, !dbg !2506
  %15 = shl nuw i32 %14, %10, !dbg !2507
  %16 = xor i32 %15, %11, !dbg !2508
  store i32 %16, ptr %8, align 4, !dbg !2508, !tbaa !818
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2509
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2510
  ret ptr %17, !dbg !2511
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2512 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8 %1, metadata !2517, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i64 -1, metadata !2490, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.value(metadata i8 %1, metadata !2491, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2521
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2492, metadata !DIExpression()), !dbg !2522
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2523, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 %1, metadata !1504, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !2524
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2526
  %5 = lshr i8 %1, 5, !dbg !2527
  %6 = zext i8 %5 to i64, !dbg !2527
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2528
  call void @llvm.dbg.value(metadata ptr %7, metadata !1507, metadata !DIExpression()), !dbg !2524
  %8 = and i8 %1, 31, !dbg !2529
  %9 = zext i8 %8 to i32, !dbg !2529
  call void @llvm.dbg.value(metadata i32 %9, metadata !1509, metadata !DIExpression()), !dbg !2524
  %10 = load i32, ptr %7, align 4, !dbg !2530, !tbaa !818
  %11 = lshr i32 %10, %9, !dbg !2531
  call void @llvm.dbg.value(metadata i32 %11, metadata !1510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2524
  %12 = and i32 %11, 1, !dbg !2532
  %13 = xor i32 %12, 1, !dbg !2532
  %14 = shl nuw i32 %13, %9, !dbg !2533
  %15 = xor i32 %14, %10, !dbg !2534
  store i32 %15, ptr %7, align 4, !dbg !2534, !tbaa !818
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2535
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2536
  ret ptr %16, !dbg !2537
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2538 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata ptr %0, metadata !2516, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 58, metadata !2517, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i64 -1, metadata !2490, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8 58, metadata !2491, metadata !DIExpression()), !dbg !2544
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2546
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2492, metadata !DIExpression()), !dbg !2547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2548, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %2, metadata !1503, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2549
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2551
  call void @llvm.dbg.value(metadata ptr %3, metadata !1507, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2549
  %4 = load i32, ptr %3, align 4, !dbg !2552, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %4, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2549
  %5 = or i32 %4, 67108864, !dbg !2553
  store i32 %5, ptr %3, align 4, !dbg !2553, !tbaa !818
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2554
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2555
  ret ptr %6, !dbg !2556
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2557 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %1, metadata !2560, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata ptr %0, metadata !2489, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i64 %1, metadata !2490, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i8 58, metadata !2491, metadata !DIExpression()), !dbg !2562
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2564
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2492, metadata !DIExpression()), !dbg !2565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2566, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2567
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2569
  call void @llvm.dbg.value(metadata ptr %4, metadata !1507, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2567
  %5 = load i32, ptr %4, align 4, !dbg !2570, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %5, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2567
  %6 = or i32 %5, 67108864, !dbg !2571
  store i32 %6, ptr %4, align 4, !dbg !2571, !tbaa !818
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2572
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2573
  ret ptr %7, !dbg !2574
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2575 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2396, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %0, metadata !2577, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 %1, metadata !2578, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %2, metadata !2579, metadata !DIExpression()), !dbg !2583
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2584
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2580, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %1, metadata !2391, metadata !DIExpression()), !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !2396, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2586
  %5 = icmp eq i32 %1, 10, !dbg !2587
  br i1 %5, label %6, label %7, !dbg !2588

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2589, !noalias !2590
  unreachable, !dbg !2589

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2396, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2586
  store i32 %1, ptr %4, align 8, !dbg !2593, !tbaa.struct !2497
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2593
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2594
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2596
  call void @llvm.dbg.value(metadata ptr %9, metadata !1507, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2594
  %10 = load i32, ptr %9, align 4, !dbg !2597, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %10, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2594
  %11 = or i32 %10, 67108864, !dbg !2598
  store i32 %11, ptr %9, align 4, !dbg !2598, !tbaa !818
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2600
  ret ptr %12, !dbg !2601
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2602 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2606, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %1, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata ptr %3, metadata !2609, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 %0, metadata !2611, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata ptr %3, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i64 -1, metadata !2619, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2620, metadata !DIExpression()), !dbg !2624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2625, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2626
  store i32 10, ptr %5, align 8, !dbg !2628, !tbaa !1486
  %6 = icmp ne ptr %1, null, !dbg !2629
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2630
  br i1 %8, label %10, label %9, !dbg !2630

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2631
  unreachable, !dbg !2631

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2632
  store ptr %1, ptr %11, align 8, !dbg !2633, !tbaa !1557
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2634
  store ptr %2, ptr %12, align 8, !dbg !2635, !tbaa !1560
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2636
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2637
  ret ptr %13, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2612 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2611, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata ptr %3, metadata !2618, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %4, metadata !2619, metadata !DIExpression()), !dbg !2639
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2640
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2620, metadata !DIExpression()), !dbg !2641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2642, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !2643
  call void @llvm.dbg.value(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !2643
  store i32 10, ptr %6, align 8, !dbg !2645, !tbaa !1486
  %7 = icmp ne ptr %1, null, !dbg !2646
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2647
  br i1 %9, label %11, label %10, !dbg !2647

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2648
  unreachable, !dbg !2648

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2649
  store ptr %1, ptr %12, align 8, !dbg !2650, !tbaa !1557
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2651
  store ptr %2, ptr %13, align 8, !dbg !2652, !tbaa !1560
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2653
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2654
  ret ptr %14, !dbg !2655
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2656 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2660, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %1, metadata !2661, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata ptr %2, metadata !2662, metadata !DIExpression()), !dbg !2663
  call void @llvm.dbg.value(metadata i32 0, metadata !2606, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %0, metadata !2607, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i32 0, metadata !2611, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i64 -1, metadata !2619, metadata !DIExpression()), !dbg !2666
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2620, metadata !DIExpression()), !dbg !2669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2670, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %1, metadata !1545, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !2671
  store i32 10, ptr %4, align 8, !dbg !2673, !tbaa !1486
  %5 = icmp ne ptr %0, null, !dbg !2674
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2675
  br i1 %7, label %9, label %8, !dbg !2675

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2676
  unreachable, !dbg !2676

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2677
  store ptr %0, ptr %10, align 8, !dbg !2678, !tbaa !1557
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2679
  store ptr %1, ptr %11, align 8, !dbg !2680, !tbaa !1560
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2682
  ret ptr %12, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2684 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2688, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %1, metadata !2689, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata ptr %2, metadata !2690, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i64 %3, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.value(metadata i32 0, metadata !2611, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %0, metadata !2616, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i64 %3, metadata !2619, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2695
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2620, metadata !DIExpression()), !dbg !2696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2697, !tbaa.struct !2497
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %1, metadata !1545, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2698
  store i32 10, ptr %5, align 8, !dbg !2700, !tbaa !1486
  %6 = icmp ne ptr %0, null, !dbg !2701
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2702
  br i1 %8, label %10, label %9, !dbg !2702

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2703
  unreachable, !dbg !2703

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2704
  store ptr %0, ptr %11, align 8, !dbg !2705, !tbaa !1557
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2706
  store ptr %1, ptr %12, align 8, !dbg !2707, !tbaa !1560
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2708
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2709
  ret ptr %13, !dbg !2710
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2711 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata ptr %1, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %2, metadata !2717, metadata !DIExpression()), !dbg !2718
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2719
  ret ptr %4, !dbg !2720
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2721 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %0, metadata !2716, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %1, metadata !2717, metadata !DIExpression()), !dbg !2728
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2730
  ret ptr %3, !dbg !2731
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2732 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %1, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i32 %0, metadata !2715, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata ptr %1, metadata !2716, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i64 -1, metadata !2717, metadata !DIExpression()), !dbg !2739
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2741
  ret ptr %3, !dbg !2742
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2743 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 0, metadata !2736, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %0, metadata !2737, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i32 0, metadata !2715, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %0, metadata !2716, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata i64 -1, metadata !2717, metadata !DIExpression()), !dbg !2751
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2753
  ret ptr %2, !dbg !2754
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2755 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2794, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %1, metadata !2795, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %2, metadata !2796, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %3, metadata !2797, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %4, metadata !2798, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i64 %5, metadata !2799, metadata !DIExpression()), !dbg !2800
  %7 = icmp eq ptr %1, null, !dbg !2801
  br i1 %7, label %10, label %8, !dbg !2803

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2804
  br label %12, !dbg !2804

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.76, ptr noundef %2, ptr noundef %3) #36, !dbg !2805
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.3.78, i32 noundef 5) #36, !dbg !2806
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2806
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2807
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.5.80, i32 noundef 5) #36, !dbg !2808
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.81) #36, !dbg !2808
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2809
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
  ], !dbg !2810

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.7.82, i32 noundef 5) #36, !dbg !2811
  %21 = load ptr, ptr %4, align 8, !dbg !2811, !tbaa !758
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2811
  br label %147, !dbg !2813

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.8.83, i32 noundef 5) #36, !dbg !2814
  %25 = load ptr, ptr %4, align 8, !dbg !2814, !tbaa !758
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2814
  %27 = load ptr, ptr %26, align 8, !dbg !2814, !tbaa !758
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2814
  br label %147, !dbg !2815

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.9.84, i32 noundef 5) #36, !dbg !2816
  %31 = load ptr, ptr %4, align 8, !dbg !2816, !tbaa !758
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2816
  %33 = load ptr, ptr %32, align 8, !dbg !2816, !tbaa !758
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2816
  %35 = load ptr, ptr %34, align 8, !dbg !2816, !tbaa !758
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2816
  br label %147, !dbg !2817

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.10.85, i32 noundef 5) #36, !dbg !2818
  %39 = load ptr, ptr %4, align 8, !dbg !2818, !tbaa !758
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2818
  %41 = load ptr, ptr %40, align 8, !dbg !2818, !tbaa !758
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2818
  %43 = load ptr, ptr %42, align 8, !dbg !2818, !tbaa !758
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2818
  %45 = load ptr, ptr %44, align 8, !dbg !2818, !tbaa !758
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2818
  br label %147, !dbg !2819

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.11.86, i32 noundef 5) #36, !dbg !2820
  %49 = load ptr, ptr %4, align 8, !dbg !2820, !tbaa !758
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2820
  %51 = load ptr, ptr %50, align 8, !dbg !2820, !tbaa !758
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2820
  %53 = load ptr, ptr %52, align 8, !dbg !2820, !tbaa !758
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2820
  %55 = load ptr, ptr %54, align 8, !dbg !2820, !tbaa !758
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2820
  %57 = load ptr, ptr %56, align 8, !dbg !2820, !tbaa !758
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2820
  br label %147, !dbg !2821

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.12.87, i32 noundef 5) #36, !dbg !2822
  %61 = load ptr, ptr %4, align 8, !dbg !2822, !tbaa !758
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2822
  %63 = load ptr, ptr %62, align 8, !dbg !2822, !tbaa !758
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2822
  %65 = load ptr, ptr %64, align 8, !dbg !2822, !tbaa !758
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2822
  %67 = load ptr, ptr %66, align 8, !dbg !2822, !tbaa !758
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2822
  %69 = load ptr, ptr %68, align 8, !dbg !2822, !tbaa !758
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2822
  %71 = load ptr, ptr %70, align 8, !dbg !2822, !tbaa !758
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2822
  br label %147, !dbg !2823

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.13.88, i32 noundef 5) #36, !dbg !2824
  %75 = load ptr, ptr %4, align 8, !dbg !2824, !tbaa !758
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2824
  %77 = load ptr, ptr %76, align 8, !dbg !2824, !tbaa !758
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2824
  %79 = load ptr, ptr %78, align 8, !dbg !2824, !tbaa !758
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2824
  %81 = load ptr, ptr %80, align 8, !dbg !2824, !tbaa !758
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2824
  %83 = load ptr, ptr %82, align 8, !dbg !2824, !tbaa !758
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2824
  %85 = load ptr, ptr %84, align 8, !dbg !2824, !tbaa !758
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2824
  %87 = load ptr, ptr %86, align 8, !dbg !2824, !tbaa !758
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2824
  br label %147, !dbg !2825

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.14.89, i32 noundef 5) #36, !dbg !2826
  %91 = load ptr, ptr %4, align 8, !dbg !2826, !tbaa !758
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2826
  %93 = load ptr, ptr %92, align 8, !dbg !2826, !tbaa !758
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2826
  %95 = load ptr, ptr %94, align 8, !dbg !2826, !tbaa !758
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2826
  %97 = load ptr, ptr %96, align 8, !dbg !2826, !tbaa !758
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2826
  %99 = load ptr, ptr %98, align 8, !dbg !2826, !tbaa !758
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2826
  %101 = load ptr, ptr %100, align 8, !dbg !2826, !tbaa !758
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2826
  %103 = load ptr, ptr %102, align 8, !dbg !2826, !tbaa !758
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2826
  %105 = load ptr, ptr %104, align 8, !dbg !2826, !tbaa !758
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2826
  br label %147, !dbg !2827

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.15.90, i32 noundef 5) #36, !dbg !2828
  %109 = load ptr, ptr %4, align 8, !dbg !2828, !tbaa !758
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2828
  %111 = load ptr, ptr %110, align 8, !dbg !2828, !tbaa !758
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2828
  %113 = load ptr, ptr %112, align 8, !dbg !2828, !tbaa !758
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2828
  %115 = load ptr, ptr %114, align 8, !dbg !2828, !tbaa !758
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2828
  %117 = load ptr, ptr %116, align 8, !dbg !2828, !tbaa !758
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2828
  %119 = load ptr, ptr %118, align 8, !dbg !2828, !tbaa !758
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2828
  %121 = load ptr, ptr %120, align 8, !dbg !2828, !tbaa !758
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2828
  %123 = load ptr, ptr %122, align 8, !dbg !2828, !tbaa !758
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2828
  %125 = load ptr, ptr %124, align 8, !dbg !2828, !tbaa !758
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2828
  br label %147, !dbg !2829

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.16.91, i32 noundef 5) #36, !dbg !2830
  %129 = load ptr, ptr %4, align 8, !dbg !2830, !tbaa !758
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2830
  %131 = load ptr, ptr %130, align 8, !dbg !2830, !tbaa !758
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2830
  %133 = load ptr, ptr %132, align 8, !dbg !2830, !tbaa !758
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2830
  %135 = load ptr, ptr %134, align 8, !dbg !2830, !tbaa !758
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2830
  %137 = load ptr, ptr %136, align 8, !dbg !2830, !tbaa !758
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2830
  %139 = load ptr, ptr %138, align 8, !dbg !2830, !tbaa !758
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2830
  %141 = load ptr, ptr %140, align 8, !dbg !2830, !tbaa !758
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2830
  %143 = load ptr, ptr %142, align 8, !dbg !2830, !tbaa !758
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2830
  %145 = load ptr, ptr %144, align 8, !dbg !2830, !tbaa !758
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2830
  br label %147, !dbg !2831

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2832
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2833 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %1, metadata !2838, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %2, metadata !2839, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %3, metadata !2840, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata ptr %4, metadata !2841, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 0, metadata !2842, metadata !DIExpression()), !dbg !2843
  br label %6, !dbg !2844

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2846
  call void @llvm.dbg.value(metadata i64 %7, metadata !2842, metadata !DIExpression()), !dbg !2843
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2847
  %9 = load ptr, ptr %8, align 8, !dbg !2847, !tbaa !758
  %10 = icmp eq ptr %9, null, !dbg !2849
  %11 = add i64 %7, 1, !dbg !2850
  call void @llvm.dbg.value(metadata i64 %11, metadata !2842, metadata !DIExpression()), !dbg !2843
  br i1 %10, label %12, label %6, !dbg !2849, !llvm.loop !2851

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2853
  ret void, !dbg !2854
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2855 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr %1, metadata !2871, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr %2, metadata !2872, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata ptr %3, metadata !2873, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2874, metadata !DIExpression()), !dbg !2879
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2880
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2876, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata i64 0, metadata !2875, metadata !DIExpression()), !dbg !2878
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2875, metadata !DIExpression()), !dbg !2878
  %10 = icmp sgt i32 %9, -1, !dbg !2882
  br i1 %10, label %18, label %11, !dbg !2882

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2882
  store i32 %12, ptr %7, align 8, !dbg !2882
  %13 = icmp ult i32 %9, -7, !dbg !2882
  br i1 %13, label %14, label %18, !dbg !2882

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2882
  %16 = sext i32 %9 to i64, !dbg !2882
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2882
  br label %22, !dbg !2882

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2882
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2882
  store ptr %21, ptr %4, align 8, !dbg !2882
  br label %22, !dbg !2882

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2882
  %25 = load ptr, ptr %24, align 8, !dbg !2882
  store ptr %25, ptr %6, align 8, !dbg !2885, !tbaa !758
  %26 = icmp eq ptr %25, null, !dbg !2886
  br i1 %26, label %197, label %27, !dbg !2887

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()), !dbg !2878
  %28 = icmp sgt i32 %23, -1, !dbg !2882
  br i1 %28, label %36, label %29, !dbg !2882

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2882
  store i32 %30, ptr %7, align 8, !dbg !2882
  %31 = icmp ult i32 %23, -7, !dbg !2882
  br i1 %31, label %32, label %36, !dbg !2882

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2882
  %34 = sext i32 %23 to i64, !dbg !2882
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2882
  br label %40, !dbg !2882

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2882
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2882
  store ptr %39, ptr %4, align 8, !dbg !2882
  br label %40, !dbg !2882

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2882
  %43 = load ptr, ptr %42, align 8, !dbg !2882
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2888
  store ptr %43, ptr %44, align 8, !dbg !2885, !tbaa !758
  %45 = icmp eq ptr %43, null, !dbg !2886
  br i1 %45, label %197, label %46, !dbg !2887

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 2, metadata !2875, metadata !DIExpression()), !dbg !2878
  %47 = icmp sgt i32 %41, -1, !dbg !2882
  br i1 %47, label %55, label %48, !dbg !2882

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2882
  store i32 %49, ptr %7, align 8, !dbg !2882
  %50 = icmp ult i32 %41, -7, !dbg !2882
  br i1 %50, label %51, label %55, !dbg !2882

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2882
  %53 = sext i32 %41 to i64, !dbg !2882
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2882
  br label %59, !dbg !2882

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2882
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2882
  store ptr %58, ptr %4, align 8, !dbg !2882
  br label %59, !dbg !2882

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2882
  %62 = load ptr, ptr %61, align 8, !dbg !2882
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2888
  store ptr %62, ptr %63, align 8, !dbg !2885, !tbaa !758
  %64 = icmp eq ptr %62, null, !dbg !2886
  br i1 %64, label %197, label %65, !dbg !2887

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 3, metadata !2875, metadata !DIExpression()), !dbg !2878
  %66 = icmp sgt i32 %60, -1, !dbg !2882
  br i1 %66, label %74, label %67, !dbg !2882

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2882
  store i32 %68, ptr %7, align 8, !dbg !2882
  %69 = icmp ult i32 %60, -7, !dbg !2882
  br i1 %69, label %70, label %74, !dbg !2882

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2882
  %72 = sext i32 %60 to i64, !dbg !2882
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2882
  br label %78, !dbg !2882

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2882
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2882
  store ptr %77, ptr %4, align 8, !dbg !2882
  br label %78, !dbg !2882

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2882
  %81 = load ptr, ptr %80, align 8, !dbg !2882
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2888
  store ptr %81, ptr %82, align 8, !dbg !2885, !tbaa !758
  %83 = icmp eq ptr %81, null, !dbg !2886
  br i1 %83, label %197, label %84, !dbg !2887

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 4, metadata !2875, metadata !DIExpression()), !dbg !2878
  %85 = icmp sgt i32 %79, -1, !dbg !2882
  br i1 %85, label %93, label %86, !dbg !2882

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2882
  store i32 %87, ptr %7, align 8, !dbg !2882
  %88 = icmp ult i32 %79, -7, !dbg !2882
  br i1 %88, label %89, label %93, !dbg !2882

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2882
  %91 = sext i32 %79 to i64, !dbg !2882
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2882
  br label %97, !dbg !2882

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2882
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2882
  store ptr %96, ptr %4, align 8, !dbg !2882
  br label %97, !dbg !2882

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2882
  %100 = load ptr, ptr %99, align 8, !dbg !2882
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2888
  store ptr %100, ptr %101, align 8, !dbg !2885, !tbaa !758
  %102 = icmp eq ptr %100, null, !dbg !2886
  br i1 %102, label %197, label %103, !dbg !2887

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 5, metadata !2875, metadata !DIExpression()), !dbg !2878
  %104 = icmp sgt i32 %98, -1, !dbg !2882
  br i1 %104, label %112, label %105, !dbg !2882

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2882
  store i32 %106, ptr %7, align 8, !dbg !2882
  %107 = icmp ult i32 %98, -7, !dbg !2882
  br i1 %107, label %108, label %112, !dbg !2882

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2882
  %110 = sext i32 %98 to i64, !dbg !2882
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2882
  br label %116, !dbg !2882

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2882
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2882
  store ptr %115, ptr %4, align 8, !dbg !2882
  br label %116, !dbg !2882

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2882
  %119 = load ptr, ptr %118, align 8, !dbg !2882
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2888
  store ptr %119, ptr %120, align 8, !dbg !2885, !tbaa !758
  %121 = icmp eq ptr %119, null, !dbg !2886
  br i1 %121, label %197, label %122, !dbg !2887

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 6, metadata !2875, metadata !DIExpression()), !dbg !2878
  %123 = icmp sgt i32 %117, -1, !dbg !2882
  br i1 %123, label %131, label %124, !dbg !2882

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2882
  store i32 %125, ptr %7, align 8, !dbg !2882
  %126 = icmp ult i32 %117, -7, !dbg !2882
  br i1 %126, label %127, label %131, !dbg !2882

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2882
  %129 = sext i32 %117 to i64, !dbg !2882
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2882
  br label %135, !dbg !2882

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2882
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2882
  store ptr %134, ptr %4, align 8, !dbg !2882
  br label %135, !dbg !2882

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2882
  %138 = load ptr, ptr %137, align 8, !dbg !2882
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2888
  store ptr %138, ptr %139, align 8, !dbg !2885, !tbaa !758
  %140 = icmp eq ptr %138, null, !dbg !2886
  br i1 %140, label %197, label %141, !dbg !2887

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 7, metadata !2875, metadata !DIExpression()), !dbg !2878
  %142 = icmp sgt i32 %136, -1, !dbg !2882
  br i1 %142, label %150, label %143, !dbg !2882

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2882
  store i32 %144, ptr %7, align 8, !dbg !2882
  %145 = icmp ult i32 %136, -7, !dbg !2882
  br i1 %145, label %146, label %150, !dbg !2882

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2882
  %148 = sext i32 %136 to i64, !dbg !2882
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2882
  br label %154, !dbg !2882

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2882
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2882
  store ptr %153, ptr %4, align 8, !dbg !2882
  br label %154, !dbg !2882

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2882
  %157 = load ptr, ptr %156, align 8, !dbg !2882
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2888
  store ptr %157, ptr %158, align 8, !dbg !2885, !tbaa !758
  %159 = icmp eq ptr %157, null, !dbg !2886
  br i1 %159, label %197, label %160, !dbg !2887

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 8, metadata !2875, metadata !DIExpression()), !dbg !2878
  %161 = icmp sgt i32 %155, -1, !dbg !2882
  br i1 %161, label %169, label %162, !dbg !2882

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2882
  store i32 %163, ptr %7, align 8, !dbg !2882
  %164 = icmp ult i32 %155, -7, !dbg !2882
  br i1 %164, label %165, label %169, !dbg !2882

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2882
  %167 = sext i32 %155 to i64, !dbg !2882
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2882
  br label %173, !dbg !2882

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2882
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2882
  store ptr %172, ptr %4, align 8, !dbg !2882
  br label %173, !dbg !2882

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2882
  %176 = load ptr, ptr %175, align 8, !dbg !2882
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2888
  store ptr %176, ptr %177, align 8, !dbg !2885, !tbaa !758
  %178 = icmp eq ptr %176, null, !dbg !2886
  br i1 %178, label %197, label %179, !dbg !2887

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i64 9, metadata !2875, metadata !DIExpression()), !dbg !2878
  %180 = icmp sgt i32 %174, -1, !dbg !2882
  br i1 %180, label %188, label %181, !dbg !2882

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2882
  store i32 %182, ptr %7, align 8, !dbg !2882
  %183 = icmp ult i32 %174, -7, !dbg !2882
  br i1 %183, label %184, label %188, !dbg !2882

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2882
  %186 = sext i32 %174 to i64, !dbg !2882
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2882
  br label %191, !dbg !2882

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2882
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2882
  store ptr %190, ptr %4, align 8, !dbg !2882
  br label %191, !dbg !2882

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2882
  %193 = load ptr, ptr %192, align 8, !dbg !2882
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2888
  store ptr %193, ptr %194, align 8, !dbg !2885, !tbaa !758
  %195 = icmp eq ptr %193, null, !dbg !2886
  %196 = select i1 %195, i64 9, i64 10, !dbg !2887
  br label %197, !dbg !2887

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2889
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2890
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2891
  ret void, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2892 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2896, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata ptr %1, metadata !2897, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata ptr %2, metadata !2898, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata ptr %3, metadata !2899, metadata !DIExpression()), !dbg !2901
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2902
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2900, metadata !DIExpression()), !dbg !2903
  call void @llvm.va_start(ptr nonnull %5), !dbg !2904
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2905, !tbaa.struct !1086
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2905
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2905
  call void @llvm.va_end(ptr nonnull %5), !dbg !2906
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2907
  ret void, !dbg !2907
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2908 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2909, !tbaa !758
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %1), !dbg !2909
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.17.96, i32 noundef 5) #36, !dbg !2910
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.97) #36, !dbg !2910
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2911
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.98) #36, !dbg !2911
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2912
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2914 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2919, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %1, metadata !2920, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata i64 %2, metadata !2921, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %2, metadata !2927, metadata !DIExpression()), !dbg !2928
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2930
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !2936
  %5 = icmp eq ptr %4, null, !dbg !2938
  br i1 %5, label %6, label %7, !dbg !2940

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2941
  unreachable, !dbg !2941

7:                                                ; preds = %3
  ret ptr %4, !dbg !2942
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2924 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.value(metadata i64 %2, metadata !2927, metadata !DIExpression()), !dbg !2943
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !2945
  %5 = icmp eq ptr %4, null, !dbg !2947
  br i1 %5, label %6, label %7, !dbg !2948

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2949
  unreachable, !dbg !2949

7:                                                ; preds = %3
  ret ptr %4, !dbg !2950
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2951 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2955, metadata !DIExpression()), !dbg !2956
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2957
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !2958
  %3 = icmp eq ptr %2, null, !dbg !2960
  br i1 %3, label %4, label %5, !dbg !2961

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2962
  unreachable, !dbg !2962

5:                                                ; preds = %1
  ret ptr %2, !dbg !2963
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2964 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2965 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()), !dbg !2975
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !2978
  %3 = icmp eq ptr %2, null, !dbg !2980
  br i1 %3, label %4, label %5, !dbg !2981

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2982
  unreachable, !dbg !2982

5:                                                ; preds = %1
  ret ptr %2, !dbg !2983
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2984 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %0, metadata !2955, metadata !DIExpression()), !dbg !2990
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2992
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !2993
  %3 = icmp eq ptr %2, null, !dbg !2995
  br i1 %3, label %4, label %5, !dbg !2996

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2997
  unreachable, !dbg !2997

5:                                                ; preds = %1
  ret ptr %2, !dbg !2998
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2999 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3003, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %1, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata ptr %0, metadata !3006, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3011
  %3 = icmp eq i64 %1, 0, !dbg !3013
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3013
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3014
  call void @llvm.dbg.value(metadata ptr %5, metadata !2931, metadata !DIExpression()), !dbg !3015
  %6 = icmp eq ptr %5, null, !dbg !3017
  br i1 %6, label %7, label %8, !dbg !3018

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3019
  unreachable, !dbg !3019

8:                                                ; preds = %2
  ret ptr %5, !dbg !3020
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3021 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3022 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3026, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3027, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %0, metadata !3006, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3035
  %3 = icmp eq i64 %1, 0, !dbg !3037
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3037
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3038
  call void @llvm.dbg.value(metadata ptr %5, metadata !2931, metadata !DIExpression()), !dbg !3039
  %6 = icmp eq ptr %5, null, !dbg !3041
  br i1 %6, label %7, label %8, !dbg !3042

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3043
  unreachable, !dbg !3043

8:                                                ; preds = %2
  ret ptr %5, !dbg !3044
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3045 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %2, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %2, metadata !3057, metadata !DIExpression()), !dbg !3058
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3060
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !3061
  %5 = icmp eq ptr %4, null, !dbg !3063
  br i1 %5, label %6, label %7, !dbg !3064

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3065
  unreachable, !dbg !3065

7:                                                ; preds = %3
  ret ptr %4, !dbg !3066
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3067 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3071, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.value(metadata ptr null, metadata !2923, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %0, metadata !2926, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !2927, metadata !DIExpression()), !dbg !3074
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3076
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !3077
  %4 = icmp eq ptr %3, null, !dbg !3079
  br i1 %4, label %5, label %6, !dbg !3080

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3081
  unreachable, !dbg !3081

6:                                                ; preds = %2
  ret ptr %3, !dbg !3082
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3083 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr null, metadata !3049, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %0, metadata !3050, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata ptr null, metadata !3053, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %0, metadata !3056, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3092
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3094
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !3095
  %4 = icmp eq ptr %3, null, !dbg !3097
  br i1 %4, label %5, label %6, !dbg !3098

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3099
  unreachable, !dbg !3099

6:                                                ; preds = %2
  ret ptr %3, !dbg !3100
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3101 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr %1, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr %0, metadata !695, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %1, metadata !696, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 1, metadata !697, metadata !DIExpression()), !dbg !3108
  %3 = load i64, ptr %1, align 8, !dbg !3110, !tbaa !2210
  call void @llvm.dbg.value(metadata i64 %3, metadata !698, metadata !DIExpression()), !dbg !3108
  %4 = icmp eq ptr %0, null, !dbg !3111
  br i1 %4, label %5, label %8, !dbg !3113

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3114
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3117
  br label %15, !dbg !3117

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3118
  %10 = add nuw i64 %9, 1, !dbg !3118
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3118
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3118
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3118
  call void @llvm.dbg.value(metadata i64 %13, metadata !698, metadata !DIExpression()), !dbg !3108
  br i1 %12, label %14, label %15, !dbg !3121

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3122
  unreachable, !dbg !3122

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3108
  call void @llvm.dbg.value(metadata i64 %16, metadata !698, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %16, metadata !2926, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 1, metadata !2927, metadata !DIExpression()), !dbg !3123
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %17, metadata !2931, metadata !DIExpression()), !dbg !3126
  %18 = icmp eq ptr %17, null, !dbg !3128
  br i1 %18, label %19, label %20, !dbg !3129

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3130
  unreachable, !dbg !3130

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !695, metadata !DIExpression()), !dbg !3108
  store i64 %16, ptr %1, align 8, !dbg !3131, !tbaa !2210
  ret ptr %17, !dbg !3132
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !695, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %1, metadata !696, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %2, metadata !697, metadata !DIExpression()), !dbg !3133
  %4 = load i64, ptr %1, align 8, !dbg !3134, !tbaa !2210
  call void @llvm.dbg.value(metadata i64 %4, metadata !698, metadata !DIExpression()), !dbg !3133
  %5 = icmp eq ptr %0, null, !dbg !3135
  br i1 %5, label %6, label %13, !dbg !3136

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3137
  br i1 %7, label %8, label %20, !dbg !3138

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %9, metadata !698, metadata !DIExpression()), !dbg !3133
  %10 = icmp ugt i64 %2, 128, !dbg !3141
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %12, metadata !698, metadata !DIExpression()), !dbg !3133
  br label %20, !dbg !3143

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3144
  %15 = add nuw i64 %14, 1, !dbg !3144
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3144
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3144
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3144
  call void @llvm.dbg.value(metadata i64 %18, metadata !698, metadata !DIExpression()), !dbg !3133
  br i1 %17, label %19, label %20, !dbg !3145

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3146
  unreachable, !dbg !3146

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3133
  call void @llvm.dbg.value(metadata i64 %21, metadata !698, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !2923, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %21, metadata !2926, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %2, metadata !2927, metadata !DIExpression()), !dbg !3147
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3149
  call void @llvm.dbg.value(metadata ptr %22, metadata !2931, metadata !DIExpression()), !dbg !3150
  %23 = icmp eq ptr %22, null, !dbg !3152
  br i1 %23, label %24, label %25, !dbg !3153

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3154
  unreachable, !dbg !3154

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !695, metadata !DIExpression()), !dbg !3133
  store i64 %21, ptr %1, align 8, !dbg !3155, !tbaa !2210
  ret ptr %22, !dbg !3156
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !702 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !710, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr %1, metadata !711, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %2, metadata !712, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %3, metadata !713, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %4, metadata !714, metadata !DIExpression()), !dbg !3157
  %6 = load i64, ptr %1, align 8, !dbg !3158, !tbaa !2210
  call void @llvm.dbg.value(metadata i64 %6, metadata !715, metadata !DIExpression()), !dbg !3157
  %7 = ashr i64 %6, 1, !dbg !3159
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3159
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3159
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %10, metadata !716, metadata !DIExpression()), !dbg !3157
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3161
  call void @llvm.dbg.value(metadata i64 %11, metadata !716, metadata !DIExpression()), !dbg !3157
  %12 = icmp sgt i64 %3, -1, !dbg !3162
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3164
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %15, metadata !716, metadata !DIExpression()), !dbg !3157
  %16 = icmp slt i64 %4, 0, !dbg !3165
  br i1 %16, label %17, label %30, !dbg !3165

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3165
  br i1 %18, label %19, label %24, !dbg !3165

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3165
  %21 = udiv i64 9223372036854775807, %20, !dbg !3165
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3165
  br i1 %23, label %46, label %43, !dbg !3165

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3165
  br i1 %25, label %43, label %26, !dbg !3165

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3165
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3165
  %29 = icmp ult i64 %28, %15, !dbg !3165
  br i1 %29, label %46, label %43, !dbg !3165

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3165
  br i1 %31, label %43, label %32, !dbg !3165

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3165
  br i1 %33, label %34, label %40, !dbg !3165

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3165
  br i1 %35, label %43, label %36, !dbg !3165

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3165
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3165
  %39 = icmp ult i64 %38, %4, !dbg !3165
  br i1 %39, label %46, label %43, !dbg !3165

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3165
  br i1 %42, label %46, label %43, !dbg !3165

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3157
  %44 = mul i64 %15, %4, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %44, metadata !717, metadata !DIExpression()), !dbg !3157
  %45 = icmp slt i64 %44, 128, !dbg !3165
  br i1 %45, label %46, label %52, !dbg !3165

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !718, metadata !DIExpression()), !dbg !3157
  %48 = sdiv i64 %47, %4, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %48, metadata !716, metadata !DIExpression()), !dbg !3157
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %51, metadata !717, metadata !DIExpression()), !dbg !3157
  br label %52, !dbg !3170

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3157
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3157
  call void @llvm.dbg.value(metadata i64 %54, metadata !717, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %53, metadata !716, metadata !DIExpression()), !dbg !3157
  %55 = icmp eq ptr %0, null, !dbg !3171
  br i1 %55, label %56, label %57, !dbg !3173

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3174, !tbaa !2210
  br label %57, !dbg !3175

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3176
  %59 = icmp slt i64 %58, %2, !dbg !3178
  br i1 %59, label %60, label %97, !dbg !3179

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3180
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3180
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %63, metadata !716, metadata !DIExpression()), !dbg !3157
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3181
  br i1 %66, label %96, label %67, !dbg !3181

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3182

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3182
  br i1 %69, label %70, label %75, !dbg !3182

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3182
  %72 = udiv i64 9223372036854775807, %71, !dbg !3182
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3182
  br i1 %74, label %96, label %94, !dbg !3182

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3182
  br i1 %76, label %94, label %77, !dbg !3182

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3182
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3182
  %80 = icmp ult i64 %79, %63, !dbg !3182
  br i1 %80, label %96, label %94, !dbg !3182

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3182
  br i1 %82, label %94, label %83, !dbg !3182

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3182
  br i1 %84, label %85, label %91, !dbg !3182

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3182
  br i1 %86, label %94, label %87, !dbg !3182

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3182
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3182
  %90 = icmp ult i64 %89, %4, !dbg !3182
  br i1 %90, label %96, label %94, !dbg !3182

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3182
  br i1 %93, label %96, label %94, !dbg !3182

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3157
  %95 = mul i64 %63, %4, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %95, metadata !717, metadata !DIExpression()), !dbg !3157
  br label %97, !dbg !3183

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3184
  unreachable, !dbg !3184

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3157
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3157
  call void @llvm.dbg.value(metadata i64 %99, metadata !717, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %98, metadata !716, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr %0, metadata !3003, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata i64 %99, metadata !3004, metadata !DIExpression()), !dbg !3185
  call void @llvm.dbg.value(metadata ptr %0, metadata !3006, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata i64 %99, metadata !3010, metadata !DIExpression()), !dbg !3187
  %100 = icmp eq i64 %99, 0, !dbg !3189
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3189
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3190
  call void @llvm.dbg.value(metadata ptr %102, metadata !2931, metadata !DIExpression()), !dbg !3191
  %103 = icmp eq ptr %102, null, !dbg !3193
  br i1 %103, label %104, label %105, !dbg !3194

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3195
  unreachable, !dbg !3195

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !710, metadata !DIExpression()), !dbg !3157
  store i64 %98, ptr %1, align 8, !dbg !3196, !tbaa !2210
  ret ptr %102, !dbg !3197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3198 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64 1, metadata !3205, metadata !DIExpression()), !dbg !3206
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !3209
  %3 = icmp eq ptr %2, null, !dbg !3211
  br i1 %3, label %4, label %5, !dbg !3212

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3213
  unreachable, !dbg !3213

5:                                                ; preds = %1
  ret ptr %2, !dbg !3214
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3215 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3203 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3202, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64 %1, metadata !3205, metadata !DIExpression()), !dbg !3216
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3217
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !3218
  %4 = icmp eq ptr %3, null, !dbg !3220
  br i1 %4, label %5, label %6, !dbg !3221

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3222
  unreachable, !dbg !3222

6:                                                ; preds = %2
  ret ptr %3, !dbg !3223
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3224 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3226, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 1, metadata !3231, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 1, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 1, metadata !3237, metadata !DIExpression()), !dbg !3238
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3240
  call void @llvm.dbg.value(metadata ptr %2, metadata !2931, metadata !DIExpression()), !dbg !3241
  %3 = icmp eq ptr %2, null, !dbg !3243
  br i1 %3, label %4, label %5, !dbg !3244

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3245
  unreachable, !dbg !3245

5:                                                ; preds = %1
  ret ptr %2, !dbg !3246
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3229 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %1, metadata !3231, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3248
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !3251
  %4 = icmp eq ptr %3, null, !dbg !3253
  br i1 %4, label %5, label %6, !dbg !3254

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3255
  unreachable, !dbg !3255

6:                                                ; preds = %2
  ret ptr %3, !dbg !3256
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3257 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3261, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %1, metadata !3262, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2955, metadata !DIExpression()), !dbg !3264
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !3267
  %4 = icmp eq ptr %3, null, !dbg !3269
  br i1 %4, label %5, label %6, !dbg !3270

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3271
  unreachable, !dbg !3271

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3272, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3282
  ret ptr %3, !dbg !3283
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3284 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3288, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !3293
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3295
  call void @llvm.dbg.value(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !3296
  %4 = icmp eq ptr %3, null, !dbg !3298
  br i1 %4, label %5, label %6, !dbg !3299

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3300
  unreachable, !dbg !3300

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3272, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3301
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3303
  ret ptr %3, !dbg !3304
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3305 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3309, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3310, metadata !DIExpression()), !dbg !3312
  %3 = add nsw i64 %1, 1, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %3, metadata !2969, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %3, metadata !2971, metadata !DIExpression()), !dbg !3316
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3318
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !3319
  %5 = icmp eq ptr %4, null, !dbg !3321
  br i1 %5, label %6, label %7, !dbg !3322

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3323
  unreachable, !dbg !3323

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3311, metadata !DIExpression()), !dbg !3312
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3324
  store i8 0, ptr %8, align 1, !dbg !3325, !tbaa !827
  call void @llvm.dbg.value(metadata ptr %4, metadata !3272, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3326
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3328
  ret ptr %4, !dbg !3329
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3330 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3333
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3334
  %3 = add i64 %2, 1, !dbg !3335
  call void @llvm.dbg.value(metadata ptr %0, metadata !3261, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %3, metadata !3262, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i64 %3, metadata !2955, metadata !DIExpression()), !dbg !3338
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3340
  call void @llvm.dbg.value(metadata ptr %4, metadata !2931, metadata !DIExpression()), !dbg !3341
  %5 = icmp eq ptr %4, null, !dbg !3343
  br i1 %5, label %6, label %7, !dbg !3344

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3345
  unreachable, !dbg !3345

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3272, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %3, metadata !3279, metadata !DIExpression()), !dbg !3346
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3348
  ret ptr %4, !dbg !3349
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3350 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3355, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %1, metadata !3352, metadata !DIExpression()), !dbg !3356
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #36, !dbg !3355
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #36, !dbg !3355
  %3 = icmp eq i32 %1, 0, !dbg !3355
  tail call void @llvm.assume(i1 %3), !dbg !3355
  tail call void @abort() #38, !dbg !3357
  unreachable, !dbg !3357
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3358 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3396, metadata !DIExpression()), !dbg !3401
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3402
  call void @llvm.dbg.value(metadata i1 poison, metadata !3397, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3401
  call void @llvm.dbg.value(metadata ptr %0, metadata !3403, metadata !DIExpression()), !dbg !3406
  %3 = load i32, ptr %0, align 8, !dbg !3408, !tbaa !3409
  %4 = and i32 %3, 32, !dbg !3410
  %5 = icmp eq i32 %4, 0, !dbg !3410
  call void @llvm.dbg.value(metadata i1 %5, metadata !3399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3401
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3411
  %7 = icmp eq i32 %6, 0, !dbg !3412
  call void @llvm.dbg.value(metadata i1 %7, metadata !3400, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3401
  br i1 %5, label %8, label %18, !dbg !3413

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3415
  call void @llvm.dbg.value(metadata i1 %9, metadata !3397, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3401
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3416
  %11 = xor i1 %7, true, !dbg !3416
  %12 = sext i1 %11 to i32, !dbg !3416
  br i1 %10, label %21, label %13, !dbg !3416

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3417
  %15 = load i32, ptr %14, align 4, !dbg !3417, !tbaa !818
  %16 = icmp ne i32 %15, 9, !dbg !3418
  %17 = sext i1 %16 to i32, !dbg !3419
  br label %21, !dbg !3419

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3420

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3422
  store i32 0, ptr %20, align 4, !dbg !3424, !tbaa !818
  br label %21, !dbg !3422

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3401
  ret i32 %22, !dbg !3425
}

; Function Attrs: nounwind
declare !dbg !3426 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3430 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3468, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3469, metadata !DIExpression()), !dbg !3472
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3473
  call void @llvm.dbg.value(metadata i32 %2, metadata !3470, metadata !DIExpression()), !dbg !3472
  %3 = icmp slt i32 %2, 0, !dbg !3474
  br i1 %3, label %4, label %6, !dbg !3476

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3477
  br label %24, !dbg !3478

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3479
  %8 = icmp eq i32 %7, 0, !dbg !3479
  br i1 %8, label %13, label %9, !dbg !3481

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3482
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3483
  %12 = icmp eq i64 %11, -1, !dbg !3484
  br i1 %12, label %16, label %13, !dbg !3485

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3486
  %15 = icmp eq i32 %14, 0, !dbg !3486
  br i1 %15, label %16, label %18, !dbg !3487

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3472
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %17, metadata !3471, metadata !DIExpression()), !dbg !3472
  br label %24, !dbg !3489

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3490
  %20 = load i32, ptr %19, align 4, !dbg !3490, !tbaa !818
  call void @llvm.dbg.value(metadata i32 %20, metadata !3469, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.value(metadata i32 0, metadata !3471, metadata !DIExpression()), !dbg !3472
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3488
  call void @llvm.dbg.value(metadata i32 %21, metadata !3471, metadata !DIExpression()), !dbg !3472
  %22 = icmp eq i32 %20, 0, !dbg !3491
  br i1 %22, label %24, label %23, !dbg !3489

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3493, !tbaa !818
  call void @llvm.dbg.value(metadata i32 -1, metadata !3471, metadata !DIExpression()), !dbg !3472
  br label %24, !dbg !3495

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3472
  ret i32 %25, !dbg !3496
}

; Function Attrs: nofree nounwind
declare !dbg !3497 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3498 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3499 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3500 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3503 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3542
  %2 = icmp eq ptr %0, null, !dbg !3543
  br i1 %2, label %6, label %3, !dbg !3545

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3546
  %5 = icmp eq i32 %4, 0, !dbg !3546
  br i1 %5, label %6, label %8, !dbg !3547

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3548
  br label %16, !dbg !3549

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3550, metadata !DIExpression()), !dbg !3555
  %9 = load i32, ptr %0, align 8, !dbg !3557, !tbaa !3409
  %10 = and i32 %9, 256, !dbg !3559
  %11 = icmp eq i32 %10, 0, !dbg !3559
  br i1 %11, label %14, label %12, !dbg !3560

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3561
  br label %14, !dbg !3561

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3562
  br label %16, !dbg !3563

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3542
  ret i32 %17, !dbg !3564
}

; Function Attrs: nofree nounwind
declare !dbg !3565 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3566 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3605, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i64 %1, metadata !3606, metadata !DIExpression()), !dbg !3611
  call void @llvm.dbg.value(metadata i32 %2, metadata !3607, metadata !DIExpression()), !dbg !3611
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3612
  %5 = load ptr, ptr %4, align 8, !dbg !3612, !tbaa !3613
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3614
  %7 = load ptr, ptr %6, align 8, !dbg !3614, !tbaa !3615
  %8 = icmp eq ptr %5, %7, !dbg !3616
  br i1 %8, label %9, label %27, !dbg !3617

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3618
  %11 = load ptr, ptr %10, align 8, !dbg !3618, !tbaa !1201
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3619
  %13 = load ptr, ptr %12, align 8, !dbg !3619, !tbaa !3620
  %14 = icmp eq ptr %11, %13, !dbg !3621
  br i1 %14, label %15, label %27, !dbg !3622

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3623
  %17 = load ptr, ptr %16, align 8, !dbg !3623, !tbaa !3624
  %18 = icmp eq ptr %17, null, !dbg !3625
  br i1 %18, label %19, label %27, !dbg !3626

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3627
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3628
  call void @llvm.dbg.value(metadata i64 %21, metadata !3608, metadata !DIExpression()), !dbg !3629
  %22 = icmp eq i64 %21, -1, !dbg !3630
  br i1 %22, label %29, label %23, !dbg !3632

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3633, !tbaa !3409
  %25 = and i32 %24, -17, !dbg !3633
  store i32 %25, ptr %0, align 8, !dbg !3633, !tbaa !3409
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3634
  store i64 %21, ptr %26, align 8, !dbg !3635, !tbaa !3636
  br label %29, !dbg !3637

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3638
  br label %29, !dbg !3639

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3611
  ret i32 %30, !dbg !3640
}

; Function Attrs: nofree nounwind
declare !dbg !3641 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3644 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3649, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %1, metadata !3650, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata i64 %2, metadata !3651, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %3, metadata !3652, metadata !DIExpression()), !dbg !3654
  %5 = icmp eq ptr %1, null, !dbg !3655
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3657
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3657
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3657
  call void @llvm.dbg.value(metadata i64 %8, metadata !3651, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %7, metadata !3650, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.value(metadata ptr %6, metadata !3649, metadata !DIExpression()), !dbg !3654
  %9 = icmp eq ptr %3, null, !dbg !3658
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3660
  call void @llvm.dbg.value(metadata ptr %10, metadata !3652, metadata !DIExpression()), !dbg !3654
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %11, metadata !3653, metadata !DIExpression()), !dbg !3654
  %12 = icmp ult i64 %11, -3, !dbg !3662
  br i1 %12, label %13, label %17, !dbg !3664

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3665
  %15 = icmp eq i32 %14, 0, !dbg !3665
  br i1 %15, label %16, label %29, !dbg !3666

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3667, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata ptr %10, metadata !3674, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i32 0, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 8, metadata !3678, metadata !DIExpression()), !dbg !3679
  store i64 0, ptr %10, align 1, !dbg !3681
  br label %29, !dbg !3682

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3683
  br i1 %18, label %19, label %20, !dbg !3685

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3686
  unreachable, !dbg !3686

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3687

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3689
  br i1 %23, label %29, label %24, !dbg !3690

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3691
  br i1 %25, label %29, label %26, !dbg !3694

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3695, !tbaa !827
  %28 = zext i8 %27 to i32, !dbg !3696
  store i32 %28, ptr %6, align 4, !dbg !3697, !tbaa !818
  br label %29, !dbg !3698

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3654
  ret i64 %30, !dbg !3699
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3700 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3706 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %1, metadata !3709, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()), !dbg !3712
  %4 = icmp eq i64 %2, 0, !dbg !3713
  br i1 %4, label %8, label %5, !dbg !3713

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3713
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3713
  br i1 %7, label %13, label %8, !dbg !3713

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3711, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3712
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3711, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3712
  %9 = mul i64 %2, %1, !dbg !3713
  call void @llvm.dbg.value(metadata i64 %9, metadata !3711, metadata !DIExpression()), !dbg !3712
  call void @llvm.dbg.value(metadata ptr %0, metadata !3715, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i64 %9, metadata !3718, metadata !DIExpression()), !dbg !3719
  %10 = icmp eq i64 %9, 0, !dbg !3721
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3721
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3722
  br label %15, !dbg !3723

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3711, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3712
  %14 = tail call ptr @__errno_location() #39, !dbg !3724
  store i32 12, ptr %14, align 4, !dbg !3726, !tbaa !818
  br label %15, !dbg !3727

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3712
  ret ptr %16, !dbg !3728
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3729 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3733, metadata !DIExpression()), !dbg !3738
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3739
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3734, metadata !DIExpression()), !dbg !3740
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3741
  %4 = icmp eq i32 %3, 0, !dbg !3741
  br i1 %4, label %5, label %12, !dbg !3743

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3744, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr @.str.127, metadata !3747, metadata !DIExpression()), !dbg !3748
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.127, i64 2), !dbg !3751
  %7 = icmp eq i32 %6, 0, !dbg !3752
  br i1 %7, label %11, label %8, !dbg !3753

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3744, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr @.str.1.128, metadata !3747, metadata !DIExpression()), !dbg !3754
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.128, i64 6), !dbg !3756
  %10 = icmp eq i32 %9, 0, !dbg !3757
  br i1 %10, label %11, label %12, !dbg !3758

11:                                               ; preds = %8, %5
  br label %12, !dbg !3759

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3738
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3760
  ret i1 %13, !dbg !3760
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3761 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3765, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata ptr %1, metadata !3766, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %2, metadata !3767, metadata !DIExpression()), !dbg !3768
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3769
  ret i32 %4, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3775, metadata !DIExpression()), !dbg !3776
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3777
  ret ptr %2, !dbg !3778
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3779 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3781, metadata !DIExpression()), !dbg !3783
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3784
  call void @llvm.dbg.value(metadata ptr %2, metadata !3782, metadata !DIExpression()), !dbg !3783
  ret ptr %2, !dbg !3785
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3788, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %1, metadata !3789, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i64 %2, metadata !3790, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i32 %0, metadata !3781, metadata !DIExpression()), !dbg !3796
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3798
  call void @llvm.dbg.value(metadata ptr %4, metadata !3782, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata ptr %4, metadata !3791, metadata !DIExpression()), !dbg !3795
  %5 = icmp eq ptr %4, null, !dbg !3799
  br i1 %5, label %6, label %9, !dbg !3800

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3801
  br i1 %7, label %19, label %8, !dbg !3804

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3805, !tbaa !827
  br label %19, !dbg !3806

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %10, metadata !3792, metadata !DIExpression()), !dbg !3808
  %11 = icmp ult i64 %10, %2, !dbg !3809
  br i1 %11, label %12, label %14, !dbg !3811

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3812
  call void @llvm.dbg.value(metadata ptr %1, metadata !3814, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %4, metadata !3817, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i64 %13, metadata !3818, metadata !DIExpression()), !dbg !3819
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3821
  br label %19, !dbg !3822

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3823
  br i1 %15, label %19, label %16, !dbg !3826

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3827
  call void @llvm.dbg.value(metadata ptr %1, metadata !3814, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3817, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %17, metadata !3818, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3831
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3832
  store i8 0, ptr %18, align 1, !dbg !3833, !tbaa !827
  br label %19, !dbg !3834

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3835
  ret i32 %20, !dbg !3836
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

!llvm.dbg.cu = !{!74, !311, !315, !330, !643, !677, !390, !410, !424, !475, !679, !635, !686, !720, !722, !724, !726, !728, !659, !730, !733, !735, !737}
!llvm.ident = !{!739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739, !739}
!llvm.module.flags = !{!740, !741, !742, !743, !744, !745, !746}

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
!74 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !75, retainedTypes: !106, globals: !114, splitDebugInlining: false, nameTableKind: None)
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
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 46, baseType: !112)
!111 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!311 = distinct !DICompileUnit(language: DW_LANG_C11, file: !308, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !312, splitDebugInlining: false, nameTableKind: None)
!312 = !{!306, !309}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "file_name", scope: !315, file: !316, line: 45, type: !72, isLocal: true, isDefinition: true)
!315 = distinct !DICompileUnit(language: DW_LANG_C11, file: !316, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !317, splitDebugInlining: false, nameTableKind: None)
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
!329 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !330, file: !331, line: 66, type: !382, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !331, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !332, globals: !333, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!332 = !{!107, !113}
!333 = !{!334, !336, !361, !363, !365, !367, !328, !369, !371, !373, !375, !380}
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !331, line: 272, type: !117, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "old_file_name", scope: !338, file: !331, line: 304, type: !72, isLocal: true, isDefinition: true)
!338 = distinct !DISubprogram(name: "verror_at_line", scope: !331, file: !331, line: 298, type: !339, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !354)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !108, !108, !72, !78, !72, !341}
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !343)
!342 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 14, baseType: !345)
!344 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !346, baseType: !347)
!346 = !DIFile(filename: "lib/error.c", directory: "/src")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !348)
!348 = !{!349, !350, !351, !352, !353}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !347, file: !346, baseType: !107, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !347, file: !346, baseType: !107, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !347, file: !346, baseType: !107, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !347, file: !346, baseType: !108, size: 32, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !347, file: !346, baseType: !108, size: 32, offset: 224)
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DILocalVariable(name: "status", arg: 1, scope: !338, file: !331, line: 298, type: !108)
!356 = !DILocalVariable(name: "errnum", arg: 2, scope: !338, file: !331, line: 298, type: !108)
!357 = !DILocalVariable(name: "file_name", arg: 3, scope: !338, file: !331, line: 298, type: !72)
!358 = !DILocalVariable(name: "line_number", arg: 4, scope: !338, file: !331, line: 298, type: !78)
!359 = !DILocalVariable(name: "message", arg: 5, scope: !338, file: !331, line: 298, type: !72)
!360 = !DILocalVariable(name: "args", arg: 6, scope: !338, file: !331, line: 298, type: !341)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "old_line_number", scope: !338, file: !331, line: 305, type: !78, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !331, line: 338, type: !124, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !156, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !134, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "error_message_count", scope: !330, file: !331, line: 69, type: !78, isLocal: false, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !330, file: !331, line: 295, type: !108, isLocal: false, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !19, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 21)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !331, line: 214, type: !117, isLocal: true, isDefinition: true)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null}
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !387, line: 60, type: !134, isLocal: true, isDefinition: true)
!387 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "long_options", scope: !390, file: !387, line: 34, type: !398, isLocal: true, isDefinition: true)
!390 = distinct !DICompileUnit(language: DW_LANG_C11, file: !387, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !391, splitDebugInlining: false, nameTableKind: None)
!391 = !{!385, !392, !394, !396, !388}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !387, line: 112, type: !34, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !387, line: 36, type: !117, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !387, line: 37, type: !156, isLocal: true, isDefinition: true)
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
!410 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, globals: !413, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!412 = !{!255}
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
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
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
!474 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !475, file: !451, line: 76, type: !547, isLocal: false, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !451, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !482, globals: !483, splitDebugInlining: false, nameTableKind: None)
!476 = !{!76, !477, !91}
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !77, line: 254, baseType: !78, size: 32, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!480 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!481 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!482 = !{!108, !109, !110}
!483 = !{!449, !452, !454, !459, !461, !463, !465, !467, !469, !471, !473, !484, !488, !498, !500, !505, !507, !509, !511, !513, !536, !543, !545}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !475, file: !451, line: 92, type: !486, isLocal: false, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 320, elements: !40)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !475, file: !451, line: 1040, type: !490, isLocal: false, isDefinition: true)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !451, line: 56, size: 448, elements: !491)
!491 = !{!492, !493, !494, !496, !497}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !490, file: !451, line: 59, baseType: !76, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !451, line: 62, baseType: !108, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !490, file: !451, line: 66, baseType: !495, size: 256, offset: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !157)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !490, file: !451, line: 69, baseType: !72, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !490, file: !451, line: 72, baseType: !72, size: 64, offset: 384)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !475, file: !451, line: 107, type: !490, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "slot0", scope: !475, file: !451, line: 831, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 256)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !451, line: 321, type: !134, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !451, line: 357, type: !134, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !451, line: 358, type: !134, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !451, line: 199, type: !19, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "quote", scope: !515, file: !451, line: 228, type: !534, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "gettext_quote", scope: !451, file: !451, line: 197, type: !516, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!72, !72, !76}
!518 = !{!519, !520, !521, !522, !523}
!519 = !DILocalVariable(name: "msgid", arg: 1, scope: !515, file: !451, line: 197, type: !72)
!520 = !DILocalVariable(name: "s", arg: 2, scope: !515, file: !451, line: 197, type: !76)
!521 = !DILocalVariable(name: "translation", scope: !515, file: !451, line: 199, type: !72)
!522 = !DILocalVariable(name: "w", scope: !515, file: !451, line: 229, type: !431)
!523 = !DILocalVariable(name: "mbs", scope: !515, file: !451, line: 230, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !526, file: !439, line: 15, baseType: !108, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !526, file: !439, line: 20, baseType: !530, size: 32, offset: 32)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !439, line: 16, size: 32, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !530, file: !439, line: 18, baseType: !78, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !530, file: !439, line: 19, baseType: !124, size: 32)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !535)
!535 = !{!136, !126}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "slotvec", scope: !475, file: !451, line: 834, type: !538, isLocal: true, isDefinition: true)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !451, line: 823, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !539, file: !451, line: 825, baseType: !110, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !539, file: !451, line: 826, baseType: !255, size: 64, offset: 64)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "nslots", scope: !475, file: !451, line: 832, type: !108, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "slotvec0", scope: !475, file: !451, line: 833, type: !539, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 704, elements: !549)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!549 = !{!550}
!550 = !DISubrange(count: 11)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !553, line: 67, type: !224, isLocal: true, isDefinition: true)
!553 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !553, line: 69, type: !19, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !553, line: 83, type: !19, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !553, line: 83, type: !124, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !553, line: 85, type: !134, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !553, line: 88, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 171)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !553, line: 88, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 34)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !553, line: 105, type: !56, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !553, line: 109, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 23)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !553, line: 113, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 28)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !553, line: 120, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 32)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !553, line: 127, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 36)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(scope: null, file: !553, line: 134, type: !175, isLocal: true, isDefinition: true)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !553, line: 142, type: !598, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 44)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !553, line: 150, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 48)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !553, line: 159, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 52)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !553, line: 170, type: !613, isLocal: true, isDefinition: true)
!613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !614)
!614 = !{!615}
!615 = !DISubrange(count: 60)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !553, line: 248, type: !297, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !553, line: 248, type: !200, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !297, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !49, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !175, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !553, line: 259, type: !3, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !553, line: 259, type: !630, isLocal: true, isDefinition: true)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 29)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !635, file: !636, line: 26, type: !638, isLocal: false, isDefinition: true)
!635 = distinct !DICompileUnit(language: DW_LANG_C11, file: !636, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !637, splitDebugInlining: false, nameTableKind: None)
!636 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!637 = !{!633}
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !639)
!639 = !{!640}
!640 = !DISubrange(count: 47)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "exit_failure", scope: !643, file: !644, line: 24, type: !646, isLocal: false, isDefinition: true)
!643 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !645, splitDebugInlining: false, nameTableKind: None)
!644 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!645 = !{!641}
!646 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !649, line: 34, type: !143, isLocal: true, isDefinition: true)
!649 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !649, line: 34, type: !19, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !649, line: 34, type: !61, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !656, line: 108, type: !34, isLocal: true, isDefinition: true)
!656 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "internal_state", scope: !659, file: !656, line: 97, type: !662, isLocal: true, isDefinition: true)
!659 = distinct !DICompileUnit(language: DW_LANG_C11, file: !656, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !660, globals: !661, splitDebugInlining: false, nameTableKind: None)
!660 = !{!107, !110, !113}
!661 = !{!654, !657}
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !664, file: !439, line: 15, baseType: !108, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !664, file: !439, line: 20, baseType: !668, size: 32, offset: 32)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !664, file: !439, line: 16, size: 32, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !668, file: !439, line: 18, baseType: !78, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !668, file: !439, line: 19, baseType: !124, size: 32)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !674, line: 35, type: !134, isLocal: true, isDefinition: true)
!674 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !674, line: 35, type: !129, isLocal: true, isDefinition: true)
!677 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!678 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !553, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !680, retainedTypes: !684, globals: !685, splitDebugInlining: false, nameTableKind: None)
!680 = !{!681}
!681 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !553, line: 40, baseType: !78, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!684 = !{!107}
!685 = !{!551, !554, !556, !558, !560, !562, !567, !572, !574, !579, !584, !589, !594, !596, !601, !606, !611, !616, !618, !620, !622, !624, !626, !628}
!686 = distinct !DICompileUnit(language: DW_LANG_C11, file: !687, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !688, retainedTypes: !719, splitDebugInlining: false, nameTableKind: None)
!687 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!688 = !{!689, !701}
!689 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !690, file: !687, line: 188, baseType: !78, size: 32, elements: !699)
!690 = distinct !DISubprogram(name: "x2nrealloc", scope: !687, file: !687, line: 176, type: !691, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !694)
!691 = !DISubroutineType(types: !692)
!692 = !{!107, !107, !693, !110}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!694 = !{!695, !696, !697, !698}
!695 = !DILocalVariable(name: "p", arg: 1, scope: !690, file: !687, line: 176, type: !107)
!696 = !DILocalVariable(name: "pn", arg: 2, scope: !690, file: !687, line: 176, type: !693)
!697 = !DILocalVariable(name: "s", arg: 3, scope: !690, file: !687, line: 176, type: !110)
!698 = !DILocalVariable(name: "n", scope: !690, file: !687, line: 178, type: !110)
!699 = !{!700}
!700 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!701 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !702, file: !687, line: 228, baseType: !78, size: 32, elements: !699)
!702 = distinct !DISubprogram(name: "xpalloc", scope: !687, file: !687, line: 223, type: !703, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !709)
!703 = !DISubroutineType(types: !704)
!704 = !{!107, !107, !705, !706, !708, !706}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !707, line: 130, baseType: !708)
!707 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !111, line: 35, baseType: !276)
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718}
!710 = !DILocalVariable(name: "pa", arg: 1, scope: !702, file: !687, line: 223, type: !107)
!711 = !DILocalVariable(name: "pn", arg: 2, scope: !702, file: !687, line: 223, type: !705)
!712 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !702, file: !687, line: 223, type: !706)
!713 = !DILocalVariable(name: "n_max", arg: 4, scope: !702, file: !687, line: 223, type: !708)
!714 = !DILocalVariable(name: "s", arg: 5, scope: !702, file: !687, line: 223, type: !706)
!715 = !DILocalVariable(name: "n0", scope: !702, file: !687, line: 230, type: !706)
!716 = !DILocalVariable(name: "n", scope: !702, file: !687, line: 237, type: !706)
!717 = !DILocalVariable(name: "nbytes", scope: !702, file: !687, line: 248, type: !706)
!718 = !DILocalVariable(name: "adjusted_nbytes", scope: !702, file: !687, line: 252, type: !706)
!719 = !{!255, !107, !234, !276, !112}
!720 = distinct !DICompileUnit(language: DW_LANG_C11, file: !649, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !721, splitDebugInlining: false, nameTableKind: None)
!721 = !{!647, !650, !652}
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !684, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !684, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !732, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!732 = !{!234, !112, !107}
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !674, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !734, splitDebugInlining: false, nameTableKind: None)
!734 = !{!672, !675}
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !684, splitDebugInlining: false, nameTableKind: None)
!738 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!739 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!740 = !{i32 7, !"Dwarf Version", i32 5}
!741 = !{i32 2, !"Debug Info Version", i32 3}
!742 = !{i32 1, !"wchar_size", i32 4}
!743 = !{i32 8, !"PIC Level", i32 2}
!744 = !{i32 7, !"PIE Level", i32 2}
!745 = !{i32 7, !"uwtable", i32 2}
!746 = !{i32 7, !"frame-pointer", i32 1}
!747 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !748, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !108}
!750 = !{!751}
!751 = !DILocalVariable(name: "status", arg: 1, scope: !747, file: !2, line: 37, type: !108)
!752 = !DILocation(line: 0, scope: !747)
!753 = !DILocation(line: 39, column: 14, scope: !754)
!754 = distinct !DILexicalBlock(scope: !747, file: !2, line: 39, column: 7)
!755 = !DILocation(line: 39, column: 7, scope: !747)
!756 = !DILocation(line: 40, column: 5, scope: !757)
!757 = distinct !DILexicalBlock(scope: !754, file: !2, line: 40, column: 5)
!758 = !{!759, !759, i64 0}
!759 = !{!"any pointer", !760, i64 0}
!760 = !{!"omnipotent char", !761, i64 0}
!761 = !{!"Simple C/C++ TBAA"}
!762 = !DILocation(line: 43, column: 7, scope: !763)
!763 = distinct !DILexicalBlock(scope: !754, file: !2, line: 42, column: 5)
!764 = !DILocation(line: 46, column: 7, scope: !763)
!765 = !DILocation(line: 48, column: 7, scope: !763)
!766 = !DILocation(line: 49, column: 7, scope: !763)
!767 = !DILocalVariable(name: "program", arg: 1, scope: !768, file: !69, line: 836, type: !72)
!768 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !769, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !72}
!771 = !{!767, !772, !779, !780, !782, !783}
!772 = !DILocalVariable(name: "infomap", scope: !768, file: !69, line: 838, type: !773)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !774, size: 896, elements: !20)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !768, file: !69, line: 838, size: 128, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !775, file: !69, line: 838, baseType: !72, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !775, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!779 = !DILocalVariable(name: "node", scope: !768, file: !69, line: 848, type: !72)
!780 = !DILocalVariable(name: "map_prog", scope: !768, file: !69, line: 849, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!782 = !DILocalVariable(name: "lc_messages", scope: !768, file: !69, line: 861, type: !72)
!783 = !DILocalVariable(name: "url_program", scope: !768, file: !69, line: 874, type: !72)
!784 = !DILocation(line: 0, scope: !768, inlinedAt: !785)
!785 = distinct !DILocation(line: 50, column: 7, scope: !763)
!786 = !DILocation(line: 857, column: 3, scope: !768, inlinedAt: !785)
!787 = !DILocation(line: 861, column: 29, scope: !768, inlinedAt: !785)
!788 = !DILocation(line: 862, column: 7, scope: !789, inlinedAt: !785)
!789 = distinct !DILexicalBlock(scope: !768, file: !69, line: 862, column: 7)
!790 = !DILocation(line: 862, column: 19, scope: !789, inlinedAt: !785)
!791 = !DILocation(line: 862, column: 22, scope: !789, inlinedAt: !785)
!792 = !DILocation(line: 862, column: 7, scope: !768, inlinedAt: !785)
!793 = !DILocation(line: 868, column: 7, scope: !794, inlinedAt: !785)
!794 = distinct !DILexicalBlock(scope: !789, file: !69, line: 863, column: 5)
!795 = !DILocation(line: 870, column: 5, scope: !794, inlinedAt: !785)
!796 = !DILocation(line: 875, column: 3, scope: !768, inlinedAt: !785)
!797 = !DILocation(line: 877, column: 3, scope: !768, inlinedAt: !785)
!798 = !DILocation(line: 52, column: 3, scope: !747)
!799 = !DISubprogram(name: "dcgettext", scope: !800, file: !800, line: 51, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!800 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!801 = !DISubroutineType(types: !802)
!802 = !{!255, !72, !72, !108}
!803 = !{}
!804 = !DISubprogram(name: "__fprintf_chk", scope: !805, file: !805, line: 93, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!805 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!806 = !DISubroutineType(types: !807)
!807 = !{!108, !808, !108, !809, null}
!808 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!809 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!810 = !DISubprogram(name: "__printf_chk", scope: !805, file: !805, line: 95, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!811 = !DISubroutineType(types: !812)
!812 = !{!108, !108, !809, null}
!813 = !DISubprogram(name: "fputs_unlocked", scope: !342, file: !342, line: 691, type: !814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!814 = !DISubroutineType(types: !815)
!815 = !{!108, !809, !808}
!816 = !DILocation(line: 0, scope: !68)
!817 = !DILocation(line: 581, column: 7, scope: !232)
!818 = !{!819, !819, i64 0}
!819 = !{!"int", !760, i64 0}
!820 = !DILocation(line: 581, column: 19, scope: !232)
!821 = !DILocation(line: 581, column: 7, scope: !68)
!822 = !DILocation(line: 585, column: 26, scope: !231)
!823 = !DILocation(line: 0, scope: !231)
!824 = !DILocation(line: 586, column: 23, scope: !231)
!825 = !DILocation(line: 586, column: 28, scope: !231)
!826 = !DILocation(line: 586, column: 32, scope: !231)
!827 = !{!760, !760, i64 0}
!828 = !DILocation(line: 586, column: 38, scope: !231)
!829 = !DILocalVariable(name: "__s1", arg: 1, scope: !830, file: !831, line: 1359, type: !72)
!830 = distinct !DISubprogram(name: "streq", scope: !831, file: !831, line: 1359, type: !832, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !834)
!831 = !DIFile(filename: "./lib/string.h", directory: "/src")
!832 = !DISubroutineType(types: !833)
!833 = !{!234, !72, !72}
!834 = !{!829, !835}
!835 = !DILocalVariable(name: "__s2", arg: 2, scope: !830, file: !831, line: 1359, type: !72)
!836 = !DILocation(line: 0, scope: !830, inlinedAt: !837)
!837 = distinct !DILocation(line: 586, column: 41, scope: !231)
!838 = !DILocation(line: 1361, column: 11, scope: !830, inlinedAt: !837)
!839 = !DILocation(line: 1361, column: 10, scope: !830, inlinedAt: !837)
!840 = !DILocation(line: 586, column: 19, scope: !231)
!841 = !DILocation(line: 587, column: 5, scope: !231)
!842 = !DILocation(line: 588, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!844 = !DILocation(line: 588, column: 7, scope: !68)
!845 = !DILocation(line: 590, column: 7, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !69, line: 589, column: 5)
!847 = !DILocation(line: 591, column: 7, scope: !846)
!848 = !DILocation(line: 595, column: 37, scope: !68)
!849 = !DILocation(line: 595, column: 35, scope: !68)
!850 = !DILocation(line: 596, column: 29, scope: !68)
!851 = !DILocation(line: 597, column: 8, scope: !240)
!852 = !DILocation(line: 597, column: 7, scope: !68)
!853 = !DILocation(line: 604, column: 24, scope: !239)
!854 = !DILocation(line: 604, column: 12, scope: !240)
!855 = !DILocation(line: 0, scope: !238)
!856 = !DILocation(line: 610, column: 16, scope: !238)
!857 = !DILocation(line: 610, column: 7, scope: !238)
!858 = !DILocation(line: 611, column: 21, scope: !238)
!859 = !{!860, !860, i64 0}
!860 = !{!"short", !760, i64 0}
!861 = !DILocation(line: 611, column: 19, scope: !238)
!862 = !DILocation(line: 611, column: 16, scope: !238)
!863 = !DILocation(line: 610, column: 30, scope: !238)
!864 = distinct !{!864, !857, !858, !865}
!865 = !{!"llvm.loop.mustprogress"}
!866 = !DILocation(line: 612, column: 18, scope: !867)
!867 = distinct !DILexicalBlock(scope: !238, file: !69, line: 612, column: 11)
!868 = !DILocation(line: 612, column: 11, scope: !238)
!869 = !DILocation(line: 620, column: 23, scope: !68)
!870 = !DILocation(line: 625, column: 39, scope: !68)
!871 = !DILocation(line: 626, column: 3, scope: !68)
!872 = !DILocation(line: 626, column: 10, scope: !68)
!873 = !DILocation(line: 626, column: 21, scope: !68)
!874 = !DILocation(line: 628, column: 44, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !69, line: 628, column: 11)
!876 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!877 = !DILocation(line: 628, column: 32, scope: !875)
!878 = !DILocation(line: 628, column: 49, scope: !875)
!879 = !DILocation(line: 628, column: 11, scope: !876)
!880 = !DILocation(line: 630, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !876, file: !69, line: 630, column: 11)
!882 = !DILocation(line: 630, column: 11, scope: !876)
!883 = !DILocation(line: 632, column: 26, scope: !884)
!884 = distinct !DILexicalBlock(scope: !885, file: !69, line: 632, column: 15)
!885 = distinct !DILexicalBlock(scope: !881, file: !69, line: 631, column: 9)
!886 = !DILocation(line: 632, column: 34, scope: !884)
!887 = !DILocation(line: 632, column: 37, scope: !884)
!888 = !DILocation(line: 632, column: 15, scope: !885)
!889 = !DILocation(line: 640, column: 16, scope: !876)
!890 = distinct !{!890, !871, !891, !865}
!891 = !DILocation(line: 641, column: 5, scope: !68)
!892 = !DILocation(line: 644, column: 3, scope: !68)
!893 = !DILocation(line: 0, scope: !830, inlinedAt: !894)
!894 = distinct !DILocation(line: 648, column: 31, scope: !68)
!895 = !DILocation(line: 0, scope: !830, inlinedAt: !896)
!896 = distinct !DILocation(line: 649, column: 31, scope: !68)
!897 = !DILocation(line: 0, scope: !830, inlinedAt: !898)
!898 = distinct !DILocation(line: 650, column: 31, scope: !68)
!899 = !DILocation(line: 0, scope: !830, inlinedAt: !900)
!900 = distinct !DILocation(line: 651, column: 31, scope: !68)
!901 = !DILocation(line: 0, scope: !830, inlinedAt: !902)
!902 = distinct !DILocation(line: 652, column: 31, scope: !68)
!903 = !DILocation(line: 0, scope: !830, inlinedAt: !904)
!904 = distinct !DILocation(line: 653, column: 31, scope: !68)
!905 = !DILocation(line: 0, scope: !830, inlinedAt: !906)
!906 = distinct !DILocation(line: 654, column: 31, scope: !68)
!907 = !DILocation(line: 0, scope: !830, inlinedAt: !908)
!908 = distinct !DILocation(line: 655, column: 31, scope: !68)
!909 = !DILocation(line: 0, scope: !830, inlinedAt: !910)
!910 = distinct !DILocation(line: 656, column: 31, scope: !68)
!911 = !DILocation(line: 0, scope: !830, inlinedAt: !912)
!912 = distinct !DILocation(line: 657, column: 31, scope: !68)
!913 = !DILocation(line: 663, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!915 = !DILocation(line: 664, column: 7, scope: !914)
!916 = !DILocation(line: 664, column: 10, scope: !914)
!917 = !DILocation(line: 663, column: 7, scope: !68)
!918 = !DILocation(line: 669, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !69, line: 665, column: 5)
!920 = !DILocation(line: 671, column: 5, scope: !919)
!921 = !DILocation(line: 676, column: 7, scope: !922)
!922 = distinct !DILexicalBlock(scope: !914, file: !69, line: 673, column: 5)
!923 = !DILocation(line: 679, column: 3, scope: !68)
!924 = !DILocation(line: 683, column: 3, scope: !68)
!925 = !DILocation(line: 686, column: 3, scope: !68)
!926 = !DILocation(line: 688, column: 3, scope: !68)
!927 = !DILocation(line: 691, column: 3, scope: !68)
!928 = !DILocation(line: 695, column: 3, scope: !68)
!929 = !DILocation(line: 696, column: 1, scope: !68)
!930 = !DISubprogram(name: "setlocale", scope: !931, file: !931, line: 122, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!931 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!932 = !DISubroutineType(types: !933)
!933 = !{!255, !108, !72}
!934 = !DISubprogram(name: "strncmp", scope: !935, file: !935, line: 159, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!935 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!936 = !DISubroutineType(types: !937)
!937 = !{!108, !72, !72, !110}
!938 = !DISubprogram(name: "exit", scope: !939, file: !939, line: 624, type: !748, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !803)
!939 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!940 = !DISubprogram(name: "getenv", scope: !939, file: !939, line: 641, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!941 = !DISubroutineType(types: !942)
!942 = !{!255, !72}
!943 = !DISubprogram(name: "strcmp", scope: !935, file: !935, line: 156, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!944 = !DISubroutineType(types: !945)
!945 = !{!108, !72, !72}
!946 = !DISubprogram(name: "strspn", scope: !935, file: !935, line: 297, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!947 = !DISubroutineType(types: !948)
!948 = !{!112, !72, !72}
!949 = !DISubprogram(name: "strchr", scope: !935, file: !935, line: 246, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!950 = !DISubroutineType(types: !951)
!951 = !{!255, !72, !108}
!952 = !DISubprogram(name: "__ctype_b_loc", scope: !92, file: !92, line: 79, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!953 = !DISubroutineType(types: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!958 = !DISubprogram(name: "strcspn", scope: !935, file: !935, line: 293, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!959 = !DISubprogram(name: "fwrite_unlocked", scope: !342, file: !342, line: 704, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!960 = !DISubroutineType(types: !961)
!961 = !{!110, !962, !110, !110, !808}
!962 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!965 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 56, type: !966, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !969)
!966 = !DISubroutineType(types: !967)
!967 = !{!108, !108, !968}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!969 = !{!970, !971}
!970 = !DILocalVariable(name: "argc", arg: 1, scope: !965, file: !2, line: 56, type: !108)
!971 = !DILocalVariable(name: "argv", arg: 2, scope: !965, file: !2, line: 56, type: !968)
!972 = !DILocation(line: 0, scope: !965)
!973 = !DILocation(line: 59, column: 21, scope: !965)
!974 = !DILocation(line: 59, column: 3, scope: !965)
!975 = !DILocation(line: 60, column: 3, scope: !965)
!976 = !DILocation(line: 61, column: 3, scope: !965)
!977 = !DILocation(line: 62, column: 3, scope: !965)
!978 = !DILocation(line: 64, column: 3, scope: !965)
!979 = !DILocation(line: 67, column: 36, scope: !965)
!980 = !DILocation(line: 67, column: 58, scope: !965)
!981 = !DILocation(line: 66, column: 3, scope: !965)
!982 = !DILocation(line: 70, column: 14, scope: !983)
!983 = distinct !DILexicalBlock(scope: !965, file: !2, line: 70, column: 7)
!984 = !DILocation(line: 70, column: 12, scope: !983)
!985 = !DILocation(line: 70, column: 7, scope: !965)
!986 = !DILocation(line: 72, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !2, line: 71, column: 5)
!988 = !DILocation(line: 73, column: 7, scope: !987)
!989 = !DILocation(line: 70, column: 21, scope: !983)
!990 = !DILocation(line: 76, column: 18, scope: !991)
!991 = distinct !DILexicalBlock(scope: !965, file: !2, line: 76, column: 7)
!992 = !DILocation(line: 76, column: 7, scope: !965)
!993 = !DILocation(line: 78, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !991, file: !2, line: 77, column: 5)
!995 = !DILocation(line: 79, column: 7, scope: !994)
!996 = !DILocation(line: 82, column: 15, scope: !997)
!997 = distinct !DILexicalBlock(scope: !965, file: !2, line: 82, column: 7)
!998 = !DILocation(line: 82, column: 7, scope: !997)
!999 = !DILocation(line: 82, column: 29, scope: !997)
!1000 = !DILocation(line: 82, column: 7, scope: !965)
!1001 = !DILocation(line: 83, column: 5, scope: !997)
!1002 = !DILocation(line: 85, column: 3, scope: !965)
!1003 = !DISubprogram(name: "bindtextdomain", scope: !800, file: !800, line: 86, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!255, !72, !72}
!1006 = !DISubprogram(name: "textdomain", scope: !800, file: !800, line: 82, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1007 = !DISubprogram(name: "atexit", scope: !939, file: !939, line: 602, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!108, !382}
!1010 = !DISubprogram(name: "unlink", scope: !1011, file: !1011, line: 858, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1011 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!108, !72}
!1014 = !DISubprogram(name: "__errno_location", scope: !1015, file: !1015, line: 37, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1015 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!406}
!1018 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !316, file: !316, line: 50, type: !769, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1019)
!1019 = !{!1020}
!1020 = !DILocalVariable(name: "file", arg: 1, scope: !1018, file: !316, line: 50, type: !72)
!1021 = !DILocation(line: 0, scope: !1018)
!1022 = !DILocation(line: 52, column: 13, scope: !1018)
!1023 = !DILocation(line: 53, column: 1, scope: !1018)
!1024 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !316, file: !316, line: 87, type: !1025, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !234}
!1027 = !{!1028}
!1028 = !DILocalVariable(name: "ignore", arg: 1, scope: !1024, file: !316, line: 87, type: !234)
!1029 = !DILocation(line: 0, scope: !1024)
!1030 = !DILocation(line: 89, column: 16, scope: !1024)
!1031 = !{!1032, !1032, i64 0}
!1032 = !{!"_Bool", !760, i64 0}
!1033 = !DILocation(line: 90, column: 1, scope: !1024)
!1034 = distinct !DISubprogram(name: "close_stdout", scope: !316, file: !316, line: 116, type: !383, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1035)
!1035 = !{!1036}
!1036 = !DILocalVariable(name: "write_error", scope: !1037, file: !316, line: 121, type: !72)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !316, line: 120, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !316, line: 118, column: 7)
!1039 = !DILocation(line: 118, column: 21, scope: !1038)
!1040 = !DILocation(line: 118, column: 7, scope: !1038)
!1041 = !DILocation(line: 118, column: 29, scope: !1038)
!1042 = !DILocation(line: 119, column: 7, scope: !1038)
!1043 = !DILocation(line: 119, column: 12, scope: !1038)
!1044 = !{i8 0, i8 2}
!1045 = !DILocation(line: 119, column: 25, scope: !1038)
!1046 = !DILocation(line: 119, column: 28, scope: !1038)
!1047 = !DILocation(line: 119, column: 34, scope: !1038)
!1048 = !DILocation(line: 118, column: 7, scope: !1034)
!1049 = !DILocation(line: 121, column: 33, scope: !1037)
!1050 = !DILocation(line: 0, scope: !1037)
!1051 = !DILocation(line: 122, column: 11, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1037, file: !316, line: 122, column: 11)
!1053 = !DILocation(line: 0, scope: !1052)
!1054 = !DILocation(line: 122, column: 11, scope: !1037)
!1055 = !DILocation(line: 123, column: 9, scope: !1052)
!1056 = !DILocation(line: 126, column: 9, scope: !1052)
!1057 = !DILocation(line: 128, column: 14, scope: !1037)
!1058 = !DILocation(line: 128, column: 7, scope: !1037)
!1059 = !DILocation(line: 133, column: 42, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1034, file: !316, line: 133, column: 7)
!1061 = !DILocation(line: 133, column: 28, scope: !1060)
!1062 = !DILocation(line: 133, column: 50, scope: !1060)
!1063 = !DILocation(line: 133, column: 7, scope: !1034)
!1064 = !DILocation(line: 134, column: 12, scope: !1060)
!1065 = !DILocation(line: 134, column: 5, scope: !1060)
!1066 = !DILocation(line: 135, column: 1, scope: !1034)
!1067 = !DISubprogram(name: "_exit", scope: !1011, file: !1011, line: 624, type: !748, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1068 = distinct !DISubprogram(name: "verror", scope: !331, file: !331, line: 251, type: !1069, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !108, !108, !72, !341}
!1071 = !{!1072, !1073, !1074, !1075}
!1072 = !DILocalVariable(name: "status", arg: 1, scope: !1068, file: !331, line: 251, type: !108)
!1073 = !DILocalVariable(name: "errnum", arg: 2, scope: !1068, file: !331, line: 251, type: !108)
!1074 = !DILocalVariable(name: "message", arg: 3, scope: !1068, file: !331, line: 251, type: !72)
!1075 = !DILocalVariable(name: "args", arg: 4, scope: !1068, file: !331, line: 251, type: !341)
!1076 = !DILocation(line: 0, scope: !1068)
!1077 = !DILocation(line: 251, column: 1, scope: !1068)
!1078 = !DILocation(line: 261, column: 3, scope: !1068)
!1079 = !DILocation(line: 265, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1068, file: !331, line: 265, column: 7)
!1081 = !DILocation(line: 265, column: 7, scope: !1068)
!1082 = !DILocation(line: 266, column: 5, scope: !1080)
!1083 = !DILocation(line: 272, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !331, line: 268, column: 5)
!1085 = !DILocation(line: 276, column: 3, scope: !1068)
!1086 = !{i64 0, i64 8, !758, i64 8, i64 8, !758, i64 16, i64 8, !758, i64 24, i64 4, !818, i64 28, i64 4, !818}
!1087 = !DILocation(line: 282, column: 1, scope: !1068)
!1088 = distinct !DISubprogram(name: "flush_stdout", scope: !331, file: !331, line: 163, type: !383, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1089)
!1089 = !{!1090}
!1090 = !DILocalVariable(name: "stdout_fd", scope: !1088, file: !331, line: 166, type: !108)
!1091 = !DILocation(line: 0, scope: !1088)
!1092 = !DILocalVariable(name: "fd", arg: 1, scope: !1093, file: !331, line: 145, type: !108)
!1093 = distinct !DISubprogram(name: "is_open", scope: !331, file: !331, line: 145, type: !1094, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!108, !108}
!1096 = !{!1092}
!1097 = !DILocation(line: 0, scope: !1093, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 182, column: 25, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1088, file: !331, line: 182, column: 7)
!1100 = !DILocation(line: 157, column: 15, scope: !1093, inlinedAt: !1098)
!1101 = !DILocation(line: 157, column: 12, scope: !1093, inlinedAt: !1098)
!1102 = !DILocation(line: 182, column: 7, scope: !1088)
!1103 = !DILocation(line: 184, column: 5, scope: !1099)
!1104 = !DILocation(line: 185, column: 1, scope: !1088)
!1105 = distinct !DISubprogram(name: "error_tail", scope: !331, file: !331, line: 219, type: !1069, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1106)
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DILocalVariable(name: "status", arg: 1, scope: !1105, file: !331, line: 219, type: !108)
!1108 = !DILocalVariable(name: "errnum", arg: 2, scope: !1105, file: !331, line: 219, type: !108)
!1109 = !DILocalVariable(name: "message", arg: 3, scope: !1105, file: !331, line: 219, type: !72)
!1110 = !DILocalVariable(name: "args", arg: 4, scope: !1105, file: !331, line: 219, type: !341)
!1111 = !DILocation(line: 0, scope: !1105)
!1112 = !DILocation(line: 219, column: 1, scope: !1105)
!1113 = !DILocation(line: 229, column: 13, scope: !1105)
!1114 = !DILocation(line: 135, column: 10, scope: !1115, inlinedAt: !1157)
!1115 = distinct !DISubprogram(name: "vfprintf", scope: !805, file: !805, line: 132, type: !1116, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1153)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!108, !1118, !809, !343}
!1118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1121, file: !251, line: 51, baseType: !108, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1121, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1121, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1121, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1121, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1121, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1121, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1121, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1121, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1121, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1121, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1121, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1121, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1121, file: !251, line: 70, baseType: !1137, size: 64, offset: 832)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1121, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1121, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1121, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1121, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1121, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1121, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1121, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1121, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1121, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1121, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1121, file: !251, line: 93, baseType: !1137, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1121, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1121, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1121, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1121, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!1153 = !{!1154, !1155, !1156}
!1154 = !DILocalVariable(name: "__stream", arg: 1, scope: !1115, file: !805, line: 132, type: !1118)
!1155 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1115, file: !805, line: 133, type: !809)
!1156 = !DILocalVariable(name: "__ap", arg: 3, scope: !1115, file: !805, line: 133, type: !343)
!1157 = distinct !DILocation(line: 229, column: 3, scope: !1105)
!1158 = !{!1159, !1161}
!1159 = distinct !{!1159, !1160, !"vfprintf.inline: argument 0"}
!1160 = distinct !{!1160, !"vfprintf.inline"}
!1161 = distinct !{!1161, !1160, !"vfprintf.inline: argument 1"}
!1162 = !DILocation(line: 229, column: 3, scope: !1105)
!1163 = !DILocation(line: 0, scope: !1115, inlinedAt: !1157)
!1164 = !DILocation(line: 133, column: 49, scope: !1115, inlinedAt: !1157)
!1165 = !DILocation(line: 232, column: 3, scope: !1105)
!1166 = !DILocation(line: 233, column: 7, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1105, file: !331, line: 233, column: 7)
!1168 = !DILocation(line: 233, column: 7, scope: !1105)
!1169 = !DILocalVariable(name: "errnum", arg: 1, scope: !1170, file: !331, line: 188, type: !108)
!1170 = distinct !DISubprogram(name: "print_errno_message", scope: !331, file: !331, line: 188, type: !748, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1171)
!1171 = !{!1169, !1172, !1173}
!1172 = !DILocalVariable(name: "s", scope: !1170, file: !331, line: 190, type: !72)
!1173 = !DILocalVariable(name: "errbuf", scope: !1170, file: !331, line: 193, type: !1174)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 1024)
!1177 = !DILocation(line: 0, scope: !1170, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 234, column: 5, scope: !1167)
!1179 = !DILocation(line: 193, column: 3, scope: !1170, inlinedAt: !1178)
!1180 = !DILocation(line: 193, column: 8, scope: !1170, inlinedAt: !1178)
!1181 = !DILocation(line: 195, column: 7, scope: !1170, inlinedAt: !1178)
!1182 = !DILocation(line: 207, column: 9, scope: !1183, inlinedAt: !1178)
!1183 = distinct !DILexicalBlock(scope: !1170, file: !331, line: 207, column: 7)
!1184 = !DILocation(line: 207, column: 7, scope: !1170, inlinedAt: !1178)
!1185 = !DILocation(line: 208, column: 9, scope: !1183, inlinedAt: !1178)
!1186 = !DILocation(line: 208, column: 5, scope: !1183, inlinedAt: !1178)
!1187 = !DILocation(line: 214, column: 3, scope: !1170, inlinedAt: !1178)
!1188 = !DILocation(line: 216, column: 1, scope: !1170, inlinedAt: !1178)
!1189 = !DILocation(line: 234, column: 5, scope: !1167)
!1190 = !DILocation(line: 238, column: 3, scope: !1105)
!1191 = !DILocalVariable(name: "__c", arg: 1, scope: !1192, file: !1193, line: 101, type: !108)
!1192 = distinct !DISubprogram(name: "putc_unlocked", scope: !1193, file: !1193, line: 101, type: !1194, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1196)
!1193 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!108, !108, !1119}
!1196 = !{!1191, !1197}
!1197 = !DILocalVariable(name: "__stream", arg: 2, scope: !1192, file: !1193, line: 101, type: !1119)
!1198 = !DILocation(line: 0, scope: !1192, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 238, column: 3, scope: !1105)
!1200 = !DILocation(line: 103, column: 10, scope: !1192, inlinedAt: !1199)
!1201 = !{!1202, !759, i64 40}
!1202 = !{!"_IO_FILE", !819, i64 0, !759, i64 8, !759, i64 16, !759, i64 24, !759, i64 32, !759, i64 40, !759, i64 48, !759, i64 56, !759, i64 64, !759, i64 72, !759, i64 80, !759, i64 88, !759, i64 96, !759, i64 104, !819, i64 112, !819, i64 116, !1203, i64 120, !860, i64 128, !760, i64 130, !760, i64 131, !759, i64 136, !1203, i64 144, !759, i64 152, !759, i64 160, !759, i64 168, !759, i64 176, !1203, i64 184, !819, i64 192, !760, i64 196}
!1203 = !{!"long", !760, i64 0}
!1204 = !{!1202, !759, i64 48}
!1205 = !{!"branch_weights", i32 2000, i32 1}
!1206 = !DILocation(line: 240, column: 3, scope: !1105)
!1207 = !DILocation(line: 241, column: 7, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1105, file: !331, line: 241, column: 7)
!1209 = !DILocation(line: 241, column: 7, scope: !1105)
!1210 = !DILocation(line: 242, column: 5, scope: !1208)
!1211 = !DILocation(line: 243, column: 1, scope: !1105)
!1212 = !DISubprogram(name: "__vfprintf_chk", scope: !805, file: !805, line: 96, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!108, !1118, !108, !809, !343}
!1215 = !DISubprogram(name: "strerror_r", scope: !935, file: !935, line: 444, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!255, !108, !255, !110}
!1218 = !DISubprogram(name: "__overflow", scope: !342, file: !342, line: 886, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!108, !1119, !108}
!1221 = !DISubprogram(name: "fflush_unlocked", scope: !342, file: !342, line: 239, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!108, !1119}
!1224 = !DISubprogram(name: "fcntl", scope: !1225, file: !1225, line: 149, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1225 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!108, !108, !108, null}
!1228 = distinct !DISubprogram(name: "error", scope: !331, file: !331, line: 285, type: !1229, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1231)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{null, !108, !108, !72, null}
!1231 = !{!1232, !1233, !1234, !1235}
!1232 = !DILocalVariable(name: "status", arg: 1, scope: !1228, file: !331, line: 285, type: !108)
!1233 = !DILocalVariable(name: "errnum", arg: 2, scope: !1228, file: !331, line: 285, type: !108)
!1234 = !DILocalVariable(name: "message", arg: 3, scope: !1228, file: !331, line: 285, type: !72)
!1235 = !DILocalVariable(name: "ap", scope: !1228, file: !331, line: 287, type: !341)
!1236 = !DILocation(line: 0, scope: !1228)
!1237 = !DILocation(line: 287, column: 3, scope: !1228)
!1238 = !DILocation(line: 287, column: 11, scope: !1228)
!1239 = !DILocation(line: 288, column: 3, scope: !1228)
!1240 = !DILocation(line: 289, column: 3, scope: !1228)
!1241 = !DILocation(line: 290, column: 3, scope: !1228)
!1242 = !DILocation(line: 291, column: 1, scope: !1228)
!1243 = !DILocation(line: 0, scope: !338)
!1244 = !DILocation(line: 298, column: 1, scope: !338)
!1245 = !DILocation(line: 302, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !338, file: !331, line: 302, column: 7)
!1247 = !DILocation(line: 302, column: 7, scope: !338)
!1248 = !DILocation(line: 307, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !331, line: 307, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !331, line: 303, column: 5)
!1251 = !DILocation(line: 307, column: 27, scope: !1249)
!1252 = !DILocation(line: 308, column: 11, scope: !1249)
!1253 = !DILocation(line: 308, column: 28, scope: !1249)
!1254 = !DILocation(line: 308, column: 25, scope: !1249)
!1255 = !DILocation(line: 309, column: 15, scope: !1249)
!1256 = !DILocation(line: 309, column: 33, scope: !1249)
!1257 = !DILocation(line: 310, column: 19, scope: !1249)
!1258 = !DILocation(line: 311, column: 22, scope: !1249)
!1259 = !DILocation(line: 311, column: 56, scope: !1249)
!1260 = !DILocation(line: 307, column: 11, scope: !1250)
!1261 = !DILocation(line: 316, column: 21, scope: !1250)
!1262 = !DILocation(line: 317, column: 23, scope: !1250)
!1263 = !DILocation(line: 318, column: 5, scope: !1250)
!1264 = !DILocation(line: 327, column: 3, scope: !338)
!1265 = !DILocation(line: 331, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !338, file: !331, line: 331, column: 7)
!1267 = !DILocation(line: 331, column: 7, scope: !338)
!1268 = !DILocation(line: 332, column: 5, scope: !1266)
!1269 = !DILocation(line: 338, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !331, line: 334, column: 5)
!1271 = !DILocation(line: 346, column: 3, scope: !338)
!1272 = !DILocation(line: 350, column: 3, scope: !338)
!1273 = !DILocation(line: 356, column: 1, scope: !338)
!1274 = distinct !DISubprogram(name: "error_at_line", scope: !331, file: !331, line: 359, type: !1275, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !108, !108, !72, !78, !72, null}
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283}
!1278 = !DILocalVariable(name: "status", arg: 1, scope: !1274, file: !331, line: 359, type: !108)
!1279 = !DILocalVariable(name: "errnum", arg: 2, scope: !1274, file: !331, line: 359, type: !108)
!1280 = !DILocalVariable(name: "file_name", arg: 3, scope: !1274, file: !331, line: 359, type: !72)
!1281 = !DILocalVariable(name: "line_number", arg: 4, scope: !1274, file: !331, line: 360, type: !78)
!1282 = !DILocalVariable(name: "message", arg: 5, scope: !1274, file: !331, line: 360, type: !72)
!1283 = !DILocalVariable(name: "ap", scope: !1274, file: !331, line: 362, type: !341)
!1284 = !DILocation(line: 0, scope: !1274)
!1285 = !DILocation(line: 362, column: 3, scope: !1274)
!1286 = !DILocation(line: 362, column: 11, scope: !1274)
!1287 = !DILocation(line: 363, column: 3, scope: !1274)
!1288 = !DILocation(line: 364, column: 3, scope: !1274)
!1289 = !DILocation(line: 366, column: 3, scope: !1274)
!1290 = !DILocation(line: 367, column: 1, scope: !1274)
!1291 = distinct !DISubprogram(name: "getprogname", scope: !678, file: !678, line: 54, type: !1292, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !677, retainedNodes: !803)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!72}
!1294 = !DILocation(line: 58, column: 10, scope: !1291)
!1295 = !DILocation(line: 58, column: 3, scope: !1291)
!1296 = distinct !DISubprogram(name: "parse_long_options", scope: !387, file: !387, line: 45, type: !1297, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1300)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !108, !968, !72, !72, !72, !1299, null}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1311}
!1301 = !DILocalVariable(name: "argc", arg: 1, scope: !1296, file: !387, line: 45, type: !108)
!1302 = !DILocalVariable(name: "argv", arg: 2, scope: !1296, file: !387, line: 46, type: !968)
!1303 = !DILocalVariable(name: "command_name", arg: 3, scope: !1296, file: !387, line: 47, type: !72)
!1304 = !DILocalVariable(name: "package", arg: 4, scope: !1296, file: !387, line: 48, type: !72)
!1305 = !DILocalVariable(name: "version", arg: 5, scope: !1296, file: !387, line: 49, type: !72)
!1306 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1296, file: !387, line: 50, type: !1299)
!1307 = !DILocalVariable(name: "saved_opterr", scope: !1296, file: !387, line: 53, type: !108)
!1308 = !DILocalVariable(name: "c", scope: !1309, file: !387, line: 60, type: !108)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !387, line: 59, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1296, file: !387, line: 58, column: 7)
!1311 = !DILocalVariable(name: "authors", scope: !1312, file: !387, line: 71, type: !1316)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !387, line: 70, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !387, line: 64, column: 13)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !387, line: 62, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !387, line: 61, column: 11)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 14, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1319, baseType: !1320)
!1319 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325, !1326}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1320, file: !1319, line: 71, baseType: !107, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1320, file: !1319, line: 71, baseType: !107, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1320, file: !1319, line: 71, baseType: !107, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1320, file: !1319, line: 71, baseType: !108, size: 32, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1320, file: !1319, line: 71, baseType: !108, size: 32, offset: 224)
!1327 = !DILocation(line: 0, scope: !1296)
!1328 = !DILocation(line: 53, column: 22, scope: !1296)
!1329 = !DILocation(line: 56, column: 10, scope: !1296)
!1330 = !DILocation(line: 58, column: 12, scope: !1310)
!1331 = !DILocation(line: 58, column: 7, scope: !1296)
!1332 = !DILocation(line: 60, column: 15, scope: !1309)
!1333 = !DILocation(line: 0, scope: !1309)
!1334 = !DILocation(line: 61, column: 11, scope: !1309)
!1335 = !DILocation(line: 66, column: 15, scope: !1313)
!1336 = !DILocation(line: 67, column: 15, scope: !1313)
!1337 = !DILocation(line: 71, column: 17, scope: !1312)
!1338 = !DILocation(line: 71, column: 25, scope: !1312)
!1339 = !DILocation(line: 72, column: 17, scope: !1312)
!1340 = !DILocation(line: 73, column: 33, scope: !1312)
!1341 = !DILocation(line: 73, column: 17, scope: !1312)
!1342 = !DILocation(line: 74, column: 17, scope: !1312)
!1343 = !DILocation(line: 85, column: 10, scope: !1296)
!1344 = !DILocation(line: 89, column: 10, scope: !1296)
!1345 = !DILocation(line: 90, column: 1, scope: !1296)
!1346 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!108, !108, !1349, !72, !1351, !406}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1352 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !387, file: !387, line: 98, type: !1353, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !108, !968, !72, !72, !72, !234, !1299, null}
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1356 = !DILocalVariable(name: "argc", arg: 1, scope: !1352, file: !387, line: 98, type: !108)
!1357 = !DILocalVariable(name: "argv", arg: 2, scope: !1352, file: !387, line: 99, type: !968)
!1358 = !DILocalVariable(name: "command_name", arg: 3, scope: !1352, file: !387, line: 100, type: !72)
!1359 = !DILocalVariable(name: "package", arg: 4, scope: !1352, file: !387, line: 101, type: !72)
!1360 = !DILocalVariable(name: "version", arg: 5, scope: !1352, file: !387, line: 102, type: !72)
!1361 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1352, file: !387, line: 103, type: !234)
!1362 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1352, file: !387, line: 104, type: !1299)
!1363 = !DILocalVariable(name: "saved_opterr", scope: !1352, file: !387, line: 107, type: !108)
!1364 = !DILocalVariable(name: "optstring", scope: !1352, file: !387, line: 112, type: !72)
!1365 = !DILocalVariable(name: "c", scope: !1352, file: !387, line: 114, type: !108)
!1366 = !DILocalVariable(name: "authors", scope: !1367, file: !387, line: 125, type: !1316)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !387, line: 124, column: 11)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !387, line: 118, column: 9)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !387, line: 116, column: 5)
!1370 = distinct !DILexicalBlock(scope: !1352, file: !387, line: 115, column: 7)
!1371 = !DILocation(line: 0, scope: !1352)
!1372 = !DILocation(line: 107, column: 22, scope: !1352)
!1373 = !DILocation(line: 110, column: 10, scope: !1352)
!1374 = !DILocation(line: 112, column: 27, scope: !1352)
!1375 = !DILocation(line: 114, column: 11, scope: !1352)
!1376 = !DILocation(line: 115, column: 7, scope: !1352)
!1377 = !DILocation(line: 125, column: 13, scope: !1367)
!1378 = !DILocation(line: 125, column: 21, scope: !1367)
!1379 = !DILocation(line: 126, column: 13, scope: !1367)
!1380 = !DILocation(line: 127, column: 29, scope: !1367)
!1381 = !DILocation(line: 127, column: 13, scope: !1367)
!1382 = !DILocation(line: 128, column: 13, scope: !1367)
!1383 = !DILocation(line: 132, column: 26, scope: !1368)
!1384 = !DILocation(line: 133, column: 11, scope: !1368)
!1385 = !DILocation(line: 0, scope: !1368)
!1386 = !DILocation(line: 138, column: 10, scope: !1352)
!1387 = !DILocation(line: 139, column: 1, scope: !1352)
!1388 = distinct !DISubprogram(name: "set_program_name", scope: !411, file: !411, line: 37, type: !769, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DILocalVariable(name: "argv0", arg: 1, scope: !1388, file: !411, line: 37, type: !72)
!1391 = !DILocalVariable(name: "slash", scope: !1388, file: !411, line: 44, type: !72)
!1392 = !DILocalVariable(name: "base", scope: !1388, file: !411, line: 45, type: !72)
!1393 = !DILocation(line: 0, scope: !1388)
!1394 = !DILocation(line: 44, column: 23, scope: !1388)
!1395 = !DILocation(line: 45, column: 22, scope: !1388)
!1396 = !DILocation(line: 46, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !411, line: 46, column: 7)
!1398 = !DILocation(line: 46, column: 9, scope: !1397)
!1399 = !DILocation(line: 46, column: 25, scope: !1397)
!1400 = !DILocation(line: 46, column: 40, scope: !1397)
!1401 = !DILocalVariable(name: "__s1", arg: 1, scope: !1402, file: !831, line: 974, type: !963)
!1402 = distinct !DISubprogram(name: "memeq", scope: !831, file: !831, line: 974, type: !1403, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!234, !963, !963, !110}
!1405 = !{!1401, !1406, !1407}
!1406 = !DILocalVariable(name: "__s2", arg: 2, scope: !1402, file: !831, line: 974, type: !963)
!1407 = !DILocalVariable(name: "__n", arg: 3, scope: !1402, file: !831, line: 974, type: !110)
!1408 = !DILocation(line: 0, scope: !1402, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 46, column: 28, scope: !1397)
!1410 = !DILocation(line: 976, column: 11, scope: !1402, inlinedAt: !1409)
!1411 = !DILocation(line: 976, column: 10, scope: !1402, inlinedAt: !1409)
!1412 = !DILocation(line: 46, column: 7, scope: !1388)
!1413 = !DILocation(line: 49, column: 11, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !411, line: 49, column: 11)
!1415 = distinct !DILexicalBlock(scope: !1397, file: !411, line: 47, column: 5)
!1416 = !DILocation(line: 49, column: 36, scope: !1414)
!1417 = !DILocation(line: 49, column: 11, scope: !1415)
!1418 = !DILocation(line: 65, column: 16, scope: !1388)
!1419 = !DILocation(line: 71, column: 27, scope: !1388)
!1420 = !DILocation(line: 74, column: 33, scope: !1388)
!1421 = !DILocation(line: 76, column: 1, scope: !1388)
!1422 = !DISubprogram(name: "strrchr", scope: !935, file: !935, line: 273, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1423 = !DILocation(line: 0, scope: !420)
!1424 = !DILocation(line: 40, column: 29, scope: !420)
!1425 = !DILocation(line: 41, column: 19, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !420, file: !421, line: 41, column: 7)
!1427 = !DILocation(line: 41, column: 7, scope: !420)
!1428 = !DILocation(line: 47, column: 3, scope: !420)
!1429 = !DILocation(line: 48, column: 3, scope: !420)
!1430 = !DILocation(line: 48, column: 13, scope: !420)
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
!1456 = !DISubprogram(name: "mbrtoc32", scope: !432, file: !432, line: 57, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!110, !1459, !809, !110, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1436)
!1462 = distinct !DISubprogram(name: "clone_quoting_options", scope: !451, file: !451, line: 113, type: !1463, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1466)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
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
!1478 = !{!76, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "o", arg: 1, scope: !1476, file: !451, line: 124, type: !1479)
!1483 = !DILocation(line: 0, scope: !1476)
!1484 = !DILocation(line: 126, column: 11, scope: !1476)
!1485 = !DILocation(line: 126, column: 46, scope: !1476)
!1486 = !{!1487, !760, i64 0}
!1487 = !{!"quoting_options", !760, i64 0, !819, i64 4, !760, i64 8, !759, i64 40, !759, i64 48}
!1488 = !DILocation(line: 126, column: 3, scope: !1476)
!1489 = distinct !DISubprogram(name: "set_quoting_style", scope: !451, file: !451, line: 132, type: !1490, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1465, !76}
!1492 = !{!1493, !1494}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !451, line: 132, type: !1465)
!1494 = !DILocalVariable(name: "s", arg: 2, scope: !1489, file: !451, line: 132, type: !76)
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
!1536 = !{!1487, !819, i64 4}
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
!1557 = !{!1487, !759, i64 40}
!1558 = !DILocation(line: 178, column: 6, scope: !1539)
!1559 = !DILocation(line: 178, column: 18, scope: !1539)
!1560 = !{!1487, !759, i64 48}
!1561 = !DILocation(line: 179, column: 1, scope: !1539)
!1562 = !DISubprogram(name: "abort", scope: !939, file: !939, line: 598, type: !383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !803)
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
!1588 = !{!110, !255, !110, !72, !110, !76, !108, !1589, !72, !72}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1616, !1618, !1621, !1622, !1623, !1624, !1627, !1628, !1631, !1635, !1636, !1644, !1647, !1648, !1650, !1651, !1652, !1653}
!1592 = !DILocalVariable(name: "buffer", arg: 1, scope: !1586, file: !451, line: 251, type: !255)
!1593 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1586, file: !451, line: 251, type: !110)
!1594 = !DILocalVariable(name: "arg", arg: 3, scope: !1586, file: !451, line: 252, type: !72)
!1595 = !DILocalVariable(name: "argsize", arg: 4, scope: !1586, file: !451, line: 252, type: !110)
!1596 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1586, file: !451, line: 253, type: !76)
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
!1610 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1586, file: !451, line: 309, type: !234)
!1611 = !DILocalVariable(name: "lq", scope: !1612, file: !451, line: 361, type: !72)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !451, line: 361, column: 11)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !451, line: 360, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 333, column: 7)
!1615 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 312, column: 5)
!1616 = !DILocalVariable(name: "i", scope: !1617, file: !451, line: 395, type: !110)
!1617 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 395, column: 3)
!1618 = !DILocalVariable(name: "is_right_quote", scope: !1619, file: !451, line: 397, type: !234)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 396, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !451, line: 395, column: 3)
!1621 = !DILocalVariable(name: "escaping", scope: !1619, file: !451, line: 398, type: !234)
!1622 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1619, file: !451, line: 399, type: !234)
!1623 = !DILocalVariable(name: "c", scope: !1619, file: !451, line: 417, type: !113)
!1624 = !DILocalVariable(name: "m", scope: !1625, file: !451, line: 598, type: !110)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 596, column: 11)
!1626 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 419, column: 9)
!1627 = !DILocalVariable(name: "printable", scope: !1625, file: !451, line: 600, type: !234)
!1628 = !DILocalVariable(name: "mbs", scope: !1629, file: !451, line: 609, type: !524)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !451, line: 608, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !451, line: 602, column: 17)
!1631 = !DILocalVariable(name: "w", scope: !1632, file: !451, line: 618, type: !431)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !451, line: 617, column: 19)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !451, line: 616, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 616, column: 17)
!1635 = !DILocalVariable(name: "bytes", scope: !1632, file: !451, line: 619, type: !110)
!1636 = !DILocalVariable(name: "j", scope: !1637, file: !451, line: 648, type: !110)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !451, line: 648, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !451, line: 647, column: 27)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !451, line: 645, column: 29)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !451, line: 636, column: 23)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !451, line: 628, column: 30)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !451, line: 623, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1632, file: !451, line: 621, column: 25)
!1644 = !DILocalVariable(name: "ilim", scope: !1645, file: !451, line: 674, type: !110)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !451, line: 671, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1625, file: !451, line: 670, column: 17)
!1647 = !DILabel(scope: !1586, name: "process_input", file: !451, line: 308)
!1648 = !DILabel(scope: !1649, name: "c_and_shell_escape", file: !451, line: 502)
!1649 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 478, column: 9)
!1650 = !DILabel(scope: !1649, name: "c_escape", file: !451, line: 507)
!1651 = !DILabel(scope: !1619, name: "store_escape", file: !451, line: 709)
!1652 = !DILabel(scope: !1619, name: "store_c", file: !451, line: 712)
!1653 = !DILabel(scope: !1586, name: "force_outer_quoting_style", file: !451, line: 753)
!1654 = !DILocation(line: 0, scope: !1586)
!1655 = !DILocation(line: 258, column: 25, scope: !1586)
!1656 = !DILocation(line: 258, column: 36, scope: !1586)
!1657 = !DILocation(line: 267, column: 3, scope: !1586)
!1658 = !DILocation(line: 261, column: 10, scope: !1586)
!1659 = !DILocation(line: 262, column: 15, scope: !1586)
!1660 = !DILocation(line: 263, column: 10, scope: !1586)
!1661 = !DILocation(line: 308, column: 2, scope: !1586)
!1662 = !DILocation(line: 311, column: 3, scope: !1586)
!1663 = !DILocation(line: 318, column: 11, scope: !1615)
!1664 = !DILocation(line: 319, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !451, line: 319, column: 9)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !451, line: 319, column: 9)
!1667 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 318, column: 11)
!1668 = !DILocation(line: 319, column: 9, scope: !1666)
!1669 = !DILocation(line: 0, scope: !515, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 357, column: 26, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !451, line: 335, column: 11)
!1672 = distinct !DILexicalBlock(scope: !1614, file: !451, line: 334, column: 13)
!1673 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1670)
!1674 = !DILocation(line: 201, column: 19, scope: !1675, inlinedAt: !1670)
!1675 = distinct !DILexicalBlock(scope: !515, file: !451, line: 201, column: 7)
!1676 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1670)
!1677 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1670)
!1678 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1670)
!1679 = !DILocation(line: 230, column: 13, scope: !515, inlinedAt: !1670)
!1680 = !DILocalVariable(name: "ps", arg: 1, scope: !1681, file: !1433, line: 1135, type: !1684)
!1681 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !1682, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1685)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !1684}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1685 = !{!1680}
!1686 = !DILocation(line: 0, scope: !1681, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1670)
!1688 = !DILocalVariable(name: "__dest", arg: 1, scope: !1689, file: !1442, line: 57, type: !107)
!1689 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1690)
!1690 = !{!1688, !1691, !1692}
!1691 = !DILocalVariable(name: "__ch", arg: 2, scope: !1689, file: !1442, line: 57, type: !108)
!1692 = !DILocalVariable(name: "__len", arg: 3, scope: !1689, file: !1442, line: 57, type: !110)
!1693 = !DILocation(line: 0, scope: !1689, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 1137, column: 3, scope: !1681, inlinedAt: !1687)
!1695 = !DILocation(line: 59, column: 10, scope: !1689, inlinedAt: !1694)
!1696 = !DILocation(line: 231, column: 7, scope: !1697, inlinedAt: !1670)
!1697 = distinct !DILexicalBlock(scope: !515, file: !451, line: 231, column: 7)
!1698 = !DILocation(line: 231, column: 40, scope: !1697, inlinedAt: !1670)
!1699 = !DILocation(line: 231, column: 45, scope: !1697, inlinedAt: !1670)
!1700 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1670)
!1701 = !DILocation(line: 0, scope: !515, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 358, column: 27, scope: !1671)
!1703 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1702)
!1704 = !DILocation(line: 201, column: 19, scope: !1675, inlinedAt: !1702)
!1705 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1702)
!1706 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1702)
!1707 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1702)
!1708 = !DILocation(line: 230, column: 13, scope: !515, inlinedAt: !1702)
!1709 = !DILocation(line: 0, scope: !1681, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1702)
!1711 = !DILocation(line: 0, scope: !1689, inlinedAt: !1712)
!1712 = distinct !DILocation(line: 1137, column: 3, scope: !1681, inlinedAt: !1710)
!1713 = !DILocation(line: 59, column: 10, scope: !1689, inlinedAt: !1712)
!1714 = !DILocation(line: 231, column: 7, scope: !1697, inlinedAt: !1702)
!1715 = !DILocation(line: 231, column: 40, scope: !1697, inlinedAt: !1702)
!1716 = !DILocation(line: 231, column: 45, scope: !1697, inlinedAt: !1702)
!1717 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1702)
!1718 = !DILocation(line: 360, column: 13, scope: !1614)
!1719 = !DILocation(line: 0, scope: !1612)
!1720 = !DILocation(line: 361, column: 45, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1612, file: !451, line: 361, column: 11)
!1722 = !DILocation(line: 361, column: 11, scope: !1612)
!1723 = !DILocation(line: 362, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !451, line: 362, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !451, line: 362, column: 13)
!1726 = !DILocation(line: 362, column: 13, scope: !1725)
!1727 = !DILocation(line: 361, column: 52, scope: !1721)
!1728 = distinct !{!1728, !1722, !1729, !865}
!1729 = !DILocation(line: 362, column: 13, scope: !1612)
!1730 = !DILocation(line: 260, column: 10, scope: !1586)
!1731 = !DILocation(line: 365, column: 28, scope: !1614)
!1732 = !DILocation(line: 367, column: 7, scope: !1615)
!1733 = !DILocation(line: 370, column: 7, scope: !1615)
!1734 = !DILocation(line: 376, column: 11, scope: !1615)
!1735 = !DILocation(line: 381, column: 11, scope: !1615)
!1736 = !DILocation(line: 382, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !451, line: 382, column: 9)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !451, line: 382, column: 9)
!1739 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 381, column: 11)
!1740 = !DILocation(line: 382, column: 9, scope: !1738)
!1741 = !DILocation(line: 389, column: 7, scope: !1615)
!1742 = !DILocation(line: 392, column: 7, scope: !1615)
!1743 = !DILocation(line: 0, scope: !1617)
!1744 = !DILocation(line: 395, column: 8, scope: !1617)
!1745 = !DILocation(line: 395, scope: !1617)
!1746 = !DILocation(line: 395, column: 34, scope: !1620)
!1747 = !DILocation(line: 395, column: 26, scope: !1620)
!1748 = !DILocation(line: 395, column: 48, scope: !1620)
!1749 = !DILocation(line: 395, column: 55, scope: !1620)
!1750 = !DILocation(line: 395, column: 3, scope: !1617)
!1751 = !DILocation(line: 395, column: 67, scope: !1620)
!1752 = !DILocation(line: 0, scope: !1619)
!1753 = !DILocation(line: 402, column: 11, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 401, column: 11)
!1755 = !DILocation(line: 404, column: 17, scope: !1754)
!1756 = !DILocation(line: 405, column: 39, scope: !1754)
!1757 = !DILocation(line: 409, column: 32, scope: !1754)
!1758 = !DILocation(line: 405, column: 19, scope: !1754)
!1759 = !DILocation(line: 405, column: 15, scope: !1754)
!1760 = !DILocation(line: 410, column: 11, scope: !1754)
!1761 = !DILocation(line: 410, column: 25, scope: !1754)
!1762 = !DILocalVariable(name: "__s1", arg: 1, scope: !1763, file: !831, line: 974, type: !963)
!1763 = distinct !DISubprogram(name: "memeq", scope: !831, file: !831, line: 974, type: !1403, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1764)
!1764 = !{!1762, !1765, !1766}
!1765 = !DILocalVariable(name: "__s2", arg: 2, scope: !1763, file: !831, line: 974, type: !963)
!1766 = !DILocalVariable(name: "__n", arg: 3, scope: !1763, file: !831, line: 974, type: !110)
!1767 = !DILocation(line: 0, scope: !1763, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 410, column: 14, scope: !1754)
!1769 = !DILocation(line: 976, column: 11, scope: !1763, inlinedAt: !1768)
!1770 = !DILocation(line: 976, column: 10, scope: !1763, inlinedAt: !1768)
!1771 = !DILocation(line: 401, column: 11, scope: !1619)
!1772 = !DILocation(line: 417, column: 25, scope: !1619)
!1773 = !DILocation(line: 418, column: 7, scope: !1619)
!1774 = !DILocation(line: 421, column: 15, scope: !1626)
!1775 = !DILocation(line: 423, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !451, line: 423, column: 15)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !451, line: 422, column: 13)
!1778 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 421, column: 15)
!1779 = !DILocation(line: 423, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !451, line: 423, column: 15)
!1781 = !DILocation(line: 423, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !451, line: 423, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !451, line: 423, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !451, line: 423, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1783)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !451, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1784, file: !451, line: 423, column: 15)
!1789 = !DILocation(line: 423, column: 15, scope: !1788)
!1790 = !DILocation(line: 423, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !451, line: 423, column: 15)
!1792 = distinct !DILexicalBlock(scope: !1784, file: !451, line: 423, column: 15)
!1793 = !DILocation(line: 423, column: 15, scope: !1792)
!1794 = !DILocation(line: 423, column: 15, scope: !1784)
!1795 = !DILocation(line: 423, column: 15, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !451, line: 423, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1776, file: !451, line: 423, column: 15)
!1798 = !DILocation(line: 423, column: 15, scope: !1797)
!1799 = !DILocation(line: 431, column: 19, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1777, file: !451, line: 430, column: 19)
!1801 = !DILocation(line: 431, column: 24, scope: !1800)
!1802 = !DILocation(line: 431, column: 28, scope: !1800)
!1803 = !DILocation(line: 431, column: 38, scope: !1800)
!1804 = !DILocation(line: 431, column: 48, scope: !1800)
!1805 = !DILocation(line: 431, column: 59, scope: !1800)
!1806 = !DILocation(line: 433, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !451, line: 433, column: 19)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !451, line: 433, column: 19)
!1809 = distinct !DILexicalBlock(scope: !1800, file: !451, line: 432, column: 17)
!1810 = !DILocation(line: 433, column: 19, scope: !1808)
!1811 = !DILocation(line: 434, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !451, line: 434, column: 19)
!1813 = distinct !DILexicalBlock(scope: !1809, file: !451, line: 434, column: 19)
!1814 = !DILocation(line: 434, column: 19, scope: !1813)
!1815 = !DILocation(line: 435, column: 17, scope: !1809)
!1816 = !DILocation(line: 442, column: 20, scope: !1778)
!1817 = !DILocation(line: 447, column: 11, scope: !1626)
!1818 = !DILocation(line: 450, column: 19, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 448, column: 13)
!1820 = !DILocation(line: 456, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1819, file: !451, line: 455, column: 19)
!1822 = !DILocation(line: 456, column: 24, scope: !1821)
!1823 = !DILocation(line: 456, column: 28, scope: !1821)
!1824 = !DILocation(line: 456, column: 38, scope: !1821)
!1825 = !DILocation(line: 456, column: 47, scope: !1821)
!1826 = !DILocation(line: 456, column: 41, scope: !1821)
!1827 = !DILocation(line: 456, column: 52, scope: !1821)
!1828 = !DILocation(line: 455, column: 19, scope: !1819)
!1829 = !DILocation(line: 457, column: 25, scope: !1821)
!1830 = !DILocation(line: 457, column: 17, scope: !1821)
!1831 = !DILocation(line: 464, column: 25, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !451, line: 458, column: 19)
!1833 = !DILocation(line: 468, column: 21, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !451, line: 468, column: 21)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !451, line: 468, column: 21)
!1836 = !DILocation(line: 468, column: 21, scope: !1835)
!1837 = !DILocation(line: 469, column: 21, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !451, line: 469, column: 21)
!1839 = distinct !DILexicalBlock(scope: !1832, file: !451, line: 469, column: 21)
!1840 = !DILocation(line: 469, column: 21, scope: !1839)
!1841 = !DILocation(line: 470, column: 21, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !451, line: 470, column: 21)
!1843 = distinct !DILexicalBlock(scope: !1832, file: !451, line: 470, column: 21)
!1844 = !DILocation(line: 470, column: 21, scope: !1843)
!1845 = !DILocation(line: 471, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !451, line: 471, column: 21)
!1847 = distinct !DILexicalBlock(scope: !1832, file: !451, line: 471, column: 21)
!1848 = !DILocation(line: 471, column: 21, scope: !1847)
!1849 = !DILocation(line: 472, column: 21, scope: !1832)
!1850 = !DILocation(line: 482, column: 33, scope: !1649)
!1851 = !DILocation(line: 483, column: 33, scope: !1649)
!1852 = !DILocation(line: 485, column: 33, scope: !1649)
!1853 = !DILocation(line: 486, column: 33, scope: !1649)
!1854 = !DILocation(line: 487, column: 33, scope: !1649)
!1855 = !DILocation(line: 490, column: 17, scope: !1649)
!1856 = !DILocation(line: 492, column: 21, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !451, line: 491, column: 15)
!1858 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 490, column: 17)
!1859 = !DILocation(line: 499, column: 35, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 499, column: 17)
!1861 = !DILocation(line: 0, scope: !1649)
!1862 = !DILocation(line: 502, column: 11, scope: !1649)
!1863 = !DILocation(line: 504, column: 17, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 503, column: 17)
!1865 = !DILocation(line: 507, column: 11, scope: !1649)
!1866 = !DILocation(line: 508, column: 17, scope: !1649)
!1867 = !DILocation(line: 517, column: 15, scope: !1626)
!1868 = !DILocation(line: 517, column: 40, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 517, column: 15)
!1870 = !DILocation(line: 517, column: 47, scope: !1869)
!1871 = !DILocation(line: 517, column: 18, scope: !1869)
!1872 = !DILocation(line: 521, column: 17, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 521, column: 15)
!1874 = !DILocation(line: 521, column: 15, scope: !1626)
!1875 = !DILocation(line: 525, column: 11, scope: !1626)
!1876 = !DILocation(line: 537, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 536, column: 15)
!1878 = !DILocation(line: 536, column: 15, scope: !1626)
!1879 = !DILocation(line: 544, column: 15, scope: !1626)
!1880 = !DILocation(line: 546, column: 19, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !451, line: 545, column: 13)
!1882 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 544, column: 15)
!1883 = !DILocation(line: 549, column: 19, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !451, line: 549, column: 19)
!1885 = !DILocation(line: 549, column: 30, scope: !1884)
!1886 = !DILocation(line: 558, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !451, line: 558, column: 15)
!1888 = distinct !DILexicalBlock(scope: !1881, file: !451, line: 558, column: 15)
!1889 = !DILocation(line: 558, column: 15, scope: !1888)
!1890 = !DILocation(line: 559, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !451, line: 559, column: 15)
!1892 = distinct !DILexicalBlock(scope: !1881, file: !451, line: 559, column: 15)
!1893 = !DILocation(line: 559, column: 15, scope: !1892)
!1894 = !DILocation(line: 560, column: 15, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1896, file: !451, line: 560, column: 15)
!1896 = distinct !DILexicalBlock(scope: !1881, file: !451, line: 560, column: 15)
!1897 = !DILocation(line: 560, column: 15, scope: !1896)
!1898 = !DILocation(line: 562, column: 13, scope: !1881)
!1899 = !DILocation(line: 602, column: 17, scope: !1625)
!1900 = !DILocation(line: 0, scope: !1625)
!1901 = !DILocation(line: 605, column: 29, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1630, file: !451, line: 603, column: 15)
!1903 = !DILocation(line: 605, column: 41, scope: !1902)
!1904 = !DILocation(line: 606, column: 15, scope: !1902)
!1905 = !DILocation(line: 609, column: 17, scope: !1629)
!1906 = !DILocation(line: 609, column: 27, scope: !1629)
!1907 = !DILocation(line: 0, scope: !1681, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 609, column: 32, scope: !1629)
!1909 = !DILocation(line: 0, scope: !1689, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 1137, column: 3, scope: !1681, inlinedAt: !1908)
!1911 = !DILocation(line: 59, column: 10, scope: !1689, inlinedAt: !1910)
!1912 = !DILocation(line: 613, column: 29, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 613, column: 21)
!1914 = !DILocation(line: 613, column: 21, scope: !1629)
!1915 = !DILocation(line: 614, column: 29, scope: !1913)
!1916 = !DILocation(line: 614, column: 19, scope: !1913)
!1917 = !DILocation(line: 618, column: 21, scope: !1632)
!1918 = !DILocation(line: 620, column: 54, scope: !1632)
!1919 = !DILocation(line: 0, scope: !1632)
!1920 = !DILocation(line: 619, column: 36, scope: !1632)
!1921 = !DILocation(line: 621, column: 25, scope: !1632)
!1922 = !DILocation(line: 631, column: 38, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1641, file: !451, line: 629, column: 23)
!1924 = !DILocation(line: 631, column: 48, scope: !1923)
!1925 = !DILocation(line: 626, column: 25, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1642, file: !451, line: 624, column: 23)
!1927 = !DILocation(line: 631, column: 51, scope: !1923)
!1928 = !DILocation(line: 631, column: 25, scope: !1923)
!1929 = !DILocation(line: 632, column: 28, scope: !1923)
!1930 = !DILocation(line: 631, column: 34, scope: !1923)
!1931 = distinct !{!1931, !1928, !1929, !865}
!1932 = !DILocation(line: 646, column: 29, scope: !1639)
!1933 = !DILocation(line: 0, scope: !1637)
!1934 = !DILocation(line: 649, column: 49, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1637, file: !451, line: 648, column: 29)
!1936 = !DILocation(line: 649, column: 39, scope: !1935)
!1937 = !DILocation(line: 649, column: 31, scope: !1935)
!1938 = !DILocation(line: 648, column: 60, scope: !1935)
!1939 = !DILocation(line: 648, column: 50, scope: !1935)
!1940 = !DILocation(line: 648, column: 29, scope: !1637)
!1941 = distinct !{!1941, !1940, !1942, !865}
!1942 = !DILocation(line: 654, column: 33, scope: !1637)
!1943 = !DILocation(line: 657, column: 43, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1640, file: !451, line: 657, column: 29)
!1945 = !DILocalVariable(name: "wc", arg: 1, scope: !1946, file: !1947, line: 865, type: !1950)
!1946 = distinct !DISubprogram(name: "c32isprint", scope: !1947, file: !1947, line: 865, type: !1948, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1952)
!1947 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!108, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1951, line: 20, baseType: !78)
!1951 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1952 = !{!1945}
!1953 = !DILocation(line: 0, scope: !1946, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 657, column: 31, scope: !1944)
!1955 = !DILocation(line: 871, column: 10, scope: !1946, inlinedAt: !1954)
!1956 = !DILocation(line: 657, column: 31, scope: !1944)
!1957 = !DILocation(line: 664, column: 23, scope: !1632)
!1958 = !DILocation(line: 665, column: 19, scope: !1633)
!1959 = !DILocation(line: 666, column: 15, scope: !1630)
!1960 = !DILocation(line: 753, column: 2, scope: !1586)
!1961 = !DILocation(line: 756, column: 51, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 756, column: 7)
!1963 = !DILocation(line: 0, scope: !1630)
!1964 = !DILocation(line: 670, column: 19, scope: !1646)
!1965 = !DILocation(line: 670, column: 23, scope: !1646)
!1966 = !DILocation(line: 674, column: 33, scope: !1645)
!1967 = !DILocation(line: 0, scope: !1645)
!1968 = !DILocation(line: 676, column: 17, scope: !1645)
!1969 = !DILocation(line: 398, column: 12, scope: !1619)
!1970 = !DILocation(line: 678, column: 43, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !451, line: 678, column: 25)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !451, line: 677, column: 19)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !451, line: 676, column: 17)
!1974 = distinct !DILexicalBlock(scope: !1645, file: !451, line: 676, column: 17)
!1975 = !DILocation(line: 680, column: 25, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !451, line: 680, column: 25)
!1977 = distinct !DILexicalBlock(scope: !1971, file: !451, line: 679, column: 23)
!1978 = !DILocation(line: 680, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1976, file: !451, line: 680, column: 25)
!1980 = !DILocation(line: 680, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !451, line: 680, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 680, column: 25)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !451, line: 680, column: 25)
!1984 = !DILocation(line: 680, column: 25, scope: !1982)
!1985 = !DILocation(line: 680, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !451, line: 680, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 680, column: 25)
!1988 = !DILocation(line: 680, column: 25, scope: !1987)
!1989 = !DILocation(line: 680, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !451, line: 680, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 680, column: 25)
!1992 = !DILocation(line: 680, column: 25, scope: !1991)
!1993 = !DILocation(line: 680, column: 25, scope: !1983)
!1994 = !DILocation(line: 680, column: 25, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !451, line: 680, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1976, file: !451, line: 680, column: 25)
!1997 = !DILocation(line: 680, column: 25, scope: !1996)
!1998 = !DILocation(line: 681, column: 25, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !451, line: 681, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1977, file: !451, line: 681, column: 25)
!2001 = !DILocation(line: 681, column: 25, scope: !2000)
!2002 = !DILocation(line: 682, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !451, line: 682, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1977, file: !451, line: 682, column: 25)
!2005 = !DILocation(line: 682, column: 25, scope: !2004)
!2006 = !DILocation(line: 683, column: 38, scope: !1977)
!2007 = !DILocation(line: 683, column: 33, scope: !1977)
!2008 = !DILocation(line: 684, column: 23, scope: !1977)
!2009 = !DILocation(line: 685, column: 30, scope: !1971)
!2010 = !DILocation(line: 687, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !451, line: 687, column: 25)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !451, line: 687, column: 25)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !451, line: 686, column: 23)
!2014 = distinct !DILexicalBlock(scope: !1971, file: !451, line: 685, column: 30)
!2015 = !DILocation(line: 687, column: 25, scope: !2012)
!2016 = !DILocation(line: 689, column: 23, scope: !2013)
!2017 = !DILocation(line: 690, column: 35, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1972, file: !451, line: 690, column: 25)
!2019 = !DILocation(line: 690, column: 30, scope: !2018)
!2020 = !DILocation(line: 690, column: 25, scope: !1972)
!2021 = !DILocation(line: 692, column: 21, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !451, line: 692, column: 21)
!2023 = distinct !DILexicalBlock(scope: !1972, file: !451, line: 692, column: 21)
!2024 = !DILocation(line: 692, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !451, line: 692, column: 21)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !451, line: 692, column: 21)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !451, line: 692, column: 21)
!2028 = !DILocation(line: 692, column: 21, scope: !2026)
!2029 = !DILocation(line: 692, column: 21, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !451, line: 692, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !451, line: 692, column: 21)
!2032 = !DILocation(line: 692, column: 21, scope: !2031)
!2033 = !DILocation(line: 692, column: 21, scope: !2027)
!2034 = !DILocation(line: 0, scope: !1972)
!2035 = !DILocation(line: 693, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !451, line: 693, column: 21)
!2037 = distinct !DILexicalBlock(scope: !1972, file: !451, line: 693, column: 21)
!2038 = !DILocation(line: 693, column: 21, scope: !2037)
!2039 = !DILocation(line: 694, column: 25, scope: !1972)
!2040 = !DILocation(line: 676, column: 17, scope: !1973)
!2041 = distinct !{!2041, !2042, !2043}
!2042 = !DILocation(line: 676, column: 17, scope: !1974)
!2043 = !DILocation(line: 695, column: 19, scope: !1974)
!2044 = !DILocation(line: 409, column: 30, scope: !1754)
!2045 = !DILocation(line: 702, column: 34, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 702, column: 11)
!2047 = !DILocation(line: 704, column: 14, scope: !2046)
!2048 = !DILocation(line: 705, column: 14, scope: !2046)
!2049 = !DILocation(line: 705, column: 35, scope: !2046)
!2050 = !DILocation(line: 705, column: 17, scope: !2046)
!2051 = !DILocation(line: 705, column: 47, scope: !2046)
!2052 = !DILocation(line: 705, column: 65, scope: !2046)
!2053 = !DILocation(line: 706, column: 11, scope: !2046)
!2054 = !DILocation(line: 702, column: 11, scope: !1619)
!2055 = !DILocation(line: 395, column: 15, scope: !1617)
!2056 = !DILocation(line: 709, column: 5, scope: !1619)
!2057 = !DILocation(line: 710, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 710, column: 7)
!2059 = !DILocation(line: 710, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2058, file: !451, line: 710, column: 7)
!2061 = !DILocation(line: 710, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !451, line: 710, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !451, line: 710, column: 7)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !451, line: 710, column: 7)
!2065 = !DILocation(line: 710, column: 7, scope: !2063)
!2066 = !DILocation(line: 710, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !451, line: 710, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !451, line: 710, column: 7)
!2069 = !DILocation(line: 710, column: 7, scope: !2068)
!2070 = !DILocation(line: 710, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !451, line: 710, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2064, file: !451, line: 710, column: 7)
!2073 = !DILocation(line: 710, column: 7, scope: !2072)
!2074 = !DILocation(line: 710, column: 7, scope: !2064)
!2075 = !DILocation(line: 710, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !451, line: 710, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2058, file: !451, line: 710, column: 7)
!2078 = !DILocation(line: 710, column: 7, scope: !2077)
!2079 = !DILocation(line: 712, column: 5, scope: !1619)
!2080 = !DILocation(line: 713, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !451, line: 713, column: 7)
!2082 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 713, column: 7)
!2083 = !DILocation(line: 417, column: 21, scope: !1619)
!2084 = !DILocation(line: 713, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !451, line: 713, column: 7)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !451, line: 713, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !451, line: 713, column: 7)
!2088 = !DILocation(line: 713, column: 7, scope: !2086)
!2089 = !DILocation(line: 713, column: 7, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !451, line: 713, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !451, line: 713, column: 7)
!2092 = !DILocation(line: 713, column: 7, scope: !2091)
!2093 = !DILocation(line: 713, column: 7, scope: !2087)
!2094 = !DILocation(line: 714, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !451, line: 714, column: 7)
!2096 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 714, column: 7)
!2097 = !DILocation(line: 714, column: 7, scope: !2096)
!2098 = !DILocation(line: 716, column: 11, scope: !1619)
!2099 = !DILocation(line: 718, column: 5, scope: !1620)
!2100 = !DILocation(line: 395, column: 82, scope: !1620)
!2101 = !DILocation(line: 395, column: 3, scope: !1620)
!2102 = distinct !{!2102, !1750, !2103, !865}
!2103 = !DILocation(line: 718, column: 5, scope: !1617)
!2104 = !DILocation(line: 720, column: 11, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 720, column: 7)
!2106 = !DILocation(line: 720, column: 16, scope: !2105)
!2107 = !DILocation(line: 728, column: 51, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 728, column: 7)
!2109 = !DILocation(line: 731, column: 11, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2108, file: !451, line: 730, column: 5)
!2111 = !DILocation(line: 732, column: 16, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2110, file: !451, line: 731, column: 11)
!2113 = !DILocation(line: 732, column: 9, scope: !2112)
!2114 = !DILocation(line: 736, column: 18, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !451, line: 736, column: 16)
!2116 = !DILocation(line: 736, column: 29, scope: !2115)
!2117 = !DILocation(line: 745, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 745, column: 7)
!2119 = !DILocation(line: 745, column: 20, scope: !2118)
!2120 = !DILocation(line: 746, column: 12, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !451, line: 746, column: 5)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !451, line: 746, column: 5)
!2123 = !DILocation(line: 746, column: 5, scope: !2122)
!2124 = !DILocation(line: 747, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !451, line: 747, column: 7)
!2126 = distinct !DILexicalBlock(scope: !2121, file: !451, line: 747, column: 7)
!2127 = !DILocation(line: 747, column: 7, scope: !2126)
!2128 = !DILocation(line: 746, column: 39, scope: !2121)
!2129 = distinct !{!2129, !2123, !2130, !865}
!2130 = !DILocation(line: 747, column: 7, scope: !2122)
!2131 = !DILocation(line: 749, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 749, column: 7)
!2133 = !DILocation(line: 749, column: 7, scope: !1586)
!2134 = !DILocation(line: 750, column: 5, scope: !2132)
!2135 = !DILocation(line: 750, column: 17, scope: !2132)
!2136 = !DILocation(line: 756, column: 21, scope: !1962)
!2137 = !DILocation(line: 760, column: 42, scope: !1586)
!2138 = !DILocation(line: 758, column: 10, scope: !1586)
!2139 = !DILocation(line: 758, column: 3, scope: !1586)
!2140 = !DILocation(line: 762, column: 1, scope: !1586)
!2141 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !939, file: !939, line: 98, type: !2142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!110}
!2144 = !DISubprogram(name: "strlen", scope: !935, file: !935, line: 407, type: !2145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!112, !72}
!2147 = !DISubprogram(name: "iswprint", scope: !2148, file: !2148, line: 120, type: !1948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2148 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2149 = distinct !DISubprogram(name: "quotearg_alloc", scope: !451, file: !451, line: 788, type: !2150, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!255, !72, !110, !1479}
!2152 = !{!2153, !2154, !2155}
!2153 = !DILocalVariable(name: "arg", arg: 1, scope: !2149, file: !451, line: 788, type: !72)
!2154 = !DILocalVariable(name: "argsize", arg: 2, scope: !2149, file: !451, line: 788, type: !110)
!2155 = !DILocalVariable(name: "o", arg: 3, scope: !2149, file: !451, line: 789, type: !1479)
!2156 = !DILocation(line: 0, scope: !2149)
!2157 = !DILocalVariable(name: "arg", arg: 1, scope: !2158, file: !451, line: 801, type: !72)
!2158 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !451, file: !451, line: 801, type: !2159, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2161)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!255, !72, !110, !693, !1479}
!2161 = !{!2157, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2162 = !DILocalVariable(name: "argsize", arg: 2, scope: !2158, file: !451, line: 801, type: !110)
!2163 = !DILocalVariable(name: "size", arg: 3, scope: !2158, file: !451, line: 801, type: !693)
!2164 = !DILocalVariable(name: "o", arg: 4, scope: !2158, file: !451, line: 802, type: !1479)
!2165 = !DILocalVariable(name: "p", scope: !2158, file: !451, line: 804, type: !1479)
!2166 = !DILocalVariable(name: "saved_errno", scope: !2158, file: !451, line: 805, type: !108)
!2167 = !DILocalVariable(name: "flags", scope: !2158, file: !451, line: 807, type: !108)
!2168 = !DILocalVariable(name: "bufsize", scope: !2158, file: !451, line: 808, type: !110)
!2169 = !DILocalVariable(name: "buf", scope: !2158, file: !451, line: 812, type: !255)
!2170 = !DILocation(line: 0, scope: !2158, inlinedAt: !2171)
!2171 = distinct !DILocation(line: 791, column: 10, scope: !2149)
!2172 = !DILocation(line: 804, column: 37, scope: !2158, inlinedAt: !2171)
!2173 = !DILocation(line: 805, column: 21, scope: !2158, inlinedAt: !2171)
!2174 = !DILocation(line: 807, column: 18, scope: !2158, inlinedAt: !2171)
!2175 = !DILocation(line: 807, column: 24, scope: !2158, inlinedAt: !2171)
!2176 = !DILocation(line: 808, column: 72, scope: !2158, inlinedAt: !2171)
!2177 = !DILocation(line: 809, column: 56, scope: !2158, inlinedAt: !2171)
!2178 = !DILocation(line: 810, column: 49, scope: !2158, inlinedAt: !2171)
!2179 = !DILocation(line: 811, column: 49, scope: !2158, inlinedAt: !2171)
!2180 = !DILocation(line: 808, column: 20, scope: !2158, inlinedAt: !2171)
!2181 = !DILocation(line: 811, column: 62, scope: !2158, inlinedAt: !2171)
!2182 = !DILocation(line: 812, column: 15, scope: !2158, inlinedAt: !2171)
!2183 = !DILocation(line: 813, column: 60, scope: !2158, inlinedAt: !2171)
!2184 = !DILocation(line: 815, column: 32, scope: !2158, inlinedAt: !2171)
!2185 = !DILocation(line: 815, column: 47, scope: !2158, inlinedAt: !2171)
!2186 = !DILocation(line: 813, column: 3, scope: !2158, inlinedAt: !2171)
!2187 = !DILocation(line: 816, column: 9, scope: !2158, inlinedAt: !2171)
!2188 = !DILocation(line: 791, column: 3, scope: !2149)
!2189 = !DILocation(line: 0, scope: !2158)
!2190 = !DILocation(line: 804, column: 37, scope: !2158)
!2191 = !DILocation(line: 805, column: 21, scope: !2158)
!2192 = !DILocation(line: 807, column: 18, scope: !2158)
!2193 = !DILocation(line: 807, column: 27, scope: !2158)
!2194 = !DILocation(line: 807, column: 24, scope: !2158)
!2195 = !DILocation(line: 808, column: 72, scope: !2158)
!2196 = !DILocation(line: 809, column: 56, scope: !2158)
!2197 = !DILocation(line: 810, column: 49, scope: !2158)
!2198 = !DILocation(line: 811, column: 49, scope: !2158)
!2199 = !DILocation(line: 808, column: 20, scope: !2158)
!2200 = !DILocation(line: 811, column: 62, scope: !2158)
!2201 = !DILocation(line: 812, column: 15, scope: !2158)
!2202 = !DILocation(line: 813, column: 60, scope: !2158)
!2203 = !DILocation(line: 815, column: 32, scope: !2158)
!2204 = !DILocation(line: 815, column: 47, scope: !2158)
!2205 = !DILocation(line: 813, column: 3, scope: !2158)
!2206 = !DILocation(line: 816, column: 9, scope: !2158)
!2207 = !DILocation(line: 817, column: 7, scope: !2158)
!2208 = !DILocation(line: 818, column: 11, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2158, file: !451, line: 817, column: 7)
!2210 = !{!1203, !1203, i64 0}
!2211 = !DILocation(line: 818, column: 5, scope: !2209)
!2212 = !DILocation(line: 819, column: 3, scope: !2158)
!2213 = distinct !DISubprogram(name: "quotearg_free", scope: !451, file: !451, line: 837, type: !383, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2214)
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "sv", scope: !2213, file: !451, line: 839, type: !538)
!2216 = !DILocalVariable(name: "i", scope: !2217, file: !451, line: 840, type: !108)
!2217 = distinct !DILexicalBlock(scope: !2213, file: !451, line: 840, column: 3)
!2218 = !DILocation(line: 839, column: 24, scope: !2213)
!2219 = !DILocation(line: 0, scope: !2213)
!2220 = !DILocation(line: 0, scope: !2217)
!2221 = !DILocation(line: 840, column: 21, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2217, file: !451, line: 840, column: 3)
!2223 = !DILocation(line: 840, column: 3, scope: !2217)
!2224 = !DILocation(line: 842, column: 13, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2213, file: !451, line: 842, column: 7)
!2226 = !{!2227, !759, i64 8}
!2227 = !{!"slotvec", !1203, i64 0, !759, i64 8}
!2228 = !DILocation(line: 842, column: 17, scope: !2225)
!2229 = !DILocation(line: 842, column: 7, scope: !2213)
!2230 = !DILocation(line: 841, column: 17, scope: !2222)
!2231 = !DILocation(line: 841, column: 5, scope: !2222)
!2232 = !DILocation(line: 840, column: 32, scope: !2222)
!2233 = distinct !{!2233, !2223, !2234, !865}
!2234 = !DILocation(line: 841, column: 20, scope: !2217)
!2235 = !DILocation(line: 844, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2225, file: !451, line: 843, column: 5)
!2237 = !DILocation(line: 845, column: 21, scope: !2236)
!2238 = !{!2227, !1203, i64 0}
!2239 = !DILocation(line: 846, column: 20, scope: !2236)
!2240 = !DILocation(line: 847, column: 5, scope: !2236)
!2241 = !DILocation(line: 848, column: 10, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2213, file: !451, line: 848, column: 7)
!2243 = !DILocation(line: 848, column: 7, scope: !2213)
!2244 = !DILocation(line: 850, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2242, file: !451, line: 849, column: 5)
!2246 = !DILocation(line: 851, column: 15, scope: !2245)
!2247 = !DILocation(line: 852, column: 5, scope: !2245)
!2248 = !DILocation(line: 853, column: 10, scope: !2213)
!2249 = !DILocation(line: 854, column: 1, scope: !2213)
!2250 = !DISubprogram(name: "free", scope: !1433, file: !1433, line: 786, type: !2251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !107}
!2253 = distinct !DISubprogram(name: "quotearg_n", scope: !451, file: !451, line: 919, type: !932, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2254)
!2254 = !{!2255, !2256}
!2255 = !DILocalVariable(name: "n", arg: 1, scope: !2253, file: !451, line: 919, type: !108)
!2256 = !DILocalVariable(name: "arg", arg: 2, scope: !2253, file: !451, line: 919, type: !72)
!2257 = !DILocation(line: 0, scope: !2253)
!2258 = !DILocation(line: 921, column: 10, scope: !2253)
!2259 = !DILocation(line: 921, column: 3, scope: !2253)
!2260 = distinct !DISubprogram(name: "quotearg_n_options", scope: !451, file: !451, line: 866, type: !2261, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2263)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!255, !108, !72, !110, !1479}
!2263 = !{!2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2274, !2275, !2277, !2278, !2279}
!2264 = !DILocalVariable(name: "n", arg: 1, scope: !2260, file: !451, line: 866, type: !108)
!2265 = !DILocalVariable(name: "arg", arg: 2, scope: !2260, file: !451, line: 866, type: !72)
!2266 = !DILocalVariable(name: "argsize", arg: 3, scope: !2260, file: !451, line: 866, type: !110)
!2267 = !DILocalVariable(name: "options", arg: 4, scope: !2260, file: !451, line: 867, type: !1479)
!2268 = !DILocalVariable(name: "saved_errno", scope: !2260, file: !451, line: 869, type: !108)
!2269 = !DILocalVariable(name: "sv", scope: !2260, file: !451, line: 871, type: !538)
!2270 = !DILocalVariable(name: "nslots_max", scope: !2260, file: !451, line: 873, type: !108)
!2271 = !DILocalVariable(name: "preallocated", scope: !2272, file: !451, line: 879, type: !234)
!2272 = distinct !DILexicalBlock(scope: !2273, file: !451, line: 878, column: 5)
!2273 = distinct !DILexicalBlock(scope: !2260, file: !451, line: 877, column: 7)
!2274 = !DILocalVariable(name: "new_nslots", scope: !2272, file: !451, line: 880, type: !706)
!2275 = !DILocalVariable(name: "size", scope: !2276, file: !451, line: 891, type: !110)
!2276 = distinct !DILexicalBlock(scope: !2260, file: !451, line: 890, column: 3)
!2277 = !DILocalVariable(name: "val", scope: !2276, file: !451, line: 892, type: !255)
!2278 = !DILocalVariable(name: "flags", scope: !2276, file: !451, line: 894, type: !108)
!2279 = !DILocalVariable(name: "qsize", scope: !2276, file: !451, line: 895, type: !110)
!2280 = !DILocation(line: 0, scope: !2260)
!2281 = !DILocation(line: 869, column: 21, scope: !2260)
!2282 = !DILocation(line: 871, column: 24, scope: !2260)
!2283 = !DILocation(line: 874, column: 17, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2260, file: !451, line: 874, column: 7)
!2285 = !DILocation(line: 875, column: 5, scope: !2284)
!2286 = !DILocation(line: 877, column: 7, scope: !2273)
!2287 = !DILocation(line: 877, column: 14, scope: !2273)
!2288 = !DILocation(line: 877, column: 7, scope: !2260)
!2289 = !DILocation(line: 879, column: 31, scope: !2272)
!2290 = !DILocation(line: 0, scope: !2272)
!2291 = !DILocation(line: 880, column: 7, scope: !2272)
!2292 = !DILocation(line: 880, column: 26, scope: !2272)
!2293 = !DILocation(line: 880, column: 13, scope: !2272)
!2294 = !DILocation(line: 882, column: 31, scope: !2272)
!2295 = !DILocation(line: 883, column: 33, scope: !2272)
!2296 = !DILocation(line: 883, column: 42, scope: !2272)
!2297 = !DILocation(line: 883, column: 31, scope: !2272)
!2298 = !DILocation(line: 882, column: 22, scope: !2272)
!2299 = !DILocation(line: 882, column: 15, scope: !2272)
!2300 = !DILocation(line: 884, column: 11, scope: !2272)
!2301 = !DILocation(line: 885, column: 15, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2272, file: !451, line: 884, column: 11)
!2303 = !{i64 0, i64 8, !2210, i64 8, i64 8, !758}
!2304 = !DILocation(line: 885, column: 9, scope: !2302)
!2305 = !DILocation(line: 886, column: 20, scope: !2272)
!2306 = !DILocation(line: 886, column: 18, scope: !2272)
!2307 = !DILocation(line: 886, column: 32, scope: !2272)
!2308 = !DILocation(line: 886, column: 43, scope: !2272)
!2309 = !DILocation(line: 886, column: 53, scope: !2272)
!2310 = !DILocation(line: 0, scope: !1689, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 886, column: 7, scope: !2272)
!2312 = !DILocation(line: 59, column: 10, scope: !1689, inlinedAt: !2311)
!2313 = !DILocation(line: 887, column: 16, scope: !2272)
!2314 = !DILocation(line: 887, column: 14, scope: !2272)
!2315 = !DILocation(line: 888, column: 5, scope: !2273)
!2316 = !DILocation(line: 888, column: 5, scope: !2272)
!2317 = !DILocation(line: 891, column: 19, scope: !2276)
!2318 = !DILocation(line: 891, column: 25, scope: !2276)
!2319 = !DILocation(line: 0, scope: !2276)
!2320 = !DILocation(line: 892, column: 23, scope: !2276)
!2321 = !DILocation(line: 894, column: 26, scope: !2276)
!2322 = !DILocation(line: 894, column: 32, scope: !2276)
!2323 = !DILocation(line: 896, column: 55, scope: !2276)
!2324 = !DILocation(line: 897, column: 55, scope: !2276)
!2325 = !DILocation(line: 898, column: 55, scope: !2276)
!2326 = !DILocation(line: 899, column: 55, scope: !2276)
!2327 = !DILocation(line: 895, column: 20, scope: !2276)
!2328 = !DILocation(line: 901, column: 14, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2276, file: !451, line: 901, column: 9)
!2330 = !DILocation(line: 901, column: 9, scope: !2276)
!2331 = !DILocation(line: 903, column: 35, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2329, file: !451, line: 902, column: 7)
!2333 = !DILocation(line: 903, column: 20, scope: !2332)
!2334 = !DILocation(line: 904, column: 17, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !451, line: 904, column: 13)
!2336 = !DILocation(line: 904, column: 13, scope: !2332)
!2337 = !DILocation(line: 905, column: 11, scope: !2335)
!2338 = !DILocation(line: 906, column: 27, scope: !2332)
!2339 = !DILocation(line: 906, column: 19, scope: !2332)
!2340 = !DILocation(line: 907, column: 69, scope: !2332)
!2341 = !DILocation(line: 909, column: 44, scope: !2332)
!2342 = !DILocation(line: 910, column: 44, scope: !2332)
!2343 = !DILocation(line: 907, column: 9, scope: !2332)
!2344 = !DILocation(line: 911, column: 7, scope: !2332)
!2345 = !DILocation(line: 913, column: 11, scope: !2276)
!2346 = !DILocation(line: 914, column: 5, scope: !2276)
!2347 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !451, file: !451, line: 925, type: !2348, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!255, !108, !72, !110}
!2350 = !{!2351, !2352, !2353}
!2351 = !DILocalVariable(name: "n", arg: 1, scope: !2347, file: !451, line: 925, type: !108)
!2352 = !DILocalVariable(name: "arg", arg: 2, scope: !2347, file: !451, line: 925, type: !72)
!2353 = !DILocalVariable(name: "argsize", arg: 3, scope: !2347, file: !451, line: 925, type: !110)
!2354 = !DILocation(line: 0, scope: !2347)
!2355 = !DILocation(line: 927, column: 10, scope: !2347)
!2356 = !DILocation(line: 927, column: 3, scope: !2347)
!2357 = distinct !DISubprogram(name: "quotearg", scope: !451, file: !451, line: 931, type: !941, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2358)
!2358 = !{!2359}
!2359 = !DILocalVariable(name: "arg", arg: 1, scope: !2357, file: !451, line: 931, type: !72)
!2360 = !DILocation(line: 0, scope: !2357)
!2361 = !DILocation(line: 0, scope: !2253, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 933, column: 10, scope: !2357)
!2363 = !DILocation(line: 921, column: 10, scope: !2253, inlinedAt: !2362)
!2364 = !DILocation(line: 933, column: 3, scope: !2357)
!2365 = distinct !DISubprogram(name: "quotearg_mem", scope: !451, file: !451, line: 937, type: !2366, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2368)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!255, !72, !110}
!2368 = !{!2369, !2370}
!2369 = !DILocalVariable(name: "arg", arg: 1, scope: !2365, file: !451, line: 937, type: !72)
!2370 = !DILocalVariable(name: "argsize", arg: 2, scope: !2365, file: !451, line: 937, type: !110)
!2371 = !DILocation(line: 0, scope: !2365)
!2372 = !DILocation(line: 0, scope: !2347, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 939, column: 10, scope: !2365)
!2374 = !DILocation(line: 927, column: 10, scope: !2347, inlinedAt: !2373)
!2375 = !DILocation(line: 939, column: 3, scope: !2365)
!2376 = distinct !DISubprogram(name: "quotearg_n_style", scope: !451, file: !451, line: 943, type: !2377, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!255, !108, !76, !72}
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DILocalVariable(name: "n", arg: 1, scope: !2376, file: !451, line: 943, type: !108)
!2381 = !DILocalVariable(name: "s", arg: 2, scope: !2376, file: !451, line: 943, type: !76)
!2382 = !DILocalVariable(name: "arg", arg: 3, scope: !2376, file: !451, line: 943, type: !72)
!2383 = !DILocalVariable(name: "o", scope: !2376, file: !451, line: 945, type: !1480)
!2384 = !DILocation(line: 0, scope: !2376)
!2385 = !DILocation(line: 945, column: 3, scope: !2376)
!2386 = !DILocation(line: 945, column: 32, scope: !2376)
!2387 = !{!2388}
!2388 = distinct !{!2388, !2389, !"quoting_options_from_style: argument 0"}
!2389 = distinct !{!2389, !"quoting_options_from_style"}
!2390 = !DILocation(line: 945, column: 36, scope: !2376)
!2391 = !DILocalVariable(name: "style", arg: 1, scope: !2392, file: !451, line: 183, type: !76)
!2392 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !451, file: !451, line: 183, type: !2393, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!490, !76}
!2395 = !{!2391, !2396}
!2396 = !DILocalVariable(name: "o", scope: !2392, file: !451, line: 185, type: !490)
!2397 = !DILocation(line: 0, scope: !2392, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 945, column: 36, scope: !2376)
!2399 = !DILocation(line: 185, column: 26, scope: !2392, inlinedAt: !2398)
!2400 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2398)
!2401 = distinct !DILexicalBlock(scope: !2392, file: !451, line: 186, column: 7)
!2402 = !DILocation(line: 186, column: 7, scope: !2392, inlinedAt: !2398)
!2403 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2398)
!2404 = !DILocation(line: 188, column: 11, scope: !2392, inlinedAt: !2398)
!2405 = !DILocation(line: 946, column: 10, scope: !2376)
!2406 = !DILocation(line: 947, column: 1, scope: !2376)
!2407 = !DILocation(line: 946, column: 3, scope: !2376)
!2408 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !451, file: !451, line: 950, type: !2409, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!255, !108, !76, !72, !110}
!2411 = !{!2412, !2413, !2414, !2415, !2416}
!2412 = !DILocalVariable(name: "n", arg: 1, scope: !2408, file: !451, line: 950, type: !108)
!2413 = !DILocalVariable(name: "s", arg: 2, scope: !2408, file: !451, line: 950, type: !76)
!2414 = !DILocalVariable(name: "arg", arg: 3, scope: !2408, file: !451, line: 951, type: !72)
!2415 = !DILocalVariable(name: "argsize", arg: 4, scope: !2408, file: !451, line: 951, type: !110)
!2416 = !DILocalVariable(name: "o", scope: !2408, file: !451, line: 953, type: !1480)
!2417 = !DILocation(line: 0, scope: !2408)
!2418 = !DILocation(line: 953, column: 3, scope: !2408)
!2419 = !DILocation(line: 953, column: 32, scope: !2408)
!2420 = !{!2421}
!2421 = distinct !{!2421, !2422, !"quoting_options_from_style: argument 0"}
!2422 = distinct !{!2422, !"quoting_options_from_style"}
!2423 = !DILocation(line: 953, column: 36, scope: !2408)
!2424 = !DILocation(line: 0, scope: !2392, inlinedAt: !2425)
!2425 = distinct !DILocation(line: 953, column: 36, scope: !2408)
!2426 = !DILocation(line: 185, column: 26, scope: !2392, inlinedAt: !2425)
!2427 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2425)
!2428 = !DILocation(line: 186, column: 7, scope: !2392, inlinedAt: !2425)
!2429 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2425)
!2430 = !DILocation(line: 188, column: 11, scope: !2392, inlinedAt: !2425)
!2431 = !DILocation(line: 954, column: 10, scope: !2408)
!2432 = !DILocation(line: 955, column: 1, scope: !2408)
!2433 = !DILocation(line: 954, column: 3, scope: !2408)
!2434 = distinct !DISubprogram(name: "quotearg_style", scope: !451, file: !451, line: 958, type: !2435, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2437)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{!255, !76, !72}
!2437 = !{!2438, !2439}
!2438 = !DILocalVariable(name: "s", arg: 1, scope: !2434, file: !451, line: 958, type: !76)
!2439 = !DILocalVariable(name: "arg", arg: 2, scope: !2434, file: !451, line: 958, type: !72)
!2440 = !DILocation(line: 0, scope: !2434)
!2441 = !DILocation(line: 0, scope: !2376, inlinedAt: !2442)
!2442 = distinct !DILocation(line: 960, column: 10, scope: !2434)
!2443 = !DILocation(line: 945, column: 3, scope: !2376, inlinedAt: !2442)
!2444 = !DILocation(line: 945, column: 32, scope: !2376, inlinedAt: !2442)
!2445 = !{!2446}
!2446 = distinct !{!2446, !2447, !"quoting_options_from_style: argument 0"}
!2447 = distinct !{!2447, !"quoting_options_from_style"}
!2448 = !DILocation(line: 945, column: 36, scope: !2376, inlinedAt: !2442)
!2449 = !DILocation(line: 0, scope: !2392, inlinedAt: !2450)
!2450 = distinct !DILocation(line: 945, column: 36, scope: !2376, inlinedAt: !2442)
!2451 = !DILocation(line: 185, column: 26, scope: !2392, inlinedAt: !2450)
!2452 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2450)
!2453 = !DILocation(line: 186, column: 7, scope: !2392, inlinedAt: !2450)
!2454 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2450)
!2455 = !DILocation(line: 188, column: 11, scope: !2392, inlinedAt: !2450)
!2456 = !DILocation(line: 946, column: 10, scope: !2376, inlinedAt: !2442)
!2457 = !DILocation(line: 947, column: 1, scope: !2376, inlinedAt: !2442)
!2458 = !DILocation(line: 960, column: 3, scope: !2434)
!2459 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !451, file: !451, line: 964, type: !2460, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!255, !76, !72, !110}
!2462 = !{!2463, !2464, !2465}
!2463 = !DILocalVariable(name: "s", arg: 1, scope: !2459, file: !451, line: 964, type: !76)
!2464 = !DILocalVariable(name: "arg", arg: 2, scope: !2459, file: !451, line: 964, type: !72)
!2465 = !DILocalVariable(name: "argsize", arg: 3, scope: !2459, file: !451, line: 964, type: !110)
!2466 = !DILocation(line: 0, scope: !2459)
!2467 = !DILocation(line: 0, scope: !2408, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 966, column: 10, scope: !2459)
!2469 = !DILocation(line: 953, column: 3, scope: !2408, inlinedAt: !2468)
!2470 = !DILocation(line: 953, column: 32, scope: !2408, inlinedAt: !2468)
!2471 = !{!2472}
!2472 = distinct !{!2472, !2473, !"quoting_options_from_style: argument 0"}
!2473 = distinct !{!2473, !"quoting_options_from_style"}
!2474 = !DILocation(line: 953, column: 36, scope: !2408, inlinedAt: !2468)
!2475 = !DILocation(line: 0, scope: !2392, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 953, column: 36, scope: !2408, inlinedAt: !2468)
!2477 = !DILocation(line: 185, column: 26, scope: !2392, inlinedAt: !2476)
!2478 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2476)
!2479 = !DILocation(line: 186, column: 7, scope: !2392, inlinedAt: !2476)
!2480 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2476)
!2481 = !DILocation(line: 188, column: 11, scope: !2392, inlinedAt: !2476)
!2482 = !DILocation(line: 954, column: 10, scope: !2408, inlinedAt: !2468)
!2483 = !DILocation(line: 955, column: 1, scope: !2408, inlinedAt: !2468)
!2484 = !DILocation(line: 966, column: 3, scope: !2459)
!2485 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !451, file: !451, line: 970, type: !2486, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!255, !72, !110, !4}
!2488 = !{!2489, !2490, !2491, !2492}
!2489 = !DILocalVariable(name: "arg", arg: 1, scope: !2485, file: !451, line: 970, type: !72)
!2490 = !DILocalVariable(name: "argsize", arg: 2, scope: !2485, file: !451, line: 970, type: !110)
!2491 = !DILocalVariable(name: "ch", arg: 3, scope: !2485, file: !451, line: 970, type: !4)
!2492 = !DILocalVariable(name: "options", scope: !2485, file: !451, line: 972, type: !490)
!2493 = !DILocation(line: 0, scope: !2485)
!2494 = !DILocation(line: 972, column: 3, scope: !2485)
!2495 = !DILocation(line: 972, column: 26, scope: !2485)
!2496 = !DILocation(line: 973, column: 13, scope: !2485)
!2497 = !{i64 0, i64 4, !827, i64 4, i64 4, !818, i64 8, i64 32, !827, i64 40, i64 8, !758, i64 48, i64 8, !758}
!2498 = !DILocation(line: 0, scope: !1499, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 974, column: 3, scope: !2485)
!2500 = !DILocation(line: 147, column: 41, scope: !1499, inlinedAt: !2499)
!2501 = !DILocation(line: 147, column: 62, scope: !1499, inlinedAt: !2499)
!2502 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2499)
!2503 = !DILocation(line: 148, column: 15, scope: !1499, inlinedAt: !2499)
!2504 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2499)
!2505 = !DILocation(line: 149, column: 24, scope: !1499, inlinedAt: !2499)
!2506 = !DILocation(line: 150, column: 19, scope: !1499, inlinedAt: !2499)
!2507 = !DILocation(line: 150, column: 24, scope: !1499, inlinedAt: !2499)
!2508 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2499)
!2509 = !DILocation(line: 975, column: 10, scope: !2485)
!2510 = !DILocation(line: 976, column: 1, scope: !2485)
!2511 = !DILocation(line: 975, column: 3, scope: !2485)
!2512 = distinct !DISubprogram(name: "quotearg_char", scope: !451, file: !451, line: 979, type: !2513, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2515)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!255, !72, !4}
!2515 = !{!2516, !2517}
!2516 = !DILocalVariable(name: "arg", arg: 1, scope: !2512, file: !451, line: 979, type: !72)
!2517 = !DILocalVariable(name: "ch", arg: 2, scope: !2512, file: !451, line: 979, type: !4)
!2518 = !DILocation(line: 0, scope: !2512)
!2519 = !DILocation(line: 0, scope: !2485, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 981, column: 10, scope: !2512)
!2521 = !DILocation(line: 972, column: 3, scope: !2485, inlinedAt: !2520)
!2522 = !DILocation(line: 972, column: 26, scope: !2485, inlinedAt: !2520)
!2523 = !DILocation(line: 973, column: 13, scope: !2485, inlinedAt: !2520)
!2524 = !DILocation(line: 0, scope: !1499, inlinedAt: !2525)
!2525 = distinct !DILocation(line: 974, column: 3, scope: !2485, inlinedAt: !2520)
!2526 = !DILocation(line: 147, column: 41, scope: !1499, inlinedAt: !2525)
!2527 = !DILocation(line: 147, column: 62, scope: !1499, inlinedAt: !2525)
!2528 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2525)
!2529 = !DILocation(line: 148, column: 15, scope: !1499, inlinedAt: !2525)
!2530 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2525)
!2531 = !DILocation(line: 149, column: 24, scope: !1499, inlinedAt: !2525)
!2532 = !DILocation(line: 150, column: 19, scope: !1499, inlinedAt: !2525)
!2533 = !DILocation(line: 150, column: 24, scope: !1499, inlinedAt: !2525)
!2534 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2525)
!2535 = !DILocation(line: 975, column: 10, scope: !2485, inlinedAt: !2520)
!2536 = !DILocation(line: 976, column: 1, scope: !2485, inlinedAt: !2520)
!2537 = !DILocation(line: 981, column: 3, scope: !2512)
!2538 = distinct !DISubprogram(name: "quotearg_colon", scope: !451, file: !451, line: 985, type: !941, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2539)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "arg", arg: 1, scope: !2538, file: !451, line: 985, type: !72)
!2541 = !DILocation(line: 0, scope: !2538)
!2542 = !DILocation(line: 0, scope: !2512, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 987, column: 10, scope: !2538)
!2544 = !DILocation(line: 0, scope: !2485, inlinedAt: !2545)
!2545 = distinct !DILocation(line: 981, column: 10, scope: !2512, inlinedAt: !2543)
!2546 = !DILocation(line: 972, column: 3, scope: !2485, inlinedAt: !2545)
!2547 = !DILocation(line: 972, column: 26, scope: !2485, inlinedAt: !2545)
!2548 = !DILocation(line: 973, column: 13, scope: !2485, inlinedAt: !2545)
!2549 = !DILocation(line: 0, scope: !1499, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 974, column: 3, scope: !2485, inlinedAt: !2545)
!2551 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2550)
!2552 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2550)
!2553 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2550)
!2554 = !DILocation(line: 975, column: 10, scope: !2485, inlinedAt: !2545)
!2555 = !DILocation(line: 976, column: 1, scope: !2485, inlinedAt: !2545)
!2556 = !DILocation(line: 987, column: 3, scope: !2538)
!2557 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !451, file: !451, line: 991, type: !2366, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2558)
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2557, file: !451, line: 991, type: !72)
!2560 = !DILocalVariable(name: "argsize", arg: 2, scope: !2557, file: !451, line: 991, type: !110)
!2561 = !DILocation(line: 0, scope: !2557)
!2562 = !DILocation(line: 0, scope: !2485, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 993, column: 10, scope: !2557)
!2564 = !DILocation(line: 972, column: 3, scope: !2485, inlinedAt: !2563)
!2565 = !DILocation(line: 972, column: 26, scope: !2485, inlinedAt: !2563)
!2566 = !DILocation(line: 973, column: 13, scope: !2485, inlinedAt: !2563)
!2567 = !DILocation(line: 0, scope: !1499, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 974, column: 3, scope: !2485, inlinedAt: !2563)
!2569 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2568)
!2570 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2568)
!2571 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2568)
!2572 = !DILocation(line: 975, column: 10, scope: !2485, inlinedAt: !2563)
!2573 = !DILocation(line: 976, column: 1, scope: !2485, inlinedAt: !2563)
!2574 = !DILocation(line: 993, column: 3, scope: !2557)
!2575 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !451, file: !451, line: 997, type: !2377, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2576)
!2576 = !{!2577, !2578, !2579, !2580}
!2577 = !DILocalVariable(name: "n", arg: 1, scope: !2575, file: !451, line: 997, type: !108)
!2578 = !DILocalVariable(name: "s", arg: 2, scope: !2575, file: !451, line: 997, type: !76)
!2579 = !DILocalVariable(name: "arg", arg: 3, scope: !2575, file: !451, line: 997, type: !72)
!2580 = !DILocalVariable(name: "options", scope: !2575, file: !451, line: 999, type: !490)
!2581 = !DILocation(line: 185, column: 26, scope: !2392, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 1000, column: 13, scope: !2575)
!2583 = !DILocation(line: 0, scope: !2575)
!2584 = !DILocation(line: 999, column: 3, scope: !2575)
!2585 = !DILocation(line: 999, column: 26, scope: !2575)
!2586 = !DILocation(line: 0, scope: !2392, inlinedAt: !2582)
!2587 = !DILocation(line: 186, column: 13, scope: !2401, inlinedAt: !2582)
!2588 = !DILocation(line: 186, column: 7, scope: !2392, inlinedAt: !2582)
!2589 = !DILocation(line: 187, column: 5, scope: !2401, inlinedAt: !2582)
!2590 = !{!2591}
!2591 = distinct !{!2591, !2592, !"quoting_options_from_style: argument 0"}
!2592 = distinct !{!2592, !"quoting_options_from_style"}
!2593 = !DILocation(line: 1000, column: 13, scope: !2575)
!2594 = !DILocation(line: 0, scope: !1499, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1001, column: 3, scope: !2575)
!2596 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2595)
!2597 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2595)
!2598 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2595)
!2599 = !DILocation(line: 1002, column: 10, scope: !2575)
!2600 = !DILocation(line: 1003, column: 1, scope: !2575)
!2601 = !DILocation(line: 1002, column: 3, scope: !2575)
!2602 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !451, file: !451, line: 1006, type: !2603, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!255, !108, !72, !72, !72}
!2605 = !{!2606, !2607, !2608, !2609}
!2606 = !DILocalVariable(name: "n", arg: 1, scope: !2602, file: !451, line: 1006, type: !108)
!2607 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2602, file: !451, line: 1006, type: !72)
!2608 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2602, file: !451, line: 1007, type: !72)
!2609 = !DILocalVariable(name: "arg", arg: 4, scope: !2602, file: !451, line: 1007, type: !72)
!2610 = !DILocation(line: 0, scope: !2602)
!2611 = !DILocalVariable(name: "n", arg: 1, scope: !2612, file: !451, line: 1014, type: !108)
!2612 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !451, file: !451, line: 1014, type: !2613, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!255, !108, !72, !72, !72, !110}
!2615 = !{!2611, !2616, !2617, !2618, !2619, !2620}
!2616 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2612, file: !451, line: 1014, type: !72)
!2617 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2612, file: !451, line: 1015, type: !72)
!2618 = !DILocalVariable(name: "arg", arg: 4, scope: !2612, file: !451, line: 1016, type: !72)
!2619 = !DILocalVariable(name: "argsize", arg: 5, scope: !2612, file: !451, line: 1016, type: !110)
!2620 = !DILocalVariable(name: "o", scope: !2612, file: !451, line: 1018, type: !490)
!2621 = !DILocation(line: 0, scope: !2612, inlinedAt: !2622)
!2622 = distinct !DILocation(line: 1009, column: 10, scope: !2602)
!2623 = !DILocation(line: 1018, column: 3, scope: !2612, inlinedAt: !2622)
!2624 = !DILocation(line: 1018, column: 26, scope: !2612, inlinedAt: !2622)
!2625 = !DILocation(line: 1018, column: 30, scope: !2612, inlinedAt: !2622)
!2626 = !DILocation(line: 0, scope: !1539, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1019, column: 3, scope: !2612, inlinedAt: !2622)
!2628 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2627)
!2629 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2627)
!2630 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2627)
!2631 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2627)
!2632 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2627)
!2633 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2627)
!2634 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2627)
!2635 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2627)
!2636 = !DILocation(line: 1020, column: 10, scope: !2612, inlinedAt: !2622)
!2637 = !DILocation(line: 1021, column: 1, scope: !2612, inlinedAt: !2622)
!2638 = !DILocation(line: 1009, column: 3, scope: !2602)
!2639 = !DILocation(line: 0, scope: !2612)
!2640 = !DILocation(line: 1018, column: 3, scope: !2612)
!2641 = !DILocation(line: 1018, column: 26, scope: !2612)
!2642 = !DILocation(line: 1018, column: 30, scope: !2612)
!2643 = !DILocation(line: 0, scope: !1539, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1019, column: 3, scope: !2612)
!2645 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2644)
!2646 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2644)
!2647 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2644)
!2648 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2644)
!2649 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2644)
!2650 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2644)
!2651 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2644)
!2652 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2644)
!2653 = !DILocation(line: 1020, column: 10, scope: !2612)
!2654 = !DILocation(line: 1021, column: 1, scope: !2612)
!2655 = !DILocation(line: 1020, column: 3, scope: !2612)
!2656 = distinct !DISubprogram(name: "quotearg_custom", scope: !451, file: !451, line: 1024, type: !2657, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!255, !72, !72, !72}
!2659 = !{!2660, !2661, !2662}
!2660 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2656, file: !451, line: 1024, type: !72)
!2661 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2656, file: !451, line: 1024, type: !72)
!2662 = !DILocalVariable(name: "arg", arg: 3, scope: !2656, file: !451, line: 1025, type: !72)
!2663 = !DILocation(line: 0, scope: !2656)
!2664 = !DILocation(line: 0, scope: !2602, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1027, column: 10, scope: !2656)
!2666 = !DILocation(line: 0, scope: !2612, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1009, column: 10, scope: !2602, inlinedAt: !2665)
!2668 = !DILocation(line: 1018, column: 3, scope: !2612, inlinedAt: !2667)
!2669 = !DILocation(line: 1018, column: 26, scope: !2612, inlinedAt: !2667)
!2670 = !DILocation(line: 1018, column: 30, scope: !2612, inlinedAt: !2667)
!2671 = !DILocation(line: 0, scope: !1539, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 1019, column: 3, scope: !2612, inlinedAt: !2667)
!2673 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2672)
!2674 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2672)
!2675 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2672)
!2676 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2672)
!2677 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2672)
!2678 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2672)
!2679 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2672)
!2680 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2672)
!2681 = !DILocation(line: 1020, column: 10, scope: !2612, inlinedAt: !2667)
!2682 = !DILocation(line: 1021, column: 1, scope: !2612, inlinedAt: !2667)
!2683 = !DILocation(line: 1027, column: 3, scope: !2656)
!2684 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !451, file: !451, line: 1031, type: !2685, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2687)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!255, !72, !72, !72, !110}
!2687 = !{!2688, !2689, !2690, !2691}
!2688 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2684, file: !451, line: 1031, type: !72)
!2689 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2684, file: !451, line: 1031, type: !72)
!2690 = !DILocalVariable(name: "arg", arg: 3, scope: !2684, file: !451, line: 1032, type: !72)
!2691 = !DILocalVariable(name: "argsize", arg: 4, scope: !2684, file: !451, line: 1032, type: !110)
!2692 = !DILocation(line: 0, scope: !2684)
!2693 = !DILocation(line: 0, scope: !2612, inlinedAt: !2694)
!2694 = distinct !DILocation(line: 1034, column: 10, scope: !2684)
!2695 = !DILocation(line: 1018, column: 3, scope: !2612, inlinedAt: !2694)
!2696 = !DILocation(line: 1018, column: 26, scope: !2612, inlinedAt: !2694)
!2697 = !DILocation(line: 1018, column: 30, scope: !2612, inlinedAt: !2694)
!2698 = !DILocation(line: 0, scope: !1539, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1019, column: 3, scope: !2612, inlinedAt: !2694)
!2700 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2699)
!2701 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2699)
!2702 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2699)
!2703 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2699)
!2704 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2699)
!2705 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2699)
!2706 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2699)
!2707 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2699)
!2708 = !DILocation(line: 1020, column: 10, scope: !2612, inlinedAt: !2694)
!2709 = !DILocation(line: 1021, column: 1, scope: !2612, inlinedAt: !2694)
!2710 = !DILocation(line: 1034, column: 3, scope: !2684)
!2711 = distinct !DISubprogram(name: "quote_n_mem", scope: !451, file: !451, line: 1049, type: !2712, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2714)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!72, !108, !72, !110}
!2714 = !{!2715, !2716, !2717}
!2715 = !DILocalVariable(name: "n", arg: 1, scope: !2711, file: !451, line: 1049, type: !108)
!2716 = !DILocalVariable(name: "arg", arg: 2, scope: !2711, file: !451, line: 1049, type: !72)
!2717 = !DILocalVariable(name: "argsize", arg: 3, scope: !2711, file: !451, line: 1049, type: !110)
!2718 = !DILocation(line: 0, scope: !2711)
!2719 = !DILocation(line: 1051, column: 10, scope: !2711)
!2720 = !DILocation(line: 1051, column: 3, scope: !2711)
!2721 = distinct !DISubprogram(name: "quote_mem", scope: !451, file: !451, line: 1055, type: !2722, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!72, !72, !110}
!2724 = !{!2725, !2726}
!2725 = !DILocalVariable(name: "arg", arg: 1, scope: !2721, file: !451, line: 1055, type: !72)
!2726 = !DILocalVariable(name: "argsize", arg: 2, scope: !2721, file: !451, line: 1055, type: !110)
!2727 = !DILocation(line: 0, scope: !2721)
!2728 = !DILocation(line: 0, scope: !2711, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 1057, column: 10, scope: !2721)
!2730 = !DILocation(line: 1051, column: 10, scope: !2711, inlinedAt: !2729)
!2731 = !DILocation(line: 1057, column: 3, scope: !2721)
!2732 = distinct !DISubprogram(name: "quote_n", scope: !451, file: !451, line: 1061, type: !2733, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!72, !108, !72}
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "n", arg: 1, scope: !2732, file: !451, line: 1061, type: !108)
!2737 = !DILocalVariable(name: "arg", arg: 2, scope: !2732, file: !451, line: 1061, type: !72)
!2738 = !DILocation(line: 0, scope: !2732)
!2739 = !DILocation(line: 0, scope: !2711, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1063, column: 10, scope: !2732)
!2741 = !DILocation(line: 1051, column: 10, scope: !2711, inlinedAt: !2740)
!2742 = !DILocation(line: 1063, column: 3, scope: !2732)
!2743 = distinct !DISubprogram(name: "quote", scope: !451, file: !451, line: 1067, type: !2744, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!72, !72}
!2746 = !{!2747}
!2747 = !DILocalVariable(name: "arg", arg: 1, scope: !2743, file: !451, line: 1067, type: !72)
!2748 = !DILocation(line: 0, scope: !2743)
!2749 = !DILocation(line: 0, scope: !2732, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1069, column: 10, scope: !2743)
!2751 = !DILocation(line: 0, scope: !2711, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1063, column: 10, scope: !2732, inlinedAt: !2750)
!2753 = !DILocation(line: 1051, column: 10, scope: !2711, inlinedAt: !2752)
!2754 = !DILocation(line: 1069, column: 3, scope: !2743)
!2755 = distinct !DISubprogram(name: "version_etc_arn", scope: !553, file: !553, line: 61, type: !2756, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2793)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !2758, !72, !72, !72, !2792, !110}
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !2760)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !2761)
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2760, file: !251, line: 51, baseType: !108, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2760, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2760, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2760, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2760, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2760, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2760, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2760, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2760, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2760, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2760, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2760, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2760, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2760, file: !251, line: 70, baseType: !2776, size: 64, offset: 832)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2760, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2760, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2760, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2760, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2760, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2760, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2760, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2760, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2760, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2760, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2760, file: !251, line: 93, baseType: !2776, size: 64, offset: 1344)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2760, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2760, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2760, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2760, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799}
!2794 = !DILocalVariable(name: "stream", arg: 1, scope: !2755, file: !553, line: 61, type: !2758)
!2795 = !DILocalVariable(name: "command_name", arg: 2, scope: !2755, file: !553, line: 62, type: !72)
!2796 = !DILocalVariable(name: "package", arg: 3, scope: !2755, file: !553, line: 62, type: !72)
!2797 = !DILocalVariable(name: "version", arg: 4, scope: !2755, file: !553, line: 63, type: !72)
!2798 = !DILocalVariable(name: "authors", arg: 5, scope: !2755, file: !553, line: 64, type: !2792)
!2799 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2755, file: !553, line: 64, type: !110)
!2800 = !DILocation(line: 0, scope: !2755)
!2801 = !DILocation(line: 66, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2755, file: !553, line: 66, column: 7)
!2803 = !DILocation(line: 66, column: 7, scope: !2755)
!2804 = !DILocation(line: 67, column: 5, scope: !2802)
!2805 = !DILocation(line: 69, column: 5, scope: !2802)
!2806 = !DILocation(line: 83, column: 3, scope: !2755)
!2807 = !DILocation(line: 85, column: 3, scope: !2755)
!2808 = !DILocation(line: 88, column: 3, scope: !2755)
!2809 = !DILocation(line: 95, column: 3, scope: !2755)
!2810 = !DILocation(line: 97, column: 3, scope: !2755)
!2811 = !DILocation(line: 105, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2755, file: !553, line: 98, column: 5)
!2813 = !DILocation(line: 106, column: 7, scope: !2812)
!2814 = !DILocation(line: 109, column: 7, scope: !2812)
!2815 = !DILocation(line: 110, column: 7, scope: !2812)
!2816 = !DILocation(line: 113, column: 7, scope: !2812)
!2817 = !DILocation(line: 115, column: 7, scope: !2812)
!2818 = !DILocation(line: 120, column: 7, scope: !2812)
!2819 = !DILocation(line: 122, column: 7, scope: !2812)
!2820 = !DILocation(line: 127, column: 7, scope: !2812)
!2821 = !DILocation(line: 129, column: 7, scope: !2812)
!2822 = !DILocation(line: 134, column: 7, scope: !2812)
!2823 = !DILocation(line: 137, column: 7, scope: !2812)
!2824 = !DILocation(line: 142, column: 7, scope: !2812)
!2825 = !DILocation(line: 145, column: 7, scope: !2812)
!2826 = !DILocation(line: 150, column: 7, scope: !2812)
!2827 = !DILocation(line: 154, column: 7, scope: !2812)
!2828 = !DILocation(line: 159, column: 7, scope: !2812)
!2829 = !DILocation(line: 163, column: 7, scope: !2812)
!2830 = !DILocation(line: 170, column: 7, scope: !2812)
!2831 = !DILocation(line: 174, column: 7, scope: !2812)
!2832 = !DILocation(line: 176, column: 1, scope: !2755)
!2833 = distinct !DISubprogram(name: "version_etc_ar", scope: !553, file: !553, line: 183, type: !2834, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2836)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !2758, !72, !72, !72, !2792}
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842}
!2837 = !DILocalVariable(name: "stream", arg: 1, scope: !2833, file: !553, line: 183, type: !2758)
!2838 = !DILocalVariable(name: "command_name", arg: 2, scope: !2833, file: !553, line: 184, type: !72)
!2839 = !DILocalVariable(name: "package", arg: 3, scope: !2833, file: !553, line: 184, type: !72)
!2840 = !DILocalVariable(name: "version", arg: 4, scope: !2833, file: !553, line: 185, type: !72)
!2841 = !DILocalVariable(name: "authors", arg: 5, scope: !2833, file: !553, line: 185, type: !2792)
!2842 = !DILocalVariable(name: "n_authors", scope: !2833, file: !553, line: 187, type: !110)
!2843 = !DILocation(line: 0, scope: !2833)
!2844 = !DILocation(line: 189, column: 8, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2833, file: !553, line: 189, column: 3)
!2846 = !DILocation(line: 189, scope: !2845)
!2847 = !DILocation(line: 189, column: 23, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2845, file: !553, line: 189, column: 3)
!2849 = !DILocation(line: 189, column: 3, scope: !2845)
!2850 = !DILocation(line: 189, column: 52, scope: !2848)
!2851 = distinct !{!2851, !2849, !2852, !865}
!2852 = !DILocation(line: 190, column: 5, scope: !2845)
!2853 = !DILocation(line: 191, column: 3, scope: !2833)
!2854 = !DILocation(line: 192, column: 1, scope: !2833)
!2855 = distinct !DISubprogram(name: "version_etc_va", scope: !553, file: !553, line: 199, type: !2856, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2869)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{null, !2758, !72, !72, !72, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !342, line: 52, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !344, line: 14, baseType: !2860)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2861, baseType: !2862)
!2861 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867, !2868}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2862, file: !2861, line: 192, baseType: !107, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2862, file: !2861, line: 192, baseType: !107, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2862, file: !2861, line: 192, baseType: !107, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2862, file: !2861, line: 192, baseType: !108, size: 32, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2862, file: !2861, line: 192, baseType: !108, size: 32, offset: 224)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2870 = !DILocalVariable(name: "stream", arg: 1, scope: !2855, file: !553, line: 199, type: !2758)
!2871 = !DILocalVariable(name: "command_name", arg: 2, scope: !2855, file: !553, line: 200, type: !72)
!2872 = !DILocalVariable(name: "package", arg: 3, scope: !2855, file: !553, line: 200, type: !72)
!2873 = !DILocalVariable(name: "version", arg: 4, scope: !2855, file: !553, line: 201, type: !72)
!2874 = !DILocalVariable(name: "authors", arg: 5, scope: !2855, file: !553, line: 201, type: !2858)
!2875 = !DILocalVariable(name: "n_authors", scope: !2855, file: !553, line: 203, type: !110)
!2876 = !DILocalVariable(name: "authtab", scope: !2855, file: !553, line: 204, type: !2877)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !40)
!2878 = !DILocation(line: 0, scope: !2855)
!2879 = !DILocation(line: 201, column: 46, scope: !2855)
!2880 = !DILocation(line: 204, column: 3, scope: !2855)
!2881 = !DILocation(line: 204, column: 15, scope: !2855)
!2882 = !DILocation(line: 208, column: 35, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !553, line: 206, column: 3)
!2884 = distinct !DILexicalBlock(scope: !2855, file: !553, line: 206, column: 3)
!2885 = !DILocation(line: 208, column: 33, scope: !2883)
!2886 = !DILocation(line: 208, column: 67, scope: !2883)
!2887 = !DILocation(line: 206, column: 3, scope: !2884)
!2888 = !DILocation(line: 208, column: 14, scope: !2883)
!2889 = !DILocation(line: 0, scope: !2884)
!2890 = !DILocation(line: 211, column: 3, scope: !2855)
!2891 = !DILocation(line: 213, column: 1, scope: !2855)
!2892 = distinct !DISubprogram(name: "version_etc", scope: !553, file: !553, line: 230, type: !2893, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{null, !2758, !72, !72, !72, null}
!2895 = !{!2896, !2897, !2898, !2899, !2900}
!2896 = !DILocalVariable(name: "stream", arg: 1, scope: !2892, file: !553, line: 230, type: !2758)
!2897 = !DILocalVariable(name: "command_name", arg: 2, scope: !2892, file: !553, line: 231, type: !72)
!2898 = !DILocalVariable(name: "package", arg: 3, scope: !2892, file: !553, line: 231, type: !72)
!2899 = !DILocalVariable(name: "version", arg: 4, scope: !2892, file: !553, line: 232, type: !72)
!2900 = !DILocalVariable(name: "authors", scope: !2892, file: !553, line: 234, type: !2858)
!2901 = !DILocation(line: 0, scope: !2892)
!2902 = !DILocation(line: 234, column: 3, scope: !2892)
!2903 = !DILocation(line: 234, column: 11, scope: !2892)
!2904 = !DILocation(line: 235, column: 3, scope: !2892)
!2905 = !DILocation(line: 236, column: 3, scope: !2892)
!2906 = !DILocation(line: 237, column: 3, scope: !2892)
!2907 = !DILocation(line: 238, column: 1, scope: !2892)
!2908 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !553, file: !553, line: 241, type: !383, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !803)
!2909 = !DILocation(line: 243, column: 3, scope: !2908)
!2910 = !DILocation(line: 248, column: 3, scope: !2908)
!2911 = !DILocation(line: 254, column: 3, scope: !2908)
!2912 = !DILocation(line: 259, column: 3, scope: !2908)
!2913 = !DILocation(line: 261, column: 1, scope: !2908)
!2914 = distinct !DISubprogram(name: "xnrealloc", scope: !2915, file: !2915, line: 147, type: !2916, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2918)
!2915 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2916 = !DISubroutineType(types: !2917)
!2917 = !{!107, !107, !110, !110}
!2918 = !{!2919, !2920, !2921}
!2919 = !DILocalVariable(name: "p", arg: 1, scope: !2914, file: !2915, line: 147, type: !107)
!2920 = !DILocalVariable(name: "n", arg: 2, scope: !2914, file: !2915, line: 147, type: !110)
!2921 = !DILocalVariable(name: "s", arg: 3, scope: !2914, file: !2915, line: 147, type: !110)
!2922 = !DILocation(line: 0, scope: !2914)
!2923 = !DILocalVariable(name: "p", arg: 1, scope: !2924, file: !687, line: 83, type: !107)
!2924 = distinct !DISubprogram(name: "xreallocarray", scope: !687, file: !687, line: 83, type: !2916, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2925)
!2925 = !{!2923, !2926, !2927}
!2926 = !DILocalVariable(name: "n", arg: 2, scope: !2924, file: !687, line: 83, type: !110)
!2927 = !DILocalVariable(name: "s", arg: 3, scope: !2924, file: !687, line: 83, type: !110)
!2928 = !DILocation(line: 0, scope: !2924, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 149, column: 10, scope: !2914)
!2930 = !DILocation(line: 85, column: 25, scope: !2924, inlinedAt: !2929)
!2931 = !DILocalVariable(name: "p", arg: 1, scope: !2932, file: !687, line: 37, type: !107)
!2932 = distinct !DISubprogram(name: "check_nonnull", scope: !687, file: !687, line: 37, type: !2933, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2935)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!107, !107}
!2935 = !{!2931}
!2936 = !DILocation(line: 0, scope: !2932, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 85, column: 10, scope: !2924, inlinedAt: !2929)
!2938 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !2937)
!2939 = distinct !DILexicalBlock(scope: !2932, file: !687, line: 39, column: 7)
!2940 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !2937)
!2941 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !2937)
!2942 = !DILocation(line: 149, column: 3, scope: !2914)
!2943 = !DILocation(line: 0, scope: !2924)
!2944 = !DILocation(line: 85, column: 25, scope: !2924)
!2945 = !DILocation(line: 0, scope: !2932, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 85, column: 10, scope: !2924)
!2947 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !2946)
!2948 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !2946)
!2949 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !2946)
!2950 = !DILocation(line: 85, column: 3, scope: !2924)
!2951 = distinct !DISubprogram(name: "xmalloc", scope: !687, file: !687, line: 47, type: !2952, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2954)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!107, !110}
!2954 = !{!2955}
!2955 = !DILocalVariable(name: "s", arg: 1, scope: !2951, file: !687, line: 47, type: !110)
!2956 = !DILocation(line: 0, scope: !2951)
!2957 = !DILocation(line: 49, column: 25, scope: !2951)
!2958 = !DILocation(line: 0, scope: !2932, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 49, column: 10, scope: !2951)
!2960 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !2959)
!2961 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !2959)
!2962 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !2959)
!2963 = !DILocation(line: 49, column: 3, scope: !2951)
!2964 = !DISubprogram(name: "malloc", scope: !939, file: !939, line: 540, type: !2952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!2965 = distinct !DISubprogram(name: "ximalloc", scope: !687, file: !687, line: 53, type: !2966, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2968)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!107, !706}
!2968 = !{!2969}
!2969 = !DILocalVariable(name: "s", arg: 1, scope: !2965, file: !687, line: 53, type: !706)
!2970 = !DILocation(line: 0, scope: !2965)
!2971 = !DILocalVariable(name: "s", arg: 1, scope: !2972, file: !2973, line: 55, type: !706)
!2972 = distinct !DISubprogram(name: "imalloc", scope: !2973, file: !2973, line: 55, type: !2966, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2974)
!2973 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2974 = !{!2971}
!2975 = !DILocation(line: 0, scope: !2972, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 55, column: 25, scope: !2965)
!2977 = !DILocation(line: 57, column: 26, scope: !2972, inlinedAt: !2976)
!2978 = !DILocation(line: 0, scope: !2932, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 55, column: 10, scope: !2965)
!2980 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !2979)
!2981 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !2979)
!2982 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !2979)
!2983 = !DILocation(line: 55, column: 3, scope: !2965)
!2984 = distinct !DISubprogram(name: "xcharalloc", scope: !687, file: !687, line: 59, type: !2985, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!255, !110}
!2987 = !{!2988}
!2988 = !DILocalVariable(name: "n", arg: 1, scope: !2984, file: !687, line: 59, type: !110)
!2989 = !DILocation(line: 0, scope: !2984)
!2990 = !DILocation(line: 0, scope: !2951, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 61, column: 10, scope: !2984)
!2992 = !DILocation(line: 49, column: 25, scope: !2951, inlinedAt: !2991)
!2993 = !DILocation(line: 0, scope: !2932, inlinedAt: !2994)
!2994 = distinct !DILocation(line: 49, column: 10, scope: !2951, inlinedAt: !2991)
!2995 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !2994)
!2996 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !2994)
!2997 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !2994)
!2998 = !DILocation(line: 61, column: 3, scope: !2984)
!2999 = distinct !DISubprogram(name: "xrealloc", scope: !687, file: !687, line: 68, type: !3000, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3002)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!107, !107, !110}
!3002 = !{!3003, !3004}
!3003 = !DILocalVariable(name: "p", arg: 1, scope: !2999, file: !687, line: 68, type: !107)
!3004 = !DILocalVariable(name: "s", arg: 2, scope: !2999, file: !687, line: 68, type: !110)
!3005 = !DILocation(line: 0, scope: !2999)
!3006 = !DILocalVariable(name: "ptr", arg: 1, scope: !3007, file: !3008, line: 2057, type: !107)
!3007 = distinct !DISubprogram(name: "rpl_realloc", scope: !3008, file: !3008, line: 2057, type: !3000, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3009)
!3008 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3009 = !{!3006, !3010}
!3010 = !DILocalVariable(name: "size", arg: 2, scope: !3007, file: !3008, line: 2057, type: !110)
!3011 = !DILocation(line: 0, scope: !3007, inlinedAt: !3012)
!3012 = distinct !DILocation(line: 70, column: 25, scope: !2999)
!3013 = !DILocation(line: 2059, column: 24, scope: !3007, inlinedAt: !3012)
!3014 = !DILocation(line: 2059, column: 10, scope: !3007, inlinedAt: !3012)
!3015 = !DILocation(line: 0, scope: !2932, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 70, column: 10, scope: !2999)
!3017 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3016)
!3018 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3016)
!3019 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3016)
!3020 = !DILocation(line: 70, column: 3, scope: !2999)
!3021 = !DISubprogram(name: "realloc", scope: !939, file: !939, line: 551, type: !3000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3022 = distinct !DISubprogram(name: "xirealloc", scope: !687, file: !687, line: 74, type: !3023, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3025)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!107, !107, !706}
!3025 = !{!3026, !3027}
!3026 = !DILocalVariable(name: "p", arg: 1, scope: !3022, file: !687, line: 74, type: !107)
!3027 = !DILocalVariable(name: "s", arg: 2, scope: !3022, file: !687, line: 74, type: !706)
!3028 = !DILocation(line: 0, scope: !3022)
!3029 = !DILocalVariable(name: "p", arg: 1, scope: !3030, file: !2973, line: 66, type: !107)
!3030 = distinct !DISubprogram(name: "irealloc", scope: !2973, file: !2973, line: 66, type: !3023, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3031)
!3031 = !{!3029, !3032}
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3030, file: !2973, line: 66, type: !706)
!3033 = !DILocation(line: 0, scope: !3030, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 76, column: 25, scope: !3022)
!3035 = !DILocation(line: 0, scope: !3007, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 68, column: 26, scope: !3030, inlinedAt: !3034)
!3037 = !DILocation(line: 2059, column: 24, scope: !3007, inlinedAt: !3036)
!3038 = !DILocation(line: 2059, column: 10, scope: !3007, inlinedAt: !3036)
!3039 = !DILocation(line: 0, scope: !2932, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 76, column: 10, scope: !3022)
!3041 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3040)
!3042 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3040)
!3043 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3040)
!3044 = !DILocation(line: 76, column: 3, scope: !3022)
!3045 = distinct !DISubprogram(name: "xireallocarray", scope: !687, file: !687, line: 89, type: !3046, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!107, !107, !706, !706}
!3048 = !{!3049, !3050, !3051}
!3049 = !DILocalVariable(name: "p", arg: 1, scope: !3045, file: !687, line: 89, type: !107)
!3050 = !DILocalVariable(name: "n", arg: 2, scope: !3045, file: !687, line: 89, type: !706)
!3051 = !DILocalVariable(name: "s", arg: 3, scope: !3045, file: !687, line: 89, type: !706)
!3052 = !DILocation(line: 0, scope: !3045)
!3053 = !DILocalVariable(name: "p", arg: 1, scope: !3054, file: !2973, line: 98, type: !107)
!3054 = distinct !DISubprogram(name: "ireallocarray", scope: !2973, file: !2973, line: 98, type: !3046, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3055)
!3055 = !{!3053, !3056, !3057}
!3056 = !DILocalVariable(name: "n", arg: 2, scope: !3054, file: !2973, line: 98, type: !706)
!3057 = !DILocalVariable(name: "s", arg: 3, scope: !3054, file: !2973, line: 98, type: !706)
!3058 = !DILocation(line: 0, scope: !3054, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 91, column: 25, scope: !3045)
!3060 = !DILocation(line: 101, column: 13, scope: !3054, inlinedAt: !3059)
!3061 = !DILocation(line: 0, scope: !2932, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 91, column: 10, scope: !3045)
!3063 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3062)
!3064 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3062)
!3065 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3062)
!3066 = !DILocation(line: 91, column: 3, scope: !3045)
!3067 = distinct !DISubprogram(name: "xnmalloc", scope: !687, file: !687, line: 98, type: !3068, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!107, !110, !110}
!3070 = !{!3071, !3072}
!3071 = !DILocalVariable(name: "n", arg: 1, scope: !3067, file: !687, line: 98, type: !110)
!3072 = !DILocalVariable(name: "s", arg: 2, scope: !3067, file: !687, line: 98, type: !110)
!3073 = !DILocation(line: 0, scope: !3067)
!3074 = !DILocation(line: 0, scope: !2924, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 100, column: 10, scope: !3067)
!3076 = !DILocation(line: 85, column: 25, scope: !2924, inlinedAt: !3075)
!3077 = !DILocation(line: 0, scope: !2932, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 85, column: 10, scope: !2924, inlinedAt: !3075)
!3079 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3078)
!3082 = !DILocation(line: 100, column: 3, scope: !3067)
!3083 = distinct !DISubprogram(name: "xinmalloc", scope: !687, file: !687, line: 104, type: !3084, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!107, !706, !706}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !687, line: 104, type: !706)
!3088 = !DILocalVariable(name: "s", arg: 2, scope: !3083, file: !687, line: 104, type: !706)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 0, scope: !3045, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 106, column: 10, scope: !3083)
!3092 = !DILocation(line: 0, scope: !3054, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 91, column: 25, scope: !3045, inlinedAt: !3091)
!3094 = !DILocation(line: 101, column: 13, scope: !3054, inlinedAt: !3093)
!3095 = !DILocation(line: 0, scope: !2932, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 91, column: 10, scope: !3045, inlinedAt: !3091)
!3097 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3096)
!3098 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3096)
!3099 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3096)
!3100 = !DILocation(line: 106, column: 3, scope: !3083)
!3101 = distinct !DISubprogram(name: "x2realloc", scope: !687, file: !687, line: 116, type: !3102, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!107, !107, !693}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "p", arg: 1, scope: !3101, file: !687, line: 116, type: !107)
!3106 = !DILocalVariable(name: "ps", arg: 2, scope: !3101, file: !687, line: 116, type: !693)
!3107 = !DILocation(line: 0, scope: !3101)
!3108 = !DILocation(line: 0, scope: !690, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 118, column: 10, scope: !3101)
!3110 = !DILocation(line: 178, column: 14, scope: !690, inlinedAt: !3109)
!3111 = !DILocation(line: 180, column: 9, scope: !3112, inlinedAt: !3109)
!3112 = distinct !DILexicalBlock(scope: !690, file: !687, line: 180, column: 7)
!3113 = !DILocation(line: 180, column: 7, scope: !690, inlinedAt: !3109)
!3114 = !DILocation(line: 182, column: 13, scope: !3115, inlinedAt: !3109)
!3115 = distinct !DILexicalBlock(scope: !3116, file: !687, line: 182, column: 11)
!3116 = distinct !DILexicalBlock(scope: !3112, file: !687, line: 181, column: 5)
!3117 = !DILocation(line: 182, column: 11, scope: !3116, inlinedAt: !3109)
!3118 = !DILocation(line: 197, column: 11, scope: !3119, inlinedAt: !3109)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !687, line: 197, column: 11)
!3120 = distinct !DILexicalBlock(scope: !3112, file: !687, line: 195, column: 5)
!3121 = !DILocation(line: 197, column: 11, scope: !3120, inlinedAt: !3109)
!3122 = !DILocation(line: 198, column: 9, scope: !3119, inlinedAt: !3109)
!3123 = !DILocation(line: 0, scope: !2924, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 201, column: 7, scope: !690, inlinedAt: !3109)
!3125 = !DILocation(line: 85, column: 25, scope: !2924, inlinedAt: !3124)
!3126 = !DILocation(line: 0, scope: !2932, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 85, column: 10, scope: !2924, inlinedAt: !3124)
!3128 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3127)
!3129 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3127)
!3130 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3127)
!3131 = !DILocation(line: 202, column: 7, scope: !690, inlinedAt: !3109)
!3132 = !DILocation(line: 118, column: 3, scope: !3101)
!3133 = !DILocation(line: 0, scope: !690)
!3134 = !DILocation(line: 178, column: 14, scope: !690)
!3135 = !DILocation(line: 180, column: 9, scope: !3112)
!3136 = !DILocation(line: 180, column: 7, scope: !690)
!3137 = !DILocation(line: 182, column: 13, scope: !3115)
!3138 = !DILocation(line: 182, column: 11, scope: !3116)
!3139 = !DILocation(line: 190, column: 30, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3115, file: !687, line: 183, column: 9)
!3141 = !DILocation(line: 191, column: 16, scope: !3140)
!3142 = !DILocation(line: 191, column: 13, scope: !3140)
!3143 = !DILocation(line: 192, column: 9, scope: !3140)
!3144 = !DILocation(line: 197, column: 11, scope: !3119)
!3145 = !DILocation(line: 197, column: 11, scope: !3120)
!3146 = !DILocation(line: 198, column: 9, scope: !3119)
!3147 = !DILocation(line: 0, scope: !2924, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 201, column: 7, scope: !690)
!3149 = !DILocation(line: 85, column: 25, scope: !2924, inlinedAt: !3148)
!3150 = !DILocation(line: 0, scope: !2932, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 85, column: 10, scope: !2924, inlinedAt: !3148)
!3152 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3151)
!3153 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3151)
!3154 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3151)
!3155 = !DILocation(line: 202, column: 7, scope: !690)
!3156 = !DILocation(line: 203, column: 3, scope: !690)
!3157 = !DILocation(line: 0, scope: !702)
!3158 = !DILocation(line: 230, column: 14, scope: !702)
!3159 = !DILocation(line: 238, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !702, file: !687, line: 238, column: 7)
!3161 = !DILocation(line: 238, column: 7, scope: !702)
!3162 = !DILocation(line: 240, column: 9, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !702, file: !687, line: 240, column: 7)
!3164 = !DILocation(line: 240, column: 18, scope: !3163)
!3165 = !DILocation(line: 253, column: 8, scope: !702)
!3166 = !DILocation(line: 258, column: 27, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !687, line: 257, column: 5)
!3168 = distinct !DILexicalBlock(scope: !702, file: !687, line: 256, column: 7)
!3169 = !DILocation(line: 259, column: 32, scope: !3167)
!3170 = !DILocation(line: 260, column: 5, scope: !3167)
!3171 = !DILocation(line: 262, column: 9, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !702, file: !687, line: 262, column: 7)
!3173 = !DILocation(line: 262, column: 7, scope: !702)
!3174 = !DILocation(line: 263, column: 9, scope: !3172)
!3175 = !DILocation(line: 263, column: 5, scope: !3172)
!3176 = !DILocation(line: 264, column: 9, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !702, file: !687, line: 264, column: 7)
!3178 = !DILocation(line: 264, column: 14, scope: !3177)
!3179 = !DILocation(line: 265, column: 7, scope: !3177)
!3180 = !DILocation(line: 265, column: 11, scope: !3177)
!3181 = !DILocation(line: 266, column: 11, scope: !3177)
!3182 = !DILocation(line: 267, column: 14, scope: !3177)
!3183 = !DILocation(line: 264, column: 7, scope: !702)
!3184 = !DILocation(line: 268, column: 5, scope: !3177)
!3185 = !DILocation(line: 0, scope: !2999, inlinedAt: !3186)
!3186 = distinct !DILocation(line: 269, column: 8, scope: !702)
!3187 = !DILocation(line: 0, scope: !3007, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 70, column: 25, scope: !2999, inlinedAt: !3186)
!3189 = !DILocation(line: 2059, column: 24, scope: !3007, inlinedAt: !3188)
!3190 = !DILocation(line: 2059, column: 10, scope: !3007, inlinedAt: !3188)
!3191 = !DILocation(line: 0, scope: !2932, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 70, column: 10, scope: !2999, inlinedAt: !3186)
!3193 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3192)
!3196 = !DILocation(line: 270, column: 7, scope: !702)
!3197 = !DILocation(line: 271, column: 3, scope: !702)
!3198 = distinct !DISubprogram(name: "xzalloc", scope: !687, file: !687, line: 279, type: !2952, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3199)
!3199 = !{!3200}
!3200 = !DILocalVariable(name: "s", arg: 1, scope: !3198, file: !687, line: 279, type: !110)
!3201 = !DILocation(line: 0, scope: !3198)
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3203, file: !687, line: 294, type: !110)
!3203 = distinct !DISubprogram(name: "xcalloc", scope: !687, file: !687, line: 294, type: !3068, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3204)
!3204 = !{!3202, !3205}
!3205 = !DILocalVariable(name: "s", arg: 2, scope: !3203, file: !687, line: 294, type: !110)
!3206 = !DILocation(line: 0, scope: !3203, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 281, column: 10, scope: !3198)
!3208 = !DILocation(line: 296, column: 25, scope: !3203, inlinedAt: !3207)
!3209 = !DILocation(line: 0, scope: !2932, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 296, column: 10, scope: !3203, inlinedAt: !3207)
!3211 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3210)
!3212 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3210)
!3213 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3210)
!3214 = !DILocation(line: 281, column: 3, scope: !3198)
!3215 = !DISubprogram(name: "calloc", scope: !939, file: !939, line: 543, type: !3068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3216 = !DILocation(line: 0, scope: !3203)
!3217 = !DILocation(line: 296, column: 25, scope: !3203)
!3218 = !DILocation(line: 0, scope: !2932, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 296, column: 10, scope: !3203)
!3220 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3219)
!3221 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3219)
!3222 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3219)
!3223 = !DILocation(line: 296, column: 3, scope: !3203)
!3224 = distinct !DISubprogram(name: "xizalloc", scope: !687, file: !687, line: 285, type: !2966, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3225)
!3225 = !{!3226}
!3226 = !DILocalVariable(name: "s", arg: 1, scope: !3224, file: !687, line: 285, type: !706)
!3227 = !DILocation(line: 0, scope: !3224)
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3229, file: !687, line: 300, type: !706)
!3229 = distinct !DISubprogram(name: "xicalloc", scope: !687, file: !687, line: 300, type: !3084, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3230)
!3230 = !{!3228, !3231}
!3231 = !DILocalVariable(name: "s", arg: 2, scope: !3229, file: !687, line: 300, type: !706)
!3232 = !DILocation(line: 0, scope: !3229, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 287, column: 10, scope: !3224)
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3235, file: !2973, line: 77, type: !706)
!3235 = distinct !DISubprogram(name: "icalloc", scope: !2973, file: !2973, line: 77, type: !3084, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3236)
!3236 = !{!3234, !3237}
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3235, file: !2973, line: 77, type: !706)
!3238 = !DILocation(line: 0, scope: !3235, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 302, column: 25, scope: !3229, inlinedAt: !3233)
!3240 = !DILocation(line: 91, column: 10, scope: !3235, inlinedAt: !3239)
!3241 = !DILocation(line: 0, scope: !2932, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 302, column: 10, scope: !3229, inlinedAt: !3233)
!3243 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3242)
!3244 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3242)
!3245 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3242)
!3246 = !DILocation(line: 287, column: 3, scope: !3224)
!3247 = !DILocation(line: 0, scope: !3229)
!3248 = !DILocation(line: 0, scope: !3235, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 302, column: 25, scope: !3229)
!3250 = !DILocation(line: 91, column: 10, scope: !3235, inlinedAt: !3249)
!3251 = !DILocation(line: 0, scope: !2932, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 302, column: 10, scope: !3229)
!3253 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3252)
!3254 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3252)
!3255 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3252)
!3256 = !DILocation(line: 302, column: 3, scope: !3229)
!3257 = distinct !DISubprogram(name: "xmemdup", scope: !687, file: !687, line: 310, type: !3258, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3260)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!107, !963, !110}
!3260 = !{!3261, !3262}
!3261 = !DILocalVariable(name: "p", arg: 1, scope: !3257, file: !687, line: 310, type: !963)
!3262 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !687, line: 310, type: !110)
!3263 = !DILocation(line: 0, scope: !3257)
!3264 = !DILocation(line: 0, scope: !2951, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 312, column: 18, scope: !3257)
!3266 = !DILocation(line: 49, column: 25, scope: !2951, inlinedAt: !3265)
!3267 = !DILocation(line: 0, scope: !2932, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 49, column: 10, scope: !2951, inlinedAt: !3265)
!3269 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3268)
!3270 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3268)
!3271 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3268)
!3272 = !DILocalVariable(name: "__dest", arg: 1, scope: !3273, file: !1442, line: 26, type: !3276)
!3273 = distinct !DISubprogram(name: "memcpy", scope: !1442, file: !1442, line: 26, type: !3274, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3277)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!107, !3276, !962, !110}
!3276 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!3277 = !{!3272, !3278, !3279}
!3278 = !DILocalVariable(name: "__src", arg: 2, scope: !3273, file: !1442, line: 26, type: !962)
!3279 = !DILocalVariable(name: "__len", arg: 3, scope: !3273, file: !1442, line: 26, type: !110)
!3280 = !DILocation(line: 0, scope: !3273, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 312, column: 10, scope: !3257)
!3282 = !DILocation(line: 29, column: 10, scope: !3273, inlinedAt: !3281)
!3283 = !DILocation(line: 312, column: 3, scope: !3257)
!3284 = distinct !DISubprogram(name: "ximemdup", scope: !687, file: !687, line: 316, type: !3285, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3287)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!107, !963, !706}
!3287 = !{!3288, !3289}
!3288 = !DILocalVariable(name: "p", arg: 1, scope: !3284, file: !687, line: 316, type: !963)
!3289 = !DILocalVariable(name: "s", arg: 2, scope: !3284, file: !687, line: 316, type: !706)
!3290 = !DILocation(line: 0, scope: !3284)
!3291 = !DILocation(line: 0, scope: !2965, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 318, column: 18, scope: !3284)
!3293 = !DILocation(line: 0, scope: !2972, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 55, column: 25, scope: !2965, inlinedAt: !3292)
!3295 = !DILocation(line: 57, column: 26, scope: !2972, inlinedAt: !3294)
!3296 = !DILocation(line: 0, scope: !2932, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 55, column: 10, scope: !2965, inlinedAt: !3292)
!3298 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3297)
!3299 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3297)
!3300 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3297)
!3301 = !DILocation(line: 0, scope: !3273, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 318, column: 10, scope: !3284)
!3303 = !DILocation(line: 29, column: 10, scope: !3273, inlinedAt: !3302)
!3304 = !DILocation(line: 318, column: 3, scope: !3284)
!3305 = distinct !DISubprogram(name: "ximemdup0", scope: !687, file: !687, line: 325, type: !3306, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!255, !963, !706}
!3308 = !{!3309, !3310, !3311}
!3309 = !DILocalVariable(name: "p", arg: 1, scope: !3305, file: !687, line: 325, type: !963)
!3310 = !DILocalVariable(name: "s", arg: 2, scope: !3305, file: !687, line: 325, type: !706)
!3311 = !DILocalVariable(name: "result", scope: !3305, file: !687, line: 327, type: !255)
!3312 = !DILocation(line: 0, scope: !3305)
!3313 = !DILocation(line: 327, column: 30, scope: !3305)
!3314 = !DILocation(line: 0, scope: !2965, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 327, column: 18, scope: !3305)
!3316 = !DILocation(line: 0, scope: !2972, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 55, column: 25, scope: !2965, inlinedAt: !3315)
!3318 = !DILocation(line: 57, column: 26, scope: !2972, inlinedAt: !3317)
!3319 = !DILocation(line: 0, scope: !2932, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 55, column: 10, scope: !2965, inlinedAt: !3315)
!3321 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3320)
!3322 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3320)
!3323 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3320)
!3324 = !DILocation(line: 328, column: 3, scope: !3305)
!3325 = !DILocation(line: 328, column: 13, scope: !3305)
!3326 = !DILocation(line: 0, scope: !3273, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 329, column: 10, scope: !3305)
!3328 = !DILocation(line: 29, column: 10, scope: !3273, inlinedAt: !3327)
!3329 = !DILocation(line: 329, column: 3, scope: !3305)
!3330 = distinct !DISubprogram(name: "xstrdup", scope: !687, file: !687, line: 335, type: !941, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !686, retainedNodes: !3331)
!3331 = !{!3332}
!3332 = !DILocalVariable(name: "string", arg: 1, scope: !3330, file: !687, line: 335, type: !72)
!3333 = !DILocation(line: 0, scope: !3330)
!3334 = !DILocation(line: 337, column: 27, scope: !3330)
!3335 = !DILocation(line: 337, column: 43, scope: !3330)
!3336 = !DILocation(line: 0, scope: !3257, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 337, column: 10, scope: !3330)
!3338 = !DILocation(line: 0, scope: !2951, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 312, column: 18, scope: !3257, inlinedAt: !3337)
!3340 = !DILocation(line: 49, column: 25, scope: !2951, inlinedAt: !3339)
!3341 = !DILocation(line: 0, scope: !2932, inlinedAt: !3342)
!3342 = distinct !DILocation(line: 49, column: 10, scope: !2951, inlinedAt: !3339)
!3343 = !DILocation(line: 39, column: 8, scope: !2939, inlinedAt: !3342)
!3344 = !DILocation(line: 39, column: 7, scope: !2932, inlinedAt: !3342)
!3345 = !DILocation(line: 40, column: 5, scope: !2939, inlinedAt: !3342)
!3346 = !DILocation(line: 0, scope: !3273, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 312, column: 10, scope: !3257, inlinedAt: !3337)
!3348 = !DILocation(line: 29, column: 10, scope: !3273, inlinedAt: !3347)
!3349 = !DILocation(line: 337, column: 3, scope: !3330)
!3350 = distinct !DISubprogram(name: "xalloc_die", scope: !649, file: !649, line: 32, type: !383, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !720, retainedNodes: !3351)
!3351 = !{!3352}
!3352 = !DILocalVariable(name: "__errstatus", scope: !3353, file: !649, line: 34, type: !3354)
!3353 = distinct !DILexicalBlock(scope: !3350, file: !649, line: 34, column: 3)
!3354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!3355 = !DILocation(line: 34, column: 3, scope: !3353)
!3356 = !DILocation(line: 0, scope: !3353)
!3357 = !DILocation(line: 40, column: 3, scope: !3350)
!3358 = distinct !DISubprogram(name: "close_stream", scope: !723, file: !723, line: 55, type: !3359, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3395)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!108, !3361}
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3363)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3364)
!3364 = !{!3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3363, file: !251, line: 51, baseType: !108, size: 32)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3363, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3363, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3363, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3363, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3363, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3363, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3363, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3363, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3363, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3363, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3363, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3363, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3363, file: !251, line: 70, baseType: !3379, size: 64, offset: 832)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3363, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3363, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3363, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3363, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3363, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3363, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3363, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3363, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3363, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3363, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3363, file: !251, line: 93, baseType: !3379, size: 64, offset: 1344)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3363, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3363, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3363, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3363, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3395 = !{!3396, !3397, !3399, !3400}
!3396 = !DILocalVariable(name: "stream", arg: 1, scope: !3358, file: !723, line: 55, type: !3361)
!3397 = !DILocalVariable(name: "some_pending", scope: !3358, file: !723, line: 57, type: !3398)
!3398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3399 = !DILocalVariable(name: "prev_fail", scope: !3358, file: !723, line: 58, type: !3398)
!3400 = !DILocalVariable(name: "fclose_fail", scope: !3358, file: !723, line: 59, type: !3398)
!3401 = !DILocation(line: 0, scope: !3358)
!3402 = !DILocation(line: 57, column: 30, scope: !3358)
!3403 = !DILocalVariable(name: "__stream", arg: 1, scope: !3404, file: !1193, line: 135, type: !3361)
!3404 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1193, file: !1193, line: 135, type: !3359, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3405)
!3405 = !{!3403}
!3406 = !DILocation(line: 0, scope: !3404, inlinedAt: !3407)
!3407 = distinct !DILocation(line: 58, column: 27, scope: !3358)
!3408 = !DILocation(line: 137, column: 10, scope: !3404, inlinedAt: !3407)
!3409 = !{!1202, !819, i64 0}
!3410 = !DILocation(line: 58, column: 43, scope: !3358)
!3411 = !DILocation(line: 59, column: 29, scope: !3358)
!3412 = !DILocation(line: 59, column: 45, scope: !3358)
!3413 = !DILocation(line: 69, column: 17, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3358, file: !723, line: 69, column: 7)
!3415 = !DILocation(line: 57, column: 50, scope: !3358)
!3416 = !DILocation(line: 69, column: 33, scope: !3414)
!3417 = !DILocation(line: 69, column: 53, scope: !3414)
!3418 = !DILocation(line: 69, column: 59, scope: !3414)
!3419 = !DILocation(line: 69, column: 7, scope: !3358)
!3420 = !DILocation(line: 71, column: 11, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3414, file: !723, line: 70, column: 5)
!3422 = !DILocation(line: 72, column: 9, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3421, file: !723, line: 71, column: 11)
!3424 = !DILocation(line: 72, column: 15, scope: !3423)
!3425 = !DILocation(line: 77, column: 1, scope: !3358)
!3426 = !DISubprogram(name: "__fpending", scope: !3427, file: !3427, line: 75, type: !3428, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3427 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3428 = !DISubroutineType(types: !3429)
!3429 = !{!110, !3361}
!3430 = distinct !DISubprogram(name: "rpl_fclose", scope: !725, file: !725, line: 58, type: !3431, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3467)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!108, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3435, file: !251, line: 51, baseType: !108, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3435, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3435, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3435, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3435, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3435, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3435, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3435, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3435, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3435, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3435, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3435, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3435, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3435, file: !251, line: 70, baseType: !3451, size: 64, offset: 832)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3435, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3435, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3435, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3435, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3435, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3435, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3435, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3435, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3435, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3435, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3435, file: !251, line: 93, baseType: !3451, size: 64, offset: 1344)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3435, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3435, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3435, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3435, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3467 = !{!3468, !3469, !3470, !3471}
!3468 = !DILocalVariable(name: "fp", arg: 1, scope: !3430, file: !725, line: 58, type: !3433)
!3469 = !DILocalVariable(name: "saved_errno", scope: !3430, file: !725, line: 60, type: !108)
!3470 = !DILocalVariable(name: "fd", scope: !3430, file: !725, line: 63, type: !108)
!3471 = !DILocalVariable(name: "result", scope: !3430, file: !725, line: 74, type: !108)
!3472 = !DILocation(line: 0, scope: !3430)
!3473 = !DILocation(line: 63, column: 12, scope: !3430)
!3474 = !DILocation(line: 64, column: 10, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3430, file: !725, line: 64, column: 7)
!3476 = !DILocation(line: 64, column: 7, scope: !3430)
!3477 = !DILocation(line: 65, column: 12, scope: !3475)
!3478 = !DILocation(line: 65, column: 5, scope: !3475)
!3479 = !DILocation(line: 70, column: 9, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3430, file: !725, line: 70, column: 7)
!3481 = !DILocation(line: 70, column: 23, scope: !3480)
!3482 = !DILocation(line: 70, column: 33, scope: !3480)
!3483 = !DILocation(line: 70, column: 26, scope: !3480)
!3484 = !DILocation(line: 70, column: 59, scope: !3480)
!3485 = !DILocation(line: 71, column: 7, scope: !3480)
!3486 = !DILocation(line: 71, column: 10, scope: !3480)
!3487 = !DILocation(line: 70, column: 7, scope: !3430)
!3488 = !DILocation(line: 100, column: 12, scope: !3430)
!3489 = !DILocation(line: 105, column: 7, scope: !3430)
!3490 = !DILocation(line: 72, column: 19, scope: !3480)
!3491 = !DILocation(line: 105, column: 19, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3430, file: !725, line: 105, column: 7)
!3493 = !DILocation(line: 107, column: 13, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3492, file: !725, line: 106, column: 5)
!3495 = !DILocation(line: 109, column: 5, scope: !3494)
!3496 = !DILocation(line: 112, column: 1, scope: !3430)
!3497 = !DISubprogram(name: "fileno", scope: !342, file: !342, line: 809, type: !3431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3498 = !DISubprogram(name: "fclose", scope: !342, file: !342, line: 178, type: !3431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3499 = !DISubprogram(name: "__freading", scope: !3427, file: !3427, line: 51, type: !3431, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3500 = !DISubprogram(name: "lseek", scope: !1011, file: !1011, line: 339, type: !3501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!274, !108, !274, !108}
!3503 = distinct !DISubprogram(name: "rpl_fflush", scope: !727, file: !727, line: 130, type: !3504, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3540)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!108, !3506}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3508)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3508, file: !251, line: 51, baseType: !108, size: 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3508, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3508, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3508, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3508, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3508, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3508, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3508, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3508, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3508, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3508, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3508, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3508, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3508, file: !251, line: 70, baseType: !3524, size: 64, offset: 832)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3508, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3508, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3508, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3508, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3508, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3508, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3508, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3508, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3508, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3508, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3508, file: !251, line: 93, baseType: !3524, size: 64, offset: 1344)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3508, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3508, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3508, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3508, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3540 = !{!3541}
!3541 = !DILocalVariable(name: "stream", arg: 1, scope: !3503, file: !727, line: 130, type: !3506)
!3542 = !DILocation(line: 0, scope: !3503)
!3543 = !DILocation(line: 151, column: 14, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3503, file: !727, line: 151, column: 7)
!3545 = !DILocation(line: 151, column: 22, scope: !3544)
!3546 = !DILocation(line: 151, column: 27, scope: !3544)
!3547 = !DILocation(line: 151, column: 7, scope: !3503)
!3548 = !DILocation(line: 152, column: 12, scope: !3544)
!3549 = !DILocation(line: 152, column: 5, scope: !3544)
!3550 = !DILocalVariable(name: "fp", arg: 1, scope: !3551, file: !727, line: 42, type: !3506)
!3551 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !727, file: !727, line: 42, type: !3552, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3554)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3506}
!3554 = !{!3550}
!3555 = !DILocation(line: 0, scope: !3551, inlinedAt: !3556)
!3556 = distinct !DILocation(line: 157, column: 3, scope: !3503)
!3557 = !DILocation(line: 44, column: 12, scope: !3558, inlinedAt: !3556)
!3558 = distinct !DILexicalBlock(scope: !3551, file: !727, line: 44, column: 7)
!3559 = !DILocation(line: 44, column: 19, scope: !3558, inlinedAt: !3556)
!3560 = !DILocation(line: 44, column: 7, scope: !3551, inlinedAt: !3556)
!3561 = !DILocation(line: 46, column: 5, scope: !3558, inlinedAt: !3556)
!3562 = !DILocation(line: 159, column: 10, scope: !3503)
!3563 = !DILocation(line: 159, column: 3, scope: !3503)
!3564 = !DILocation(line: 236, column: 1, scope: !3503)
!3565 = !DISubprogram(name: "fflush", scope: !342, file: !342, line: 230, type: !3504, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3566 = distinct !DISubprogram(name: "rpl_fseeko", scope: !729, file: !729, line: 28, type: !3567, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3604)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!108, !3569, !3603, !108}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3571)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3571, file: !251, line: 51, baseType: !108, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3571, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3571, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3571, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3571, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3571, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3571, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3571, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3571, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3571, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3571, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3571, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3571, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3571, file: !251, line: 70, baseType: !3587, size: 64, offset: 832)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3571, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3571, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3571, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3571, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3571, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3571, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3571, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3571, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3571, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3571, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3571, file: !251, line: 93, baseType: !3587, size: 64, offset: 1344)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3571, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3571, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3571, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3571, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !342, line: 63, baseType: !274)
!3604 = !{!3605, !3606, !3607, !3608}
!3605 = !DILocalVariable(name: "fp", arg: 1, scope: !3566, file: !729, line: 28, type: !3569)
!3606 = !DILocalVariable(name: "offset", arg: 2, scope: !3566, file: !729, line: 28, type: !3603)
!3607 = !DILocalVariable(name: "whence", arg: 3, scope: !3566, file: !729, line: 28, type: !108)
!3608 = !DILocalVariable(name: "pos", scope: !3609, file: !729, line: 123, type: !3603)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !729, line: 119, column: 5)
!3610 = distinct !DILexicalBlock(scope: !3566, file: !729, line: 55, column: 7)
!3611 = !DILocation(line: 0, scope: !3566)
!3612 = !DILocation(line: 55, column: 12, scope: !3610)
!3613 = !{!1202, !759, i64 16}
!3614 = !DILocation(line: 55, column: 33, scope: !3610)
!3615 = !{!1202, !759, i64 8}
!3616 = !DILocation(line: 55, column: 25, scope: !3610)
!3617 = !DILocation(line: 56, column: 7, scope: !3610)
!3618 = !DILocation(line: 56, column: 15, scope: !3610)
!3619 = !DILocation(line: 56, column: 37, scope: !3610)
!3620 = !{!1202, !759, i64 32}
!3621 = !DILocation(line: 56, column: 29, scope: !3610)
!3622 = !DILocation(line: 57, column: 7, scope: !3610)
!3623 = !DILocation(line: 57, column: 15, scope: !3610)
!3624 = !{!1202, !759, i64 72}
!3625 = !DILocation(line: 57, column: 29, scope: !3610)
!3626 = !DILocation(line: 55, column: 7, scope: !3566)
!3627 = !DILocation(line: 123, column: 26, scope: !3609)
!3628 = !DILocation(line: 123, column: 19, scope: !3609)
!3629 = !DILocation(line: 0, scope: !3609)
!3630 = !DILocation(line: 124, column: 15, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3609, file: !729, line: 124, column: 11)
!3632 = !DILocation(line: 124, column: 11, scope: !3609)
!3633 = !DILocation(line: 135, column: 19, scope: !3609)
!3634 = !DILocation(line: 136, column: 12, scope: !3609)
!3635 = !DILocation(line: 136, column: 20, scope: !3609)
!3636 = !{!1202, !1203, i64 144}
!3637 = !DILocation(line: 167, column: 7, scope: !3609)
!3638 = !DILocation(line: 169, column: 10, scope: !3566)
!3639 = !DILocation(line: 169, column: 3, scope: !3566)
!3640 = !DILocation(line: 170, column: 1, scope: !3566)
!3641 = !DISubprogram(name: "fseeko", scope: !342, file: !342, line: 736, type: !3642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!108, !3569, !274, !108}
!3644 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !656, file: !656, line: 100, type: !3645, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !3648)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!110, !1460, !72, !110, !3647}
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!3648 = !{!3649, !3650, !3651, !3652, !3653}
!3649 = !DILocalVariable(name: "pwc", arg: 1, scope: !3644, file: !656, line: 100, type: !1460)
!3650 = !DILocalVariable(name: "s", arg: 2, scope: !3644, file: !656, line: 100, type: !72)
!3651 = !DILocalVariable(name: "n", arg: 3, scope: !3644, file: !656, line: 100, type: !110)
!3652 = !DILocalVariable(name: "ps", arg: 4, scope: !3644, file: !656, line: 100, type: !3647)
!3653 = !DILocalVariable(name: "ret", scope: !3644, file: !656, line: 130, type: !110)
!3654 = !DILocation(line: 0, scope: !3644)
!3655 = !DILocation(line: 105, column: 9, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3644, file: !656, line: 105, column: 7)
!3657 = !DILocation(line: 105, column: 7, scope: !3644)
!3658 = !DILocation(line: 117, column: 10, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3644, file: !656, line: 117, column: 7)
!3660 = !DILocation(line: 117, column: 7, scope: !3644)
!3661 = !DILocation(line: 130, column: 16, scope: !3644)
!3662 = !DILocation(line: 135, column: 11, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3644, file: !656, line: 135, column: 7)
!3664 = !DILocation(line: 135, column: 25, scope: !3663)
!3665 = !DILocation(line: 135, column: 30, scope: !3663)
!3666 = !DILocation(line: 135, column: 7, scope: !3644)
!3667 = !DILocalVariable(name: "ps", arg: 1, scope: !3668, file: !1433, line: 1135, type: !3647)
!3668 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !3669, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !3671)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3647}
!3671 = !{!3667}
!3672 = !DILocation(line: 0, scope: !3668, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 137, column: 5, scope: !3663)
!3674 = !DILocalVariable(name: "__dest", arg: 1, scope: !3675, file: !1442, line: 57, type: !107)
!3675 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !659, retainedNodes: !3676)
!3676 = !{!3674, !3677, !3678}
!3677 = !DILocalVariable(name: "__ch", arg: 2, scope: !3675, file: !1442, line: 57, type: !108)
!3678 = !DILocalVariable(name: "__len", arg: 3, scope: !3675, file: !1442, line: 57, type: !110)
!3679 = !DILocation(line: 0, scope: !3675, inlinedAt: !3680)
!3680 = distinct !DILocation(line: 1137, column: 3, scope: !3668, inlinedAt: !3673)
!3681 = !DILocation(line: 59, column: 10, scope: !3675, inlinedAt: !3680)
!3682 = !DILocation(line: 137, column: 5, scope: !3663)
!3683 = !DILocation(line: 138, column: 11, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3644, file: !656, line: 138, column: 7)
!3685 = !DILocation(line: 138, column: 7, scope: !3644)
!3686 = !DILocation(line: 139, column: 5, scope: !3684)
!3687 = !DILocation(line: 143, column: 26, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3644, file: !656, line: 143, column: 7)
!3689 = !DILocation(line: 143, column: 41, scope: !3688)
!3690 = !DILocation(line: 143, column: 7, scope: !3644)
!3691 = !DILocation(line: 145, column: 15, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3693, file: !656, line: 145, column: 11)
!3693 = distinct !DILexicalBlock(scope: !3688, file: !656, line: 144, column: 5)
!3694 = !DILocation(line: 145, column: 11, scope: !3693)
!3695 = !DILocation(line: 146, column: 32, scope: !3692)
!3696 = !DILocation(line: 146, column: 16, scope: !3692)
!3697 = !DILocation(line: 146, column: 14, scope: !3692)
!3698 = !DILocation(line: 146, column: 9, scope: !3692)
!3699 = !DILocation(line: 286, column: 1, scope: !3644)
!3700 = !DISubprogram(name: "mbsinit", scope: !3701, file: !3701, line: 293, type: !3702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !803)
!3701 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!108, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!3706 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !731, file: !731, line: 27, type: !2916, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3707)
!3707 = !{!3708, !3709, !3710, !3711}
!3708 = !DILocalVariable(name: "ptr", arg: 1, scope: !3706, file: !731, line: 27, type: !107)
!3709 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3706, file: !731, line: 27, type: !110)
!3710 = !DILocalVariable(name: "size", arg: 3, scope: !3706, file: !731, line: 27, type: !110)
!3711 = !DILocalVariable(name: "nbytes", scope: !3706, file: !731, line: 29, type: !110)
!3712 = !DILocation(line: 0, scope: !3706)
!3713 = !DILocation(line: 30, column: 7, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3706, file: !731, line: 30, column: 7)
!3715 = !DILocalVariable(name: "ptr", arg: 1, scope: !3716, file: !3008, line: 2057, type: !107)
!3716 = distinct !DISubprogram(name: "rpl_realloc", scope: !3008, file: !3008, line: 2057, type: !3000, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3717)
!3717 = !{!3715, !3718}
!3718 = !DILocalVariable(name: "size", arg: 2, scope: !3716, file: !3008, line: 2057, type: !110)
!3719 = !DILocation(line: 0, scope: !3716, inlinedAt: !3720)
!3720 = distinct !DILocation(line: 37, column: 10, scope: !3706)
!3721 = !DILocation(line: 2059, column: 24, scope: !3716, inlinedAt: !3720)
!3722 = !DILocation(line: 2059, column: 10, scope: !3716, inlinedAt: !3720)
!3723 = !DILocation(line: 37, column: 3, scope: !3706)
!3724 = !DILocation(line: 32, column: 7, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3714, file: !731, line: 31, column: 5)
!3726 = !DILocation(line: 32, column: 13, scope: !3725)
!3727 = !DILocation(line: 33, column: 7, scope: !3725)
!3728 = !DILocation(line: 38, column: 1, scope: !3706)
!3729 = distinct !DISubprogram(name: "hard_locale", scope: !674, file: !674, line: 28, type: !3730, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!234, !108}
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "category", arg: 1, scope: !3729, file: !674, line: 28, type: !108)
!3734 = !DILocalVariable(name: "locale", scope: !3729, file: !674, line: 30, type: !3735)
!3735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3736)
!3736 = !{!3737}
!3737 = !DISubrange(count: 257)
!3738 = !DILocation(line: 0, scope: !3729)
!3739 = !DILocation(line: 30, column: 3, scope: !3729)
!3740 = !DILocation(line: 30, column: 8, scope: !3729)
!3741 = !DILocation(line: 32, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3729, file: !674, line: 32, column: 7)
!3743 = !DILocation(line: 32, column: 7, scope: !3729)
!3744 = !DILocalVariable(name: "__s1", arg: 1, scope: !3745, file: !831, line: 1359, type: !72)
!3745 = distinct !DISubprogram(name: "streq", scope: !831, file: !831, line: 1359, type: !832, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3746)
!3746 = !{!3744, !3747}
!3747 = !DILocalVariable(name: "__s2", arg: 2, scope: !3745, file: !831, line: 1359, type: !72)
!3748 = !DILocation(line: 0, scope: !3745, inlinedAt: !3749)
!3749 = distinct !DILocation(line: 35, column: 9, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3729, file: !674, line: 35, column: 7)
!3751 = !DILocation(line: 1361, column: 11, scope: !3745, inlinedAt: !3749)
!3752 = !DILocation(line: 1361, column: 10, scope: !3745, inlinedAt: !3749)
!3753 = !DILocation(line: 35, column: 29, scope: !3750)
!3754 = !DILocation(line: 0, scope: !3745, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 35, column: 32, scope: !3750)
!3756 = !DILocation(line: 1361, column: 11, scope: !3745, inlinedAt: !3755)
!3757 = !DILocation(line: 1361, column: 10, scope: !3745, inlinedAt: !3755)
!3758 = !DILocation(line: 35, column: 7, scope: !3729)
!3759 = !DILocation(line: 46, column: 3, scope: !3729)
!3760 = !DILocation(line: 47, column: 1, scope: !3729)
!3761 = distinct !DISubprogram(name: "setlocale_null_r", scope: !736, file: !736, line: 154, type: !3762, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3764)
!3762 = !DISubroutineType(types: !3763)
!3763 = !{!108, !108, !255, !110}
!3764 = !{!3765, !3766, !3767}
!3765 = !DILocalVariable(name: "category", arg: 1, scope: !3761, file: !736, line: 154, type: !108)
!3766 = !DILocalVariable(name: "buf", arg: 2, scope: !3761, file: !736, line: 154, type: !255)
!3767 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3761, file: !736, line: 154, type: !110)
!3768 = !DILocation(line: 0, scope: !3761)
!3769 = !DILocation(line: 159, column: 10, scope: !3761)
!3770 = !DILocation(line: 159, column: 3, scope: !3761)
!3771 = distinct !DISubprogram(name: "setlocale_null", scope: !736, file: !736, line: 186, type: !3772, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!72, !108}
!3774 = !{!3775}
!3775 = !DILocalVariable(name: "category", arg: 1, scope: !3771, file: !736, line: 186, type: !108)
!3776 = !DILocation(line: 0, scope: !3771)
!3777 = !DILocation(line: 189, column: 10, scope: !3771)
!3778 = !DILocation(line: 189, column: 3, scope: !3771)
!3779 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !738, file: !738, line: 35, type: !3772, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3780)
!3780 = !{!3781, !3782}
!3781 = !DILocalVariable(name: "category", arg: 1, scope: !3779, file: !738, line: 35, type: !108)
!3782 = !DILocalVariable(name: "result", scope: !3779, file: !738, line: 37, type: !72)
!3783 = !DILocation(line: 0, scope: !3779)
!3784 = !DILocation(line: 37, column: 24, scope: !3779)
!3785 = !DILocation(line: 62, column: 3, scope: !3779)
!3786 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !738, file: !738, line: 66, type: !3762, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3787)
!3787 = !{!3788, !3789, !3790, !3791, !3792}
!3788 = !DILocalVariable(name: "category", arg: 1, scope: !3786, file: !738, line: 66, type: !108)
!3789 = !DILocalVariable(name: "buf", arg: 2, scope: !3786, file: !738, line: 66, type: !255)
!3790 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3786, file: !738, line: 66, type: !110)
!3791 = !DILocalVariable(name: "result", scope: !3786, file: !738, line: 111, type: !72)
!3792 = !DILocalVariable(name: "length", scope: !3793, file: !738, line: 125, type: !110)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !738, line: 124, column: 5)
!3794 = distinct !DILexicalBlock(scope: !3786, file: !738, line: 113, column: 7)
!3795 = !DILocation(line: 0, scope: !3786)
!3796 = !DILocation(line: 0, scope: !3779, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 111, column: 24, scope: !3786)
!3798 = !DILocation(line: 37, column: 24, scope: !3779, inlinedAt: !3797)
!3799 = !DILocation(line: 113, column: 14, scope: !3794)
!3800 = !DILocation(line: 113, column: 7, scope: !3786)
!3801 = !DILocation(line: 116, column: 19, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !738, line: 116, column: 11)
!3803 = distinct !DILexicalBlock(scope: !3794, file: !738, line: 114, column: 5)
!3804 = !DILocation(line: 116, column: 11, scope: !3803)
!3805 = !DILocation(line: 120, column: 16, scope: !3802)
!3806 = !DILocation(line: 120, column: 9, scope: !3802)
!3807 = !DILocation(line: 125, column: 23, scope: !3793)
!3808 = !DILocation(line: 0, scope: !3793)
!3809 = !DILocation(line: 126, column: 18, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3793, file: !738, line: 126, column: 11)
!3811 = !DILocation(line: 126, column: 11, scope: !3793)
!3812 = !DILocation(line: 128, column: 39, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !3810, file: !738, line: 127, column: 9)
!3814 = !DILocalVariable(name: "__dest", arg: 1, scope: !3815, file: !1442, line: 26, type: !3276)
!3815 = distinct !DISubprogram(name: "memcpy", scope: !1442, file: !1442, line: 26, type: !3274, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3816)
!3816 = !{!3814, !3817, !3818}
!3817 = !DILocalVariable(name: "__src", arg: 2, scope: !3815, file: !1442, line: 26, type: !962)
!3818 = !DILocalVariable(name: "__len", arg: 3, scope: !3815, file: !1442, line: 26, type: !110)
!3819 = !DILocation(line: 0, scope: !3815, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 128, column: 11, scope: !3813)
!3821 = !DILocation(line: 29, column: 10, scope: !3815, inlinedAt: !3820)
!3822 = !DILocation(line: 129, column: 11, scope: !3813)
!3823 = !DILocation(line: 133, column: 23, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3825, file: !738, line: 133, column: 15)
!3825 = distinct !DILexicalBlock(scope: !3810, file: !738, line: 132, column: 9)
!3826 = !DILocation(line: 133, column: 15, scope: !3825)
!3827 = !DILocation(line: 138, column: 44, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !738, line: 134, column: 13)
!3829 = !DILocation(line: 0, scope: !3815, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 138, column: 15, scope: !3828)
!3831 = !DILocation(line: 29, column: 10, scope: !3815, inlinedAt: !3830)
!3832 = !DILocation(line: 139, column: 15, scope: !3828)
!3833 = !DILocation(line: 139, column: 32, scope: !3828)
!3834 = !DILocation(line: 140, column: 13, scope: !3828)
!3835 = !DILocation(line: 0, scope: !3794)
!3836 = !DILocation(line: 145, column: 1, scope: !3786)
