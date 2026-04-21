; ModuleID = 'src/unlink.bc'
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !326
@.str.21 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !318
@.str.1.22 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !320
@.str.2.23 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !322
@.str.3.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !324
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !328
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !334
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !366
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !336
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !356
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !358
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !360
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !362
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !364
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !368
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !370
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !375
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !380
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !383
@optind = external local_unnamed_addr global i32, align 4
@.str.1.46 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !387
@.str.2.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !389
@.str.3.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !391
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !403
@.str.51 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !409
@.str.1.52 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !411
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !413
@.str.55 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !444
@.str.1.56 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !447
@.str.2.57 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !449
@.str.3.58 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !454
@.str.4.59 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !456
@.str.5.60 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !458
@.str.6.61 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !460
@.str.7.62 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !462
@.str.8.63 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !464
@.str.9.64 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !466
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.55, ptr @.str.1.56, ptr @.str.2.57, ptr @.str.3.58, ptr @.str.4.59, ptr @.str.5.60, ptr @.str.6.61, ptr @.str.7.62, ptr @.str.8.63, ptr @.str.9.64, ptr null], align 16, !dbg !468
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !479
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !493
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !531
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !538
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !495
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !540
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !483
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !500
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !502
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !504
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !506
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !508
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !546
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !549
@.str.2.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !551
@.str.3.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !553
@.str.4.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !555
@.str.5.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !557
@.str.6.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !562
@.str.7.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !567
@.str.8.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !569
@.str.9.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !574
@.str.10.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !579
@.str.11.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !584
@.str.12.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !589
@.str.13.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !591
@.str.14.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !596
@.str.15.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !601
@.str.16.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !606
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !611
@.str.18.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !613
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !615
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !617
@.str.21.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !619
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !621
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !623
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !628
@exit_failure = dso_local global i32 1, align 4, !dbg !636
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !642
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !645
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !647
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !649
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !652
@.str.1.127 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !667

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !741 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !745, metadata !DIExpression()), !dbg !746
  %2 = icmp eq i32 %0, 0, !dbg !747
  br i1 %2, label %8, label %3, !dbg !749

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !750, !tbaa !752
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !750
  %6 = load ptr, ptr @program_name, align 8, !dbg !750, !tbaa !752
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !750
  br label %31, !dbg !750

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !756
  %10 = load ptr, ptr @program_name, align 8, !dbg !756, !tbaa !752
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #36, !dbg !756
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !758
  %13 = load ptr, ptr @stdout, align 8, !dbg !758, !tbaa !752
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !758
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !759
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !759
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !760
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !760
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !761, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !773, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr poison, metadata !773, metadata !DIExpression()), !dbg !778
  tail call void @emit_bug_reporting_address() #36, !dbg !780
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !781
  call void @llvm.dbg.value(metadata ptr %17, metadata !776, metadata !DIExpression()), !dbg !778
  %18 = icmp eq ptr %17, null, !dbg !782
  br i1 %18, label %26, label %19, !dbg !784

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #37, !dbg !785
  %21 = icmp eq i32 %20, 0, !dbg !785
  br i1 %21, label %26, label %22, !dbg !786

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #36, !dbg !787
  %24 = load ptr, ptr @stdout, align 8, !dbg !787, !tbaa !752
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !787
  br label %26, !dbg !789

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !773, metadata !DIExpression()), !dbg !778
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !777, metadata !DIExpression()), !dbg !778
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !790
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3) #36, !dbg !790
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !791
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #36, !dbg !791
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !792
  unreachable, !dbg !792
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !793 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !798 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !804 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !807 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !68 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !811
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !812, !tbaa !813
  %3 = icmp eq i32 %2, -1, !dbg !815
  br i1 %3, label %4, label %16, !dbg !816

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #36, !dbg !817
  call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !818
  %6 = icmp eq ptr %5, null, !dbg !819
  br i1 %6, label %14, label %7, !dbg !820

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !821, !tbaa !822
  %9 = icmp eq i8 %8, 0, !dbg !821
  br i1 %9, label %14, label %10, !dbg !823

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !824, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !830, metadata !DIExpression()), !dbg !831
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #37, !dbg !833
  %12 = icmp eq i32 %11, 0, !dbg !834
  %13 = zext i1 %12 to i32, !dbg !823
  br label %14, !dbg !823

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !835, !tbaa !813
  br label %16, !dbg !836

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !837
  %18 = icmp eq i32 %17, 0, !dbg !837
  br i1 %18, label %22, label %19, !dbg !839

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !840, !tbaa !752
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !840
  br label %128, !dbg !842

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !811
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #37, !dbg !843
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !844
  call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !811
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !845
  call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !811
  %26 = icmp eq ptr %25, null, !dbg !846
  br i1 %26, label %58, label %27, !dbg !847

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !848
  br i1 %28, label %58, label %29, !dbg !849

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !850
  %30 = icmp ult ptr %24, %25, !dbg !851
  br i1 %30, label %31, label %52, !dbg !852

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !811
  %33 = load ptr, ptr %32, align 8, !tbaa !752
  br label %34, !dbg !852

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !850
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !853
  call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !850
  %38 = load i8, ptr %35, align 1, !dbg !853, !tbaa !822
  %39 = sext i8 %38 to i64, !dbg !853
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !853
  %41 = load i16, ptr %40, align 2, !dbg !853, !tbaa !854
  %42 = freeze i16 %41, !dbg !856
  %43 = lshr i16 %42, 13, !dbg !856
  %44 = and i16 %43, 1, !dbg !856
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !857
  call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !850
  %47 = icmp ult ptr %37, %25, !dbg !851
  %48 = icmp ult i64 %46, 2, !dbg !858
  %49 = select i1 %47, i1 %48, i1 false, !dbg !858
  br i1 %49, label %34, label %50, !dbg !852, !llvm.loop !859

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !861
  br i1 %51, label %52, label %54, !dbg !863

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !863

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !863
  call void @llvm.dbg.value(metadata i8 %57, metadata !233, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %56, metadata !236, metadata !DIExpression()), !dbg !811
  br label %58, !dbg !864

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !811
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %60, metadata !233, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %59, metadata !236, metadata !DIExpression()), !dbg !811
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.17) #37, !dbg !865
  call void @llvm.dbg.value(metadata i64 %61, metadata !242, metadata !DIExpression()), !dbg !811
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !866
  call void @llvm.dbg.value(metadata ptr %62, metadata !243, metadata !DIExpression()), !dbg !811
  br label %63, !dbg !867

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !811
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %65, metadata !233, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %64, metadata !243, metadata !DIExpression()), !dbg !811
  %66 = load i8, ptr %64, align 1, !dbg !868, !tbaa !822
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !869

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !870
  %69 = load i8, ptr %68, align 1, !dbg !873, !tbaa !822
  %70 = icmp eq i8 %69, 45, !dbg !874
  %71 = select i1 %70, i8 0, i8 %65, !dbg !875
  br label %72, !dbg !875

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !811
  call void @llvm.dbg.value(metadata i8 %73, metadata !233, metadata !DIExpression()), !dbg !811
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !876
  %75 = load ptr, ptr %74, align 8, !dbg !876, !tbaa !752
  %76 = sext i8 %66 to i64, !dbg !876
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !876
  %78 = load i16, ptr %77, align 2, !dbg !876, !tbaa !854
  %79 = and i16 %78, 8192, !dbg !876
  %80 = icmp eq i16 %79, 0, !dbg !876
  br i1 %80, label %96, label %81, !dbg !878

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !879
  br i1 %82, label %98, label %83, !dbg !882

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !883
  %85 = load i8, ptr %84, align 1, !dbg !883, !tbaa !822
  %86 = sext i8 %85 to i64, !dbg !883
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !883
  %88 = load i16, ptr %87, align 2, !dbg !883, !tbaa !854
  %89 = and i16 %88, 8192, !dbg !883
  %90 = icmp eq i16 %89, 0, !dbg !883
  br i1 %90, label %91, label %98, !dbg !884

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !885
  %93 = icmp ne i8 %92, 0, !dbg !885
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !887
  br i1 %95, label %96, label %98, !dbg !887

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !888
  call void @llvm.dbg.value(metadata ptr %97, metadata !243, metadata !DIExpression()), !dbg !811
  br label %63, !dbg !867, !llvm.loop !889

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !891
  %100 = load ptr, ptr @stdout, align 8, !dbg !891, !tbaa !752
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !891
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !301, metadata !DIExpression()), !dbg !811
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #37, !dbg !912
  %103 = icmp eq i32 %102, 0, !dbg !912
  br i1 %103, label %107, label %104, !dbg !914

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #37, !dbg !915
  %106 = icmp eq i32 %105, 0, !dbg !915
  br i1 %106, label %107, label %110, !dbg !916

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !917
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !917
  br label %113, !dbg !919

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !920
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !920
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !752
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %114), !dbg !922
  %116 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !752
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %116), !dbg !923
  %118 = ptrtoint ptr %64 to i64, !dbg !924
  %119 = sub i64 %118, %99, !dbg !924
  %120 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !752
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !924
  %122 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !752
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %122), !dbg !925
  %124 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !752
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %124), !dbg !926
  %126 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !752
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !927
  br label %128, !dbg !928

128:                                              ; preds = %113, %19
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
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !964 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !969, metadata !DIExpression()), !dbg !971
  call void @llvm.dbg.value(metadata ptr %1, metadata !970, metadata !DIExpression()), !dbg !971
  %3 = load ptr, ptr %1, align 8, !dbg !972, !tbaa !752
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !973
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !974
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !975
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !976
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !977
  %8 = load ptr, ptr @Version, align 8, !dbg !978, !tbaa !752
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !979
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !980
  %10 = load i32, ptr @optind, align 4, !dbg !981, !tbaa !813
  %11 = icmp slt i32 %10, %0, !dbg !983
  br i1 %11, label %14, label %12, !dbg !984

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !985
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #36, !dbg !985
  tail call void @usage(i32 noundef 1) #40, !dbg !987
  unreachable, !dbg !987

14:                                               ; preds = %2
  %15 = add nsw i32 %10, 1, !dbg !988
  %16 = icmp slt i32 %15, %0, !dbg !989
  br i1 %16, label %17, label %25, !dbg !991

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !992
  %19 = load i32, ptr @optind, align 4, !dbg !992, !tbaa !813
  %20 = add nsw i32 %19, 1, !dbg !992
  %21 = sext i32 %20 to i64, !dbg !992
  %22 = getelementptr inbounds ptr, ptr %1, i64 %21, !dbg !992
  %23 = load ptr, ptr %22, align 8, !dbg !992, !tbaa !752
  %24 = tail call ptr @quote(ptr noundef %23) #36, !dbg !992
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %24) #36, !dbg !992
  tail call void @usage(i32 noundef 1) #40, !dbg !994
  unreachable, !dbg !994

25:                                               ; preds = %14
  %26 = sext i32 %10 to i64, !dbg !995
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26, !dbg !995
  %28 = load ptr, ptr %27, align 8, !dbg !995, !tbaa !752
  %29 = tail call i32 @unlink(ptr noundef %28) #36, !dbg !997
  %30 = icmp eq i32 %29, 0, !dbg !998
  br i1 %30, label %40, label %31, !dbg !999

31:                                               ; preds = %25
  %32 = tail call ptr @__errno_location() #39, !dbg !1000
  %33 = load i32, ptr %32, align 4, !dbg !1000, !tbaa !813
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !1000
  %35 = load i32, ptr @optind, align 4, !dbg !1000, !tbaa !813
  %36 = sext i32 %35 to i64, !dbg !1000
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1000
  %38 = load ptr, ptr %37, align 8, !dbg !1000, !tbaa !752
  %39 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %38) #36, !dbg !1000
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %33, ptr noundef %34, ptr noundef %39) #36, !dbg !1000
  unreachable, !dbg !1000

40:                                               ; preds = %25
  ret i32 0, !dbg !1001
}

; Function Attrs: nounwind
declare !dbg !1002 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1005 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1006 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1009 noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1013 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1017 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1019, metadata !DIExpression()), !dbg !1020
  store ptr %0, ptr @file_name, align 8, !dbg !1021, !tbaa !752
  ret void, !dbg !1022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1023 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1027, metadata !DIExpression()), !dbg !1028
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1029, !tbaa !1030
  ret void, !dbg !1032
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1033 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1038, !tbaa !752
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1039
  %3 = icmp eq i32 %2, 0, !dbg !1040
  br i1 %3, label %22, label %4, !dbg !1041

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1042, !tbaa !1030, !range !1043, !noundef !797
  %6 = icmp eq i8 %5, 0, !dbg !1042
  br i1 %6, label %11, label %7, !dbg !1044

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1045
  %9 = load i32, ptr %8, align 4, !dbg !1045, !tbaa !813
  %10 = icmp eq i32 %9, 32, !dbg !1046
  br i1 %10, label %22, label %11, !dbg !1047

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #36, !dbg !1048
  call void @llvm.dbg.value(metadata ptr %12, metadata !1035, metadata !DIExpression()), !dbg !1049
  %13 = load ptr, ptr @file_name, align 8, !dbg !1050, !tbaa !752
  %14 = icmp eq ptr %13, null, !dbg !1050
  %15 = tail call ptr @__errno_location() #39, !dbg !1052
  %16 = load i32, ptr %15, align 4, !dbg !1052, !tbaa !813
  br i1 %14, label %19, label %17, !dbg !1053

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1054
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #36, !dbg !1054
  br label %20, !dbg !1054

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #36, !dbg !1055
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1056, !tbaa !813
  tail call void @_exit(i32 noundef %21) #38, !dbg !1057
  unreachable, !dbg !1057

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1058, !tbaa !752
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1060
  %25 = icmp eq i32 %24, 0, !dbg !1061
  br i1 %25, label %28, label %26, !dbg !1062

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1063, !tbaa !813
  tail call void @_exit(i32 noundef %27) #38, !dbg !1064
  unreachable, !dbg !1064

28:                                               ; preds = %22
  ret void, !dbg !1065
}

; Function Attrs: noreturn
declare !dbg !1066 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1067 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1071, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 %1, metadata !1072, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr %2, metadata !1073, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr %3, metadata !1074, metadata !DIExpression()), !dbg !1075
  tail call fastcc void @flush_stdout(), !dbg !1076
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1077, !tbaa !752
  %6 = icmp eq ptr %5, null, !dbg !1077
  br i1 %6, label %8, label %7, !dbg !1079

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1080
  br label %12, !dbg !1080

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1081, !tbaa !752
  %10 = tail call ptr @getprogname() #37, !dbg !1081
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %10) #36, !dbg !1081
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1083
  ret void, !dbg !1084
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1085 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1087, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i32 1, metadata !1089, metadata !DIExpression()), !dbg !1094
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1097
  %2 = icmp slt i32 %1, 0, !dbg !1098
  br i1 %2, label %6, label %3, !dbg !1099

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1100, !tbaa !752
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1100
  br label %6, !dbg !1100

6:                                                ; preds = %3, %0
  ret void, !dbg !1101
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1102 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1104, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %1, metadata !1105, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %2, metadata !1106, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata ptr %3, metadata !1107, metadata !DIExpression()), !dbg !1108
  %6 = load ptr, ptr @stderr, align 8, !dbg !1109, !tbaa !752
  call void @llvm.dbg.value(metadata ptr %6, metadata !1110, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr %2, metadata !1150, metadata !DIExpression()), !dbg !1152
  call void @llvm.dbg.value(metadata ptr %3, metadata !1151, metadata !DIExpression()), !dbg !1152
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1154
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1155, !tbaa !813
  %9 = add i32 %8, 1, !dbg !1155
  store i32 %9, ptr @error_message_count, align 4, !dbg !1155, !tbaa !813
  %10 = icmp eq i32 %1, 0, !dbg !1156
  br i1 %10, label %20, label %11, !dbg !1158

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1159, metadata !DIExpression()), !dbg !1167
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1169
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1163, metadata !DIExpression()), !dbg !1170
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1171
  call void @llvm.dbg.value(metadata ptr %12, metadata !1162, metadata !DIExpression()), !dbg !1167
  %13 = icmp eq ptr %12, null, !dbg !1172
  br i1 %13, label %14, label %16, !dbg !1174

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #36, !dbg !1175
  call void @llvm.dbg.value(metadata ptr %15, metadata !1162, metadata !DIExpression()), !dbg !1167
  br label %16, !dbg !1176

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1167
  call void @llvm.dbg.value(metadata ptr %17, metadata !1162, metadata !DIExpression()), !dbg !1167
  %18 = load ptr, ptr @stderr, align 8, !dbg !1177, !tbaa !752
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %17) #36, !dbg !1177
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1178
  br label %20, !dbg !1179

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1180, !tbaa !752
  call void @llvm.dbg.value(metadata i32 10, metadata !1181, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata ptr %21, metadata !1187, metadata !DIExpression()), !dbg !1188
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1190
  %23 = load ptr, ptr %22, align 8, !dbg !1190, !tbaa !1191
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1190
  %25 = load ptr, ptr %24, align 8, !dbg !1190, !tbaa !1194
  %26 = icmp ult ptr %23, %25, !dbg !1190
  br i1 %26, label %29, label %27, !dbg !1190, !prof !1195

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1190
  br label %31, !dbg !1190

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1190
  store ptr %30, ptr %22, align 8, !dbg !1190, !tbaa !1191
  store i8 10, ptr %23, align 1, !dbg !1190, !tbaa !822
  br label %31, !dbg !1190

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1196, !tbaa !752
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1196
  %34 = icmp eq i32 %0, 0, !dbg !1197
  br i1 %34, label %36, label %35, !dbg !1199

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1200
  unreachable, !dbg !1200

36:                                               ; preds = %31
  ret void, !dbg !1201
}

declare !dbg !1202 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1205 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1208 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1211 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1214 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1218 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1222, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %1, metadata !1223, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata ptr %2, metadata !1224, metadata !DIExpression()), !dbg !1231
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1232
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1225, metadata !DIExpression()), !dbg !1233
  call void @llvm.va_start(ptr nonnull %4), !dbg !1234
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1235
  call void @llvm.va_end(ptr nonnull %4), !dbg !1236
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1237
  ret void, !dbg !1237
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !350, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i32 %1, metadata !351, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr %2, metadata !352, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i32 %3, metadata !353, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr %4, metadata !354, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr %5, metadata !355, metadata !DIExpression()), !dbg !1238
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1239, !tbaa !813
  %8 = icmp eq i32 %7, 0, !dbg !1239
  br i1 %8, label %23, label %9, !dbg !1241

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1242, !tbaa !813
  %11 = icmp eq i32 %10, %3, !dbg !1245
  br i1 %11, label %12, label %22, !dbg !1246

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1247, !tbaa !752
  %14 = icmp eq ptr %13, %2, !dbg !1248
  br i1 %14, label %36, label %15, !dbg !1249

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1250
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1251
  br i1 %18, label %19, label %22, !dbg !1251

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1252
  %21 = icmp eq i32 %20, 0, !dbg !1253
  br i1 %21, label %36, label %22, !dbg !1254

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1255, !tbaa !752
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1256, !tbaa !813
  br label %23, !dbg !1257

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1258
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1259, !tbaa !752
  %25 = icmp eq ptr %24, null, !dbg !1259
  br i1 %25, label %27, label %26, !dbg !1261

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1262
  br label %31, !dbg !1262

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1263, !tbaa !752
  %29 = tail call ptr @getprogname() #37, !dbg !1263
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %29) #36, !dbg !1263
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1265, !tbaa !752
  %33 = icmp eq ptr %2, null, !dbg !1265
  %34 = select i1 %33, ptr @.str.3.32, ptr @.str.2.33, !dbg !1265
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1265
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1266
  br label %36, !dbg !1267

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1267
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1268 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1272, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1273, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata ptr %2, metadata !1274, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %3, metadata !1275, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata ptr %4, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1279
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.va_start(ptr nonnull %6), !dbg !1281
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1282
  call void @llvm.va_end(ptr nonnull %6), !dbg !1283
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1284
  ret void, !dbg !1284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1285 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1288, !tbaa !752
  ret ptr %1, !dbg !1289
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1290 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1295, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %1, metadata !1296, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %2, metadata !1297, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %3, metadata !1298, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %4, metadata !1299, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %5, metadata !1300, metadata !DIExpression()), !dbg !1321
  %8 = load i32, ptr @opterr, align 4, !dbg !1322, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %8, metadata !1301, metadata !DIExpression()), !dbg !1321
  store i32 0, ptr @opterr, align 4, !dbg !1323, !tbaa !813
  %9 = icmp eq i32 %0, 2, !dbg !1324
  br i1 %9, label %10, label %15, !dbg !1325

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %11, metadata !1302, metadata !DIExpression()), !dbg !1327
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1328

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #36, !dbg !1329
  br label %15, !dbg !1330

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1305, metadata !DIExpression()), !dbg !1332
  call void @llvm.va_start(ptr nonnull %7), !dbg !1333
  %14 = load ptr, ptr @stdout, align 8, !dbg !1334, !tbaa !752
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #36, !dbg !1335
  call void @exit(i32 noundef 0) #38, !dbg !1336
  unreachable, !dbg !1336

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1337, !tbaa !813
  store i32 0, ptr @optind, align 4, !dbg !1338, !tbaa !813
  ret void, !dbg !1339
}

; Function Attrs: nounwind
declare !dbg !1340 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1346 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1350, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %1, metadata !1351, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %2, metadata !1352, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %3, metadata !1353, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %4, metadata !1354, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i1 %5, metadata !1355, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %6, metadata !1356, metadata !DIExpression()), !dbg !1365
  %9 = load i32, ptr @opterr, align 4, !dbg !1366, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %9, metadata !1357, metadata !DIExpression()), !dbg !1365
  store i32 1, ptr @opterr, align 4, !dbg !1367, !tbaa !813
  %10 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1368
  call void @llvm.dbg.value(metadata ptr %10, metadata !1358, metadata !DIExpression()), !dbg !1365
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1369
  call void @llvm.dbg.value(metadata i32 %11, metadata !1359, metadata !DIExpression()), !dbg !1365
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1370

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #36, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1360, metadata !DIExpression()), !dbg !1372
  call void @llvm.va_start(ptr nonnull %8), !dbg !1373
  %13 = load ptr, ptr @stdout, align 8, !dbg !1374, !tbaa !752
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1375
  call void @exit(i32 noundef 0) #38, !dbg !1376
  unreachable, !dbg !1376

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1377, !tbaa !813
  br label %16, !dbg !1378

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #36, !dbg !1379
  br label %18, !dbg !1380

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1380, !tbaa !813
  ret void, !dbg !1381
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1382 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1384, metadata !DIExpression()), !dbg !1387
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %2, metadata !1385, metadata !DIExpression()), !dbg !1387
  %3 = icmp eq ptr %2, null, !dbg !1389
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1389
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1389
  call void @llvm.dbg.value(metadata ptr %5, metadata !1386, metadata !DIExpression()), !dbg !1387
  %6 = ptrtoint ptr %5 to i64, !dbg !1390
  %7 = ptrtoint ptr %0 to i64, !dbg !1390
  %8 = sub i64 %6, %7, !dbg !1390
  %9 = icmp sgt i64 %8, 6, !dbg !1392
  br i1 %9, label %10, label %19, !dbg !1393

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1394
  call void @llvm.dbg.value(metadata ptr %11, metadata !1395, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1400, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.value(metadata i64 7, metadata !1401, metadata !DIExpression()), !dbg !1402
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1404
  %13 = icmp eq i32 %12, 0, !dbg !1405
  br i1 %13, label %14, label %19, !dbg !1406

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1384, metadata !DIExpression()), !dbg !1387
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #37, !dbg !1407
  %16 = icmp eq i32 %15, 0, !dbg !1410
  %17 = select i1 %16, i64 3, i64 0, !dbg !1411
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1411
  br label %19, !dbg !1411

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1387
  call void @llvm.dbg.value(metadata ptr %21, metadata !1386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %20, metadata !1384, metadata !DIExpression()), !dbg !1387
  store ptr %20, ptr @program_name, align 8, !dbg !1412, !tbaa !752
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1413, !tbaa !752
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1414, !tbaa !752
  ret void, !dbg !1415
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1416 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !415 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !422, metadata !DIExpression()), !dbg !1417
  call void @llvm.dbg.value(metadata ptr %1, metadata !423, metadata !DIExpression()), !dbg !1417
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1418
  call void @llvm.dbg.value(metadata ptr %5, metadata !424, metadata !DIExpression()), !dbg !1417
  %6 = icmp eq ptr %5, %0, !dbg !1419
  br i1 %6, label %7, label %14, !dbg !1421

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1422
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1423
  call void @llvm.dbg.declare(metadata ptr %4, metadata !430, metadata !DIExpression()), !dbg !1424
  call void @llvm.dbg.value(metadata ptr %4, metadata !1425, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %4, metadata !1434, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i32 0, metadata !1440, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.value(metadata i64 8, metadata !1441, metadata !DIExpression()), !dbg !1442
  store i64 0, ptr %4, align 8, !dbg !1444
  call void @llvm.dbg.value(metadata ptr %3, metadata !425, metadata !DIExpression(DW_OP_deref)), !dbg !1417
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1445
  %9 = icmp eq i64 %8, 2, !dbg !1447
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !425, metadata !DIExpression()), !dbg !1417
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1448
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1417
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1449
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1449
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1417
  ret ptr %15, !dbg !1449
}

; Function Attrs: nounwind
declare !dbg !1450 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1456 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1461, metadata !DIExpression()), !dbg !1464
  %2 = tail call ptr @__errno_location() #39, !dbg !1465
  %3 = load i32, ptr %2, align 4, !dbg !1465, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %3, metadata !1462, metadata !DIExpression()), !dbg !1464
  %4 = icmp eq ptr %0, null, !dbg !1466
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1466
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1467
  call void @llvm.dbg.value(metadata ptr %6, metadata !1463, metadata !DIExpression()), !dbg !1464
  store i32 %3, ptr %2, align 4, !dbg !1468, !tbaa !813
  ret ptr %6, !dbg !1469
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1470 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1476, metadata !DIExpression()), !dbg !1477
  %2 = icmp eq ptr %0, null, !dbg !1478
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1478
  %4 = load i32, ptr %3, align 8, !dbg !1479, !tbaa !1480
  ret i32 %4, !dbg !1482
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1483 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1487, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.value(metadata i32 %1, metadata !1488, metadata !DIExpression()), !dbg !1489
  %3 = icmp eq ptr %0, null, !dbg !1490
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1490
  store i32 %1, ptr %4, align 8, !dbg !1491, !tbaa !1480
  ret void, !dbg !1492
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1493 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1497, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %1, metadata !1498, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %2, metadata !1499, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8 %1, metadata !1500, metadata !DIExpression()), !dbg !1505
  %4 = icmp eq ptr %0, null, !dbg !1506
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1506
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1507
  %7 = lshr i8 %1, 5, !dbg !1508
  %8 = zext i8 %7 to i64, !dbg !1508
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1509
  call void @llvm.dbg.value(metadata ptr %9, metadata !1501, metadata !DIExpression()), !dbg !1505
  %10 = and i8 %1, 31, !dbg !1510
  %11 = zext i8 %10 to i32, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %11, metadata !1503, metadata !DIExpression()), !dbg !1505
  %12 = load i32, ptr %9, align 4, !dbg !1511, !tbaa !813
  %13 = lshr i32 %12, %11, !dbg !1512
  %14 = and i32 %13, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i32 %14, metadata !1504, metadata !DIExpression()), !dbg !1505
  %15 = xor i32 %13, %2, !dbg !1514
  %16 = and i32 %15, 1, !dbg !1514
  %17 = shl nuw i32 %16, %11, !dbg !1515
  %18 = xor i32 %17, %12, !dbg !1516
  store i32 %18, ptr %9, align 4, !dbg !1516, !tbaa !813
  ret i32 %14, !dbg !1517
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1518 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1522, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %1, metadata !1523, metadata !DIExpression()), !dbg !1525
  %3 = icmp eq ptr %0, null, !dbg !1526
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1528
  call void @llvm.dbg.value(metadata ptr %4, metadata !1522, metadata !DIExpression()), !dbg !1525
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1529
  %6 = load i32, ptr %5, align 4, !dbg !1529, !tbaa !1530
  call void @llvm.dbg.value(metadata i32 %6, metadata !1524, metadata !DIExpression()), !dbg !1525
  store i32 %1, ptr %5, align 4, !dbg !1531, !tbaa !1530
  ret i32 %6, !dbg !1532
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1533 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1537, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !1540
  %4 = icmp eq ptr %0, null, !dbg !1541
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !1540
  store i32 10, ptr %5, align 8, !dbg !1544, !tbaa !1480
  %6 = icmp ne ptr %1, null, !dbg !1545
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1547
  br i1 %8, label %10, label %9, !dbg !1547

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1548
  unreachable, !dbg !1548

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1549
  store ptr %1, ptr %11, align 8, !dbg !1550, !tbaa !1551
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1552
  store ptr %2, ptr %12, align 8, !dbg !1553, !tbaa !1554
  ret void, !dbg !1555
}

; Function Attrs: noreturn nounwind
declare !dbg !1556 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1557 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1561, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %1, metadata !1562, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %2, metadata !1563, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata i64 %3, metadata !1564, metadata !DIExpression()), !dbg !1569
  call void @llvm.dbg.value(metadata ptr %4, metadata !1565, metadata !DIExpression()), !dbg !1569
  %6 = icmp eq ptr %4, null, !dbg !1570
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1570
  call void @llvm.dbg.value(metadata ptr %7, metadata !1566, metadata !DIExpression()), !dbg !1569
  %8 = tail call ptr @__errno_location() #39, !dbg !1571
  %9 = load i32, ptr %8, align 4, !dbg !1571, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %9, metadata !1567, metadata !DIExpression()), !dbg !1569
  %10 = load i32, ptr %7, align 8, !dbg !1572, !tbaa !1480
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1573
  %12 = load i32, ptr %11, align 4, !dbg !1573, !tbaa !1530
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1574
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1575
  %15 = load ptr, ptr %14, align 8, !dbg !1575, !tbaa !1551
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1576
  %17 = load ptr, ptr %16, align 8, !dbg !1576, !tbaa !1554
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1577
  call void @llvm.dbg.value(metadata i64 %18, metadata !1568, metadata !DIExpression()), !dbg !1569
  store i32 %9, ptr %8, align 4, !dbg !1578, !tbaa !813
  ret i64 %18, !dbg !1579
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1580 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1586, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %1, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %2, metadata !1588, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %3, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %4, metadata !1590, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %5, metadata !1591, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %6, metadata !1592, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %7, metadata !1593, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %8, metadata !1594, metadata !DIExpression()), !dbg !1648
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1649
  %17 = icmp eq i64 %16, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i1 %17, metadata !1595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1648
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 0, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr null, metadata !1598, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1648
  %18 = trunc i32 %5 to i8, !dbg !1651
  %19 = lshr i8 %18, 1, !dbg !1651
  %20 = and i8 %19, 1, !dbg !1651
  call void @llvm.dbg.value(metadata i8 %20, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1648
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1652

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1653
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1654
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1655
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1656
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1648
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1657
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1658
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %39, metadata !1603, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %38, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %37, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %36, metadata !1600, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %35, metadata !1599, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %34, metadata !1598, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %33, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %32, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %31, metadata !1594, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %30, metadata !1593, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %29, metadata !1590, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.label(metadata !1641), !dbg !1659
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1648
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
  ], !dbg !1660

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 5, metadata !1590, metadata !DIExpression()), !dbg !1648
  br label %115, !dbg !1661

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 5, metadata !1590, metadata !DIExpression()), !dbg !1648
  %43 = and i8 %37, 1, !dbg !1662
  %44 = icmp eq i8 %43, 0, !dbg !1662
  br i1 %44, label %45, label %115, !dbg !1661

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1664
  br i1 %46, label %115, label %47, !dbg !1667

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1664, !tbaa !822
  br label %115, !dbg !1664

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !514, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i32 %29, metadata !515, metadata !DIExpression()), !dbg !1668
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #36, !dbg !1672
  call void @llvm.dbg.value(metadata ptr %49, metadata !516, metadata !DIExpression()), !dbg !1668
  %50 = icmp eq ptr %49, @.str.11.65, !dbg !1673
  br i1 %50, label %51, label %60, !dbg !1675

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1676
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1677
  call void @llvm.dbg.declare(metadata ptr %13, metadata !518, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata ptr %13, metadata !1679, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %13, metadata !1687, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1692
  store i64 0, ptr %13, align 8, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %12, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !1668
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1695
  %53 = icmp eq i64 %52, 3, !dbg !1697
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !517, metadata !DIExpression()), !dbg !1668
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1698
  %57 = icmp eq i32 %29, 9, !dbg !1698
  %58 = select i1 %57, ptr @.str.10.67, ptr @.str.12.68, !dbg !1698
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1699
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1699
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1668
  call void @llvm.dbg.value(metadata ptr %61, metadata !1593, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !514, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i32 %29, metadata !515, metadata !DIExpression()), !dbg !1700
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #36, !dbg !1702
  call void @llvm.dbg.value(metadata ptr %62, metadata !516, metadata !DIExpression()), !dbg !1700
  %63 = icmp eq ptr %62, @.str.12.68, !dbg !1703
  br i1 %63, label %64, label %73, !dbg !1704

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1705
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1706
  call void @llvm.dbg.declare(metadata ptr %11, metadata !518, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata ptr %11, metadata !1679, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata ptr %11, metadata !1687, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1710
  store i64 0, ptr %11, align 8, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %10, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !1700
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1713
  %66 = icmp eq i64 %65, 3, !dbg !1714
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !517, metadata !DIExpression()), !dbg !1700
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1715
  %70 = icmp eq i32 %29, 9, !dbg !1715
  %71 = select i1 %70, ptr @.str.10.67, ptr @.str.12.68, !dbg !1715
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1715
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1716
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1716
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1594, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %74, metadata !1593, metadata !DIExpression()), !dbg !1648
  %76 = and i8 %37, 1, !dbg !1717
  %77 = icmp eq i8 %76, 0, !dbg !1717
  br i1 %77, label %78, label %93, !dbg !1718

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1605, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1648
  %79 = load i8, ptr %74, align 1, !dbg !1720, !tbaa !822
  %80 = icmp eq i8 %79, 0, !dbg !1722
  br i1 %80, label %93, label %81, !dbg !1722

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1605, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i64 %84, metadata !1596, metadata !DIExpression()), !dbg !1648
  %85 = icmp ult i64 %84, %40, !dbg !1723
  br i1 %85, label %86, label %88, !dbg !1726

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1723
  store i8 %82, ptr %87, align 1, !dbg !1723, !tbaa !822
  br label %88, !dbg !1723

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1726
  call void @llvm.dbg.value(metadata i64 %89, metadata !1596, metadata !DIExpression()), !dbg !1648
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1727
  call void @llvm.dbg.value(metadata ptr %90, metadata !1605, metadata !DIExpression()), !dbg !1719
  %91 = load i8, ptr %90, align 1, !dbg !1720, !tbaa !822
  %92 = icmp eq i8 %91, 0, !dbg !1722
  br i1 %92, label %93, label %81, !dbg !1722, !llvm.loop !1728

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1730
  call void @llvm.dbg.value(metadata i64 %94, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %75, metadata !1598, metadata !DIExpression()), !dbg !1648
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1731
  call void @llvm.dbg.value(metadata i64 %95, metadata !1599, metadata !DIExpression()), !dbg !1648
  br label %115, !dbg !1732

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1648
  br label %97, !dbg !1733

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %98, metadata !1600, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1648
  br label %99, !dbg !1734

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1656
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %101, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %100, metadata !1600, metadata !DIExpression()), !dbg !1648
  %102 = and i8 %101, 1, !dbg !1735
  %103 = icmp eq i8 %102, 0, !dbg !1735
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1737
  br label %105, !dbg !1737

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1648
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1651
  call void @llvm.dbg.value(metadata i8 %107, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %106, metadata !1600, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 2, metadata !1590, metadata !DIExpression()), !dbg !1648
  %108 = and i8 %107, 1, !dbg !1738
  %109 = icmp eq i8 %108, 0, !dbg !1738
  br i1 %109, label %110, label %115, !dbg !1740

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1741
  br i1 %111, label %115, label %112, !dbg !1744

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1741, !tbaa !822
  br label %115, !dbg !1741

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1648
  br label %115, !dbg !1745

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1746
  unreachable, !dbg !1746

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1730
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.67, %45 ], [ @.str.10.67, %47 ], [ @.str.10.67, %42 ], [ %34, %28 ], [ @.str.12.68, %110 ], [ @.str.12.68, %112 ], [ @.str.12.68, %105 ], [ @.str.10.67, %41 ], !dbg !1648
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1648
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1648
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %123, metadata !1601, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %122, metadata !1600, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %121, metadata !1599, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %120, metadata !1598, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %119, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %118, metadata !1594, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata ptr %117, metadata !1593, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i32 %116, metadata !1590, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 0, metadata !1610, metadata !DIExpression()), !dbg !1747
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
  br label %138, !dbg !1748

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1730
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1653
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1657
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1658
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1749
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1750
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %145, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %144, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %143, metadata !1603, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %142, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %141, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %139, metadata !1589, metadata !DIExpression()), !dbg !1648
  %147 = icmp eq i64 %139, -1, !dbg !1751
  br i1 %147, label %148, label %152, !dbg !1752

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1753
  %150 = load i8, ptr %149, align 1, !dbg !1753, !tbaa !822
  %151 = icmp eq i8 %150, 0, !dbg !1754
  br i1 %151, label %627, label %154, !dbg !1755

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1756
  br i1 %153, label %627, label %154, !dbg !1755

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1757
  br i1 %129, label %155, label %170, !dbg !1758

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1760
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1761
  br i1 %157, label %158, label %160, !dbg !1761

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1762
  call void @llvm.dbg.value(metadata i64 %159, metadata !1589, metadata !DIExpression()), !dbg !1648
  br label %160, !dbg !1763

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1763
  call void @llvm.dbg.value(metadata i64 %161, metadata !1589, metadata !DIExpression()), !dbg !1648
  %162 = icmp ugt i64 %156, %161, !dbg !1764
  br i1 %162, label %170, label %163, !dbg !1765

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %164, metadata !1767, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata ptr %120, metadata !1770, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %121, metadata !1771, metadata !DIExpression()), !dbg !1772
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1774
  %166 = icmp ne i32 %165, 0, !dbg !1775
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1776
  %168 = xor i1 %166, true, !dbg !1776
  %169 = zext i1 %168 to i8, !dbg !1776
  br i1 %167, label %170, label %688, !dbg !1776

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1757
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %173, metadata !1612, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %171, metadata !1589, metadata !DIExpression()), !dbg !1648
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1777
  %175 = load i8, ptr %174, align 1, !dbg !1777, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %175, metadata !1617, metadata !DIExpression()), !dbg !1757
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
  ], !dbg !1778

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1779

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1780

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1757
  %179 = and i8 %144, 1, !dbg !1784
  %180 = icmp eq i8 %179, 0, !dbg !1784
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1784
  br i1 %181, label %182, label %198, !dbg !1784

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1786
  br i1 %183, label %184, label %186, !dbg !1790

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1786
  store i8 39, ptr %185, align 1, !dbg !1786, !tbaa !822
  br label %186, !dbg !1786

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1790
  call void @llvm.dbg.value(metadata i64 %187, metadata !1596, metadata !DIExpression()), !dbg !1648
  %188 = icmp ult i64 %187, %146, !dbg !1791
  br i1 %188, label %189, label %191, !dbg !1794

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1791
  store i8 36, ptr %190, align 1, !dbg !1791, !tbaa !822
  br label %191, !dbg !1791

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %192, metadata !1596, metadata !DIExpression()), !dbg !1648
  %193 = icmp ult i64 %192, %146, !dbg !1795
  br i1 %193, label %194, label %196, !dbg !1798

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1795
  store i8 39, ptr %195, align 1, !dbg !1795, !tbaa !822
  br label %196, !dbg !1795

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %197, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1648
  br label %198, !dbg !1799

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1648
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %200, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %199, metadata !1596, metadata !DIExpression()), !dbg !1648
  %201 = icmp ult i64 %199, %146, !dbg !1800
  br i1 %201, label %202, label %204, !dbg !1803

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1800
  store i8 92, ptr %203, align 1, !dbg !1800, !tbaa !822
  br label %204, !dbg !1800

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %205, metadata !1596, metadata !DIExpression()), !dbg !1648
  br i1 %126, label %206, label %491, !dbg !1804

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1806
  %208 = icmp ult i64 %207, %171, !dbg !1807
  br i1 %208, label %209, label %480, !dbg !1808

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1809
  %211 = load i8, ptr %210, align 1, !dbg !1809, !tbaa !822
  %212 = add i8 %211, -48, !dbg !1810
  %213 = icmp ult i8 %212, 10, !dbg !1810
  br i1 %213, label %214, label %480, !dbg !1810

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1811
  br i1 %215, label %216, label %218, !dbg !1815

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1811
  store i8 48, ptr %217, align 1, !dbg !1811, !tbaa !822
  br label %218, !dbg !1811

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %219, metadata !1596, metadata !DIExpression()), !dbg !1648
  %220 = icmp ult i64 %219, %146, !dbg !1816
  br i1 %220, label %221, label %223, !dbg !1819

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1816
  store i8 48, ptr %222, align 1, !dbg !1816, !tbaa !822
  br label %223, !dbg !1816

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %224, metadata !1596, metadata !DIExpression()), !dbg !1648
  br label %480, !dbg !1820

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1821

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1822

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1823

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1825

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1827
  %231 = icmp ult i64 %230, %171, !dbg !1828
  br i1 %231, label %232, label %480, !dbg !1829

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1830
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1831
  %235 = load i8, ptr %234, align 1, !dbg !1831, !tbaa !822
  %236 = icmp eq i8 %235, 63, !dbg !1832
  br i1 %236, label %237, label %480, !dbg !1833

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1834
  %239 = load i8, ptr %238, align 1, !dbg !1834, !tbaa !822
  %240 = sext i8 %239 to i32, !dbg !1834
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
  ], !dbg !1835

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1836

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %230, metadata !1610, metadata !DIExpression()), !dbg !1747
  %243 = icmp ult i64 %140, %146, !dbg !1838
  br i1 %243, label %244, label %246, !dbg !1841

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1838
  store i8 63, ptr %245, align 1, !dbg !1838, !tbaa !822
  br label %246, !dbg !1838

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %247, metadata !1596, metadata !DIExpression()), !dbg !1648
  %248 = icmp ult i64 %247, %146, !dbg !1842
  br i1 %248, label %249, label %251, !dbg !1845

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1842
  store i8 34, ptr %250, align 1, !dbg !1842, !tbaa !822
  br label %251, !dbg !1842

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1845
  call void @llvm.dbg.value(metadata i64 %252, metadata !1596, metadata !DIExpression()), !dbg !1648
  %253 = icmp ult i64 %252, %146, !dbg !1846
  br i1 %253, label %254, label %256, !dbg !1849

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1846
  store i8 34, ptr %255, align 1, !dbg !1846, !tbaa !822
  br label %256, !dbg !1846

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1849
  call void @llvm.dbg.value(metadata i64 %257, metadata !1596, metadata !DIExpression()), !dbg !1648
  %258 = icmp ult i64 %257, %146, !dbg !1850
  br i1 %258, label %259, label %261, !dbg !1853

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1850
  store i8 63, ptr %260, align 1, !dbg !1850, !tbaa !822
  br label %261, !dbg !1850

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %262, metadata !1596, metadata !DIExpression()), !dbg !1648
  br label %480, !dbg !1854

263:                                              ; preds = %170
  br label %274, !dbg !1855

264:                                              ; preds = %170
  br label %274, !dbg !1856

265:                                              ; preds = %170
  br label %272, !dbg !1857

266:                                              ; preds = %170
  br label %272, !dbg !1858

267:                                              ; preds = %170
  br label %274, !dbg !1859

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1860

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1861

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1864

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1866

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1867
  call void @llvm.dbg.label(metadata !1642), !dbg !1868
  br i1 %134, label %274, label %670, !dbg !1869

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1867
  call void @llvm.dbg.label(metadata !1644), !dbg !1871
  br i1 %125, label %535, label %491, !dbg !1872

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1873

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1874, !tbaa !822
  %279 = icmp eq i8 %278, 0, !dbg !1876
  br i1 %279, label %280, label %480, !dbg !1877

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1878
  br i1 %281, label %282, label %480, !dbg !1880

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1757
  br label %283, !dbg !1881

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %284, metadata !1616, metadata !DIExpression()), !dbg !1757
  br i1 %134, label %480, label %670, !dbg !1882

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1757
  br i1 %133, label %286, label %480, !dbg !1884

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1885

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1888
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1890
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1890
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1890
  call void @llvm.dbg.value(metadata i64 %292, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %291, metadata !1597, metadata !DIExpression()), !dbg !1648
  %293 = icmp ult i64 %140, %292, !dbg !1891
  br i1 %293, label %294, label %296, !dbg !1894

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1891
  store i8 39, ptr %295, align 1, !dbg !1891, !tbaa !822
  br label %296, !dbg !1891

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64 %297, metadata !1596, metadata !DIExpression()), !dbg !1648
  %298 = icmp ult i64 %297, %292, !dbg !1895
  br i1 %298, label %299, label %301, !dbg !1898

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1895
  store i8 92, ptr %300, align 1, !dbg !1895, !tbaa !822
  br label %301, !dbg !1895

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1898
  call void @llvm.dbg.value(metadata i64 %302, metadata !1596, metadata !DIExpression()), !dbg !1648
  %303 = icmp ult i64 %302, %292, !dbg !1899
  br i1 %303, label %304, label %306, !dbg !1902

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1899
  store i8 39, ptr %305, align 1, !dbg !1899, !tbaa !822
  br label %306, !dbg !1899

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1902
  call void @llvm.dbg.value(metadata i64 %307, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1648
  br label %480, !dbg !1903

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1904

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1618, metadata !DIExpression()), !dbg !1905
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1906
  %311 = load ptr, ptr %310, align 8, !dbg !1906, !tbaa !752
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1906
  %314 = load i16, ptr %313, align 2, !dbg !1906, !tbaa !854
  %315 = lshr i16 %314, 14, !dbg !1908
  %316 = trunc i16 %315 to i8, !dbg !1908
  %317 = and i8 %316, 1, !dbg !1908
  call void @llvm.dbg.value(metadata i8 %317, metadata !1621, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %171, metadata !1589, metadata !DIExpression()), !dbg !1648
  %318 = icmp eq i8 %317, 0, !dbg !1909
  call void @llvm.dbg.value(metadata i1 %318, metadata !1616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1757
  br label %368, !dbg !1910

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1622, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %14, metadata !1679, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata ptr %14, metadata !1687, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 8, metadata !1691, metadata !DIExpression()), !dbg !1915
  store i64 0, ptr %14, align 8, !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1905
  %320 = icmp eq i64 %171, -1, !dbg !1918
  br i1 %320, label %321, label %323, !dbg !1920

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %322, metadata !1589, metadata !DIExpression()), !dbg !1648
  br label %323, !dbg !1922

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1757
  call void @llvm.dbg.value(metadata i64 %324, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1923
  %325 = sub i64 %324, %145, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %15, metadata !1625, metadata !DIExpression(DW_OP_deref)), !dbg !1925
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %326, metadata !1629, metadata !DIExpression()), !dbg !1925
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1927

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1905
  %328 = icmp ugt i64 %324, %145, !dbg !1928
  br i1 %328, label %331, label %329, !dbg !1930

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %324, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i1 true, metadata !1616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1757
  br label %368, !dbg !1910

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1905
  br label %360, !dbg !1933

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1618, metadata !DIExpression()), !dbg !1905
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1935
  %335 = load i8, ptr %334, align 1, !dbg !1935, !tbaa !822
  %336 = icmp eq i8 %335, 0, !dbg !1930
  br i1 %336, label %363, label %337, !dbg !1936

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %338, metadata !1618, metadata !DIExpression()), !dbg !1905
  %339 = add i64 %338, %145, !dbg !1938
  %340 = icmp eq i64 %338, %325, !dbg !1928
  br i1 %340, label %363, label %331, !dbg !1930, !llvm.loop !1939

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1940
  %344 = and i1 %343, %133, !dbg !1940
  call void @llvm.dbg.value(metadata i64 1, metadata !1630, metadata !DIExpression()), !dbg !1941
  br i1 %344, label %345, label %354, !dbg !1940

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1630, metadata !DIExpression()), !dbg !1941
  %347 = add i64 %346, %145, !dbg !1942
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1944
  %349 = load i8, ptr %348, align 1, !dbg !1944, !tbaa !822
  %350 = sext i8 %349 to i32, !dbg !1944
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1945

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1946
  call void @llvm.dbg.value(metadata i64 %352, metadata !1630, metadata !DIExpression()), !dbg !1941
  %353 = icmp eq i64 %352, %326, !dbg !1947
  br i1 %353, label %354, label %345, !dbg !1948, !llvm.loop !1949

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1951, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %355, metadata !1625, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %355, metadata !1953, metadata !DIExpression()), !dbg !1961
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1963
  %357 = icmp ne i32 %356, 0, !dbg !1964
  %358 = zext i1 %357 to i8, !dbg !1965
  call void @llvm.dbg.value(metadata i8 %358, metadata !1621, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %326, metadata !1618, metadata !DIExpression()), !dbg !1905
  br label %363, !dbg !1966

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1932
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1621, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 0, metadata !1618, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %324, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i1 %361, metadata !1616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1757
  br label %368, !dbg !1910

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1621, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 %364, metadata !1618, metadata !DIExpression()), !dbg !1905
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1931
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %324, metadata !1589, metadata !DIExpression()), !dbg !1648
  %366 = icmp eq i8 %365, 0, !dbg !1909
  call void @llvm.dbg.value(metadata i1 %366, metadata !1616, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1757
  %367 = icmp ugt i64 %364, 1, !dbg !1967
  br i1 %367, label %374, label %368, !dbg !1910

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1968
  br i1 %373, label %374, label %480, !dbg !1968

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1969
  call void @llvm.dbg.value(metadata i64 %379, metadata !1638, metadata !DIExpression()), !dbg !1970
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1971

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1648
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1749
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1747
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1757
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1972
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %387, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %386, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %385, metadata !1612, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %384, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %383, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %382, metadata !1596, metadata !DIExpression()), !dbg !1648
  br i1 %380, label %388, label %434, !dbg !1973

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1978

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1757
  %390 = and i8 %383, 1, !dbg !1981
  %391 = icmp eq i8 %390, 0, !dbg !1981
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1981
  br i1 %392, label %393, label %409, !dbg !1981

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1983
  br i1 %394, label %395, label %397, !dbg !1987

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1983
  store i8 39, ptr %396, align 1, !dbg !1983, !tbaa !822
  br label %397, !dbg !1983

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i64 %398, metadata !1596, metadata !DIExpression()), !dbg !1648
  %399 = icmp ult i64 %398, %146, !dbg !1988
  br i1 %399, label %400, label %402, !dbg !1991

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1988
  store i8 36, ptr %401, align 1, !dbg !1988, !tbaa !822
  br label %402, !dbg !1988

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1991
  call void @llvm.dbg.value(metadata i64 %403, metadata !1596, metadata !DIExpression()), !dbg !1648
  %404 = icmp ult i64 %403, %146, !dbg !1992
  br i1 %404, label %405, label %407, !dbg !1995

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1992
  store i8 39, ptr %406, align 1, !dbg !1992, !tbaa !822
  br label %407, !dbg !1992

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !1995
  call void @llvm.dbg.value(metadata i64 %408, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1648
  br label %409, !dbg !1996

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1648
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %411, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %410, metadata !1596, metadata !DIExpression()), !dbg !1648
  %412 = icmp ult i64 %410, %146, !dbg !1997
  br i1 %412, label %413, label %415, !dbg !2000

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !1997
  store i8 92, ptr %414, align 1, !dbg !1997, !tbaa !822
  br label %415, !dbg !1997

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2000
  call void @llvm.dbg.value(metadata i64 %416, metadata !1596, metadata !DIExpression()), !dbg !1648
  %417 = icmp ult i64 %416, %146, !dbg !2001
  br i1 %417, label %418, label %422, !dbg !2004

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2001
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2001
  store i8 %420, ptr %421, align 1, !dbg !2001, !tbaa !822
  br label %422, !dbg !2001

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %423, metadata !1596, metadata !DIExpression()), !dbg !1648
  %424 = icmp ult i64 %423, %146, !dbg !2005
  br i1 %424, label %425, label %430, !dbg !2008

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2005
  %428 = or i8 %427, 48, !dbg !2005
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2005
  store i8 %428, ptr %429, align 1, !dbg !2005, !tbaa !822
  br label %430, !dbg !2005

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %431, metadata !1596, metadata !DIExpression()), !dbg !1648
  %432 = and i8 %387, 7, !dbg !2009
  %433 = or i8 %432, 48, !dbg !2010
  call void @llvm.dbg.value(metadata i8 %433, metadata !1617, metadata !DIExpression()), !dbg !1757
  br label %443, !dbg !2011

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2012
  %436 = icmp eq i8 %435, 0, !dbg !2012
  br i1 %436, label %443, label %437, !dbg !2014

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2015
  br i1 %438, label %439, label %441, !dbg !2019

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2015
  store i8 92, ptr %440, align 1, !dbg !2015, !tbaa !822
  br label %441, !dbg !2015

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %442, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1757
  br label %443, !dbg !2020

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1648
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1749
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1757
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1757
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1757
  call void @llvm.dbg.value(metadata i8 %448, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %447, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %446, metadata !1612, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %445, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %444, metadata !1596, metadata !DIExpression()), !dbg !1648
  %449 = add i64 %384, 1, !dbg !2021
  %450 = icmp ugt i64 %379, %449, !dbg !2023
  br i1 %450, label %451, label %478, !dbg !2024

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2025
  %453 = icmp ne i8 %452, 0, !dbg !2025
  %454 = and i8 %447, 1, !dbg !2025
  %455 = icmp eq i8 %454, 0, !dbg !2025
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2025
  br i1 %456, label %457, label %468, !dbg !2025

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2028
  br i1 %458, label %459, label %461, !dbg !2032

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2028
  store i8 39, ptr %460, align 1, !dbg !2028, !tbaa !822
  br label %461, !dbg !2028

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %462, metadata !1596, metadata !DIExpression()), !dbg !1648
  %463 = icmp ult i64 %462, %146, !dbg !2033
  br i1 %463, label %464, label %466, !dbg !2036

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2033
  store i8 39, ptr %465, align 1, !dbg !2033, !tbaa !822
  br label %466, !dbg !2033

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %467, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1648
  br label %468, !dbg !2037

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2038
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %470, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %469, metadata !1596, metadata !DIExpression()), !dbg !1648
  %471 = icmp ult i64 %469, %146, !dbg !2039
  br i1 %471, label %472, label %474, !dbg !2042

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2039
  store i8 %448, ptr %473, align 1, !dbg !2039, !tbaa !822
  br label %474, !dbg !2039

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %475, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %449, metadata !1610, metadata !DIExpression()), !dbg !1747
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2043
  %477 = load i8, ptr %476, align 1, !dbg !2043, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %477, metadata !1617, metadata !DIExpression()), !dbg !1757
  br label %381, !dbg !2044, !llvm.loop !2045

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1757
  call void @llvm.dbg.value(metadata i8 %448, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %479, metadata !1616, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %447, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %446, metadata !1612, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %384, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %445, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %444, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %378, metadata !1589, metadata !DIExpression()), !dbg !1648
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2048
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1648
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1653
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1648
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1648
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1747
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1757
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1757
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1757
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %489, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %488, metadata !1616, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %487, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %173, metadata !1612, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %486, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %485, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %484, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %483, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %482, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %481, metadata !1589, metadata !DIExpression()), !dbg !1648
  br i1 %127, label %502, label %491, !dbg !2049

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
  br i1 %137, label %503, label %524, !dbg !2051

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2052

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
  %514 = lshr i8 %505, 5, !dbg !2053
  %515 = zext i8 %514 to i64, !dbg !2053
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2054
  %517 = load i32, ptr %516, align 4, !dbg !2054, !tbaa !813
  %518 = and i8 %505, 31, !dbg !2055
  %519 = zext i8 %518 to i32, !dbg !2055
  %520 = shl nuw i32 1, %519, !dbg !2056
  %521 = and i32 %517, %520, !dbg !2056
  %522 = icmp eq i32 %521, 0, !dbg !2056
  %523 = and i1 %172, %522, !dbg !2057
  br i1 %523, label %573, label %535, !dbg !2057

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
  br i1 %172, label %573, label %535, !dbg !2058

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2048
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1648
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1653
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1657
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1749
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2059
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1757
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1757
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %543, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %542, metadata !1616, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %541, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %540, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %539, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %538, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %537, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %536, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.label(metadata !1645), !dbg !2060
  br i1 %132, label %545, label %674, !dbg !2061

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1757
  %546 = and i8 %540, 1, !dbg !2063
  %547 = icmp eq i8 %546, 0, !dbg !2063
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2063
  br i1 %548, label %549, label %565, !dbg !2063

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2065
  br i1 %550, label %551, label %553, !dbg !2069

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2065
  store i8 39, ptr %552, align 1, !dbg !2065, !tbaa !822
  br label %553, !dbg !2065

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %554, metadata !1596, metadata !DIExpression()), !dbg !1648
  %555 = icmp ult i64 %554, %544, !dbg !2070
  br i1 %555, label %556, label %558, !dbg !2073

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2070
  store i8 36, ptr %557, align 1, !dbg !2070, !tbaa !822
  br label %558, !dbg !2070

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2073
  call void @llvm.dbg.value(metadata i64 %559, metadata !1596, metadata !DIExpression()), !dbg !1648
  %560 = icmp ult i64 %559, %544, !dbg !2074
  br i1 %560, label %561, label %563, !dbg !2077

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2074
  store i8 39, ptr %562, align 1, !dbg !2074, !tbaa !822
  br label %563, !dbg !2074

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %564, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1648
  br label %565, !dbg !2078

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1757
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %567, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %566, metadata !1596, metadata !DIExpression()), !dbg !1648
  %568 = icmp ult i64 %566, %544, !dbg !2079
  br i1 %568, label %569, label %571, !dbg !2082

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2079
  store i8 92, ptr %570, align 1, !dbg !2079, !tbaa !822
  br label %571, !dbg !2079

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %544, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %543, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %542, metadata !1616, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %541, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %567, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %539, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %538, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %572, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %536, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.label(metadata !1646), !dbg !2083
  br label %600, !dbg !2084

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2048
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1648
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1653
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1657
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1749
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2059
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1757
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1757
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2087
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %582, metadata !1617, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %581, metadata !1616, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 %580, metadata !1615, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i64 %579, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %578, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %577, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %576, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %575, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %574, metadata !1589, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.label(metadata !1646), !dbg !2083
  %584 = and i8 %578, 1, !dbg !2084
  %585 = icmp ne i8 %584, 0, !dbg !2084
  %586 = and i8 %580, 1, !dbg !2084
  %587 = icmp eq i8 %586, 0, !dbg !2084
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2084
  br i1 %588, label %589, label %600, !dbg !2084

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2088
  br i1 %590, label %591, label %593, !dbg !2092

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2088
  store i8 39, ptr %592, align 1, !dbg !2088, !tbaa !822
  br label %593, !dbg !2088

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %594, metadata !1596, metadata !DIExpression()), !dbg !1648
  %595 = icmp ult i64 %594, %583, !dbg !2093
  br i1 %595, label %596, label %598, !dbg !2096

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2093
  store i8 39, ptr %597, align 1, !dbg !2093, !tbaa !822
  br label %598, !dbg !2093

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %599, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1648
  br label %600, !dbg !2097

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1757
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1648
  call void @llvm.dbg.value(metadata i8 %609, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %608, metadata !1596, metadata !DIExpression()), !dbg !1648
  %610 = icmp ult i64 %608, %601, !dbg !2098
  br i1 %610, label %611, label %613, !dbg !2101

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2098
  store i8 %602, ptr %612, align 1, !dbg !2098, !tbaa !822
  br label %613, !dbg !2098

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %614, metadata !1596, metadata !DIExpression()), !dbg !1648
  %615 = icmp eq i8 %603, 0, !dbg !2102
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2104
  call void @llvm.dbg.value(metadata i8 %616, metadata !1603, metadata !DIExpression()), !dbg !1648
  br label %617, !dbg !2105

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2048
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1648
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1653
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1657
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1658
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1749
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2059
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %624, metadata !1610, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 %623, metadata !1604, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %622, metadata !1603, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %621, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %620, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %619, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %618, metadata !1589, metadata !DIExpression()), !dbg !1648
  %626 = add i64 %624, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %626, metadata !1610, metadata !DIExpression()), !dbg !1747
  br label %138, !dbg !2107, !llvm.loop !2108

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1587, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %143, metadata !1603, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 %142, metadata !1602, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %141, metadata !1597, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %139, metadata !1589, metadata !DIExpression()), !dbg !1648
  %628 = icmp eq i64 %140, 0, !dbg !2110
  %629 = and i1 %133, %628, !dbg !2112
  %630 = xor i1 %629, true, !dbg !2112
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2112
  br i1 %631, label %632, label %670, !dbg !2112

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2113
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2113
  br i1 %636, label %637, label %646, !dbg !2113

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2115
  %639 = icmp eq i8 %638, 0, !dbg !2115
  br i1 %639, label %642, label %640, !dbg !2118

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2119
  br label %694, !dbg !2120

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2121
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2123
  br i1 %645, label %28, label %646, !dbg !2123

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2124
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2126
  br i1 %649, label %650, label %665, !dbg !2126

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1598, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %140, metadata !1596, metadata !DIExpression()), !dbg !1648
  %651 = load i8, ptr %120, align 1, !dbg !2127, !tbaa !822
  %652 = icmp eq i8 %651, 0, !dbg !2130
  br i1 %652, label %665, label %653, !dbg !2130

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1598, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i64 %656, metadata !1596, metadata !DIExpression()), !dbg !1648
  %657 = icmp ult i64 %656, %146, !dbg !2131
  br i1 %657, label %658, label %660, !dbg !2134

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2131
  store i8 %654, ptr %659, align 1, !dbg !2131, !tbaa !822
  br label %660, !dbg !2131

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %661, metadata !1596, metadata !DIExpression()), !dbg !1648
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2135
  call void @llvm.dbg.value(metadata ptr %662, metadata !1598, metadata !DIExpression()), !dbg !1648
  %663 = load i8, ptr %662, align 1, !dbg !2127, !tbaa !822
  %664 = icmp eq i8 %663, 0, !dbg !2130
  br i1 %664, label %665, label %653, !dbg !2130, !llvm.loop !2136

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1730
  call void @llvm.dbg.value(metadata i64 %666, metadata !1596, metadata !DIExpression()), !dbg !1648
  %667 = icmp ult i64 %666, %146, !dbg !2138
  br i1 %667, label %668, label %694, !dbg !2140

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2141
  store i8 0, ptr %669, align 1, !dbg !2142, !tbaa !822
  br label %694, !dbg !2141

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1647), !dbg !2143
  %672 = icmp eq i8 %124, 0, !dbg !2144
  %673 = select i1 %672, i32 2, i32 4, !dbg !2144
  br label %684, !dbg !2144

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2144
  %678 = select i1 %677, i32 2, i32 4, !dbg !2144
  br label %679, !dbg !2146

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1647), !dbg !2143
  %683 = icmp eq i32 %116, 2, !dbg !2146
  br i1 %683, label %684, label %688, !dbg !2144

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2144

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1590, metadata !DIExpression()), !dbg !1648
  %692 = and i32 %5, -3, !dbg !2147
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2148
  br label %694, !dbg !2149

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2150
}

; Function Attrs: nounwind
declare !dbg !2151 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2154 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2157 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2159 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2163, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i64 %1, metadata !2164, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata ptr %2, metadata !2165, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata ptr %0, metadata !2167, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %1, metadata !2172, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr null, metadata !2173, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr %2, metadata !2174, metadata !DIExpression()), !dbg !2180
  %4 = icmp eq ptr %2, null, !dbg !2182
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %5, metadata !2175, metadata !DIExpression()), !dbg !2180
  %6 = tail call ptr @__errno_location() #39, !dbg !2183
  %7 = load i32, ptr %6, align 4, !dbg !2183, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2176, metadata !DIExpression()), !dbg !2180
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2184
  %9 = load i32, ptr %8, align 4, !dbg !2184, !tbaa !1530
  %10 = or i32 %9, 1, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %10, metadata !2177, metadata !DIExpression()), !dbg !2180
  %11 = load i32, ptr %5, align 8, !dbg !2186, !tbaa !1480
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2187
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2188
  %14 = load ptr, ptr %13, align 8, !dbg !2188, !tbaa !1551
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2189
  %16 = load ptr, ptr %15, align 8, !dbg !2189, !tbaa !1554
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2190
  %18 = add i64 %17, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %18, metadata !2178, metadata !DIExpression()), !dbg !2180
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2192
  call void @llvm.dbg.value(metadata ptr %19, metadata !2179, metadata !DIExpression()), !dbg !2180
  %20 = load i32, ptr %5, align 8, !dbg !2193, !tbaa !1480
  %21 = load ptr, ptr %13, align 8, !dbg !2194, !tbaa !1551
  %22 = load ptr, ptr %15, align 8, !dbg !2195, !tbaa !1554
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2196
  store i32 %7, ptr %6, align 4, !dbg !2197, !tbaa !813
  ret ptr %19, !dbg !2198
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2168 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2167, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata i64 %1, metadata !2172, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata ptr %2, metadata !2173, metadata !DIExpression()), !dbg !2199
  call void @llvm.dbg.value(metadata ptr %3, metadata !2174, metadata !DIExpression()), !dbg !2199
  %5 = icmp eq ptr %3, null, !dbg !2200
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2200
  call void @llvm.dbg.value(metadata ptr %6, metadata !2175, metadata !DIExpression()), !dbg !2199
  %7 = tail call ptr @__errno_location() #39, !dbg !2201
  %8 = load i32, ptr %7, align 4, !dbg !2201, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %8, metadata !2176, metadata !DIExpression()), !dbg !2199
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2202
  %10 = load i32, ptr %9, align 4, !dbg !2202, !tbaa !1530
  %11 = icmp eq ptr %2, null, !dbg !2203
  %12 = zext i1 %11 to i32, !dbg !2203
  %13 = or i32 %10, %12, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %13, metadata !2177, metadata !DIExpression()), !dbg !2199
  %14 = load i32, ptr %6, align 8, !dbg !2205, !tbaa !1480
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2206
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2207
  %17 = load ptr, ptr %16, align 8, !dbg !2207, !tbaa !1551
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2208
  %19 = load ptr, ptr %18, align 8, !dbg !2208, !tbaa !1554
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2209
  %21 = add i64 %20, 1, !dbg !2210
  call void @llvm.dbg.value(metadata i64 %21, metadata !2178, metadata !DIExpression()), !dbg !2199
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2211
  call void @llvm.dbg.value(metadata ptr %22, metadata !2179, metadata !DIExpression()), !dbg !2199
  %23 = load i32, ptr %6, align 8, !dbg !2212, !tbaa !1480
  %24 = load ptr, ptr %16, align 8, !dbg !2213, !tbaa !1551
  %25 = load ptr, ptr %18, align 8, !dbg !2214, !tbaa !1554
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2215
  store i32 %8, ptr %7, align 4, !dbg !2216, !tbaa !813
  br i1 %11, label %28, label %27, !dbg !2217

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2218, !tbaa !2220
  br label %28, !dbg !2221

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2222
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2223 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2228, !tbaa !752
  call void @llvm.dbg.value(metadata ptr %1, metadata !2225, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i32 1, metadata !2226, metadata !DIExpression()), !dbg !2230
  %2 = load i32, ptr @nslots, align 4, !tbaa !813
  call void @llvm.dbg.value(metadata i32 1, metadata !2226, metadata !DIExpression()), !dbg !2230
  %3 = icmp sgt i32 %2, 1, !dbg !2231
  br i1 %3, label %4, label %6, !dbg !2233

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2231
  br label %10, !dbg !2233

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2234
  %8 = load ptr, ptr %7, align 8, !dbg !2234, !tbaa !2236
  %9 = icmp eq ptr %8, @slot0, !dbg !2238
  br i1 %9, label %17, label %16, !dbg !2239

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2226, metadata !DIExpression()), !dbg !2230
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2240
  %13 = load ptr, ptr %12, align 8, !dbg !2240, !tbaa !2236
  tail call void @free(ptr noundef %13) #36, !dbg !2241
  %14 = add nuw nsw i64 %11, 1, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %14, metadata !2226, metadata !DIExpression()), !dbg !2230
  %15 = icmp eq i64 %14, %5, !dbg !2231
  br i1 %15, label %6, label %10, !dbg !2233, !llvm.loop !2243

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2245
  store i64 256, ptr @slotvec0, align 8, !dbg !2247, !tbaa !2248
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2249, !tbaa !2236
  br label %17, !dbg !2250

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2251
  br i1 %18, label %20, label %19, !dbg !2253

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2254
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2256, !tbaa !752
  br label %20, !dbg !2257

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2258, !tbaa !813
  ret void, !dbg !2259
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2260 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2263 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata ptr %1, metadata !2266, metadata !DIExpression()), !dbg !2267
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2268
  ret ptr %3, !dbg !2269
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2270 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata ptr %1, metadata !2275, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i64 %2, metadata !2276, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata ptr %3, metadata !2277, metadata !DIExpression()), !dbg !2290
  %6 = tail call ptr @__errno_location() #39, !dbg !2291
  %7 = load i32, ptr %6, align 4, !dbg !2291, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2278, metadata !DIExpression()), !dbg !2290
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2292, !tbaa !752
  call void @llvm.dbg.value(metadata ptr %8, metadata !2279, metadata !DIExpression()), !dbg !2290
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2280, metadata !DIExpression()), !dbg !2290
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2293
  br i1 %9, label %10, label %11, !dbg !2293

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2295
  unreachable, !dbg !2295

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2296, !tbaa !813
  %13 = icmp sgt i32 %12, %0, !dbg !2297
  br i1 %13, label %32, label %14, !dbg !2298

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2299
  call void @llvm.dbg.value(metadata i1 %15, metadata !2281, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2300
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2301
  %16 = sext i32 %12 to i64, !dbg !2302
  call void @llvm.dbg.value(metadata i64 %16, metadata !2284, metadata !DIExpression()), !dbg !2300
  store i64 %16, ptr %5, align 8, !dbg !2303, !tbaa !2220
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2304
  %18 = add nuw nsw i32 %0, 1, !dbg !2305
  %19 = sub i32 %18, %12, !dbg !2306
  %20 = sext i32 %19 to i64, !dbg !2307
  call void @llvm.dbg.value(metadata ptr %5, metadata !2284, metadata !DIExpression(DW_OP_deref)), !dbg !2300
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2308
  call void @llvm.dbg.value(metadata ptr %21, metadata !2279, metadata !DIExpression()), !dbg !2290
  store ptr %21, ptr @slotvec, align 8, !dbg !2309, !tbaa !752
  br i1 %15, label %22, label %23, !dbg !2310

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2311, !tbaa.struct !2313
  br label %23, !dbg !2314

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2315, !tbaa !813
  %25 = sext i32 %24 to i64, !dbg !2316
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2316
  %27 = load i64, ptr %5, align 8, !dbg !2317, !tbaa !2220
  call void @llvm.dbg.value(metadata i64 %27, metadata !2284, metadata !DIExpression()), !dbg !2300
  %28 = sub nsw i64 %27, %25, !dbg !2318
  %29 = shl i64 %28, 4, !dbg !2319
  call void @llvm.dbg.value(metadata ptr %26, metadata !1687, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i32 0, metadata !1690, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %29, metadata !1691, metadata !DIExpression()), !dbg !2320
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2322
  %30 = load i64, ptr %5, align 8, !dbg !2323, !tbaa !2220
  call void @llvm.dbg.value(metadata i64 %30, metadata !2284, metadata !DIExpression()), !dbg !2300
  %31 = trunc i64 %30 to i32, !dbg !2323
  store i32 %31, ptr @nslots, align 4, !dbg !2324, !tbaa !813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2325
  br label %32, !dbg !2326

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2290
  call void @llvm.dbg.value(metadata ptr %33, metadata !2279, metadata !DIExpression()), !dbg !2290
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2327
  %36 = load i64, ptr %35, align 8, !dbg !2328, !tbaa !2248
  call void @llvm.dbg.value(metadata i64 %36, metadata !2285, metadata !DIExpression()), !dbg !2329
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2330
  %38 = load ptr, ptr %37, align 8, !dbg !2330, !tbaa !2236
  call void @llvm.dbg.value(metadata ptr %38, metadata !2287, metadata !DIExpression()), !dbg !2329
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2331
  %40 = load i32, ptr %39, align 4, !dbg !2331, !tbaa !1530
  %41 = or i32 %40, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i32 %41, metadata !2288, metadata !DIExpression()), !dbg !2329
  %42 = load i32, ptr %3, align 8, !dbg !2333, !tbaa !1480
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2334
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2335
  %45 = load ptr, ptr %44, align 8, !dbg !2335, !tbaa !1551
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2336
  %47 = load ptr, ptr %46, align 8, !dbg !2336, !tbaa !1554
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2337
  call void @llvm.dbg.value(metadata i64 %48, metadata !2289, metadata !DIExpression()), !dbg !2329
  %49 = icmp ugt i64 %36, %48, !dbg !2338
  br i1 %49, label %60, label %50, !dbg !2340

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i64 %51, metadata !2285, metadata !DIExpression()), !dbg !2329
  store i64 %51, ptr %35, align 8, !dbg !2343, !tbaa !2248
  %52 = icmp eq ptr %38, @slot0, !dbg !2344
  br i1 %52, label %54, label %53, !dbg !2346

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2347
  br label %54, !dbg !2347

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2348
  call void @llvm.dbg.value(metadata ptr %55, metadata !2287, metadata !DIExpression()), !dbg !2329
  store ptr %55, ptr %37, align 8, !dbg !2349, !tbaa !2236
  %56 = load i32, ptr %3, align 8, !dbg !2350, !tbaa !1480
  %57 = load ptr, ptr %44, align 8, !dbg !2351, !tbaa !1551
  %58 = load ptr, ptr %46, align 8, !dbg !2352, !tbaa !1554
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2353
  br label %60, !dbg !2354

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2329
  call void @llvm.dbg.value(metadata ptr %61, metadata !2287, metadata !DIExpression()), !dbg !2329
  store i32 %7, ptr %6, align 4, !dbg !2355, !tbaa !813
  ret ptr %61, !dbg !2356
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2357 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata ptr %1, metadata !2362, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i64 %2, metadata !2363, metadata !DIExpression()), !dbg !2364
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2365
  ret ptr %4, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2367 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i32 0, metadata !2265, metadata !DIExpression()), !dbg !2371
  call void @llvm.dbg.value(metadata ptr %0, metadata !2266, metadata !DIExpression()), !dbg !2371
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2373
  ret ptr %2, !dbg !2374
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2375 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2379, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %1, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2361, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2382
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2384
  ret ptr %3, !dbg !2385
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2386 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %1, metadata !2391, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata ptr %2, metadata !2392, metadata !DIExpression()), !dbg !2394
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2393, metadata !DIExpression()), !dbg !2396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2397), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1, metadata !2401, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2406, metadata !DIExpression()), !dbg !2409
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2409, !alias.scope !2397
  %5 = icmp eq i32 %1, 10, !dbg !2410
  br i1 %5, label %6, label %7, !dbg !2412

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2413, !noalias !2397
  unreachable, !dbg !2413

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2414, !tbaa !1480, !alias.scope !2397
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2415
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2416
  ret ptr %8, !dbg !2417
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2418 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 %1, metadata !2423, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata ptr %2, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i64 %3, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2428
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2426, metadata !DIExpression()), !dbg !2429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2401, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2406, metadata !DIExpression()), !dbg !2436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2436, !alias.scope !2430
  %6 = icmp eq i32 %1, 10, !dbg !2437
  br i1 %6, label %7, label %8, !dbg !2438

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2439, !noalias !2430
  unreachable, !dbg !2439

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2440, !tbaa !1480, !alias.scope !2430
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2441
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2442
  ret ptr %9, !dbg !2443
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2444 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2448, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata ptr %1, metadata !2449, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 %0, metadata !2391, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata ptr %1, metadata !2392, metadata !DIExpression()), !dbg !2451
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2393, metadata !DIExpression()), !dbg !2454
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2406, metadata !DIExpression()), !dbg !2461
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2461, !alias.scope !2455
  %4 = icmp eq i32 %0, 10, !dbg !2462
  br i1 %4, label %5, label %6, !dbg !2463

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2464, !noalias !2455
  unreachable, !dbg !2464

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2465, !tbaa !1480, !alias.scope !2455
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2466
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2467
  ret ptr %7, !dbg !2468
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2469 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2473, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata ptr %1, metadata !2474, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i64 %2, metadata !2475, metadata !DIExpression()), !dbg !2476
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata ptr %1, metadata !2424, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 %2, metadata !2425, metadata !DIExpression()), !dbg !2477
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2479
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2426, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2481), !dbg !2484
  call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2406, metadata !DIExpression()), !dbg !2487
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2487, !alias.scope !2481
  %5 = icmp eq i32 %0, 10, !dbg !2488
  br i1 %5, label %6, label %7, !dbg !2489

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2490, !noalias !2481
  unreachable, !dbg !2490

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2491, !tbaa !1480, !alias.scope !2481
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2492
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2493
  ret ptr %8, !dbg !2494
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2495 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i64 %1, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8 %2, metadata !2501, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2506, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 %2, metadata !1498, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2508
  call void @llvm.dbg.value(metadata i8 %2, metadata !1500, metadata !DIExpression()), !dbg !2508
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2510
  %6 = lshr i8 %2, 5, !dbg !2511
  %7 = zext i8 %6 to i64, !dbg !2511
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %8, metadata !1501, metadata !DIExpression()), !dbg !2508
  %9 = and i8 %2, 31, !dbg !2513
  %10 = zext i8 %9 to i32, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %10, metadata !1503, metadata !DIExpression()), !dbg !2508
  %11 = load i32, ptr %8, align 4, !dbg !2514, !tbaa !813
  %12 = lshr i32 %11, %10, !dbg !2515
  call void @llvm.dbg.value(metadata i32 %12, metadata !1504, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2508
  %13 = and i32 %12, 1, !dbg !2516
  %14 = xor i32 %13, 1, !dbg !2516
  %15 = shl nuw i32 %14, %10, !dbg !2517
  %16 = xor i32 %15, %11, !dbg !2518
  store i32 %16, ptr %8, align 4, !dbg !2518, !tbaa !813
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2519
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2520
  ret ptr %17, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2522 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8 %1, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i64 -1, metadata !2500, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8 %1, metadata !2501, metadata !DIExpression()), !dbg !2529
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2502, metadata !DIExpression()), !dbg !2532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2533, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 %1, metadata !1498, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 %1, metadata !1500, metadata !DIExpression()), !dbg !2534
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2536
  %5 = lshr i8 %1, 5, !dbg !2537
  %6 = zext i8 %5 to i64, !dbg !2537
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2538
  call void @llvm.dbg.value(metadata ptr %7, metadata !1501, metadata !DIExpression()), !dbg !2534
  %8 = and i8 %1, 31, !dbg !2539
  %9 = zext i8 %8 to i32, !dbg !2539
  call void @llvm.dbg.value(metadata i32 %9, metadata !1503, metadata !DIExpression()), !dbg !2534
  %10 = load i32, ptr %7, align 4, !dbg !2540, !tbaa !813
  %11 = lshr i32 %10, %9, !dbg !2541
  call void @llvm.dbg.value(metadata i32 %11, metadata !1504, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2534
  %12 = and i32 %11, 1, !dbg !2542
  %13 = xor i32 %12, 1, !dbg !2542
  %14 = shl nuw i32 %13, %9, !dbg !2543
  %15 = xor i32 %14, %10, !dbg !2544
  store i32 %15, ptr %7, align 4, !dbg !2544, !tbaa !813
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2545
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2546
  ret ptr %16, !dbg !2547
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2548 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata ptr %0, metadata !2526, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8 58, metadata !2527, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i64 -1, metadata !2500, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i8 58, metadata !2501, metadata !DIExpression()), !dbg !2554
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2502, metadata !DIExpression()), !dbg !2557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2558, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %2, metadata !1497, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !1498, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2559
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2561
  call void @llvm.dbg.value(metadata ptr %3, metadata !1501, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i32 26, metadata !1503, metadata !DIExpression()), !dbg !2559
  %4 = load i32, ptr %3, align 4, !dbg !2562, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %4, metadata !1504, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2559
  %5 = or i32 %4, 67108864, !dbg !2563
  store i32 %5, ptr %3, align 4, !dbg !2563, !tbaa !813
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2564
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2565
  ret ptr %6, !dbg !2566
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2567 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2569, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 %1, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %0, metadata !2499, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %1, metadata !2500, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !2501, metadata !DIExpression()), !dbg !2572
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2502, metadata !DIExpression()), !dbg !2575
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2576, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 58, metadata !1498, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2577
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2579
  call void @llvm.dbg.value(metadata ptr %4, metadata !1501, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 26, metadata !1503, metadata !DIExpression()), !dbg !2577
  %5 = load i32, ptr %4, align 4, !dbg !2580, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %5, metadata !1504, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2577
  %6 = or i32 %5, 67108864, !dbg !2581
  store i32 %6, ptr %4, align 4, !dbg !2581, !tbaa !813
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2582
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2583
  ret ptr %7, !dbg !2584
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2585 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata ptr %2, metadata !2589, metadata !DIExpression()), !dbg !2593
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2590, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %1, metadata !2401, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2596
  %5 = icmp eq i32 %1, 10, !dbg !2597
  br i1 %5, label %6, label %7, !dbg !2598

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2599, !noalias !2600
  unreachable, !dbg !2599

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2406, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2596
  store i32 %1, ptr %4, align 8, !dbg !2603, !tbaa.struct !2507
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2603
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 58, metadata !1498, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 1, metadata !1499, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8 58, metadata !1500, metadata !DIExpression()), !dbg !2604
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2606
  call void @llvm.dbg.value(metadata ptr %9, metadata !1501, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 26, metadata !1503, metadata !DIExpression()), !dbg !2604
  %10 = load i32, ptr %9, align 4, !dbg !2607, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %10, metadata !1504, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2604
  %11 = or i32 %10, 67108864, !dbg !2608
  store i32 %11, ptr %9, align 4, !dbg !2608, !tbaa !813
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2609
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2610
  ret ptr %12, !dbg !2611
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2612 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %1, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %3, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %0, metadata !2621, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata ptr %3, metadata !2628, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.value(metadata i64 -1, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2630, metadata !DIExpression()), !dbg !2634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2635, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2636
  store i32 10, ptr %5, align 8, !dbg !2638, !tbaa !1480
  %6 = icmp ne ptr %1, null, !dbg !2639
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2640
  br i1 %8, label %10, label %9, !dbg !2640

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2641
  unreachable, !dbg !2641

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2642
  store ptr %1, ptr %11, align 8, !dbg !2643, !tbaa !1551
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2644
  store ptr %2, ptr %12, align 8, !dbg !2645, !tbaa !1554
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2646
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2647
  ret ptr %13, !dbg !2648
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2622 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2621, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %3, metadata !2628, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %4, metadata !2629, metadata !DIExpression()), !dbg !2649
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2650
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2630, metadata !DIExpression()), !dbg !2651
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2652, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %6, metadata !1537, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %1, metadata !1538, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %2, metadata !1539, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %6, metadata !1537, metadata !DIExpression()), !dbg !2653
  store i32 10, ptr %6, align 8, !dbg !2655, !tbaa !1480
  %7 = icmp ne ptr %1, null, !dbg !2656
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2657
  br i1 %9, label %11, label %10, !dbg !2657

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2658
  unreachable, !dbg !2658

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2659
  store ptr %1, ptr %12, align 8, !dbg !2660, !tbaa !1551
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2661
  store ptr %2, ptr %13, align 8, !dbg !2662, !tbaa !1554
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2663
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2664
  ret ptr %14, !dbg !2665
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2666 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2670, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %1, metadata !2671, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !2672, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i32 0, metadata !2616, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %0, metadata !2617, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %1, metadata !2618, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata ptr %2, metadata !2619, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i32 0, metadata !2621, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata ptr %1, metadata !2627, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata ptr %2, metadata !2628, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata i64 -1, metadata !2629, metadata !DIExpression()), !dbg !2676
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2678
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2630, metadata !DIExpression()), !dbg !2679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2680, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %0, metadata !1538, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %1, metadata !1539, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %4, metadata !1537, metadata !DIExpression()), !dbg !2681
  store i32 10, ptr %4, align 8, !dbg !2683, !tbaa !1480
  %5 = icmp ne ptr %0, null, !dbg !2684
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2685
  br i1 %7, label %9, label %8, !dbg !2685

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2686
  unreachable, !dbg !2686

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2687
  store ptr %0, ptr %10, align 8, !dbg !2688, !tbaa !1551
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2689
  store ptr %1, ptr %11, align 8, !dbg !2690, !tbaa !1554
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2691
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2692
  ret ptr %12, !dbg !2693
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2694 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2698, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %1, metadata !2699, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata ptr %2, metadata !2700, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %3, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i32 0, metadata !2621, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %1, metadata !2627, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata ptr %2, metadata !2628, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %3, metadata !2629, metadata !DIExpression()), !dbg !2703
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2705
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2630, metadata !DIExpression()), !dbg !2706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2707, !tbaa.struct !2507
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %0, metadata !1538, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %1, metadata !1539, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %5, metadata !1537, metadata !DIExpression()), !dbg !2708
  store i32 10, ptr %5, align 8, !dbg !2710, !tbaa !1480
  %6 = icmp ne ptr %0, null, !dbg !2711
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2712
  br i1 %8, label %10, label %9, !dbg !2712

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2713
  unreachable, !dbg !2713

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2714
  store ptr %0, ptr %11, align 8, !dbg !2715, !tbaa !1551
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2716
  store ptr %1, ptr %12, align 8, !dbg !2717, !tbaa !1554
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2718
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2719
  ret ptr %13, !dbg !2720
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata ptr %1, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i64 %2, metadata !2727, metadata !DIExpression()), !dbg !2728
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2729
  ret ptr %4, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2731 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2735, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %1, metadata !2727, metadata !DIExpression()), !dbg !2738
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2740
  ret ptr %3, !dbg !2741
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2742 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2746, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata ptr %1, metadata !2747, metadata !DIExpression()), !dbg !2748
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata ptr %1, metadata !2726, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 -1, metadata !2727, metadata !DIExpression()), !dbg !2749
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2751
  ret ptr %3, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2753 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 0, metadata !2746, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata ptr %0, metadata !2747, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 -1, metadata !2727, metadata !DIExpression()), !dbg !2761
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2763
  ret ptr %2, !dbg !2764
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2765 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2804, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %1, metadata !2805, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %2, metadata !2806, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %3, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata ptr %4, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i64 %5, metadata !2809, metadata !DIExpression()), !dbg !2810
  %7 = icmp eq ptr %1, null, !dbg !2811
  br i1 %7, label %10, label %8, !dbg !2813

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2814
  br label %12, !dbg !2814

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.76, ptr noundef %2, ptr noundef %3) #36, !dbg !2815
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.3.78, i32 noundef 5) #36, !dbg !2816
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2816
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2817
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.5.80, i32 noundef 5) #36, !dbg !2818
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.81) #36, !dbg !2818
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2819
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
  ], !dbg !2820

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.7.82, i32 noundef 5) #36, !dbg !2821
  %21 = load ptr, ptr %4, align 8, !dbg !2821, !tbaa !752
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2821
  br label %147, !dbg !2823

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.8.83, i32 noundef 5) #36, !dbg !2824
  %25 = load ptr, ptr %4, align 8, !dbg !2824, !tbaa !752
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2824
  %27 = load ptr, ptr %26, align 8, !dbg !2824, !tbaa !752
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2824
  br label %147, !dbg !2825

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.9.84, i32 noundef 5) #36, !dbg !2826
  %31 = load ptr, ptr %4, align 8, !dbg !2826, !tbaa !752
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2826
  %33 = load ptr, ptr %32, align 8, !dbg !2826, !tbaa !752
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2826
  %35 = load ptr, ptr %34, align 8, !dbg !2826, !tbaa !752
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2826
  br label %147, !dbg !2827

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.10.85, i32 noundef 5) #36, !dbg !2828
  %39 = load ptr, ptr %4, align 8, !dbg !2828, !tbaa !752
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2828
  %41 = load ptr, ptr %40, align 8, !dbg !2828, !tbaa !752
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2828
  %43 = load ptr, ptr %42, align 8, !dbg !2828, !tbaa !752
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2828
  %45 = load ptr, ptr %44, align 8, !dbg !2828, !tbaa !752
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2828
  br label %147, !dbg !2829

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.11.86, i32 noundef 5) #36, !dbg !2830
  %49 = load ptr, ptr %4, align 8, !dbg !2830, !tbaa !752
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2830
  %51 = load ptr, ptr %50, align 8, !dbg !2830, !tbaa !752
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2830
  %53 = load ptr, ptr %52, align 8, !dbg !2830, !tbaa !752
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2830
  %55 = load ptr, ptr %54, align 8, !dbg !2830, !tbaa !752
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2830
  %57 = load ptr, ptr %56, align 8, !dbg !2830, !tbaa !752
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2830
  br label %147, !dbg !2831

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.12.87, i32 noundef 5) #36, !dbg !2832
  %61 = load ptr, ptr %4, align 8, !dbg !2832, !tbaa !752
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2832
  %63 = load ptr, ptr %62, align 8, !dbg !2832, !tbaa !752
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2832
  %65 = load ptr, ptr %64, align 8, !dbg !2832, !tbaa !752
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2832
  %67 = load ptr, ptr %66, align 8, !dbg !2832, !tbaa !752
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2832
  %69 = load ptr, ptr %68, align 8, !dbg !2832, !tbaa !752
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2832
  %71 = load ptr, ptr %70, align 8, !dbg !2832, !tbaa !752
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2832
  br label %147, !dbg !2833

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.13.88, i32 noundef 5) #36, !dbg !2834
  %75 = load ptr, ptr %4, align 8, !dbg !2834, !tbaa !752
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2834
  %77 = load ptr, ptr %76, align 8, !dbg !2834, !tbaa !752
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2834
  %79 = load ptr, ptr %78, align 8, !dbg !2834, !tbaa !752
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2834
  %81 = load ptr, ptr %80, align 8, !dbg !2834, !tbaa !752
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2834
  %83 = load ptr, ptr %82, align 8, !dbg !2834, !tbaa !752
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2834
  %85 = load ptr, ptr %84, align 8, !dbg !2834, !tbaa !752
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2834
  %87 = load ptr, ptr %86, align 8, !dbg !2834, !tbaa !752
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2834
  br label %147, !dbg !2835

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.14.89, i32 noundef 5) #36, !dbg !2836
  %91 = load ptr, ptr %4, align 8, !dbg !2836, !tbaa !752
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2836
  %93 = load ptr, ptr %92, align 8, !dbg !2836, !tbaa !752
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2836
  %95 = load ptr, ptr %94, align 8, !dbg !2836, !tbaa !752
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2836
  %97 = load ptr, ptr %96, align 8, !dbg !2836, !tbaa !752
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2836
  %99 = load ptr, ptr %98, align 8, !dbg !2836, !tbaa !752
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2836
  %101 = load ptr, ptr %100, align 8, !dbg !2836, !tbaa !752
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2836
  %103 = load ptr, ptr %102, align 8, !dbg !2836, !tbaa !752
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2836
  %105 = load ptr, ptr %104, align 8, !dbg !2836, !tbaa !752
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2836
  br label %147, !dbg !2837

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.15.90, i32 noundef 5) #36, !dbg !2838
  %109 = load ptr, ptr %4, align 8, !dbg !2838, !tbaa !752
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2838
  %111 = load ptr, ptr %110, align 8, !dbg !2838, !tbaa !752
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2838
  %113 = load ptr, ptr %112, align 8, !dbg !2838, !tbaa !752
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2838
  %115 = load ptr, ptr %114, align 8, !dbg !2838, !tbaa !752
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2838
  %117 = load ptr, ptr %116, align 8, !dbg !2838, !tbaa !752
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2838
  %119 = load ptr, ptr %118, align 8, !dbg !2838, !tbaa !752
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2838
  %121 = load ptr, ptr %120, align 8, !dbg !2838, !tbaa !752
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2838
  %123 = load ptr, ptr %122, align 8, !dbg !2838, !tbaa !752
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2838
  %125 = load ptr, ptr %124, align 8, !dbg !2838, !tbaa !752
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2838
  br label %147, !dbg !2839

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.16.91, i32 noundef 5) #36, !dbg !2840
  %129 = load ptr, ptr %4, align 8, !dbg !2840, !tbaa !752
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2840
  %131 = load ptr, ptr %130, align 8, !dbg !2840, !tbaa !752
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2840
  %133 = load ptr, ptr %132, align 8, !dbg !2840, !tbaa !752
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2840
  %135 = load ptr, ptr %134, align 8, !dbg !2840, !tbaa !752
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2840
  %137 = load ptr, ptr %136, align 8, !dbg !2840, !tbaa !752
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2840
  %139 = load ptr, ptr %138, align 8, !dbg !2840, !tbaa !752
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2840
  %141 = load ptr, ptr %140, align 8, !dbg !2840, !tbaa !752
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2840
  %143 = load ptr, ptr %142, align 8, !dbg !2840, !tbaa !752
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2840
  %145 = load ptr, ptr %144, align 8, !dbg !2840, !tbaa !752
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2840
  br label %147, !dbg !2841

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2842
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2843 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2847, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %1, metadata !2848, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %2, metadata !2849, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %3, metadata !2850, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata ptr %4, metadata !2851, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.value(metadata i64 0, metadata !2852, metadata !DIExpression()), !dbg !2853
  br label %6, !dbg !2854

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2856
  call void @llvm.dbg.value(metadata i64 %7, metadata !2852, metadata !DIExpression()), !dbg !2853
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2857
  %9 = load ptr, ptr %8, align 8, !dbg !2857, !tbaa !752
  %10 = icmp eq ptr %9, null, !dbg !2859
  %11 = add i64 %7, 1, !dbg !2860
  call void @llvm.dbg.value(metadata i64 %11, metadata !2852, metadata !DIExpression()), !dbg !2853
  br i1 %10, label %12, label %6, !dbg !2859, !llvm.loop !2861

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2863
  ret void, !dbg !2864
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2865 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2877, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %1, metadata !2878, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %2, metadata !2879, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %3, metadata !2880, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata ptr %4, metadata !2881, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2883, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2882, metadata !DIExpression()), !dbg !2885
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2882, metadata !DIExpression()), !dbg !2885
  %10 = icmp ult i32 %9, 41, !dbg !2888
  br i1 %10, label %11, label %16, !dbg !2888

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2888
  %13 = zext i32 %9 to i64, !dbg !2888
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2888
  %15 = add nuw nsw i32 %9, 8, !dbg !2888
  store i32 %15, ptr %4, align 8, !dbg !2888
  br label %19, !dbg !2888

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2888
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2888
  store ptr %18, ptr %7, align 8, !dbg !2888
  br label %19, !dbg !2888

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2888
  %22 = load ptr, ptr %21, align 8, !dbg !2888
  store ptr %22, ptr %6, align 16, !dbg !2891, !tbaa !752
  %23 = icmp eq ptr %22, null, !dbg !2892
  br i1 %23, label %128, label %24, !dbg !2893

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 1, metadata !2882, metadata !DIExpression()), !dbg !2885
  %25 = icmp ult i32 %20, 41, !dbg !2888
  br i1 %25, label %29, label %26, !dbg !2888

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2888
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2888
  store ptr %28, ptr %7, align 8, !dbg !2888
  br label %34, !dbg !2888

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2888
  %31 = zext i32 %20 to i64, !dbg !2888
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2888
  %33 = add nuw nsw i32 %20, 8, !dbg !2888
  store i32 %33, ptr %4, align 8, !dbg !2888
  br label %34, !dbg !2888

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2888
  %37 = load ptr, ptr %36, align 8, !dbg !2888
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2894
  store ptr %37, ptr %38, align 8, !dbg !2891, !tbaa !752
  %39 = icmp eq ptr %37, null, !dbg !2892
  br i1 %39, label %128, label %40, !dbg !2893

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 2, metadata !2882, metadata !DIExpression()), !dbg !2885
  %41 = icmp ult i32 %35, 41, !dbg !2888
  br i1 %41, label %45, label %42, !dbg !2888

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2888
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2888
  store ptr %44, ptr %7, align 8, !dbg !2888
  br label %50, !dbg !2888

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2888
  %47 = zext i32 %35 to i64, !dbg !2888
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2888
  %49 = add nuw nsw i32 %35, 8, !dbg !2888
  store i32 %49, ptr %4, align 8, !dbg !2888
  br label %50, !dbg !2888

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2888
  %53 = load ptr, ptr %52, align 8, !dbg !2888
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2894
  store ptr %53, ptr %54, align 16, !dbg !2891, !tbaa !752
  %55 = icmp eq ptr %53, null, !dbg !2892
  br i1 %55, label %128, label %56, !dbg !2893

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 3, metadata !2882, metadata !DIExpression()), !dbg !2885
  %57 = icmp ult i32 %51, 41, !dbg !2888
  br i1 %57, label %61, label %58, !dbg !2888

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2888
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2888
  store ptr %60, ptr %7, align 8, !dbg !2888
  br label %66, !dbg !2888

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2888
  %63 = zext i32 %51 to i64, !dbg !2888
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2888
  %65 = add nuw nsw i32 %51, 8, !dbg !2888
  store i32 %65, ptr %4, align 8, !dbg !2888
  br label %66, !dbg !2888

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2888
  %69 = load ptr, ptr %68, align 8, !dbg !2888
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2894
  store ptr %69, ptr %70, align 8, !dbg !2891, !tbaa !752
  %71 = icmp eq ptr %69, null, !dbg !2892
  br i1 %71, label %128, label %72, !dbg !2893

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 4, metadata !2882, metadata !DIExpression()), !dbg !2885
  %73 = icmp ult i32 %67, 41, !dbg !2888
  br i1 %73, label %77, label %74, !dbg !2888

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2888
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2888
  store ptr %76, ptr %7, align 8, !dbg !2888
  br label %82, !dbg !2888

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2888
  %79 = zext i32 %67 to i64, !dbg !2888
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2888
  %81 = add nuw nsw i32 %67, 8, !dbg !2888
  store i32 %81, ptr %4, align 8, !dbg !2888
  br label %82, !dbg !2888

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2888
  %85 = load ptr, ptr %84, align 8, !dbg !2888
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2894
  store ptr %85, ptr %86, align 16, !dbg !2891, !tbaa !752
  %87 = icmp eq ptr %85, null, !dbg !2892
  br i1 %87, label %128, label %88, !dbg !2893

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2882, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 5, metadata !2882, metadata !DIExpression()), !dbg !2885
  %89 = icmp ult i32 %83, 41, !dbg !2888
  br i1 %89, label %93, label %90, !dbg !2888

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2888
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2888
  store ptr %92, ptr %7, align 8, !dbg !2888
  br label %98, !dbg !2888

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2888
  %95 = zext i32 %83 to i64, !dbg !2888
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2888
  %97 = add nuw nsw i32 %83, 8, !dbg !2888
  store i32 %97, ptr %4, align 8, !dbg !2888
  br label %98, !dbg !2888

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2888
  %100 = load ptr, ptr %99, align 8, !dbg !2888
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2894
  store ptr %100, ptr %101, align 8, !dbg !2891, !tbaa !752
  %102 = icmp eq ptr %100, null, !dbg !2892
  br i1 %102, label %128, label %103, !dbg !2893

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2882, metadata !DIExpression()), !dbg !2885
  %104 = load ptr, ptr %7, align 8, !dbg !2888
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2888
  store ptr %105, ptr %7, align 8, !dbg !2888
  %106 = load ptr, ptr %104, align 8, !dbg !2888
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2894
  store ptr %106, ptr %107, align 16, !dbg !2891, !tbaa !752
  %108 = icmp eq ptr %106, null, !dbg !2892
  br i1 %108, label %128, label %109, !dbg !2893

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2882, metadata !DIExpression()), !dbg !2885
  %110 = load ptr, ptr %7, align 8, !dbg !2888
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2888
  store ptr %111, ptr %7, align 8, !dbg !2888
  %112 = load ptr, ptr %110, align 8, !dbg !2888
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2894
  store ptr %112, ptr %113, align 8, !dbg !2891, !tbaa !752
  %114 = icmp eq ptr %112, null, !dbg !2892
  br i1 %114, label %128, label %115, !dbg !2893

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2882, metadata !DIExpression()), !dbg !2885
  %116 = load ptr, ptr %7, align 8, !dbg !2888
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2888
  store ptr %117, ptr %7, align 8, !dbg !2888
  %118 = load ptr, ptr %116, align 8, !dbg !2888
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2894
  store ptr %118, ptr %119, align 16, !dbg !2891, !tbaa !752
  %120 = icmp eq ptr %118, null, !dbg !2892
  br i1 %120, label %128, label %121, !dbg !2893

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2882, metadata !DIExpression()), !dbg !2885
  %122 = load ptr, ptr %7, align 8, !dbg !2888
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2888
  store ptr %123, ptr %7, align 8, !dbg !2888
  %124 = load ptr, ptr %122, align 8, !dbg !2888
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2894
  store ptr %124, ptr %125, align 8, !dbg !2891, !tbaa !752
  %126 = icmp eq ptr %124, null, !dbg !2892
  %127 = select i1 %126, i64 9, i64 10, !dbg !2893
  br label %128, !dbg !2893

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2895
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2896
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2897
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2898 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %1, metadata !2903, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %2, metadata !2904, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata ptr %3, metadata !2905, metadata !DIExpression()), !dbg !2911
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2912
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2906, metadata !DIExpression()), !dbg !2913
  call void @llvm.va_start(ptr nonnull %5), !dbg !2914
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2915
  call void @llvm.va_end(ptr nonnull %5), !dbg !2916
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2917
  ret void, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2918 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2919, !tbaa !752
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %1), !dbg !2919
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.17.96, i32 noundef 5) #36, !dbg !2920
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.97) #36, !dbg !2920
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2921
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.98) #36, !dbg !2921
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2922
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2922
  ret void, !dbg !2923
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2924 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %2, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %2, metadata !2937, metadata !DIExpression()), !dbg !2938
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2940
  call void @llvm.dbg.value(metadata ptr %4, metadata !2941, metadata !DIExpression()), !dbg !2946
  %5 = icmp eq ptr %4, null, !dbg !2948
  br i1 %5, label %6, label %7, !dbg !2950

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2951
  unreachable, !dbg !2951

7:                                                ; preds = %3
  ret ptr %4, !dbg !2952
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2934 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %2, metadata !2937, metadata !DIExpression()), !dbg !2953
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %4, metadata !2941, metadata !DIExpression()), !dbg !2955
  %5 = icmp eq ptr %4, null, !dbg !2957
  br i1 %5, label %6, label %7, !dbg !2958

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2959
  unreachable, !dbg !2959

7:                                                ; preds = %3
  ret ptr %4, !dbg !2960
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2965, metadata !DIExpression()), !dbg !2966
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2967
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !2968
  %3 = icmp eq ptr %2, null, !dbg !2970
  br i1 %3, label %4, label %5, !dbg !2971

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2972
  unreachable, !dbg !2972

5:                                                ; preds = %1
  ret ptr %2, !dbg !2973
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2974 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2975 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()), !dbg !2985
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2987
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !2988
  %3 = icmp eq ptr %2, null, !dbg !2990
  br i1 %3, label %4, label %5, !dbg !2991

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2992
  unreachable, !dbg !2992

5:                                                ; preds = %1
  ret ptr %2, !dbg !2993
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2994 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %0, metadata !2965, metadata !DIExpression()), !dbg !3000
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3002
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !3003
  %3 = icmp eq ptr %2, null, !dbg !3005
  br i1 %3, label %4, label %5, !dbg !3006

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3007
  unreachable, !dbg !3007

5:                                                ; preds = %1
  ret ptr %2, !dbg !3008
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3009 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3021
  %3 = icmp eq i64 %1, 0, !dbg !3023
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3023
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3024
  call void @llvm.dbg.value(metadata ptr %5, metadata !2941, metadata !DIExpression()), !dbg !3025
  %6 = icmp eq ptr %5, null, !dbg !3027
  br i1 %6, label %7, label %8, !dbg !3028

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3029
  unreachable, !dbg !3029

8:                                                ; preds = %2
  ret ptr %5, !dbg !3030
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3031 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3032 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3036, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata ptr %0, metadata !3039, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3045
  %3 = icmp eq i64 %1, 0, !dbg !3047
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3047
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3048
  call void @llvm.dbg.value(metadata ptr %5, metadata !2941, metadata !DIExpression()), !dbg !3049
  %6 = icmp eq ptr %5, null, !dbg !3051
  br i1 %6, label %7, label %8, !dbg !3052

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3053
  unreachable, !dbg !3053

8:                                                ; preds = %2
  ret ptr %5, !dbg !3054
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3055 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata i64 %2, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.value(metadata ptr %0, metadata !3063, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3068
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3070
  call void @llvm.dbg.value(metadata ptr %4, metadata !2941, metadata !DIExpression()), !dbg !3071
  %5 = icmp eq ptr %4, null, !dbg !3073
  br i1 %5, label %6, label %7, !dbg !3074

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3075
  unreachable, !dbg !3075

7:                                                ; preds = %3
  ret ptr %4, !dbg !3076
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3077 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr null, metadata !2933, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %0, metadata !2936, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !2937, metadata !DIExpression()), !dbg !3084
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3086
  call void @llvm.dbg.value(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !3087
  %4 = icmp eq ptr %3, null, !dbg !3089
  br i1 %4, label %5, label %6, !dbg !3090

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3091
  unreachable, !dbg !3091

6:                                                ; preds = %2
  ret ptr %3, !dbg !3092
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3093 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr null, metadata !3059, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %0, metadata !3060, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %1, metadata !3061, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata ptr null, metadata !3063, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %0, metadata !3066, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3102
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3104
  call void @llvm.dbg.value(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !3105
  %4 = icmp eq ptr %3, null, !dbg !3107
  br i1 %4, label %5, label %6, !dbg !3108

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3109
  unreachable, !dbg !3109

6:                                                ; preds = %2
  ret ptr %3, !dbg !3110
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3111 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %1, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 1, metadata !690, metadata !DIExpression()), !dbg !3118
  %3 = load i64, ptr %1, align 8, !dbg !3120, !tbaa !2220
  call void @llvm.dbg.value(metadata i64 %3, metadata !691, metadata !DIExpression()), !dbg !3118
  %4 = icmp eq ptr %0, null, !dbg !3121
  br i1 %4, label %5, label %8, !dbg !3123

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3124
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3127
  br label %15, !dbg !3127

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3128
  %10 = add nuw i64 %9, 1, !dbg !3128
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3128
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3128
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %13, metadata !691, metadata !DIExpression()), !dbg !3118
  br i1 %12, label %14, label %15, !dbg !3131

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3132
  unreachable, !dbg !3132

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3118
  call void @llvm.dbg.value(metadata i64 %16, metadata !691, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %16, metadata !2936, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 1, metadata !2937, metadata !DIExpression()), !dbg !3133
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %17, metadata !2941, metadata !DIExpression()), !dbg !3136
  %18 = icmp eq ptr %17, null, !dbg !3138
  br i1 %18, label %19, label %20, !dbg !3139

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3140
  unreachable, !dbg !3140

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !688, metadata !DIExpression()), !dbg !3118
  store i64 %16, ptr %1, align 8, !dbg !3141, !tbaa !2220
  ret ptr %17, !dbg !3142
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !683 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !688, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %1, metadata !689, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i64 %2, metadata !690, metadata !DIExpression()), !dbg !3143
  %4 = load i64, ptr %1, align 8, !dbg !3144, !tbaa !2220
  call void @llvm.dbg.value(metadata i64 %4, metadata !691, metadata !DIExpression()), !dbg !3143
  %5 = icmp eq ptr %0, null, !dbg !3145
  br i1 %5, label %6, label %13, !dbg !3146

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3147
  br i1 %7, label %8, label %20, !dbg !3148

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3149
  call void @llvm.dbg.value(metadata i64 %9, metadata !691, metadata !DIExpression()), !dbg !3143
  %10 = icmp ugt i64 %2, 128, !dbg !3151
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %12, metadata !691, metadata !DIExpression()), !dbg !3143
  br label %20, !dbg !3153

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3154
  %15 = add nuw i64 %14, 1, !dbg !3154
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3154
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3154
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3154
  call void @llvm.dbg.value(metadata i64 %18, metadata !691, metadata !DIExpression()), !dbg !3143
  br i1 %17, label %19, label %20, !dbg !3155

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3156
  unreachable, !dbg !3156

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3143
  call void @llvm.dbg.value(metadata i64 %21, metadata !691, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %21, metadata !2936, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %2, metadata !2937, metadata !DIExpression()), !dbg !3157
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3159
  call void @llvm.dbg.value(metadata ptr %22, metadata !2941, metadata !DIExpression()), !dbg !3160
  %23 = icmp eq ptr %22, null, !dbg !3162
  br i1 %23, label %24, label %25, !dbg !3163

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3164
  unreachable, !dbg !3164

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !688, metadata !DIExpression()), !dbg !3143
  store i64 %21, ptr %1, align 8, !dbg !3165, !tbaa !2220
  ret ptr %22, !dbg !3166
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !695 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !703, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr %1, metadata !704, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %2, metadata !705, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %3, metadata !706, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %4, metadata !707, metadata !DIExpression()), !dbg !3167
  %6 = load i64, ptr %1, align 8, !dbg !3168, !tbaa !2220
  call void @llvm.dbg.value(metadata i64 %6, metadata !708, metadata !DIExpression()), !dbg !3167
  %7 = ashr i64 %6, 1, !dbg !3169
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3169
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3169
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %10, metadata !709, metadata !DIExpression()), !dbg !3167
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %11, metadata !709, metadata !DIExpression()), !dbg !3167
  %12 = icmp sgt i64 %3, -1, !dbg !3172
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3174
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3174
  call void @llvm.dbg.value(metadata i64 %15, metadata !709, metadata !DIExpression()), !dbg !3167
  %16 = icmp slt i64 %4, 0, !dbg !3175
  br i1 %16, label %17, label %30, !dbg !3175

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3175
  br i1 %18, label %19, label %24, !dbg !3175

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3175
  %21 = udiv i64 9223372036854775807, %20, !dbg !3175
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3175
  br i1 %23, label %46, label %43, !dbg !3175

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3175
  br i1 %25, label %43, label %26, !dbg !3175

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3175
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3175
  %29 = icmp ult i64 %28, %15, !dbg !3175
  br i1 %29, label %46, label %43, !dbg !3175

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3175
  br i1 %31, label %43, label %32, !dbg !3175

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3175
  br i1 %33, label %34, label %40, !dbg !3175

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3175
  br i1 %35, label %43, label %36, !dbg !3175

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3175
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3175
  %39 = icmp ult i64 %38, %4, !dbg !3175
  br i1 %39, label %46, label %43, !dbg !3175

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3175
  br i1 %42, label %46, label %43, !dbg !3175

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3167
  %44 = mul i64 %15, %4, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %44, metadata !710, metadata !DIExpression()), !dbg !3167
  %45 = icmp slt i64 %44, 128, !dbg !3175
  br i1 %45, label %46, label %51, !dbg !3175

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !711, metadata !DIExpression()), !dbg !3167
  %48 = sdiv i64 %47, %4, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %48, metadata !709, metadata !DIExpression()), !dbg !3167
  %49 = srem i64 %47, %4, !dbg !3179
  %50 = sub nsw i64 %47, %49, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %50, metadata !710, metadata !DIExpression()), !dbg !3167
  br label %51, !dbg !3181

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3167
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3167
  call void @llvm.dbg.value(metadata i64 %53, metadata !710, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %52, metadata !709, metadata !DIExpression()), !dbg !3167
  %54 = icmp eq ptr %0, null, !dbg !3182
  br i1 %54, label %55, label %56, !dbg !3184

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3185, !tbaa !2220
  br label %56, !dbg !3186

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3187
  %58 = icmp slt i64 %57, %2, !dbg !3189
  br i1 %58, label %59, label %96, !dbg !3190

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3191
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3191
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %62, metadata !709, metadata !DIExpression()), !dbg !3167
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3192
  br i1 %65, label %95, label %66, !dbg !3192

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3193

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3193
  br i1 %68, label %69, label %74, !dbg !3193

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3193
  %71 = udiv i64 9223372036854775807, %70, !dbg !3193
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3193
  br i1 %73, label %95, label %93, !dbg !3193

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3193
  br i1 %75, label %93, label %76, !dbg !3193

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3193
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3193
  %79 = icmp ult i64 %78, %62, !dbg !3193
  br i1 %79, label %95, label %93, !dbg !3193

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3193
  br i1 %81, label %93, label %82, !dbg !3193

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3193
  br i1 %83, label %84, label %90, !dbg !3193

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3193
  br i1 %85, label %93, label %86, !dbg !3193

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3193
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3193
  %89 = icmp ult i64 %88, %4, !dbg !3193
  br i1 %89, label %95, label %93, !dbg !3193

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3193
  br i1 %92, label %95, label %93, !dbg !3193

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !710, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3167
  %94 = mul i64 %62, %4, !dbg !3193
  call void @llvm.dbg.value(metadata i64 %94, metadata !710, metadata !DIExpression()), !dbg !3167
  br label %96, !dbg !3194

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3195
  unreachable, !dbg !3195

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3167
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3167
  call void @llvm.dbg.value(metadata i64 %98, metadata !710, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata i64 %97, metadata !709, metadata !DIExpression()), !dbg !3167
  call void @llvm.dbg.value(metadata ptr %0, metadata !3013, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64 %98, metadata !3014, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata ptr %0, metadata !3016, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %98, metadata !3020, metadata !DIExpression()), !dbg !3198
  %99 = icmp eq i64 %98, 0, !dbg !3200
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3200
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3201
  call void @llvm.dbg.value(metadata ptr %101, metadata !2941, metadata !DIExpression()), !dbg !3202
  %102 = icmp eq ptr %101, null, !dbg !3204
  br i1 %102, label %103, label %104, !dbg !3205

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3206
  unreachable, !dbg !3206

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !703, metadata !DIExpression()), !dbg !3167
  store i64 %97, ptr %1, align 8, !dbg !3207, !tbaa !2220
  ret ptr %101, !dbg !3208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3209 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 %0, metadata !3213, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64 1, metadata !3216, metadata !DIExpression()), !dbg !3217
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3219
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !3220
  %3 = icmp eq ptr %2, null, !dbg !3222
  br i1 %3, label %4, label %5, !dbg !3223

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3224
  unreachable, !dbg !3224

5:                                                ; preds = %1
  ret ptr %2, !dbg !3225
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3226 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3214 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3213, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 %1, metadata !3216, metadata !DIExpression()), !dbg !3227
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3228
  call void @llvm.dbg.value(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !3229
  %4 = icmp eq ptr %3, null, !dbg !3231
  br i1 %4, label %5, label %6, !dbg !3232

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3233
  unreachable, !dbg !3233

6:                                                ; preds = %2
  ret ptr %3, !dbg !3234
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3235 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %0, metadata !3239, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 1, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3248, metadata !DIExpression()), !dbg !3249
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %2, metadata !2941, metadata !DIExpression()), !dbg !3252
  %3 = icmp eq ptr %2, null, !dbg !3254
  br i1 %3, label %4, label %5, !dbg !3255

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3256
  unreachable, !dbg !3256

5:                                                ; preds = %1
  ret ptr %2, !dbg !3257
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3239, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3259
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3261
  call void @llvm.dbg.value(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !3262
  %4 = icmp eq ptr %3, null, !dbg !3264
  br i1 %4, label %5, label %6, !dbg !3265

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3266
  unreachable, !dbg !3266

6:                                                ; preds = %2
  ret ptr %3, !dbg !3267
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3268 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %1, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 %1, metadata !2965, metadata !DIExpression()), !dbg !3275
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3277
  call void @llvm.dbg.value(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !3278
  %4 = icmp eq ptr %3, null, !dbg !3280
  br i1 %4, label %5, label %6, !dbg !3281

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3282
  unreachable, !dbg !3282

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3283, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3291
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3293
  ret ptr %3, !dbg !3294
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3295 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3300, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !2979, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()), !dbg !3304
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3306
  call void @llvm.dbg.value(metadata ptr %3, metadata !2941, metadata !DIExpression()), !dbg !3307
  %4 = icmp eq ptr %3, null, !dbg !3309
  br i1 %4, label %5, label %6, !dbg !3310

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3311
  unreachable, !dbg !3311

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3283, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3312
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3314
  ret ptr %3, !dbg !3315
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3316 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3320, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3321, metadata !DIExpression()), !dbg !3323
  %3 = add nsw i64 %1, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i64 %3, metadata !2979, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i64 %3, metadata !2981, metadata !DIExpression()), !dbg !3327
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3329
  call void @llvm.dbg.value(metadata ptr %4, metadata !2941, metadata !DIExpression()), !dbg !3330
  %5 = icmp eq ptr %4, null, !dbg !3332
  br i1 %5, label %6, label %7, !dbg !3333

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3334
  unreachable, !dbg !3334

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3322, metadata !DIExpression()), !dbg !3323
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3335
  store i8 0, ptr %8, align 1, !dbg !3336, !tbaa !822
  call void @llvm.dbg.value(metadata ptr %4, metadata !3283, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3339
  ret ptr %4, !dbg !3340
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3341 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3343, metadata !DIExpression()), !dbg !3344
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3345
  %3 = add i64 %2, 1, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %0, metadata !3272, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %3, metadata !3273, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %3, metadata !2965, metadata !DIExpression()), !dbg !3349
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3351
  call void @llvm.dbg.value(metadata ptr %4, metadata !2941, metadata !DIExpression()), !dbg !3352
  %5 = icmp eq ptr %4, null, !dbg !3354
  br i1 %5, label %6, label %7, !dbg !3355

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3356
  unreachable, !dbg !3356

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3283, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %3, metadata !3290, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3359
  ret ptr %4, !dbg !3360
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3361 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3366, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %1, metadata !3363, metadata !DIExpression()), !dbg !3367
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #36, !dbg !3366
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #36, !dbg !3366
  %3 = icmp eq i32 %1, 0, !dbg !3366
  tail call void @llvm.assume(i1 %3), !dbg !3366
  tail call void @abort() #38, !dbg !3368
  unreachable, !dbg !3368
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3369 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3407, metadata !DIExpression()), !dbg !3412
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3413
  call void @llvm.dbg.value(metadata i1 poison, metadata !3408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3412
  call void @llvm.dbg.value(metadata ptr %0, metadata !3414, metadata !DIExpression()), !dbg !3417
  %3 = load i32, ptr %0, align 8, !dbg !3419, !tbaa !3420
  %4 = and i32 %3, 32, !dbg !3421
  %5 = icmp eq i32 %4, 0, !dbg !3421
  call void @llvm.dbg.value(metadata i1 %5, metadata !3410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3412
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3422
  %7 = icmp eq i32 %6, 0, !dbg !3423
  call void @llvm.dbg.value(metadata i1 %7, metadata !3411, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3412
  br i1 %5, label %8, label %18, !dbg !3424

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3426
  call void @llvm.dbg.value(metadata i1 %9, metadata !3408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3412
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3427
  %11 = xor i1 %7, true, !dbg !3427
  %12 = sext i1 %11 to i32, !dbg !3427
  br i1 %10, label %21, label %13, !dbg !3427

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3428
  %15 = load i32, ptr %14, align 4, !dbg !3428, !tbaa !813
  %16 = icmp ne i32 %15, 9, !dbg !3429
  %17 = sext i1 %16 to i32, !dbg !3430
  br label %21, !dbg !3430

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3431

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3433
  store i32 0, ptr %20, align 4, !dbg !3435, !tbaa !813
  br label %21, !dbg !3433

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3412
  ret i32 %22, !dbg !3436
}

; Function Attrs: nounwind
declare !dbg !3437 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3441 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()), !dbg !3483
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3484
  call void @llvm.dbg.value(metadata i32 %2, metadata !3481, metadata !DIExpression()), !dbg !3483
  %3 = icmp slt i32 %2, 0, !dbg !3485
  br i1 %3, label %4, label %6, !dbg !3487

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3488
  br label %24, !dbg !3489

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3490
  %8 = icmp eq i32 %7, 0, !dbg !3490
  br i1 %8, label %13, label %9, !dbg !3492

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3493
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3494
  %12 = icmp eq i64 %11, -1, !dbg !3495
  br i1 %12, label %16, label %13, !dbg !3496

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3497
  %15 = icmp eq i32 %14, 0, !dbg !3497
  br i1 %15, label %16, label %18, !dbg !3498

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 0, metadata !3482, metadata !DIExpression()), !dbg !3483
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3499
  call void @llvm.dbg.value(metadata i32 %17, metadata !3482, metadata !DIExpression()), !dbg !3483
  br label %24, !dbg !3500

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3501
  %20 = load i32, ptr %19, align 4, !dbg !3501, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %20, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i32 0, metadata !3482, metadata !DIExpression()), !dbg !3483
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3499
  call void @llvm.dbg.value(metadata i32 %21, metadata !3482, metadata !DIExpression()), !dbg !3483
  %22 = icmp eq i32 %20, 0, !dbg !3502
  br i1 %22, label %24, label %23, !dbg !3500

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3504, !tbaa !813
  call void @llvm.dbg.value(metadata i32 -1, metadata !3482, metadata !DIExpression()), !dbg !3483
  br label %24, !dbg !3506

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3483
  ret i32 %25, !dbg !3507
}

; Function Attrs: nofree nounwind
declare !dbg !3508 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3509 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3510 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3511 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3514 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3552, metadata !DIExpression()), !dbg !3553
  %2 = icmp eq ptr %0, null, !dbg !3554
  br i1 %2, label %6, label %3, !dbg !3556

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3557
  %5 = icmp eq i32 %4, 0, !dbg !3557
  br i1 %5, label %6, label %8, !dbg !3558

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3559
  br label %16, !dbg !3560

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3561, metadata !DIExpression()), !dbg !3566
  %9 = load i32, ptr %0, align 8, !dbg !3568, !tbaa !3420
  %10 = and i32 %9, 256, !dbg !3570
  %11 = icmp eq i32 %10, 0, !dbg !3570
  br i1 %11, label %14, label %12, !dbg !3571

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3572
  br label %14, !dbg !3572

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3573
  br label %16, !dbg !3574

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3553
  ret i32 %17, !dbg !3575
}

; Function Attrs: nofree nounwind
declare !dbg !3576 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3577 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3616, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()), !dbg !3622
  call void @llvm.dbg.value(metadata i32 %2, metadata !3618, metadata !DIExpression()), !dbg !3622
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3623
  %5 = load ptr, ptr %4, align 8, !dbg !3623, !tbaa !3624
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3625
  %7 = load ptr, ptr %6, align 8, !dbg !3625, !tbaa !3626
  %8 = icmp eq ptr %5, %7, !dbg !3627
  br i1 %8, label %9, label %27, !dbg !3628

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3629
  %11 = load ptr, ptr %10, align 8, !dbg !3629, !tbaa !1191
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3630
  %13 = load ptr, ptr %12, align 8, !dbg !3630, !tbaa !3631
  %14 = icmp eq ptr %11, %13, !dbg !3632
  br i1 %14, label %15, label %27, !dbg !3633

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3634
  %17 = load ptr, ptr %16, align 8, !dbg !3634, !tbaa !3635
  %18 = icmp eq ptr %17, null, !dbg !3636
  br i1 %18, label %19, label %27, !dbg !3637

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3638
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %21, metadata !3619, metadata !DIExpression()), !dbg !3640
  %22 = icmp eq i64 %21, -1, !dbg !3641
  br i1 %22, label %29, label %23, !dbg !3643

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3644, !tbaa !3420
  %25 = and i32 %24, -17, !dbg !3644
  store i32 %25, ptr %0, align 8, !dbg !3644, !tbaa !3420
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3645
  store i64 %21, ptr %26, align 8, !dbg !3646, !tbaa !3647
  br label %29, !dbg !3648

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3649
  br label %29, !dbg !3650

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3622
  ret i32 %30, !dbg !3651
}

; Function Attrs: nofree nounwind
declare !dbg !3652 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3660, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %1, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata i64 %2, metadata !3662, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %3, metadata !3663, metadata !DIExpression()), !dbg !3665
  %5 = icmp eq ptr %1, null, !dbg !3666
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3668
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3668
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3668
  call void @llvm.dbg.value(metadata i64 %8, metadata !3662, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %7, metadata !3661, metadata !DIExpression()), !dbg !3665
  call void @llvm.dbg.value(metadata ptr %6, metadata !3660, metadata !DIExpression()), !dbg !3665
  %9 = icmp eq ptr %3, null, !dbg !3669
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3671
  call void @llvm.dbg.value(metadata ptr %10, metadata !3663, metadata !DIExpression()), !dbg !3665
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %11, metadata !3664, metadata !DIExpression()), !dbg !3665
  %12 = icmp ult i64 %11, -3, !dbg !3673
  br i1 %12, label %13, label %17, !dbg !3675

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3676
  %15 = icmp eq i32 %14, 0, !dbg !3676
  br i1 %15, label %16, label %29, !dbg !3677

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3678, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata ptr %10, metadata !3685, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i32 0, metadata !3688, metadata !DIExpression()), !dbg !3690
  call void @llvm.dbg.value(metadata i64 8, metadata !3689, metadata !DIExpression()), !dbg !3690
  store i64 0, ptr %10, align 1, !dbg !3692
  br label %29, !dbg !3693

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3694
  br i1 %18, label %19, label %20, !dbg !3696

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3697
  unreachable, !dbg !3697

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3698

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3700
  br i1 %23, label %29, label %24, !dbg !3701

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3702
  br i1 %25, label %29, label %26, !dbg !3705

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3706, !tbaa !822
  %28 = zext i8 %27 to i32, !dbg !3707
  store i32 %28, ptr %6, align 4, !dbg !3708, !tbaa !813
  br label %29, !dbg !3709

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3665
  ret i64 %30, !dbg !3710
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3711 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3717 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3719, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %1, metadata !3720, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i64 %2, metadata !3721, metadata !DIExpression()), !dbg !3723
  %4 = icmp eq i64 %2, 0, !dbg !3724
  br i1 %4, label %8, label %5, !dbg !3724

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3724
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3724
  br i1 %7, label %13, label %8, !dbg !3724

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3722, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3723
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3722, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3723
  %9 = mul i64 %2, %1, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %9, metadata !3722, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %0, metadata !3726, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %9, metadata !3729, metadata !DIExpression()), !dbg !3730
  %10 = icmp eq i64 %9, 0, !dbg !3732
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3732
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3733
  br label %15, !dbg !3734

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3722, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3723
  %14 = tail call ptr @__errno_location() #39, !dbg !3735
  store i32 12, ptr %14, align 4, !dbg !3737, !tbaa !813
  br label %15, !dbg !3738

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3723
  ret ptr %16, !dbg !3739
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3740 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3744, metadata !DIExpression()), !dbg !3749
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3750
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3745, metadata !DIExpression()), !dbg !3751
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3752
  %4 = icmp eq i32 %3, 0, !dbg !3752
  br i1 %4, label %5, label %12, !dbg !3754

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3755, metadata !DIExpression()), !dbg !3759
  %6 = load i16, ptr %2, align 16, !dbg !3762
  %7 = icmp eq i16 %6, 67, !dbg !3762
  br i1 %7, label %11, label %8, !dbg !3763

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3755, metadata !DIExpression()), !dbg !3764
  call void @llvm.dbg.value(metadata ptr @.str.1.127, metadata !3758, metadata !DIExpression()), !dbg !3764
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.127, i64 6), !dbg !3766
  %10 = icmp eq i32 %9, 0, !dbg !3767
  br i1 %10, label %11, label %12, !dbg !3768

11:                                               ; preds = %8, %5
  br label %12, !dbg !3769

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3749
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3770
  ret i1 %13, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3771 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3775, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata ptr %1, metadata !3776, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %2, metadata !3777, metadata !DIExpression()), !dbg !3778
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3779
  ret i32 %4, !dbg !3780
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3781 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3785, metadata !DIExpression()), !dbg !3786
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3787
  ret ptr %2, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3791, metadata !DIExpression()), !dbg !3793
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3794
  call void @llvm.dbg.value(metadata ptr %2, metadata !3792, metadata !DIExpression()), !dbg !3793
  ret ptr %2, !dbg !3795
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3796 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3798, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata ptr %1, metadata !3799, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %0, metadata !3791, metadata !DIExpression()), !dbg !3806
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3808
  call void @llvm.dbg.value(metadata ptr %4, metadata !3792, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %4, metadata !3801, metadata !DIExpression()), !dbg !3805
  %5 = icmp eq ptr %4, null, !dbg !3809
  br i1 %5, label %6, label %9, !dbg !3810

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3811
  br i1 %7, label %19, label %8, !dbg !3814

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3815, !tbaa !822
  br label %19, !dbg !3816

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %10, metadata !3802, metadata !DIExpression()), !dbg !3818
  %11 = icmp ult i64 %10, %2, !dbg !3819
  br i1 %11, label %12, label %14, !dbg !3821

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3822
  call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %13, metadata !3828, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3831
  br label %19, !dbg !3832

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3833
  br i1 %15, label %19, label %16, !dbg !3836

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3837
  call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %4, metadata !3827, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %17, metadata !3828, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3841
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3842
  store i8 0, ptr %18, align 1, !dbg !3843, !tbaa !822
  br label %19, !dbg !3844

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3845
  ret i32 %20, !dbg !3846
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

!llvm.dbg.cu = !{!74, !311, !315, !330, !638, !670, !385, !405, !419, !470, !672, !630, !679, !713, !715, !717, !719, !721, !654, !723, !726, !730, !732}
!llvm.ident = !{!734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734}
!llvm.module.flags = !{!735, !736, !737, !738, !739, !740}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/unlink.c", directory: "/src", checksumkind: CSK_MD5, checksum: "db068e42b0dc801df6f06dd298eed8bd")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!275 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!329 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !330, file: !331, line: 66, type: !377, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !331, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !332, globals: !333, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!332 = !{!107, !113}
!333 = !{!334, !336, !356, !358, !360, !362, !328, !364, !366, !368, !370, !375}
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !331, line: 272, type: !117, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "old_file_name", scope: !338, file: !331, line: 304, type: !72, isLocal: true, isDefinition: true)
!338 = distinct !DISubprogram(name: "verror_at_line", scope: !331, file: !331, line: 298, type: !339, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !349)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !108, !108, !72, !78, !72, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !343)
!343 = !{!344, !346, !347, !348}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !342, file: !345, baseType: !78, size: 32)
!345 = !DIFile(filename: "lib/error.c", directory: "/src")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !342, file: !345, baseType: !78, size: 32, offset: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !342, file: !345, baseType: !107, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !342, file: !345, baseType: !107, size: 64, offset: 128)
!349 = !{!350, !351, !352, !353, !354, !355}
!350 = !DILocalVariable(name: "status", arg: 1, scope: !338, file: !331, line: 298, type: !108)
!351 = !DILocalVariable(name: "errnum", arg: 2, scope: !338, file: !331, line: 298, type: !108)
!352 = !DILocalVariable(name: "file_name", arg: 3, scope: !338, file: !331, line: 298, type: !72)
!353 = !DILocalVariable(name: "line_number", arg: 4, scope: !338, file: !331, line: 298, type: !78)
!354 = !DILocalVariable(name: "message", arg: 5, scope: !338, file: !331, line: 298, type: !72)
!355 = !DILocalVariable(name: "args", arg: 6, scope: !338, file: !331, line: 298, type: !341)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "old_line_number", scope: !338, file: !331, line: 305, type: !78, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !331, line: 338, type: !124, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !156, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !134, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "error_message_count", scope: !330, file: !331, line: 69, type: !78, isLocal: false, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !330, file: !331, line: 295, type: !108, isLocal: false, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !19, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !372, isLocal: true, isDefinition: true)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 21)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !331, line: 214, type: !117, isLocal: true, isDefinition: true)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null}
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !382, line: 60, type: !134, isLocal: true, isDefinition: true)
!382 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "long_options", scope: !385, file: !382, line: 34, type: !393, isLocal: true, isDefinition: true)
!385 = distinct !DICompileUnit(language: DW_LANG_C11, file: !382, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !386, splitDebugInlining: false, nameTableKind: None)
!386 = !{!380, !387, !389, !391, !383}
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !382, line: 112, type: !34, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !382, line: 36, type: !117, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !382, line: 37, type: !156, isLocal: true, isDefinition: true)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 768, elements: !144)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !396, line: 50, size: 256, elements: !397)
!396 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!397 = !{!398, !399, !400, !402}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !395, file: !396, line: 52, baseType: !72, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !395, file: !396, line: 55, baseType: !108, size: 32, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !395, file: !396, line: 56, baseType: !401, size: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !396, line: 57, baseType: !108, size: 32, offset: 192)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "program_name", scope: !405, file: !406, line: 31, type: !72, isLocal: false, isDefinition: true)
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!407 = !{!255}
!408 = !{!403, !409, !411}
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !406, line: 46, type: !156, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !406, line: 49, type: !124, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "utf07FF", scope: !415, file: !416, line: 46, type: !443, isLocal: true, isDefinition: true)
!415 = distinct !DISubprogram(name: "proper_name_lite", scope: !416, file: !416, line: 38, type: !417, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !421)
!416 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!417 = !DISubroutineType(types: !418)
!418 = !{!72, !72, !72}
!419 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !420, splitDebugInlining: false, nameTableKind: None)
!420 = !{!413}
!421 = !{!422, !423, !424, !425, !430}
!422 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !415, file: !416, line: 38, type: !72)
!423 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !415, file: !416, line: 38, type: !72)
!424 = !DILocalVariable(name: "translation", scope: !415, file: !416, line: 40, type: !72)
!425 = !DILocalVariable(name: "w", scope: !415, file: !416, line: 47, type: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !427, line: 37, baseType: !428)
!427 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !275, line: 57, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !275, line: 42, baseType: !78)
!430 = !DILocalVariable(name: "mbs", scope: !415, file: !416, line: 48, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !435)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !436)
!436 = !{!437, !438}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !435, file: !434, line: 15, baseType: !108, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !435, file: !434, line: 20, baseType: !439, size: 32, offset: 32)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !434, line: 16, size: 32, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !439, file: !434, line: 18, baseType: !78, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !439, file: !434, line: 19, baseType: !124, size: 32)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16, elements: !135)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !446, line: 78, type: !156, isLocal: true, isDefinition: true)
!446 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !446, line: 79, type: !129, isLocal: true, isDefinition: true)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !446, line: 80, type: !451, isLocal: true, isDefinition: true)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 13)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !446, line: 81, type: !451, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !446, line: 82, type: !297, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !446, line: 83, type: !134, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !446, line: 84, type: !156, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !446, line: 85, type: !19, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !446, line: 86, type: !19, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !446, line: 87, type: !156, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !470, file: !446, line: 76, type: !542, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C11, file: !446, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !471, retainedTypes: !477, globals: !478, splitDebugInlining: false, nameTableKind: None)
!471 = !{!76, !472, !91}
!472 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !77, line: 254, baseType: !78, size: 32, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!475 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!476 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!477 = !{!108, !109, !110}
!478 = !{!444, !447, !449, !454, !456, !458, !460, !462, !464, !466, !468, !479, !483, !493, !495, !500, !502, !504, !506, !508, !531, !538, !540}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !470, file: !446, line: 92, type: !481, isLocal: false, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 320, elements: !40)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !470, file: !446, line: 1040, type: !485, isLocal: false, isDefinition: true)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !446, line: 56, size: 448, elements: !486)
!486 = !{!487, !488, !489, !491, !492}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !485, file: !446, line: 59, baseType: !76, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !446, line: 62, baseType: !108, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !485, file: !446, line: 66, baseType: !490, size: 256, offset: 64)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !157)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !485, file: !446, line: 69, baseType: !72, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !485, file: !446, line: 72, baseType: !72, size: 64, offset: 384)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !470, file: !446, line: 107, type: !485, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "slot0", scope: !470, file: !446, line: 831, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 256)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !446, line: 321, type: !134, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !446, line: 357, type: !134, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !446, line: 358, type: !134, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !446, line: 199, type: !19, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "quote", scope: !510, file: !446, line: 228, type: !529, isLocal: true, isDefinition: true)
!510 = distinct !DISubprogram(name: "gettext_quote", scope: !446, file: !446, line: 197, type: !511, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!72, !72, !76}
!513 = !{!514, !515, !516, !517, !518}
!514 = !DILocalVariable(name: "msgid", arg: 1, scope: !510, file: !446, line: 197, type: !72)
!515 = !DILocalVariable(name: "s", arg: 2, scope: !510, file: !446, line: 197, type: !76)
!516 = !DILocalVariable(name: "translation", scope: !510, file: !446, line: 199, type: !72)
!517 = !DILocalVariable(name: "w", scope: !510, file: !446, line: 229, type: !426)
!518 = !DILocalVariable(name: "mbs", scope: !510, file: !446, line: 230, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !521, file: !434, line: 15, baseType: !108, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !521, file: !434, line: 20, baseType: !525, size: 32, offset: 32)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !434, line: 16, size: 32, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !525, file: !434, line: 18, baseType: !78, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !525, file: !434, line: 19, baseType: !124, size: 32)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !530)
!530 = !{!136, !126}
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "slotvec", scope: !470, file: !446, line: 834, type: !533, isLocal: true, isDefinition: true)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !446, line: 823, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !534, file: !446, line: 825, baseType: !110, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !534, file: !446, line: 826, baseType: !255, size: 64, offset: 64)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "nslots", scope: !470, file: !446, line: 832, type: !108, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "slotvec0", scope: !470, file: !446, line: 833, type: !534, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 704, elements: !544)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!544 = !{!545}
!545 = !DISubrange(count: 11)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !548, line: 67, type: !224, isLocal: true, isDefinition: true)
!548 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !548, line: 69, type: !19, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !19, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !124, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !548, line: 85, type: !134, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !548, line: 88, type: !559, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 171)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !548, line: 88, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 34)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !548, line: 105, type: !56, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !548, line: 109, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 23)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !548, line: 113, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 28)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !548, line: 120, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 32)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !548, line: 127, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 36)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !548, line: 134, type: !175, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !548, line: 142, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 44)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !548, line: 150, type: !598, isLocal: true, isDefinition: true)
!598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !599)
!599 = !{!600}
!600 = !DISubrange(count: 48)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !548, line: 159, type: !603, isLocal: true, isDefinition: true)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: 52)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !548, line: 170, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 60)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !548, line: 248, type: !297, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !548, line: 248, type: !200, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !297, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !49, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !175, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !548, line: 259, type: !3, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !548, line: 259, type: !625, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 29)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !630, file: !631, line: 26, type: !633, isLocal: false, isDefinition: true)
!630 = distinct !DICompileUnit(language: DW_LANG_C11, file: !631, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!632 = !{!628}
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 47)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "exit_failure", scope: !638, file: !639, line: 24, type: !641, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !640, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!640 = !{!636}
!641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !143, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !19, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !61, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 108, type: !34, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "internal_state", scope: !654, file: !651, line: 97, type: !657, isLocal: true, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !655, globals: !656, splitDebugInlining: false, nameTableKind: None)
!655 = !{!107, !110, !113}
!656 = !{!649, !652}
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !659, file: !434, line: 15, baseType: !108, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !659, file: !434, line: 20, baseType: !663, size: 32, offset: 32)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !659, file: !434, line: 16, size: 32, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !663, file: !434, line: 18, baseType: !78, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !663, file: !434, line: 19, baseType: !124, size: 32)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !669, line: 35, type: !129, isLocal: true, isDefinition: true)
!669 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!670 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!671 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !673, retainedTypes: !677, globals: !678, splitDebugInlining: false, nameTableKind: None)
!673 = !{!674}
!674 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 40, baseType: !78, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!677 = !{!107}
!678 = !{!546, !549, !551, !553, !555, !557, !562, !567, !569, !574, !579, !584, !589, !591, !596, !601, !606, !611, !613, !615, !617, !619, !621, !623}
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !681, retainedTypes: !712, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!681 = !{!682, !694}
!682 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !683, file: !680, line: 188, baseType: !78, size: 32, elements: !692)
!683 = distinct !DISubprogram(name: "x2nrealloc", scope: !680, file: !680, line: 176, type: !684, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !687)
!684 = !DISubroutineType(types: !685)
!685 = !{!107, !107, !686, !110}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!687 = !{!688, !689, !690, !691}
!688 = !DILocalVariable(name: "p", arg: 1, scope: !683, file: !680, line: 176, type: !107)
!689 = !DILocalVariable(name: "pn", arg: 2, scope: !683, file: !680, line: 176, type: !686)
!690 = !DILocalVariable(name: "s", arg: 3, scope: !683, file: !680, line: 176, type: !110)
!691 = !DILocalVariable(name: "n", scope: !683, file: !680, line: 178, type: !110)
!692 = !{!693}
!693 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!694 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !695, file: !680, line: 228, baseType: !78, size: 32, elements: !692)
!695 = distinct !DISubprogram(name: "xpalloc", scope: !680, file: !680, line: 223, type: !696, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !702)
!696 = !DISubroutineType(types: !697)
!697 = !{!107, !107, !698, !699, !701, !699}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !700, line: 130, baseType: !701)
!700 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !111, line: 35, baseType: !276)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711}
!703 = !DILocalVariable(name: "pa", arg: 1, scope: !695, file: !680, line: 223, type: !107)
!704 = !DILocalVariable(name: "pn", arg: 2, scope: !695, file: !680, line: 223, type: !698)
!705 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !695, file: !680, line: 223, type: !699)
!706 = !DILocalVariable(name: "n_max", arg: 4, scope: !695, file: !680, line: 223, type: !701)
!707 = !DILocalVariable(name: "s", arg: 5, scope: !695, file: !680, line: 223, type: !699)
!708 = !DILocalVariable(name: "n0", scope: !695, file: !680, line: 230, type: !699)
!709 = !DILocalVariable(name: "n", scope: !695, file: !680, line: 237, type: !699)
!710 = !DILocalVariable(name: "nbytes", scope: !695, file: !680, line: 248, type: !699)
!711 = !DILocalVariable(name: "adjusted_nbytes", scope: !695, file: !680, line: 252, type: !699)
!712 = !{!255, !107, !234, !276, !112}
!713 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !714, splitDebugInlining: false, nameTableKind: None)
!714 = !{!642, !645, !647}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!716 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !725, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!725 = !{!234, !112, !107}
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !727, splitDebugInlining: false, nameTableKind: None)
!727 = !{!728, !667}
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !669, line: 35, type: !134, isLocal: true, isDefinition: true)
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !677, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!734 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!735 = !{i32 7, !"Dwarf Version", i32 5}
!736 = !{i32 2, !"Debug Info Version", i32 3}
!737 = !{i32 1, !"wchar_size", i32 4}
!738 = !{i32 8, !"PIC Level", i32 2}
!739 = !{i32 7, !"PIE Level", i32 2}
!740 = !{i32 7, !"uwtable", i32 2}
!741 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !742, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !744)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !108}
!744 = !{!745}
!745 = !DILocalVariable(name: "status", arg: 1, scope: !741, file: !2, line: 37, type: !108)
!746 = !DILocation(line: 0, scope: !741)
!747 = !DILocation(line: 39, column: 14, scope: !748)
!748 = distinct !DILexicalBlock(scope: !741, file: !2, line: 39, column: 7)
!749 = !DILocation(line: 39, column: 7, scope: !741)
!750 = !DILocation(line: 40, column: 5, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !2, line: 40, column: 5)
!752 = !{!753, !753, i64 0}
!753 = !{!"any pointer", !754, i64 0}
!754 = !{!"omnipotent char", !755, i64 0}
!755 = !{!"Simple C/C++ TBAA"}
!756 = !DILocation(line: 43, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !748, file: !2, line: 42, column: 5)
!758 = !DILocation(line: 46, column: 7, scope: !757)
!759 = !DILocation(line: 48, column: 7, scope: !757)
!760 = !DILocation(line: 49, column: 7, scope: !757)
!761 = !DILocalVariable(name: "program", arg: 1, scope: !762, file: !69, line: 836, type: !72)
!762 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !763, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{null, !72}
!765 = !{!761, !766, !773, !774, !776, !777}
!766 = !DILocalVariable(name: "infomap", scope: !762, file: !69, line: 838, type: !767)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 896, elements: !20)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !762, file: !69, line: 838, size: 128, elements: !770)
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !769, file: !69, line: 838, baseType: !72, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !769, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!773 = !DILocalVariable(name: "node", scope: !762, file: !69, line: 848, type: !72)
!774 = !DILocalVariable(name: "map_prog", scope: !762, file: !69, line: 849, type: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!776 = !DILocalVariable(name: "lc_messages", scope: !762, file: !69, line: 861, type: !72)
!777 = !DILocalVariable(name: "url_program", scope: !762, file: !69, line: 874, type: !72)
!778 = !DILocation(line: 0, scope: !762, inlinedAt: !779)
!779 = distinct !DILocation(line: 50, column: 7, scope: !757)
!780 = !DILocation(line: 857, column: 3, scope: !762, inlinedAt: !779)
!781 = !DILocation(line: 861, column: 29, scope: !762, inlinedAt: !779)
!782 = !DILocation(line: 862, column: 7, scope: !783, inlinedAt: !779)
!783 = distinct !DILexicalBlock(scope: !762, file: !69, line: 862, column: 7)
!784 = !DILocation(line: 862, column: 19, scope: !783, inlinedAt: !779)
!785 = !DILocation(line: 862, column: 22, scope: !783, inlinedAt: !779)
!786 = !DILocation(line: 862, column: 7, scope: !762, inlinedAt: !779)
!787 = !DILocation(line: 868, column: 7, scope: !788, inlinedAt: !779)
!788 = distinct !DILexicalBlock(scope: !783, file: !69, line: 863, column: 5)
!789 = !DILocation(line: 870, column: 5, scope: !788, inlinedAt: !779)
!790 = !DILocation(line: 875, column: 3, scope: !762, inlinedAt: !779)
!791 = !DILocation(line: 877, column: 3, scope: !762, inlinedAt: !779)
!792 = !DILocation(line: 52, column: 3, scope: !741)
!793 = !DISubprogram(name: "dcgettext", scope: !794, file: !794, line: 51, type: !795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!794 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!795 = !DISubroutineType(types: !796)
!796 = !{!255, !72, !72, !108}
!797 = !{}
!798 = !DISubprogram(name: "__fprintf_chk", scope: !799, file: !799, line: 93, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!799 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!800 = !DISubroutineType(types: !801)
!801 = !{!108, !802, !108, !803, null}
!802 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!804 = !DISubprogram(name: "__printf_chk", scope: !799, file: !799, line: 95, type: !805, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!805 = !DISubroutineType(types: !806)
!806 = !{!108, !108, !803, null}
!807 = !DISubprogram(name: "fputs_unlocked", scope: !808, file: !808, line: 691, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!808 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!809 = !DISubroutineType(types: !810)
!810 = !{!108, !803, !802}
!811 = !DILocation(line: 0, scope: !68)
!812 = !DILocation(line: 581, column: 7, scope: !232)
!813 = !{!814, !814, i64 0}
!814 = !{!"int", !754, i64 0}
!815 = !DILocation(line: 581, column: 19, scope: !232)
!816 = !DILocation(line: 581, column: 7, scope: !68)
!817 = !DILocation(line: 585, column: 26, scope: !231)
!818 = !DILocation(line: 0, scope: !231)
!819 = !DILocation(line: 586, column: 23, scope: !231)
!820 = !DILocation(line: 586, column: 28, scope: !231)
!821 = !DILocation(line: 586, column: 32, scope: !231)
!822 = !{!754, !754, i64 0}
!823 = !DILocation(line: 586, column: 38, scope: !231)
!824 = !DILocalVariable(name: "__s1", arg: 1, scope: !825, file: !826, line: 1359, type: !72)
!825 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !829)
!826 = !DIFile(filename: "./lib/string.h", directory: "/src")
!827 = !DISubroutineType(types: !828)
!828 = !{!234, !72, !72}
!829 = !{!824, !830}
!830 = !DILocalVariable(name: "__s2", arg: 2, scope: !825, file: !826, line: 1359, type: !72)
!831 = !DILocation(line: 0, scope: !825, inlinedAt: !832)
!832 = distinct !DILocation(line: 586, column: 41, scope: !231)
!833 = !DILocation(line: 1361, column: 11, scope: !825, inlinedAt: !832)
!834 = !DILocation(line: 1361, column: 10, scope: !825, inlinedAt: !832)
!835 = !DILocation(line: 586, column: 19, scope: !231)
!836 = !DILocation(line: 587, column: 5, scope: !231)
!837 = !DILocation(line: 588, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!839 = !DILocation(line: 588, column: 7, scope: !68)
!840 = !DILocation(line: 590, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !69, line: 589, column: 5)
!842 = !DILocation(line: 591, column: 7, scope: !841)
!843 = !DILocation(line: 595, column: 37, scope: !68)
!844 = !DILocation(line: 595, column: 35, scope: !68)
!845 = !DILocation(line: 596, column: 29, scope: !68)
!846 = !DILocation(line: 597, column: 8, scope: !240)
!847 = !DILocation(line: 597, column: 7, scope: !68)
!848 = !DILocation(line: 604, column: 24, scope: !239)
!849 = !DILocation(line: 604, column: 12, scope: !240)
!850 = !DILocation(line: 0, scope: !238)
!851 = !DILocation(line: 610, column: 16, scope: !238)
!852 = !DILocation(line: 610, column: 7, scope: !238)
!853 = !DILocation(line: 611, column: 21, scope: !238)
!854 = !{!855, !855, i64 0}
!855 = !{!"short", !754, i64 0}
!856 = !DILocation(line: 611, column: 19, scope: !238)
!857 = !DILocation(line: 611, column: 16, scope: !238)
!858 = !DILocation(line: 610, column: 30, scope: !238)
!859 = distinct !{!859, !852, !853, !860}
!860 = !{!"llvm.loop.mustprogress"}
!861 = !DILocation(line: 612, column: 18, scope: !862)
!862 = distinct !DILexicalBlock(scope: !238, file: !69, line: 612, column: 11)
!863 = !DILocation(line: 612, column: 11, scope: !238)
!864 = !DILocation(line: 618, column: 5, scope: !238)
!865 = !DILocation(line: 620, column: 23, scope: !68)
!866 = !DILocation(line: 625, column: 39, scope: !68)
!867 = !DILocation(line: 626, column: 3, scope: !68)
!868 = !DILocation(line: 626, column: 10, scope: !68)
!869 = !DILocation(line: 626, column: 21, scope: !68)
!870 = !DILocation(line: 628, column: 44, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !69, line: 628, column: 11)
!872 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!873 = !DILocation(line: 628, column: 32, scope: !871)
!874 = !DILocation(line: 628, column: 49, scope: !871)
!875 = !DILocation(line: 628, column: 11, scope: !872)
!876 = !DILocation(line: 630, column: 11, scope: !877)
!877 = distinct !DILexicalBlock(scope: !872, file: !69, line: 630, column: 11)
!878 = !DILocation(line: 630, column: 11, scope: !872)
!879 = !DILocation(line: 632, column: 26, scope: !880)
!880 = distinct !DILexicalBlock(scope: !881, file: !69, line: 632, column: 15)
!881 = distinct !DILexicalBlock(scope: !877, file: !69, line: 631, column: 9)
!882 = !DILocation(line: 632, column: 34, scope: !880)
!883 = !DILocation(line: 632, column: 37, scope: !880)
!884 = !DILocation(line: 632, column: 15, scope: !881)
!885 = !DILocation(line: 636, column: 16, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !69, line: 636, column: 15)
!887 = !DILocation(line: 636, column: 29, scope: !886)
!888 = !DILocation(line: 640, column: 16, scope: !872)
!889 = distinct !{!889, !867, !890, !860}
!890 = !DILocation(line: 641, column: 5, scope: !68)
!891 = !DILocation(line: 644, column: 3, scope: !68)
!892 = !DILocation(line: 0, scope: !825, inlinedAt: !893)
!893 = distinct !DILocation(line: 648, column: 31, scope: !68)
!894 = !DILocation(line: 0, scope: !825, inlinedAt: !895)
!895 = distinct !DILocation(line: 649, column: 31, scope: !68)
!896 = !DILocation(line: 0, scope: !825, inlinedAt: !897)
!897 = distinct !DILocation(line: 650, column: 31, scope: !68)
!898 = !DILocation(line: 0, scope: !825, inlinedAt: !899)
!899 = distinct !DILocation(line: 651, column: 31, scope: !68)
!900 = !DILocation(line: 0, scope: !825, inlinedAt: !901)
!901 = distinct !DILocation(line: 652, column: 31, scope: !68)
!902 = !DILocation(line: 0, scope: !825, inlinedAt: !903)
!903 = distinct !DILocation(line: 653, column: 31, scope: !68)
!904 = !DILocation(line: 0, scope: !825, inlinedAt: !905)
!905 = distinct !DILocation(line: 654, column: 31, scope: !68)
!906 = !DILocation(line: 0, scope: !825, inlinedAt: !907)
!907 = distinct !DILocation(line: 655, column: 31, scope: !68)
!908 = !DILocation(line: 0, scope: !825, inlinedAt: !909)
!909 = distinct !DILocation(line: 656, column: 31, scope: !68)
!910 = !DILocation(line: 0, scope: !825, inlinedAt: !911)
!911 = distinct !DILocation(line: 657, column: 31, scope: !68)
!912 = !DILocation(line: 663, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !68, file: !69, line: 663, column: 7)
!914 = !DILocation(line: 664, column: 7, scope: !913)
!915 = !DILocation(line: 664, column: 10, scope: !913)
!916 = !DILocation(line: 663, column: 7, scope: !68)
!917 = !DILocation(line: 669, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !913, file: !69, line: 665, column: 5)
!919 = !DILocation(line: 671, column: 5, scope: !918)
!920 = !DILocation(line: 676, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !913, file: !69, line: 673, column: 5)
!922 = !DILocation(line: 679, column: 3, scope: !68)
!923 = !DILocation(line: 683, column: 3, scope: !68)
!924 = !DILocation(line: 686, column: 3, scope: !68)
!925 = !DILocation(line: 688, column: 3, scope: !68)
!926 = !DILocation(line: 691, column: 3, scope: !68)
!927 = !DILocation(line: 695, column: 3, scope: !68)
!928 = !DILocation(line: 696, column: 1, scope: !68)
!929 = !DISubprogram(name: "setlocale", scope: !930, file: !930, line: 122, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!930 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!931 = !DISubroutineType(types: !932)
!932 = !{!255, !108, !72}
!933 = !DISubprogram(name: "strncmp", scope: !934, file: !934, line: 159, type: !935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!934 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!935 = !DISubroutineType(types: !936)
!936 = !{!108, !72, !72, !110}
!937 = !DISubprogram(name: "exit", scope: !938, file: !938, line: 624, type: !742, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !797)
!938 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!939 = !DISubprogram(name: "getenv", scope: !938, file: !938, line: 641, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!940 = !DISubroutineType(types: !941)
!941 = !{!255, !72}
!942 = !DISubprogram(name: "strcmp", scope: !934, file: !934, line: 156, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!943 = !DISubroutineType(types: !944)
!944 = !{!108, !72, !72}
!945 = !DISubprogram(name: "strspn", scope: !934, file: !934, line: 297, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!946 = !DISubroutineType(types: !947)
!947 = !{!112, !72, !72}
!948 = !DISubprogram(name: "strchr", scope: !934, file: !934, line: 246, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!949 = !DISubroutineType(types: !950)
!950 = !{!255, !72, !108}
!951 = !DISubprogram(name: "__ctype_b_loc", scope: !92, file: !92, line: 79, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!952 = !DISubroutineType(types: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!957 = !DISubprogram(name: "strcspn", scope: !934, file: !934, line: 293, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!958 = !DISubprogram(name: "fwrite_unlocked", scope: !808, file: !808, line: 704, type: !959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!959 = !DISubroutineType(types: !960)
!960 = !{!110, !961, !110, !110, !802}
!961 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !962)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!964 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 56, type: !965, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !968)
!965 = !DISubroutineType(types: !966)
!966 = !{!108, !108, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!968 = !{!969, !970}
!969 = !DILocalVariable(name: "argc", arg: 1, scope: !964, file: !2, line: 56, type: !108)
!970 = !DILocalVariable(name: "argv", arg: 2, scope: !964, file: !2, line: 56, type: !967)
!971 = !DILocation(line: 0, scope: !964)
!972 = !DILocation(line: 59, column: 21, scope: !964)
!973 = !DILocation(line: 59, column: 3, scope: !964)
!974 = !DILocation(line: 60, column: 3, scope: !964)
!975 = !DILocation(line: 61, column: 3, scope: !964)
!976 = !DILocation(line: 62, column: 3, scope: !964)
!977 = !DILocation(line: 64, column: 3, scope: !964)
!978 = !DILocation(line: 67, column: 36, scope: !964)
!979 = !DILocation(line: 67, column: 58, scope: !964)
!980 = !DILocation(line: 66, column: 3, scope: !964)
!981 = !DILocation(line: 70, column: 14, scope: !982)
!982 = distinct !DILexicalBlock(scope: !964, file: !2, line: 70, column: 7)
!983 = !DILocation(line: 70, column: 12, scope: !982)
!984 = !DILocation(line: 70, column: 7, scope: !964)
!985 = !DILocation(line: 72, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !2, line: 71, column: 5)
!987 = !DILocation(line: 73, column: 7, scope: !986)
!988 = !DILocation(line: 70, column: 21, scope: !982)
!989 = !DILocation(line: 76, column: 18, scope: !990)
!990 = distinct !DILexicalBlock(scope: !964, file: !2, line: 76, column: 7)
!991 = !DILocation(line: 76, column: 7, scope: !964)
!992 = !DILocation(line: 78, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !990, file: !2, line: 77, column: 5)
!994 = !DILocation(line: 79, column: 7, scope: !993)
!995 = !DILocation(line: 82, column: 15, scope: !996)
!996 = distinct !DILexicalBlock(scope: !964, file: !2, line: 82, column: 7)
!997 = !DILocation(line: 82, column: 7, scope: !996)
!998 = !DILocation(line: 82, column: 29, scope: !996)
!999 = !DILocation(line: 82, column: 7, scope: !964)
!1000 = !DILocation(line: 83, column: 5, scope: !996)
!1001 = !DILocation(line: 85, column: 3, scope: !964)
!1002 = !DISubprogram(name: "bindtextdomain", scope: !794, file: !794, line: 86, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!255, !72, !72}
!1005 = !DISubprogram(name: "textdomain", scope: !794, file: !794, line: 82, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1006 = !DISubprogram(name: "atexit", scope: !938, file: !938, line: 602, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!108, !377}
!1009 = !DISubprogram(name: "unlink", scope: !1010, file: !1010, line: 858, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1010 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!108, !72}
!1013 = !DISubprogram(name: "__errno_location", scope: !1014, file: !1014, line: 37, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1014 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!401}
!1017 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !316, file: !316, line: 50, type: !763, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1018)
!1018 = !{!1019}
!1019 = !DILocalVariable(name: "file", arg: 1, scope: !1017, file: !316, line: 50, type: !72)
!1020 = !DILocation(line: 0, scope: !1017)
!1021 = !DILocation(line: 52, column: 13, scope: !1017)
!1022 = !DILocation(line: 53, column: 1, scope: !1017)
!1023 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !316, file: !316, line: 87, type: !1024, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !234}
!1026 = !{!1027}
!1027 = !DILocalVariable(name: "ignore", arg: 1, scope: !1023, file: !316, line: 87, type: !234)
!1028 = !DILocation(line: 0, scope: !1023)
!1029 = !DILocation(line: 89, column: 16, scope: !1023)
!1030 = !{!1031, !1031, i64 0}
!1031 = !{!"_Bool", !754, i64 0}
!1032 = !DILocation(line: 90, column: 1, scope: !1023)
!1033 = distinct !DISubprogram(name: "close_stdout", scope: !316, file: !316, line: 116, type: !378, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1034)
!1034 = !{!1035}
!1035 = !DILocalVariable(name: "write_error", scope: !1036, file: !316, line: 121, type: !72)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !316, line: 120, column: 5)
!1037 = distinct !DILexicalBlock(scope: !1033, file: !316, line: 118, column: 7)
!1038 = !DILocation(line: 118, column: 21, scope: !1037)
!1039 = !DILocation(line: 118, column: 7, scope: !1037)
!1040 = !DILocation(line: 118, column: 29, scope: !1037)
!1041 = !DILocation(line: 119, column: 7, scope: !1037)
!1042 = !DILocation(line: 119, column: 12, scope: !1037)
!1043 = !{i8 0, i8 2}
!1044 = !DILocation(line: 119, column: 25, scope: !1037)
!1045 = !DILocation(line: 119, column: 28, scope: !1037)
!1046 = !DILocation(line: 119, column: 34, scope: !1037)
!1047 = !DILocation(line: 118, column: 7, scope: !1033)
!1048 = !DILocation(line: 121, column: 33, scope: !1036)
!1049 = !DILocation(line: 0, scope: !1036)
!1050 = !DILocation(line: 122, column: 11, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1036, file: !316, line: 122, column: 11)
!1052 = !DILocation(line: 0, scope: !1051)
!1053 = !DILocation(line: 122, column: 11, scope: !1036)
!1054 = !DILocation(line: 123, column: 9, scope: !1051)
!1055 = !DILocation(line: 126, column: 9, scope: !1051)
!1056 = !DILocation(line: 128, column: 14, scope: !1036)
!1057 = !DILocation(line: 128, column: 7, scope: !1036)
!1058 = !DILocation(line: 133, column: 42, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1033, file: !316, line: 133, column: 7)
!1060 = !DILocation(line: 133, column: 28, scope: !1059)
!1061 = !DILocation(line: 133, column: 50, scope: !1059)
!1062 = !DILocation(line: 133, column: 7, scope: !1033)
!1063 = !DILocation(line: 134, column: 12, scope: !1059)
!1064 = !DILocation(line: 134, column: 5, scope: !1059)
!1065 = !DILocation(line: 135, column: 1, scope: !1033)
!1066 = !DISubprogram(name: "_exit", scope: !1010, file: !1010, line: 624, type: !742, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1067 = distinct !DISubprogram(name: "verror", scope: !331, file: !331, line: 251, type: !1068, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !108, !108, !72, !341}
!1070 = !{!1071, !1072, !1073, !1074}
!1071 = !DILocalVariable(name: "status", arg: 1, scope: !1067, file: !331, line: 251, type: !108)
!1072 = !DILocalVariable(name: "errnum", arg: 2, scope: !1067, file: !331, line: 251, type: !108)
!1073 = !DILocalVariable(name: "message", arg: 3, scope: !1067, file: !331, line: 251, type: !72)
!1074 = !DILocalVariable(name: "args", arg: 4, scope: !1067, file: !331, line: 251, type: !341)
!1075 = !DILocation(line: 0, scope: !1067)
!1076 = !DILocation(line: 261, column: 3, scope: !1067)
!1077 = !DILocation(line: 265, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1067, file: !331, line: 265, column: 7)
!1079 = !DILocation(line: 265, column: 7, scope: !1067)
!1080 = !DILocation(line: 266, column: 5, scope: !1078)
!1081 = !DILocation(line: 272, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !331, line: 268, column: 5)
!1083 = !DILocation(line: 276, column: 3, scope: !1067)
!1084 = !DILocation(line: 282, column: 1, scope: !1067)
!1085 = distinct !DISubprogram(name: "flush_stdout", scope: !331, file: !331, line: 163, type: !378, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1086)
!1086 = !{!1087}
!1087 = !DILocalVariable(name: "stdout_fd", scope: !1085, file: !331, line: 166, type: !108)
!1088 = !DILocation(line: 0, scope: !1085)
!1089 = !DILocalVariable(name: "fd", arg: 1, scope: !1090, file: !331, line: 145, type: !108)
!1090 = distinct !DISubprogram(name: "is_open", scope: !331, file: !331, line: 145, type: !1091, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1093)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!108, !108}
!1093 = !{!1089}
!1094 = !DILocation(line: 0, scope: !1090, inlinedAt: !1095)
!1095 = distinct !DILocation(line: 182, column: 25, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1085, file: !331, line: 182, column: 7)
!1097 = !DILocation(line: 157, column: 15, scope: !1090, inlinedAt: !1095)
!1098 = !DILocation(line: 157, column: 12, scope: !1090, inlinedAt: !1095)
!1099 = !DILocation(line: 182, column: 7, scope: !1085)
!1100 = !DILocation(line: 184, column: 5, scope: !1096)
!1101 = !DILocation(line: 185, column: 1, scope: !1085)
!1102 = distinct !DISubprogram(name: "error_tail", scope: !331, file: !331, line: 219, type: !1068, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1103)
!1103 = !{!1104, !1105, !1106, !1107}
!1104 = !DILocalVariable(name: "status", arg: 1, scope: !1102, file: !331, line: 219, type: !108)
!1105 = !DILocalVariable(name: "errnum", arg: 2, scope: !1102, file: !331, line: 219, type: !108)
!1106 = !DILocalVariable(name: "message", arg: 3, scope: !1102, file: !331, line: 219, type: !72)
!1107 = !DILocalVariable(name: "args", arg: 4, scope: !1102, file: !331, line: 219, type: !341)
!1108 = !DILocation(line: 0, scope: !1102)
!1109 = !DILocation(line: 229, column: 13, scope: !1102)
!1110 = !DILocalVariable(name: "__stream", arg: 1, scope: !1111, file: !799, line: 132, type: !1114)
!1111 = distinct !DISubprogram(name: "vfprintf", scope: !799, file: !799, line: 132, type: !1112, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1149)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!108, !1114, !803, !341}
!1114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1117, file: !251, line: 51, baseType: !108, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1117, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1117, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1117, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1117, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1117, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1117, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1117, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1117, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1117, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1117, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1117, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1117, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1117, file: !251, line: 70, baseType: !1133, size: 64, offset: 832)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1117, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1117, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1117, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1117, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1117, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1117, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1117, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1117, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1117, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1117, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1117, file: !251, line: 93, baseType: !1133, size: 64, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1117, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1117, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1117, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1117, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!1149 = !{!1110, !1150, !1151}
!1150 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1111, file: !799, line: 133, type: !803)
!1151 = !DILocalVariable(name: "__ap", arg: 3, scope: !1111, file: !799, line: 133, type: !341)
!1152 = !DILocation(line: 0, scope: !1111, inlinedAt: !1153)
!1153 = distinct !DILocation(line: 229, column: 3, scope: !1102)
!1154 = !DILocation(line: 135, column: 10, scope: !1111, inlinedAt: !1153)
!1155 = !DILocation(line: 232, column: 3, scope: !1102)
!1156 = !DILocation(line: 233, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1102, file: !331, line: 233, column: 7)
!1158 = !DILocation(line: 233, column: 7, scope: !1102)
!1159 = !DILocalVariable(name: "errnum", arg: 1, scope: !1160, file: !331, line: 188, type: !108)
!1160 = distinct !DISubprogram(name: "print_errno_message", scope: !331, file: !331, line: 188, type: !742, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1161)
!1161 = !{!1159, !1162, !1163}
!1162 = !DILocalVariable(name: "s", scope: !1160, file: !331, line: 190, type: !72)
!1163 = !DILocalVariable(name: "errbuf", scope: !1160, file: !331, line: 193, type: !1164)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 1024)
!1167 = !DILocation(line: 0, scope: !1160, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 234, column: 5, scope: !1157)
!1169 = !DILocation(line: 193, column: 3, scope: !1160, inlinedAt: !1168)
!1170 = !DILocation(line: 193, column: 8, scope: !1160, inlinedAt: !1168)
!1171 = !DILocation(line: 195, column: 7, scope: !1160, inlinedAt: !1168)
!1172 = !DILocation(line: 207, column: 9, scope: !1173, inlinedAt: !1168)
!1173 = distinct !DILexicalBlock(scope: !1160, file: !331, line: 207, column: 7)
!1174 = !DILocation(line: 207, column: 7, scope: !1160, inlinedAt: !1168)
!1175 = !DILocation(line: 208, column: 9, scope: !1173, inlinedAt: !1168)
!1176 = !DILocation(line: 208, column: 5, scope: !1173, inlinedAt: !1168)
!1177 = !DILocation(line: 214, column: 3, scope: !1160, inlinedAt: !1168)
!1178 = !DILocation(line: 216, column: 1, scope: !1160, inlinedAt: !1168)
!1179 = !DILocation(line: 234, column: 5, scope: !1157)
!1180 = !DILocation(line: 238, column: 3, scope: !1102)
!1181 = !DILocalVariable(name: "__c", arg: 1, scope: !1182, file: !1183, line: 101, type: !108)
!1182 = distinct !DISubprogram(name: "putc_unlocked", scope: !1183, file: !1183, line: 101, type: !1184, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1186)
!1183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!108, !108, !1115}
!1186 = !{!1181, !1187}
!1187 = !DILocalVariable(name: "__stream", arg: 2, scope: !1182, file: !1183, line: 101, type: !1115)
!1188 = !DILocation(line: 0, scope: !1182, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 238, column: 3, scope: !1102)
!1190 = !DILocation(line: 103, column: 10, scope: !1182, inlinedAt: !1189)
!1191 = !{!1192, !753, i64 40}
!1192 = !{!"_IO_FILE", !814, i64 0, !753, i64 8, !753, i64 16, !753, i64 24, !753, i64 32, !753, i64 40, !753, i64 48, !753, i64 56, !753, i64 64, !753, i64 72, !753, i64 80, !753, i64 88, !753, i64 96, !753, i64 104, !814, i64 112, !814, i64 116, !1193, i64 120, !855, i64 128, !754, i64 130, !754, i64 131, !753, i64 136, !1193, i64 144, !753, i64 152, !753, i64 160, !753, i64 168, !753, i64 176, !1193, i64 184, !814, i64 192, !754, i64 196}
!1193 = !{!"long", !754, i64 0}
!1194 = !{!1192, !753, i64 48}
!1195 = !{!"branch_weights", i32 2000, i32 1}
!1196 = !DILocation(line: 240, column: 3, scope: !1102)
!1197 = !DILocation(line: 241, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1102, file: !331, line: 241, column: 7)
!1199 = !DILocation(line: 241, column: 7, scope: !1102)
!1200 = !DILocation(line: 242, column: 5, scope: !1198)
!1201 = !DILocation(line: 243, column: 1, scope: !1102)
!1202 = !DISubprogram(name: "__vfprintf_chk", scope: !799, file: !799, line: 96, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!108, !1114, !108, !803, !341}
!1205 = !DISubprogram(name: "strerror_r", scope: !934, file: !934, line: 444, type: !1206, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!255, !108, !255, !110}
!1208 = !DISubprogram(name: "__overflow", scope: !808, file: !808, line: 886, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!108, !1115, !108}
!1211 = !DISubprogram(name: "fflush_unlocked", scope: !808, file: !808, line: 239, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!108, !1115}
!1214 = !DISubprogram(name: "fcntl", scope: !1215, file: !1215, line: 149, type: !1216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1215 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!108, !108, !108, null}
!1218 = distinct !DISubprogram(name: "error", scope: !331, file: !331, line: 285, type: !1219, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1221)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{null, !108, !108, !72, null}
!1221 = !{!1222, !1223, !1224, !1225}
!1222 = !DILocalVariable(name: "status", arg: 1, scope: !1218, file: !331, line: 285, type: !108)
!1223 = !DILocalVariable(name: "errnum", arg: 2, scope: !1218, file: !331, line: 285, type: !108)
!1224 = !DILocalVariable(name: "message", arg: 3, scope: !1218, file: !331, line: 285, type: !72)
!1225 = !DILocalVariable(name: "ap", scope: !1218, file: !331, line: 287, type: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !808, line: 52, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1228, line: 14, baseType: !1229)
!1228 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !345, baseType: !1230)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 192, elements: !35)
!1231 = !DILocation(line: 0, scope: !1218)
!1232 = !DILocation(line: 287, column: 3, scope: !1218)
!1233 = !DILocation(line: 287, column: 11, scope: !1218)
!1234 = !DILocation(line: 288, column: 3, scope: !1218)
!1235 = !DILocation(line: 289, column: 3, scope: !1218)
!1236 = !DILocation(line: 290, column: 3, scope: !1218)
!1237 = !DILocation(line: 291, column: 1, scope: !1218)
!1238 = !DILocation(line: 0, scope: !338)
!1239 = !DILocation(line: 302, column: 7, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !338, file: !331, line: 302, column: 7)
!1241 = !DILocation(line: 302, column: 7, scope: !338)
!1242 = !DILocation(line: 307, column: 11, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !331, line: 307, column: 11)
!1244 = distinct !DILexicalBlock(scope: !1240, file: !331, line: 303, column: 5)
!1245 = !DILocation(line: 307, column: 27, scope: !1243)
!1246 = !DILocation(line: 308, column: 11, scope: !1243)
!1247 = !DILocation(line: 308, column: 28, scope: !1243)
!1248 = !DILocation(line: 308, column: 25, scope: !1243)
!1249 = !DILocation(line: 309, column: 15, scope: !1243)
!1250 = !DILocation(line: 309, column: 33, scope: !1243)
!1251 = !DILocation(line: 310, column: 19, scope: !1243)
!1252 = !DILocation(line: 311, column: 22, scope: !1243)
!1253 = !DILocation(line: 311, column: 56, scope: !1243)
!1254 = !DILocation(line: 307, column: 11, scope: !1244)
!1255 = !DILocation(line: 316, column: 21, scope: !1244)
!1256 = !DILocation(line: 317, column: 23, scope: !1244)
!1257 = !DILocation(line: 318, column: 5, scope: !1244)
!1258 = !DILocation(line: 327, column: 3, scope: !338)
!1259 = !DILocation(line: 331, column: 7, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !338, file: !331, line: 331, column: 7)
!1261 = !DILocation(line: 331, column: 7, scope: !338)
!1262 = !DILocation(line: 332, column: 5, scope: !1260)
!1263 = !DILocation(line: 338, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1260, file: !331, line: 334, column: 5)
!1265 = !DILocation(line: 346, column: 3, scope: !338)
!1266 = !DILocation(line: 350, column: 3, scope: !338)
!1267 = !DILocation(line: 356, column: 1, scope: !338)
!1268 = distinct !DISubprogram(name: "error_at_line", scope: !331, file: !331, line: 359, type: !1269, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1271)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null, !108, !108, !72, !78, !72, null}
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277}
!1272 = !DILocalVariable(name: "status", arg: 1, scope: !1268, file: !331, line: 359, type: !108)
!1273 = !DILocalVariable(name: "errnum", arg: 2, scope: !1268, file: !331, line: 359, type: !108)
!1274 = !DILocalVariable(name: "file_name", arg: 3, scope: !1268, file: !331, line: 359, type: !72)
!1275 = !DILocalVariable(name: "line_number", arg: 4, scope: !1268, file: !331, line: 360, type: !78)
!1276 = !DILocalVariable(name: "message", arg: 5, scope: !1268, file: !331, line: 360, type: !72)
!1277 = !DILocalVariable(name: "ap", scope: !1268, file: !331, line: 362, type: !1226)
!1278 = !DILocation(line: 0, scope: !1268)
!1279 = !DILocation(line: 362, column: 3, scope: !1268)
!1280 = !DILocation(line: 362, column: 11, scope: !1268)
!1281 = !DILocation(line: 363, column: 3, scope: !1268)
!1282 = !DILocation(line: 364, column: 3, scope: !1268)
!1283 = !DILocation(line: 366, column: 3, scope: !1268)
!1284 = !DILocation(line: 367, column: 1, scope: !1268)
!1285 = distinct !DISubprogram(name: "getprogname", scope: !671, file: !671, line: 54, type: !1286, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !670, retainedNodes: !797)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!72}
!1288 = !DILocation(line: 58, column: 10, scope: !1285)
!1289 = !DILocation(line: 58, column: 3, scope: !1285)
!1290 = distinct !DISubprogram(name: "parse_long_options", scope: !382, file: !382, line: 45, type: !1291, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !1294)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{null, !108, !967, !72, !72, !72, !1293, null}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1305}
!1295 = !DILocalVariable(name: "argc", arg: 1, scope: !1290, file: !382, line: 45, type: !108)
!1296 = !DILocalVariable(name: "argv", arg: 2, scope: !1290, file: !382, line: 46, type: !967)
!1297 = !DILocalVariable(name: "command_name", arg: 3, scope: !1290, file: !382, line: 47, type: !72)
!1298 = !DILocalVariable(name: "package", arg: 4, scope: !1290, file: !382, line: 48, type: !72)
!1299 = !DILocalVariable(name: "version", arg: 5, scope: !1290, file: !382, line: 49, type: !72)
!1300 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1290, file: !382, line: 50, type: !1293)
!1301 = !DILocalVariable(name: "saved_opterr", scope: !1290, file: !382, line: 53, type: !108)
!1302 = !DILocalVariable(name: "c", scope: !1303, file: !382, line: 60, type: !108)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !382, line: 59, column: 5)
!1304 = distinct !DILexicalBlock(scope: !1290, file: !382, line: 58, column: 7)
!1305 = !DILocalVariable(name: "authors", scope: !1306, file: !382, line: 71, type: !1310)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !382, line: 70, column: 15)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !382, line: 64, column: 13)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !382, line: 62, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1303, file: !382, line: 61, column: 11)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !808, line: 52, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1228, line: 14, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1313, baseType: !1314)
!1313 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 192, elements: !35)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1315, file: !1313, line: 71, baseType: !78, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1315, file: !1313, line: 71, baseType: !78, size: 32, offset: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1315, file: !1313, line: 71, baseType: !107, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1315, file: !1313, line: 71, baseType: !107, size: 64, offset: 128)
!1321 = !DILocation(line: 0, scope: !1290)
!1322 = !DILocation(line: 53, column: 22, scope: !1290)
!1323 = !DILocation(line: 56, column: 10, scope: !1290)
!1324 = !DILocation(line: 58, column: 12, scope: !1304)
!1325 = !DILocation(line: 58, column: 7, scope: !1290)
!1326 = !DILocation(line: 60, column: 15, scope: !1303)
!1327 = !DILocation(line: 0, scope: !1303)
!1328 = !DILocation(line: 61, column: 11, scope: !1303)
!1329 = !DILocation(line: 66, column: 15, scope: !1307)
!1330 = !DILocation(line: 67, column: 15, scope: !1307)
!1331 = !DILocation(line: 71, column: 17, scope: !1306)
!1332 = !DILocation(line: 71, column: 25, scope: !1306)
!1333 = !DILocation(line: 72, column: 17, scope: !1306)
!1334 = !DILocation(line: 73, column: 33, scope: !1306)
!1335 = !DILocation(line: 73, column: 17, scope: !1306)
!1336 = !DILocation(line: 74, column: 17, scope: !1306)
!1337 = !DILocation(line: 85, column: 10, scope: !1290)
!1338 = !DILocation(line: 89, column: 10, scope: !1290)
!1339 = !DILocation(line: 90, column: 1, scope: !1290)
!1340 = !DISubprogram(name: "getopt_long", scope: !396, file: !396, line: 66, type: !1341, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{!108, !108, !1343, !72, !1345, !401}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1346 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !382, file: !382, line: 98, type: !1347, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !1349)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !108, !967, !72, !72, !72, !234, !1293, null}
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1350 = !DILocalVariable(name: "argc", arg: 1, scope: !1346, file: !382, line: 98, type: !108)
!1351 = !DILocalVariable(name: "argv", arg: 2, scope: !1346, file: !382, line: 99, type: !967)
!1352 = !DILocalVariable(name: "command_name", arg: 3, scope: !1346, file: !382, line: 100, type: !72)
!1353 = !DILocalVariable(name: "package", arg: 4, scope: !1346, file: !382, line: 101, type: !72)
!1354 = !DILocalVariable(name: "version", arg: 5, scope: !1346, file: !382, line: 102, type: !72)
!1355 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1346, file: !382, line: 103, type: !234)
!1356 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1346, file: !382, line: 104, type: !1293)
!1357 = !DILocalVariable(name: "saved_opterr", scope: !1346, file: !382, line: 107, type: !108)
!1358 = !DILocalVariable(name: "optstring", scope: !1346, file: !382, line: 112, type: !72)
!1359 = !DILocalVariable(name: "c", scope: !1346, file: !382, line: 114, type: !108)
!1360 = !DILocalVariable(name: "authors", scope: !1361, file: !382, line: 125, type: !1310)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !382, line: 124, column: 11)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !382, line: 118, column: 9)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !382, line: 116, column: 5)
!1364 = distinct !DILexicalBlock(scope: !1346, file: !382, line: 115, column: 7)
!1365 = !DILocation(line: 0, scope: !1346)
!1366 = !DILocation(line: 107, column: 22, scope: !1346)
!1367 = !DILocation(line: 110, column: 10, scope: !1346)
!1368 = !DILocation(line: 112, column: 27, scope: !1346)
!1369 = !DILocation(line: 114, column: 11, scope: !1346)
!1370 = !DILocation(line: 115, column: 7, scope: !1346)
!1371 = !DILocation(line: 125, column: 13, scope: !1361)
!1372 = !DILocation(line: 125, column: 21, scope: !1361)
!1373 = !DILocation(line: 126, column: 13, scope: !1361)
!1374 = !DILocation(line: 127, column: 29, scope: !1361)
!1375 = !DILocation(line: 127, column: 13, scope: !1361)
!1376 = !DILocation(line: 128, column: 13, scope: !1361)
!1377 = !DILocation(line: 132, column: 26, scope: !1362)
!1378 = !DILocation(line: 133, column: 11, scope: !1362)
!1379 = !DILocation(line: 0, scope: !1362)
!1380 = !DILocation(line: 138, column: 10, scope: !1346)
!1381 = !DILocation(line: 139, column: 1, scope: !1346)
!1382 = distinct !DISubprogram(name: "set_program_name", scope: !406, file: !406, line: 37, type: !763, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1383)
!1383 = !{!1384, !1385, !1386}
!1384 = !DILocalVariable(name: "argv0", arg: 1, scope: !1382, file: !406, line: 37, type: !72)
!1385 = !DILocalVariable(name: "slash", scope: !1382, file: !406, line: 44, type: !72)
!1386 = !DILocalVariable(name: "base", scope: !1382, file: !406, line: 45, type: !72)
!1387 = !DILocation(line: 0, scope: !1382)
!1388 = !DILocation(line: 44, column: 23, scope: !1382)
!1389 = !DILocation(line: 45, column: 22, scope: !1382)
!1390 = !DILocation(line: 46, column: 17, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1382, file: !406, line: 46, column: 7)
!1392 = !DILocation(line: 46, column: 9, scope: !1391)
!1393 = !DILocation(line: 46, column: 25, scope: !1391)
!1394 = !DILocation(line: 46, column: 40, scope: !1391)
!1395 = !DILocalVariable(name: "__s1", arg: 1, scope: !1396, file: !826, line: 974, type: !962)
!1396 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1397, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!234, !962, !962, !110}
!1399 = !{!1395, !1400, !1401}
!1400 = !DILocalVariable(name: "__s2", arg: 2, scope: !1396, file: !826, line: 974, type: !962)
!1401 = !DILocalVariable(name: "__n", arg: 3, scope: !1396, file: !826, line: 974, type: !110)
!1402 = !DILocation(line: 0, scope: !1396, inlinedAt: !1403)
!1403 = distinct !DILocation(line: 46, column: 28, scope: !1391)
!1404 = !DILocation(line: 976, column: 11, scope: !1396, inlinedAt: !1403)
!1405 = !DILocation(line: 976, column: 10, scope: !1396, inlinedAt: !1403)
!1406 = !DILocation(line: 46, column: 7, scope: !1382)
!1407 = !DILocation(line: 49, column: 11, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1409, file: !406, line: 49, column: 11)
!1409 = distinct !DILexicalBlock(scope: !1391, file: !406, line: 47, column: 5)
!1410 = !DILocation(line: 49, column: 36, scope: !1408)
!1411 = !DILocation(line: 49, column: 11, scope: !1409)
!1412 = !DILocation(line: 65, column: 16, scope: !1382)
!1413 = !DILocation(line: 71, column: 27, scope: !1382)
!1414 = !DILocation(line: 74, column: 33, scope: !1382)
!1415 = !DILocation(line: 76, column: 1, scope: !1382)
!1416 = !DISubprogram(name: "strrchr", scope: !934, file: !934, line: 273, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1417 = !DILocation(line: 0, scope: !415)
!1418 = !DILocation(line: 40, column: 29, scope: !415)
!1419 = !DILocation(line: 41, column: 19, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !415, file: !416, line: 41, column: 7)
!1421 = !DILocation(line: 41, column: 7, scope: !415)
!1422 = !DILocation(line: 47, column: 3, scope: !415)
!1423 = !DILocation(line: 48, column: 3, scope: !415)
!1424 = !DILocation(line: 48, column: 13, scope: !415)
!1425 = !DILocalVariable(name: "ps", arg: 1, scope: !1426, file: !1427, line: 1135, type: !1430)
!1426 = distinct !DISubprogram(name: "mbszero", scope: !1427, file: !1427, line: 1135, type: !1428, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1431)
!1427 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1428 = !DISubroutineType(types: !1429)
!1429 = !{null, !1430}
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1431 = !{!1425}
!1432 = !DILocation(line: 0, scope: !1426, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 48, column: 18, scope: !415)
!1434 = !DILocalVariable(name: "__dest", arg: 1, scope: !1435, file: !1436, line: 57, type: !107)
!1435 = distinct !DISubprogram(name: "memset", scope: !1436, file: !1436, line: 57, type: !1437, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1439)
!1436 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!107, !107, !108, !110}
!1439 = !{!1434, !1440, !1441}
!1440 = !DILocalVariable(name: "__ch", arg: 2, scope: !1435, file: !1436, line: 57, type: !108)
!1441 = !DILocalVariable(name: "__len", arg: 3, scope: !1435, file: !1436, line: 57, type: !110)
!1442 = !DILocation(line: 0, scope: !1435, inlinedAt: !1443)
!1443 = distinct !DILocation(line: 1137, column: 3, scope: !1426, inlinedAt: !1433)
!1444 = !DILocation(line: 59, column: 10, scope: !1435, inlinedAt: !1443)
!1445 = !DILocation(line: 49, column: 7, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !415, file: !416, line: 49, column: 7)
!1447 = !DILocation(line: 49, column: 39, scope: !1446)
!1448 = !DILocation(line: 49, column: 44, scope: !1446)
!1449 = !DILocation(line: 54, column: 1, scope: !415)
!1450 = !DISubprogram(name: "mbrtoc32", scope: !427, file: !427, line: 57, type: !1451, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!110, !1453, !803, !110, !1455}
!1453 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1454)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1430)
!1456 = distinct !DISubprogram(name: "clone_quoting_options", scope: !446, file: !446, line: 113, type: !1457, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1460)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1459, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1460 = !{!1461, !1462, !1463}
!1461 = !DILocalVariable(name: "o", arg: 1, scope: !1456, file: !446, line: 113, type: !1459)
!1462 = !DILocalVariable(name: "saved_errno", scope: !1456, file: !446, line: 115, type: !108)
!1463 = !DILocalVariable(name: "p", scope: !1456, file: !446, line: 116, type: !1459)
!1464 = !DILocation(line: 0, scope: !1456)
!1465 = !DILocation(line: 115, column: 21, scope: !1456)
!1466 = !DILocation(line: 116, column: 40, scope: !1456)
!1467 = !DILocation(line: 116, column: 31, scope: !1456)
!1468 = !DILocation(line: 118, column: 9, scope: !1456)
!1469 = !DILocation(line: 119, column: 3, scope: !1456)
!1470 = distinct !DISubprogram(name: "get_quoting_style", scope: !446, file: !446, line: 124, type: !1471, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1475)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!76, !1473}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!1475 = !{!1476}
!1476 = !DILocalVariable(name: "o", arg: 1, scope: !1470, file: !446, line: 124, type: !1473)
!1477 = !DILocation(line: 0, scope: !1470)
!1478 = !DILocation(line: 126, column: 11, scope: !1470)
!1479 = !DILocation(line: 126, column: 46, scope: !1470)
!1480 = !{!1481, !754, i64 0}
!1481 = !{!"quoting_options", !754, i64 0, !814, i64 4, !754, i64 8, !753, i64 40, !753, i64 48}
!1482 = !DILocation(line: 126, column: 3, scope: !1470)
!1483 = distinct !DISubprogram(name: "set_quoting_style", scope: !446, file: !446, line: 132, type: !1484, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !1459, !76}
!1486 = !{!1487, !1488}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1483, file: !446, line: 132, type: !1459)
!1488 = !DILocalVariable(name: "s", arg: 2, scope: !1483, file: !446, line: 132, type: !76)
!1489 = !DILocation(line: 0, scope: !1483)
!1490 = !DILocation(line: 134, column: 4, scope: !1483)
!1491 = !DILocation(line: 134, column: 45, scope: !1483)
!1492 = !DILocation(line: 135, column: 1, scope: !1483)
!1493 = distinct !DISubprogram(name: "set_char_quoting", scope: !446, file: !446, line: 143, type: !1494, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1496)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!108, !1459, !4, !108}
!1496 = !{!1497, !1498, !1499, !1500, !1501, !1503, !1504}
!1497 = !DILocalVariable(name: "o", arg: 1, scope: !1493, file: !446, line: 143, type: !1459)
!1498 = !DILocalVariable(name: "c", arg: 2, scope: !1493, file: !446, line: 143, type: !4)
!1499 = !DILocalVariable(name: "i", arg: 3, scope: !1493, file: !446, line: 143, type: !108)
!1500 = !DILocalVariable(name: "uc", scope: !1493, file: !446, line: 145, type: !113)
!1501 = !DILocalVariable(name: "p", scope: !1493, file: !446, line: 146, type: !1502)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1503 = !DILocalVariable(name: "shift", scope: !1493, file: !446, line: 148, type: !108)
!1504 = !DILocalVariable(name: "r", scope: !1493, file: !446, line: 149, type: !78)
!1505 = !DILocation(line: 0, scope: !1493)
!1506 = !DILocation(line: 147, column: 6, scope: !1493)
!1507 = !DILocation(line: 147, column: 41, scope: !1493)
!1508 = !DILocation(line: 147, column: 62, scope: !1493)
!1509 = !DILocation(line: 147, column: 57, scope: !1493)
!1510 = !DILocation(line: 148, column: 15, scope: !1493)
!1511 = !DILocation(line: 149, column: 21, scope: !1493)
!1512 = !DILocation(line: 149, column: 24, scope: !1493)
!1513 = !DILocation(line: 149, column: 34, scope: !1493)
!1514 = !DILocation(line: 150, column: 19, scope: !1493)
!1515 = !DILocation(line: 150, column: 24, scope: !1493)
!1516 = !DILocation(line: 150, column: 6, scope: !1493)
!1517 = !DILocation(line: 151, column: 3, scope: !1493)
!1518 = distinct !DISubprogram(name: "set_quoting_flags", scope: !446, file: !446, line: 159, type: !1519, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1521)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!108, !1459, !108}
!1521 = !{!1522, !1523, !1524}
!1522 = !DILocalVariable(name: "o", arg: 1, scope: !1518, file: !446, line: 159, type: !1459)
!1523 = !DILocalVariable(name: "i", arg: 2, scope: !1518, file: !446, line: 159, type: !108)
!1524 = !DILocalVariable(name: "r", scope: !1518, file: !446, line: 163, type: !108)
!1525 = !DILocation(line: 0, scope: !1518)
!1526 = !DILocation(line: 161, column: 8, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !446, line: 161, column: 7)
!1528 = !DILocation(line: 161, column: 7, scope: !1518)
!1529 = !DILocation(line: 163, column: 14, scope: !1518)
!1530 = !{!1481, !814, i64 4}
!1531 = !DILocation(line: 164, column: 12, scope: !1518)
!1532 = !DILocation(line: 165, column: 3, scope: !1518)
!1533 = distinct !DISubprogram(name: "set_custom_quoting", scope: !446, file: !446, line: 169, type: !1534, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1536)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{null, !1459, !72, !72}
!1536 = !{!1537, !1538, !1539}
!1537 = !DILocalVariable(name: "o", arg: 1, scope: !1533, file: !446, line: 169, type: !1459)
!1538 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1533, file: !446, line: 170, type: !72)
!1539 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1533, file: !446, line: 170, type: !72)
!1540 = !DILocation(line: 0, scope: !1533)
!1541 = !DILocation(line: 172, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1533, file: !446, line: 172, column: 7)
!1543 = !DILocation(line: 172, column: 7, scope: !1533)
!1544 = !DILocation(line: 174, column: 12, scope: !1533)
!1545 = !DILocation(line: 175, column: 8, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1533, file: !446, line: 175, column: 7)
!1547 = !DILocation(line: 175, column: 19, scope: !1546)
!1548 = !DILocation(line: 176, column: 5, scope: !1546)
!1549 = !DILocation(line: 177, column: 6, scope: !1533)
!1550 = !DILocation(line: 177, column: 17, scope: !1533)
!1551 = !{!1481, !753, i64 40}
!1552 = !DILocation(line: 178, column: 6, scope: !1533)
!1553 = !DILocation(line: 178, column: 18, scope: !1533)
!1554 = !{!1481, !753, i64 48}
!1555 = !DILocation(line: 179, column: 1, scope: !1533)
!1556 = !DISubprogram(name: "abort", scope: !938, file: !938, line: 598, type: !378, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !797)
!1557 = distinct !DISubprogram(name: "quotearg_buffer", scope: !446, file: !446, line: 774, type: !1558, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1560)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!110, !255, !110, !72, !110, !1473}
!1560 = !{!1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1561 = !DILocalVariable(name: "buffer", arg: 1, scope: !1557, file: !446, line: 774, type: !255)
!1562 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1557, file: !446, line: 774, type: !110)
!1563 = !DILocalVariable(name: "arg", arg: 3, scope: !1557, file: !446, line: 775, type: !72)
!1564 = !DILocalVariable(name: "argsize", arg: 4, scope: !1557, file: !446, line: 775, type: !110)
!1565 = !DILocalVariable(name: "o", arg: 5, scope: !1557, file: !446, line: 776, type: !1473)
!1566 = !DILocalVariable(name: "p", scope: !1557, file: !446, line: 778, type: !1473)
!1567 = !DILocalVariable(name: "saved_errno", scope: !1557, file: !446, line: 779, type: !108)
!1568 = !DILocalVariable(name: "r", scope: !1557, file: !446, line: 780, type: !110)
!1569 = !DILocation(line: 0, scope: !1557)
!1570 = !DILocation(line: 778, column: 37, scope: !1557)
!1571 = !DILocation(line: 779, column: 21, scope: !1557)
!1572 = !DILocation(line: 781, column: 43, scope: !1557)
!1573 = !DILocation(line: 781, column: 53, scope: !1557)
!1574 = !DILocation(line: 781, column: 63, scope: !1557)
!1575 = !DILocation(line: 782, column: 43, scope: !1557)
!1576 = !DILocation(line: 782, column: 58, scope: !1557)
!1577 = !DILocation(line: 780, column: 14, scope: !1557)
!1578 = !DILocation(line: 783, column: 9, scope: !1557)
!1579 = !DILocation(line: 784, column: 3, scope: !1557)
!1580 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !446, file: !446, line: 251, type: !1581, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1585)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!110, !255, !110, !72, !110, !76, !108, !1583, !72, !72}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1610, !1612, !1615, !1616, !1617, !1618, !1621, !1622, !1625, !1629, !1630, !1638, !1641, !1642, !1644, !1645, !1646, !1647}
!1586 = !DILocalVariable(name: "buffer", arg: 1, scope: !1580, file: !446, line: 251, type: !255)
!1587 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1580, file: !446, line: 251, type: !110)
!1588 = !DILocalVariable(name: "arg", arg: 3, scope: !1580, file: !446, line: 252, type: !72)
!1589 = !DILocalVariable(name: "argsize", arg: 4, scope: !1580, file: !446, line: 252, type: !110)
!1590 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1580, file: !446, line: 253, type: !76)
!1591 = !DILocalVariable(name: "flags", arg: 6, scope: !1580, file: !446, line: 253, type: !108)
!1592 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1580, file: !446, line: 254, type: !1583)
!1593 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1580, file: !446, line: 255, type: !72)
!1594 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1580, file: !446, line: 256, type: !72)
!1595 = !DILocalVariable(name: "unibyte_locale", scope: !1580, file: !446, line: 258, type: !234)
!1596 = !DILocalVariable(name: "len", scope: !1580, file: !446, line: 260, type: !110)
!1597 = !DILocalVariable(name: "orig_buffersize", scope: !1580, file: !446, line: 261, type: !110)
!1598 = !DILocalVariable(name: "quote_string", scope: !1580, file: !446, line: 262, type: !72)
!1599 = !DILocalVariable(name: "quote_string_len", scope: !1580, file: !446, line: 263, type: !110)
!1600 = !DILocalVariable(name: "backslash_escapes", scope: !1580, file: !446, line: 264, type: !234)
!1601 = !DILocalVariable(name: "elide_outer_quotes", scope: !1580, file: !446, line: 265, type: !234)
!1602 = !DILocalVariable(name: "encountered_single_quote", scope: !1580, file: !446, line: 266, type: !234)
!1603 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1580, file: !446, line: 267, type: !234)
!1604 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1580, file: !446, line: 309, type: !234)
!1605 = !DILocalVariable(name: "lq", scope: !1606, file: !446, line: 361, type: !72)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !446, line: 361, column: 11)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !446, line: 360, column: 13)
!1608 = distinct !DILexicalBlock(scope: !1609, file: !446, line: 333, column: 7)
!1609 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 312, column: 5)
!1610 = !DILocalVariable(name: "i", scope: !1611, file: !446, line: 395, type: !110)
!1611 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 395, column: 3)
!1612 = !DILocalVariable(name: "is_right_quote", scope: !1613, file: !446, line: 397, type: !234)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !446, line: 396, column: 5)
!1614 = distinct !DILexicalBlock(scope: !1611, file: !446, line: 395, column: 3)
!1615 = !DILocalVariable(name: "escaping", scope: !1613, file: !446, line: 398, type: !234)
!1616 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1613, file: !446, line: 399, type: !234)
!1617 = !DILocalVariable(name: "c", scope: !1613, file: !446, line: 417, type: !113)
!1618 = !DILocalVariable(name: "m", scope: !1619, file: !446, line: 598, type: !110)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 596, column: 11)
!1620 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 419, column: 9)
!1621 = !DILocalVariable(name: "printable", scope: !1619, file: !446, line: 600, type: !234)
!1622 = !DILocalVariable(name: "mbs", scope: !1623, file: !446, line: 609, type: !519)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 608, column: 15)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !446, line: 602, column: 17)
!1625 = !DILocalVariable(name: "w", scope: !1626, file: !446, line: 618, type: !426)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !446, line: 617, column: 19)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !446, line: 616, column: 17)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 616, column: 17)
!1629 = !DILocalVariable(name: "bytes", scope: !1626, file: !446, line: 619, type: !110)
!1630 = !DILocalVariable(name: "j", scope: !1631, file: !446, line: 648, type: !110)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !446, line: 648, column: 29)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !446, line: 647, column: 27)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !446, line: 645, column: 29)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !446, line: 636, column: 23)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !446, line: 628, column: 30)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !446, line: 623, column: 30)
!1637 = distinct !DILexicalBlock(scope: !1626, file: !446, line: 621, column: 25)
!1638 = !DILocalVariable(name: "ilim", scope: !1639, file: !446, line: 674, type: !110)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !446, line: 671, column: 15)
!1640 = distinct !DILexicalBlock(scope: !1619, file: !446, line: 670, column: 17)
!1641 = !DILabel(scope: !1580, name: "process_input", file: !446, line: 308)
!1642 = !DILabel(scope: !1643, name: "c_and_shell_escape", file: !446, line: 502)
!1643 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 478, column: 9)
!1644 = !DILabel(scope: !1643, name: "c_escape", file: !446, line: 507)
!1645 = !DILabel(scope: !1613, name: "store_escape", file: !446, line: 709)
!1646 = !DILabel(scope: !1613, name: "store_c", file: !446, line: 712)
!1647 = !DILabel(scope: !1580, name: "force_outer_quoting_style", file: !446, line: 753)
!1648 = !DILocation(line: 0, scope: !1580)
!1649 = !DILocation(line: 258, column: 25, scope: !1580)
!1650 = !DILocation(line: 258, column: 36, scope: !1580)
!1651 = !DILocation(line: 265, column: 8, scope: !1580)
!1652 = !DILocation(line: 267, column: 3, scope: !1580)
!1653 = !DILocation(line: 261, column: 10, scope: !1580)
!1654 = !DILocation(line: 262, column: 15, scope: !1580)
!1655 = !DILocation(line: 263, column: 10, scope: !1580)
!1656 = !DILocation(line: 264, column: 8, scope: !1580)
!1657 = !DILocation(line: 266, column: 8, scope: !1580)
!1658 = !DILocation(line: 267, column: 8, scope: !1580)
!1659 = !DILocation(line: 308, column: 2, scope: !1580)
!1660 = !DILocation(line: 311, column: 3, scope: !1580)
!1661 = !DILocation(line: 318, column: 11, scope: !1609)
!1662 = !DILocation(line: 318, column: 12, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1609, file: !446, line: 318, column: 11)
!1664 = !DILocation(line: 319, column: 9, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !446, line: 319, column: 9)
!1666 = distinct !DILexicalBlock(scope: !1663, file: !446, line: 319, column: 9)
!1667 = !DILocation(line: 319, column: 9, scope: !1666)
!1668 = !DILocation(line: 0, scope: !510, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 357, column: 26, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !446, line: 335, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1608, file: !446, line: 334, column: 13)
!1672 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1669)
!1673 = !DILocation(line: 201, column: 19, scope: !1674, inlinedAt: !1669)
!1674 = distinct !DILexicalBlock(scope: !510, file: !446, line: 201, column: 7)
!1675 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1669)
!1676 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1669)
!1677 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1669)
!1678 = !DILocation(line: 230, column: 13, scope: !510, inlinedAt: !1669)
!1679 = !DILocalVariable(name: "ps", arg: 1, scope: !1680, file: !1427, line: 1135, type: !1683)
!1680 = distinct !DISubprogram(name: "mbszero", scope: !1427, file: !1427, line: 1135, type: !1681, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1684)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{null, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1684 = !{!1679}
!1685 = !DILocation(line: 0, scope: !1680, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1669)
!1687 = !DILocalVariable(name: "__dest", arg: 1, scope: !1688, file: !1436, line: 57, type: !107)
!1688 = distinct !DISubprogram(name: "memset", scope: !1436, file: !1436, line: 57, type: !1437, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1689)
!1689 = !{!1687, !1690, !1691}
!1690 = !DILocalVariable(name: "__ch", arg: 2, scope: !1688, file: !1436, line: 57, type: !108)
!1691 = !DILocalVariable(name: "__len", arg: 3, scope: !1688, file: !1436, line: 57, type: !110)
!1692 = !DILocation(line: 0, scope: !1688, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1686)
!1694 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1693)
!1695 = !DILocation(line: 231, column: 7, scope: !1696, inlinedAt: !1669)
!1696 = distinct !DILexicalBlock(scope: !510, file: !446, line: 231, column: 7)
!1697 = !DILocation(line: 231, column: 40, scope: !1696, inlinedAt: !1669)
!1698 = !DILocation(line: 231, column: 45, scope: !1696, inlinedAt: !1669)
!1699 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1669)
!1700 = !DILocation(line: 0, scope: !510, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 358, column: 27, scope: !1670)
!1702 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1701)
!1703 = !DILocation(line: 201, column: 19, scope: !1674, inlinedAt: !1701)
!1704 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1701)
!1705 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1701)
!1706 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1701)
!1707 = !DILocation(line: 230, column: 13, scope: !510, inlinedAt: !1701)
!1708 = !DILocation(line: 0, scope: !1680, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1701)
!1710 = !DILocation(line: 0, scope: !1688, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1709)
!1712 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1711)
!1713 = !DILocation(line: 231, column: 7, scope: !1696, inlinedAt: !1701)
!1714 = !DILocation(line: 231, column: 40, scope: !1696, inlinedAt: !1701)
!1715 = !DILocation(line: 231, column: 45, scope: !1696, inlinedAt: !1701)
!1716 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1701)
!1717 = !DILocation(line: 360, column: 14, scope: !1607)
!1718 = !DILocation(line: 360, column: 13, scope: !1608)
!1719 = !DILocation(line: 0, scope: !1606)
!1720 = !DILocation(line: 361, column: 45, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1606, file: !446, line: 361, column: 11)
!1722 = !DILocation(line: 361, column: 11, scope: !1606)
!1723 = !DILocation(line: 362, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1725, file: !446, line: 362, column: 13)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !446, line: 362, column: 13)
!1726 = !DILocation(line: 362, column: 13, scope: !1725)
!1727 = !DILocation(line: 361, column: 52, scope: !1721)
!1728 = distinct !{!1728, !1722, !1729, !860}
!1729 = !DILocation(line: 362, column: 13, scope: !1606)
!1730 = !DILocation(line: 260, column: 10, scope: !1580)
!1731 = !DILocation(line: 365, column: 28, scope: !1608)
!1732 = !DILocation(line: 367, column: 7, scope: !1609)
!1733 = !DILocation(line: 370, column: 7, scope: !1609)
!1734 = !DILocation(line: 373, column: 7, scope: !1609)
!1735 = !DILocation(line: 376, column: 12, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1609, file: !446, line: 376, column: 11)
!1737 = !DILocation(line: 376, column: 11, scope: !1609)
!1738 = !DILocation(line: 381, column: 12, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1609, file: !446, line: 381, column: 11)
!1740 = !DILocation(line: 381, column: 11, scope: !1609)
!1741 = !DILocation(line: 382, column: 9, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !446, line: 382, column: 9)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !446, line: 382, column: 9)
!1744 = !DILocation(line: 382, column: 9, scope: !1743)
!1745 = !DILocation(line: 389, column: 7, scope: !1609)
!1746 = !DILocation(line: 392, column: 7, scope: !1609)
!1747 = !DILocation(line: 0, scope: !1611)
!1748 = !DILocation(line: 395, column: 8, scope: !1611)
!1749 = !DILocation(line: 309, column: 8, scope: !1580)
!1750 = !DILocation(line: 395, scope: !1611)
!1751 = !DILocation(line: 395, column: 34, scope: !1614)
!1752 = !DILocation(line: 395, column: 26, scope: !1614)
!1753 = !DILocation(line: 395, column: 48, scope: !1614)
!1754 = !DILocation(line: 395, column: 55, scope: !1614)
!1755 = !DILocation(line: 395, column: 3, scope: !1611)
!1756 = !DILocation(line: 395, column: 67, scope: !1614)
!1757 = !DILocation(line: 0, scope: !1613)
!1758 = !DILocation(line: 402, column: 11, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 401, column: 11)
!1760 = !DILocation(line: 404, column: 17, scope: !1759)
!1761 = !DILocation(line: 405, column: 39, scope: !1759)
!1762 = !DILocation(line: 409, column: 32, scope: !1759)
!1763 = !DILocation(line: 405, column: 19, scope: !1759)
!1764 = !DILocation(line: 405, column: 15, scope: !1759)
!1765 = !DILocation(line: 410, column: 11, scope: !1759)
!1766 = !DILocation(line: 410, column: 25, scope: !1759)
!1767 = !DILocalVariable(name: "__s1", arg: 1, scope: !1768, file: !826, line: 974, type: !962)
!1768 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1397, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1769)
!1769 = !{!1767, !1770, !1771}
!1770 = !DILocalVariable(name: "__s2", arg: 2, scope: !1768, file: !826, line: 974, type: !962)
!1771 = !DILocalVariable(name: "__n", arg: 3, scope: !1768, file: !826, line: 974, type: !110)
!1772 = !DILocation(line: 0, scope: !1768, inlinedAt: !1773)
!1773 = distinct !DILocation(line: 410, column: 14, scope: !1759)
!1774 = !DILocation(line: 976, column: 11, scope: !1768, inlinedAt: !1773)
!1775 = !DILocation(line: 976, column: 10, scope: !1768, inlinedAt: !1773)
!1776 = !DILocation(line: 401, column: 11, scope: !1613)
!1777 = !DILocation(line: 417, column: 25, scope: !1613)
!1778 = !DILocation(line: 418, column: 7, scope: !1613)
!1779 = !DILocation(line: 421, column: 15, scope: !1620)
!1780 = !DILocation(line: 423, column: 15, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !446, line: 423, column: 15)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !446, line: 422, column: 13)
!1783 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 421, column: 15)
!1784 = !DILocation(line: 423, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1781, file: !446, line: 423, column: 15)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !446, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !446, line: 423, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1785, file: !446, line: 423, column: 15)
!1790 = !DILocation(line: 423, column: 15, scope: !1788)
!1791 = !DILocation(line: 423, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !446, line: 423, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !446, line: 423, column: 15)
!1794 = !DILocation(line: 423, column: 15, scope: !1793)
!1795 = !DILocation(line: 423, column: 15, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !446, line: 423, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !446, line: 423, column: 15)
!1798 = !DILocation(line: 423, column: 15, scope: !1797)
!1799 = !DILocation(line: 423, column: 15, scope: !1789)
!1800 = !DILocation(line: 423, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !446, line: 423, column: 15)
!1802 = distinct !DILexicalBlock(scope: !1781, file: !446, line: 423, column: 15)
!1803 = !DILocation(line: 423, column: 15, scope: !1802)
!1804 = !DILocation(line: 431, column: 19, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1782, file: !446, line: 430, column: 19)
!1806 = !DILocation(line: 431, column: 24, scope: !1805)
!1807 = !DILocation(line: 431, column: 28, scope: !1805)
!1808 = !DILocation(line: 431, column: 38, scope: !1805)
!1809 = !DILocation(line: 431, column: 48, scope: !1805)
!1810 = !DILocation(line: 431, column: 59, scope: !1805)
!1811 = !DILocation(line: 433, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !446, line: 433, column: 19)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !446, line: 433, column: 19)
!1814 = distinct !DILexicalBlock(scope: !1805, file: !446, line: 432, column: 17)
!1815 = !DILocation(line: 433, column: 19, scope: !1813)
!1816 = !DILocation(line: 434, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !446, line: 434, column: 19)
!1818 = distinct !DILexicalBlock(scope: !1814, file: !446, line: 434, column: 19)
!1819 = !DILocation(line: 434, column: 19, scope: !1818)
!1820 = !DILocation(line: 435, column: 17, scope: !1814)
!1821 = !DILocation(line: 442, column: 20, scope: !1783)
!1822 = !DILocation(line: 447, column: 11, scope: !1620)
!1823 = !DILocation(line: 450, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 448, column: 13)
!1825 = !DILocation(line: 456, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1824, file: !446, line: 455, column: 19)
!1827 = !DILocation(line: 456, column: 24, scope: !1826)
!1828 = !DILocation(line: 456, column: 28, scope: !1826)
!1829 = !DILocation(line: 456, column: 38, scope: !1826)
!1830 = !DILocation(line: 456, column: 47, scope: !1826)
!1831 = !DILocation(line: 456, column: 41, scope: !1826)
!1832 = !DILocation(line: 456, column: 52, scope: !1826)
!1833 = !DILocation(line: 455, column: 19, scope: !1824)
!1834 = !DILocation(line: 457, column: 25, scope: !1826)
!1835 = !DILocation(line: 457, column: 17, scope: !1826)
!1836 = !DILocation(line: 464, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1826, file: !446, line: 458, column: 19)
!1838 = !DILocation(line: 468, column: 21, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !446, line: 468, column: 21)
!1840 = distinct !DILexicalBlock(scope: !1837, file: !446, line: 468, column: 21)
!1841 = !DILocation(line: 468, column: 21, scope: !1840)
!1842 = !DILocation(line: 469, column: 21, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !446, line: 469, column: 21)
!1844 = distinct !DILexicalBlock(scope: !1837, file: !446, line: 469, column: 21)
!1845 = !DILocation(line: 469, column: 21, scope: !1844)
!1846 = !DILocation(line: 470, column: 21, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !446, line: 470, column: 21)
!1848 = distinct !DILexicalBlock(scope: !1837, file: !446, line: 470, column: 21)
!1849 = !DILocation(line: 470, column: 21, scope: !1848)
!1850 = !DILocation(line: 471, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !446, line: 471, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1837, file: !446, line: 471, column: 21)
!1853 = !DILocation(line: 471, column: 21, scope: !1852)
!1854 = !DILocation(line: 472, column: 21, scope: !1837)
!1855 = !DILocation(line: 482, column: 33, scope: !1643)
!1856 = !DILocation(line: 483, column: 33, scope: !1643)
!1857 = !DILocation(line: 485, column: 33, scope: !1643)
!1858 = !DILocation(line: 486, column: 33, scope: !1643)
!1859 = !DILocation(line: 487, column: 33, scope: !1643)
!1860 = !DILocation(line: 490, column: 17, scope: !1643)
!1861 = !DILocation(line: 492, column: 21, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !446, line: 491, column: 15)
!1863 = distinct !DILexicalBlock(scope: !1643, file: !446, line: 490, column: 17)
!1864 = !DILocation(line: 499, column: 35, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1643, file: !446, line: 499, column: 17)
!1866 = !DILocation(line: 499, column: 57, scope: !1865)
!1867 = !DILocation(line: 0, scope: !1643)
!1868 = !DILocation(line: 502, column: 11, scope: !1643)
!1869 = !DILocation(line: 504, column: 17, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1643, file: !446, line: 503, column: 17)
!1871 = !DILocation(line: 507, column: 11, scope: !1643)
!1872 = !DILocation(line: 508, column: 17, scope: !1643)
!1873 = !DILocation(line: 517, column: 15, scope: !1620)
!1874 = !DILocation(line: 517, column: 40, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 517, column: 15)
!1876 = !DILocation(line: 517, column: 47, scope: !1875)
!1877 = !DILocation(line: 517, column: 18, scope: !1875)
!1878 = !DILocation(line: 521, column: 17, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 521, column: 15)
!1880 = !DILocation(line: 521, column: 15, scope: !1620)
!1881 = !DILocation(line: 525, column: 11, scope: !1620)
!1882 = !DILocation(line: 537, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 536, column: 15)
!1884 = !DILocation(line: 544, column: 15, scope: !1620)
!1885 = !DILocation(line: 546, column: 19, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !446, line: 545, column: 13)
!1887 = distinct !DILexicalBlock(scope: !1620, file: !446, line: 544, column: 15)
!1888 = !DILocation(line: 549, column: 19, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !446, line: 549, column: 19)
!1890 = !DILocation(line: 549, column: 30, scope: !1889)
!1891 = !DILocation(line: 558, column: 15, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !446, line: 558, column: 15)
!1893 = distinct !DILexicalBlock(scope: !1886, file: !446, line: 558, column: 15)
!1894 = !DILocation(line: 558, column: 15, scope: !1893)
!1895 = !DILocation(line: 559, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !446, line: 559, column: 15)
!1897 = distinct !DILexicalBlock(scope: !1886, file: !446, line: 559, column: 15)
!1898 = !DILocation(line: 559, column: 15, scope: !1897)
!1899 = !DILocation(line: 560, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !446, line: 560, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1886, file: !446, line: 560, column: 15)
!1902 = !DILocation(line: 560, column: 15, scope: !1901)
!1903 = !DILocation(line: 562, column: 13, scope: !1886)
!1904 = !DILocation(line: 602, column: 17, scope: !1619)
!1905 = !DILocation(line: 0, scope: !1619)
!1906 = !DILocation(line: 605, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 603, column: 15)
!1908 = !DILocation(line: 605, column: 27, scope: !1907)
!1909 = !DILocation(line: 668, column: 40, scope: !1619)
!1910 = !DILocation(line: 670, column: 23, scope: !1640)
!1911 = !DILocation(line: 609, column: 17, scope: !1623)
!1912 = !DILocation(line: 609, column: 27, scope: !1623)
!1913 = !DILocation(line: 0, scope: !1680, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 609, column: 32, scope: !1623)
!1915 = !DILocation(line: 0, scope: !1688, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 1137, column: 3, scope: !1680, inlinedAt: !1914)
!1917 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !1916)
!1918 = !DILocation(line: 613, column: 29, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 613, column: 21)
!1920 = !DILocation(line: 613, column: 21, scope: !1623)
!1921 = !DILocation(line: 614, column: 29, scope: !1919)
!1922 = !DILocation(line: 614, column: 19, scope: !1919)
!1923 = !DILocation(line: 618, column: 21, scope: !1626)
!1924 = !DILocation(line: 620, column: 54, scope: !1626)
!1925 = !DILocation(line: 0, scope: !1626)
!1926 = !DILocation(line: 619, column: 36, scope: !1626)
!1927 = !DILocation(line: 621, column: 25, scope: !1626)
!1928 = !DILocation(line: 631, column: 38, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1635, file: !446, line: 629, column: 23)
!1930 = !DILocation(line: 631, column: 48, scope: !1929)
!1931 = !DILocation(line: 665, column: 19, scope: !1627)
!1932 = !DILocation(line: 666, column: 15, scope: !1624)
!1933 = !DILocation(line: 626, column: 25, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1636, file: !446, line: 624, column: 23)
!1935 = !DILocation(line: 631, column: 51, scope: !1929)
!1936 = !DILocation(line: 631, column: 25, scope: !1929)
!1937 = !DILocation(line: 632, column: 28, scope: !1929)
!1938 = !DILocation(line: 631, column: 34, scope: !1929)
!1939 = distinct !{!1939, !1936, !1937, !860}
!1940 = !DILocation(line: 646, column: 29, scope: !1633)
!1941 = !DILocation(line: 0, scope: !1631)
!1942 = !DILocation(line: 649, column: 49, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1631, file: !446, line: 648, column: 29)
!1944 = !DILocation(line: 649, column: 39, scope: !1943)
!1945 = !DILocation(line: 649, column: 31, scope: !1943)
!1946 = !DILocation(line: 648, column: 60, scope: !1943)
!1947 = !DILocation(line: 648, column: 50, scope: !1943)
!1948 = !DILocation(line: 648, column: 29, scope: !1631)
!1949 = distinct !{!1949, !1948, !1950, !860}
!1950 = !DILocation(line: 654, column: 33, scope: !1631)
!1951 = !DILocation(line: 657, column: 43, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1634, file: !446, line: 657, column: 29)
!1953 = !DILocalVariable(name: "wc", arg: 1, scope: !1954, file: !1955, line: 865, type: !1958)
!1954 = distinct !DISubprogram(name: "c32isprint", scope: !1955, file: !1955, line: 865, type: !1956, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1960)
!1955 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!108, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1959, line: 20, baseType: !78)
!1959 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1960 = !{!1953}
!1961 = !DILocation(line: 0, scope: !1954, inlinedAt: !1962)
!1962 = distinct !DILocation(line: 657, column: 31, scope: !1952)
!1963 = !DILocation(line: 871, column: 10, scope: !1954, inlinedAt: !1962)
!1964 = !DILocation(line: 657, column: 31, scope: !1952)
!1965 = !DILocation(line: 657, column: 29, scope: !1634)
!1966 = !DILocation(line: 664, column: 23, scope: !1626)
!1967 = !DILocation(line: 670, column: 19, scope: !1640)
!1968 = !DILocation(line: 670, column: 45, scope: !1640)
!1969 = !DILocation(line: 674, column: 33, scope: !1639)
!1970 = !DILocation(line: 0, scope: !1639)
!1971 = !DILocation(line: 676, column: 17, scope: !1639)
!1972 = !DILocation(line: 398, column: 12, scope: !1613)
!1973 = !DILocation(line: 678, column: 43, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !446, line: 678, column: 25)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !446, line: 677, column: 19)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !446, line: 676, column: 17)
!1977 = distinct !DILexicalBlock(scope: !1639, file: !446, line: 676, column: 17)
!1978 = !DILocation(line: 680, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 680, column: 25)
!1980 = distinct !DILexicalBlock(scope: !1974, file: !446, line: 679, column: 23)
!1981 = !DILocation(line: 680, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 680, column: 25)
!1983 = !DILocation(line: 680, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !446, line: 680, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !446, line: 680, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1982, file: !446, line: 680, column: 25)
!1987 = !DILocation(line: 680, column: 25, scope: !1985)
!1988 = !DILocation(line: 680, column: 25, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !446, line: 680, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !446, line: 680, column: 25)
!1991 = !DILocation(line: 680, column: 25, scope: !1990)
!1992 = !DILocation(line: 680, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !446, line: 680, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1986, file: !446, line: 680, column: 25)
!1995 = !DILocation(line: 680, column: 25, scope: !1994)
!1996 = !DILocation(line: 680, column: 25, scope: !1986)
!1997 = !DILocation(line: 680, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !446, line: 680, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 680, column: 25)
!2000 = !DILocation(line: 680, column: 25, scope: !1999)
!2001 = !DILocation(line: 681, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !446, line: 681, column: 25)
!2003 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 681, column: 25)
!2004 = !DILocation(line: 681, column: 25, scope: !2003)
!2005 = !DILocation(line: 682, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !446, line: 682, column: 25)
!2007 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 682, column: 25)
!2008 = !DILocation(line: 682, column: 25, scope: !2007)
!2009 = !DILocation(line: 683, column: 38, scope: !1980)
!2010 = !DILocation(line: 683, column: 33, scope: !1980)
!2011 = !DILocation(line: 684, column: 23, scope: !1980)
!2012 = !DILocation(line: 685, column: 30, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1974, file: !446, line: 685, column: 30)
!2014 = !DILocation(line: 685, column: 30, scope: !1974)
!2015 = !DILocation(line: 687, column: 25, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !446, line: 687, column: 25)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !446, line: 687, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !446, line: 686, column: 23)
!2019 = !DILocation(line: 687, column: 25, scope: !2017)
!2020 = !DILocation(line: 689, column: 23, scope: !2018)
!2021 = !DILocation(line: 690, column: 35, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1975, file: !446, line: 690, column: 25)
!2023 = !DILocation(line: 690, column: 30, scope: !2022)
!2024 = !DILocation(line: 690, column: 25, scope: !1975)
!2025 = !DILocation(line: 692, column: 21, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !446, line: 692, column: 21)
!2027 = distinct !DILexicalBlock(scope: !1975, file: !446, line: 692, column: 21)
!2028 = !DILocation(line: 692, column: 21, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !446, line: 692, column: 21)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !446, line: 692, column: 21)
!2031 = distinct !DILexicalBlock(scope: !2026, file: !446, line: 692, column: 21)
!2032 = !DILocation(line: 692, column: 21, scope: !2030)
!2033 = !DILocation(line: 692, column: 21, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !446, line: 692, column: 21)
!2035 = distinct !DILexicalBlock(scope: !2031, file: !446, line: 692, column: 21)
!2036 = !DILocation(line: 692, column: 21, scope: !2035)
!2037 = !DILocation(line: 692, column: 21, scope: !2031)
!2038 = !DILocation(line: 0, scope: !1975)
!2039 = !DILocation(line: 693, column: 21, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !446, line: 693, column: 21)
!2041 = distinct !DILexicalBlock(scope: !1975, file: !446, line: 693, column: 21)
!2042 = !DILocation(line: 693, column: 21, scope: !2041)
!2043 = !DILocation(line: 694, column: 25, scope: !1975)
!2044 = !DILocation(line: 676, column: 17, scope: !1976)
!2045 = distinct !{!2045, !2046, !2047}
!2046 = !DILocation(line: 676, column: 17, scope: !1977)
!2047 = !DILocation(line: 695, column: 19, scope: !1977)
!2048 = !DILocation(line: 409, column: 30, scope: !1759)
!2049 = !DILocation(line: 702, column: 34, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 702, column: 11)
!2051 = !DILocation(line: 704, column: 14, scope: !2050)
!2052 = !DILocation(line: 705, column: 14, scope: !2050)
!2053 = !DILocation(line: 705, column: 35, scope: !2050)
!2054 = !DILocation(line: 705, column: 17, scope: !2050)
!2055 = !DILocation(line: 705, column: 47, scope: !2050)
!2056 = !DILocation(line: 705, column: 65, scope: !2050)
!2057 = !DILocation(line: 706, column: 11, scope: !2050)
!2058 = !DILocation(line: 702, column: 11, scope: !1613)
!2059 = !DILocation(line: 395, column: 15, scope: !1611)
!2060 = !DILocation(line: 709, column: 5, scope: !1613)
!2061 = !DILocation(line: 710, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 710, column: 7)
!2063 = !DILocation(line: 710, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2062, file: !446, line: 710, column: 7)
!2065 = !DILocation(line: 710, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !446, line: 710, column: 7)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !446, line: 710, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2064, file: !446, line: 710, column: 7)
!2069 = !DILocation(line: 710, column: 7, scope: !2067)
!2070 = !DILocation(line: 710, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !446, line: 710, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !446, line: 710, column: 7)
!2073 = !DILocation(line: 710, column: 7, scope: !2072)
!2074 = !DILocation(line: 710, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !446, line: 710, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2068, file: !446, line: 710, column: 7)
!2077 = !DILocation(line: 710, column: 7, scope: !2076)
!2078 = !DILocation(line: 710, column: 7, scope: !2068)
!2079 = !DILocation(line: 710, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !446, line: 710, column: 7)
!2081 = distinct !DILexicalBlock(scope: !2062, file: !446, line: 710, column: 7)
!2082 = !DILocation(line: 710, column: 7, scope: !2081)
!2083 = !DILocation(line: 712, column: 5, scope: !1613)
!2084 = !DILocation(line: 713, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !446, line: 713, column: 7)
!2086 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 713, column: 7)
!2087 = !DILocation(line: 417, column: 21, scope: !1613)
!2088 = !DILocation(line: 713, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !446, line: 713, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !446, line: 713, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2085, file: !446, line: 713, column: 7)
!2092 = !DILocation(line: 713, column: 7, scope: !2090)
!2093 = !DILocation(line: 713, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !446, line: 713, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !446, line: 713, column: 7)
!2096 = !DILocation(line: 713, column: 7, scope: !2095)
!2097 = !DILocation(line: 713, column: 7, scope: !2091)
!2098 = !DILocation(line: 714, column: 7, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !446, line: 714, column: 7)
!2100 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 714, column: 7)
!2101 = !DILocation(line: 714, column: 7, scope: !2100)
!2102 = !DILocation(line: 716, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 716, column: 11)
!2104 = !DILocation(line: 716, column: 11, scope: !1613)
!2105 = !DILocation(line: 718, column: 5, scope: !1614)
!2106 = !DILocation(line: 395, column: 82, scope: !1614)
!2107 = !DILocation(line: 395, column: 3, scope: !1614)
!2108 = distinct !{!2108, !1755, !2109, !860}
!2109 = !DILocation(line: 718, column: 5, scope: !1611)
!2110 = !DILocation(line: 720, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 720, column: 7)
!2112 = !DILocation(line: 720, column: 16, scope: !2111)
!2113 = !DILocation(line: 728, column: 51, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 728, column: 7)
!2115 = !DILocation(line: 731, column: 11, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !446, line: 731, column: 11)
!2117 = distinct !DILexicalBlock(scope: !2114, file: !446, line: 730, column: 5)
!2118 = !DILocation(line: 731, column: 11, scope: !2117)
!2119 = !DILocation(line: 732, column: 16, scope: !2116)
!2120 = !DILocation(line: 732, column: 9, scope: !2116)
!2121 = !DILocation(line: 736, column: 18, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2116, file: !446, line: 736, column: 16)
!2123 = !DILocation(line: 736, column: 29, scope: !2122)
!2124 = !DILocation(line: 745, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 745, column: 7)
!2126 = !DILocation(line: 745, column: 20, scope: !2125)
!2127 = !DILocation(line: 746, column: 12, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !446, line: 746, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2125, file: !446, line: 746, column: 5)
!2130 = !DILocation(line: 746, column: 5, scope: !2129)
!2131 = !DILocation(line: 747, column: 7, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !446, line: 747, column: 7)
!2133 = distinct !DILexicalBlock(scope: !2128, file: !446, line: 747, column: 7)
!2134 = !DILocation(line: 747, column: 7, scope: !2133)
!2135 = !DILocation(line: 746, column: 39, scope: !2128)
!2136 = distinct !{!2136, !2130, !2137, !860}
!2137 = !DILocation(line: 747, column: 7, scope: !2129)
!2138 = !DILocation(line: 749, column: 11, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 749, column: 7)
!2140 = !DILocation(line: 749, column: 7, scope: !1580)
!2141 = !DILocation(line: 750, column: 5, scope: !2139)
!2142 = !DILocation(line: 750, column: 17, scope: !2139)
!2143 = !DILocation(line: 753, column: 2, scope: !1580)
!2144 = !DILocation(line: 756, column: 51, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1580, file: !446, line: 756, column: 7)
!2146 = !DILocation(line: 756, column: 21, scope: !2145)
!2147 = !DILocation(line: 760, column: 42, scope: !1580)
!2148 = !DILocation(line: 758, column: 10, scope: !1580)
!2149 = !DILocation(line: 758, column: 3, scope: !1580)
!2150 = !DILocation(line: 762, column: 1, scope: !1580)
!2151 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !938, file: !938, line: 98, type: !2152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!110}
!2154 = !DISubprogram(name: "strlen", scope: !934, file: !934, line: 407, type: !2155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!112, !72}
!2157 = !DISubprogram(name: "iswprint", scope: !2158, file: !2158, line: 120, type: !1956, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!2158 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2159 = distinct !DISubprogram(name: "quotearg_alloc", scope: !446, file: !446, line: 788, type: !2160, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2162)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!255, !72, !110, !1473}
!2162 = !{!2163, !2164, !2165}
!2163 = !DILocalVariable(name: "arg", arg: 1, scope: !2159, file: !446, line: 788, type: !72)
!2164 = !DILocalVariable(name: "argsize", arg: 2, scope: !2159, file: !446, line: 788, type: !110)
!2165 = !DILocalVariable(name: "o", arg: 3, scope: !2159, file: !446, line: 789, type: !1473)
!2166 = !DILocation(line: 0, scope: !2159)
!2167 = !DILocalVariable(name: "arg", arg: 1, scope: !2168, file: !446, line: 801, type: !72)
!2168 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !446, file: !446, line: 801, type: !2169, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!255, !72, !110, !686, !1473}
!2171 = !{!2167, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179}
!2172 = !DILocalVariable(name: "argsize", arg: 2, scope: !2168, file: !446, line: 801, type: !110)
!2173 = !DILocalVariable(name: "size", arg: 3, scope: !2168, file: !446, line: 801, type: !686)
!2174 = !DILocalVariable(name: "o", arg: 4, scope: !2168, file: !446, line: 802, type: !1473)
!2175 = !DILocalVariable(name: "p", scope: !2168, file: !446, line: 804, type: !1473)
!2176 = !DILocalVariable(name: "saved_errno", scope: !2168, file: !446, line: 805, type: !108)
!2177 = !DILocalVariable(name: "flags", scope: !2168, file: !446, line: 807, type: !108)
!2178 = !DILocalVariable(name: "bufsize", scope: !2168, file: !446, line: 808, type: !110)
!2179 = !DILocalVariable(name: "buf", scope: !2168, file: !446, line: 812, type: !255)
!2180 = !DILocation(line: 0, scope: !2168, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 791, column: 10, scope: !2159)
!2182 = !DILocation(line: 804, column: 37, scope: !2168, inlinedAt: !2181)
!2183 = !DILocation(line: 805, column: 21, scope: !2168, inlinedAt: !2181)
!2184 = !DILocation(line: 807, column: 18, scope: !2168, inlinedAt: !2181)
!2185 = !DILocation(line: 807, column: 24, scope: !2168, inlinedAt: !2181)
!2186 = !DILocation(line: 808, column: 72, scope: !2168, inlinedAt: !2181)
!2187 = !DILocation(line: 809, column: 56, scope: !2168, inlinedAt: !2181)
!2188 = !DILocation(line: 810, column: 49, scope: !2168, inlinedAt: !2181)
!2189 = !DILocation(line: 811, column: 49, scope: !2168, inlinedAt: !2181)
!2190 = !DILocation(line: 808, column: 20, scope: !2168, inlinedAt: !2181)
!2191 = !DILocation(line: 811, column: 62, scope: !2168, inlinedAt: !2181)
!2192 = !DILocation(line: 812, column: 15, scope: !2168, inlinedAt: !2181)
!2193 = !DILocation(line: 813, column: 60, scope: !2168, inlinedAt: !2181)
!2194 = !DILocation(line: 815, column: 32, scope: !2168, inlinedAt: !2181)
!2195 = !DILocation(line: 815, column: 47, scope: !2168, inlinedAt: !2181)
!2196 = !DILocation(line: 813, column: 3, scope: !2168, inlinedAt: !2181)
!2197 = !DILocation(line: 816, column: 9, scope: !2168, inlinedAt: !2181)
!2198 = !DILocation(line: 791, column: 3, scope: !2159)
!2199 = !DILocation(line: 0, scope: !2168)
!2200 = !DILocation(line: 804, column: 37, scope: !2168)
!2201 = !DILocation(line: 805, column: 21, scope: !2168)
!2202 = !DILocation(line: 807, column: 18, scope: !2168)
!2203 = !DILocation(line: 807, column: 27, scope: !2168)
!2204 = !DILocation(line: 807, column: 24, scope: !2168)
!2205 = !DILocation(line: 808, column: 72, scope: !2168)
!2206 = !DILocation(line: 809, column: 56, scope: !2168)
!2207 = !DILocation(line: 810, column: 49, scope: !2168)
!2208 = !DILocation(line: 811, column: 49, scope: !2168)
!2209 = !DILocation(line: 808, column: 20, scope: !2168)
!2210 = !DILocation(line: 811, column: 62, scope: !2168)
!2211 = !DILocation(line: 812, column: 15, scope: !2168)
!2212 = !DILocation(line: 813, column: 60, scope: !2168)
!2213 = !DILocation(line: 815, column: 32, scope: !2168)
!2214 = !DILocation(line: 815, column: 47, scope: !2168)
!2215 = !DILocation(line: 813, column: 3, scope: !2168)
!2216 = !DILocation(line: 816, column: 9, scope: !2168)
!2217 = !DILocation(line: 817, column: 7, scope: !2168)
!2218 = !DILocation(line: 818, column: 11, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2168, file: !446, line: 817, column: 7)
!2220 = !{!1193, !1193, i64 0}
!2221 = !DILocation(line: 818, column: 5, scope: !2219)
!2222 = !DILocation(line: 819, column: 3, scope: !2168)
!2223 = distinct !DISubprogram(name: "quotearg_free", scope: !446, file: !446, line: 837, type: !378, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2224)
!2224 = !{!2225, !2226}
!2225 = !DILocalVariable(name: "sv", scope: !2223, file: !446, line: 839, type: !533)
!2226 = !DILocalVariable(name: "i", scope: !2227, file: !446, line: 840, type: !108)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !446, line: 840, column: 3)
!2228 = !DILocation(line: 839, column: 24, scope: !2223)
!2229 = !DILocation(line: 0, scope: !2223)
!2230 = !DILocation(line: 0, scope: !2227)
!2231 = !DILocation(line: 840, column: 21, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2227, file: !446, line: 840, column: 3)
!2233 = !DILocation(line: 840, column: 3, scope: !2227)
!2234 = !DILocation(line: 842, column: 13, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2223, file: !446, line: 842, column: 7)
!2236 = !{!2237, !753, i64 8}
!2237 = !{!"slotvec", !1193, i64 0, !753, i64 8}
!2238 = !DILocation(line: 842, column: 17, scope: !2235)
!2239 = !DILocation(line: 842, column: 7, scope: !2223)
!2240 = !DILocation(line: 841, column: 17, scope: !2232)
!2241 = !DILocation(line: 841, column: 5, scope: !2232)
!2242 = !DILocation(line: 840, column: 32, scope: !2232)
!2243 = distinct !{!2243, !2233, !2244, !860}
!2244 = !DILocation(line: 841, column: 20, scope: !2227)
!2245 = !DILocation(line: 844, column: 7, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2235, file: !446, line: 843, column: 5)
!2247 = !DILocation(line: 845, column: 21, scope: !2246)
!2248 = !{!2237, !1193, i64 0}
!2249 = !DILocation(line: 846, column: 20, scope: !2246)
!2250 = !DILocation(line: 847, column: 5, scope: !2246)
!2251 = !DILocation(line: 848, column: 10, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2223, file: !446, line: 848, column: 7)
!2253 = !DILocation(line: 848, column: 7, scope: !2223)
!2254 = !DILocation(line: 850, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !446, line: 849, column: 5)
!2256 = !DILocation(line: 851, column: 15, scope: !2255)
!2257 = !DILocation(line: 852, column: 5, scope: !2255)
!2258 = !DILocation(line: 853, column: 10, scope: !2223)
!2259 = !DILocation(line: 854, column: 1, scope: !2223)
!2260 = !DISubprogram(name: "free", scope: !1427, file: !1427, line: 786, type: !2261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{null, !107}
!2263 = distinct !DISubprogram(name: "quotearg_n", scope: !446, file: !446, line: 919, type: !931, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2264)
!2264 = !{!2265, !2266}
!2265 = !DILocalVariable(name: "n", arg: 1, scope: !2263, file: !446, line: 919, type: !108)
!2266 = !DILocalVariable(name: "arg", arg: 2, scope: !2263, file: !446, line: 919, type: !72)
!2267 = !DILocation(line: 0, scope: !2263)
!2268 = !DILocation(line: 921, column: 10, scope: !2263)
!2269 = !DILocation(line: 921, column: 3, scope: !2263)
!2270 = distinct !DISubprogram(name: "quotearg_n_options", scope: !446, file: !446, line: 866, type: !2271, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2273)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!255, !108, !72, !110, !1473}
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2284, !2285, !2287, !2288, !2289}
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2270, file: !446, line: 866, type: !108)
!2275 = !DILocalVariable(name: "arg", arg: 2, scope: !2270, file: !446, line: 866, type: !72)
!2276 = !DILocalVariable(name: "argsize", arg: 3, scope: !2270, file: !446, line: 866, type: !110)
!2277 = !DILocalVariable(name: "options", arg: 4, scope: !2270, file: !446, line: 867, type: !1473)
!2278 = !DILocalVariable(name: "saved_errno", scope: !2270, file: !446, line: 869, type: !108)
!2279 = !DILocalVariable(name: "sv", scope: !2270, file: !446, line: 871, type: !533)
!2280 = !DILocalVariable(name: "nslots_max", scope: !2270, file: !446, line: 873, type: !108)
!2281 = !DILocalVariable(name: "preallocated", scope: !2282, file: !446, line: 879, type: !234)
!2282 = distinct !DILexicalBlock(scope: !2283, file: !446, line: 878, column: 5)
!2283 = distinct !DILexicalBlock(scope: !2270, file: !446, line: 877, column: 7)
!2284 = !DILocalVariable(name: "new_nslots", scope: !2282, file: !446, line: 880, type: !699)
!2285 = !DILocalVariable(name: "size", scope: !2286, file: !446, line: 891, type: !110)
!2286 = distinct !DILexicalBlock(scope: !2270, file: !446, line: 890, column: 3)
!2287 = !DILocalVariable(name: "val", scope: !2286, file: !446, line: 892, type: !255)
!2288 = !DILocalVariable(name: "flags", scope: !2286, file: !446, line: 894, type: !108)
!2289 = !DILocalVariable(name: "qsize", scope: !2286, file: !446, line: 895, type: !110)
!2290 = !DILocation(line: 0, scope: !2270)
!2291 = !DILocation(line: 869, column: 21, scope: !2270)
!2292 = !DILocation(line: 871, column: 24, scope: !2270)
!2293 = !DILocation(line: 874, column: 17, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2270, file: !446, line: 874, column: 7)
!2295 = !DILocation(line: 875, column: 5, scope: !2294)
!2296 = !DILocation(line: 877, column: 7, scope: !2283)
!2297 = !DILocation(line: 877, column: 14, scope: !2283)
!2298 = !DILocation(line: 877, column: 7, scope: !2270)
!2299 = !DILocation(line: 879, column: 31, scope: !2282)
!2300 = !DILocation(line: 0, scope: !2282)
!2301 = !DILocation(line: 880, column: 7, scope: !2282)
!2302 = !DILocation(line: 880, column: 26, scope: !2282)
!2303 = !DILocation(line: 880, column: 13, scope: !2282)
!2304 = !DILocation(line: 882, column: 31, scope: !2282)
!2305 = !DILocation(line: 883, column: 33, scope: !2282)
!2306 = !DILocation(line: 883, column: 42, scope: !2282)
!2307 = !DILocation(line: 883, column: 31, scope: !2282)
!2308 = !DILocation(line: 882, column: 22, scope: !2282)
!2309 = !DILocation(line: 882, column: 15, scope: !2282)
!2310 = !DILocation(line: 884, column: 11, scope: !2282)
!2311 = !DILocation(line: 885, column: 15, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2282, file: !446, line: 884, column: 11)
!2313 = !{i64 0, i64 8, !2220, i64 8, i64 8, !752}
!2314 = !DILocation(line: 885, column: 9, scope: !2312)
!2315 = !DILocation(line: 886, column: 20, scope: !2282)
!2316 = !DILocation(line: 886, column: 18, scope: !2282)
!2317 = !DILocation(line: 886, column: 32, scope: !2282)
!2318 = !DILocation(line: 886, column: 43, scope: !2282)
!2319 = !DILocation(line: 886, column: 53, scope: !2282)
!2320 = !DILocation(line: 0, scope: !1688, inlinedAt: !2321)
!2321 = distinct !DILocation(line: 886, column: 7, scope: !2282)
!2322 = !DILocation(line: 59, column: 10, scope: !1688, inlinedAt: !2321)
!2323 = !DILocation(line: 887, column: 16, scope: !2282)
!2324 = !DILocation(line: 887, column: 14, scope: !2282)
!2325 = !DILocation(line: 888, column: 5, scope: !2283)
!2326 = !DILocation(line: 888, column: 5, scope: !2282)
!2327 = !DILocation(line: 891, column: 19, scope: !2286)
!2328 = !DILocation(line: 891, column: 25, scope: !2286)
!2329 = !DILocation(line: 0, scope: !2286)
!2330 = !DILocation(line: 892, column: 23, scope: !2286)
!2331 = !DILocation(line: 894, column: 26, scope: !2286)
!2332 = !DILocation(line: 894, column: 32, scope: !2286)
!2333 = !DILocation(line: 896, column: 55, scope: !2286)
!2334 = !DILocation(line: 897, column: 55, scope: !2286)
!2335 = !DILocation(line: 898, column: 55, scope: !2286)
!2336 = !DILocation(line: 899, column: 55, scope: !2286)
!2337 = !DILocation(line: 895, column: 20, scope: !2286)
!2338 = !DILocation(line: 901, column: 14, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2286, file: !446, line: 901, column: 9)
!2340 = !DILocation(line: 901, column: 9, scope: !2286)
!2341 = !DILocation(line: 903, column: 35, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2339, file: !446, line: 902, column: 7)
!2343 = !DILocation(line: 903, column: 20, scope: !2342)
!2344 = !DILocation(line: 904, column: 17, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !446, line: 904, column: 13)
!2346 = !DILocation(line: 904, column: 13, scope: !2342)
!2347 = !DILocation(line: 905, column: 11, scope: !2345)
!2348 = !DILocation(line: 906, column: 27, scope: !2342)
!2349 = !DILocation(line: 906, column: 19, scope: !2342)
!2350 = !DILocation(line: 907, column: 69, scope: !2342)
!2351 = !DILocation(line: 909, column: 44, scope: !2342)
!2352 = !DILocation(line: 910, column: 44, scope: !2342)
!2353 = !DILocation(line: 907, column: 9, scope: !2342)
!2354 = !DILocation(line: 911, column: 7, scope: !2342)
!2355 = !DILocation(line: 913, column: 11, scope: !2286)
!2356 = !DILocation(line: 914, column: 5, scope: !2286)
!2357 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !446, file: !446, line: 925, type: !2358, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!255, !108, !72, !110}
!2360 = !{!2361, !2362, !2363}
!2361 = !DILocalVariable(name: "n", arg: 1, scope: !2357, file: !446, line: 925, type: !108)
!2362 = !DILocalVariable(name: "arg", arg: 2, scope: !2357, file: !446, line: 925, type: !72)
!2363 = !DILocalVariable(name: "argsize", arg: 3, scope: !2357, file: !446, line: 925, type: !110)
!2364 = !DILocation(line: 0, scope: !2357)
!2365 = !DILocation(line: 927, column: 10, scope: !2357)
!2366 = !DILocation(line: 927, column: 3, scope: !2357)
!2367 = distinct !DISubprogram(name: "quotearg", scope: !446, file: !446, line: 931, type: !940, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2368)
!2368 = !{!2369}
!2369 = !DILocalVariable(name: "arg", arg: 1, scope: !2367, file: !446, line: 931, type: !72)
!2370 = !DILocation(line: 0, scope: !2367)
!2371 = !DILocation(line: 0, scope: !2263, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 933, column: 10, scope: !2367)
!2373 = !DILocation(line: 921, column: 10, scope: !2263, inlinedAt: !2372)
!2374 = !DILocation(line: 933, column: 3, scope: !2367)
!2375 = distinct !DISubprogram(name: "quotearg_mem", scope: !446, file: !446, line: 937, type: !2376, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2378)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!255, !72, !110}
!2378 = !{!2379, !2380}
!2379 = !DILocalVariable(name: "arg", arg: 1, scope: !2375, file: !446, line: 937, type: !72)
!2380 = !DILocalVariable(name: "argsize", arg: 2, scope: !2375, file: !446, line: 937, type: !110)
!2381 = !DILocation(line: 0, scope: !2375)
!2382 = !DILocation(line: 0, scope: !2357, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 939, column: 10, scope: !2375)
!2384 = !DILocation(line: 927, column: 10, scope: !2357, inlinedAt: !2383)
!2385 = !DILocation(line: 939, column: 3, scope: !2375)
!2386 = distinct !DISubprogram(name: "quotearg_n_style", scope: !446, file: !446, line: 943, type: !2387, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!255, !108, !76, !72}
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2386, file: !446, line: 943, type: !108)
!2391 = !DILocalVariable(name: "s", arg: 2, scope: !2386, file: !446, line: 943, type: !76)
!2392 = !DILocalVariable(name: "arg", arg: 3, scope: !2386, file: !446, line: 943, type: !72)
!2393 = !DILocalVariable(name: "o", scope: !2386, file: !446, line: 945, type: !1474)
!2394 = !DILocation(line: 0, scope: !2386)
!2395 = !DILocation(line: 945, column: 3, scope: !2386)
!2396 = !DILocation(line: 945, column: 32, scope: !2386)
!2397 = !{!2398}
!2398 = distinct !{!2398, !2399, !"quoting_options_from_style: argument 0"}
!2399 = distinct !{!2399, !"quoting_options_from_style"}
!2400 = !DILocation(line: 945, column: 36, scope: !2386)
!2401 = !DILocalVariable(name: "style", arg: 1, scope: !2402, file: !446, line: 183, type: !76)
!2402 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !446, file: !446, line: 183, type: !2403, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!485, !76}
!2405 = !{!2401, !2406}
!2406 = !DILocalVariable(name: "o", scope: !2402, file: !446, line: 185, type: !485)
!2407 = !DILocation(line: 0, scope: !2402, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 945, column: 36, scope: !2386)
!2409 = !DILocation(line: 185, column: 26, scope: !2402, inlinedAt: !2408)
!2410 = !DILocation(line: 186, column: 13, scope: !2411, inlinedAt: !2408)
!2411 = distinct !DILexicalBlock(scope: !2402, file: !446, line: 186, column: 7)
!2412 = !DILocation(line: 186, column: 7, scope: !2402, inlinedAt: !2408)
!2413 = !DILocation(line: 187, column: 5, scope: !2411, inlinedAt: !2408)
!2414 = !DILocation(line: 188, column: 11, scope: !2402, inlinedAt: !2408)
!2415 = !DILocation(line: 946, column: 10, scope: !2386)
!2416 = !DILocation(line: 947, column: 1, scope: !2386)
!2417 = !DILocation(line: 946, column: 3, scope: !2386)
!2418 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !446, file: !446, line: 950, type: !2419, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!255, !108, !76, !72, !110}
!2421 = !{!2422, !2423, !2424, !2425, !2426}
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !446, line: 950, type: !108)
!2423 = !DILocalVariable(name: "s", arg: 2, scope: !2418, file: !446, line: 950, type: !76)
!2424 = !DILocalVariable(name: "arg", arg: 3, scope: !2418, file: !446, line: 951, type: !72)
!2425 = !DILocalVariable(name: "argsize", arg: 4, scope: !2418, file: !446, line: 951, type: !110)
!2426 = !DILocalVariable(name: "o", scope: !2418, file: !446, line: 953, type: !1474)
!2427 = !DILocation(line: 0, scope: !2418)
!2428 = !DILocation(line: 953, column: 3, scope: !2418)
!2429 = !DILocation(line: 953, column: 32, scope: !2418)
!2430 = !{!2431}
!2431 = distinct !{!2431, !2432, !"quoting_options_from_style: argument 0"}
!2432 = distinct !{!2432, !"quoting_options_from_style"}
!2433 = !DILocation(line: 953, column: 36, scope: !2418)
!2434 = !DILocation(line: 0, scope: !2402, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 953, column: 36, scope: !2418)
!2436 = !DILocation(line: 185, column: 26, scope: !2402, inlinedAt: !2435)
!2437 = !DILocation(line: 186, column: 13, scope: !2411, inlinedAt: !2435)
!2438 = !DILocation(line: 186, column: 7, scope: !2402, inlinedAt: !2435)
!2439 = !DILocation(line: 187, column: 5, scope: !2411, inlinedAt: !2435)
!2440 = !DILocation(line: 188, column: 11, scope: !2402, inlinedAt: !2435)
!2441 = !DILocation(line: 954, column: 10, scope: !2418)
!2442 = !DILocation(line: 955, column: 1, scope: !2418)
!2443 = !DILocation(line: 954, column: 3, scope: !2418)
!2444 = distinct !DISubprogram(name: "quotearg_style", scope: !446, file: !446, line: 958, type: !2445, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!255, !76, !72}
!2447 = !{!2448, !2449}
!2448 = !DILocalVariable(name: "s", arg: 1, scope: !2444, file: !446, line: 958, type: !76)
!2449 = !DILocalVariable(name: "arg", arg: 2, scope: !2444, file: !446, line: 958, type: !72)
!2450 = !DILocation(line: 0, scope: !2444)
!2451 = !DILocation(line: 0, scope: !2386, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 960, column: 10, scope: !2444)
!2453 = !DILocation(line: 945, column: 3, scope: !2386, inlinedAt: !2452)
!2454 = !DILocation(line: 945, column: 32, scope: !2386, inlinedAt: !2452)
!2455 = !{!2456}
!2456 = distinct !{!2456, !2457, !"quoting_options_from_style: argument 0"}
!2457 = distinct !{!2457, !"quoting_options_from_style"}
!2458 = !DILocation(line: 945, column: 36, scope: !2386, inlinedAt: !2452)
!2459 = !DILocation(line: 0, scope: !2402, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 945, column: 36, scope: !2386, inlinedAt: !2452)
!2461 = !DILocation(line: 185, column: 26, scope: !2402, inlinedAt: !2460)
!2462 = !DILocation(line: 186, column: 13, scope: !2411, inlinedAt: !2460)
!2463 = !DILocation(line: 186, column: 7, scope: !2402, inlinedAt: !2460)
!2464 = !DILocation(line: 187, column: 5, scope: !2411, inlinedAt: !2460)
!2465 = !DILocation(line: 188, column: 11, scope: !2402, inlinedAt: !2460)
!2466 = !DILocation(line: 946, column: 10, scope: !2386, inlinedAt: !2452)
!2467 = !DILocation(line: 947, column: 1, scope: !2386, inlinedAt: !2452)
!2468 = !DILocation(line: 960, column: 3, scope: !2444)
!2469 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !446, file: !446, line: 964, type: !2470, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2472)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!255, !76, !72, !110}
!2472 = !{!2473, !2474, !2475}
!2473 = !DILocalVariable(name: "s", arg: 1, scope: !2469, file: !446, line: 964, type: !76)
!2474 = !DILocalVariable(name: "arg", arg: 2, scope: !2469, file: !446, line: 964, type: !72)
!2475 = !DILocalVariable(name: "argsize", arg: 3, scope: !2469, file: !446, line: 964, type: !110)
!2476 = !DILocation(line: 0, scope: !2469)
!2477 = !DILocation(line: 0, scope: !2418, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 966, column: 10, scope: !2469)
!2479 = !DILocation(line: 953, column: 3, scope: !2418, inlinedAt: !2478)
!2480 = !DILocation(line: 953, column: 32, scope: !2418, inlinedAt: !2478)
!2481 = !{!2482}
!2482 = distinct !{!2482, !2483, !"quoting_options_from_style: argument 0"}
!2483 = distinct !{!2483, !"quoting_options_from_style"}
!2484 = !DILocation(line: 953, column: 36, scope: !2418, inlinedAt: !2478)
!2485 = !DILocation(line: 0, scope: !2402, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 953, column: 36, scope: !2418, inlinedAt: !2478)
!2487 = !DILocation(line: 185, column: 26, scope: !2402, inlinedAt: !2486)
!2488 = !DILocation(line: 186, column: 13, scope: !2411, inlinedAt: !2486)
!2489 = !DILocation(line: 186, column: 7, scope: !2402, inlinedAt: !2486)
!2490 = !DILocation(line: 187, column: 5, scope: !2411, inlinedAt: !2486)
!2491 = !DILocation(line: 188, column: 11, scope: !2402, inlinedAt: !2486)
!2492 = !DILocation(line: 954, column: 10, scope: !2418, inlinedAt: !2478)
!2493 = !DILocation(line: 955, column: 1, scope: !2418, inlinedAt: !2478)
!2494 = !DILocation(line: 966, column: 3, scope: !2469)
!2495 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !446, file: !446, line: 970, type: !2496, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!255, !72, !110, !4}
!2498 = !{!2499, !2500, !2501, !2502}
!2499 = !DILocalVariable(name: "arg", arg: 1, scope: !2495, file: !446, line: 970, type: !72)
!2500 = !DILocalVariable(name: "argsize", arg: 2, scope: !2495, file: !446, line: 970, type: !110)
!2501 = !DILocalVariable(name: "ch", arg: 3, scope: !2495, file: !446, line: 970, type: !4)
!2502 = !DILocalVariable(name: "options", scope: !2495, file: !446, line: 972, type: !485)
!2503 = !DILocation(line: 0, scope: !2495)
!2504 = !DILocation(line: 972, column: 3, scope: !2495)
!2505 = !DILocation(line: 972, column: 26, scope: !2495)
!2506 = !DILocation(line: 973, column: 13, scope: !2495)
!2507 = !{i64 0, i64 4, !822, i64 4, i64 4, !813, i64 8, i64 32, !822, i64 40, i64 8, !752, i64 48, i64 8, !752}
!2508 = !DILocation(line: 0, scope: !1493, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 974, column: 3, scope: !2495)
!2510 = !DILocation(line: 147, column: 41, scope: !1493, inlinedAt: !2509)
!2511 = !DILocation(line: 147, column: 62, scope: !1493, inlinedAt: !2509)
!2512 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2509)
!2513 = !DILocation(line: 148, column: 15, scope: !1493, inlinedAt: !2509)
!2514 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2509)
!2515 = !DILocation(line: 149, column: 24, scope: !1493, inlinedAt: !2509)
!2516 = !DILocation(line: 150, column: 19, scope: !1493, inlinedAt: !2509)
!2517 = !DILocation(line: 150, column: 24, scope: !1493, inlinedAt: !2509)
!2518 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2509)
!2519 = !DILocation(line: 975, column: 10, scope: !2495)
!2520 = !DILocation(line: 976, column: 1, scope: !2495)
!2521 = !DILocation(line: 975, column: 3, scope: !2495)
!2522 = distinct !DISubprogram(name: "quotearg_char", scope: !446, file: !446, line: 979, type: !2523, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!255, !72, !4}
!2525 = !{!2526, !2527}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2522, file: !446, line: 979, type: !72)
!2527 = !DILocalVariable(name: "ch", arg: 2, scope: !2522, file: !446, line: 979, type: !4)
!2528 = !DILocation(line: 0, scope: !2522)
!2529 = !DILocation(line: 0, scope: !2495, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 981, column: 10, scope: !2522)
!2531 = !DILocation(line: 972, column: 3, scope: !2495, inlinedAt: !2530)
!2532 = !DILocation(line: 972, column: 26, scope: !2495, inlinedAt: !2530)
!2533 = !DILocation(line: 973, column: 13, scope: !2495, inlinedAt: !2530)
!2534 = !DILocation(line: 0, scope: !1493, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 974, column: 3, scope: !2495, inlinedAt: !2530)
!2536 = !DILocation(line: 147, column: 41, scope: !1493, inlinedAt: !2535)
!2537 = !DILocation(line: 147, column: 62, scope: !1493, inlinedAt: !2535)
!2538 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2535)
!2539 = !DILocation(line: 148, column: 15, scope: !1493, inlinedAt: !2535)
!2540 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2535)
!2541 = !DILocation(line: 149, column: 24, scope: !1493, inlinedAt: !2535)
!2542 = !DILocation(line: 150, column: 19, scope: !1493, inlinedAt: !2535)
!2543 = !DILocation(line: 150, column: 24, scope: !1493, inlinedAt: !2535)
!2544 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2535)
!2545 = !DILocation(line: 975, column: 10, scope: !2495, inlinedAt: !2530)
!2546 = !DILocation(line: 976, column: 1, scope: !2495, inlinedAt: !2530)
!2547 = !DILocation(line: 981, column: 3, scope: !2522)
!2548 = distinct !DISubprogram(name: "quotearg_colon", scope: !446, file: !446, line: 985, type: !940, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2549)
!2549 = !{!2550}
!2550 = !DILocalVariable(name: "arg", arg: 1, scope: !2548, file: !446, line: 985, type: !72)
!2551 = !DILocation(line: 0, scope: !2548)
!2552 = !DILocation(line: 0, scope: !2522, inlinedAt: !2553)
!2553 = distinct !DILocation(line: 987, column: 10, scope: !2548)
!2554 = !DILocation(line: 0, scope: !2495, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 981, column: 10, scope: !2522, inlinedAt: !2553)
!2556 = !DILocation(line: 972, column: 3, scope: !2495, inlinedAt: !2555)
!2557 = !DILocation(line: 972, column: 26, scope: !2495, inlinedAt: !2555)
!2558 = !DILocation(line: 973, column: 13, scope: !2495, inlinedAt: !2555)
!2559 = !DILocation(line: 0, scope: !1493, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 974, column: 3, scope: !2495, inlinedAt: !2555)
!2561 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2560)
!2562 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2560)
!2563 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2560)
!2564 = !DILocation(line: 975, column: 10, scope: !2495, inlinedAt: !2555)
!2565 = !DILocation(line: 976, column: 1, scope: !2495, inlinedAt: !2555)
!2566 = !DILocation(line: 987, column: 3, scope: !2548)
!2567 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !446, file: !446, line: 991, type: !2376, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2568)
!2568 = !{!2569, !2570}
!2569 = !DILocalVariable(name: "arg", arg: 1, scope: !2567, file: !446, line: 991, type: !72)
!2570 = !DILocalVariable(name: "argsize", arg: 2, scope: !2567, file: !446, line: 991, type: !110)
!2571 = !DILocation(line: 0, scope: !2567)
!2572 = !DILocation(line: 0, scope: !2495, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 993, column: 10, scope: !2567)
!2574 = !DILocation(line: 972, column: 3, scope: !2495, inlinedAt: !2573)
!2575 = !DILocation(line: 972, column: 26, scope: !2495, inlinedAt: !2573)
!2576 = !DILocation(line: 973, column: 13, scope: !2495, inlinedAt: !2573)
!2577 = !DILocation(line: 0, scope: !1493, inlinedAt: !2578)
!2578 = distinct !DILocation(line: 974, column: 3, scope: !2495, inlinedAt: !2573)
!2579 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2578)
!2580 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2578)
!2581 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2578)
!2582 = !DILocation(line: 975, column: 10, scope: !2495, inlinedAt: !2573)
!2583 = !DILocation(line: 976, column: 1, scope: !2495, inlinedAt: !2573)
!2584 = !DILocation(line: 993, column: 3, scope: !2567)
!2585 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !446, file: !446, line: 997, type: !2387, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2586)
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "n", arg: 1, scope: !2585, file: !446, line: 997, type: !108)
!2588 = !DILocalVariable(name: "s", arg: 2, scope: !2585, file: !446, line: 997, type: !76)
!2589 = !DILocalVariable(name: "arg", arg: 3, scope: !2585, file: !446, line: 997, type: !72)
!2590 = !DILocalVariable(name: "options", scope: !2585, file: !446, line: 999, type: !485)
!2591 = !DILocation(line: 185, column: 26, scope: !2402, inlinedAt: !2592)
!2592 = distinct !DILocation(line: 1000, column: 13, scope: !2585)
!2593 = !DILocation(line: 0, scope: !2585)
!2594 = !DILocation(line: 999, column: 3, scope: !2585)
!2595 = !DILocation(line: 999, column: 26, scope: !2585)
!2596 = !DILocation(line: 0, scope: !2402, inlinedAt: !2592)
!2597 = !DILocation(line: 186, column: 13, scope: !2411, inlinedAt: !2592)
!2598 = !DILocation(line: 186, column: 7, scope: !2402, inlinedAt: !2592)
!2599 = !DILocation(line: 187, column: 5, scope: !2411, inlinedAt: !2592)
!2600 = !{!2601}
!2601 = distinct !{!2601, !2602, !"quoting_options_from_style: argument 0"}
!2602 = distinct !{!2602, !"quoting_options_from_style"}
!2603 = !DILocation(line: 1000, column: 13, scope: !2585)
!2604 = !DILocation(line: 0, scope: !1493, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 1001, column: 3, scope: !2585)
!2606 = !DILocation(line: 147, column: 57, scope: !1493, inlinedAt: !2605)
!2607 = !DILocation(line: 149, column: 21, scope: !1493, inlinedAt: !2605)
!2608 = !DILocation(line: 150, column: 6, scope: !1493, inlinedAt: !2605)
!2609 = !DILocation(line: 1002, column: 10, scope: !2585)
!2610 = !DILocation(line: 1003, column: 1, scope: !2585)
!2611 = !DILocation(line: 1002, column: 3, scope: !2585)
!2612 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !446, file: !446, line: 1006, type: !2613, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!255, !108, !72, !72, !72}
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2612, file: !446, line: 1006, type: !108)
!2617 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2612, file: !446, line: 1006, type: !72)
!2618 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2612, file: !446, line: 1007, type: !72)
!2619 = !DILocalVariable(name: "arg", arg: 4, scope: !2612, file: !446, line: 1007, type: !72)
!2620 = !DILocation(line: 0, scope: !2612)
!2621 = !DILocalVariable(name: "n", arg: 1, scope: !2622, file: !446, line: 1014, type: !108)
!2622 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !446, file: !446, line: 1014, type: !2623, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!255, !108, !72, !72, !72, !110}
!2625 = !{!2621, !2626, !2627, !2628, !2629, !2630}
!2626 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2622, file: !446, line: 1014, type: !72)
!2627 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2622, file: !446, line: 1015, type: !72)
!2628 = !DILocalVariable(name: "arg", arg: 4, scope: !2622, file: !446, line: 1016, type: !72)
!2629 = !DILocalVariable(name: "argsize", arg: 5, scope: !2622, file: !446, line: 1016, type: !110)
!2630 = !DILocalVariable(name: "o", scope: !2622, file: !446, line: 1018, type: !485)
!2631 = !DILocation(line: 0, scope: !2622, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1009, column: 10, scope: !2612)
!2633 = !DILocation(line: 1018, column: 3, scope: !2622, inlinedAt: !2632)
!2634 = !DILocation(line: 1018, column: 26, scope: !2622, inlinedAt: !2632)
!2635 = !DILocation(line: 1018, column: 30, scope: !2622, inlinedAt: !2632)
!2636 = !DILocation(line: 0, scope: !1533, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1019, column: 3, scope: !2622, inlinedAt: !2632)
!2638 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2637)
!2639 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2637)
!2640 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2637)
!2641 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2637)
!2642 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2637)
!2643 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2637)
!2644 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2637)
!2645 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2637)
!2646 = !DILocation(line: 1020, column: 10, scope: !2622, inlinedAt: !2632)
!2647 = !DILocation(line: 1021, column: 1, scope: !2622, inlinedAt: !2632)
!2648 = !DILocation(line: 1009, column: 3, scope: !2612)
!2649 = !DILocation(line: 0, scope: !2622)
!2650 = !DILocation(line: 1018, column: 3, scope: !2622)
!2651 = !DILocation(line: 1018, column: 26, scope: !2622)
!2652 = !DILocation(line: 1018, column: 30, scope: !2622)
!2653 = !DILocation(line: 0, scope: !1533, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1019, column: 3, scope: !2622)
!2655 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2654)
!2656 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2654)
!2657 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2654)
!2658 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2654)
!2659 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2654)
!2660 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2654)
!2661 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2654)
!2662 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2654)
!2663 = !DILocation(line: 1020, column: 10, scope: !2622)
!2664 = !DILocation(line: 1021, column: 1, scope: !2622)
!2665 = !DILocation(line: 1020, column: 3, scope: !2622)
!2666 = distinct !DISubprogram(name: "quotearg_custom", scope: !446, file: !446, line: 1024, type: !2667, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!255, !72, !72, !72}
!2669 = !{!2670, !2671, !2672}
!2670 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2666, file: !446, line: 1024, type: !72)
!2671 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2666, file: !446, line: 1024, type: !72)
!2672 = !DILocalVariable(name: "arg", arg: 3, scope: !2666, file: !446, line: 1025, type: !72)
!2673 = !DILocation(line: 0, scope: !2666)
!2674 = !DILocation(line: 0, scope: !2612, inlinedAt: !2675)
!2675 = distinct !DILocation(line: 1027, column: 10, scope: !2666)
!2676 = !DILocation(line: 0, scope: !2622, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1009, column: 10, scope: !2612, inlinedAt: !2675)
!2678 = !DILocation(line: 1018, column: 3, scope: !2622, inlinedAt: !2677)
!2679 = !DILocation(line: 1018, column: 26, scope: !2622, inlinedAt: !2677)
!2680 = !DILocation(line: 1018, column: 30, scope: !2622, inlinedAt: !2677)
!2681 = !DILocation(line: 0, scope: !1533, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1019, column: 3, scope: !2622, inlinedAt: !2677)
!2683 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2682)
!2684 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2682)
!2685 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2682)
!2686 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2682)
!2687 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2682)
!2688 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2682)
!2689 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2682)
!2690 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2682)
!2691 = !DILocation(line: 1020, column: 10, scope: !2622, inlinedAt: !2677)
!2692 = !DILocation(line: 1021, column: 1, scope: !2622, inlinedAt: !2677)
!2693 = !DILocation(line: 1027, column: 3, scope: !2666)
!2694 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !446, file: !446, line: 1031, type: !2695, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!255, !72, !72, !72, !110}
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2694, file: !446, line: 1031, type: !72)
!2699 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2694, file: !446, line: 1031, type: !72)
!2700 = !DILocalVariable(name: "arg", arg: 3, scope: !2694, file: !446, line: 1032, type: !72)
!2701 = !DILocalVariable(name: "argsize", arg: 4, scope: !2694, file: !446, line: 1032, type: !110)
!2702 = !DILocation(line: 0, scope: !2694)
!2703 = !DILocation(line: 0, scope: !2622, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 1034, column: 10, scope: !2694)
!2705 = !DILocation(line: 1018, column: 3, scope: !2622, inlinedAt: !2704)
!2706 = !DILocation(line: 1018, column: 26, scope: !2622, inlinedAt: !2704)
!2707 = !DILocation(line: 1018, column: 30, scope: !2622, inlinedAt: !2704)
!2708 = !DILocation(line: 0, scope: !1533, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1019, column: 3, scope: !2622, inlinedAt: !2704)
!2710 = !DILocation(line: 174, column: 12, scope: !1533, inlinedAt: !2709)
!2711 = !DILocation(line: 175, column: 8, scope: !1546, inlinedAt: !2709)
!2712 = !DILocation(line: 175, column: 19, scope: !1546, inlinedAt: !2709)
!2713 = !DILocation(line: 176, column: 5, scope: !1546, inlinedAt: !2709)
!2714 = !DILocation(line: 177, column: 6, scope: !1533, inlinedAt: !2709)
!2715 = !DILocation(line: 177, column: 17, scope: !1533, inlinedAt: !2709)
!2716 = !DILocation(line: 178, column: 6, scope: !1533, inlinedAt: !2709)
!2717 = !DILocation(line: 178, column: 18, scope: !1533, inlinedAt: !2709)
!2718 = !DILocation(line: 1020, column: 10, scope: !2622, inlinedAt: !2704)
!2719 = !DILocation(line: 1021, column: 1, scope: !2622, inlinedAt: !2704)
!2720 = !DILocation(line: 1034, column: 3, scope: !2694)
!2721 = distinct !DISubprogram(name: "quote_n_mem", scope: !446, file: !446, line: 1049, type: !2722, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!72, !108, !72, !110}
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !446, line: 1049, type: !108)
!2726 = !DILocalVariable(name: "arg", arg: 2, scope: !2721, file: !446, line: 1049, type: !72)
!2727 = !DILocalVariable(name: "argsize", arg: 3, scope: !2721, file: !446, line: 1049, type: !110)
!2728 = !DILocation(line: 0, scope: !2721)
!2729 = !DILocation(line: 1051, column: 10, scope: !2721)
!2730 = !DILocation(line: 1051, column: 3, scope: !2721)
!2731 = distinct !DISubprogram(name: "quote_mem", scope: !446, file: !446, line: 1055, type: !2732, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!72, !72, !110}
!2734 = !{!2735, !2736}
!2735 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !446, line: 1055, type: !72)
!2736 = !DILocalVariable(name: "argsize", arg: 2, scope: !2731, file: !446, line: 1055, type: !110)
!2737 = !DILocation(line: 0, scope: !2731)
!2738 = !DILocation(line: 0, scope: !2721, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1057, column: 10, scope: !2731)
!2740 = !DILocation(line: 1051, column: 10, scope: !2721, inlinedAt: !2739)
!2741 = !DILocation(line: 1057, column: 3, scope: !2731)
!2742 = distinct !DISubprogram(name: "quote_n", scope: !446, file: !446, line: 1061, type: !2743, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!72, !108, !72}
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2742, file: !446, line: 1061, type: !108)
!2747 = !DILocalVariable(name: "arg", arg: 2, scope: !2742, file: !446, line: 1061, type: !72)
!2748 = !DILocation(line: 0, scope: !2742)
!2749 = !DILocation(line: 0, scope: !2721, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 1063, column: 10, scope: !2742)
!2751 = !DILocation(line: 1051, column: 10, scope: !2721, inlinedAt: !2750)
!2752 = !DILocation(line: 1063, column: 3, scope: !2742)
!2753 = distinct !DISubprogram(name: "quote", scope: !446, file: !446, line: 1067, type: !2754, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2756)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!72, !72}
!2756 = !{!2757}
!2757 = !DILocalVariable(name: "arg", arg: 1, scope: !2753, file: !446, line: 1067, type: !72)
!2758 = !DILocation(line: 0, scope: !2753)
!2759 = !DILocation(line: 0, scope: !2742, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1069, column: 10, scope: !2753)
!2761 = !DILocation(line: 0, scope: !2721, inlinedAt: !2762)
!2762 = distinct !DILocation(line: 1063, column: 10, scope: !2742, inlinedAt: !2760)
!2763 = !DILocation(line: 1051, column: 10, scope: !2721, inlinedAt: !2762)
!2764 = !DILocation(line: 1069, column: 3, scope: !2753)
!2765 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 61, type: !2766, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2803)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2768, !72, !72, !72, !2802, !110}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !2770)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !2771)
!2771 = !{!2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2770, file: !251, line: 51, baseType: !108, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2770, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2770, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2770, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2770, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2770, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2770, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2770, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2770, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2770, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2770, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2770, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2770, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2770, file: !251, line: 70, baseType: !2786, size: 64, offset: 832)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2770, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2770, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2770, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2770, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2770, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2770, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2770, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2770, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2770, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2770, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2770, file: !251, line: 93, baseType: !2786, size: 64, offset: 1344)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2770, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2770, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2770, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2770, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2803 = !{!2804, !2805, !2806, !2807, !2808, !2809}
!2804 = !DILocalVariable(name: "stream", arg: 1, scope: !2765, file: !548, line: 61, type: !2768)
!2805 = !DILocalVariable(name: "command_name", arg: 2, scope: !2765, file: !548, line: 62, type: !72)
!2806 = !DILocalVariable(name: "package", arg: 3, scope: !2765, file: !548, line: 62, type: !72)
!2807 = !DILocalVariable(name: "version", arg: 4, scope: !2765, file: !548, line: 63, type: !72)
!2808 = !DILocalVariable(name: "authors", arg: 5, scope: !2765, file: !548, line: 64, type: !2802)
!2809 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2765, file: !548, line: 64, type: !110)
!2810 = !DILocation(line: 0, scope: !2765)
!2811 = !DILocation(line: 66, column: 7, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2765, file: !548, line: 66, column: 7)
!2813 = !DILocation(line: 66, column: 7, scope: !2765)
!2814 = !DILocation(line: 67, column: 5, scope: !2812)
!2815 = !DILocation(line: 69, column: 5, scope: !2812)
!2816 = !DILocation(line: 83, column: 3, scope: !2765)
!2817 = !DILocation(line: 85, column: 3, scope: !2765)
!2818 = !DILocation(line: 88, column: 3, scope: !2765)
!2819 = !DILocation(line: 95, column: 3, scope: !2765)
!2820 = !DILocation(line: 97, column: 3, scope: !2765)
!2821 = !DILocation(line: 105, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2765, file: !548, line: 98, column: 5)
!2823 = !DILocation(line: 106, column: 7, scope: !2822)
!2824 = !DILocation(line: 109, column: 7, scope: !2822)
!2825 = !DILocation(line: 110, column: 7, scope: !2822)
!2826 = !DILocation(line: 113, column: 7, scope: !2822)
!2827 = !DILocation(line: 115, column: 7, scope: !2822)
!2828 = !DILocation(line: 120, column: 7, scope: !2822)
!2829 = !DILocation(line: 122, column: 7, scope: !2822)
!2830 = !DILocation(line: 127, column: 7, scope: !2822)
!2831 = !DILocation(line: 129, column: 7, scope: !2822)
!2832 = !DILocation(line: 134, column: 7, scope: !2822)
!2833 = !DILocation(line: 137, column: 7, scope: !2822)
!2834 = !DILocation(line: 142, column: 7, scope: !2822)
!2835 = !DILocation(line: 145, column: 7, scope: !2822)
!2836 = !DILocation(line: 150, column: 7, scope: !2822)
!2837 = !DILocation(line: 154, column: 7, scope: !2822)
!2838 = !DILocation(line: 159, column: 7, scope: !2822)
!2839 = !DILocation(line: 163, column: 7, scope: !2822)
!2840 = !DILocation(line: 170, column: 7, scope: !2822)
!2841 = !DILocation(line: 174, column: 7, scope: !2822)
!2842 = !DILocation(line: 176, column: 1, scope: !2765)
!2843 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 183, type: !2844, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2846)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{null, !2768, !72, !72, !72, !2802}
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852}
!2847 = !DILocalVariable(name: "stream", arg: 1, scope: !2843, file: !548, line: 183, type: !2768)
!2848 = !DILocalVariable(name: "command_name", arg: 2, scope: !2843, file: !548, line: 184, type: !72)
!2849 = !DILocalVariable(name: "package", arg: 3, scope: !2843, file: !548, line: 184, type: !72)
!2850 = !DILocalVariable(name: "version", arg: 4, scope: !2843, file: !548, line: 185, type: !72)
!2851 = !DILocalVariable(name: "authors", arg: 5, scope: !2843, file: !548, line: 185, type: !2802)
!2852 = !DILocalVariable(name: "n_authors", scope: !2843, file: !548, line: 187, type: !110)
!2853 = !DILocation(line: 0, scope: !2843)
!2854 = !DILocation(line: 189, column: 8, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2843, file: !548, line: 189, column: 3)
!2856 = !DILocation(line: 189, scope: !2855)
!2857 = !DILocation(line: 189, column: 23, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2855, file: !548, line: 189, column: 3)
!2859 = !DILocation(line: 189, column: 3, scope: !2855)
!2860 = !DILocation(line: 189, column: 52, scope: !2858)
!2861 = distinct !{!2861, !2859, !2862, !860}
!2862 = !DILocation(line: 190, column: 5, scope: !2855)
!2863 = !DILocation(line: 191, column: 3, scope: !2843)
!2864 = !DILocation(line: 192, column: 1, scope: !2843)
!2865 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 199, type: !2866, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2876)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2768, !72, !72, !72, !2868}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2870)
!2870 = !{!2871, !2873, !2874, !2875}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2869, file: !2872, line: 192, baseType: !78, size: 32)
!2872 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2869, file: !2872, line: 192, baseType: !78, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2869, file: !2872, line: 192, baseType: !107, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2869, file: !2872, line: 192, baseType: !107, size: 64, offset: 128)
!2876 = !{!2877, !2878, !2879, !2880, !2881, !2882, !2883}
!2877 = !DILocalVariable(name: "stream", arg: 1, scope: !2865, file: !548, line: 199, type: !2768)
!2878 = !DILocalVariable(name: "command_name", arg: 2, scope: !2865, file: !548, line: 200, type: !72)
!2879 = !DILocalVariable(name: "package", arg: 3, scope: !2865, file: !548, line: 200, type: !72)
!2880 = !DILocalVariable(name: "version", arg: 4, scope: !2865, file: !548, line: 201, type: !72)
!2881 = !DILocalVariable(name: "authors", arg: 5, scope: !2865, file: !548, line: 201, type: !2868)
!2882 = !DILocalVariable(name: "n_authors", scope: !2865, file: !548, line: 203, type: !110)
!2883 = !DILocalVariable(name: "authtab", scope: !2865, file: !548, line: 204, type: !2884)
!2884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !40)
!2885 = !DILocation(line: 0, scope: !2865)
!2886 = !DILocation(line: 204, column: 3, scope: !2865)
!2887 = !DILocation(line: 204, column: 15, scope: !2865)
!2888 = !DILocation(line: 208, column: 35, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !548, line: 206, column: 3)
!2890 = distinct !DILexicalBlock(scope: !2865, file: !548, line: 206, column: 3)
!2891 = !DILocation(line: 208, column: 33, scope: !2889)
!2892 = !DILocation(line: 208, column: 67, scope: !2889)
!2893 = !DILocation(line: 206, column: 3, scope: !2890)
!2894 = !DILocation(line: 208, column: 14, scope: !2889)
!2895 = !DILocation(line: 0, scope: !2890)
!2896 = !DILocation(line: 211, column: 3, scope: !2865)
!2897 = !DILocation(line: 213, column: 1, scope: !2865)
!2898 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 230, type: !2899, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2768, !72, !72, !72, null}
!2901 = !{!2902, !2903, !2904, !2905, !2906}
!2902 = !DILocalVariable(name: "stream", arg: 1, scope: !2898, file: !548, line: 230, type: !2768)
!2903 = !DILocalVariable(name: "command_name", arg: 2, scope: !2898, file: !548, line: 231, type: !72)
!2904 = !DILocalVariable(name: "package", arg: 3, scope: !2898, file: !548, line: 231, type: !72)
!2905 = !DILocalVariable(name: "version", arg: 4, scope: !2898, file: !548, line: 232, type: !72)
!2906 = !DILocalVariable(name: "authors", scope: !2898, file: !548, line: 234, type: !2907)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !808, line: 52, baseType: !2908)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1228, line: 14, baseType: !2909)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2872, baseType: !2910)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2869, size: 192, elements: !35)
!2911 = !DILocation(line: 0, scope: !2898)
!2912 = !DILocation(line: 234, column: 3, scope: !2898)
!2913 = !DILocation(line: 234, column: 11, scope: !2898)
!2914 = !DILocation(line: 235, column: 3, scope: !2898)
!2915 = !DILocation(line: 236, column: 3, scope: !2898)
!2916 = !DILocation(line: 237, column: 3, scope: !2898)
!2917 = !DILocation(line: 238, column: 1, scope: !2898)
!2918 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 241, type: !378, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !797)
!2919 = !DILocation(line: 243, column: 3, scope: !2918)
!2920 = !DILocation(line: 248, column: 3, scope: !2918)
!2921 = !DILocation(line: 254, column: 3, scope: !2918)
!2922 = !DILocation(line: 259, column: 3, scope: !2918)
!2923 = !DILocation(line: 261, column: 1, scope: !2918)
!2924 = distinct !DISubprogram(name: "xnrealloc", scope: !2925, file: !2925, line: 147, type: !2926, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2928)
!2925 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!107, !107, !110, !110}
!2928 = !{!2929, !2930, !2931}
!2929 = !DILocalVariable(name: "p", arg: 1, scope: !2924, file: !2925, line: 147, type: !107)
!2930 = !DILocalVariable(name: "n", arg: 2, scope: !2924, file: !2925, line: 147, type: !110)
!2931 = !DILocalVariable(name: "s", arg: 3, scope: !2924, file: !2925, line: 147, type: !110)
!2932 = !DILocation(line: 0, scope: !2924)
!2933 = !DILocalVariable(name: "p", arg: 1, scope: !2934, file: !680, line: 83, type: !107)
!2934 = distinct !DISubprogram(name: "xreallocarray", scope: !680, file: !680, line: 83, type: !2926, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2935)
!2935 = !{!2933, !2936, !2937}
!2936 = !DILocalVariable(name: "n", arg: 2, scope: !2934, file: !680, line: 83, type: !110)
!2937 = !DILocalVariable(name: "s", arg: 3, scope: !2934, file: !680, line: 83, type: !110)
!2938 = !DILocation(line: 0, scope: !2934, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 149, column: 10, scope: !2924)
!2940 = !DILocation(line: 85, column: 25, scope: !2934, inlinedAt: !2939)
!2941 = !DILocalVariable(name: "p", arg: 1, scope: !2942, file: !680, line: 37, type: !107)
!2942 = distinct !DISubprogram(name: "check_nonnull", scope: !680, file: !680, line: 37, type: !2943, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!107, !107}
!2945 = !{!2941}
!2946 = !DILocation(line: 0, scope: !2942, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 85, column: 10, scope: !2934, inlinedAt: !2939)
!2948 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !2947)
!2949 = distinct !DILexicalBlock(scope: !2942, file: !680, line: 39, column: 7)
!2950 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !2947)
!2951 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !2947)
!2952 = !DILocation(line: 149, column: 3, scope: !2924)
!2953 = !DILocation(line: 0, scope: !2934)
!2954 = !DILocation(line: 85, column: 25, scope: !2934)
!2955 = !DILocation(line: 0, scope: !2942, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 85, column: 10, scope: !2934)
!2957 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !2956)
!2958 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !2956)
!2959 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !2956)
!2960 = !DILocation(line: 85, column: 3, scope: !2934)
!2961 = distinct !DISubprogram(name: "xmalloc", scope: !680, file: !680, line: 47, type: !2962, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!107, !110}
!2964 = !{!2965}
!2965 = !DILocalVariable(name: "s", arg: 1, scope: !2961, file: !680, line: 47, type: !110)
!2966 = !DILocation(line: 0, scope: !2961)
!2967 = !DILocation(line: 49, column: 25, scope: !2961)
!2968 = !DILocation(line: 0, scope: !2942, inlinedAt: !2969)
!2969 = distinct !DILocation(line: 49, column: 10, scope: !2961)
!2970 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !2969)
!2971 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !2969)
!2972 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !2969)
!2973 = !DILocation(line: 49, column: 3, scope: !2961)
!2974 = !DISubprogram(name: "malloc", scope: !938, file: !938, line: 540, type: !2962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!2975 = distinct !DISubprogram(name: "ximalloc", scope: !680, file: !680, line: 53, type: !2976, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!107, !699}
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "s", arg: 1, scope: !2975, file: !680, line: 53, type: !699)
!2980 = !DILocation(line: 0, scope: !2975)
!2981 = !DILocalVariable(name: "s", arg: 1, scope: !2982, file: !2983, line: 55, type: !699)
!2982 = distinct !DISubprogram(name: "imalloc", scope: !2983, file: !2983, line: 55, type: !2976, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2984)
!2983 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2984 = !{!2981}
!2985 = !DILocation(line: 0, scope: !2982, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 55, column: 25, scope: !2975)
!2987 = !DILocation(line: 57, column: 26, scope: !2982, inlinedAt: !2986)
!2988 = !DILocation(line: 0, scope: !2942, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 55, column: 10, scope: !2975)
!2990 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !2989)
!2991 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !2989)
!2992 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !2989)
!2993 = !DILocation(line: 55, column: 3, scope: !2975)
!2994 = distinct !DISubprogram(name: "xcharalloc", scope: !680, file: !680, line: 59, type: !2995, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!255, !110}
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "n", arg: 1, scope: !2994, file: !680, line: 59, type: !110)
!2999 = !DILocation(line: 0, scope: !2994)
!3000 = !DILocation(line: 0, scope: !2961, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 61, column: 10, scope: !2994)
!3002 = !DILocation(line: 49, column: 25, scope: !2961, inlinedAt: !3001)
!3003 = !DILocation(line: 0, scope: !2942, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 49, column: 10, scope: !2961, inlinedAt: !3001)
!3005 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3004)
!3006 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3004)
!3007 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3004)
!3008 = !DILocation(line: 61, column: 3, scope: !2994)
!3009 = distinct !DISubprogram(name: "xrealloc", scope: !680, file: !680, line: 68, type: !3010, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!107, !107, !110}
!3012 = !{!3013, !3014}
!3013 = !DILocalVariable(name: "p", arg: 1, scope: !3009, file: !680, line: 68, type: !107)
!3014 = !DILocalVariable(name: "s", arg: 2, scope: !3009, file: !680, line: 68, type: !110)
!3015 = !DILocation(line: 0, scope: !3009)
!3016 = !DILocalVariable(name: "ptr", arg: 1, scope: !3017, file: !3018, line: 2057, type: !107)
!3017 = distinct !DISubprogram(name: "rpl_realloc", scope: !3018, file: !3018, line: 2057, type: !3010, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3019)
!3018 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3019 = !{!3016, !3020}
!3020 = !DILocalVariable(name: "size", arg: 2, scope: !3017, file: !3018, line: 2057, type: !110)
!3021 = !DILocation(line: 0, scope: !3017, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 70, column: 25, scope: !3009)
!3023 = !DILocation(line: 2059, column: 24, scope: !3017, inlinedAt: !3022)
!3024 = !DILocation(line: 2059, column: 10, scope: !3017, inlinedAt: !3022)
!3025 = !DILocation(line: 0, scope: !2942, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 70, column: 10, scope: !3009)
!3027 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3026)
!3028 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3026)
!3029 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3026)
!3030 = !DILocation(line: 70, column: 3, scope: !3009)
!3031 = !DISubprogram(name: "realloc", scope: !938, file: !938, line: 551, type: !3010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3032 = distinct !DISubprogram(name: "xirealloc", scope: !680, file: !680, line: 74, type: !3033, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!107, !107, !699}
!3035 = !{!3036, !3037}
!3036 = !DILocalVariable(name: "p", arg: 1, scope: !3032, file: !680, line: 74, type: !107)
!3037 = !DILocalVariable(name: "s", arg: 2, scope: !3032, file: !680, line: 74, type: !699)
!3038 = !DILocation(line: 0, scope: !3032)
!3039 = !DILocalVariable(name: "p", arg: 1, scope: !3040, file: !2983, line: 66, type: !107)
!3040 = distinct !DISubprogram(name: "irealloc", scope: !2983, file: !2983, line: 66, type: !3033, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3041)
!3041 = !{!3039, !3042}
!3042 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !2983, line: 66, type: !699)
!3043 = !DILocation(line: 0, scope: !3040, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 76, column: 25, scope: !3032)
!3045 = !DILocation(line: 0, scope: !3017, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 68, column: 26, scope: !3040, inlinedAt: !3044)
!3047 = !DILocation(line: 2059, column: 24, scope: !3017, inlinedAt: !3046)
!3048 = !DILocation(line: 2059, column: 10, scope: !3017, inlinedAt: !3046)
!3049 = !DILocation(line: 0, scope: !2942, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 76, column: 10, scope: !3032)
!3051 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3050)
!3052 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3050)
!3053 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3050)
!3054 = !DILocation(line: 76, column: 3, scope: !3032)
!3055 = distinct !DISubprogram(name: "xireallocarray", scope: !680, file: !680, line: 89, type: !3056, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!107, !107, !699, !699}
!3058 = !{!3059, !3060, !3061}
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3055, file: !680, line: 89, type: !107)
!3060 = !DILocalVariable(name: "n", arg: 2, scope: !3055, file: !680, line: 89, type: !699)
!3061 = !DILocalVariable(name: "s", arg: 3, scope: !3055, file: !680, line: 89, type: !699)
!3062 = !DILocation(line: 0, scope: !3055)
!3063 = !DILocalVariable(name: "p", arg: 1, scope: !3064, file: !2983, line: 98, type: !107)
!3064 = distinct !DISubprogram(name: "ireallocarray", scope: !2983, file: !2983, line: 98, type: !3056, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3065)
!3065 = !{!3063, !3066, !3067}
!3066 = !DILocalVariable(name: "n", arg: 2, scope: !3064, file: !2983, line: 98, type: !699)
!3067 = !DILocalVariable(name: "s", arg: 3, scope: !3064, file: !2983, line: 98, type: !699)
!3068 = !DILocation(line: 0, scope: !3064, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 91, column: 25, scope: !3055)
!3070 = !DILocation(line: 101, column: 13, scope: !3064, inlinedAt: !3069)
!3071 = !DILocation(line: 0, scope: !2942, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 91, column: 10, scope: !3055)
!3073 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3072)
!3075 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3072)
!3076 = !DILocation(line: 91, column: 3, scope: !3055)
!3077 = distinct !DISubprogram(name: "xnmalloc", scope: !680, file: !680, line: 98, type: !3078, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!107, !110, !110}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "n", arg: 1, scope: !3077, file: !680, line: 98, type: !110)
!3082 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !680, line: 98, type: !110)
!3083 = !DILocation(line: 0, scope: !3077)
!3084 = !DILocation(line: 0, scope: !2934, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 100, column: 10, scope: !3077)
!3086 = !DILocation(line: 85, column: 25, scope: !2934, inlinedAt: !3085)
!3087 = !DILocation(line: 0, scope: !2942, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 85, column: 10, scope: !2934, inlinedAt: !3085)
!3089 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3088)
!3090 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3088)
!3091 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3088)
!3092 = !DILocation(line: 100, column: 3, scope: !3077)
!3093 = distinct !DISubprogram(name: "xinmalloc", scope: !680, file: !680, line: 104, type: !3094, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!107, !699, !699}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !680, line: 104, type: !699)
!3098 = !DILocalVariable(name: "s", arg: 2, scope: !3093, file: !680, line: 104, type: !699)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 0, scope: !3055, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 106, column: 10, scope: !3093)
!3102 = !DILocation(line: 0, scope: !3064, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 91, column: 25, scope: !3055, inlinedAt: !3101)
!3104 = !DILocation(line: 101, column: 13, scope: !3064, inlinedAt: !3103)
!3105 = !DILocation(line: 0, scope: !2942, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 91, column: 10, scope: !3055, inlinedAt: !3101)
!3107 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3106)
!3108 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3106)
!3109 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3106)
!3110 = !DILocation(line: 106, column: 3, scope: !3093)
!3111 = distinct !DISubprogram(name: "x2realloc", scope: !680, file: !680, line: 116, type: !3112, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3114)
!3112 = !DISubroutineType(types: !3113)
!3113 = !{!107, !107, !686}
!3114 = !{!3115, !3116}
!3115 = !DILocalVariable(name: "p", arg: 1, scope: !3111, file: !680, line: 116, type: !107)
!3116 = !DILocalVariable(name: "ps", arg: 2, scope: !3111, file: !680, line: 116, type: !686)
!3117 = !DILocation(line: 0, scope: !3111)
!3118 = !DILocation(line: 0, scope: !683, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 118, column: 10, scope: !3111)
!3120 = !DILocation(line: 178, column: 14, scope: !683, inlinedAt: !3119)
!3121 = !DILocation(line: 180, column: 9, scope: !3122, inlinedAt: !3119)
!3122 = distinct !DILexicalBlock(scope: !683, file: !680, line: 180, column: 7)
!3123 = !DILocation(line: 180, column: 7, scope: !683, inlinedAt: !3119)
!3124 = !DILocation(line: 182, column: 13, scope: !3125, inlinedAt: !3119)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !680, line: 182, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !680, line: 181, column: 5)
!3127 = !DILocation(line: 182, column: 11, scope: !3126, inlinedAt: !3119)
!3128 = !DILocation(line: 197, column: 11, scope: !3129, inlinedAt: !3119)
!3129 = distinct !DILexicalBlock(scope: !3130, file: !680, line: 197, column: 11)
!3130 = distinct !DILexicalBlock(scope: !3122, file: !680, line: 195, column: 5)
!3131 = !DILocation(line: 197, column: 11, scope: !3130, inlinedAt: !3119)
!3132 = !DILocation(line: 198, column: 9, scope: !3129, inlinedAt: !3119)
!3133 = !DILocation(line: 0, scope: !2934, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 201, column: 7, scope: !683, inlinedAt: !3119)
!3135 = !DILocation(line: 85, column: 25, scope: !2934, inlinedAt: !3134)
!3136 = !DILocation(line: 0, scope: !2942, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 85, column: 10, scope: !2934, inlinedAt: !3134)
!3138 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3137)
!3139 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3137)
!3140 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3137)
!3141 = !DILocation(line: 202, column: 7, scope: !683, inlinedAt: !3119)
!3142 = !DILocation(line: 118, column: 3, scope: !3111)
!3143 = !DILocation(line: 0, scope: !683)
!3144 = !DILocation(line: 178, column: 14, scope: !683)
!3145 = !DILocation(line: 180, column: 9, scope: !3122)
!3146 = !DILocation(line: 180, column: 7, scope: !683)
!3147 = !DILocation(line: 182, column: 13, scope: !3125)
!3148 = !DILocation(line: 182, column: 11, scope: !3126)
!3149 = !DILocation(line: 190, column: 30, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3125, file: !680, line: 183, column: 9)
!3151 = !DILocation(line: 191, column: 16, scope: !3150)
!3152 = !DILocation(line: 191, column: 13, scope: !3150)
!3153 = !DILocation(line: 192, column: 9, scope: !3150)
!3154 = !DILocation(line: 197, column: 11, scope: !3129)
!3155 = !DILocation(line: 197, column: 11, scope: !3130)
!3156 = !DILocation(line: 198, column: 9, scope: !3129)
!3157 = !DILocation(line: 0, scope: !2934, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 201, column: 7, scope: !683)
!3159 = !DILocation(line: 85, column: 25, scope: !2934, inlinedAt: !3158)
!3160 = !DILocation(line: 0, scope: !2942, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 85, column: 10, scope: !2934, inlinedAt: !3158)
!3162 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3161)
!3163 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3161)
!3164 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3161)
!3165 = !DILocation(line: 202, column: 7, scope: !683)
!3166 = !DILocation(line: 203, column: 3, scope: !683)
!3167 = !DILocation(line: 0, scope: !695)
!3168 = !DILocation(line: 230, column: 14, scope: !695)
!3169 = !DILocation(line: 238, column: 7, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !695, file: !680, line: 238, column: 7)
!3171 = !DILocation(line: 238, column: 7, scope: !695)
!3172 = !DILocation(line: 240, column: 9, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !695, file: !680, line: 240, column: 7)
!3174 = !DILocation(line: 240, column: 18, scope: !3173)
!3175 = !DILocation(line: 253, column: 8, scope: !695)
!3176 = !DILocation(line: 258, column: 27, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !680, line: 257, column: 5)
!3178 = distinct !DILexicalBlock(scope: !695, file: !680, line: 256, column: 7)
!3179 = !DILocation(line: 259, column: 50, scope: !3177)
!3180 = !DILocation(line: 259, column: 32, scope: !3177)
!3181 = !DILocation(line: 260, column: 5, scope: !3177)
!3182 = !DILocation(line: 262, column: 9, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !695, file: !680, line: 262, column: 7)
!3184 = !DILocation(line: 262, column: 7, scope: !695)
!3185 = !DILocation(line: 263, column: 9, scope: !3183)
!3186 = !DILocation(line: 263, column: 5, scope: !3183)
!3187 = !DILocation(line: 264, column: 9, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !695, file: !680, line: 264, column: 7)
!3189 = !DILocation(line: 264, column: 14, scope: !3188)
!3190 = !DILocation(line: 265, column: 7, scope: !3188)
!3191 = !DILocation(line: 265, column: 11, scope: !3188)
!3192 = !DILocation(line: 266, column: 11, scope: !3188)
!3193 = !DILocation(line: 267, column: 14, scope: !3188)
!3194 = !DILocation(line: 264, column: 7, scope: !695)
!3195 = !DILocation(line: 268, column: 5, scope: !3188)
!3196 = !DILocation(line: 0, scope: !3009, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 269, column: 8, scope: !695)
!3198 = !DILocation(line: 0, scope: !3017, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 70, column: 25, scope: !3009, inlinedAt: !3197)
!3200 = !DILocation(line: 2059, column: 24, scope: !3017, inlinedAt: !3199)
!3201 = !DILocation(line: 2059, column: 10, scope: !3017, inlinedAt: !3199)
!3202 = !DILocation(line: 0, scope: !2942, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 70, column: 10, scope: !3009, inlinedAt: !3197)
!3204 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3203)
!3205 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3203)
!3206 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3203)
!3207 = !DILocation(line: 270, column: 7, scope: !695)
!3208 = !DILocation(line: 271, column: 3, scope: !695)
!3209 = distinct !DISubprogram(name: "xzalloc", scope: !680, file: !680, line: 279, type: !2962, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3210)
!3210 = !{!3211}
!3211 = !DILocalVariable(name: "s", arg: 1, scope: !3209, file: !680, line: 279, type: !110)
!3212 = !DILocation(line: 0, scope: !3209)
!3213 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !680, line: 294, type: !110)
!3214 = distinct !DISubprogram(name: "xcalloc", scope: !680, file: !680, line: 294, type: !3078, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3215)
!3215 = !{!3213, !3216}
!3216 = !DILocalVariable(name: "s", arg: 2, scope: !3214, file: !680, line: 294, type: !110)
!3217 = !DILocation(line: 0, scope: !3214, inlinedAt: !3218)
!3218 = distinct !DILocation(line: 281, column: 10, scope: !3209)
!3219 = !DILocation(line: 296, column: 25, scope: !3214, inlinedAt: !3218)
!3220 = !DILocation(line: 0, scope: !2942, inlinedAt: !3221)
!3221 = distinct !DILocation(line: 296, column: 10, scope: !3214, inlinedAt: !3218)
!3222 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3221)
!3223 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3221)
!3224 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3221)
!3225 = !DILocation(line: 281, column: 3, scope: !3209)
!3226 = !DISubprogram(name: "calloc", scope: !938, file: !938, line: 543, type: !3078, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3227 = !DILocation(line: 0, scope: !3214)
!3228 = !DILocation(line: 296, column: 25, scope: !3214)
!3229 = !DILocation(line: 0, scope: !2942, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 296, column: 10, scope: !3214)
!3231 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3230)
!3232 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3230)
!3233 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3230)
!3234 = !DILocation(line: 296, column: 3, scope: !3214)
!3235 = distinct !DISubprogram(name: "xizalloc", scope: !680, file: !680, line: 285, type: !2976, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3236)
!3236 = !{!3237}
!3237 = !DILocalVariable(name: "s", arg: 1, scope: !3235, file: !680, line: 285, type: !699)
!3238 = !DILocation(line: 0, scope: !3235)
!3239 = !DILocalVariable(name: "n", arg: 1, scope: !3240, file: !680, line: 300, type: !699)
!3240 = distinct !DISubprogram(name: "xicalloc", scope: !680, file: !680, line: 300, type: !3094, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3241)
!3241 = !{!3239, !3242}
!3242 = !DILocalVariable(name: "s", arg: 2, scope: !3240, file: !680, line: 300, type: !699)
!3243 = !DILocation(line: 0, scope: !3240, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 287, column: 10, scope: !3235)
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !2983, line: 77, type: !699)
!3246 = distinct !DISubprogram(name: "icalloc", scope: !2983, file: !2983, line: 77, type: !3094, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3247)
!3247 = !{!3245, !3248}
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !2983, line: 77, type: !699)
!3249 = !DILocation(line: 0, scope: !3246, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 302, column: 25, scope: !3240, inlinedAt: !3244)
!3251 = !DILocation(line: 91, column: 10, scope: !3246, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !2942, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 302, column: 10, scope: !3240, inlinedAt: !3244)
!3254 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3253)
!3257 = !DILocation(line: 287, column: 3, scope: !3235)
!3258 = !DILocation(line: 0, scope: !3240)
!3259 = !DILocation(line: 0, scope: !3246, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 302, column: 25, scope: !3240)
!3261 = !DILocation(line: 91, column: 10, scope: !3246, inlinedAt: !3260)
!3262 = !DILocation(line: 0, scope: !2942, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 302, column: 10, scope: !3240)
!3264 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3263)
!3265 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3263)
!3266 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3263)
!3267 = !DILocation(line: 302, column: 3, scope: !3240)
!3268 = distinct !DISubprogram(name: "xmemdup", scope: !680, file: !680, line: 310, type: !3269, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3271)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{!107, !962, !110}
!3271 = !{!3272, !3273}
!3272 = !DILocalVariable(name: "p", arg: 1, scope: !3268, file: !680, line: 310, type: !962)
!3273 = !DILocalVariable(name: "s", arg: 2, scope: !3268, file: !680, line: 310, type: !110)
!3274 = !DILocation(line: 0, scope: !3268)
!3275 = !DILocation(line: 0, scope: !2961, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 312, column: 18, scope: !3268)
!3277 = !DILocation(line: 49, column: 25, scope: !2961, inlinedAt: !3276)
!3278 = !DILocation(line: 0, scope: !2942, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 49, column: 10, scope: !2961, inlinedAt: !3276)
!3280 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3279)
!3281 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3279)
!3282 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3279)
!3283 = !DILocalVariable(name: "__dest", arg: 1, scope: !3284, file: !1436, line: 26, type: !3287)
!3284 = distinct !DISubprogram(name: "memcpy", scope: !1436, file: !1436, line: 26, type: !3285, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3288)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!107, !3287, !961, !110}
!3287 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!3288 = !{!3283, !3289, !3290}
!3289 = !DILocalVariable(name: "__src", arg: 2, scope: !3284, file: !1436, line: 26, type: !961)
!3290 = !DILocalVariable(name: "__len", arg: 3, scope: !3284, file: !1436, line: 26, type: !110)
!3291 = !DILocation(line: 0, scope: !3284, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 312, column: 10, scope: !3268)
!3293 = !DILocation(line: 29, column: 10, scope: !3284, inlinedAt: !3292)
!3294 = !DILocation(line: 312, column: 3, scope: !3268)
!3295 = distinct !DISubprogram(name: "ximemdup", scope: !680, file: !680, line: 316, type: !3296, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!107, !962, !699}
!3298 = !{!3299, !3300}
!3299 = !DILocalVariable(name: "p", arg: 1, scope: !3295, file: !680, line: 316, type: !962)
!3300 = !DILocalVariable(name: "s", arg: 2, scope: !3295, file: !680, line: 316, type: !699)
!3301 = !DILocation(line: 0, scope: !3295)
!3302 = !DILocation(line: 0, scope: !2975, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 318, column: 18, scope: !3295)
!3304 = !DILocation(line: 0, scope: !2982, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 55, column: 25, scope: !2975, inlinedAt: !3303)
!3306 = !DILocation(line: 57, column: 26, scope: !2982, inlinedAt: !3305)
!3307 = !DILocation(line: 0, scope: !2942, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 55, column: 10, scope: !2975, inlinedAt: !3303)
!3309 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3308)
!3310 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3308)
!3311 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3308)
!3312 = !DILocation(line: 0, scope: !3284, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 318, column: 10, scope: !3295)
!3314 = !DILocation(line: 29, column: 10, scope: !3284, inlinedAt: !3313)
!3315 = !DILocation(line: 318, column: 3, scope: !3295)
!3316 = distinct !DISubprogram(name: "ximemdup0", scope: !680, file: !680, line: 325, type: !3317, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3319)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!255, !962, !699}
!3319 = !{!3320, !3321, !3322}
!3320 = !DILocalVariable(name: "p", arg: 1, scope: !3316, file: !680, line: 325, type: !962)
!3321 = !DILocalVariable(name: "s", arg: 2, scope: !3316, file: !680, line: 325, type: !699)
!3322 = !DILocalVariable(name: "result", scope: !3316, file: !680, line: 327, type: !255)
!3323 = !DILocation(line: 0, scope: !3316)
!3324 = !DILocation(line: 327, column: 30, scope: !3316)
!3325 = !DILocation(line: 0, scope: !2975, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 327, column: 18, scope: !3316)
!3327 = !DILocation(line: 0, scope: !2982, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 55, column: 25, scope: !2975, inlinedAt: !3326)
!3329 = !DILocation(line: 57, column: 26, scope: !2982, inlinedAt: !3328)
!3330 = !DILocation(line: 0, scope: !2942, inlinedAt: !3331)
!3331 = distinct !DILocation(line: 55, column: 10, scope: !2975, inlinedAt: !3326)
!3332 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3331)
!3333 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3331)
!3334 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3331)
!3335 = !DILocation(line: 328, column: 3, scope: !3316)
!3336 = !DILocation(line: 328, column: 13, scope: !3316)
!3337 = !DILocation(line: 0, scope: !3284, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 329, column: 10, scope: !3316)
!3339 = !DILocation(line: 29, column: 10, scope: !3284, inlinedAt: !3338)
!3340 = !DILocation(line: 329, column: 3, scope: !3316)
!3341 = distinct !DISubprogram(name: "xstrdup", scope: !680, file: !680, line: 335, type: !940, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "string", arg: 1, scope: !3341, file: !680, line: 335, type: !72)
!3344 = !DILocation(line: 0, scope: !3341)
!3345 = !DILocation(line: 337, column: 27, scope: !3341)
!3346 = !DILocation(line: 337, column: 43, scope: !3341)
!3347 = !DILocation(line: 0, scope: !3268, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 337, column: 10, scope: !3341)
!3349 = !DILocation(line: 0, scope: !2961, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 312, column: 18, scope: !3268, inlinedAt: !3348)
!3351 = !DILocation(line: 49, column: 25, scope: !2961, inlinedAt: !3350)
!3352 = !DILocation(line: 0, scope: !2942, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 49, column: 10, scope: !2961, inlinedAt: !3350)
!3354 = !DILocation(line: 39, column: 8, scope: !2949, inlinedAt: !3353)
!3355 = !DILocation(line: 39, column: 7, scope: !2942, inlinedAt: !3353)
!3356 = !DILocation(line: 40, column: 5, scope: !2949, inlinedAt: !3353)
!3357 = !DILocation(line: 0, scope: !3284, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 312, column: 10, scope: !3268, inlinedAt: !3348)
!3359 = !DILocation(line: 29, column: 10, scope: !3284, inlinedAt: !3358)
!3360 = !DILocation(line: 337, column: 3, scope: !3341)
!3361 = distinct !DISubprogram(name: "xalloc_die", scope: !644, file: !644, line: 32, type: !378, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !713, retainedNodes: !3362)
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "__errstatus", scope: !3364, file: !644, line: 34, type: !3365)
!3364 = distinct !DILexicalBlock(scope: !3361, file: !644, line: 34, column: 3)
!3365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!3366 = !DILocation(line: 34, column: 3, scope: !3364)
!3367 = !DILocation(line: 0, scope: !3364)
!3368 = !DILocation(line: 40, column: 3, scope: !3361)
!3369 = distinct !DISubprogram(name: "close_stream", scope: !716, file: !716, line: 55, type: !3370, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3406)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!108, !3372}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3374)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3374, file: !251, line: 51, baseType: !108, size: 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3374, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3374, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3374, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3374, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3374, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3374, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3374, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3374, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3374, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3374, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3374, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3374, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3374, file: !251, line: 70, baseType: !3390, size: 64, offset: 832)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3374, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3374, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3374, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3374, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3374, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3374, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3374, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3374, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3374, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3374, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3374, file: !251, line: 93, baseType: !3390, size: 64, offset: 1344)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3374, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3374, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3374, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3374, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3406 = !{!3407, !3408, !3410, !3411}
!3407 = !DILocalVariable(name: "stream", arg: 1, scope: !3369, file: !716, line: 55, type: !3372)
!3408 = !DILocalVariable(name: "some_pending", scope: !3369, file: !716, line: 57, type: !3409)
!3409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3410 = !DILocalVariable(name: "prev_fail", scope: !3369, file: !716, line: 58, type: !3409)
!3411 = !DILocalVariable(name: "fclose_fail", scope: !3369, file: !716, line: 59, type: !3409)
!3412 = !DILocation(line: 0, scope: !3369)
!3413 = !DILocation(line: 57, column: 30, scope: !3369)
!3414 = !DILocalVariable(name: "__stream", arg: 1, scope: !3415, file: !1183, line: 135, type: !3372)
!3415 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1183, file: !1183, line: 135, type: !3370, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3416)
!3416 = !{!3414}
!3417 = !DILocation(line: 0, scope: !3415, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 58, column: 27, scope: !3369)
!3419 = !DILocation(line: 137, column: 10, scope: !3415, inlinedAt: !3418)
!3420 = !{!1192, !814, i64 0}
!3421 = !DILocation(line: 58, column: 43, scope: !3369)
!3422 = !DILocation(line: 59, column: 29, scope: !3369)
!3423 = !DILocation(line: 59, column: 45, scope: !3369)
!3424 = !DILocation(line: 69, column: 17, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3369, file: !716, line: 69, column: 7)
!3426 = !DILocation(line: 57, column: 50, scope: !3369)
!3427 = !DILocation(line: 69, column: 33, scope: !3425)
!3428 = !DILocation(line: 69, column: 53, scope: !3425)
!3429 = !DILocation(line: 69, column: 59, scope: !3425)
!3430 = !DILocation(line: 69, column: 7, scope: !3369)
!3431 = !DILocation(line: 71, column: 11, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3425, file: !716, line: 70, column: 5)
!3433 = !DILocation(line: 72, column: 9, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3432, file: !716, line: 71, column: 11)
!3435 = !DILocation(line: 72, column: 15, scope: !3434)
!3436 = !DILocation(line: 77, column: 1, scope: !3369)
!3437 = !DISubprogram(name: "__fpending", scope: !3438, file: !3438, line: 75, type: !3439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3438 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!110, !3372}
!3441 = distinct !DISubprogram(name: "rpl_fclose", scope: !718, file: !718, line: 58, type: !3442, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3478)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!108, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3446)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3446, file: !251, line: 51, baseType: !108, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3446, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3446, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3446, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3446, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3446, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3446, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3446, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3446, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3446, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3446, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3446, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3446, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3446, file: !251, line: 70, baseType: !3462, size: 64, offset: 832)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3446, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3446, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3446, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3446, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3446, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3446, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3446, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3446, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3446, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3446, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3446, file: !251, line: 93, baseType: !3462, size: 64, offset: 1344)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3446, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3446, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3446, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3446, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3478 = !{!3479, !3480, !3481, !3482}
!3479 = !DILocalVariable(name: "fp", arg: 1, scope: !3441, file: !718, line: 58, type: !3444)
!3480 = !DILocalVariable(name: "saved_errno", scope: !3441, file: !718, line: 60, type: !108)
!3481 = !DILocalVariable(name: "fd", scope: !3441, file: !718, line: 63, type: !108)
!3482 = !DILocalVariable(name: "result", scope: !3441, file: !718, line: 74, type: !108)
!3483 = !DILocation(line: 0, scope: !3441)
!3484 = !DILocation(line: 63, column: 12, scope: !3441)
!3485 = !DILocation(line: 64, column: 10, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3441, file: !718, line: 64, column: 7)
!3487 = !DILocation(line: 64, column: 7, scope: !3441)
!3488 = !DILocation(line: 65, column: 12, scope: !3486)
!3489 = !DILocation(line: 65, column: 5, scope: !3486)
!3490 = !DILocation(line: 70, column: 9, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3441, file: !718, line: 70, column: 7)
!3492 = !DILocation(line: 70, column: 23, scope: !3491)
!3493 = !DILocation(line: 70, column: 33, scope: !3491)
!3494 = !DILocation(line: 70, column: 26, scope: !3491)
!3495 = !DILocation(line: 70, column: 59, scope: !3491)
!3496 = !DILocation(line: 71, column: 7, scope: !3491)
!3497 = !DILocation(line: 71, column: 10, scope: !3491)
!3498 = !DILocation(line: 70, column: 7, scope: !3441)
!3499 = !DILocation(line: 100, column: 12, scope: !3441)
!3500 = !DILocation(line: 105, column: 7, scope: !3441)
!3501 = !DILocation(line: 72, column: 19, scope: !3491)
!3502 = !DILocation(line: 105, column: 19, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3441, file: !718, line: 105, column: 7)
!3504 = !DILocation(line: 107, column: 13, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3503, file: !718, line: 106, column: 5)
!3506 = !DILocation(line: 109, column: 5, scope: !3505)
!3507 = !DILocation(line: 112, column: 1, scope: !3441)
!3508 = !DISubprogram(name: "fileno", scope: !808, file: !808, line: 809, type: !3442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3509 = !DISubprogram(name: "fclose", scope: !808, file: !808, line: 178, type: !3442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3510 = !DISubprogram(name: "__freading", scope: !3438, file: !3438, line: 51, type: !3442, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3511 = !DISubprogram(name: "lseek", scope: !1010, file: !1010, line: 339, type: !3512, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!274, !108, !274, !108}
!3514 = distinct !DISubprogram(name: "rpl_fflush", scope: !720, file: !720, line: 130, type: !3515, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3551)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!108, !3517}
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3520)
!3520 = !{!3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3519, file: !251, line: 51, baseType: !108, size: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3519, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3519, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3519, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3519, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3519, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3519, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3519, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3519, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3519, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3519, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3519, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3519, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3519, file: !251, line: 70, baseType: !3535, size: 64, offset: 832)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3519, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3519, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3519, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3519, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3519, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3519, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3519, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3519, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3519, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3519, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3519, file: !251, line: 93, baseType: !3535, size: 64, offset: 1344)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3519, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3519, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3519, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3519, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "stream", arg: 1, scope: !3514, file: !720, line: 130, type: !3517)
!3553 = !DILocation(line: 0, scope: !3514)
!3554 = !DILocation(line: 151, column: 14, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3514, file: !720, line: 151, column: 7)
!3556 = !DILocation(line: 151, column: 22, scope: !3555)
!3557 = !DILocation(line: 151, column: 27, scope: !3555)
!3558 = !DILocation(line: 151, column: 7, scope: !3514)
!3559 = !DILocation(line: 152, column: 12, scope: !3555)
!3560 = !DILocation(line: 152, column: 5, scope: !3555)
!3561 = !DILocalVariable(name: "fp", arg: 1, scope: !3562, file: !720, line: 42, type: !3517)
!3562 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !720, file: !720, line: 42, type: !3563, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{null, !3517}
!3565 = !{!3561}
!3566 = !DILocation(line: 0, scope: !3562, inlinedAt: !3567)
!3567 = distinct !DILocation(line: 157, column: 3, scope: !3514)
!3568 = !DILocation(line: 44, column: 12, scope: !3569, inlinedAt: !3567)
!3569 = distinct !DILexicalBlock(scope: !3562, file: !720, line: 44, column: 7)
!3570 = !DILocation(line: 44, column: 19, scope: !3569, inlinedAt: !3567)
!3571 = !DILocation(line: 44, column: 7, scope: !3562, inlinedAt: !3567)
!3572 = !DILocation(line: 46, column: 5, scope: !3569, inlinedAt: !3567)
!3573 = !DILocation(line: 159, column: 10, scope: !3514)
!3574 = !DILocation(line: 159, column: 3, scope: !3514)
!3575 = !DILocation(line: 236, column: 1, scope: !3514)
!3576 = !DISubprogram(name: "fflush", scope: !808, file: !808, line: 230, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3577 = distinct !DISubprogram(name: "rpl_fseeko", scope: !722, file: !722, line: 28, type: !3578, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3615)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!108, !3580, !3614, !108}
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3582, file: !251, line: 51, baseType: !108, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3582, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3582, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3582, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3582, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3582, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3582, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3582, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3582, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3582, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3582, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3582, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3582, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3582, file: !251, line: 70, baseType: !3598, size: 64, offset: 832)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3582, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3582, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3582, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3582, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3582, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3582, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3582, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3582, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3582, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3582, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3582, file: !251, line: 93, baseType: !3598, size: 64, offset: 1344)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3582, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3582, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3582, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3582, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !808, line: 63, baseType: !274)
!3615 = !{!3616, !3617, !3618, !3619}
!3616 = !DILocalVariable(name: "fp", arg: 1, scope: !3577, file: !722, line: 28, type: !3580)
!3617 = !DILocalVariable(name: "offset", arg: 2, scope: !3577, file: !722, line: 28, type: !3614)
!3618 = !DILocalVariable(name: "whence", arg: 3, scope: !3577, file: !722, line: 28, type: !108)
!3619 = !DILocalVariable(name: "pos", scope: !3620, file: !722, line: 123, type: !3614)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !722, line: 119, column: 5)
!3621 = distinct !DILexicalBlock(scope: !3577, file: !722, line: 55, column: 7)
!3622 = !DILocation(line: 0, scope: !3577)
!3623 = !DILocation(line: 55, column: 12, scope: !3621)
!3624 = !{!1192, !753, i64 16}
!3625 = !DILocation(line: 55, column: 33, scope: !3621)
!3626 = !{!1192, !753, i64 8}
!3627 = !DILocation(line: 55, column: 25, scope: !3621)
!3628 = !DILocation(line: 56, column: 7, scope: !3621)
!3629 = !DILocation(line: 56, column: 15, scope: !3621)
!3630 = !DILocation(line: 56, column: 37, scope: !3621)
!3631 = !{!1192, !753, i64 32}
!3632 = !DILocation(line: 56, column: 29, scope: !3621)
!3633 = !DILocation(line: 57, column: 7, scope: !3621)
!3634 = !DILocation(line: 57, column: 15, scope: !3621)
!3635 = !{!1192, !753, i64 72}
!3636 = !DILocation(line: 57, column: 29, scope: !3621)
!3637 = !DILocation(line: 55, column: 7, scope: !3577)
!3638 = !DILocation(line: 123, column: 26, scope: !3620)
!3639 = !DILocation(line: 123, column: 19, scope: !3620)
!3640 = !DILocation(line: 0, scope: !3620)
!3641 = !DILocation(line: 124, column: 15, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3620, file: !722, line: 124, column: 11)
!3643 = !DILocation(line: 124, column: 11, scope: !3620)
!3644 = !DILocation(line: 135, column: 19, scope: !3620)
!3645 = !DILocation(line: 136, column: 12, scope: !3620)
!3646 = !DILocation(line: 136, column: 20, scope: !3620)
!3647 = !{!1192, !1193, i64 144}
!3648 = !DILocation(line: 167, column: 7, scope: !3620)
!3649 = !DILocation(line: 169, column: 10, scope: !3577)
!3650 = !DILocation(line: 169, column: 3, scope: !3577)
!3651 = !DILocation(line: 170, column: 1, scope: !3577)
!3652 = !DISubprogram(name: "fseeko", scope: !808, file: !808, line: 736, type: !3653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!108, !3580, !274, !108}
!3655 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !651, file: !651, line: 100, type: !3656, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3659)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!110, !1454, !72, !110, !3658}
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3659 = !{!3660, !3661, !3662, !3663, !3664}
!3660 = !DILocalVariable(name: "pwc", arg: 1, scope: !3655, file: !651, line: 100, type: !1454)
!3661 = !DILocalVariable(name: "s", arg: 2, scope: !3655, file: !651, line: 100, type: !72)
!3662 = !DILocalVariable(name: "n", arg: 3, scope: !3655, file: !651, line: 100, type: !110)
!3663 = !DILocalVariable(name: "ps", arg: 4, scope: !3655, file: !651, line: 100, type: !3658)
!3664 = !DILocalVariable(name: "ret", scope: !3655, file: !651, line: 130, type: !110)
!3665 = !DILocation(line: 0, scope: !3655)
!3666 = !DILocation(line: 105, column: 9, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3655, file: !651, line: 105, column: 7)
!3668 = !DILocation(line: 105, column: 7, scope: !3655)
!3669 = !DILocation(line: 117, column: 10, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3655, file: !651, line: 117, column: 7)
!3671 = !DILocation(line: 117, column: 7, scope: !3655)
!3672 = !DILocation(line: 130, column: 16, scope: !3655)
!3673 = !DILocation(line: 135, column: 11, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3655, file: !651, line: 135, column: 7)
!3675 = !DILocation(line: 135, column: 25, scope: !3674)
!3676 = !DILocation(line: 135, column: 30, scope: !3674)
!3677 = !DILocation(line: 135, column: 7, scope: !3655)
!3678 = !DILocalVariable(name: "ps", arg: 1, scope: !3679, file: !1427, line: 1135, type: !3658)
!3679 = distinct !DISubprogram(name: "mbszero", scope: !1427, file: !1427, line: 1135, type: !3680, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3682)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !3658}
!3682 = !{!3678}
!3683 = !DILocation(line: 0, scope: !3679, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 137, column: 5, scope: !3674)
!3685 = !DILocalVariable(name: "__dest", arg: 1, scope: !3686, file: !1436, line: 57, type: !107)
!3686 = distinct !DISubprogram(name: "memset", scope: !1436, file: !1436, line: 57, type: !1437, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3687)
!3687 = !{!3685, !3688, !3689}
!3688 = !DILocalVariable(name: "__ch", arg: 2, scope: !3686, file: !1436, line: 57, type: !108)
!3689 = !DILocalVariable(name: "__len", arg: 3, scope: !3686, file: !1436, line: 57, type: !110)
!3690 = !DILocation(line: 0, scope: !3686, inlinedAt: !3691)
!3691 = distinct !DILocation(line: 1137, column: 3, scope: !3679, inlinedAt: !3684)
!3692 = !DILocation(line: 59, column: 10, scope: !3686, inlinedAt: !3691)
!3693 = !DILocation(line: 137, column: 5, scope: !3674)
!3694 = !DILocation(line: 138, column: 11, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3655, file: !651, line: 138, column: 7)
!3696 = !DILocation(line: 138, column: 7, scope: !3655)
!3697 = !DILocation(line: 139, column: 5, scope: !3695)
!3698 = !DILocation(line: 143, column: 26, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3655, file: !651, line: 143, column: 7)
!3700 = !DILocation(line: 143, column: 41, scope: !3699)
!3701 = !DILocation(line: 143, column: 7, scope: !3655)
!3702 = !DILocation(line: 145, column: 15, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !651, line: 145, column: 11)
!3704 = distinct !DILexicalBlock(scope: !3699, file: !651, line: 144, column: 5)
!3705 = !DILocation(line: 145, column: 11, scope: !3704)
!3706 = !DILocation(line: 146, column: 32, scope: !3703)
!3707 = !DILocation(line: 146, column: 16, scope: !3703)
!3708 = !DILocation(line: 146, column: 14, scope: !3703)
!3709 = !DILocation(line: 146, column: 9, scope: !3703)
!3710 = !DILocation(line: 286, column: 1, scope: !3655)
!3711 = !DISubprogram(name: "mbsinit", scope: !3712, file: !3712, line: 293, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !797)
!3712 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!108, !3715}
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!3717 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !724, file: !724, line: 27, type: !2926, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3718)
!3718 = !{!3719, !3720, !3721, !3722}
!3719 = !DILocalVariable(name: "ptr", arg: 1, scope: !3717, file: !724, line: 27, type: !107)
!3720 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3717, file: !724, line: 27, type: !110)
!3721 = !DILocalVariable(name: "size", arg: 3, scope: !3717, file: !724, line: 27, type: !110)
!3722 = !DILocalVariable(name: "nbytes", scope: !3717, file: !724, line: 29, type: !110)
!3723 = !DILocation(line: 0, scope: !3717)
!3724 = !DILocation(line: 30, column: 7, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3717, file: !724, line: 30, column: 7)
!3726 = !DILocalVariable(name: "ptr", arg: 1, scope: !3727, file: !3018, line: 2057, type: !107)
!3727 = distinct !DISubprogram(name: "rpl_realloc", scope: !3018, file: !3018, line: 2057, type: !3010, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3728)
!3728 = !{!3726, !3729}
!3729 = !DILocalVariable(name: "size", arg: 2, scope: !3727, file: !3018, line: 2057, type: !110)
!3730 = !DILocation(line: 0, scope: !3727, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 37, column: 10, scope: !3717)
!3732 = !DILocation(line: 2059, column: 24, scope: !3727, inlinedAt: !3731)
!3733 = !DILocation(line: 2059, column: 10, scope: !3727, inlinedAt: !3731)
!3734 = !DILocation(line: 37, column: 3, scope: !3717)
!3735 = !DILocation(line: 32, column: 7, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3725, file: !724, line: 31, column: 5)
!3737 = !DILocation(line: 32, column: 13, scope: !3736)
!3738 = !DILocation(line: 33, column: 7, scope: !3736)
!3739 = !DILocation(line: 38, column: 1, scope: !3717)
!3740 = distinct !DISubprogram(name: "hard_locale", scope: !669, file: !669, line: 28, type: !3741, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!234, !108}
!3743 = !{!3744, !3745}
!3744 = !DILocalVariable(name: "category", arg: 1, scope: !3740, file: !669, line: 28, type: !108)
!3745 = !DILocalVariable(name: "locale", scope: !3740, file: !669, line: 30, type: !3746)
!3746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3747)
!3747 = !{!3748}
!3748 = !DISubrange(count: 257)
!3749 = !DILocation(line: 0, scope: !3740)
!3750 = !DILocation(line: 30, column: 3, scope: !3740)
!3751 = !DILocation(line: 30, column: 8, scope: !3740)
!3752 = !DILocation(line: 32, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3740, file: !669, line: 32, column: 7)
!3754 = !DILocation(line: 32, column: 7, scope: !3740)
!3755 = !DILocalVariable(name: "__s1", arg: 1, scope: !3756, file: !826, line: 1359, type: !72)
!3756 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3757)
!3757 = !{!3755, !3758}
!3758 = !DILocalVariable(name: "__s2", arg: 2, scope: !3756, file: !826, line: 1359, type: !72)
!3759 = !DILocation(line: 0, scope: !3756, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 35, column: 9, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3740, file: !669, line: 35, column: 7)
!3762 = !DILocation(line: 1361, column: 11, scope: !3756, inlinedAt: !3760)
!3763 = !DILocation(line: 35, column: 29, scope: !3761)
!3764 = !DILocation(line: 0, scope: !3756, inlinedAt: !3765)
!3765 = distinct !DILocation(line: 35, column: 32, scope: !3761)
!3766 = !DILocation(line: 1361, column: 11, scope: !3756, inlinedAt: !3765)
!3767 = !DILocation(line: 1361, column: 10, scope: !3756, inlinedAt: !3765)
!3768 = !DILocation(line: 35, column: 7, scope: !3740)
!3769 = !DILocation(line: 46, column: 3, scope: !3740)
!3770 = !DILocation(line: 47, column: 1, scope: !3740)
!3771 = distinct !DISubprogram(name: "setlocale_null_r", scope: !731, file: !731, line: 154, type: !3772, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!108, !108, !255, !110}
!3774 = !{!3775, !3776, !3777}
!3775 = !DILocalVariable(name: "category", arg: 1, scope: !3771, file: !731, line: 154, type: !108)
!3776 = !DILocalVariable(name: "buf", arg: 2, scope: !3771, file: !731, line: 154, type: !255)
!3777 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3771, file: !731, line: 154, type: !110)
!3778 = !DILocation(line: 0, scope: !3771)
!3779 = !DILocation(line: 159, column: 10, scope: !3771)
!3780 = !DILocation(line: 159, column: 3, scope: !3771)
!3781 = distinct !DISubprogram(name: "setlocale_null", scope: !731, file: !731, line: 186, type: !3782, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!72, !108}
!3784 = !{!3785}
!3785 = !DILocalVariable(name: "category", arg: 1, scope: !3781, file: !731, line: 186, type: !108)
!3786 = !DILocation(line: 0, scope: !3781)
!3787 = !DILocation(line: 189, column: 10, scope: !3781)
!3788 = !DILocation(line: 189, column: 3, scope: !3781)
!3789 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !733, file: !733, line: 35, type: !3782, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3790)
!3790 = !{!3791, !3792}
!3791 = !DILocalVariable(name: "category", arg: 1, scope: !3789, file: !733, line: 35, type: !108)
!3792 = !DILocalVariable(name: "result", scope: !3789, file: !733, line: 37, type: !72)
!3793 = !DILocation(line: 0, scope: !3789)
!3794 = !DILocation(line: 37, column: 24, scope: !3789)
!3795 = !DILocation(line: 62, column: 3, scope: !3789)
!3796 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !733, file: !733, line: 66, type: !3772, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3797)
!3797 = !{!3798, !3799, !3800, !3801, !3802}
!3798 = !DILocalVariable(name: "category", arg: 1, scope: !3796, file: !733, line: 66, type: !108)
!3799 = !DILocalVariable(name: "buf", arg: 2, scope: !3796, file: !733, line: 66, type: !255)
!3800 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3796, file: !733, line: 66, type: !110)
!3801 = !DILocalVariable(name: "result", scope: !3796, file: !733, line: 111, type: !72)
!3802 = !DILocalVariable(name: "length", scope: !3803, file: !733, line: 125, type: !110)
!3803 = distinct !DILexicalBlock(scope: !3804, file: !733, line: 124, column: 5)
!3804 = distinct !DILexicalBlock(scope: !3796, file: !733, line: 113, column: 7)
!3805 = !DILocation(line: 0, scope: !3796)
!3806 = !DILocation(line: 0, scope: !3789, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 111, column: 24, scope: !3796)
!3808 = !DILocation(line: 37, column: 24, scope: !3789, inlinedAt: !3807)
!3809 = !DILocation(line: 113, column: 14, scope: !3804)
!3810 = !DILocation(line: 113, column: 7, scope: !3796)
!3811 = !DILocation(line: 116, column: 19, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3813, file: !733, line: 116, column: 11)
!3813 = distinct !DILexicalBlock(scope: !3804, file: !733, line: 114, column: 5)
!3814 = !DILocation(line: 116, column: 11, scope: !3813)
!3815 = !DILocation(line: 120, column: 16, scope: !3812)
!3816 = !DILocation(line: 120, column: 9, scope: !3812)
!3817 = !DILocation(line: 125, column: 23, scope: !3803)
!3818 = !DILocation(line: 0, scope: !3803)
!3819 = !DILocation(line: 126, column: 18, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3803, file: !733, line: 126, column: 11)
!3821 = !DILocation(line: 126, column: 11, scope: !3803)
!3822 = !DILocation(line: 128, column: 39, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3820, file: !733, line: 127, column: 9)
!3824 = !DILocalVariable(name: "__dest", arg: 1, scope: !3825, file: !1436, line: 26, type: !3287)
!3825 = distinct !DISubprogram(name: "memcpy", scope: !1436, file: !1436, line: 26, type: !3285, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3826)
!3826 = !{!3824, !3827, !3828}
!3827 = !DILocalVariable(name: "__src", arg: 2, scope: !3825, file: !1436, line: 26, type: !961)
!3828 = !DILocalVariable(name: "__len", arg: 3, scope: !3825, file: !1436, line: 26, type: !110)
!3829 = !DILocation(line: 0, scope: !3825, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 128, column: 11, scope: !3823)
!3831 = !DILocation(line: 29, column: 10, scope: !3825, inlinedAt: !3830)
!3832 = !DILocation(line: 129, column: 11, scope: !3823)
!3833 = !DILocation(line: 133, column: 23, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3835, file: !733, line: 133, column: 15)
!3835 = distinct !DILexicalBlock(scope: !3820, file: !733, line: 132, column: 9)
!3836 = !DILocation(line: 133, column: 15, scope: !3835)
!3837 = !DILocation(line: 138, column: 44, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3834, file: !733, line: 134, column: 13)
!3839 = !DILocation(line: 0, scope: !3825, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 138, column: 15, scope: !3838)
!3841 = !DILocation(line: 29, column: 10, scope: !3825, inlinedAt: !3840)
!3842 = !DILocation(line: 139, column: 15, scope: !3838)
!3843 = !DILocation(line: 139, column: 32, scope: !3838)
!3844 = !DILocation(line: 140, column: 13, scope: !3838)
!3845 = !DILocation(line: 0, scope: !3804)
!3846 = !DILocation(line: 145, column: 1, scope: !3796)
