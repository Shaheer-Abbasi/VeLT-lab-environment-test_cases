; ModuleID = 'src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1, !dbg !54
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1, !dbg !59
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !64
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1, !dbg !69
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !74
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !123
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !125
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !127
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !132
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !175
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !177
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !179
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !181
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !183
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !188
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !193
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !195
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !197
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !199
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !210
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !212
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !217
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !222
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !227
@.str.19 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !311
@Version = dso_local local_unnamed_addr global ptr @.str.19, align 8, !dbg !314
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !318
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !331
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !323
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !325
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !327
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !329
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !333
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !339
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !370
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !341
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !360
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !362
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !364
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !366
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !368
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !372
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !374
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !379
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !384
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !387
@optind = external local_unnamed_addr global i32, align 4
@.str.1.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !392
@.str.2.43 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !394
@.str.3.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !396
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !408
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !414
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !416
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !418
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !449
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !452
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !454
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !459
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !461
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !463
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !465
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !467
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !469
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !471
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.56, ptr @.str.1.57, ptr @.str.2.58, ptr @.str.3.59, ptr @.str.4.60, ptr @.str.5.61, ptr @.str.6.62, ptr @.str.7.63, ptr @.str.8.64, ptr @.str.9.65, ptr null], align 16, !dbg !473
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !486
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !500
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !538
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !545
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !502
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !547
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !490
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !507
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !509
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !511
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !513
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !515
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !553
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !556
@.str.2.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !558
@.str.3.79 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !560
@.str.4.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !562
@.str.5.81 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !564
@.str.6.82 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !569
@.str.7.83 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !574
@.str.8.84 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !576
@.str.9.85 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !581
@.str.10.86 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !583
@.str.11.87 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !588
@.str.12.88 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !593
@.str.13.89 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !595
@.str.14.90 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !600
@.str.15.91 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !605
@.str.16.92 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !610
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.97 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !615
@.str.18.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !617
@.str.19.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !619
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !621
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !623
@.str.22.100 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !625
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !627
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !632
@exit_failure = dso_local global i32 1, align 4, !dbg !640
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !646
@.str.1.111 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !649
@.str.2.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !651
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !653
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !656
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !671

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !745 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !749, metadata !DIExpression()), !dbg !750
  %2 = icmp eq i32 %0, 0, !dbg !751
  br i1 %2, label %8, label %3, !dbg !753

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !754, !tbaa !756
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !754
  %6 = load ptr, ptr @program_name, align 8, !dbg !754, !tbaa !756
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !754
  br label %31, !dbg !754

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !760
  %10 = load ptr, ptr @program_name, align 8, !dbg !760, !tbaa !756
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #37, !dbg !760
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !762
  %13 = load ptr, ptr @stdout, align 8, !dbg !762, !tbaa !756
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !762
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !763
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !763
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !764
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !764
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !765, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata !784, metadata !778, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata ptr poison, metadata !777, metadata !DIExpression()), !dbg !782
  tail call void @emit_bug_reporting_address() #37, !dbg !785
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !786
  call void @llvm.dbg.value(metadata ptr %17, metadata !780, metadata !DIExpression()), !dbg !782
  %18 = icmp eq ptr %17, null, !dbg !787
  br i1 %18, label %26, label %19, !dbg !789

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #38, !dbg !790
  %21 = icmp eq i32 %20, 0, !dbg !790
  br i1 %21, label %26, label %22, !dbg !791

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !792
  %24 = load ptr, ptr @stdout, align 8, !dbg !792, !tbaa !756
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !792
  br label %26, !dbg !794

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !777, metadata !DIExpression()), !dbg !782
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !781, metadata !DIExpression()), !dbg !782
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !795
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #37, !dbg !795
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !796
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #37, !dbg !796
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !797
  unreachable, !dbg !797
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !798 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !802 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !808 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !811 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !76 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !233, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !234, metadata !DIExpression()), !dbg !815
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !816, !tbaa !817
  %3 = icmp eq i32 %2, -1, !dbg !819
  br i1 %3, label %4, label %16, !dbg !820

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !821
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !235, metadata !DIExpression()), !dbg !822
  %6 = icmp eq ptr %5, null, !dbg !823
  br i1 %6, label %14, label %7, !dbg !824

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !825, !tbaa !826
  %9 = icmp eq i8 %8, 0, !dbg !825
  br i1 %9, label %14, label %10, !dbg !827

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !828, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !834, metadata !DIExpression()), !dbg !835
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #38, !dbg !837
  %12 = icmp eq i32 %11, 0, !dbg !838
  %13 = zext i1 %12 to i32, !dbg !827
  br label %14, !dbg !827

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !839, !tbaa !817
  br label %16, !dbg !840

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !841
  %18 = icmp eq i32 %17, 0, !dbg !841
  br i1 %18, label %22, label %19, !dbg !843

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !844, !tbaa !756
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !844
  br label %124, !dbg !846

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !238, metadata !DIExpression()), !dbg !815
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #38, !dbg !847
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !848
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !240, metadata !DIExpression()), !dbg !815
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !849
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !241, metadata !DIExpression()), !dbg !815
  %26 = icmp eq ptr %25, null, !dbg !850
  br i1 %26, label %54, label %27, !dbg !851

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !852
  br i1 %28, label %54, label %29, !dbg !853

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !242, metadata !DIExpression()), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !854
  %30 = icmp ult ptr %24, %25, !dbg !855
  br i1 %30, label %31, label %54, !dbg !856

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !815
  %33 = load ptr, ptr %32, align 8, !tbaa !756
  br label %34, !dbg !856

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !242, metadata !DIExpression()), !dbg !854
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !246, metadata !DIExpression()), !dbg !854
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !857
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !242, metadata !DIExpression()), !dbg !854
  %38 = load i8, ptr %35, align 1, !dbg !857, !tbaa !826
  %39 = sext i8 %38 to i64, !dbg !857
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !857
  %41 = load i16, ptr %40, align 2, !dbg !857, !tbaa !858
  %42 = freeze i16 %41, !dbg !860
  %43 = lshr i16 %42, 13, !dbg !860
  %44 = and i16 %43, 1, !dbg !860
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !861
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !246, metadata !DIExpression()), !dbg !854
  %47 = icmp ult ptr %37, %25, !dbg !855
  %48 = icmp ult i64 %46, 2, !dbg !862
  %49 = select i1 %47, i1 %48, i1 false, !dbg !862
  br i1 %49, label %34, label %50, !dbg !856, !llvm.loop !863

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !865
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !867
  %53 = zext i1 %51 to i8, !dbg !867
  br label %54, !dbg !867

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !815
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !815
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !238, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !241, metadata !DIExpression()), !dbg !815
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #38, !dbg !868
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !247, metadata !DIExpression()), !dbg !815
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !869
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !248, metadata !DIExpression()), !dbg !815
  br label %59, !dbg !870

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !815
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !815
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !238, metadata !DIExpression()), !dbg !815
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !248, metadata !DIExpression()), !dbg !815
  %62 = load i8, ptr %60, align 1, !dbg !871, !tbaa !826
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !872

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !873
  %65 = load i8, ptr %64, align 1, !dbg !876, !tbaa !826
  %66 = icmp eq i8 %65, 45, !dbg !877
  %67 = select i1 %66, i8 0, i8 %61, !dbg !878
  br label %68, !dbg !878

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !815
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !238, metadata !DIExpression()), !dbg !815
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !879
  %71 = load ptr, ptr %70, align 8, !dbg !879, !tbaa !756
  %72 = sext i8 %62 to i64, !dbg !879
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !879
  %74 = load i16, ptr %73, align 2, !dbg !879, !tbaa !858
  %75 = and i16 %74, 8192, !dbg !879
  %76 = icmp eq i16 %75, 0, !dbg !879
  br i1 %76, label %92, label %77, !dbg !881

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !882
  br i1 %78, label %94, label %79, !dbg !885

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !886
  %81 = load i8, ptr %80, align 1, !dbg !886, !tbaa !826
  %82 = sext i8 %81 to i64, !dbg !886
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !886
  %84 = load i16, ptr %83, align 2, !dbg !886, !tbaa !858
  %85 = and i16 %84, 8192, !dbg !886
  %86 = icmp eq i16 %85, 0, !dbg !886
  br i1 %86, label %87, label %94, !dbg !887

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !888
  %89 = icmp ne i8 %88, 0, !dbg !888
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !890
  br i1 %91, label %92, label %94, !dbg !890

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !891
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !248, metadata !DIExpression()), !dbg !815
  br label %59, !dbg !870, !llvm.loop !892

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !894
  %96 = load ptr, ptr @stdout, align 8, !dbg !894, !tbaa !756
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata !784, metadata !834, metadata !DIExpression()), !dbg !913
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !306, metadata !DIExpression()), !dbg !815
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #38, !dbg !915
  %99 = icmp eq i32 %98, 0, !dbg !915
  br i1 %99, label %103, label %100, !dbg !917

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #38, !dbg !918
  %102 = icmp eq i32 %101, 0, !dbg !918
  br i1 %102, label %103, label %106, !dbg !919

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !920
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !920
  br label %109, !dbg !922

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !923
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !923
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !756
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %110), !dbg !925
  %112 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !756
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %112), !dbg !926
  %114 = ptrtoint ptr %60 to i64, !dbg !927
  %115 = sub i64 %114, %95, !dbg !927
  %116 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !756
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !927
  %118 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !756
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %118), !dbg !928
  %120 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !756
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %120), !dbg !929
  %122 = load ptr, ptr @stdout, align 8, !dbg !930, !tbaa !756
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !930
  br label %124, !dbg !931

124:                                              ; preds = %109, %19
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
  %3 = load ptr, ptr %1, align 8, !dbg !975, !tbaa !756
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !976
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !977
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !978
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !979
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !980
  %8 = load ptr, ptr @Version, align 8, !dbg !981, !tbaa !756
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !982
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !983
  %10 = load i32, ptr @optind, align 4, !dbg !984, !tbaa !817
  %11 = add nsw i32 %10, 2, !dbg !986
  %12 = icmp sgt i32 %11, %0, !dbg !987
  br i1 %12, label %13, label %25, !dbg !988

13:                                               ; preds = %2
  %14 = icmp slt i32 %10, %0, !dbg !989
  br i1 %14, label %17, label %15, !dbg !992

15:                                               ; preds = %13
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !993
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #37, !dbg !993
  br label %24, !dbg !993

17:                                               ; preds = %13
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !994
  %19 = load i32, ptr @optind, align 4, !dbg !994, !tbaa !817
  %20 = sext i32 %19 to i64, !dbg !994
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20, !dbg !994
  %22 = load ptr, ptr %21, align 8, !dbg !994, !tbaa !756
  %23 = tail call ptr @quote(ptr noundef %22) #37, !dbg !994
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %23) #37, !dbg !994
  br label %24

24:                                               ; preds = %17, %15
  tail call void @usage(i32 noundef 1) #41, !dbg !995
  unreachable, !dbg !995

25:                                               ; preds = %2
  %26 = icmp slt i32 %11, %0, !dbg !996
  br i1 %26, label %27, label %35, !dbg !998

27:                                               ; preds = %25
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !999
  %29 = load i32, ptr @optind, align 4, !dbg !999, !tbaa !817
  %30 = sext i32 %29 to i64, !dbg !999
  %31 = getelementptr ptr, ptr %1, i64 %30, !dbg !999
  %32 = getelementptr ptr, ptr %31, i64 2, !dbg !999
  %33 = load ptr, ptr %32, align 8, !dbg !999, !tbaa !756
  %34 = tail call ptr @quote(ptr noundef %33) #37, !dbg !999
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %34) #37, !dbg !999
  tail call void @usage(i32 noundef 1) #41, !dbg !1001
  unreachable, !dbg !1001

35:                                               ; preds = %25
  %36 = sext i32 %10 to i64, !dbg !1002
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1002
  %38 = load ptr, ptr %37, align 8, !dbg !1002, !tbaa !756
  %39 = getelementptr ptr, ptr %37, i64 1, !dbg !1004
  %40 = load ptr, ptr %39, align 8, !dbg !1004, !tbaa !756
  %41 = tail call i32 @link(ptr noundef %38, ptr noundef %40) #37, !dbg !1005
  %42 = icmp eq i32 %41, 0, !dbg !1006
  br i1 %42, label %58, label %43, !dbg !1007

43:                                               ; preds = %35
  %44 = tail call ptr @__errno_location() #40, !dbg !1008
  %45 = load i32, ptr %44, align 4, !dbg !1008, !tbaa !817
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1008
  %47 = load i32, ptr @optind, align 4, !dbg !1008, !tbaa !817
  %48 = sext i32 %47 to i64, !dbg !1008
  %49 = getelementptr ptr, ptr %1, i64 %48, !dbg !1008
  %50 = getelementptr ptr, ptr %49, i64 1, !dbg !1008
  %51 = load ptr, ptr %50, align 8, !dbg !1008, !tbaa !756
  %52 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %51) #37, !dbg !1008
  %53 = load i32, ptr @optind, align 4, !dbg !1008, !tbaa !817
  %54 = sext i32 %53 to i64, !dbg !1008
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1008
  %56 = load ptr, ptr %55, align 8, !dbg !1008, !tbaa !756
  %57 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %56) #37, !dbg !1008
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %45, ptr noundef %46, ptr noundef %52, ptr noundef %57) #37, !dbg !1008
  unreachable, !dbg !1008

58:                                               ; preds = %35
  ret i32 0, !dbg !1009
}

; Function Attrs: nounwind
declare !dbg !1010 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1013 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1014 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1017 i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1019 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1023 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1025, metadata !DIExpression()), !dbg !1026
  store ptr %0, ptr @file_name, align 8, !dbg !1027, !tbaa !756
  ret void, !dbg !1028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1029 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1035, !tbaa !1036
  ret void, !dbg !1038
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1039 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !756
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1045
  %3 = icmp eq i32 %2, 0, !dbg !1046
  br i1 %3, label %22, label %4, !dbg !1047

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1048, !tbaa !1036, !range !1049, !noundef !784
  %6 = icmp eq i8 %5, 0, !dbg !1048
  br i1 %6, label %11, label %7, !dbg !1050

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1051
  %9 = load i32, ptr %8, align 4, !dbg !1051, !tbaa !817
  %10 = icmp eq i32 %9, 32, !dbg !1052
  br i1 %10, label %22, label %11, !dbg !1053

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #37, !dbg !1054
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1041, metadata !DIExpression()), !dbg !1055
  %13 = load ptr, ptr @file_name, align 8, !dbg !1056, !tbaa !756
  %14 = icmp eq ptr %13, null, !dbg !1056
  %15 = tail call ptr @__errno_location() #40, !dbg !1058
  %16 = load i32, ptr %15, align 4, !dbg !1058, !tbaa !817
  br i1 %14, label %19, label %17, !dbg !1059

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1060
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #37, !dbg !1060
  br label %20, !dbg !1060

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #37, !dbg !1061
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1062, !tbaa !817
  tail call void @_exit(i32 noundef %21) #39, !dbg !1063
  unreachable, !dbg !1063

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1064, !tbaa !756
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1066
  %25 = icmp eq i32 %24, 0, !dbg !1067
  br i1 %25, label %28, label %26, !dbg !1068

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1069, !tbaa !817
  tail call void @_exit(i32 noundef %27) #39, !dbg !1070
  unreachable, !dbg !1070

28:                                               ; preds = %22
  ret void, !dbg !1071
}

; Function Attrs: noreturn
declare !dbg !1072 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1073 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1077, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1078, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1079, metadata !DIExpression()), !dbg !1081
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1080, metadata !DIExpression()), !dbg !1081
  tail call fastcc void @flush_stdout(), !dbg !1082
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1083, !tbaa !756
  %6 = icmp eq ptr %5, null, !dbg !1083
  br i1 %6, label %8, label %7, !dbg !1085

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1086
  br label %12, !dbg !1086

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1087, !tbaa !756
  %10 = tail call ptr @getprogname() #38, !dbg !1087
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %10) #37, !dbg !1087
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1091 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i32 1, metadata !1095, metadata !DIExpression()), !dbg !1100
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1103
  %2 = icmp slt i32 %1, 0, !dbg !1104
  br i1 %2, label %6, label %3, !dbg !1105

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !756
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1106
  br label %6, !dbg !1106

6:                                                ; preds = %3, %0
  ret void, !dbg !1107
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1108 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1114
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1110, metadata !DIExpression()), !dbg !1115
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1111, metadata !DIExpression()), !dbg !1115
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1112, metadata !DIExpression()), !dbg !1115
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1113, metadata !DIExpression()), !dbg !1115
  %6 = load ptr, ptr @stderr, align 8, !dbg !1116, !tbaa !756
  call void @llvm.dbg.value(metadata ptr %6, metadata !1117, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr %2, metadata !1157, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr %3, metadata !1158, metadata !DIExpression()), !dbg !1159
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1161
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1162, !tbaa !817
  %9 = add i32 %8, 1, !dbg !1162
  store i32 %9, ptr @error_message_count, align 4, !dbg !1162, !tbaa !817
  %10 = icmp eq i32 %1, 0, !dbg !1163
  br i1 %10, label %20, label %11, !dbg !1165

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1166, metadata !DIExpression(), metadata !1114, metadata ptr %5, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i32 %1, metadata !1169, metadata !DIExpression()), !dbg !1174
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1176
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1177
  call void @llvm.dbg.value(metadata ptr %12, metadata !1170, metadata !DIExpression()), !dbg !1174
  %13 = icmp eq ptr %12, null, !dbg !1178
  br i1 %13, label %14, label %16, !dbg !1180

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #37, !dbg !1181
  call void @llvm.dbg.value(metadata ptr %15, metadata !1170, metadata !DIExpression()), !dbg !1174
  br label %16, !dbg !1182

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1174
  call void @llvm.dbg.value(metadata ptr %17, metadata !1170, metadata !DIExpression()), !dbg !1174
  %18 = load ptr, ptr @stderr, align 8, !dbg !1183, !tbaa !756
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %17) #37, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1184
  br label %20, !dbg !1185

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1186, !tbaa !756
  call void @llvm.dbg.value(metadata i32 10, metadata !1187, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata ptr %21, metadata !1193, metadata !DIExpression()), !dbg !1194
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1196
  %23 = load ptr, ptr %22, align 8, !dbg !1196, !tbaa !1197
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1196
  %25 = load ptr, ptr %24, align 8, !dbg !1196, !tbaa !1200
  %26 = icmp ult ptr %23, %25, !dbg !1196
  br i1 %26, label %29, label %27, !dbg !1196, !prof !1201

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1196
  br label %31, !dbg !1196

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1196
  store ptr %30, ptr %22, align 8, !dbg !1196, !tbaa !1197
  store i8 10, ptr %23, align 1, !dbg !1196, !tbaa !826
  br label %31, !dbg !1196

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1202, !tbaa !756
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1202
  %34 = icmp eq i32 %0, 0, !dbg !1203
  br i1 %34, label %36, label %35, !dbg !1205

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1206
  unreachable, !dbg !1206

36:                                               ; preds = %31
  ret void, !dbg !1207
}

declare !dbg !1208 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1211 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1214 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1217 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1220 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1224 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1237
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1231, metadata !DIExpression(), metadata !1237, metadata ptr %4, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1228, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1229, metadata !DIExpression()), !dbg !1238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1230, metadata !DIExpression()), !dbg !1238
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1239
  call void @llvm.va_start(ptr nonnull %4), !dbg !1240
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1241
  call void @llvm.va_end(ptr nonnull %4), !dbg !1242
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1243
  ret void, !dbg !1243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !343 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !355, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !357, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !358, metadata !DIExpression()), !dbg !1244
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !359, metadata !DIExpression()), !dbg !1244
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1245, !tbaa !817
  %8 = icmp eq i32 %7, 0, !dbg !1245
  br i1 %8, label %23, label %9, !dbg !1247

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1248, !tbaa !817
  %11 = icmp eq i32 %10, %3, !dbg !1251
  br i1 %11, label %12, label %22, !dbg !1252

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1253, !tbaa !756
  %14 = icmp eq ptr %13, %2, !dbg !1254
  br i1 %14, label %36, label %15, !dbg !1255

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1256
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1257
  br i1 %18, label %19, label %22, !dbg !1257

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1258
  %21 = icmp eq i32 %20, 0, !dbg !1259
  br i1 %21, label %36, label %22, !dbg !1260

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1261, !tbaa !756
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1262, !tbaa !817
  br label %23, !dbg !1263

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1264
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1265, !tbaa !756
  %25 = icmp eq ptr %24, null, !dbg !1265
  br i1 %25, label %27, label %26, !dbg !1267

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1268
  br label %31, !dbg !1268

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1269, !tbaa !756
  %29 = tail call ptr @getprogname() #38, !dbg !1269
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %29) #37, !dbg !1269
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1271, !tbaa !756
  %33 = icmp eq ptr %2, null, !dbg !1271
  %34 = select i1 %33, ptr @.str.3.33, ptr @.str.2.34, !dbg !1271
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1271
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1272
  br label %36, !dbg !1273

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1274 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1284
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1283, metadata !DIExpression(), metadata !1284, metadata ptr %6, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1279, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1280, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1281, metadata !DIExpression()), !dbg !1285
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1282, metadata !DIExpression()), !dbg !1285
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1286
  call void @llvm.va_start(ptr nonnull %6), !dbg !1287
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1288
  call void @llvm.va_end(ptr nonnull %6), !dbg !1289
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1290
  ret void, !dbg !1290
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1291 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1294, !tbaa !756
  ret ptr %1, !dbg !1295
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1296 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1326
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1311, metadata !DIExpression(), metadata !1326, metadata ptr %7, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1301, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1302, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1303, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1304, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1305, metadata !DIExpression()), !dbg !1328
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1306, metadata !DIExpression()), !dbg !1328
  %8 = load i32, ptr @opterr, align 4, !dbg !1329, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1307, metadata !DIExpression()), !dbg !1328
  store i32 0, ptr @opterr, align 4, !dbg !1330, !tbaa !817
  %9 = icmp eq i32 %0, 2, !dbg !1331
  br i1 %9, label %10, label %15, !dbg !1332

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1333
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1308, metadata !DIExpression()), !dbg !1334
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1335

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #37, !dbg !1336
  br label %15, !dbg !1337

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #37, !dbg !1338
  call void @llvm.va_start(ptr nonnull %7), !dbg !1339
  %14 = load ptr, ptr @stdout, align 8, !dbg !1340, !tbaa !756
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #37, !dbg !1341
  call void @exit(i32 noundef 0) #39, !dbg !1342
  unreachable, !dbg !1342

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1343, !tbaa !817
  store i32 0, ptr @optind, align 4, !dbg !1344, !tbaa !817
  ret void, !dbg !1345
}

; Function Attrs: nounwind
declare !dbg !1346 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1352 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1371
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1366, metadata !DIExpression(), metadata !1371, metadata ptr %8, metadata !DIExpression()), !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1356, metadata !DIExpression()), !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1357, metadata !DIExpression()), !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1358, metadata !DIExpression()), !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1359, metadata !DIExpression()), !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1360, metadata !DIExpression()), !dbg !1373
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1373
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1362, metadata !DIExpression()), !dbg !1373
  %9 = load i32, ptr @opterr, align 4, !dbg !1374, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1363, metadata !DIExpression()), !dbg !1373
  store i32 1, ptr @opterr, align 4, !dbg !1375, !tbaa !817
  %10 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1364, metadata !DIExpression()), !dbg !1373
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1377
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1365, metadata !DIExpression()), !dbg !1373
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1378

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #37, !dbg !1379
  call void @llvm.va_start(ptr nonnull %8), !dbg !1380
  %13 = load ptr, ptr @stdout, align 8, !dbg !1381, !tbaa !756
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1382
  call void @exit(i32 noundef 0) #39, !dbg !1383
  unreachable, !dbg !1383

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1384, !tbaa !817
  br label %16, !dbg !1385

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #37, !dbg !1386
  br label %18, !dbg !1387

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1387, !tbaa !817
  ret void, !dbg !1388
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1389 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1391, metadata !DIExpression()), !dbg !1394
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1395
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1392, metadata !DIExpression()), !dbg !1394
  %3 = icmp eq ptr %2, null, !dbg !1396
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1396
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1396
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1393, metadata !DIExpression()), !dbg !1394
  %6 = ptrtoint ptr %5 to i64, !dbg !1397
  %7 = ptrtoint ptr %0 to i64, !dbg !1397
  %8 = sub i64 %6, %7, !dbg !1397
  %9 = icmp sgt i64 %8, 6, !dbg !1399
  br i1 %9, label %10, label %19, !dbg !1400

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1401
  call void @llvm.dbg.value(metadata ptr %11, metadata !1402, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1407, metadata !DIExpression()), !dbg !1409
  call void @llvm.dbg.value(metadata i64 7, metadata !1408, metadata !DIExpression()), !dbg !1409
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1411
  %13 = icmp eq i32 %12, 0, !dbg !1412
  br i1 %13, label %14, label %19, !dbg !1413

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1391, metadata !DIExpression()), !dbg !1394
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #38, !dbg !1414
  %16 = icmp eq i32 %15, 0, !dbg !1417
  %17 = select i1 %16, i64 3, i64 0, !dbg !1418
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1418
  br label %19, !dbg !1418

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1393, metadata !DIExpression()), !dbg !1394
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1391, metadata !DIExpression()), !dbg !1394
  store ptr %20, ptr @program_name, align 8, !dbg !1419, !tbaa !756
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1420, !tbaa !756
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1421, !tbaa !756
  ret void, !dbg !1422
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1423 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !420 {
  %3 = alloca i32, align 4, !DIAssignID !1424
  call void @llvm.dbg.assign(metadata i1 undef, metadata !430, metadata !DIExpression(), metadata !1424, metadata ptr %3, metadata !DIExpression()), !dbg !1425
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1426
  call void @llvm.dbg.assign(metadata i1 undef, metadata !435, metadata !DIExpression(), metadata !1426, metadata ptr %4, metadata !DIExpression()), !dbg !1425
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !427, metadata !DIExpression()), !dbg !1425
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !428, metadata !DIExpression()), !dbg !1425
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1427
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !429, metadata !DIExpression()), !dbg !1425
  %6 = icmp eq ptr %5, %0, !dbg !1428
  br i1 %6, label %7, label %14, !dbg !1430

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1431
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1432
  call void @llvm.dbg.value(metadata ptr %4, metadata !1433, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %4, metadata !1442, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 0, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i64 8, metadata !1449, metadata !DIExpression()), !dbg !1450
  store i64 0, ptr %4, align 8, !dbg !1452
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1453
  %9 = icmp eq i64 %8, 2, !dbg !1455
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1456
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1425
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1457
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1457
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1425
  ret ptr %15, !dbg !1457
}

; Function Attrs: nounwind
declare !dbg !1458 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1464 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1469, metadata !DIExpression()), !dbg !1472
  %2 = tail call ptr @__errno_location() #40, !dbg !1473
  %3 = load i32, ptr %2, align 4, !dbg !1473, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1470, metadata !DIExpression()), !dbg !1472
  %4 = icmp eq ptr %0, null, !dbg !1474
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1474
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1475
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1471, metadata !DIExpression()), !dbg !1472
  store i32 %3, ptr %2, align 4, !dbg !1476, !tbaa !817
  ret ptr %6, !dbg !1477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1478 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1484, metadata !DIExpression()), !dbg !1485
  %2 = icmp eq ptr %0, null, !dbg !1486
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1486
  %4 = load i32, ptr %3, align 8, !dbg !1487, !tbaa !1488
  ret i32 %4, !dbg !1490
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1491 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1495, metadata !DIExpression()), !dbg !1497
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1496, metadata !DIExpression()), !dbg !1497
  %3 = icmp eq ptr %0, null, !dbg !1498
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1498
  store i32 %1, ptr %4, align 8, !dbg !1499, !tbaa !1488
  ret void, !dbg !1500
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1501 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1505, metadata !DIExpression()), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1507, metadata !DIExpression()), !dbg !1513
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1508, metadata !DIExpression()), !dbg !1513
  %4 = icmp eq ptr %0, null, !dbg !1514
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1514
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1515
  %7 = lshr i8 %1, 5, !dbg !1516
  %8 = zext nneg i8 %7 to i64, !dbg !1516
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1517
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1509, metadata !DIExpression()), !dbg !1513
  %10 = and i8 %1, 31, !dbg !1518
  %11 = zext nneg i8 %10 to i32, !dbg !1518
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1511, metadata !DIExpression()), !dbg !1513
  %12 = load i32, ptr %9, align 4, !dbg !1519, !tbaa !817
  %13 = lshr i32 %12, %11, !dbg !1520
  %14 = and i32 %13, 1, !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1512, metadata !DIExpression()), !dbg !1513
  %15 = xor i32 %13, %2, !dbg !1522
  %16 = and i32 %15, 1, !dbg !1522
  %17 = shl nuw i32 %16, %11, !dbg !1523
  %18 = xor i32 %17, %12, !dbg !1524
  store i32 %18, ptr %9, align 4, !dbg !1524, !tbaa !817
  ret i32 %14, !dbg !1525
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1526 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1530, metadata !DIExpression()), !dbg !1533
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1531, metadata !DIExpression()), !dbg !1533
  %3 = icmp eq ptr %0, null, !dbg !1534
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1530, metadata !DIExpression()), !dbg !1533
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1537
  %6 = load i32, ptr %5, align 4, !dbg !1537, !tbaa !1538
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1532, metadata !DIExpression()), !dbg !1533
  store i32 %1, ptr %5, align 4, !dbg !1539, !tbaa !1538
  ret i32 %6, !dbg !1540
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1541 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1545, metadata !DIExpression()), !dbg !1548
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1546, metadata !DIExpression()), !dbg !1548
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1547, metadata !DIExpression()), !dbg !1548
  %4 = icmp eq ptr %0, null, !dbg !1549
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1551
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !1548
  store i32 10, ptr %5, align 8, !dbg !1552, !tbaa !1488
  %6 = icmp ne ptr %1, null, !dbg !1553
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1555
  br i1 %8, label %10, label %9, !dbg !1555

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1556
  unreachable, !dbg !1556

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1557
  store ptr %1, ptr %11, align 8, !dbg !1558, !tbaa !1559
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1560
  store ptr %2, ptr %12, align 8, !dbg !1561, !tbaa !1562
  ret void, !dbg !1563
}

; Function Attrs: noreturn nounwind
declare !dbg !1564 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1569, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1570, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1571, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1572, metadata !DIExpression()), !dbg !1577
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1573, metadata !DIExpression()), !dbg !1577
  %6 = icmp eq ptr %4, null, !dbg !1578
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1578
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1574, metadata !DIExpression()), !dbg !1577
  %8 = tail call ptr @__errno_location() #40, !dbg !1579
  %9 = load i32, ptr %8, align 4, !dbg !1579, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1575, metadata !DIExpression()), !dbg !1577
  %10 = load i32, ptr %7, align 8, !dbg !1580, !tbaa !1488
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1581
  %12 = load i32, ptr %11, align 4, !dbg !1581, !tbaa !1538
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1582
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1583
  %15 = load ptr, ptr %14, align 8, !dbg !1583, !tbaa !1559
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1584
  %17 = load ptr, ptr %16, align 8, !dbg !1584, !tbaa !1562
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1585
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1576, metadata !DIExpression()), !dbg !1577
  store i32 %9, ptr %8, align 4, !dbg !1586, !tbaa !817
  ret i64 %18, !dbg !1587
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1588 {
  %10 = alloca i32, align 4, !DIAssignID !1656
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1657
  %12 = alloca i32, align 4, !DIAssignID !1658
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1659
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1660
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1634, metadata !DIExpression(), metadata !1660, metadata ptr %14, metadata !DIExpression()), !dbg !1661
  %15 = alloca i32, align 4, !DIAssignID !1662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1637, metadata !DIExpression(), metadata !1662, metadata ptr %15, metadata !DIExpression()), !dbg !1663
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1594, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1596, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1597, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1598, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1599, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1600, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1601, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1602, metadata !DIExpression()), !dbg !1664
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1665
  %17 = icmp eq i64 %16, 1, !dbg !1666
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1603, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1606, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1607, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1664
  %18 = trunc i32 %5 to i8, !dbg !1667
  %19 = lshr i8 %18, 1, !dbg !1667
  %20 = and i8 %19, 1, !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1664
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1668

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1669
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1670
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1671
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1672
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1664
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1673
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1674
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1611, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1608, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1607, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1606, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1597, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1602, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1601, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1598, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.label(metadata !1612), !dbg !1675
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1664
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
  ], !dbg !1676

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1598, metadata !DIExpression()), !dbg !1664
  br label %114, !dbg !1677

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1598, metadata !DIExpression()), !dbg !1664
  %43 = and i8 %37, 1, !dbg !1678
  %44 = icmp eq i8 %43, 0, !dbg !1678
  br i1 %44, label %45, label %114, !dbg !1677

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1680
  br i1 %46, label %114, label %47, !dbg !1683

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1680, !tbaa !826
  br label %114, !dbg !1680

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !524, metadata !DIExpression(), metadata !1658, metadata ptr %12, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1659, metadata ptr %13, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !521, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 %29, metadata !522, metadata !DIExpression()), !dbg !1684
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #37, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %49, metadata !523, metadata !DIExpression()), !dbg !1684
  %50 = icmp eq ptr %49, @.str.11.66, !dbg !1689
  br i1 %50, label %51, label %60, !dbg !1691

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1692
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1693
  call void @llvm.dbg.value(metadata ptr %13, metadata !1694, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %13, metadata !1702, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 8, metadata !1706, metadata !DIExpression()), !dbg !1707
  store i64 0, ptr %13, align 8, !dbg !1709
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1710
  %53 = icmp eq i64 %52, 3, !dbg !1712
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1713
  %57 = icmp eq i32 %29, 9, !dbg !1713
  %58 = select i1 %57, ptr @.str.10.68, ptr @.str.12.69, !dbg !1713
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1713
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1714
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1714
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1684
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1601, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.assign(metadata i1 undef, metadata !524, metadata !DIExpression(), metadata !1656, metadata ptr %10, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.assign(metadata i1 undef, metadata !525, metadata !DIExpression(), metadata !1657, metadata ptr %11, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !521, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata i32 %29, metadata !522, metadata !DIExpression()), !dbg !1715
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #37, !dbg !1717
  call void @llvm.dbg.value(metadata ptr %62, metadata !523, metadata !DIExpression()), !dbg !1715
  %63 = icmp eq ptr %62, @.str.12.69, !dbg !1718
  br i1 %63, label %64, label %73, !dbg !1719

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1720
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1721
  call void @llvm.dbg.value(metadata ptr %11, metadata !1694, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata ptr %11, metadata !1702, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i64 8, metadata !1706, metadata !DIExpression()), !dbg !1724
  store i64 0, ptr %11, align 8, !dbg !1726
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1727
  %66 = icmp eq i64 %65, 3, !dbg !1728
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1729
  %70 = icmp eq i32 %29, 9, !dbg !1729
  %71 = select i1 %70, ptr @.str.10.68, ptr @.str.12.69, !dbg !1729
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1729
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1730
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1730
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1602, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1601, metadata !DIExpression()), !dbg !1664
  %76 = and i8 %37, 1, !dbg !1731
  %77 = icmp eq i8 %76, 0, !dbg !1731
  br i1 %77, label %78, label %93, !dbg !1732

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1614, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1604, metadata !DIExpression()), !dbg !1664
  %79 = load i8, ptr %74, align 1, !dbg !1734, !tbaa !826
  %80 = icmp eq i8 %79, 0, !dbg !1736
  br i1 %80, label %93, label %81, !dbg !1736

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1614, metadata !DIExpression()), !dbg !1733
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1604, metadata !DIExpression()), !dbg !1664
  %85 = icmp ult i64 %84, %40, !dbg !1737
  br i1 %85, label %86, label %88, !dbg !1740

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1737
  store i8 %82, ptr %87, align 1, !dbg !1737, !tbaa !826
  br label %88, !dbg !1737

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1740
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1604, metadata !DIExpression()), !dbg !1664
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1741
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1614, metadata !DIExpression()), !dbg !1733
  %91 = load i8, ptr %90, align 1, !dbg !1734, !tbaa !826
  %92 = icmp eq i8 %91, 0, !dbg !1736
  br i1 %92, label %93, label %81, !dbg !1736, !llvm.loop !1742

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1606, metadata !DIExpression()), !dbg !1664
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1745
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1607, metadata !DIExpression()), !dbg !1664
  br label %114, !dbg !1746

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1664
  br label %98, !dbg !1747

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1608, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1664
  br label %98, !dbg !1748

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1672
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1608, metadata !DIExpression()), !dbg !1664
  %101 = and i8 %100, 1, !dbg !1749
  %102 = icmp eq i8 %101, 0, !dbg !1749
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1751
  br label %104, !dbg !1751

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1664
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1608, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1598, metadata !DIExpression()), !dbg !1664
  %107 = and i8 %106, 1, !dbg !1752
  %108 = icmp eq i8 %107, 0, !dbg !1752
  br i1 %108, label %109, label %114, !dbg !1754

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1755
  br i1 %110, label %114, label %111, !dbg !1758

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1755, !tbaa !826
  br label %114, !dbg !1755

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1664
  br label %114, !dbg !1759

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1760
  unreachable, !dbg !1760

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1744
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.68, %45 ], [ @.str.10.68, %47 ], [ @.str.10.68, %42 ], [ %34, %28 ], [ @.str.12.69, %109 ], [ @.str.12.69, %111 ], [ @.str.12.69, %104 ], [ @.str.10.68, %41 ], !dbg !1664
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1664
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1664
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1609, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1608, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1607, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1606, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1602, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1601, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1598, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1619, metadata !DIExpression()), !dbg !1761
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
  br label %138, !dbg !1762

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1744
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1669
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1673
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1674
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1763
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1764
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1611, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1597, metadata !DIExpression()), !dbg !1664
  %147 = icmp eq i64 %139, -1, !dbg !1765
  br i1 %147, label %148, label %152, !dbg !1766

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1767
  %150 = load i8, ptr %149, align 1, !dbg !1767, !tbaa !826
  %151 = icmp eq i8 %150, 0, !dbg !1768
  br i1 %151, label %612, label %154, !dbg !1769

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1770
  br i1 %153, label %612, label %154, !dbg !1769

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1771
  br i1 %128, label %155, label %170, !dbg !1772

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1774
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1775
  br i1 %157, label %158, label %160, !dbg !1775

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1776
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1597, metadata !DIExpression()), !dbg !1664
  br label %160, !dbg !1777

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1777
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1597, metadata !DIExpression()), !dbg !1664
  %162 = icmp ugt i64 %156, %161, !dbg !1778
  br i1 %162, label %170, label %163, !dbg !1779

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1780
  call void @llvm.dbg.value(metadata ptr %164, metadata !1781, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata ptr %119, metadata !1784, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i64 %120, metadata !1785, metadata !DIExpression()), !dbg !1786
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1788
  %166 = icmp ne i32 %165, 0, !dbg !1789
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1790
  %168 = xor i1 %166, true, !dbg !1790
  %169 = zext i1 %168 to i8, !dbg !1790
  br i1 %167, label %170, label %666, !dbg !1790

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1771
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1597, metadata !DIExpression()), !dbg !1664
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1791
  %175 = load i8, ptr %174, align 1, !dbg !1791, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1626, metadata !DIExpression()), !dbg !1771
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
  ], !dbg !1792

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1793

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1794

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1624, metadata !DIExpression()), !dbg !1771
  %179 = and i8 %144, 1, !dbg !1798
  %180 = icmp eq i8 %179, 0, !dbg !1798
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1798
  br i1 %181, label %182, label %198, !dbg !1798

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1800
  br i1 %183, label %184, label %186, !dbg !1804

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1800
  store i8 39, ptr %185, align 1, !dbg !1800, !tbaa !826
  br label %186, !dbg !1800

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1604, metadata !DIExpression()), !dbg !1664
  %188 = icmp ult i64 %187, %146, !dbg !1805
  br i1 %188, label %189, label %191, !dbg !1808

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1805
  store i8 36, ptr %190, align 1, !dbg !1805, !tbaa !826
  br label %191, !dbg !1805

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1808
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1604, metadata !DIExpression()), !dbg !1664
  %193 = icmp ult i64 %192, %146, !dbg !1809
  br i1 %193, label %194, label %196, !dbg !1812

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1809
  store i8 39, ptr %195, align 1, !dbg !1809, !tbaa !826
  br label %196, !dbg !1809

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1812
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1664
  br label %198, !dbg !1813

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1664
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1604, metadata !DIExpression()), !dbg !1664
  %201 = icmp ult i64 %199, %146, !dbg !1814
  br i1 %201, label %202, label %204, !dbg !1817

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1814
  store i8 92, ptr %203, align 1, !dbg !1814, !tbaa !826
  br label %204, !dbg !1814

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1604, metadata !DIExpression()), !dbg !1664
  br i1 %125, label %206, label %476, !dbg !1818

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1820
  %208 = icmp ult i64 %207, %171, !dbg !1821
  br i1 %208, label %209, label %465, !dbg !1822

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1823
  %211 = load i8, ptr %210, align 1, !dbg !1823, !tbaa !826
  %212 = add i8 %211, -48, !dbg !1824
  %213 = icmp ult i8 %212, 10, !dbg !1824
  br i1 %213, label %214, label %465, !dbg !1824

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1825
  br i1 %215, label %216, label %218, !dbg !1829

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1825
  store i8 48, ptr %217, align 1, !dbg !1825, !tbaa !826
  br label %218, !dbg !1825

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1829
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1604, metadata !DIExpression()), !dbg !1664
  %220 = icmp ult i64 %219, %146, !dbg !1830
  br i1 %220, label %221, label %223, !dbg !1833

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1830
  store i8 48, ptr %222, align 1, !dbg !1830, !tbaa !826
  br label %223, !dbg !1830

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1833
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1604, metadata !DIExpression()), !dbg !1664
  br label %465, !dbg !1834

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1835

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1836

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1837

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1839

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1841
  %231 = icmp ult i64 %230, %171, !dbg !1842
  br i1 %231, label %232, label %465, !dbg !1843

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1844
  %234 = load i8, ptr %233, align 1, !dbg !1844, !tbaa !826
  %235 = icmp eq i8 %234, 63, !dbg !1845
  br i1 %235, label %236, label %465, !dbg !1846

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1847
  %238 = load i8, ptr %237, align 1, !dbg !1847, !tbaa !826
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
  ], !dbg !1848

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1849

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1619, metadata !DIExpression()), !dbg !1761
  %241 = icmp ult i64 %140, %146, !dbg !1851
  br i1 %241, label %242, label %244, !dbg !1854

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1851
  store i8 63, ptr %243, align 1, !dbg !1851, !tbaa !826
  br label %244, !dbg !1851

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1604, metadata !DIExpression()), !dbg !1664
  %246 = icmp ult i64 %245, %146, !dbg !1855
  br i1 %246, label %247, label %249, !dbg !1858

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1855
  store i8 34, ptr %248, align 1, !dbg !1855, !tbaa !826
  br label %249, !dbg !1855

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1604, metadata !DIExpression()), !dbg !1664
  %251 = icmp ult i64 %250, %146, !dbg !1859
  br i1 %251, label %252, label %254, !dbg !1862

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1859
  store i8 34, ptr %253, align 1, !dbg !1859, !tbaa !826
  br label %254, !dbg !1859

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1862
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1604, metadata !DIExpression()), !dbg !1664
  %256 = icmp ult i64 %255, %146, !dbg !1863
  br i1 %256, label %257, label %259, !dbg !1866

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1863
  store i8 63, ptr %258, align 1, !dbg !1863, !tbaa !826
  br label %259, !dbg !1863

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1866
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1604, metadata !DIExpression()), !dbg !1664
  br label %465, !dbg !1867

261:                                              ; preds = %170
  br label %272, !dbg !1868

262:                                              ; preds = %170
  br label %272, !dbg !1869

263:                                              ; preds = %170
  br label %270, !dbg !1870

264:                                              ; preds = %170
  br label %270, !dbg !1871

265:                                              ; preds = %170
  br label %272, !dbg !1872

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1873

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1874

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1877

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1879

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1880
  call void @llvm.dbg.label(metadata !1627), !dbg !1881
  br i1 %133, label %272, label %655, !dbg !1882

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1880
  call void @llvm.dbg.label(metadata !1630), !dbg !1884
  br i1 %124, label %520, label %476, !dbg !1885

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1886

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1887, !tbaa !826
  %277 = icmp eq i8 %276, 0, !dbg !1889
  br i1 %277, label %278, label %465, !dbg !1890

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1891
  br i1 %279, label %280, label %465, !dbg !1893

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1625, metadata !DIExpression()), !dbg !1771
  br label %281, !dbg !1894

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1625, metadata !DIExpression()), !dbg !1771
  br i1 %133, label %465, label %655, !dbg !1895

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1625, metadata !DIExpression()), !dbg !1771
  br i1 %132, label %284, label %465, !dbg !1897

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1898

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1901
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1903
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1903
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1605, metadata !DIExpression()), !dbg !1664
  %291 = icmp ult i64 %140, %290, !dbg !1904
  br i1 %291, label %292, label %294, !dbg !1907

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1904
  store i8 39, ptr %293, align 1, !dbg !1904, !tbaa !826
  br label %294, !dbg !1904

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1604, metadata !DIExpression()), !dbg !1664
  %296 = icmp ult i64 %295, %290, !dbg !1908
  br i1 %296, label %297, label %299, !dbg !1911

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1908
  store i8 92, ptr %298, align 1, !dbg !1908, !tbaa !826
  br label %299, !dbg !1908

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1911
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1604, metadata !DIExpression()), !dbg !1664
  %301 = icmp ult i64 %300, %290, !dbg !1912
  br i1 %301, label %302, label %304, !dbg !1915

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1912
  store i8 39, ptr %303, align 1, !dbg !1912, !tbaa !826
  br label %304, !dbg !1912

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1915
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1664
  br label %465, !dbg !1916

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1917

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1631, metadata !DIExpression()), !dbg !1918
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1919
  %309 = load ptr, ptr %308, align 8, !dbg !1919, !tbaa !756
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1919
  %312 = load i16, ptr %311, align 2, !dbg !1919, !tbaa !858
  %313 = and i16 %312, 16384, !dbg !1921
  %314 = icmp ne i16 %313, 0, !dbg !1921
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1633, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1918
  br label %355, !dbg !1922

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1923
  call void @llvm.dbg.value(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1924
  call void @llvm.dbg.value(metadata ptr %14, metadata !1702, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 8, metadata !1706, metadata !DIExpression()), !dbg !1926
  store i64 0, ptr %14, align 8, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1633, metadata !DIExpression()), !dbg !1918
  %316 = icmp eq i64 %171, -1, !dbg !1929
  br i1 %316, label %317, label %319, !dbg !1931

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1932
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1597, metadata !DIExpression()), !dbg !1664
  br label %319, !dbg !1933

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1597, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1934
  %321 = sub i64 %320, %145, !dbg !1935
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1936
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1641, metadata !DIExpression()), !dbg !1663
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1937

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1918
  %324 = icmp ult i64 %145, %320, !dbg !1938
  br i1 %324, label %326, label %351, !dbg !1940

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1918
  br label %351, !dbg !1941

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1631, metadata !DIExpression()), !dbg !1918
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1943
  %330 = load i8, ptr %329, align 1, !dbg !1943, !tbaa !826
  %331 = icmp eq i8 %330, 0, !dbg !1940
  br i1 %331, label %351, label %332, !dbg !1944

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1945
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1631, metadata !DIExpression()), !dbg !1918
  %334 = add i64 %333, %145, !dbg !1946
  %335 = icmp eq i64 %333, %321, !dbg !1938
  br i1 %335, label %351, label %326, !dbg !1940, !llvm.loop !1947

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1642, metadata !DIExpression()), !dbg !1948
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1949
  %339 = and i1 %338, %132, !dbg !1949
  br i1 %339, label %340, label %347, !dbg !1949

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1642, metadata !DIExpression()), !dbg !1948
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1950
  %343 = load i8, ptr %342, align 1, !dbg !1950, !tbaa !826
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1952

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1642, metadata !DIExpression()), !dbg !1948
  %346 = icmp eq i64 %345, %322, !dbg !1954
  br i1 %346, label %347, label %340, !dbg !1955, !llvm.loop !1956

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1958, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %348, metadata !1960, metadata !DIExpression()), !dbg !1968
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1970
  %350 = icmp ne i32 %349, 0, !dbg !1971
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1631, metadata !DIExpression()), !dbg !1918
  br label %351, !dbg !1972

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1631, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1974
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1973
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1974
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1771
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1975
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1975
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1631, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1597, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1625, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1771
  %359 = icmp ult i64 %357, 2, !dbg !1976
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1977
  br i1 %361, label %461, label %362, !dbg !1977

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1978
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1650, metadata !DIExpression()), !dbg !1979
  br label %364, !dbg !1980

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1664
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1763
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1761
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1771
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1981
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1604, metadata !DIExpression()), !dbg !1664
  br i1 %360, label %417, label %371, !dbg !1982

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1987

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1624, metadata !DIExpression()), !dbg !1771
  %373 = and i8 %366, 1, !dbg !1990
  %374 = icmp eq i8 %373, 0, !dbg !1990
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1990
  br i1 %375, label %376, label %392, !dbg !1990

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1992
  br i1 %377, label %378, label %380, !dbg !1996

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1992
  store i8 39, ptr %379, align 1, !dbg !1992, !tbaa !826
  br label %380, !dbg !1992

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1604, metadata !DIExpression()), !dbg !1664
  %382 = icmp ult i64 %381, %146, !dbg !1997
  br i1 %382, label %383, label %385, !dbg !2000

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1997
  store i8 36, ptr %384, align 1, !dbg !1997, !tbaa !826
  br label %385, !dbg !1997

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !2000
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1604, metadata !DIExpression()), !dbg !1664
  %387 = icmp ult i64 %386, %146, !dbg !2001
  br i1 %387, label %388, label %390, !dbg !2004

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2001
  store i8 39, ptr %389, align 1, !dbg !2001, !tbaa !826
  br label %390, !dbg !2001

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1664
  br label %392, !dbg !2005

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1664
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1604, metadata !DIExpression()), !dbg !1664
  %395 = icmp ult i64 %393, %146, !dbg !2006
  br i1 %395, label %396, label %398, !dbg !2009

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2006
  store i8 92, ptr %397, align 1, !dbg !2006, !tbaa !826
  br label %398, !dbg !2006

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2009
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1604, metadata !DIExpression()), !dbg !1664
  %400 = icmp ult i64 %399, %146, !dbg !2010
  br i1 %400, label %401, label %405, !dbg !2013

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2010
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2010
  store i8 %403, ptr %404, align 1, !dbg !2010, !tbaa !826
  br label %405, !dbg !2010

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1604, metadata !DIExpression()), !dbg !1664
  %407 = icmp ult i64 %406, %146, !dbg !2014
  br i1 %407, label %408, label %413, !dbg !2017

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2014
  %411 = or disjoint i8 %410, 48, !dbg !2014
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2014
  store i8 %411, ptr %412, align 1, !dbg !2014, !tbaa !826
  br label %413, !dbg !2014

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2017
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1604, metadata !DIExpression()), !dbg !1664
  %415 = and i8 %370, 7, !dbg !2018
  %416 = or disjoint i8 %415, 48, !dbg !2019
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1626, metadata !DIExpression()), !dbg !1771
  br label %426, !dbg !2020

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2021
  %419 = icmp eq i8 %418, 0, !dbg !2021
  br i1 %419, label %426, label %420, !dbg !2023

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2024
  br i1 %421, label %422, label %424, !dbg !2028

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2024
  store i8 92, ptr %423, align 1, !dbg !2024, !tbaa !826
  br label %424, !dbg !2024

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2028
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1771
  br label %426, !dbg !2029

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1664
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1763
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1771
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1771
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1604, metadata !DIExpression()), !dbg !1664
  %432 = add i64 %367, 1, !dbg !2030
  %433 = icmp ugt i64 %363, %432, !dbg !2032
  br i1 %433, label %434, label %463, !dbg !2033

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2034
  %436 = icmp ne i8 %435, 0, !dbg !2034
  %437 = and i8 %430, 1, !dbg !2034
  %438 = icmp eq i8 %437, 0, !dbg !2034
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2034
  br i1 %439, label %440, label %451, !dbg !2034

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2037
  br i1 %441, label %442, label %444, !dbg !2041

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2037
  store i8 39, ptr %443, align 1, !dbg !2037, !tbaa !826
  br label %444, !dbg !2037

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2041
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1604, metadata !DIExpression()), !dbg !1664
  %446 = icmp ult i64 %445, %146, !dbg !2042
  br i1 %446, label %447, label %449, !dbg !2045

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2042
  store i8 39, ptr %448, align 1, !dbg !2042, !tbaa !826
  br label %449, !dbg !2042

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2045
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1664
  br label %451, !dbg !2046

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2047
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1604, metadata !DIExpression()), !dbg !1664
  %454 = icmp ult i64 %452, %146, !dbg !2048
  br i1 %454, label %455, label %457, !dbg !2051

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2048
  store i8 %431, ptr %456, align 1, !dbg !2048, !tbaa !826
  br label %457, !dbg !2048

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2051
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1619, metadata !DIExpression()), !dbg !1761
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2052
  %460 = load i8, ptr %459, align 1, !dbg !2052, !tbaa !826
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1626, metadata !DIExpression()), !dbg !1771
  br label %364, !dbg !2053, !llvm.loop !2054

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1625, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1597, metadata !DIExpression()), !dbg !1664
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1625, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1597, metadata !DIExpression()), !dbg !1664
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2057
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1664
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1669
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1664
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1664
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1761
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1771
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1771
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1771
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1625, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1621, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1597, metadata !DIExpression()), !dbg !1664
  br i1 %126, label %487, label %476, !dbg !2058

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
  br i1 %137, label %488, label %509, !dbg !2060

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2061

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
  %499 = lshr i8 %490, 5, !dbg !2062
  %500 = zext nneg i8 %499 to i64, !dbg !2062
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2063
  %502 = load i32, ptr %501, align 4, !dbg !2063, !tbaa !817
  %503 = and i8 %490, 31, !dbg !2064
  %504 = zext nneg i8 %503 to i32, !dbg !2064
  %505 = shl nuw i32 1, %504, !dbg !2065
  %506 = and i32 %502, %505, !dbg !2065
  %507 = icmp eq i32 %506, 0, !dbg !2065
  %508 = and i1 %172, %507, !dbg !2066
  br i1 %508, label %558, label %520, !dbg !2066

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
  br i1 %172, label %558, label %520, !dbg !2067

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2057
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1664
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1669
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1673
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1763
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2068
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1771
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1771
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1625, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1597, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.label(metadata !1653), !dbg !2069
  br i1 %131, label %530, label %659, !dbg !2070

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1624, metadata !DIExpression()), !dbg !1771
  %531 = and i8 %525, 1, !dbg !2072
  %532 = icmp eq i8 %531, 0, !dbg !2072
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2072
  br i1 %533, label %534, label %550, !dbg !2072

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2074
  br i1 %535, label %536, label %538, !dbg !2078

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2074
  store i8 39, ptr %537, align 1, !dbg !2074, !tbaa !826
  br label %538, !dbg !2074

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2078
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1604, metadata !DIExpression()), !dbg !1664
  %540 = icmp ult i64 %539, %529, !dbg !2079
  br i1 %540, label %541, label %543, !dbg !2082

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2079
  store i8 36, ptr %542, align 1, !dbg !2079, !tbaa !826
  br label %543, !dbg !2079

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2082
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1604, metadata !DIExpression()), !dbg !1664
  %545 = icmp ult i64 %544, %529, !dbg !2083
  br i1 %545, label %546, label %548, !dbg !2086

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2083
  store i8 39, ptr %547, align 1, !dbg !2083, !tbaa !826
  br label %548, !dbg !2083

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1664
  br label %550, !dbg !2087

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1771
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1604, metadata !DIExpression()), !dbg !1664
  %553 = icmp ult i64 %551, %529, !dbg !2088
  br i1 %553, label %554, label %556, !dbg !2091

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2088
  store i8 92, ptr %555, align 1, !dbg !2088, !tbaa !826
  br label %556, !dbg !2088

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1625, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1597, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.label(metadata !1654), !dbg !2092
  br label %585, !dbg !2093

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2057
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1664
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1669
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1673
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1763
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2068
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1771
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1771
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2096
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1626, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1625, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1624, metadata !DIExpression()), !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1597, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.label(metadata !1654), !dbg !2092
  %569 = and i8 %563, 1, !dbg !2093
  %570 = icmp ne i8 %569, 0, !dbg !2093
  %571 = and i8 %565, 1, !dbg !2093
  %572 = icmp eq i8 %571, 0, !dbg !2093
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2093
  br i1 %573, label %574, label %585, !dbg !2093

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2097
  br i1 %575, label %576, label %578, !dbg !2101

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2097
  store i8 39, ptr %577, align 1, !dbg !2097, !tbaa !826
  br label %578, !dbg !2097

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2101
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1604, metadata !DIExpression()), !dbg !1664
  %580 = icmp ult i64 %579, %568, !dbg !2102
  br i1 %580, label %581, label %583, !dbg !2105

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2102
  store i8 39, ptr %582, align 1, !dbg !2102, !tbaa !826
  br label %583, !dbg !2102

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1664
  br label %585, !dbg !2106

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1771
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1604, metadata !DIExpression()), !dbg !1664
  %595 = icmp ult i64 %593, %586, !dbg !2107
  br i1 %595, label %596, label %598, !dbg !2110

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2107
  store i8 %587, ptr %597, align 1, !dbg !2107, !tbaa !826
  br label %598, !dbg !2107

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1604, metadata !DIExpression()), !dbg !1664
  %600 = icmp eq i8 %588, 0, !dbg !2111
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2113
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1611, metadata !DIExpression()), !dbg !1664
  br label %602, !dbg !2114

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2057
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1664
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1669
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1673
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1674
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1763
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2068
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1619, metadata !DIExpression()), !dbg !1761
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1613, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1611, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1597, metadata !DIExpression()), !dbg !1664
  %611 = add i64 %609, 1, !dbg !2115
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1619, metadata !DIExpression()), !dbg !1761
  br label %138, !dbg !2116, !llvm.loop !2117

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1595, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1611, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1610, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1605, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1604, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1597, metadata !DIExpression()), !dbg !1664
  %613 = icmp eq i64 %140, 0, !dbg !2119
  %614 = and i1 %132, %613, !dbg !2121
  %615 = xor i1 %614, true, !dbg !2121
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2121
  br i1 %616, label %617, label %655, !dbg !2121

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2122
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2122
  br i1 %621, label %622, label %631, !dbg !2122

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2124
  %624 = icmp eq i8 %623, 0, !dbg !2124
  br i1 %624, label %627, label %625, !dbg !2127

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2128
  br label %672, !dbg !2129

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2130
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2132
  br i1 %630, label %28, label %631, !dbg !2132

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2133
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2135
  br i1 %634, label %635, label %650, !dbg !2135

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1606, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1604, metadata !DIExpression()), !dbg !1664
  %636 = load i8, ptr %119, align 1, !dbg !2136, !tbaa !826
  %637 = icmp eq i8 %636, 0, !dbg !2139
  br i1 %637, label %650, label %638, !dbg !2139

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1606, metadata !DIExpression()), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1604, metadata !DIExpression()), !dbg !1664
  %642 = icmp ult i64 %641, %146, !dbg !2140
  br i1 %642, label %643, label %645, !dbg !2143

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2140
  store i8 %639, ptr %644, align 1, !dbg !2140, !tbaa !826
  br label %645, !dbg !2140

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2143
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1604, metadata !DIExpression()), !dbg !1664
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2144
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1606, metadata !DIExpression()), !dbg !1664
  %648 = load i8, ptr %647, align 1, !dbg !2136, !tbaa !826
  %649 = icmp eq i8 %648, 0, !dbg !2139
  br i1 %649, label %650, label %638, !dbg !2139, !llvm.loop !2145

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1744
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1604, metadata !DIExpression()), !dbg !1664
  %652 = icmp ult i64 %651, %146, !dbg !2147
  br i1 %652, label %653, label %672, !dbg !2149

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2150
  store i8 0, ptr %654, align 1, !dbg !2151, !tbaa !826
  br label %672, !dbg !2150

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1655), !dbg !2152
  %657 = icmp eq i8 %123, 0, !dbg !2153
  %658 = select i1 %657, i32 2, i32 4, !dbg !2153
  br label %666, !dbg !2153

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1655), !dbg !2152
  %662 = icmp eq i32 %115, 2, !dbg !2155
  %663 = icmp eq i8 %123, 0, !dbg !2153
  %664 = select i1 %663, i32 2, i32 4, !dbg !2153
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2153
  br label %666, !dbg !2153

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1598, metadata !DIExpression()), !dbg !1664
  %670 = and i32 %5, -3, !dbg !2156
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2157
  br label %672, !dbg !2158

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2159
}

; Function Attrs: nounwind
declare !dbg !2160 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2163 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2166 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2168 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2172, metadata !DIExpression()), !dbg !2175
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2173, metadata !DIExpression()), !dbg !2175
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2174, metadata !DIExpression()), !dbg !2175
  call void @llvm.dbg.value(metadata ptr %0, metadata !2176, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i64 %1, metadata !2181, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr null, metadata !2182, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata ptr %2, metadata !2183, metadata !DIExpression()), !dbg !2189
  %4 = icmp eq ptr %2, null, !dbg !2191
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2191
  call void @llvm.dbg.value(metadata ptr %5, metadata !2184, metadata !DIExpression()), !dbg !2189
  %6 = tail call ptr @__errno_location() #40, !dbg !2192
  %7 = load i32, ptr %6, align 4, !dbg !2192, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %7, metadata !2185, metadata !DIExpression()), !dbg !2189
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2193
  %9 = load i32, ptr %8, align 4, !dbg !2193, !tbaa !1538
  %10 = or i32 %9, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i32 %10, metadata !2186, metadata !DIExpression()), !dbg !2189
  %11 = load i32, ptr %5, align 8, !dbg !2195, !tbaa !1488
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2196
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2197
  %14 = load ptr, ptr %13, align 8, !dbg !2197, !tbaa !1559
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2198
  %16 = load ptr, ptr %15, align 8, !dbg !2198, !tbaa !1562
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2199
  %18 = add i64 %17, 1, !dbg !2200
  call void @llvm.dbg.value(metadata i64 %18, metadata !2187, metadata !DIExpression()), !dbg !2189
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %19, metadata !2188, metadata !DIExpression()), !dbg !2189
  %20 = load i32, ptr %5, align 8, !dbg !2202, !tbaa !1488
  %21 = load ptr, ptr %13, align 8, !dbg !2203, !tbaa !1559
  %22 = load ptr, ptr %15, align 8, !dbg !2204, !tbaa !1562
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2205
  store i32 %7, ptr %6, align 4, !dbg !2206, !tbaa !817
  ret ptr %19, !dbg !2207
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2177 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2176, metadata !DIExpression()), !dbg !2208
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2181, metadata !DIExpression()), !dbg !2208
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2182, metadata !DIExpression()), !dbg !2208
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2183, metadata !DIExpression()), !dbg !2208
  %5 = icmp eq ptr %3, null, !dbg !2209
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2209
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2184, metadata !DIExpression()), !dbg !2208
  %7 = tail call ptr @__errno_location() #40, !dbg !2210
  %8 = load i32, ptr %7, align 4, !dbg !2210, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2185, metadata !DIExpression()), !dbg !2208
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2211
  %10 = load i32, ptr %9, align 4, !dbg !2211, !tbaa !1538
  %11 = icmp eq ptr %2, null, !dbg !2212
  %12 = zext i1 %11 to i32, !dbg !2212
  %13 = or i32 %10, %12, !dbg !2213
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2186, metadata !DIExpression()), !dbg !2208
  %14 = load i32, ptr %6, align 8, !dbg !2214, !tbaa !1488
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2215
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2216
  %17 = load ptr, ptr %16, align 8, !dbg !2216, !tbaa !1559
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2217
  %19 = load ptr, ptr %18, align 8, !dbg !2217, !tbaa !1562
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2218
  %21 = add i64 %20, 1, !dbg !2219
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2187, metadata !DIExpression()), !dbg !2208
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2220
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2188, metadata !DIExpression()), !dbg !2208
  %23 = load i32, ptr %6, align 8, !dbg !2221, !tbaa !1488
  %24 = load ptr, ptr %16, align 8, !dbg !2222, !tbaa !1559
  %25 = load ptr, ptr %18, align 8, !dbg !2223, !tbaa !1562
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2224
  store i32 %8, ptr %7, align 4, !dbg !2225, !tbaa !817
  br i1 %11, label %28, label %27, !dbg !2226

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2227, !tbaa !2229
  br label %28, !dbg !2230

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2231
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2232 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2237, !tbaa !756
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2234, metadata !DIExpression()), !dbg !2238
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2235, metadata !DIExpression()), !dbg !2239
  %2 = load i32, ptr @nslots, align 4, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2235, metadata !DIExpression()), !dbg !2239
  %3 = icmp sgt i32 %2, 1, !dbg !2240
  br i1 %3, label %4, label %6, !dbg !2242

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2240
  br label %10, !dbg !2242

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2243
  %8 = load ptr, ptr %7, align 8, !dbg !2243, !tbaa !2245
  %9 = icmp eq ptr %8, @slot0, !dbg !2247
  br i1 %9, label %17, label %16, !dbg !2248

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2235, metadata !DIExpression()), !dbg !2239
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2249
  %13 = load ptr, ptr %12, align 8, !dbg !2249, !tbaa !2245
  tail call void @free(ptr noundef %13) #37, !dbg !2250
  %14 = add nuw nsw i64 %11, 1, !dbg !2251
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2235, metadata !DIExpression()), !dbg !2239
  %15 = icmp eq i64 %14, %5, !dbg !2240
  br i1 %15, label %6, label %10, !dbg !2242, !llvm.loop !2252

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2254
  store i64 256, ptr @slotvec0, align 8, !dbg !2256, !tbaa !2257
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2258, !tbaa !2245
  br label %17, !dbg !2259

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2260
  br i1 %18, label %20, label %19, !dbg !2262

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2263
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2265, !tbaa !756
  br label %20, !dbg !2266

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2267, !tbaa !817
  ret void, !dbg !2268
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2269 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2272 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2274, metadata !DIExpression()), !dbg !2276
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2275, metadata !DIExpression()), !dbg !2276
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2277
  ret ptr %3, !dbg !2278
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2279 {
  %5 = alloca i64, align 8, !DIAssignID !2299
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2293, metadata !DIExpression(), metadata !2299, metadata ptr %5, metadata !DIExpression()), !dbg !2300
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2283, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2284, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2285, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2286, metadata !DIExpression()), !dbg !2301
  %6 = tail call ptr @__errno_location() #40, !dbg !2302
  %7 = load i32, ptr %6, align 4, !dbg !2302, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2287, metadata !DIExpression()), !dbg !2301
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2303, !tbaa !756
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2288, metadata !DIExpression()), !dbg !2301
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2289, metadata !DIExpression()), !dbg !2301
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2304
  br i1 %9, label %10, label %11, !dbg !2304

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2306
  unreachable, !dbg !2306

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2307, !tbaa !817
  %13 = icmp sgt i32 %12, %0, !dbg !2308
  br i1 %13, label %32, label %14, !dbg !2309

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2310
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2290, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2300
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2311
  %16 = sext i32 %12 to i64, !dbg !2312
  store i64 %16, ptr %5, align 8, !dbg !2313, !tbaa !2229, !DIAssignID !2314
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2293, metadata !DIExpression(), metadata !2314, metadata ptr %5, metadata !DIExpression()), !dbg !2300
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2315
  %18 = add nuw nsw i32 %0, 1, !dbg !2316
  %19 = sub i32 %18, %12, !dbg !2317
  %20 = sext i32 %19 to i64, !dbg !2318
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2319
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2288, metadata !DIExpression()), !dbg !2301
  store ptr %21, ptr @slotvec, align 8, !dbg !2320, !tbaa !756
  br i1 %15, label %22, label %23, !dbg !2321

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2322, !tbaa.struct !2324
  br label %23, !dbg !2325

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2326, !tbaa !817
  %25 = sext i32 %24 to i64, !dbg !2327
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2327
  %27 = load i64, ptr %5, align 8, !dbg !2328, !tbaa !2229
  %28 = sub nsw i64 %27, %25, !dbg !2329
  %29 = shl i64 %28, 4, !dbg !2330
  call void @llvm.dbg.value(metadata ptr %26, metadata !1702, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i32 0, metadata !1705, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata i64 %29, metadata !1706, metadata !DIExpression()), !dbg !2331
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2333
  %30 = load i64, ptr %5, align 8, !dbg !2334, !tbaa !2229
  %31 = trunc i64 %30 to i32, !dbg !2334
  store i32 %31, ptr @nslots, align 4, !dbg !2335, !tbaa !817
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2336
  br label %32, !dbg !2337

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2301
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2288, metadata !DIExpression()), !dbg !2301
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2338
  %36 = load i64, ptr %35, align 8, !dbg !2339, !tbaa !2257
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2294, metadata !DIExpression()), !dbg !2340
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2341
  %38 = load ptr, ptr %37, align 8, !dbg !2341, !tbaa !2245
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2296, metadata !DIExpression()), !dbg !2340
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2342
  %40 = load i32, ptr %39, align 4, !dbg !2342, !tbaa !1538
  %41 = or i32 %40, 1, !dbg !2343
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2297, metadata !DIExpression()), !dbg !2340
  %42 = load i32, ptr %3, align 8, !dbg !2344, !tbaa !1488
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2345
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2346
  %45 = load ptr, ptr %44, align 8, !dbg !2346, !tbaa !1559
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2347
  %47 = load ptr, ptr %46, align 8, !dbg !2347, !tbaa !1562
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2348
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2298, metadata !DIExpression()), !dbg !2340
  %49 = icmp ugt i64 %36, %48, !dbg !2349
  br i1 %49, label %60, label %50, !dbg !2351

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2352
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2294, metadata !DIExpression()), !dbg !2340
  store i64 %51, ptr %35, align 8, !dbg !2354, !tbaa !2257
  %52 = icmp eq ptr %38, @slot0, !dbg !2355
  br i1 %52, label %54, label %53, !dbg !2357

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2358
  br label %54, !dbg !2358

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2359
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2296, metadata !DIExpression()), !dbg !2340
  store ptr %55, ptr %37, align 8, !dbg !2360, !tbaa !2245
  %56 = load i32, ptr %3, align 8, !dbg !2361, !tbaa !1488
  %57 = load ptr, ptr %44, align 8, !dbg !2362, !tbaa !1559
  %58 = load ptr, ptr %46, align 8, !dbg !2363, !tbaa !1562
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2364
  br label %60, !dbg !2365

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2340
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2296, metadata !DIExpression()), !dbg !2340
  store i32 %7, ptr %6, align 4, !dbg !2366, !tbaa !817
  ret ptr %61, !dbg !2367
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2368 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2373, metadata !DIExpression()), !dbg !2375
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2374, metadata !DIExpression()), !dbg !2375
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2376
  ret ptr %4, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2378 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i32 0, metadata !2274, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata ptr %0, metadata !2275, metadata !DIExpression()), !dbg !2382
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2384
  ret ptr %2, !dbg !2385
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2386 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2390, metadata !DIExpression()), !dbg !2392
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 0, metadata !2372, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata ptr %0, metadata !2373, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.value(metadata i64 %1, metadata !2374, metadata !DIExpression()), !dbg !2393
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2395
  ret ptr %3, !dbg !2396
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2397 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2405
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2404, metadata !DIExpression(), metadata !2405, metadata ptr %4, metadata !DIExpression()), !dbg !2406
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2401, metadata !DIExpression()), !dbg !2406
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression()), !dbg !2406
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2407
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2418
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2420, !alias.scope !2408, !DIAssignID !2421
  call void @llvm.dbg.assign(metadata i8 0, metadata !2404, metadata !DIExpression(), metadata !2421, metadata ptr %4, metadata !DIExpression()), !dbg !2406
  %5 = icmp eq i32 %1, 10, !dbg !2422
  br i1 %5, label %6, label %7, !dbg !2424

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2425, !noalias !2408
  unreachable, !dbg !2425

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2426, !tbaa !1488, !alias.scope !2408, !DIAssignID !2427
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2427, metadata ptr %4, metadata !DIExpression()), !dbg !2406
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2428
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2429
  ret ptr %8, !dbg !2430
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2431 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2440
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2439, metadata !DIExpression(), metadata !2440, metadata ptr %5, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2436, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2437, metadata !DIExpression()), !dbg !2441
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2442
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443), !dbg !2446
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2417, metadata !DIExpression()), !dbg !2449
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2449, !alias.scope !2443, !DIAssignID !2450
  call void @llvm.dbg.assign(metadata i8 0, metadata !2439, metadata !DIExpression(), metadata !2450, metadata ptr %5, metadata !DIExpression()), !dbg !2441
  %6 = icmp eq i32 %1, 10, !dbg !2451
  br i1 %6, label %7, label %8, !dbg !2452

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2453, !noalias !2443
  unreachable, !dbg !2453

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2454, !tbaa !1488, !alias.scope !2443, !DIAssignID !2455
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2439, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2455, metadata ptr %5, metadata !DIExpression()), !dbg !2441
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2456
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2457
  ret ptr %9, !dbg !2458
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2459 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2465
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2463, metadata !DIExpression()), !dbg !2466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2404, metadata !DIExpression(), metadata !2465, metadata ptr %3, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2401, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %0, metadata !2402, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %1, metadata !2403, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2417, metadata !DIExpression()), !dbg !2476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2476, !alias.scope !2470, !DIAssignID !2477
  call void @llvm.dbg.assign(metadata i8 0, metadata !2404, metadata !DIExpression(), metadata !2477, metadata ptr %3, metadata !DIExpression()), !dbg !2467
  %4 = icmp eq i32 %0, 10, !dbg !2478
  br i1 %4, label %5, label %6, !dbg !2479

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2480, !noalias !2470
  unreachable, !dbg !2480

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2481, !tbaa !1488, !alias.scope !2470, !DIAssignID !2482
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2482, metadata ptr %3, metadata !DIExpression()), !dbg !2467
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2483
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2484
  ret ptr %7, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2486 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2493
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2490, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2491, metadata !DIExpression()), !dbg !2494
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2492, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2439, metadata !DIExpression(), metadata !2493, metadata ptr %4, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 0, metadata !2435, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i32 %0, metadata !2436, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata ptr %1, metadata !2437, metadata !DIExpression()), !dbg !2495
  call void @llvm.dbg.value(metadata i64 %2, metadata !2438, metadata !DIExpression()), !dbg !2495
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2497
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498), !dbg !2501
  call void @llvm.dbg.value(metadata i32 %0, metadata !2412, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2417, metadata !DIExpression()), !dbg !2504
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2504, !alias.scope !2498, !DIAssignID !2505
  call void @llvm.dbg.assign(metadata i8 0, metadata !2439, metadata !DIExpression(), metadata !2505, metadata ptr %4, metadata !DIExpression()), !dbg !2495
  %5 = icmp eq i32 %0, 10, !dbg !2506
  br i1 %5, label %6, label %7, !dbg !2507

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2508, !noalias !2498
  unreachable, !dbg !2508

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2509, !tbaa !1488, !alias.scope !2498, !DIAssignID !2510
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2439, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2510, metadata ptr %4, metadata !DIExpression()), !dbg !2495
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2511
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2512
  ret ptr %8, !dbg !2513
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2514 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2522, metadata ptr %4, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2520, metadata !DIExpression()), !dbg !2523
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2525, !tbaa.struct !2526, !DIAssignID !2527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2527, metadata ptr %4, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1505, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1506, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1508, metadata !DIExpression()), !dbg !2528
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2530
  %6 = lshr i8 %2, 5, !dbg !2531
  %7 = zext nneg i8 %6 to i64, !dbg !2531
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2532
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1509, metadata !DIExpression()), !dbg !2528
  %9 = and i8 %2, 31, !dbg !2533
  %10 = zext nneg i8 %9 to i32, !dbg !2533
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1511, metadata !DIExpression()), !dbg !2528
  %11 = load i32, ptr %8, align 4, !dbg !2534, !tbaa !817
  %12 = lshr i32 %11, %10, !dbg !2535
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1512, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2528
  %13 = and i32 %12, 1, !dbg !2536
  %14 = xor i32 %13, 1, !dbg !2536
  %15 = shl nuw i32 %14, %10, !dbg !2537
  %16 = xor i32 %15, %11, !dbg !2538
  store i32 %16, ptr %8, align 4, !dbg !2538, !tbaa !817
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2539
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2540
  ret ptr %17, !dbg !2541
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2542 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2548
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2546, metadata !DIExpression()), !dbg !2549
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2547, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2548, metadata ptr %3, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 -1, metadata !2519, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 %1, metadata !2520, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2553, !tbaa.struct !2526, !DIAssignID !2554
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2554, metadata ptr %3, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata ptr %3, metadata !1505, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1508, metadata !DIExpression()), !dbg !2555
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2557
  %5 = lshr i8 %1, 5, !dbg !2558
  %6 = zext nneg i8 %5 to i64, !dbg !2558
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2559
  call void @llvm.dbg.value(metadata ptr %7, metadata !1509, metadata !DIExpression()), !dbg !2555
  %8 = and i8 %1, 31, !dbg !2560
  %9 = zext nneg i8 %8 to i32, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %9, metadata !1511, metadata !DIExpression()), !dbg !2555
  %10 = load i32, ptr %7, align 4, !dbg !2561, !tbaa !817
  %11 = lshr i32 %10, %9, !dbg !2562
  call void @llvm.dbg.value(metadata i32 %11, metadata !1512, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2555
  %12 = and i32 %11, 1, !dbg !2563
  %13 = xor i32 %12, 1, !dbg !2563
  %14 = shl nuw i32 %13, %9, !dbg !2564
  %15 = xor i32 %14, %10, !dbg !2565
  store i32 %15, ptr %7, align 4, !dbg !2565, !tbaa !817
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2566
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2567
  ret ptr %16, !dbg !2568
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2569 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2572
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2571, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata ptr %0, metadata !2546, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i8 58, metadata !2547, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2572, metadata ptr %2, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i64 -1, metadata !2519, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !2520, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2579, !tbaa.struct !2526, !DIAssignID !2580
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2580, metadata ptr %2, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata ptr %2, metadata !1505, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8 58, metadata !1508, metadata !DIExpression()), !dbg !2581
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2583
  call void @llvm.dbg.value(metadata ptr %3, metadata !1509, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i32 26, metadata !1511, metadata !DIExpression()), !dbg !2581
  %4 = load i32, ptr %3, align 4, !dbg !2584, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %4, metadata !1512, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2581
  %5 = or i32 %4, 67108864, !dbg !2585
  store i32 %5, ptr %3, align 4, !dbg !2585, !tbaa !817
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2586
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2587
  ret ptr %6, !dbg !2588
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2589 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2593
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2591, metadata !DIExpression()), !dbg !2594
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2592, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2593, metadata ptr %3, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i64 %1, metadata !2519, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !2520, metadata !DIExpression()), !dbg !2595
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2598, !tbaa.struct !2526, !DIAssignID !2599
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2521, metadata !DIExpression(), metadata !2599, metadata ptr %3, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata ptr %3, metadata !1505, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !1508, metadata !DIExpression()), !dbg !2600
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2602
  call void @llvm.dbg.value(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 26, metadata !1511, metadata !DIExpression()), !dbg !2600
  %5 = load i32, ptr %4, align 4, !dbg !2603, !tbaa !817
  call void @llvm.dbg.value(metadata i32 %5, metadata !1512, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2600
  %6 = or i32 %5, 67108864, !dbg !2604
  store i32 %6, ptr %4, align 4, !dbg !2604, !tbaa !817
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2605
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2606
  ret ptr %7, !dbg !2607
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2608 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2614
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2613, metadata !DIExpression(), metadata !2614, metadata ptr %4, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2610, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2611, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2612, metadata !DIExpression()), !dbg !2615
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2618
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2619
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2619
  %5 = icmp eq i32 %1, 10, !dbg !2620
  br i1 %5, label %6, label %7, !dbg !2621

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2622, !noalias !2623
  unreachable, !dbg !2622

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2619
  store i32 %1, ptr %4, align 8, !dbg !2626, !tbaa.struct !2526, !DIAssignID !2627
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2626
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2626
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2613, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2627, metadata ptr %4, metadata !DIExpression()), !dbg !2615
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2613, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2628, metadata ptr %8, metadata !DIExpression()), !dbg !2615
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1505, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1507, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1508, metadata !DIExpression()), !dbg !2629
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2631
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1509, metadata !DIExpression()), !dbg !2629
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1511, metadata !DIExpression()), !dbg !2629
  %10 = load i32, ptr %9, align 4, !dbg !2632, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1512, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2629
  %11 = or i32 %10, 67108864, !dbg !2633
  store i32 %11, ptr %9, align 4, !dbg !2633, !tbaa !817, !DIAssignID !2634
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2613, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2634, metadata ptr %9, metadata !DIExpression()), !dbg !2615
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2635
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2636
  ret ptr %12, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2638 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2646
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2642, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2643, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2644, metadata !DIExpression()), !dbg !2647
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2645, metadata !DIExpression()), !dbg !2647
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2646, metadata ptr %5, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %1, metadata !2654, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %2, metadata !2655, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %3, metadata !2656, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata i64 -1, metadata !2657, metadata !DIExpression()), !dbg !2658
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2661, !tbaa.struct !2526, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2662, metadata ptr %5, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2663, metadata ptr undef, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %1, metadata !1546, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %2, metadata !1547, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !2664
  store i32 10, ptr %5, align 8, !dbg !2666, !tbaa !1488, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata i32 10, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2667, metadata ptr %5, metadata !DIExpression()), !dbg !2658
  %6 = icmp ne ptr %1, null, !dbg !2668
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2669
  br i1 %8, label %10, label %9, !dbg !2669

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2670
  unreachable, !dbg !2670

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2671
  store ptr %1, ptr %11, align 8, !dbg !2672, !tbaa !1559, !DIAssignID !2673
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2673, metadata ptr %11, metadata !DIExpression()), !dbg !2658
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2674
  store ptr %2, ptr %12, align 8, !dbg !2675, !tbaa !1562, !DIAssignID !2676
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2676, metadata ptr %12, metadata !DIExpression()), !dbg !2658
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2677
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2678
  ret ptr %13, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2649 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2680
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2680, metadata ptr %6, metadata !DIExpression()), !dbg !2681
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2653, metadata !DIExpression()), !dbg !2681
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2654, metadata !DIExpression()), !dbg !2681
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2655, metadata !DIExpression()), !dbg !2681
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2656, metadata !DIExpression()), !dbg !2681
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2657, metadata !DIExpression()), !dbg !2681
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2683, !tbaa.struct !2526, !DIAssignID !2684
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2684, metadata ptr %6, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2685, metadata ptr undef, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %6, metadata !1545, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %1, metadata !1546, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %2, metadata !1547, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata ptr %6, metadata !1545, metadata !DIExpression()), !dbg !2686
  store i32 10, ptr %6, align 8, !dbg !2688, !tbaa !1488, !DIAssignID !2689
  call void @llvm.dbg.assign(metadata i32 10, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2689, metadata ptr %6, metadata !DIExpression()), !dbg !2681
  %7 = icmp ne ptr %1, null, !dbg !2690
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2691
  br i1 %9, label %11, label %10, !dbg !2691

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2692
  unreachable, !dbg !2692

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2693
  store ptr %1, ptr %12, align 8, !dbg !2694, !tbaa !1559, !DIAssignID !2695
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2695, metadata ptr %12, metadata !DIExpression()), !dbg !2681
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2696
  store ptr %2, ptr %13, align 8, !dbg !2697, !tbaa !1562, !DIAssignID !2698
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2698, metadata ptr %13, metadata !DIExpression()), !dbg !2681
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2699
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2700
  ret ptr %14, !dbg !2701
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2702 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2709
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2706, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2710
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2708, metadata !DIExpression()), !dbg !2710
  call void @llvm.dbg.value(metadata i32 0, metadata !2642, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %0, metadata !2643, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %1, metadata !2644, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata ptr %2, metadata !2645, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2709, metadata ptr %4, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %1, metadata !2655, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %2, metadata !2656, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 -1, metadata !2657, metadata !DIExpression()), !dbg !2713
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2716, !tbaa.struct !2526, !DIAssignID !2717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2717, metadata ptr %4, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2718, metadata ptr undef, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata ptr %4, metadata !1545, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %0, metadata !1546, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %1, metadata !1547, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %4, metadata !1545, metadata !DIExpression()), !dbg !2719
  store i32 10, ptr %4, align 8, !dbg !2721, !tbaa !1488, !DIAssignID !2722
  call void @llvm.dbg.assign(metadata i32 10, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2722, metadata ptr %4, metadata !DIExpression()), !dbg !2713
  %5 = icmp ne ptr %0, null, !dbg !2723
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2724
  br i1 %7, label %9, label %8, !dbg !2724

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2725
  unreachable, !dbg !2725

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2726
  store ptr %0, ptr %10, align 8, !dbg !2727, !tbaa !1559, !DIAssignID !2728
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2728, metadata ptr %10, metadata !DIExpression()), !dbg !2713
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2729
  store ptr %1, ptr %11, align 8, !dbg !2730, !tbaa !1562, !DIAssignID !2731
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2731, metadata ptr %11, metadata !DIExpression()), !dbg !2713
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2732
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2733
  ret ptr %12, !dbg !2734
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2735 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2743
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2744
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2740, metadata !DIExpression()), !dbg !2744
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2741, metadata !DIExpression()), !dbg !2744
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2743, metadata ptr %5, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i32 0, metadata !2653, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %0, metadata !2654, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %1, metadata !2655, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %2, metadata !2656, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %3, metadata !2657, metadata !DIExpression()), !dbg !2745
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2748, !tbaa.struct !2526, !DIAssignID !2749
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2749, metadata ptr %5, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2750, metadata ptr undef, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %0, metadata !1546, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %1, metadata !1547, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.value(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !2751
  store i32 10, ptr %5, align 8, !dbg !2753, !tbaa !1488, !DIAssignID !2754
  call void @llvm.dbg.assign(metadata i32 10, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2754, metadata ptr %5, metadata !DIExpression()), !dbg !2745
  %6 = icmp ne ptr %0, null, !dbg !2755
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2756
  br i1 %8, label %10, label %9, !dbg !2756

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2757
  unreachable, !dbg !2757

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2758
  store ptr %0, ptr %11, align 8, !dbg !2759, !tbaa !1559, !DIAssignID !2760
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2760, metadata ptr %11, metadata !DIExpression()), !dbg !2745
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2761
  store ptr %1, ptr %12, align 8, !dbg !2762, !tbaa !1562, !DIAssignID !2763
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2648, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2763, metadata ptr %12, metadata !DIExpression()), !dbg !2745
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2764
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2765
  ret ptr %13, !dbg !2766
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2767 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2774
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2772, metadata !DIExpression()), !dbg !2774
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2773, metadata !DIExpression()), !dbg !2774
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2775
  ret ptr %4, !dbg !2776
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2781, metadata !DIExpression()), !dbg !2783
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata ptr %0, metadata !2772, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i64 %1, metadata !2773, metadata !DIExpression()), !dbg !2784
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2786
  ret ptr %3, !dbg !2787
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2788 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2792, metadata !DIExpression()), !dbg !2794
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2793, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %0, metadata !2771, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata ptr %1, metadata !2772, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 -1, metadata !2773, metadata !DIExpression()), !dbg !2795
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2797
  ret ptr %3, !dbg !2798
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2799 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2803, metadata !DIExpression()), !dbg !2804
  call void @llvm.dbg.value(metadata i32 0, metadata !2792, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata ptr %0, metadata !2793, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i32 0, metadata !2771, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata ptr %0, metadata !2772, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i64 -1, metadata !2773, metadata !DIExpression()), !dbg !2807
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2809
  ret ptr %2, !dbg !2810
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2811 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2851, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2852, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2853, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2854, metadata !DIExpression()), !dbg !2856
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2855, metadata !DIExpression()), !dbg !2856
  %7 = icmp eq ptr %1, null, !dbg !2857
  br i1 %7, label %10, label %8, !dbg !2859

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2860
  br label %12, !dbg !2860

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.77, ptr noundef %2, ptr noundef %3) #37, !dbg !2861
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.3.79, i32 noundef 5) #37, !dbg !2862
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2862
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2863
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.5.81, i32 noundef 5) #37, !dbg !2864
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.82) #37, !dbg !2864
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2865
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
  ], !dbg !2866

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.7.83, i32 noundef 5) #37, !dbg !2867
  %21 = load ptr, ptr %4, align 8, !dbg !2867, !tbaa !756
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2867
  br label %147, !dbg !2869

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.8.84, i32 noundef 5) #37, !dbg !2870
  %25 = load ptr, ptr %4, align 8, !dbg !2870, !tbaa !756
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2870
  %27 = load ptr, ptr %26, align 8, !dbg !2870, !tbaa !756
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2870
  br label %147, !dbg !2871

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.9.85, i32 noundef 5) #37, !dbg !2872
  %31 = load ptr, ptr %4, align 8, !dbg !2872, !tbaa !756
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2872
  %33 = load ptr, ptr %32, align 8, !dbg !2872, !tbaa !756
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2872
  %35 = load ptr, ptr %34, align 8, !dbg !2872, !tbaa !756
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2872
  br label %147, !dbg !2873

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.10.86, i32 noundef 5) #37, !dbg !2874
  %39 = load ptr, ptr %4, align 8, !dbg !2874, !tbaa !756
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2874
  %41 = load ptr, ptr %40, align 8, !dbg !2874, !tbaa !756
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2874
  %43 = load ptr, ptr %42, align 8, !dbg !2874, !tbaa !756
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2874
  %45 = load ptr, ptr %44, align 8, !dbg !2874, !tbaa !756
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2874
  br label %147, !dbg !2875

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.11.87, i32 noundef 5) #37, !dbg !2876
  %49 = load ptr, ptr %4, align 8, !dbg !2876, !tbaa !756
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2876
  %51 = load ptr, ptr %50, align 8, !dbg !2876, !tbaa !756
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2876
  %53 = load ptr, ptr %52, align 8, !dbg !2876, !tbaa !756
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2876
  %55 = load ptr, ptr %54, align 8, !dbg !2876, !tbaa !756
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2876
  %57 = load ptr, ptr %56, align 8, !dbg !2876, !tbaa !756
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2876
  br label %147, !dbg !2877

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.12.88, i32 noundef 5) #37, !dbg !2878
  %61 = load ptr, ptr %4, align 8, !dbg !2878, !tbaa !756
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2878
  %63 = load ptr, ptr %62, align 8, !dbg !2878, !tbaa !756
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2878
  %65 = load ptr, ptr %64, align 8, !dbg !2878, !tbaa !756
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2878
  %67 = load ptr, ptr %66, align 8, !dbg !2878, !tbaa !756
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2878
  %69 = load ptr, ptr %68, align 8, !dbg !2878, !tbaa !756
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2878
  %71 = load ptr, ptr %70, align 8, !dbg !2878, !tbaa !756
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2878
  br label %147, !dbg !2879

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.13.89, i32 noundef 5) #37, !dbg !2880
  %75 = load ptr, ptr %4, align 8, !dbg !2880, !tbaa !756
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2880
  %77 = load ptr, ptr %76, align 8, !dbg !2880, !tbaa !756
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2880
  %79 = load ptr, ptr %78, align 8, !dbg !2880, !tbaa !756
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2880
  %81 = load ptr, ptr %80, align 8, !dbg !2880, !tbaa !756
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2880
  %83 = load ptr, ptr %82, align 8, !dbg !2880, !tbaa !756
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2880
  %85 = load ptr, ptr %84, align 8, !dbg !2880, !tbaa !756
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2880
  %87 = load ptr, ptr %86, align 8, !dbg !2880, !tbaa !756
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2880
  br label %147, !dbg !2881

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.14.90, i32 noundef 5) #37, !dbg !2882
  %91 = load ptr, ptr %4, align 8, !dbg !2882, !tbaa !756
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2882
  %93 = load ptr, ptr %92, align 8, !dbg !2882, !tbaa !756
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2882
  %95 = load ptr, ptr %94, align 8, !dbg !2882, !tbaa !756
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2882
  %97 = load ptr, ptr %96, align 8, !dbg !2882, !tbaa !756
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2882
  %99 = load ptr, ptr %98, align 8, !dbg !2882, !tbaa !756
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2882
  %101 = load ptr, ptr %100, align 8, !dbg !2882, !tbaa !756
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2882
  %103 = load ptr, ptr %102, align 8, !dbg !2882, !tbaa !756
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2882
  %105 = load ptr, ptr %104, align 8, !dbg !2882, !tbaa !756
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2882
  br label %147, !dbg !2883

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.15.91, i32 noundef 5) #37, !dbg !2884
  %109 = load ptr, ptr %4, align 8, !dbg !2884, !tbaa !756
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2884
  %111 = load ptr, ptr %110, align 8, !dbg !2884, !tbaa !756
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2884
  %113 = load ptr, ptr %112, align 8, !dbg !2884, !tbaa !756
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2884
  %115 = load ptr, ptr %114, align 8, !dbg !2884, !tbaa !756
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2884
  %117 = load ptr, ptr %116, align 8, !dbg !2884, !tbaa !756
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2884
  %119 = load ptr, ptr %118, align 8, !dbg !2884, !tbaa !756
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2884
  %121 = load ptr, ptr %120, align 8, !dbg !2884, !tbaa !756
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2884
  %123 = load ptr, ptr %122, align 8, !dbg !2884, !tbaa !756
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2884
  %125 = load ptr, ptr %124, align 8, !dbg !2884, !tbaa !756
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2884
  br label %147, !dbg !2885

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.16.92, i32 noundef 5) #37, !dbg !2886
  %129 = load ptr, ptr %4, align 8, !dbg !2886, !tbaa !756
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2886
  %131 = load ptr, ptr %130, align 8, !dbg !2886, !tbaa !756
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2886
  %133 = load ptr, ptr %132, align 8, !dbg !2886, !tbaa !756
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2886
  %135 = load ptr, ptr %134, align 8, !dbg !2886, !tbaa !756
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2886
  %137 = load ptr, ptr %136, align 8, !dbg !2886, !tbaa !756
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2886
  %139 = load ptr, ptr %138, align 8, !dbg !2886, !tbaa !756
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2886
  %141 = load ptr, ptr %140, align 8, !dbg !2886, !tbaa !756
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2886
  %143 = load ptr, ptr %142, align 8, !dbg !2886, !tbaa !756
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2886
  %145 = load ptr, ptr %144, align 8, !dbg !2886, !tbaa !756
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2886
  br label %147, !dbg !2887

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2888
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2889 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2894, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2895, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2896, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2897, metadata !DIExpression()), !dbg !2899
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2898, metadata !DIExpression()), !dbg !2899
  br label %6, !dbg !2900

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2902
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2898, metadata !DIExpression()), !dbg !2899
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2903
  %9 = load ptr, ptr %8, align 8, !dbg !2903, !tbaa !756
  %10 = icmp eq ptr %9, null, !dbg !2905
  %11 = add i64 %7, 1, !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2898, metadata !DIExpression()), !dbg !2899
  br i1 %10, label %12, label %6, !dbg !2905, !llvm.loop !2907

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2909
  ret void, !dbg !2910
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2911 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2930
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2928, metadata !DIExpression(), metadata !2930, metadata ptr %6, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2925, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2926, metadata !DIExpression()), !dbg !2931
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2932
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2927, metadata !DIExpression()), !dbg !2931
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2927, metadata !DIExpression()), !dbg !2931
  %10 = icmp ult i32 %9, 41, !dbg !2933
  br i1 %10, label %11, label %16, !dbg !2933

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2933
  %13 = zext nneg i32 %9 to i64, !dbg !2933
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2933
  %15 = add nuw nsw i32 %9, 8, !dbg !2933
  store i32 %15, ptr %4, align 8, !dbg !2933
  br label %19, !dbg !2933

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2933
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2933
  store ptr %18, ptr %7, align 8, !dbg !2933
  br label %19, !dbg !2933

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2933
  %22 = load ptr, ptr %21, align 8, !dbg !2933
  store ptr %22, ptr %6, align 16, !dbg !2936, !tbaa !756
  %23 = icmp eq ptr %22, null, !dbg !2937
  br i1 %23, label %128, label %24, !dbg !2938

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2927, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2927, metadata !DIExpression()), !dbg !2931
  %25 = icmp ult i32 %20, 41, !dbg !2933
  br i1 %25, label %29, label %26, !dbg !2933

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2933
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2933
  store ptr %28, ptr %7, align 8, !dbg !2933
  br label %34, !dbg !2933

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2933
  %31 = zext nneg i32 %20 to i64, !dbg !2933
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2933
  %33 = add nuw nsw i32 %20, 8, !dbg !2933
  store i32 %33, ptr %4, align 8, !dbg !2933
  br label %34, !dbg !2933

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2933
  %37 = load ptr, ptr %36, align 8, !dbg !2933
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2939
  store ptr %37, ptr %38, align 8, !dbg !2936, !tbaa !756
  %39 = icmp eq ptr %37, null, !dbg !2937
  br i1 %39, label %128, label %40, !dbg !2938

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2927, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2927, metadata !DIExpression()), !dbg !2931
  %41 = icmp ult i32 %35, 41, !dbg !2933
  br i1 %41, label %45, label %42, !dbg !2933

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2933
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2933
  store ptr %44, ptr %7, align 8, !dbg !2933
  br label %50, !dbg !2933

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2933
  %47 = zext nneg i32 %35 to i64, !dbg !2933
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2933
  %49 = add nuw nsw i32 %35, 8, !dbg !2933
  store i32 %49, ptr %4, align 8, !dbg !2933
  br label %50, !dbg !2933

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2933
  %53 = load ptr, ptr %52, align 8, !dbg !2933
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2939
  store ptr %53, ptr %54, align 16, !dbg !2936, !tbaa !756
  %55 = icmp eq ptr %53, null, !dbg !2937
  br i1 %55, label %128, label %56, !dbg !2938

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2927, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2927, metadata !DIExpression()), !dbg !2931
  %57 = icmp ult i32 %51, 41, !dbg !2933
  br i1 %57, label %61, label %58, !dbg !2933

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2933
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2933
  store ptr %60, ptr %7, align 8, !dbg !2933
  br label %66, !dbg !2933

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2933
  %63 = zext nneg i32 %51 to i64, !dbg !2933
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2933
  %65 = add nuw nsw i32 %51, 8, !dbg !2933
  store i32 %65, ptr %4, align 8, !dbg !2933
  br label %66, !dbg !2933

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2933
  %69 = load ptr, ptr %68, align 8, !dbg !2933
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2939
  store ptr %69, ptr %70, align 8, !dbg !2936, !tbaa !756
  %71 = icmp eq ptr %69, null, !dbg !2937
  br i1 %71, label %128, label %72, !dbg !2938

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2927, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2927, metadata !DIExpression()), !dbg !2931
  %73 = icmp ult i32 %67, 41, !dbg !2933
  br i1 %73, label %77, label %74, !dbg !2933

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2933
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2933
  store ptr %76, ptr %7, align 8, !dbg !2933
  br label %82, !dbg !2933

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2933
  %79 = zext nneg i32 %67 to i64, !dbg !2933
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2933
  %81 = add nuw nsw i32 %67, 8, !dbg !2933
  store i32 %81, ptr %4, align 8, !dbg !2933
  br label %82, !dbg !2933

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2933
  %85 = load ptr, ptr %84, align 8, !dbg !2933
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2939
  store ptr %85, ptr %86, align 16, !dbg !2936, !tbaa !756
  %87 = icmp eq ptr %85, null, !dbg !2937
  br i1 %87, label %128, label %88, !dbg !2938

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2927, metadata !DIExpression()), !dbg !2931
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2927, metadata !DIExpression()), !dbg !2931
  %89 = icmp ult i32 %83, 41, !dbg !2933
  br i1 %89, label %93, label %90, !dbg !2933

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2933
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2933
  store ptr %92, ptr %7, align 8, !dbg !2933
  br label %98, !dbg !2933

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2933
  %95 = zext nneg i32 %83 to i64, !dbg !2933
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2933
  %97 = add nuw nsw i32 %83, 8, !dbg !2933
  store i32 %97, ptr %4, align 8, !dbg !2933
  br label %98, !dbg !2933

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2933
  %100 = load ptr, ptr %99, align 8, !dbg !2933
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2939
  store ptr %100, ptr %101, align 8, !dbg !2936, !tbaa !756
  %102 = icmp eq ptr %100, null, !dbg !2937
  br i1 %102, label %128, label %103, !dbg !2938

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2927, metadata !DIExpression()), !dbg !2931
  %104 = load ptr, ptr %7, align 8, !dbg !2933
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2933
  store ptr %105, ptr %7, align 8, !dbg !2933
  %106 = load ptr, ptr %104, align 8, !dbg !2933
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2939
  store ptr %106, ptr %107, align 16, !dbg !2936, !tbaa !756
  %108 = icmp eq ptr %106, null, !dbg !2937
  br i1 %108, label %128, label %109, !dbg !2938

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2927, metadata !DIExpression()), !dbg !2931
  %110 = load ptr, ptr %7, align 8, !dbg !2933
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2933
  store ptr %111, ptr %7, align 8, !dbg !2933
  %112 = load ptr, ptr %110, align 8, !dbg !2933
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2939
  store ptr %112, ptr %113, align 8, !dbg !2936, !tbaa !756
  %114 = icmp eq ptr %112, null, !dbg !2937
  br i1 %114, label %128, label %115, !dbg !2938

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2927, metadata !DIExpression()), !dbg !2931
  %116 = load ptr, ptr %7, align 8, !dbg !2933
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2933
  store ptr %117, ptr %7, align 8, !dbg !2933
  %118 = load ptr, ptr %116, align 8, !dbg !2933
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2939
  store ptr %118, ptr %119, align 16, !dbg !2936, !tbaa !756
  %120 = icmp eq ptr %118, null, !dbg !2937
  br i1 %120, label %128, label %121, !dbg !2938

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2927, metadata !DIExpression()), !dbg !2931
  %122 = load ptr, ptr %7, align 8, !dbg !2933
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2933
  store ptr %123, ptr %7, align 8, !dbg !2933
  %124 = load ptr, ptr %122, align 8, !dbg !2933
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2939
  store ptr %124, ptr %125, align 8, !dbg !2936, !tbaa !756
  %126 = icmp eq ptr %124, null, !dbg !2937
  %127 = select i1 %126, i64 9, i64 10, !dbg !2938
  br label %128, !dbg !2938

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2940
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2941
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2942
  ret void, !dbg !2942
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2943 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2956
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2951, metadata !DIExpression(), metadata !2956, metadata ptr %5, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2947, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2948, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2949, metadata !DIExpression()), !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2950, metadata !DIExpression()), !dbg !2957
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2958
  call void @llvm.va_start(ptr nonnull %5), !dbg !2959
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2960
  call void @llvm.va_end(ptr nonnull %5), !dbg !2961
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2962
  ret void, !dbg !2962
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2963 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2964, !tbaa !756
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %1), !dbg !2964
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.17.97, i32 noundef 5) #37, !dbg !2965
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.98) #37, !dbg !2965
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.19.99, i32 noundef 5) #37, !dbg !2966
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !2966
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.22.100, i32 noundef 5) #37, !dbg !2967
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2967
  ret void, !dbg !2968
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2969 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2974, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !2977
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2976, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %2, metadata !2982, metadata !DIExpression()), !dbg !2983
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !2991
  %5 = icmp eq ptr %4, null, !dbg !2993
  br i1 %5, label %6, label %7, !dbg !2995

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2996
  unreachable, !dbg !2996

7:                                                ; preds = %3
  ret ptr %4, !dbg !2997
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2979 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()), !dbg !2998
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2982, metadata !DIExpression()), !dbg !2998
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2999
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !3000
  %5 = icmp eq ptr %4, null, !dbg !3002
  br i1 %5, label %6, label %7, !dbg !3003

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3004
  unreachable, !dbg !3004

7:                                                ; preds = %3
  ret ptr %4, !dbg !3005
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3006 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3010, metadata !DIExpression()), !dbg !3011
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3012
  call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !3013
  %3 = icmp eq ptr %2, null, !dbg !3015
  br i1 %3, label %4, label %5, !dbg !3016

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3017
  unreachable, !dbg !3017

5:                                                ; preds = %1
  ret ptr %2, !dbg !3018
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3019 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3020 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.value(metadata i64 %0, metadata !3026, metadata !DIExpression()), !dbg !3030
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !3033
  %3 = icmp eq ptr %2, null, !dbg !3035
  br i1 %3, label %4, label %5, !dbg !3036

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3037
  unreachable, !dbg !3037

5:                                                ; preds = %1
  ret ptr %2, !dbg !3038
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3039 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %0, metadata !3010, metadata !DIExpression()), !dbg !3045
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3047
  call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !3048
  %3 = icmp eq ptr %2, null, !dbg !3050
  br i1 %3, label %4, label %5, !dbg !3051

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3052
  unreachable, !dbg !3052

5:                                                ; preds = %1
  ret ptr %2, !dbg !3053
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3054 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3060
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3066
  call void @llvm.dbg.value(metadata i64 %1, metadata !3065, metadata !DIExpression()), !dbg !3066
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3068
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3069
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !3070
  %5 = icmp eq ptr %4, null, !dbg !3072
  br i1 %5, label %6, label %7, !dbg !3073

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3074
  unreachable, !dbg !3074

7:                                                ; preds = %2
  ret ptr %4, !dbg !3075
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3076 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %0, metadata !3084, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata i64 %1, metadata !3087, metadata !DIExpression()), !dbg !3088
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !3065, metadata !DIExpression()), !dbg !3090
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3092
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3093
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !3094
  %5 = icmp eq ptr %4, null, !dbg !3096
  br i1 %5, label %6, label %7, !dbg !3097

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3098
  unreachable, !dbg !3098

7:                                                ; preds = %2
  ret ptr %4, !dbg !3099
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3100 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3104, metadata !DIExpression()), !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata ptr %0, metadata !3108, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %1, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata i64 %2, metadata !3112, metadata !DIExpression()), !dbg !3113
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3115
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !3116
  %5 = icmp eq ptr %4, null, !dbg !3118
  br i1 %5, label %6, label %7, !dbg !3119

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3120
  unreachable, !dbg !3120

7:                                                ; preds = %3
  ret ptr %4, !dbg !3121
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3122 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata ptr null, metadata !2978, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %1, metadata !2982, metadata !DIExpression()), !dbg !3129
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3132
  %4 = icmp eq ptr %3, null, !dbg !3134
  br i1 %4, label %5, label %6, !dbg !3135

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3136
  unreachable, !dbg !3136

6:                                                ; preds = %2
  ret ptr %3, !dbg !3137
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3138 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3142, metadata !DIExpression()), !dbg !3144
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3143, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr null, metadata !3104, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %0, metadata !3105, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata ptr null, metadata !3108, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %0, metadata !3111, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i64 %1, metadata !3112, metadata !DIExpression()), !dbg !3147
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3149
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3150
  %4 = icmp eq ptr %3, null, !dbg !3152
  br i1 %4, label %5, label %6, !dbg !3153

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3154
  unreachable, !dbg !3154

6:                                                ; preds = %2
  ret ptr %3, !dbg !3155
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3156 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3160, metadata !DIExpression()), !dbg !3162
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3161, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata ptr %0, metadata !691, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %1, metadata !692, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 1, metadata !693, metadata !DIExpression()), !dbg !3163
  %3 = load i64, ptr %1, align 8, !dbg !3165, !tbaa !2229
  call void @llvm.dbg.value(metadata i64 %3, metadata !694, metadata !DIExpression()), !dbg !3163
  %4 = icmp eq ptr %0, null, !dbg !3166
  br i1 %4, label %5, label %8, !dbg !3168

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3169
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3172
  br label %15, !dbg !3172

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3173
  %10 = add nuw i64 %9, 1, !dbg !3173
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3173
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3173
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %13, metadata !694, metadata !DIExpression()), !dbg !3163
  br i1 %12, label %14, label %15, !dbg !3176

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3177
  unreachable, !dbg !3177

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3163
  call void @llvm.dbg.value(metadata i64 %16, metadata !694, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %16, metadata !2981, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 1, metadata !2982, metadata !DIExpression()), !dbg !3178
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3180
  call void @llvm.dbg.value(metadata ptr %17, metadata !2986, metadata !DIExpression()), !dbg !3181
  %18 = icmp eq ptr %17, null, !dbg !3183
  br i1 %18, label %19, label %20, !dbg !3184

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3185
  unreachable, !dbg !3185

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !691, metadata !DIExpression()), !dbg !3163
  store i64 %16, ptr %1, align 8, !dbg !3186, !tbaa !2229
  ret ptr %17, !dbg !3187
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !686 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !691, metadata !DIExpression()), !dbg !3188
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !692, metadata !DIExpression()), !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !693, metadata !DIExpression()), !dbg !3188
  %4 = load i64, ptr %1, align 8, !dbg !3189, !tbaa !2229
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !694, metadata !DIExpression()), !dbg !3188
  %5 = icmp eq ptr %0, null, !dbg !3190
  br i1 %5, label %6, label %13, !dbg !3191

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3192
  br i1 %7, label %8, label %20, !dbg !3193

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !694, metadata !DIExpression()), !dbg !3188
  %10 = icmp ugt i64 %2, 128, !dbg !3196
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !694, metadata !DIExpression()), !dbg !3188
  br label %20, !dbg !3198

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3199
  %15 = add nuw i64 %14, 1, !dbg !3199
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3199
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3199
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3199
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !694, metadata !DIExpression()), !dbg !3188
  br i1 %17, label %19, label %20, !dbg !3200

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3201
  unreachable, !dbg !3201

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !694, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata ptr %0, metadata !2978, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %21, metadata !2981, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %2, metadata !2982, metadata !DIExpression()), !dbg !3202
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3204
  call void @llvm.dbg.value(metadata ptr %22, metadata !2986, metadata !DIExpression()), !dbg !3205
  %23 = icmp eq ptr %22, null, !dbg !3207
  br i1 %23, label %24, label %25, !dbg !3208

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3209
  unreachable, !dbg !3209

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !691, metadata !DIExpression()), !dbg !3188
  store i64 %21, ptr %1, align 8, !dbg !3210, !tbaa !2229
  ret ptr %22, !dbg !3211
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !698 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !707, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !708, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !709, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !710, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !711, metadata !DIExpression()), !dbg !3212
  %6 = load i64, ptr %1, align 8, !dbg !3213, !tbaa !2229
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !712, metadata !DIExpression()), !dbg !3212
  %7 = ashr i64 %6, 1, !dbg !3214
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3214
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3214
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !713, metadata !DIExpression()), !dbg !3212
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3216
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !713, metadata !DIExpression()), !dbg !3212
  %12 = icmp sgt i64 %3, -1, !dbg !3217
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3219
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !713, metadata !DIExpression()), !dbg !3212
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3220
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3220
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !714, metadata !DIExpression()), !dbg !3212
  %18 = icmp slt i64 %17, 128, !dbg !3220
  %19 = select i1 %18, i64 128, i64 0, !dbg !3220
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3220
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !715, metadata !DIExpression()), !dbg !3212
  %21 = icmp eq i64 %20, 0, !dbg !3221
  br i1 %21, label %26, label %22, !dbg !3223

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3224
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !713, metadata !DIExpression()), !dbg !3212
  %24 = srem i64 %20, %4, !dbg !3226
  %25 = sub nsw i64 %20, %24, !dbg !3227
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !714, metadata !DIExpression()), !dbg !3212
  br label %26, !dbg !3228

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3212
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !714, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !713, metadata !DIExpression()), !dbg !3212
  %29 = icmp eq ptr %0, null, !dbg !3229
  br i1 %29, label %30, label %31, !dbg !3231

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3232, !tbaa !2229
  br label %31, !dbg !3233

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3234
  %33 = icmp slt i64 %32, %2, !dbg !3236
  br i1 %33, label %34, label %46, !dbg !3237

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3238
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3238
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !713, metadata !DIExpression()), !dbg !3212
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3239
  br i1 %40, label %45, label %41, !dbg !3239

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3240
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3240
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3240
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !714, metadata !DIExpression()), !dbg !3212
  br i1 %43, label %45, label %46, !dbg !3241

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3242
  unreachable, !dbg !3242

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3212
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !714, metadata !DIExpression()), !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !713, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %48, metadata !3059, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata ptr %0, metadata !3061, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %48, metadata !3065, metadata !DIExpression()), !dbg !3245
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3247
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3248
  call void @llvm.dbg.value(metadata ptr %50, metadata !2986, metadata !DIExpression()), !dbg !3249
  %51 = icmp eq ptr %50, null, !dbg !3251
  br i1 %51, label %52, label %53, !dbg !3252

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3253
  unreachable, !dbg !3253

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !707, metadata !DIExpression()), !dbg !3212
  store i64 %47, ptr %1, align 8, !dbg !3254, !tbaa !2229
  ret ptr %50, !dbg !3255
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3256 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3258, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 %0, metadata !3260, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 1, metadata !3263, metadata !DIExpression()), !dbg !3264
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !3267
  %3 = icmp eq ptr %2, null, !dbg !3269
  br i1 %3, label %4, label %5, !dbg !3270

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3271
  unreachable, !dbg !3271

5:                                                ; preds = %1
  ret ptr %2, !dbg !3272
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3273 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3261 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3260, metadata !DIExpression()), !dbg !3274
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3274
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3275
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3276
  %4 = icmp eq ptr %3, null, !dbg !3278
  br i1 %4, label %5, label %6, !dbg !3279

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3280
  unreachable, !dbg !3280

6:                                                ; preds = %2
  ret ptr %3, !dbg !3281
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3282 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 1, metadata !3289, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 1, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 1, metadata !3295, metadata !DIExpression()), !dbg !3296
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3298
  call void @llvm.dbg.value(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !3299
  %3 = icmp eq ptr %2, null, !dbg !3301
  br i1 %3, label %4, label %5, !dbg !3302

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3303
  unreachable, !dbg !3303

5:                                                ; preds = %1
  ret ptr %2, !dbg !3304
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3287 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3286, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3289, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %0, metadata !3292, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3306
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3309
  %4 = icmp eq ptr %3, null, !dbg !3311
  br i1 %4, label %5, label %6, !dbg !3312

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3313
  unreachable, !dbg !3313

6:                                                ; preds = %2
  ret ptr %3, !dbg !3314
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3315 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3321
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3320, metadata !DIExpression()), !dbg !3321
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3322
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3325
  %4 = icmp eq ptr %3, null, !dbg !3327
  br i1 %4, label %5, label %6, !dbg !3328

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3329
  unreachable, !dbg !3329

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata ptr %0, metadata !3336, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3340
  ret ptr %3, !dbg !3341
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3342 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3346, metadata !DIExpression()), !dbg !3348
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3351
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3353
  call void @llvm.dbg.value(metadata ptr %3, metadata !2986, metadata !DIExpression()), !dbg !3354
  %4 = icmp eq ptr %3, null, !dbg !3356
  br i1 %4, label %5, label %6, !dbg !3357

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3358
  unreachable, !dbg !3358

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata ptr %0, metadata !3336, metadata !DIExpression()), !dbg !3359
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3359
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3361
  ret ptr %3, !dbg !3362
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3363 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3367, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3368, metadata !DIExpression()), !dbg !3370
  %3 = add nsw i64 %1, 1, !dbg !3371
  call void @llvm.dbg.value(metadata i64 %3, metadata !3024, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %3, metadata !3026, metadata !DIExpression()), !dbg !3374
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3376
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !3377
  %5 = icmp eq ptr %4, null, !dbg !3379
  br i1 %5, label %6, label %7, !dbg !3380

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3381
  unreachable, !dbg !3381

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3369, metadata !DIExpression()), !dbg !3370
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3382
  store i8 0, ptr %8, align 1, !dbg !3383, !tbaa !826
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata ptr %0, metadata !3336, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i64 %1, metadata !3337, metadata !DIExpression()), !dbg !3384
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3386
  ret ptr %4, !dbg !3387
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3388 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3390, metadata !DIExpression()), !dbg !3391
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3392
  %3 = add i64 %2, 1, !dbg !3393
  call void @llvm.dbg.value(metadata ptr %0, metadata !3319, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %3, metadata !3320, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %3, metadata !3010, metadata !DIExpression()), !dbg !3396
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3398
  call void @llvm.dbg.value(metadata ptr %4, metadata !2986, metadata !DIExpression()), !dbg !3399
  %5 = icmp eq ptr %4, null, !dbg !3401
  br i1 %5, label %6, label %7, !dbg !3402

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3403
  unreachable, !dbg !3403

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3330, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata ptr %0, metadata !3336, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.value(metadata i64 %3, metadata !3337, metadata !DIExpression()), !dbg !3404
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3406
  ret ptr %4, !dbg !3407
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3408 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3413, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3410, metadata !DIExpression()), !dbg !3414
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.111, ptr noundef nonnull @.str.2.112, i32 noundef 5) #37, !dbg !3413
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.113, ptr noundef %2) #37, !dbg !3413
  %3 = icmp eq i32 %1, 0, !dbg !3413
  tail call void @llvm.assume(i1 %3), !dbg !3413
  tail call void @abort() #39, !dbg !3415
  unreachable, !dbg !3415
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3416 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3454, metadata !DIExpression()), !dbg !3459
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3460
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3455, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3459
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3461, metadata !DIExpression()), !dbg !3464
  %3 = load i32, ptr %0, align 8, !dbg !3466, !tbaa !3467
  %4 = and i32 %3, 32, !dbg !3468
  %5 = icmp eq i32 %4, 0, !dbg !3468
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3457, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3459
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3469
  %7 = icmp eq i32 %6, 0, !dbg !3470
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3458, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3459
  br i1 %5, label %8, label %18, !dbg !3471

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3473
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3455, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3459
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3474
  %11 = xor i1 %7, true, !dbg !3474
  %12 = sext i1 %11 to i32, !dbg !3474
  br i1 %10, label %21, label %13, !dbg !3474

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3475
  %15 = load i32, ptr %14, align 4, !dbg !3475, !tbaa !817
  %16 = icmp ne i32 %15, 9, !dbg !3476
  %17 = sext i1 %16 to i32, !dbg !3477
  br label %21, !dbg !3477

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3478

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3480
  store i32 0, ptr %20, align 4, !dbg !3482, !tbaa !817
  br label %21, !dbg !3480

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3459
  ret i32 %22, !dbg !3483
}

; Function Attrs: nounwind
declare !dbg !3484 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3488 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3526, metadata !DIExpression()), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3527, metadata !DIExpression()), !dbg !3530
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3528, metadata !DIExpression()), !dbg !3530
  %3 = icmp slt i32 %2, 0, !dbg !3532
  br i1 %3, label %4, label %6, !dbg !3534

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3535
  br label %24, !dbg !3536

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3537
  %8 = icmp eq i32 %7, 0, !dbg !3537
  br i1 %8, label %13, label %9, !dbg !3539

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3540
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3541
  %12 = icmp eq i64 %11, -1, !dbg !3542
  br i1 %12, label %16, label %13, !dbg !3543

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3544
  %15 = icmp eq i32 %14, 0, !dbg !3544
  br i1 %15, label %16, label %18, !dbg !3545

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3527, metadata !DIExpression()), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3529, metadata !DIExpression()), !dbg !3530
  br label %24, !dbg !3547

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3548
  %20 = load i32, ptr %19, align 4, !dbg !3548, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3527, metadata !DIExpression()), !dbg !3530
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3529, metadata !DIExpression()), !dbg !3530
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3546
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3529, metadata !DIExpression()), !dbg !3530
  %22 = icmp eq i32 %20, 0, !dbg !3549
  br i1 %22, label %24, label %23, !dbg !3547

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3551, !tbaa !817
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3529, metadata !DIExpression()), !dbg !3530
  br label %24, !dbg !3553

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3530
  ret i32 %25, !dbg !3554
}

; Function Attrs: nofree nounwind
declare !dbg !3555 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3556 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3557 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3558 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3561 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3599, metadata !DIExpression()), !dbg !3600
  %2 = icmp eq ptr %0, null, !dbg !3601
  br i1 %2, label %6, label %3, !dbg !3603

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3604
  %5 = icmp eq i32 %4, 0, !dbg !3604
  br i1 %5, label %6, label %8, !dbg !3605

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3606
  br label %16, !dbg !3607

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3608, metadata !DIExpression()), !dbg !3613
  %9 = load i32, ptr %0, align 8, !dbg !3615, !tbaa !3467
  %10 = and i32 %9, 256, !dbg !3617
  %11 = icmp eq i32 %10, 0, !dbg !3617
  br i1 %11, label %14, label %12, !dbg !3618

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3619
  br label %14, !dbg !3619

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3620
  br label %16, !dbg !3621

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3600
  ret i32 %17, !dbg !3622
}

; Function Attrs: nofree nounwind
declare !dbg !3623 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3663, metadata !DIExpression()), !dbg !3669
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3664, metadata !DIExpression()), !dbg !3669
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3665, metadata !DIExpression()), !dbg !3669
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3670
  %5 = load ptr, ptr %4, align 8, !dbg !3670, !tbaa !3671
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3672
  %7 = load ptr, ptr %6, align 8, !dbg !3672, !tbaa !3673
  %8 = icmp eq ptr %5, %7, !dbg !3674
  br i1 %8, label %9, label %27, !dbg !3675

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3676
  %11 = load ptr, ptr %10, align 8, !dbg !3676, !tbaa !1197
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3677
  %13 = load ptr, ptr %12, align 8, !dbg !3677, !tbaa !3678
  %14 = icmp eq ptr %11, %13, !dbg !3679
  br i1 %14, label %15, label %27, !dbg !3680

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3681
  %17 = load ptr, ptr %16, align 8, !dbg !3681, !tbaa !3682
  %18 = icmp eq ptr %17, null, !dbg !3683
  br i1 %18, label %19, label %27, !dbg !3684

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3685
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3686
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3666, metadata !DIExpression()), !dbg !3687
  %22 = icmp eq i64 %21, -1, !dbg !3688
  br i1 %22, label %29, label %23, !dbg !3690

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3691, !tbaa !3467
  %25 = and i32 %24, -17, !dbg !3691
  store i32 %25, ptr %0, align 8, !dbg !3691, !tbaa !3467
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3692
  store i64 %21, ptr %26, align 8, !dbg !3693, !tbaa !3694
  br label %29, !dbg !3695

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3696
  br label %29, !dbg !3697

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3669
  ret i32 %30, !dbg !3698
}

; Function Attrs: nofree nounwind
declare !dbg !3699 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3702 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3707, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3708, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3709, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3710, metadata !DIExpression()), !dbg !3712
  %5 = icmp eq ptr %1, null, !dbg !3713
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3715
  %7 = select i1 %5, ptr @.str.124, ptr %1, !dbg !3715
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3715
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3709, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3708, metadata !DIExpression()), !dbg !3712
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3707, metadata !DIExpression()), !dbg !3712
  %9 = icmp eq ptr %3, null, !dbg !3716
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3718
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3710, metadata !DIExpression()), !dbg !3712
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3711, metadata !DIExpression()), !dbg !3712
  %12 = icmp ult i64 %11, -3, !dbg !3720
  br i1 %12, label %13, label %17, !dbg !3722

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3723
  %15 = icmp eq i32 %14, 0, !dbg !3723
  br i1 %15, label %16, label %29, !dbg !3724

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3725, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %10, metadata !3732, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i32 0, metadata !3735, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 8, metadata !3736, metadata !DIExpression()), !dbg !3737
  store i64 0, ptr %10, align 1, !dbg !3739
  br label %29, !dbg !3740

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3741
  br i1 %18, label %19, label %20, !dbg !3743

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3744
  unreachable, !dbg !3744

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3745

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3747
  br i1 %23, label %29, label %24, !dbg !3748

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3749
  br i1 %25, label %29, label %26, !dbg !3752

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3753, !tbaa !826
  %28 = zext i8 %27 to i32, !dbg !3754
  store i32 %28, ptr %6, align 4, !dbg !3755, !tbaa !817
  br label %29, !dbg !3756

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3712
  ret i64 %30, !dbg !3757
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3758 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3764 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3770
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3768, metadata !DIExpression()), !dbg !3770
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3771
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3769, metadata !DIExpression()), !dbg !3770
  br i1 %5, label %6, label %8, !dbg !3773

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3774
  store i32 12, ptr %7, align 4, !dbg !3776, !tbaa !817
  br label %12, !dbg !3777

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3771
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3769, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr %0, metadata !3778, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 %9, metadata !3781, metadata !DIExpression()), !dbg !3782
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3784
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3785
  br label %12, !dbg !3786

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3770
  ret ptr %13, !dbg !3787
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3788 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3797
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3793, metadata !DIExpression(), metadata !3797, metadata ptr %2, metadata !DIExpression()), !dbg !3798
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3798
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3799
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3800
  %4 = icmp eq i32 %3, 0, !dbg !3800
  br i1 %4, label %5, label %12, !dbg !3802

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3803, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata !784, metadata !3806, metadata !DIExpression()), !dbg !3807
  %6 = load i16, ptr %2, align 16, !dbg !3810
  %7 = icmp eq i16 %6, 67, !dbg !3810
  br i1 %7, label %11, label %8, !dbg !3811

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3803, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr @.str.1.129, metadata !3806, metadata !DIExpression()), !dbg !3812
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.129, i64 6), !dbg !3814
  %10 = icmp eq i32 %9, 0, !dbg !3815
  br i1 %10, label %11, label %12, !dbg !3816

11:                                               ; preds = %8, %5
  br label %12, !dbg !3817

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3798
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3818
  ret i1 %13, !dbg !3818
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3819 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3823, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3824, metadata !DIExpression()), !dbg !3826
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3825, metadata !DIExpression()), !dbg !3826
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3827
  ret i32 %4, !dbg !3828
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3829 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3833, metadata !DIExpression()), !dbg !3834
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3835
  ret ptr %2, !dbg !3836
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3837 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3841
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3842
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3840, metadata !DIExpression()), !dbg !3841
  ret ptr %2, !dbg !3843
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3844 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3853
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3848, metadata !DIExpression()), !dbg !3853
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3854
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %4, metadata !3840, metadata !DIExpression()), !dbg !3854
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3849, metadata !DIExpression()), !dbg !3853
  %5 = icmp eq ptr %4, null, !dbg !3857
  br i1 %5, label %6, label %9, !dbg !3858

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3859
  br i1 %7, label %19, label %8, !dbg !3862

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3863, !tbaa !826
  br label %19, !dbg !3864

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3865
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3850, metadata !DIExpression()), !dbg !3866
  %11 = icmp ult i64 %10, %2, !dbg !3867
  br i1 %11, label %12, label %14, !dbg !3869

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3870
  call void @llvm.dbg.value(metadata ptr %1, metadata !3872, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata ptr %4, metadata !3875, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.value(metadata i64 %13, metadata !3876, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3879
  br label %19, !dbg !3880

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3881
  br i1 %15, label %19, label %16, !dbg !3884

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3885
  call void @llvm.dbg.value(metadata ptr %1, metadata !3872, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %4, metadata !3875, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i64 %17, metadata !3876, metadata !DIExpression()), !dbg !3887
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3889
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3890
  store i8 0, ptr %18, align 1, !dbg !3891, !tbaa !826
  br label %19, !dbg !3892

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3893
  ret i32 %20, !dbg !3894
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

!llvm.dbg.cu = !{!82, !316, !320, !335, !642, !674, !389, !410, !424, !475, !676, !634, !682, !717, !719, !721, !723, !725, !658, !727, !729, !733, !735}
!llvm.ident = !{!737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737, !737}
!llvm.module.flags = !{!738, !739, !740, !741, !742, !743, !744}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/link.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355a8a3740f0720795f10b09973f5dbc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 40)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 76)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 14)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !49, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 16)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 25)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !2, line: 82, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 17)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !71, isLocal: true, isDefinition: true)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 28)
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !76, file: !77, line: 575, type: !116, isLocal: true, isDefinition: true)
!76 = distinct !DISubprogram(name: "oputs_", scope: !77, file: !77, line: 573, type: !78, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !232)
!77 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!78 = !DISubroutineType(cc: DW_CC_nocall, types: !79)
!79 = !{null, !80, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!82 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/link.o -MD -MP -MF src/.deps/link.Tpo -c src/link.c -o src/.link.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !114, globals: !122, splitDebugInlining: false, nameTableKind: None)
!83 = !{!84, !99}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !85, line: 42, baseType: !86, size: 32, elements: !87)
!85 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!88 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!89 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!90 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!91 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!92 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!93 = !DIEnumerator(name: "c_quoting_style", value: 5)
!94 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!95 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!96 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!97 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!98 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !100, line: 46, baseType: !86, size: 32, elements: !101)
!100 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113}
!102 = !DIEnumerator(name: "_ISupper", value: 256)
!103 = !DIEnumerator(name: "_ISlower", value: 512)
!104 = !DIEnumerator(name: "_ISalpha", value: 1024)
!105 = !DIEnumerator(name: "_ISdigit", value: 2048)
!106 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!107 = !DIEnumerator(name: "_ISspace", value: 8192)
!108 = !DIEnumerator(name: "_ISprint", value: 16384)
!109 = !DIEnumerator(name: "_ISgraph", value: 32768)
!110 = !DIEnumerator(name: "_ISblank", value: 1)
!111 = !DIEnumerator(name: "_IScntrl", value: 2)
!112 = !DIEnumerator(name: "_ISpunct", value: 4)
!113 = !DIEnumerator(name: "_ISalnum", value: 8)
!114 = !{!80, !115, !116, !117, !118, !121}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!116 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 18, baseType: !120)
!119 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!120 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!121 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !54, !59, !64, !69, !74, !123, !125, !127, !132, !137, !142, !144, !146, !151, !153, !155, !157, !162, !167, !169, !171, !173, !175, !177, !179, !181, !183, !188, !193, !195, !197, !199, !201, !203, !208, !210, !212, !217, !222, !227}
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !77, line: 585, type: !19, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !77, line: 586, type: !19, isLocal: true, isDefinition: true)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !77, line: 595, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !77, line: 620, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 6)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 2)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !77, line: 648, type: !19, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !129, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !77, line: 649, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 3)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !77, line: 650, type: !19, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !134, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !77, line: 651, type: !134, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !77, line: 652, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 7)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !77, line: 653, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 8)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !77, line: 654, type: !39, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !77, line: 655, type: !39, isLocal: true, isDefinition: true)
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(scope: null, file: !77, line: 656, type: !39, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !77, line: 657, type: !39, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !77, line: 663, type: !159, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !77, line: 664, type: !39, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !66, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !77, line: 669, type: !9, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 15)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !77, line: 676, type: !190, isLocal: true, isDefinition: true)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 61)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !77, line: 679, type: !148, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !77, line: 683, type: !19, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !77, line: 688, type: !19, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !77, line: 691, type: !164, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !77, line: 839, type: !56, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !77, line: 840, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 22)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !77, line: 841, type: !185, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !77, line: 862, type: !129, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !77, line: 868, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 71)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !77, line: 875, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 27)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 51)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !77, line: 877, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 12)
!232 = !{!233, !234, !235, !238, !240, !241, !242, !246, !247, !248, !249, !251, !305, !306, !307, !309, !310}
!233 = !DILocalVariable(name: "program", arg: 1, scope: !76, file: !77, line: 573, type: !80)
!234 = !DILocalVariable(name: "option", arg: 2, scope: !76, file: !77, line: 573, type: !80)
!235 = !DILocalVariable(name: "term", scope: !236, file: !77, line: 585, type: !80)
!236 = distinct !DILexicalBlock(scope: !237, file: !77, line: 582, column: 5)
!237 = distinct !DILexicalBlock(scope: !76, file: !77, line: 581, column: 7)
!238 = !DILocalVariable(name: "double_space", scope: !76, file: !77, line: 594, type: !239)
!239 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!240 = !DILocalVariable(name: "first_word", scope: !76, file: !77, line: 595, type: !80)
!241 = !DILocalVariable(name: "option_text", scope: !76, file: !77, line: 596, type: !80)
!242 = !DILocalVariable(name: "s", scope: !243, file: !77, line: 608, type: !80)
!243 = distinct !DILexicalBlock(scope: !244, file: !77, line: 605, column: 5)
!244 = distinct !DILexicalBlock(scope: !245, file: !77, line: 604, column: 12)
!245 = distinct !DILexicalBlock(scope: !76, file: !77, line: 597, column: 7)
!246 = !DILocalVariable(name: "spaces", scope: !243, file: !77, line: 609, type: !118)
!247 = !DILocalVariable(name: "anchor_len", scope: !76, file: !77, line: 620, type: !118)
!248 = !DILocalVariable(name: "desc_text", scope: !76, file: !77, line: 625, type: !80)
!249 = !DILocalVariable(name: "__ptr", scope: !250, file: !77, line: 644, type: !80)
!250 = distinct !DILexicalBlock(scope: !76, file: !77, line: 644, column: 3)
!251 = !DILocalVariable(name: "__stream", scope: !250, file: !77, line: 644, type: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !257)
!256 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!257 = !{!258, !259, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !274, !276, !277, !278, !282, !283, !285, !286, !289, !291, !294, !297, !298, !299, !300, !301}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !255, file: !256, line: 51, baseType: !116, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !255, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !255, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !255, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !255, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !255, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !255, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !255, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !255, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !255, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !255, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !255, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !255, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !256, line: 36, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !255, file: !256, line: 70, baseType: !275, size: 64, offset: 832)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !255, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !255, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !255, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !280, line: 152, baseType: !281)
!280 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!281 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !255, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !255, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!284 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !255, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !255, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !256, line: 43, baseType: null)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !255, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !280, line: 153, baseType: !281)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !255, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !256, line: 37, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !255, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !256, line: 38, flags: DIFlagFwdDecl)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !255, file: !256, line: 93, baseType: !275, size: 64, offset: 1344)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !255, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !255, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !255, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !255, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 20)
!305 = !DILocalVariable(name: "__cnt", scope: !250, file: !77, line: 644, type: !118)
!306 = !DILocalVariable(name: "url_program", scope: !76, file: !77, line: 648, type: !80)
!307 = !DILocalVariable(name: "__ptr", scope: !308, file: !77, line: 686, type: !80)
!308 = distinct !DILexicalBlock(scope: !76, file: !77, line: 686, column: 3)
!309 = !DILocalVariable(name: "__stream", scope: !308, file: !77, line: 686, type: !252)
!310 = !DILocalVariable(name: "__cnt", scope: !308, file: !77, line: 686, type: !118)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !313, line: 3, type: !185, isLocal: true, isDefinition: true)
!313 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "Version", scope: !316, file: !313, line: 3, type: !80, isLocal: false, isDefinition: true)
!316 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !317, splitDebugInlining: false, nameTableKind: None)
!317 = !{!311, !314}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "file_name", scope: !320, file: !321, line: 45, type: !80, isLocal: true, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C11, file: !321, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !322, splitDebugInlining: false, nameTableKind: None)
!321 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!322 = !{!323, !325, !327, !329, !318, !331}
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !321, line: 121, type: !159, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !321, line: 121, type: !229, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !321, line: 123, type: !159, isLocal: true, isDefinition: true)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !321, line: 126, type: !148, isLocal: true, isDefinition: true)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !320, file: !321, line: 55, type: !239, isLocal: true, isDefinition: true)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !335, file: !336, line: 66, type: !381, isLocal: false, isDefinition: true)
!335 = distinct !DICompileUnit(language: DW_LANG_C11, file: !336, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !337, globals: !338, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!337 = !{!115, !121}
!338 = !{!339, !341, !360, !362, !364, !366, !333, !368, !370, !372, !374, !379}
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !336, line: 272, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "old_file_name", scope: !343, file: !336, line: 304, type: !80, isLocal: true, isDefinition: true)
!343 = distinct !DISubprogram(name: "verror_at_line", scope: !336, file: !336, line: 298, type: !344, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !353)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !116, !116, !80, !86, !80, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !348)
!348 = !{!349, !350, !351, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !347, file: !336, baseType: !86, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !347, file: !336, baseType: !86, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !347, file: !336, baseType: !115, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !347, file: !336, baseType: !115, size: 64, offset: 128)
!353 = !{!354, !355, !356, !357, !358, !359}
!354 = !DILocalVariable(name: "status", arg: 1, scope: !343, file: !336, line: 298, type: !116)
!355 = !DILocalVariable(name: "errnum", arg: 2, scope: !343, file: !336, line: 298, type: !116)
!356 = !DILocalVariable(name: "file_name", arg: 3, scope: !343, file: !336, line: 298, type: !80)
!357 = !DILocalVariable(name: "line_number", arg: 4, scope: !343, file: !336, line: 298, type: !86)
!358 = !DILocalVariable(name: "message", arg: 5, scope: !343, file: !336, line: 298, type: !80)
!359 = !DILocalVariable(name: "args", arg: 6, scope: !343, file: !336, line: 298, type: !346)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "old_line_number", scope: !343, file: !336, line: 305, type: !86, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !336, line: 338, type: !129, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !164, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !139, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "error_message_count", scope: !335, file: !336, line: 69, type: !86, isLocal: false, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !335, file: !336, line: 295, type: !116, isLocal: false, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !159, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 21)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !336, line: 214, type: !19, isLocal: true, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null}
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !386, line: 60, type: !139, isLocal: true, isDefinition: true)
!386 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(name: "long_options", scope: !389, file: !386, line: 34, type: !398, isLocal: true, isDefinition: true)
!389 = distinct !DICompileUnit(language: DW_LANG_C11, file: !386, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, globals: !391, splitDebugInlining: false, nameTableKind: None)
!390 = !{!115}
!391 = !{!384, !392, !394, !396, !387}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !386, line: 112, type: !34, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !386, line: 36, type: !19, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !386, line: 37, type: !164, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 768, elements: !149)
!399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !401, line: 50, size: 256, elements: !402)
!401 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!402 = !{!403, !404, !405, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !401, line: 52, baseType: !80, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !400, file: !401, line: 55, baseType: !116, size: 32, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !400, file: !401, line: 56, baseType: !406, size: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !401, line: 57, baseType: !116, size: 32, offset: 192)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "program_name", scope: !410, file: !411, line: 31, type: !80, isLocal: false, isDefinition: true)
!410 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, globals: !413, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!412 = !{!115, !260}
!413 = !{!408, !414, !416}
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !411, line: 46, type: !164, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !411, line: 49, type: !129, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(name: "utf07FF", scope: !420, file: !421, line: 46, type: !448, isLocal: true, isDefinition: true)
!420 = distinct !DISubprogram(name: "proper_name_lite", scope: !421, file: !421, line: 38, type: !422, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !426)
!421 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!422 = !DISubroutineType(types: !423)
!423 = !{!80, !80, !80}
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
!425 = !{!418}
!426 = !{!427, !428, !429, !430, !435}
!427 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !420, file: !421, line: 38, type: !80)
!428 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !420, file: !421, line: 38, type: !80)
!429 = !DILocalVariable(name: "translation", scope: !420, file: !421, line: 40, type: !80)
!430 = !DILocalVariable(name: "w", scope: !420, file: !421, line: 47, type: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !432, line: 37, baseType: !433)
!432 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !280, line: 57, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !280, line: 42, baseType: !86)
!435 = !DILocalVariable(name: "mbs", scope: !420, file: !421, line: 48, type: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !438)
!437 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !440)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !440, file: !439, line: 15, baseType: !116, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !440, file: !439, line: 20, baseType: !444, size: 32, offset: 32)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !439, line: 16, size: 32, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !444, file: !439, line: 18, baseType: !86, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !444, file: !439, line: 19, baseType: !129, size: 32)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !140)
!449 = !DIGlobalVariableExpression(var: !450, expr: !DIExpression())
!450 = distinct !DIGlobalVariable(scope: null, file: !451, line: 78, type: !164, isLocal: true, isDefinition: true)
!451 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !451, line: 79, type: !134, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !451, line: 80, type: !456, isLocal: true, isDefinition: true)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !457)
!457 = !{!458}
!458 = !DISubrange(count: 13)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !451, line: 81, type: !456, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !451, line: 82, type: !302, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !451, line: 83, type: !139, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !451, line: 84, type: !164, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !451, line: 85, type: !159, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !451, line: 86, type: !159, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !451, line: 87, type: !164, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !475, file: !451, line: 76, type: !549, isLocal: false, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !451, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !484, globals: !485, splitDebugInlining: false, nameTableKind: None)
!476 = !{!477, !479, !99}
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !478, line: 42, baseType: !86, size: 32, elements: !87)
!478 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !478, line: 254, baseType: !86, size: 32, elements: !480)
!480 = !{!481, !482, !483}
!481 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!482 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!483 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!484 = !{!115, !116, !117, !118}
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
!495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !492, file: !451, line: 62, baseType: !116, size: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !492, file: !451, line: 66, baseType: !497, size: 256, offset: 64)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, elements: !165)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !492, file: !451, line: 69, baseType: !80, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !492, file: !451, line: 72, baseType: !80, size: 64, offset: 384)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !475, file: !451, line: 107, type: !492, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(name: "slot0", scope: !475, file: !451, line: 831, type: !504, isLocal: true, isDefinition: true)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 256)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !451, line: 321, type: !139, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !451, line: 357, type: !139, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !451, line: 358, type: !139, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !451, line: 199, type: !159, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(name: "quote", scope: !517, file: !451, line: 228, type: !536, isLocal: true, isDefinition: true)
!517 = distinct !DISubprogram(name: "gettext_quote", scope: !451, file: !451, line: 197, type: !518, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!80, !80, !477}
!520 = !{!521, !522, !523, !524, !525}
!521 = !DILocalVariable(name: "msgid", arg: 1, scope: !517, file: !451, line: 197, type: !80)
!522 = !DILocalVariable(name: "s", arg: 2, scope: !517, file: !451, line: 197, type: !477)
!523 = !DILocalVariable(name: "translation", scope: !517, file: !451, line: 199, type: !80)
!524 = !DILocalVariable(name: "w", scope: !517, file: !451, line: 229, type: !431)
!525 = !DILocalVariable(name: "mbs", scope: !517, file: !451, line: 230, type: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !528, file: !439, line: 15, baseType: !116, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !528, file: !439, line: 20, baseType: !532, size: 32, offset: 32)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !528, file: !439, line: 16, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !532, file: !439, line: 18, baseType: !86, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !532, file: !439, line: 19, baseType: !129, size: 32)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !537)
!537 = !{!141, !131}
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "slotvec", scope: !475, file: !451, line: 834, type: !540, isLocal: true, isDefinition: true)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !451, line: 823, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !541, file: !451, line: 825, baseType: !118, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !541, file: !451, line: 826, baseType: !260, size: 64, offset: 64)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "nslots", scope: !475, file: !451, line: 832, type: !116, isLocal: true, isDefinition: true)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "slotvec0", scope: !475, file: !451, line: 833, type: !541, isLocal: true, isDefinition: true)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 704, elements: !551)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!551 = !{!552}
!552 = !DISubrange(count: 11)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !555, line: 67, type: !229, isLocal: true, isDefinition: true)
!555 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !555, line: 69, type: !159, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !555, line: 83, type: !159, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !555, line: 83, type: !129, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !555, line: 85, type: !139, isLocal: true, isDefinition: true)
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
!582 = distinct !DIGlobalVariable(scope: null, file: !555, line: 113, type: !71, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !555, line: 120, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 32)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !555, line: 127, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 36)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !555, line: 134, type: !9, isLocal: true, isDefinition: true)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !555, line: 142, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 44)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !555, line: 150, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 48)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !555, line: 159, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 52)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !555, line: 170, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 60)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !555, line: 248, type: !302, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !555, line: 248, type: !205, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !555, line: 254, type: !302, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !555, line: 254, type: !49, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !555, line: 254, type: !9, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !555, line: 259, type: !3, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !555, line: 259, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 29)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !634, file: !635, line: 26, type: !637, isLocal: false, isDefinition: true)
!634 = distinct !DICompileUnit(language: DW_LANG_C11, file: !635, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !636, splitDebugInlining: false, nameTableKind: None)
!635 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!636 = !{!632}
!637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !638)
!638 = !{!639}
!639 = !DISubrange(count: 47)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(name: "exit_failure", scope: !642, file: !643, line: 24, type: !645, isLocal: false, isDefinition: true)
!642 = distinct !DICompileUnit(language: DW_LANG_C11, file: !643, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !644, splitDebugInlining: false, nameTableKind: None)
!643 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!644 = !{!640}
!645 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !648, line: 34, type: !148, isLocal: true, isDefinition: true)
!648 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !648, line: 34, type: !159, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !648, line: 34, type: !66, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !655, line: 108, type: !34, isLocal: true, isDefinition: true)
!655 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(name: "internal_state", scope: !658, file: !655, line: 97, type: !661, isLocal: true, isDefinition: true)
!658 = distinct !DICompileUnit(language: DW_LANG_C11, file: !655, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !659, globals: !660, splitDebugInlining: false, nameTableKind: None)
!659 = !{!115, !118, !121}
!660 = !{!653, !656}
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !663, file: !439, line: 15, baseType: !116, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !663, file: !439, line: 20, baseType: !667, size: 32, offset: 32)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !663, file: !439, line: 16, size: 32, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !667, file: !439, line: 18, baseType: !86, size: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !667, file: !439, line: 19, baseType: !129, size: 32)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !673, line: 35, type: !134, isLocal: true, isDefinition: true)
!673 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !675, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!675 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!676 = distinct !DICompileUnit(language: DW_LANG_C11, file: !555, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !677, retainedTypes: !390, globals: !681, splitDebugInlining: false, nameTableKind: None)
!677 = !{!678}
!678 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !555, line: 40, baseType: !86, size: 32, elements: !679)
!679 = !{!680}
!680 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!681 = !{!553, !556, !558, !560, !562, !564, !569, !574, !576, !581, !583, !588, !593, !595, !600, !605, !610, !615, !617, !619, !621, !623, !625, !627}
!682 = distinct !DICompileUnit(language: DW_LANG_C11, file: !683, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !684, retainedTypes: !716, splitDebugInlining: false, nameTableKind: None)
!683 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!684 = !{!685, !697}
!685 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !686, file: !683, line: 188, baseType: !86, size: 32, elements: !695)
!686 = distinct !DISubprogram(name: "x2nrealloc", scope: !683, file: !683, line: 176, type: !687, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !690)
!687 = !DISubroutineType(types: !688)
!688 = !{!115, !115, !689, !118}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!690 = !{!691, !692, !693, !694}
!691 = !DILocalVariable(name: "p", arg: 1, scope: !686, file: !683, line: 176, type: !115)
!692 = !DILocalVariable(name: "pn", arg: 2, scope: !686, file: !683, line: 176, type: !689)
!693 = !DILocalVariable(name: "s", arg: 3, scope: !686, file: !683, line: 176, type: !118)
!694 = !DILocalVariable(name: "n", scope: !686, file: !683, line: 178, type: !118)
!695 = !{!696}
!696 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!697 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !698, file: !683, line: 228, baseType: !86, size: 32, elements: !695)
!698 = distinct !DISubprogram(name: "xpalloc", scope: !683, file: !683, line: 223, type: !699, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !706)
!699 = !DISubroutineType(types: !700)
!700 = !{!115, !115, !701, !702, !704, !702}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !703, line: 130, baseType: !704)
!703 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !705, line: 18, baseType: !281)
!705 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!706 = !{!707, !708, !709, !710, !711, !712, !713, !714, !715}
!707 = !DILocalVariable(name: "pa", arg: 1, scope: !698, file: !683, line: 223, type: !115)
!708 = !DILocalVariable(name: "pn", arg: 2, scope: !698, file: !683, line: 223, type: !701)
!709 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !698, file: !683, line: 223, type: !702)
!710 = !DILocalVariable(name: "n_max", arg: 4, scope: !698, file: !683, line: 223, type: !704)
!711 = !DILocalVariable(name: "s", arg: 5, scope: !698, file: !683, line: 223, type: !702)
!712 = !DILocalVariable(name: "n0", scope: !698, file: !683, line: 230, type: !702)
!713 = !DILocalVariable(name: "n", scope: !698, file: !683, line: 237, type: !702)
!714 = !DILocalVariable(name: "nbytes", scope: !698, file: !683, line: 248, type: !702)
!715 = !DILocalVariable(name: "adjusted_nbytes", scope: !698, file: !683, line: 252, type: !702)
!716 = !{!260, !115}
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !718, splitDebugInlining: false, nameTableKind: None)
!718 = !{!646, !649, !651}
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !730, splitDebugInlining: false, nameTableKind: None)
!730 = !{!731, !671}
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !673, line: 35, type: !139, isLocal: true, isDefinition: true)
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !736, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !390, splitDebugInlining: false, nameTableKind: None)
!736 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!737 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!738 = !{i32 7, !"Dwarf Version", i32 5}
!739 = !{i32 2, !"Debug Info Version", i32 3}
!740 = !{i32 1, !"wchar_size", i32 4}
!741 = !{i32 8, !"PIC Level", i32 2}
!742 = !{i32 7, !"PIE Level", i32 2}
!743 = !{i32 7, !"uwtable", i32 2}
!744 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!745 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !746, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !748)
!746 = !DISubroutineType(types: !747)
!747 = !{null, !116}
!748 = !{!749}
!749 = !DILocalVariable(name: "status", arg: 1, scope: !745, file: !2, line: 37, type: !116)
!750 = !DILocation(line: 0, scope: !745)
!751 = !DILocation(line: 39, column: 14, scope: !752)
!752 = distinct !DILexicalBlock(scope: !745, file: !2, line: 39, column: 7)
!753 = !DILocation(line: 39, column: 7, scope: !745)
!754 = !DILocation(line: 40, column: 5, scope: !755)
!755 = distinct !DILexicalBlock(scope: !752, file: !2, line: 40, column: 5)
!756 = !{!757, !757, i64 0}
!757 = !{!"any pointer", !758, i64 0}
!758 = !{!"omnipotent char", !759, i64 0}
!759 = !{!"Simple C/C++ TBAA"}
!760 = !DILocation(line: 43, column: 7, scope: !761)
!761 = distinct !DILexicalBlock(scope: !752, file: !2, line: 42, column: 5)
!762 = !DILocation(line: 46, column: 7, scope: !761)
!763 = !DILocation(line: 49, column: 7, scope: !761)
!764 = !DILocation(line: 50, column: 7, scope: !761)
!765 = !DILocalVariable(name: "program", arg: 1, scope: !766, file: !77, line: 836, type: !80)
!766 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !767, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !769)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !80}
!769 = !{!765, !770, !777, !778, !780, !781}
!770 = !DILocalVariable(name: "infomap", scope: !766, file: !77, line: 838, type: !771)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !772, size: 896, elements: !160)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !766, file: !77, line: 838, size: 128, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !773, file: !77, line: 838, baseType: !80, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !773, file: !77, line: 838, baseType: !80, size: 64, offset: 64)
!777 = !DILocalVariable(name: "node", scope: !766, file: !77, line: 848, type: !80)
!778 = !DILocalVariable(name: "map_prog", scope: !766, file: !77, line: 849, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!780 = !DILocalVariable(name: "lc_messages", scope: !766, file: !77, line: 861, type: !80)
!781 = !DILocalVariable(name: "url_program", scope: !766, file: !77, line: 874, type: !80)
!782 = !DILocation(line: 0, scope: !766, inlinedAt: !783)
!783 = distinct !DILocation(line: 51, column: 7, scope: !761)
!784 = !{}
!785 = !DILocation(line: 857, column: 3, scope: !766, inlinedAt: !783)
!786 = !DILocation(line: 861, column: 29, scope: !766, inlinedAt: !783)
!787 = !DILocation(line: 862, column: 7, scope: !788, inlinedAt: !783)
!788 = distinct !DILexicalBlock(scope: !766, file: !77, line: 862, column: 7)
!789 = !DILocation(line: 862, column: 19, scope: !788, inlinedAt: !783)
!790 = !DILocation(line: 862, column: 22, scope: !788, inlinedAt: !783)
!791 = !DILocation(line: 862, column: 7, scope: !766, inlinedAt: !783)
!792 = !DILocation(line: 868, column: 7, scope: !793, inlinedAt: !783)
!793 = distinct !DILexicalBlock(scope: !788, file: !77, line: 863, column: 5)
!794 = !DILocation(line: 870, column: 5, scope: !793, inlinedAt: !783)
!795 = !DILocation(line: 875, column: 3, scope: !766, inlinedAt: !783)
!796 = !DILocation(line: 877, column: 3, scope: !766, inlinedAt: !783)
!797 = !DILocation(line: 53, column: 3, scope: !745)
!798 = !DISubprogram(name: "dcgettext", scope: !799, file: !799, line: 51, type: !800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!799 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!800 = !DISubroutineType(types: !801)
!801 = !{!260, !80, !80, !116}
!802 = !DISubprogram(name: "__fprintf_chk", scope: !803, file: !803, line: 93, type: !804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!803 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!804 = !DISubroutineType(types: !805)
!805 = !{!116, !806, !116, !807, null}
!806 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!807 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!808 = !DISubprogram(name: "__printf_chk", scope: !803, file: !803, line: 95, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DISubroutineType(types: !810)
!810 = !{!116, !116, !807, null}
!811 = !DISubprogram(name: "fputs_unlocked", scope: !812, file: !812, line: 691, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!812 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!813 = !DISubroutineType(types: !814)
!814 = !{!116, !807, !806}
!815 = !DILocation(line: 0, scope: !76)
!816 = !DILocation(line: 581, column: 7, scope: !237)
!817 = !{!818, !818, i64 0}
!818 = !{!"int", !758, i64 0}
!819 = !DILocation(line: 581, column: 19, scope: !237)
!820 = !DILocation(line: 581, column: 7, scope: !76)
!821 = !DILocation(line: 585, column: 26, scope: !236)
!822 = !DILocation(line: 0, scope: !236)
!823 = !DILocation(line: 586, column: 23, scope: !236)
!824 = !DILocation(line: 586, column: 28, scope: !236)
!825 = !DILocation(line: 586, column: 32, scope: !236)
!826 = !{!758, !758, i64 0}
!827 = !DILocation(line: 586, column: 38, scope: !236)
!828 = !DILocalVariable(name: "__s1", arg: 1, scope: !829, file: !830, line: 1359, type: !80)
!829 = distinct !DISubprogram(name: "streq", scope: !830, file: !830, line: 1359, type: !831, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !833)
!830 = !DIFile(filename: "./lib/string.h", directory: "/src")
!831 = !DISubroutineType(types: !832)
!832 = !{!239, !80, !80}
!833 = !{!828, !834}
!834 = !DILocalVariable(name: "__s2", arg: 2, scope: !829, file: !830, line: 1359, type: !80)
!835 = !DILocation(line: 0, scope: !829, inlinedAt: !836)
!836 = distinct !DILocation(line: 586, column: 41, scope: !236)
!837 = !DILocation(line: 1361, column: 11, scope: !829, inlinedAt: !836)
!838 = !DILocation(line: 1361, column: 10, scope: !829, inlinedAt: !836)
!839 = !DILocation(line: 586, column: 19, scope: !236)
!840 = !DILocation(line: 587, column: 5, scope: !236)
!841 = !DILocation(line: 588, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !76, file: !77, line: 588, column: 7)
!843 = !DILocation(line: 588, column: 7, scope: !76)
!844 = !DILocation(line: 590, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !77, line: 589, column: 5)
!846 = !DILocation(line: 591, column: 7, scope: !845)
!847 = !DILocation(line: 595, column: 37, scope: !76)
!848 = !DILocation(line: 595, column: 35, scope: !76)
!849 = !DILocation(line: 596, column: 29, scope: !76)
!850 = !DILocation(line: 597, column: 8, scope: !245)
!851 = !DILocation(line: 597, column: 7, scope: !76)
!852 = !DILocation(line: 604, column: 24, scope: !244)
!853 = !DILocation(line: 604, column: 12, scope: !245)
!854 = !DILocation(line: 0, scope: !243)
!855 = !DILocation(line: 610, column: 16, scope: !243)
!856 = !DILocation(line: 610, column: 7, scope: !243)
!857 = !DILocation(line: 611, column: 21, scope: !243)
!858 = !{!859, !859, i64 0}
!859 = !{!"short", !758, i64 0}
!860 = !DILocation(line: 611, column: 19, scope: !243)
!861 = !DILocation(line: 611, column: 16, scope: !243)
!862 = !DILocation(line: 610, column: 30, scope: !243)
!863 = distinct !{!863, !856, !857, !864}
!864 = !{!"llvm.loop.mustprogress"}
!865 = !DILocation(line: 612, column: 18, scope: !866)
!866 = distinct !DILexicalBlock(scope: !243, file: !77, line: 612, column: 11)
!867 = !DILocation(line: 612, column: 11, scope: !243)
!868 = !DILocation(line: 620, column: 23, scope: !76)
!869 = !DILocation(line: 625, column: 39, scope: !76)
!870 = !DILocation(line: 626, column: 3, scope: !76)
!871 = !DILocation(line: 626, column: 10, scope: !76)
!872 = !DILocation(line: 626, column: 21, scope: !76)
!873 = !DILocation(line: 628, column: 44, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !77, line: 628, column: 11)
!875 = distinct !DILexicalBlock(scope: !76, file: !77, line: 627, column: 5)
!876 = !DILocation(line: 628, column: 32, scope: !874)
!877 = !DILocation(line: 628, column: 49, scope: !874)
!878 = !DILocation(line: 628, column: 11, scope: !875)
!879 = !DILocation(line: 630, column: 11, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !77, line: 630, column: 11)
!881 = !DILocation(line: 630, column: 11, scope: !875)
!882 = !DILocation(line: 632, column: 26, scope: !883)
!883 = distinct !DILexicalBlock(scope: !884, file: !77, line: 632, column: 15)
!884 = distinct !DILexicalBlock(scope: !880, file: !77, line: 631, column: 9)
!885 = !DILocation(line: 632, column: 34, scope: !883)
!886 = !DILocation(line: 632, column: 37, scope: !883)
!887 = !DILocation(line: 632, column: 15, scope: !884)
!888 = !DILocation(line: 636, column: 16, scope: !889)
!889 = distinct !DILexicalBlock(scope: !884, file: !77, line: 636, column: 15)
!890 = !DILocation(line: 636, column: 29, scope: !889)
!891 = !DILocation(line: 640, column: 16, scope: !875)
!892 = distinct !{!892, !870, !893, !864}
!893 = !DILocation(line: 641, column: 5, scope: !76)
!894 = !DILocation(line: 644, column: 3, scope: !76)
!895 = !DILocation(line: 0, scope: !829, inlinedAt: !896)
!896 = distinct !DILocation(line: 648, column: 31, scope: !76)
!897 = !DILocation(line: 0, scope: !829, inlinedAt: !898)
!898 = distinct !DILocation(line: 649, column: 31, scope: !76)
!899 = !DILocation(line: 0, scope: !829, inlinedAt: !900)
!900 = distinct !DILocation(line: 650, column: 31, scope: !76)
!901 = !DILocation(line: 0, scope: !829, inlinedAt: !902)
!902 = distinct !DILocation(line: 651, column: 31, scope: !76)
!903 = !DILocation(line: 0, scope: !829, inlinedAt: !904)
!904 = distinct !DILocation(line: 652, column: 31, scope: !76)
!905 = !DILocation(line: 0, scope: !829, inlinedAt: !906)
!906 = distinct !DILocation(line: 653, column: 31, scope: !76)
!907 = !DILocation(line: 0, scope: !829, inlinedAt: !908)
!908 = distinct !DILocation(line: 654, column: 31, scope: !76)
!909 = !DILocation(line: 0, scope: !829, inlinedAt: !910)
!910 = distinct !DILocation(line: 655, column: 31, scope: !76)
!911 = !DILocation(line: 0, scope: !829, inlinedAt: !912)
!912 = distinct !DILocation(line: 656, column: 31, scope: !76)
!913 = !DILocation(line: 0, scope: !829, inlinedAt: !914)
!914 = distinct !DILocation(line: 657, column: 31, scope: !76)
!915 = !DILocation(line: 663, column: 7, scope: !916)
!916 = distinct !DILexicalBlock(scope: !76, file: !77, line: 663, column: 7)
!917 = !DILocation(line: 664, column: 7, scope: !916)
!918 = !DILocation(line: 664, column: 10, scope: !916)
!919 = !DILocation(line: 663, column: 7, scope: !76)
!920 = !DILocation(line: 669, column: 7, scope: !921)
!921 = distinct !DILexicalBlock(scope: !916, file: !77, line: 665, column: 5)
!922 = !DILocation(line: 671, column: 5, scope: !921)
!923 = !DILocation(line: 676, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !916, file: !77, line: 673, column: 5)
!925 = !DILocation(line: 679, column: 3, scope: !76)
!926 = !DILocation(line: 683, column: 3, scope: !76)
!927 = !DILocation(line: 686, column: 3, scope: !76)
!928 = !DILocation(line: 688, column: 3, scope: !76)
!929 = !DILocation(line: 691, column: 3, scope: !76)
!930 = !DILocation(line: 695, column: 3, scope: !76)
!931 = !DILocation(line: 696, column: 1, scope: !76)
!932 = !DISubprogram(name: "setlocale", scope: !933, file: !933, line: 122, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!933 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!934 = !DISubroutineType(types: !935)
!935 = !{!260, !116, !80}
!936 = !DISubprogram(name: "strncmp", scope: !937, file: !937, line: 159, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!937 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!938 = !DISubroutineType(types: !939)
!939 = !{!116, !80, !80, !118}
!940 = !DISubprogram(name: "exit", scope: !941, file: !941, line: 624, type: !746, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!941 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!942 = !DISubprogram(name: "getenv", scope: !941, file: !941, line: 641, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!943 = !DISubroutineType(types: !944)
!944 = !{!260, !80}
!945 = !DISubprogram(name: "strcmp", scope: !937, file: !937, line: 156, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!946 = !DISubroutineType(types: !947)
!947 = !{!116, !80, !80}
!948 = !DISubprogram(name: "strspn", scope: !937, file: !937, line: 297, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!949 = !DISubroutineType(types: !950)
!950 = !{!120, !80, !80}
!951 = !DISubprogram(name: "strchr", scope: !937, file: !937, line: 246, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!952 = !DISubroutineType(types: !953)
!953 = !{!260, !80, !116}
!954 = !DISubprogram(name: "__ctype_b_loc", scope: !100, file: !100, line: 79, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!955 = !DISubroutineType(types: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!960 = !DISubprogram(name: "strcspn", scope: !937, file: !937, line: 293, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubprogram(name: "fwrite_unlocked", scope: !812, file: !812, line: 704, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{!118, !964, !118, !118, !806}
!964 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !965)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!967 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 57, type: !968, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !971)
!968 = !DISubroutineType(types: !969)
!969 = !{!116, !116, !970}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!971 = !{!972, !973}
!972 = !DILocalVariable(name: "argc", arg: 1, scope: !967, file: !2, line: 57, type: !116)
!973 = !DILocalVariable(name: "argv", arg: 2, scope: !967, file: !2, line: 57, type: !970)
!974 = !DILocation(line: 0, scope: !967)
!975 = !DILocation(line: 60, column: 21, scope: !967)
!976 = !DILocation(line: 60, column: 3, scope: !967)
!977 = !DILocation(line: 61, column: 3, scope: !967)
!978 = !DILocation(line: 62, column: 3, scope: !967)
!979 = !DILocation(line: 63, column: 3, scope: !967)
!980 = !DILocation(line: 65, column: 3, scope: !967)
!981 = !DILocation(line: 68, column: 36, scope: !967)
!982 = !DILocation(line: 68, column: 58, scope: !967)
!983 = !DILocation(line: 67, column: 3, scope: !967)
!984 = !DILocation(line: 71, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !967, file: !2, line: 71, column: 7)
!986 = !DILocation(line: 71, column: 21, scope: !985)
!987 = !DILocation(line: 71, column: 12, scope: !985)
!988 = !DILocation(line: 71, column: 7, scope: !967)
!989 = !DILocation(line: 73, column: 16, scope: !990)
!990 = distinct !DILexicalBlock(scope: !991, file: !2, line: 73, column: 11)
!991 = distinct !DILexicalBlock(scope: !985, file: !2, line: 72, column: 5)
!992 = !DILocation(line: 73, column: 11, scope: !991)
!993 = !DILocation(line: 74, column: 9, scope: !990)
!994 = !DILocation(line: 76, column: 9, scope: !990)
!995 = !DILocation(line: 77, column: 7, scope: !991)
!996 = !DILocation(line: 80, column: 18, scope: !997)
!997 = distinct !DILexicalBlock(scope: !967, file: !2, line: 80, column: 7)
!998 = !DILocation(line: 80, column: 7, scope: !967)
!999 = !DILocation(line: 82, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !997, file: !2, line: 81, column: 5)
!1001 = !DILocation(line: 83, column: 7, scope: !1000)
!1002 = !DILocation(line: 86, column: 13, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !967, file: !2, line: 86, column: 7)
!1004 = !DILocation(line: 86, column: 27, scope: !1003)
!1005 = !DILocation(line: 86, column: 7, scope: !1003)
!1006 = !DILocation(line: 86, column: 45, scope: !1003)
!1007 = !DILocation(line: 86, column: 7, scope: !967)
!1008 = !DILocation(line: 87, column: 5, scope: !1003)
!1009 = !DILocation(line: 90, column: 3, scope: !967)
!1010 = !DISubprogram(name: "bindtextdomain", scope: !799, file: !799, line: 86, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!260, !80, !80}
!1013 = !DISubprogram(name: "textdomain", scope: !799, file: !799, line: 82, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DISubprogram(name: "atexit", scope: !941, file: !941, line: 602, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!116, !381}
!1017 = !DISubprogram(name: "link", scope: !1018, file: !1018, line: 819, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1018 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1019 = !DISubprogram(name: "__errno_location", scope: !1020, file: !1020, line: 37, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!406}
!1023 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !321, file: !321, line: 50, type: !767, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1024)
!1024 = !{!1025}
!1025 = !DILocalVariable(name: "file", arg: 1, scope: !1023, file: !321, line: 50, type: !80)
!1026 = !DILocation(line: 0, scope: !1023)
!1027 = !DILocation(line: 52, column: 13, scope: !1023)
!1028 = !DILocation(line: 53, column: 1, scope: !1023)
!1029 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !321, file: !321, line: 87, type: !1030, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !239}
!1032 = !{!1033}
!1033 = !DILocalVariable(name: "ignore", arg: 1, scope: !1029, file: !321, line: 87, type: !239)
!1034 = !DILocation(line: 0, scope: !1029)
!1035 = !DILocation(line: 89, column: 16, scope: !1029)
!1036 = !{!1037, !1037, i64 0}
!1037 = !{!"_Bool", !758, i64 0}
!1038 = !DILocation(line: 90, column: 1, scope: !1029)
!1039 = distinct !DISubprogram(name: "close_stdout", scope: !321, file: !321, line: 116, type: !382, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1040)
!1040 = !{!1041}
!1041 = !DILocalVariable(name: "write_error", scope: !1042, file: !321, line: 121, type: !80)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !321, line: 120, column: 5)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !321, line: 118, column: 7)
!1044 = !DILocation(line: 118, column: 21, scope: !1043)
!1045 = !DILocation(line: 118, column: 7, scope: !1043)
!1046 = !DILocation(line: 118, column: 29, scope: !1043)
!1047 = !DILocation(line: 119, column: 7, scope: !1043)
!1048 = !DILocation(line: 119, column: 12, scope: !1043)
!1049 = !{i8 0, i8 2}
!1050 = !DILocation(line: 119, column: 25, scope: !1043)
!1051 = !DILocation(line: 119, column: 28, scope: !1043)
!1052 = !DILocation(line: 119, column: 34, scope: !1043)
!1053 = !DILocation(line: 118, column: 7, scope: !1039)
!1054 = !DILocation(line: 121, column: 33, scope: !1042)
!1055 = !DILocation(line: 0, scope: !1042)
!1056 = !DILocation(line: 122, column: 11, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1042, file: !321, line: 122, column: 11)
!1058 = !DILocation(line: 0, scope: !1057)
!1059 = !DILocation(line: 122, column: 11, scope: !1042)
!1060 = !DILocation(line: 123, column: 9, scope: !1057)
!1061 = !DILocation(line: 126, column: 9, scope: !1057)
!1062 = !DILocation(line: 128, column: 14, scope: !1042)
!1063 = !DILocation(line: 128, column: 7, scope: !1042)
!1064 = !DILocation(line: 133, column: 42, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1039, file: !321, line: 133, column: 7)
!1066 = !DILocation(line: 133, column: 28, scope: !1065)
!1067 = !DILocation(line: 133, column: 50, scope: !1065)
!1068 = !DILocation(line: 133, column: 7, scope: !1039)
!1069 = !DILocation(line: 134, column: 12, scope: !1065)
!1070 = !DILocation(line: 134, column: 5, scope: !1065)
!1071 = !DILocation(line: 135, column: 1, scope: !1039)
!1072 = !DISubprogram(name: "_exit", scope: !1018, file: !1018, line: 624, type: !746, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1073 = distinct !DISubprogram(name: "verror", scope: !336, file: !336, line: 251, type: !1074, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1076)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{null, !116, !116, !80, !346}
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DILocalVariable(name: "status", arg: 1, scope: !1073, file: !336, line: 251, type: !116)
!1078 = !DILocalVariable(name: "errnum", arg: 2, scope: !1073, file: !336, line: 251, type: !116)
!1079 = !DILocalVariable(name: "message", arg: 3, scope: !1073, file: !336, line: 251, type: !80)
!1080 = !DILocalVariable(name: "args", arg: 4, scope: !1073, file: !336, line: 251, type: !346)
!1081 = !DILocation(line: 0, scope: !1073)
!1082 = !DILocation(line: 261, column: 3, scope: !1073)
!1083 = !DILocation(line: 265, column: 7, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1073, file: !336, line: 265, column: 7)
!1085 = !DILocation(line: 265, column: 7, scope: !1073)
!1086 = !DILocation(line: 266, column: 5, scope: !1084)
!1087 = !DILocation(line: 272, column: 7, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !336, line: 268, column: 5)
!1089 = !DILocation(line: 276, column: 3, scope: !1073)
!1090 = !DILocation(line: 282, column: 1, scope: !1073)
!1091 = distinct !DISubprogram(name: "flush_stdout", scope: !336, file: !336, line: 163, type: !382, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1092)
!1092 = !{!1093}
!1093 = !DILocalVariable(name: "stdout_fd", scope: !1091, file: !336, line: 166, type: !116)
!1094 = !DILocation(line: 0, scope: !1091)
!1095 = !DILocalVariable(name: "fd", arg: 1, scope: !1096, file: !336, line: 145, type: !116)
!1096 = distinct !DISubprogram(name: "is_open", scope: !336, file: !336, line: 145, type: !1097, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1099)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!116, !116}
!1099 = !{!1095}
!1100 = !DILocation(line: 0, scope: !1096, inlinedAt: !1101)
!1101 = distinct !DILocation(line: 182, column: 25, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1091, file: !336, line: 182, column: 7)
!1103 = !DILocation(line: 157, column: 15, scope: !1096, inlinedAt: !1101)
!1104 = !DILocation(line: 157, column: 12, scope: !1096, inlinedAt: !1101)
!1105 = !DILocation(line: 182, column: 7, scope: !1091)
!1106 = !DILocation(line: 184, column: 5, scope: !1102)
!1107 = !DILocation(line: 185, column: 1, scope: !1091)
!1108 = distinct !DISubprogram(name: "error_tail", scope: !336, file: !336, line: 219, type: !1074, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1109)
!1109 = !{!1110, !1111, !1112, !1113}
!1110 = !DILocalVariable(name: "status", arg: 1, scope: !1108, file: !336, line: 219, type: !116)
!1111 = !DILocalVariable(name: "errnum", arg: 2, scope: !1108, file: !336, line: 219, type: !116)
!1112 = !DILocalVariable(name: "message", arg: 3, scope: !1108, file: !336, line: 219, type: !80)
!1113 = !DILocalVariable(name: "args", arg: 4, scope: !1108, file: !336, line: 219, type: !346)
!1114 = distinct !DIAssignID()
!1115 = !DILocation(line: 0, scope: !1108)
!1116 = !DILocation(line: 229, column: 13, scope: !1108)
!1117 = !DILocalVariable(name: "__stream", arg: 1, scope: !1118, file: !803, line: 132, type: !1121)
!1118 = distinct !DISubprogram(name: "vfprintf", scope: !803, file: !803, line: 132, type: !1119, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1156)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!116, !1121, !807, !346}
!1121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1122)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1124, file: !256, line: 51, baseType: !116, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1124, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1124, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1124, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1124, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1124, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1124, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1124, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1124, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1124, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1124, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1124, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1124, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1124, file: !256, line: 70, baseType: !1140, size: 64, offset: 832)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1124, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1124, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1124, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1124, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1124, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1124, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1124, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1124, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1124, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1124, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1124, file: !256, line: 93, baseType: !1140, size: 64, offset: 1344)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1124, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1124, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1124, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1124, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!1156 = !{!1117, !1157, !1158}
!1157 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1118, file: !803, line: 133, type: !807)
!1158 = !DILocalVariable(name: "__ap", arg: 3, scope: !1118, file: !803, line: 133, type: !346)
!1159 = !DILocation(line: 0, scope: !1118, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 229, column: 3, scope: !1108)
!1161 = !DILocation(line: 135, column: 10, scope: !1118, inlinedAt: !1160)
!1162 = !DILocation(line: 232, column: 3, scope: !1108)
!1163 = !DILocation(line: 233, column: 7, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1108, file: !336, line: 233, column: 7)
!1165 = !DILocation(line: 233, column: 7, scope: !1108)
!1166 = !DILocalVariable(name: "errbuf", scope: !1167, file: !336, line: 193, type: !1171)
!1167 = distinct !DISubprogram(name: "print_errno_message", scope: !336, file: !336, line: 188, type: !746, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1168)
!1168 = !{!1169, !1170, !1166}
!1169 = !DILocalVariable(name: "errnum", arg: 1, scope: !1167, file: !336, line: 188, type: !116)
!1170 = !DILocalVariable(name: "s", scope: !1167, file: !336, line: 190, type: !80)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 1024)
!1174 = !DILocation(line: 0, scope: !1167, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 234, column: 5, scope: !1164)
!1176 = !DILocation(line: 193, column: 3, scope: !1167, inlinedAt: !1175)
!1177 = !DILocation(line: 195, column: 7, scope: !1167, inlinedAt: !1175)
!1178 = !DILocation(line: 207, column: 9, scope: !1179, inlinedAt: !1175)
!1179 = distinct !DILexicalBlock(scope: !1167, file: !336, line: 207, column: 7)
!1180 = !DILocation(line: 207, column: 7, scope: !1167, inlinedAt: !1175)
!1181 = !DILocation(line: 208, column: 9, scope: !1179, inlinedAt: !1175)
!1182 = !DILocation(line: 208, column: 5, scope: !1179, inlinedAt: !1175)
!1183 = !DILocation(line: 214, column: 3, scope: !1167, inlinedAt: !1175)
!1184 = !DILocation(line: 216, column: 1, scope: !1167, inlinedAt: !1175)
!1185 = !DILocation(line: 234, column: 5, scope: !1164)
!1186 = !DILocation(line: 238, column: 3, scope: !1108)
!1187 = !DILocalVariable(name: "__c", arg: 1, scope: !1188, file: !1189, line: 101, type: !116)
!1188 = distinct !DISubprogram(name: "putc_unlocked", scope: !1189, file: !1189, line: 101, type: !1190, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1192)
!1189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!116, !116, !1122}
!1192 = !{!1187, !1193}
!1193 = !DILocalVariable(name: "__stream", arg: 2, scope: !1188, file: !1189, line: 101, type: !1122)
!1194 = !DILocation(line: 0, scope: !1188, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 238, column: 3, scope: !1108)
!1196 = !DILocation(line: 103, column: 10, scope: !1188, inlinedAt: !1195)
!1197 = !{!1198, !757, i64 40}
!1198 = !{!"_IO_FILE", !818, i64 0, !757, i64 8, !757, i64 16, !757, i64 24, !757, i64 32, !757, i64 40, !757, i64 48, !757, i64 56, !757, i64 64, !757, i64 72, !757, i64 80, !757, i64 88, !757, i64 96, !757, i64 104, !818, i64 112, !818, i64 116, !1199, i64 120, !859, i64 128, !758, i64 130, !758, i64 131, !757, i64 136, !1199, i64 144, !757, i64 152, !757, i64 160, !757, i64 168, !757, i64 176, !1199, i64 184, !818, i64 192, !758, i64 196}
!1199 = !{!"long", !758, i64 0}
!1200 = !{!1198, !757, i64 48}
!1201 = !{!"branch_weights", i32 2000, i32 1}
!1202 = !DILocation(line: 240, column: 3, scope: !1108)
!1203 = !DILocation(line: 241, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1108, file: !336, line: 241, column: 7)
!1205 = !DILocation(line: 241, column: 7, scope: !1108)
!1206 = !DILocation(line: 242, column: 5, scope: !1204)
!1207 = !DILocation(line: 243, column: 1, scope: !1108)
!1208 = !DISubprogram(name: "__vfprintf_chk", scope: !803, file: !803, line: 96, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!116, !1121, !116, !807, !346}
!1211 = !DISubprogram(name: "strerror_r", scope: !937, file: !937, line: 444, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!260, !116, !260, !118}
!1214 = !DISubprogram(name: "__overflow", scope: !812, file: !812, line: 886, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!116, !1122, !116}
!1217 = !DISubprogram(name: "fflush_unlocked", scope: !812, file: !812, line: 239, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!116, !1122}
!1220 = !DISubprogram(name: "fcntl", scope: !1221, file: !1221, line: 149, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1221 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!116, !116, !116, null}
!1224 = distinct !DISubprogram(name: "error", scope: !336, file: !336, line: 285, type: !1225, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !116, !116, !80, null}
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DILocalVariable(name: "status", arg: 1, scope: !1224, file: !336, line: 285, type: !116)
!1229 = !DILocalVariable(name: "errnum", arg: 2, scope: !1224, file: !336, line: 285, type: !116)
!1230 = !DILocalVariable(name: "message", arg: 3, scope: !1224, file: !336, line: 285, type: !80)
!1231 = !DILocalVariable(name: "ap", scope: !1224, file: !336, line: 287, type: !1232)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !812, line: 52, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1234, line: 12, baseType: !1235)
!1234 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !336, baseType: !1236)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !35)
!1237 = distinct !DIAssignID()
!1238 = !DILocation(line: 0, scope: !1224)
!1239 = !DILocation(line: 287, column: 3, scope: !1224)
!1240 = !DILocation(line: 288, column: 3, scope: !1224)
!1241 = !DILocation(line: 289, column: 3, scope: !1224)
!1242 = !DILocation(line: 290, column: 3, scope: !1224)
!1243 = !DILocation(line: 291, column: 1, scope: !1224)
!1244 = !DILocation(line: 0, scope: !343)
!1245 = !DILocation(line: 302, column: 7, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !343, file: !336, line: 302, column: 7)
!1247 = !DILocation(line: 302, column: 7, scope: !343)
!1248 = !DILocation(line: 307, column: 11, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !336, line: 307, column: 11)
!1250 = distinct !DILexicalBlock(scope: !1246, file: !336, line: 303, column: 5)
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
!1264 = !DILocation(line: 327, column: 3, scope: !343)
!1265 = !DILocation(line: 331, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !343, file: !336, line: 331, column: 7)
!1267 = !DILocation(line: 331, column: 7, scope: !343)
!1268 = !DILocation(line: 332, column: 5, scope: !1266)
!1269 = !DILocation(line: 338, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !336, line: 334, column: 5)
!1271 = !DILocation(line: 346, column: 3, scope: !343)
!1272 = !DILocation(line: 350, column: 3, scope: !343)
!1273 = !DILocation(line: 356, column: 1, scope: !343)
!1274 = distinct !DISubprogram(name: "error_at_line", scope: !336, file: !336, line: 359, type: !1275, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1277)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null, !116, !116, !80, !86, !80, null}
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283}
!1278 = !DILocalVariable(name: "status", arg: 1, scope: !1274, file: !336, line: 359, type: !116)
!1279 = !DILocalVariable(name: "errnum", arg: 2, scope: !1274, file: !336, line: 359, type: !116)
!1280 = !DILocalVariable(name: "file_name", arg: 3, scope: !1274, file: !336, line: 359, type: !80)
!1281 = !DILocalVariable(name: "line_number", arg: 4, scope: !1274, file: !336, line: 360, type: !86)
!1282 = !DILocalVariable(name: "message", arg: 5, scope: !1274, file: !336, line: 360, type: !80)
!1283 = !DILocalVariable(name: "ap", scope: !1274, file: !336, line: 362, type: !1232)
!1284 = distinct !DIAssignID()
!1285 = !DILocation(line: 0, scope: !1274)
!1286 = !DILocation(line: 362, column: 3, scope: !1274)
!1287 = !DILocation(line: 363, column: 3, scope: !1274)
!1288 = !DILocation(line: 364, column: 3, scope: !1274)
!1289 = !DILocation(line: 366, column: 3, scope: !1274)
!1290 = !DILocation(line: 367, column: 1, scope: !1274)
!1291 = distinct !DISubprogram(name: "getprogname", scope: !675, file: !675, line: 54, type: !1292, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!80}
!1294 = !DILocation(line: 58, column: 10, scope: !1291)
!1295 = !DILocation(line: 58, column: 3, scope: !1291)
!1296 = distinct !DISubprogram(name: "parse_long_options", scope: !386, file: !386, line: 45, type: !1297, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1300)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !116, !970, !80, !80, !80, !1299, null}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1311}
!1301 = !DILocalVariable(name: "argc", arg: 1, scope: !1296, file: !386, line: 45, type: !116)
!1302 = !DILocalVariable(name: "argv", arg: 2, scope: !1296, file: !386, line: 46, type: !970)
!1303 = !DILocalVariable(name: "command_name", arg: 3, scope: !1296, file: !386, line: 47, type: !80)
!1304 = !DILocalVariable(name: "package", arg: 4, scope: !1296, file: !386, line: 48, type: !80)
!1305 = !DILocalVariable(name: "version", arg: 5, scope: !1296, file: !386, line: 49, type: !80)
!1306 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1296, file: !386, line: 50, type: !1299)
!1307 = !DILocalVariable(name: "saved_opterr", scope: !1296, file: !386, line: 53, type: !116)
!1308 = !DILocalVariable(name: "c", scope: !1309, file: !386, line: 60, type: !116)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !386, line: 59, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1296, file: !386, line: 58, column: 7)
!1311 = !DILocalVariable(name: "authors", scope: !1312, file: !386, line: 71, type: !1316)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !386, line: 70, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !386, line: 64, column: 13)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !386, line: 62, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !386, line: 61, column: 11)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !812, line: 52, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1234, line: 12, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !386, baseType: !1319)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, size: 192, elements: !35)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1325}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1320, file: !386, line: 71, baseType: !86, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1320, file: !386, line: 71, baseType: !86, size: 32, offset: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1320, file: !386, line: 71, baseType: !115, size: 64, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1320, file: !386, line: 71, baseType: !115, size: 64, offset: 128)
!1326 = distinct !DIAssignID()
!1327 = !DILocation(line: 0, scope: !1312)
!1328 = !DILocation(line: 0, scope: !1296)
!1329 = !DILocation(line: 53, column: 22, scope: !1296)
!1330 = !DILocation(line: 56, column: 10, scope: !1296)
!1331 = !DILocation(line: 58, column: 12, scope: !1310)
!1332 = !DILocation(line: 58, column: 7, scope: !1296)
!1333 = !DILocation(line: 60, column: 15, scope: !1309)
!1334 = !DILocation(line: 0, scope: !1309)
!1335 = !DILocation(line: 61, column: 11, scope: !1309)
!1336 = !DILocation(line: 66, column: 15, scope: !1313)
!1337 = !DILocation(line: 67, column: 15, scope: !1313)
!1338 = !DILocation(line: 71, column: 17, scope: !1312)
!1339 = !DILocation(line: 72, column: 17, scope: !1312)
!1340 = !DILocation(line: 73, column: 33, scope: !1312)
!1341 = !DILocation(line: 73, column: 17, scope: !1312)
!1342 = !DILocation(line: 74, column: 17, scope: !1312)
!1343 = !DILocation(line: 85, column: 10, scope: !1296)
!1344 = !DILocation(line: 89, column: 10, scope: !1296)
!1345 = !DILocation(line: 90, column: 1, scope: !1296)
!1346 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!116, !116, !1349, !80, !1351, !406}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1352 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !386, file: !386, line: 98, type: !1353, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !116, !970, !80, !80, !80, !239, !1299, null}
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1356 = !DILocalVariable(name: "argc", arg: 1, scope: !1352, file: !386, line: 98, type: !116)
!1357 = !DILocalVariable(name: "argv", arg: 2, scope: !1352, file: !386, line: 99, type: !970)
!1358 = !DILocalVariable(name: "command_name", arg: 3, scope: !1352, file: !386, line: 100, type: !80)
!1359 = !DILocalVariable(name: "package", arg: 4, scope: !1352, file: !386, line: 101, type: !80)
!1360 = !DILocalVariable(name: "version", arg: 5, scope: !1352, file: !386, line: 102, type: !80)
!1361 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1352, file: !386, line: 103, type: !239)
!1362 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1352, file: !386, line: 104, type: !1299)
!1363 = !DILocalVariable(name: "saved_opterr", scope: !1352, file: !386, line: 107, type: !116)
!1364 = !DILocalVariable(name: "optstring", scope: !1352, file: !386, line: 112, type: !80)
!1365 = !DILocalVariable(name: "c", scope: !1352, file: !386, line: 114, type: !116)
!1366 = !DILocalVariable(name: "authors", scope: !1367, file: !386, line: 125, type: !1316)
!1367 = distinct !DILexicalBlock(scope: !1368, file: !386, line: 124, column: 11)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !386, line: 118, column: 9)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !386, line: 116, column: 5)
!1370 = distinct !DILexicalBlock(scope: !1352, file: !386, line: 115, column: 7)
!1371 = distinct !DIAssignID()
!1372 = !DILocation(line: 0, scope: !1367)
!1373 = !DILocation(line: 0, scope: !1352)
!1374 = !DILocation(line: 107, column: 22, scope: !1352)
!1375 = !DILocation(line: 110, column: 10, scope: !1352)
!1376 = !DILocation(line: 112, column: 27, scope: !1352)
!1377 = !DILocation(line: 114, column: 11, scope: !1352)
!1378 = !DILocation(line: 115, column: 7, scope: !1352)
!1379 = !DILocation(line: 125, column: 13, scope: !1367)
!1380 = !DILocation(line: 126, column: 13, scope: !1367)
!1381 = !DILocation(line: 127, column: 29, scope: !1367)
!1382 = !DILocation(line: 127, column: 13, scope: !1367)
!1383 = !DILocation(line: 128, column: 13, scope: !1367)
!1384 = !DILocation(line: 132, column: 26, scope: !1368)
!1385 = !DILocation(line: 133, column: 11, scope: !1368)
!1386 = !DILocation(line: 0, scope: !1368)
!1387 = !DILocation(line: 138, column: 10, scope: !1352)
!1388 = !DILocation(line: 139, column: 1, scope: !1352)
!1389 = distinct !DISubprogram(name: "set_program_name", scope: !411, file: !411, line: 37, type: !767, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1390)
!1390 = !{!1391, !1392, !1393}
!1391 = !DILocalVariable(name: "argv0", arg: 1, scope: !1389, file: !411, line: 37, type: !80)
!1392 = !DILocalVariable(name: "slash", scope: !1389, file: !411, line: 44, type: !80)
!1393 = !DILocalVariable(name: "base", scope: !1389, file: !411, line: 45, type: !80)
!1394 = !DILocation(line: 0, scope: !1389)
!1395 = !DILocation(line: 44, column: 23, scope: !1389)
!1396 = !DILocation(line: 45, column: 22, scope: !1389)
!1397 = !DILocation(line: 46, column: 17, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1389, file: !411, line: 46, column: 7)
!1399 = !DILocation(line: 46, column: 9, scope: !1398)
!1400 = !DILocation(line: 46, column: 25, scope: !1398)
!1401 = !DILocation(line: 46, column: 40, scope: !1398)
!1402 = !DILocalVariable(name: "__s1", arg: 1, scope: !1403, file: !830, line: 974, type: !965)
!1403 = distinct !DISubprogram(name: "memeq", scope: !830, file: !830, line: 974, type: !1404, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1406)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!239, !965, !965, !118}
!1406 = !{!1402, !1407, !1408}
!1407 = !DILocalVariable(name: "__s2", arg: 2, scope: !1403, file: !830, line: 974, type: !965)
!1408 = !DILocalVariable(name: "__n", arg: 3, scope: !1403, file: !830, line: 974, type: !118)
!1409 = !DILocation(line: 0, scope: !1403, inlinedAt: !1410)
!1410 = distinct !DILocation(line: 46, column: 28, scope: !1398)
!1411 = !DILocation(line: 976, column: 11, scope: !1403, inlinedAt: !1410)
!1412 = !DILocation(line: 976, column: 10, scope: !1403, inlinedAt: !1410)
!1413 = !DILocation(line: 46, column: 7, scope: !1389)
!1414 = !DILocation(line: 49, column: 11, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !411, line: 49, column: 11)
!1416 = distinct !DILexicalBlock(scope: !1398, file: !411, line: 47, column: 5)
!1417 = !DILocation(line: 49, column: 36, scope: !1415)
!1418 = !DILocation(line: 49, column: 11, scope: !1416)
!1419 = !DILocation(line: 65, column: 16, scope: !1389)
!1420 = !DILocation(line: 71, column: 27, scope: !1389)
!1421 = !DILocation(line: 74, column: 33, scope: !1389)
!1422 = !DILocation(line: 76, column: 1, scope: !1389)
!1423 = !DISubprogram(name: "strrchr", scope: !937, file: !937, line: 273, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1424 = distinct !DIAssignID()
!1425 = !DILocation(line: 0, scope: !420)
!1426 = distinct !DIAssignID()
!1427 = !DILocation(line: 40, column: 29, scope: !420)
!1428 = !DILocation(line: 41, column: 19, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !420, file: !421, line: 41, column: 7)
!1430 = !DILocation(line: 41, column: 7, scope: !420)
!1431 = !DILocation(line: 47, column: 3, scope: !420)
!1432 = !DILocation(line: 48, column: 3, scope: !420)
!1433 = !DILocalVariable(name: "ps", arg: 1, scope: !1434, file: !1435, line: 1135, type: !1438)
!1434 = distinct !DISubprogram(name: "mbszero", scope: !1435, file: !1435, line: 1135, type: !1436, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1439)
!1435 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1439 = !{!1433}
!1440 = !DILocation(line: 0, scope: !1434, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 48, column: 18, scope: !420)
!1442 = !DILocalVariable(name: "__dest", arg: 1, scope: !1443, file: !1444, line: 57, type: !115)
!1443 = distinct !DISubprogram(name: "memset", scope: !1444, file: !1444, line: 57, type: !1445, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1447)
!1444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!115, !115, !116, !118}
!1447 = !{!1442, !1448, !1449}
!1448 = !DILocalVariable(name: "__ch", arg: 2, scope: !1443, file: !1444, line: 57, type: !116)
!1449 = !DILocalVariable(name: "__len", arg: 3, scope: !1443, file: !1444, line: 57, type: !118)
!1450 = !DILocation(line: 0, scope: !1443, inlinedAt: !1451)
!1451 = distinct !DILocation(line: 1137, column: 3, scope: !1434, inlinedAt: !1441)
!1452 = !DILocation(line: 59, column: 10, scope: !1443, inlinedAt: !1451)
!1453 = !DILocation(line: 49, column: 7, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !420, file: !421, line: 49, column: 7)
!1455 = !DILocation(line: 49, column: 39, scope: !1454)
!1456 = !DILocation(line: 49, column: 44, scope: !1454)
!1457 = !DILocation(line: 54, column: 1, scope: !420)
!1458 = !DISubprogram(name: "mbrtoc32", scope: !432, file: !432, line: 57, type: !1459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!118, !1461, !807, !118, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1462)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1438)
!1464 = distinct !DISubprogram(name: "clone_quoting_options", scope: !451, file: !451, line: 113, type: !1465, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1468)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1467, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1468 = !{!1469, !1470, !1471}
!1469 = !DILocalVariable(name: "o", arg: 1, scope: !1464, file: !451, line: 113, type: !1467)
!1470 = !DILocalVariable(name: "saved_errno", scope: !1464, file: !451, line: 115, type: !116)
!1471 = !DILocalVariable(name: "p", scope: !1464, file: !451, line: 116, type: !1467)
!1472 = !DILocation(line: 0, scope: !1464)
!1473 = !DILocation(line: 115, column: 21, scope: !1464)
!1474 = !DILocation(line: 116, column: 40, scope: !1464)
!1475 = !DILocation(line: 116, column: 31, scope: !1464)
!1476 = !DILocation(line: 118, column: 9, scope: !1464)
!1477 = !DILocation(line: 119, column: 3, scope: !1464)
!1478 = distinct !DISubprogram(name: "get_quoting_style", scope: !451, file: !451, line: 124, type: !1479, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1483)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!477, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!1483 = !{!1484}
!1484 = !DILocalVariable(name: "o", arg: 1, scope: !1478, file: !451, line: 124, type: !1481)
!1485 = !DILocation(line: 0, scope: !1478)
!1486 = !DILocation(line: 126, column: 11, scope: !1478)
!1487 = !DILocation(line: 126, column: 46, scope: !1478)
!1488 = !{!1489, !818, i64 0}
!1489 = !{!"quoting_options", !818, i64 0, !818, i64 4, !758, i64 8, !757, i64 40, !757, i64 48}
!1490 = !DILocation(line: 126, column: 3, scope: !1478)
!1491 = distinct !DISubprogram(name: "set_quoting_style", scope: !451, file: !451, line: 132, type: !1492, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1494)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !1467, !477}
!1494 = !{!1495, !1496}
!1495 = !DILocalVariable(name: "o", arg: 1, scope: !1491, file: !451, line: 132, type: !1467)
!1496 = !DILocalVariable(name: "s", arg: 2, scope: !1491, file: !451, line: 132, type: !477)
!1497 = !DILocation(line: 0, scope: !1491)
!1498 = !DILocation(line: 134, column: 4, scope: !1491)
!1499 = !DILocation(line: 134, column: 45, scope: !1491)
!1500 = !DILocation(line: 135, column: 1, scope: !1491)
!1501 = distinct !DISubprogram(name: "set_char_quoting", scope: !451, file: !451, line: 143, type: !1502, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1504)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!116, !1467, !4, !116}
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1511, !1512}
!1505 = !DILocalVariable(name: "o", arg: 1, scope: !1501, file: !451, line: 143, type: !1467)
!1506 = !DILocalVariable(name: "c", arg: 2, scope: !1501, file: !451, line: 143, type: !4)
!1507 = !DILocalVariable(name: "i", arg: 3, scope: !1501, file: !451, line: 143, type: !116)
!1508 = !DILocalVariable(name: "uc", scope: !1501, file: !451, line: 145, type: !121)
!1509 = !DILocalVariable(name: "p", scope: !1501, file: !451, line: 146, type: !1510)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1511 = !DILocalVariable(name: "shift", scope: !1501, file: !451, line: 148, type: !116)
!1512 = !DILocalVariable(name: "r", scope: !1501, file: !451, line: 149, type: !86)
!1513 = !DILocation(line: 0, scope: !1501)
!1514 = !DILocation(line: 147, column: 6, scope: !1501)
!1515 = !DILocation(line: 147, column: 41, scope: !1501)
!1516 = !DILocation(line: 147, column: 62, scope: !1501)
!1517 = !DILocation(line: 147, column: 57, scope: !1501)
!1518 = !DILocation(line: 148, column: 15, scope: !1501)
!1519 = !DILocation(line: 149, column: 21, scope: !1501)
!1520 = !DILocation(line: 149, column: 24, scope: !1501)
!1521 = !DILocation(line: 149, column: 34, scope: !1501)
!1522 = !DILocation(line: 150, column: 19, scope: !1501)
!1523 = !DILocation(line: 150, column: 24, scope: !1501)
!1524 = !DILocation(line: 150, column: 6, scope: !1501)
!1525 = !DILocation(line: 151, column: 3, scope: !1501)
!1526 = distinct !DISubprogram(name: "set_quoting_flags", scope: !451, file: !451, line: 159, type: !1527, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1529)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!116, !1467, !116}
!1529 = !{!1530, !1531, !1532}
!1530 = !DILocalVariable(name: "o", arg: 1, scope: !1526, file: !451, line: 159, type: !1467)
!1531 = !DILocalVariable(name: "i", arg: 2, scope: !1526, file: !451, line: 159, type: !116)
!1532 = !DILocalVariable(name: "r", scope: !1526, file: !451, line: 163, type: !116)
!1533 = !DILocation(line: 0, scope: !1526)
!1534 = !DILocation(line: 161, column: 8, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1526, file: !451, line: 161, column: 7)
!1536 = !DILocation(line: 161, column: 7, scope: !1526)
!1537 = !DILocation(line: 163, column: 14, scope: !1526)
!1538 = !{!1489, !818, i64 4}
!1539 = !DILocation(line: 164, column: 12, scope: !1526)
!1540 = !DILocation(line: 165, column: 3, scope: !1526)
!1541 = distinct !DISubprogram(name: "set_custom_quoting", scope: !451, file: !451, line: 169, type: !1542, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1544)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{null, !1467, !80, !80}
!1544 = !{!1545, !1546, !1547}
!1545 = !DILocalVariable(name: "o", arg: 1, scope: !1541, file: !451, line: 169, type: !1467)
!1546 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1541, file: !451, line: 170, type: !80)
!1547 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1541, file: !451, line: 170, type: !80)
!1548 = !DILocation(line: 0, scope: !1541)
!1549 = !DILocation(line: 172, column: 8, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1541, file: !451, line: 172, column: 7)
!1551 = !DILocation(line: 172, column: 7, scope: !1541)
!1552 = !DILocation(line: 174, column: 12, scope: !1541)
!1553 = !DILocation(line: 175, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1541, file: !451, line: 175, column: 7)
!1555 = !DILocation(line: 175, column: 19, scope: !1554)
!1556 = !DILocation(line: 176, column: 5, scope: !1554)
!1557 = !DILocation(line: 177, column: 6, scope: !1541)
!1558 = !DILocation(line: 177, column: 17, scope: !1541)
!1559 = !{!1489, !757, i64 40}
!1560 = !DILocation(line: 178, column: 6, scope: !1541)
!1561 = !DILocation(line: 178, column: 18, scope: !1541)
!1562 = !{!1489, !757, i64 48}
!1563 = !DILocation(line: 179, column: 1, scope: !1541)
!1564 = !DISubprogram(name: "abort", scope: !941, file: !941, line: 598, type: !382, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1565 = distinct !DISubprogram(name: "quotearg_buffer", scope: !451, file: !451, line: 774, type: !1566, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!118, !260, !118, !80, !118, !1481}
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1569 = !DILocalVariable(name: "buffer", arg: 1, scope: !1565, file: !451, line: 774, type: !260)
!1570 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1565, file: !451, line: 774, type: !118)
!1571 = !DILocalVariable(name: "arg", arg: 3, scope: !1565, file: !451, line: 775, type: !80)
!1572 = !DILocalVariable(name: "argsize", arg: 4, scope: !1565, file: !451, line: 775, type: !118)
!1573 = !DILocalVariable(name: "o", arg: 5, scope: !1565, file: !451, line: 776, type: !1481)
!1574 = !DILocalVariable(name: "p", scope: !1565, file: !451, line: 778, type: !1481)
!1575 = !DILocalVariable(name: "saved_errno", scope: !1565, file: !451, line: 779, type: !116)
!1576 = !DILocalVariable(name: "r", scope: !1565, file: !451, line: 780, type: !118)
!1577 = !DILocation(line: 0, scope: !1565)
!1578 = !DILocation(line: 778, column: 37, scope: !1565)
!1579 = !DILocation(line: 779, column: 21, scope: !1565)
!1580 = !DILocation(line: 781, column: 43, scope: !1565)
!1581 = !DILocation(line: 781, column: 53, scope: !1565)
!1582 = !DILocation(line: 781, column: 63, scope: !1565)
!1583 = !DILocation(line: 782, column: 43, scope: !1565)
!1584 = !DILocation(line: 782, column: 58, scope: !1565)
!1585 = !DILocation(line: 780, column: 14, scope: !1565)
!1586 = !DILocation(line: 783, column: 9, scope: !1565)
!1587 = !DILocation(line: 784, column: 3, scope: !1565)
!1588 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !451, file: !451, line: 251, type: !1589, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1593)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!118, !260, !118, !80, !118, !477, !116, !1591, !80, !80}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1593 = !{!1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1619, !1621, !1624, !1625, !1626, !1627, !1630, !1631, !1633, !1634, !1637, !1641, !1642, !1650, !1653, !1654, !1655}
!1594 = !DILocalVariable(name: "buffer", arg: 1, scope: !1588, file: !451, line: 251, type: !260)
!1595 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1588, file: !451, line: 251, type: !118)
!1596 = !DILocalVariable(name: "arg", arg: 3, scope: !1588, file: !451, line: 252, type: !80)
!1597 = !DILocalVariable(name: "argsize", arg: 4, scope: !1588, file: !451, line: 252, type: !118)
!1598 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1588, file: !451, line: 253, type: !477)
!1599 = !DILocalVariable(name: "flags", arg: 6, scope: !1588, file: !451, line: 253, type: !116)
!1600 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1588, file: !451, line: 254, type: !1591)
!1601 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1588, file: !451, line: 255, type: !80)
!1602 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1588, file: !451, line: 256, type: !80)
!1603 = !DILocalVariable(name: "unibyte_locale", scope: !1588, file: !451, line: 258, type: !239)
!1604 = !DILocalVariable(name: "len", scope: !1588, file: !451, line: 260, type: !118)
!1605 = !DILocalVariable(name: "orig_buffersize", scope: !1588, file: !451, line: 261, type: !118)
!1606 = !DILocalVariable(name: "quote_string", scope: !1588, file: !451, line: 262, type: !80)
!1607 = !DILocalVariable(name: "quote_string_len", scope: !1588, file: !451, line: 263, type: !118)
!1608 = !DILocalVariable(name: "backslash_escapes", scope: !1588, file: !451, line: 264, type: !239)
!1609 = !DILocalVariable(name: "elide_outer_quotes", scope: !1588, file: !451, line: 265, type: !239)
!1610 = !DILocalVariable(name: "encountered_single_quote", scope: !1588, file: !451, line: 266, type: !239)
!1611 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1588, file: !451, line: 267, type: !239)
!1612 = !DILabel(scope: !1588, name: "process_input", file: !451, line: 308)
!1613 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1588, file: !451, line: 309, type: !239)
!1614 = !DILocalVariable(name: "lq", scope: !1615, file: !451, line: 361, type: !80)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !451, line: 361, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !451, line: 360, column: 13)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !451, line: 333, column: 7)
!1618 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 312, column: 5)
!1619 = !DILocalVariable(name: "i", scope: !1620, file: !451, line: 395, type: !118)
!1620 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 395, column: 3)
!1621 = !DILocalVariable(name: "is_right_quote", scope: !1622, file: !451, line: 397, type: !239)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !451, line: 396, column: 5)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 395, column: 3)
!1624 = !DILocalVariable(name: "escaping", scope: !1622, file: !451, line: 398, type: !239)
!1625 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1622, file: !451, line: 399, type: !239)
!1626 = !DILocalVariable(name: "c", scope: !1622, file: !451, line: 417, type: !121)
!1627 = !DILabel(scope: !1628, name: "c_and_shell_escape", file: !451, line: 502)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 478, column: 9)
!1629 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 419, column: 9)
!1630 = !DILabel(scope: !1628, name: "c_escape", file: !451, line: 507)
!1631 = !DILocalVariable(name: "m", scope: !1632, file: !451, line: 598, type: !118)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 596, column: 11)
!1633 = !DILocalVariable(name: "printable", scope: !1632, file: !451, line: 600, type: !239)
!1634 = !DILocalVariable(name: "mbs", scope: !1635, file: !451, line: 609, type: !526)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !451, line: 608, column: 15)
!1636 = distinct !DILexicalBlock(scope: !1632, file: !451, line: 602, column: 17)
!1637 = !DILocalVariable(name: "w", scope: !1638, file: !451, line: 618, type: !431)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !451, line: 617, column: 19)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !451, line: 616, column: 17)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !451, line: 616, column: 17)
!1641 = !DILocalVariable(name: "bytes", scope: !1638, file: !451, line: 619, type: !118)
!1642 = !DILocalVariable(name: "j", scope: !1643, file: !451, line: 648, type: !118)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !451, line: 648, column: 29)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !451, line: 647, column: 27)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !451, line: 645, column: 29)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !451, line: 636, column: 23)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !451, line: 628, column: 30)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 623, column: 30)
!1649 = distinct !DILexicalBlock(scope: !1638, file: !451, line: 621, column: 25)
!1650 = !DILocalVariable(name: "ilim", scope: !1651, file: !451, line: 674, type: !118)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !451, line: 671, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1632, file: !451, line: 670, column: 17)
!1653 = !DILabel(scope: !1622, name: "store_escape", file: !451, line: 709)
!1654 = !DILabel(scope: !1622, name: "store_c", file: !451, line: 712)
!1655 = !DILabel(scope: !1588, name: "force_outer_quoting_style", file: !451, line: 753)
!1656 = distinct !DIAssignID()
!1657 = distinct !DIAssignID()
!1658 = distinct !DIAssignID()
!1659 = distinct !DIAssignID()
!1660 = distinct !DIAssignID()
!1661 = !DILocation(line: 0, scope: !1635)
!1662 = distinct !DIAssignID()
!1663 = !DILocation(line: 0, scope: !1638)
!1664 = !DILocation(line: 0, scope: !1588)
!1665 = !DILocation(line: 258, column: 25, scope: !1588)
!1666 = !DILocation(line: 258, column: 36, scope: !1588)
!1667 = !DILocation(line: 265, column: 8, scope: !1588)
!1668 = !DILocation(line: 267, column: 3, scope: !1588)
!1669 = !DILocation(line: 261, column: 10, scope: !1588)
!1670 = !DILocation(line: 262, column: 15, scope: !1588)
!1671 = !DILocation(line: 263, column: 10, scope: !1588)
!1672 = !DILocation(line: 264, column: 8, scope: !1588)
!1673 = !DILocation(line: 266, column: 8, scope: !1588)
!1674 = !DILocation(line: 267, column: 8, scope: !1588)
!1675 = !DILocation(line: 308, column: 2, scope: !1588)
!1676 = !DILocation(line: 311, column: 3, scope: !1588)
!1677 = !DILocation(line: 318, column: 11, scope: !1618)
!1678 = !DILocation(line: 318, column: 12, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1618, file: !451, line: 318, column: 11)
!1680 = !DILocation(line: 319, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !451, line: 319, column: 9)
!1682 = distinct !DILexicalBlock(scope: !1679, file: !451, line: 319, column: 9)
!1683 = !DILocation(line: 319, column: 9, scope: !1682)
!1684 = !DILocation(line: 0, scope: !517, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 357, column: 26, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !451, line: 335, column: 11)
!1687 = distinct !DILexicalBlock(scope: !1617, file: !451, line: 334, column: 13)
!1688 = !DILocation(line: 199, column: 29, scope: !517, inlinedAt: !1685)
!1689 = !DILocation(line: 201, column: 19, scope: !1690, inlinedAt: !1685)
!1690 = distinct !DILexicalBlock(scope: !517, file: !451, line: 201, column: 7)
!1691 = !DILocation(line: 201, column: 7, scope: !517, inlinedAt: !1685)
!1692 = !DILocation(line: 229, column: 3, scope: !517, inlinedAt: !1685)
!1693 = !DILocation(line: 230, column: 3, scope: !517, inlinedAt: !1685)
!1694 = !DILocalVariable(name: "ps", arg: 1, scope: !1695, file: !1435, line: 1135, type: !1698)
!1695 = distinct !DISubprogram(name: "mbszero", scope: !1435, file: !1435, line: 1135, type: !1696, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1699)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!1699 = !{!1694}
!1700 = !DILocation(line: 0, scope: !1695, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 230, column: 18, scope: !517, inlinedAt: !1685)
!1702 = !DILocalVariable(name: "__dest", arg: 1, scope: !1703, file: !1444, line: 57, type: !115)
!1703 = distinct !DISubprogram(name: "memset", scope: !1444, file: !1444, line: 57, type: !1445, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1704)
!1704 = !{!1702, !1705, !1706}
!1705 = !DILocalVariable(name: "__ch", arg: 2, scope: !1703, file: !1444, line: 57, type: !116)
!1706 = !DILocalVariable(name: "__len", arg: 3, scope: !1703, file: !1444, line: 57, type: !118)
!1707 = !DILocation(line: 0, scope: !1703, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 1137, column: 3, scope: !1695, inlinedAt: !1701)
!1709 = !DILocation(line: 59, column: 10, scope: !1703, inlinedAt: !1708)
!1710 = !DILocation(line: 231, column: 7, scope: !1711, inlinedAt: !1685)
!1711 = distinct !DILexicalBlock(scope: !517, file: !451, line: 231, column: 7)
!1712 = !DILocation(line: 231, column: 40, scope: !1711, inlinedAt: !1685)
!1713 = !DILocation(line: 231, column: 45, scope: !1711, inlinedAt: !1685)
!1714 = !DILocation(line: 235, column: 1, scope: !517, inlinedAt: !1685)
!1715 = !DILocation(line: 0, scope: !517, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 358, column: 27, scope: !1686)
!1717 = !DILocation(line: 199, column: 29, scope: !517, inlinedAt: !1716)
!1718 = !DILocation(line: 201, column: 19, scope: !1690, inlinedAt: !1716)
!1719 = !DILocation(line: 201, column: 7, scope: !517, inlinedAt: !1716)
!1720 = !DILocation(line: 229, column: 3, scope: !517, inlinedAt: !1716)
!1721 = !DILocation(line: 230, column: 3, scope: !517, inlinedAt: !1716)
!1722 = !DILocation(line: 0, scope: !1695, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 230, column: 18, scope: !517, inlinedAt: !1716)
!1724 = !DILocation(line: 0, scope: !1703, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 1137, column: 3, scope: !1695, inlinedAt: !1723)
!1726 = !DILocation(line: 59, column: 10, scope: !1703, inlinedAt: !1725)
!1727 = !DILocation(line: 231, column: 7, scope: !1711, inlinedAt: !1716)
!1728 = !DILocation(line: 231, column: 40, scope: !1711, inlinedAt: !1716)
!1729 = !DILocation(line: 231, column: 45, scope: !1711, inlinedAt: !1716)
!1730 = !DILocation(line: 235, column: 1, scope: !517, inlinedAt: !1716)
!1731 = !DILocation(line: 360, column: 14, scope: !1616)
!1732 = !DILocation(line: 360, column: 13, scope: !1617)
!1733 = !DILocation(line: 0, scope: !1615)
!1734 = !DILocation(line: 361, column: 45, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 361, column: 11)
!1736 = !DILocation(line: 361, column: 11, scope: !1615)
!1737 = !DILocation(line: 362, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1739, file: !451, line: 362, column: 13)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !451, line: 362, column: 13)
!1740 = !DILocation(line: 362, column: 13, scope: !1739)
!1741 = !DILocation(line: 361, column: 52, scope: !1735)
!1742 = distinct !{!1742, !1736, !1743, !864}
!1743 = !DILocation(line: 362, column: 13, scope: !1615)
!1744 = !DILocation(line: 260, column: 10, scope: !1588)
!1745 = !DILocation(line: 365, column: 28, scope: !1617)
!1746 = !DILocation(line: 367, column: 7, scope: !1618)
!1747 = !DILocation(line: 370, column: 7, scope: !1618)
!1748 = !DILocation(line: 373, column: 7, scope: !1618)
!1749 = !DILocation(line: 376, column: 12, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1618, file: !451, line: 376, column: 11)
!1751 = !DILocation(line: 376, column: 11, scope: !1618)
!1752 = !DILocation(line: 381, column: 12, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1618, file: !451, line: 381, column: 11)
!1754 = !DILocation(line: 381, column: 11, scope: !1618)
!1755 = !DILocation(line: 382, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !451, line: 382, column: 9)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !451, line: 382, column: 9)
!1758 = !DILocation(line: 382, column: 9, scope: !1757)
!1759 = !DILocation(line: 389, column: 7, scope: !1618)
!1760 = !DILocation(line: 392, column: 7, scope: !1618)
!1761 = !DILocation(line: 0, scope: !1620)
!1762 = !DILocation(line: 395, column: 8, scope: !1620)
!1763 = !DILocation(line: 309, column: 8, scope: !1588)
!1764 = !DILocation(line: 395, scope: !1620)
!1765 = !DILocation(line: 395, column: 34, scope: !1623)
!1766 = !DILocation(line: 395, column: 26, scope: !1623)
!1767 = !DILocation(line: 395, column: 48, scope: !1623)
!1768 = !DILocation(line: 395, column: 55, scope: !1623)
!1769 = !DILocation(line: 395, column: 3, scope: !1620)
!1770 = !DILocation(line: 395, column: 67, scope: !1623)
!1771 = !DILocation(line: 0, scope: !1622)
!1772 = !DILocation(line: 402, column: 11, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 401, column: 11)
!1774 = !DILocation(line: 404, column: 17, scope: !1773)
!1775 = !DILocation(line: 405, column: 39, scope: !1773)
!1776 = !DILocation(line: 409, column: 32, scope: !1773)
!1777 = !DILocation(line: 405, column: 19, scope: !1773)
!1778 = !DILocation(line: 405, column: 15, scope: !1773)
!1779 = !DILocation(line: 410, column: 11, scope: !1773)
!1780 = !DILocation(line: 410, column: 25, scope: !1773)
!1781 = !DILocalVariable(name: "__s1", arg: 1, scope: !1782, file: !830, line: 974, type: !965)
!1782 = distinct !DISubprogram(name: "memeq", scope: !830, file: !830, line: 974, type: !1404, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1783)
!1783 = !{!1781, !1784, !1785}
!1784 = !DILocalVariable(name: "__s2", arg: 2, scope: !1782, file: !830, line: 974, type: !965)
!1785 = !DILocalVariable(name: "__n", arg: 3, scope: !1782, file: !830, line: 974, type: !118)
!1786 = !DILocation(line: 0, scope: !1782, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 410, column: 14, scope: !1773)
!1788 = !DILocation(line: 976, column: 11, scope: !1782, inlinedAt: !1787)
!1789 = !DILocation(line: 976, column: 10, scope: !1782, inlinedAt: !1787)
!1790 = !DILocation(line: 401, column: 11, scope: !1622)
!1791 = !DILocation(line: 417, column: 25, scope: !1622)
!1792 = !DILocation(line: 418, column: 7, scope: !1622)
!1793 = !DILocation(line: 421, column: 15, scope: !1629)
!1794 = !DILocation(line: 423, column: 15, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !451, line: 423, column: 15)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !451, line: 422, column: 13)
!1797 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 421, column: 15)
!1798 = !DILocation(line: 423, column: 15, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !451, line: 423, column: 15)
!1800 = !DILocation(line: 423, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !451, line: 423, column: 15)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !451, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1799, file: !451, line: 423, column: 15)
!1804 = !DILocation(line: 423, column: 15, scope: !1802)
!1805 = !DILocation(line: 423, column: 15, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !451, line: 423, column: 15)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !451, line: 423, column: 15)
!1808 = !DILocation(line: 423, column: 15, scope: !1807)
!1809 = !DILocation(line: 423, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !451, line: 423, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1803, file: !451, line: 423, column: 15)
!1812 = !DILocation(line: 423, column: 15, scope: !1811)
!1813 = !DILocation(line: 423, column: 15, scope: !1803)
!1814 = !DILocation(line: 423, column: 15, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !451, line: 423, column: 15)
!1816 = distinct !DILexicalBlock(scope: !1795, file: !451, line: 423, column: 15)
!1817 = !DILocation(line: 423, column: 15, scope: !1816)
!1818 = !DILocation(line: 431, column: 19, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1796, file: !451, line: 430, column: 19)
!1820 = !DILocation(line: 431, column: 24, scope: !1819)
!1821 = !DILocation(line: 431, column: 28, scope: !1819)
!1822 = !DILocation(line: 431, column: 38, scope: !1819)
!1823 = !DILocation(line: 431, column: 48, scope: !1819)
!1824 = !DILocation(line: 431, column: 59, scope: !1819)
!1825 = !DILocation(line: 433, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !451, line: 433, column: 19)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !451, line: 433, column: 19)
!1828 = distinct !DILexicalBlock(scope: !1819, file: !451, line: 432, column: 17)
!1829 = !DILocation(line: 433, column: 19, scope: !1827)
!1830 = !DILocation(line: 434, column: 19, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !451, line: 434, column: 19)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !451, line: 434, column: 19)
!1833 = !DILocation(line: 434, column: 19, scope: !1832)
!1834 = !DILocation(line: 435, column: 17, scope: !1828)
!1835 = !DILocation(line: 442, column: 20, scope: !1797)
!1836 = !DILocation(line: 447, column: 11, scope: !1629)
!1837 = !DILocation(line: 450, column: 19, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 448, column: 13)
!1839 = !DILocation(line: 456, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1838, file: !451, line: 455, column: 19)
!1841 = !DILocation(line: 456, column: 24, scope: !1840)
!1842 = !DILocation(line: 456, column: 28, scope: !1840)
!1843 = !DILocation(line: 456, column: 38, scope: !1840)
!1844 = !DILocation(line: 456, column: 41, scope: !1840)
!1845 = !DILocation(line: 456, column: 52, scope: !1840)
!1846 = !DILocation(line: 455, column: 19, scope: !1838)
!1847 = !DILocation(line: 457, column: 25, scope: !1840)
!1848 = !DILocation(line: 457, column: 17, scope: !1840)
!1849 = !DILocation(line: 464, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1840, file: !451, line: 458, column: 19)
!1851 = !DILocation(line: 468, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !451, line: 468, column: 21)
!1853 = distinct !DILexicalBlock(scope: !1850, file: !451, line: 468, column: 21)
!1854 = !DILocation(line: 468, column: 21, scope: !1853)
!1855 = !DILocation(line: 469, column: 21, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !451, line: 469, column: 21)
!1857 = distinct !DILexicalBlock(scope: !1850, file: !451, line: 469, column: 21)
!1858 = !DILocation(line: 469, column: 21, scope: !1857)
!1859 = !DILocation(line: 470, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !451, line: 470, column: 21)
!1861 = distinct !DILexicalBlock(scope: !1850, file: !451, line: 470, column: 21)
!1862 = !DILocation(line: 470, column: 21, scope: !1861)
!1863 = !DILocation(line: 471, column: 21, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !451, line: 471, column: 21)
!1865 = distinct !DILexicalBlock(scope: !1850, file: !451, line: 471, column: 21)
!1866 = !DILocation(line: 471, column: 21, scope: !1865)
!1867 = !DILocation(line: 472, column: 21, scope: !1850)
!1868 = !DILocation(line: 482, column: 33, scope: !1628)
!1869 = !DILocation(line: 483, column: 33, scope: !1628)
!1870 = !DILocation(line: 485, column: 33, scope: !1628)
!1871 = !DILocation(line: 486, column: 33, scope: !1628)
!1872 = !DILocation(line: 487, column: 33, scope: !1628)
!1873 = !DILocation(line: 490, column: 17, scope: !1628)
!1874 = !DILocation(line: 492, column: 21, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !451, line: 491, column: 15)
!1876 = distinct !DILexicalBlock(scope: !1628, file: !451, line: 490, column: 17)
!1877 = !DILocation(line: 499, column: 35, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1628, file: !451, line: 499, column: 17)
!1879 = !DILocation(line: 499, column: 57, scope: !1878)
!1880 = !DILocation(line: 0, scope: !1628)
!1881 = !DILocation(line: 502, column: 11, scope: !1628)
!1882 = !DILocation(line: 504, column: 17, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1628, file: !451, line: 503, column: 17)
!1884 = !DILocation(line: 507, column: 11, scope: !1628)
!1885 = !DILocation(line: 508, column: 17, scope: !1628)
!1886 = !DILocation(line: 517, column: 15, scope: !1629)
!1887 = !DILocation(line: 517, column: 40, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 517, column: 15)
!1889 = !DILocation(line: 517, column: 47, scope: !1888)
!1890 = !DILocation(line: 517, column: 18, scope: !1888)
!1891 = !DILocation(line: 521, column: 17, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 521, column: 15)
!1893 = !DILocation(line: 521, column: 15, scope: !1629)
!1894 = !DILocation(line: 525, column: 11, scope: !1629)
!1895 = !DILocation(line: 537, column: 15, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 536, column: 15)
!1897 = !DILocation(line: 544, column: 15, scope: !1629)
!1898 = !DILocation(line: 546, column: 19, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !451, line: 545, column: 13)
!1900 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 544, column: 15)
!1901 = !DILocation(line: 549, column: 19, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1899, file: !451, line: 549, column: 19)
!1903 = !DILocation(line: 549, column: 30, scope: !1902)
!1904 = !DILocation(line: 558, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !451, line: 558, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1899, file: !451, line: 558, column: 15)
!1907 = !DILocation(line: 558, column: 15, scope: !1906)
!1908 = !DILocation(line: 559, column: 15, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !451, line: 559, column: 15)
!1910 = distinct !DILexicalBlock(scope: !1899, file: !451, line: 559, column: 15)
!1911 = !DILocation(line: 559, column: 15, scope: !1910)
!1912 = !DILocation(line: 560, column: 15, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1914, file: !451, line: 560, column: 15)
!1914 = distinct !DILexicalBlock(scope: !1899, file: !451, line: 560, column: 15)
!1915 = !DILocation(line: 560, column: 15, scope: !1914)
!1916 = !DILocation(line: 562, column: 13, scope: !1899)
!1917 = !DILocation(line: 602, column: 17, scope: !1632)
!1918 = !DILocation(line: 0, scope: !1632)
!1919 = !DILocation(line: 605, column: 29, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1636, file: !451, line: 603, column: 15)
!1921 = !DILocation(line: 605, column: 27, scope: !1920)
!1922 = !DILocation(line: 606, column: 15, scope: !1920)
!1923 = !DILocation(line: 609, column: 17, scope: !1635)
!1924 = !DILocation(line: 0, scope: !1695, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 609, column: 32, scope: !1635)
!1926 = !DILocation(line: 0, scope: !1703, inlinedAt: !1927)
!1927 = distinct !DILocation(line: 1137, column: 3, scope: !1695, inlinedAt: !1925)
!1928 = !DILocation(line: 59, column: 10, scope: !1703, inlinedAt: !1927)
!1929 = !DILocation(line: 613, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1635, file: !451, line: 613, column: 21)
!1931 = !DILocation(line: 613, column: 21, scope: !1635)
!1932 = !DILocation(line: 614, column: 29, scope: !1930)
!1933 = !DILocation(line: 614, column: 19, scope: !1930)
!1934 = !DILocation(line: 618, column: 21, scope: !1638)
!1935 = !DILocation(line: 620, column: 54, scope: !1638)
!1936 = !DILocation(line: 619, column: 36, scope: !1638)
!1937 = !DILocation(line: 621, column: 25, scope: !1638)
!1938 = !DILocation(line: 631, column: 38, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1647, file: !451, line: 629, column: 23)
!1940 = !DILocation(line: 631, column: 48, scope: !1939)
!1941 = !DILocation(line: 626, column: 25, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1648, file: !451, line: 624, column: 23)
!1943 = !DILocation(line: 631, column: 51, scope: !1939)
!1944 = !DILocation(line: 631, column: 25, scope: !1939)
!1945 = !DILocation(line: 632, column: 28, scope: !1939)
!1946 = !DILocation(line: 631, column: 34, scope: !1939)
!1947 = distinct !{!1947, !1944, !1945, !864}
!1948 = !DILocation(line: 0, scope: !1643)
!1949 = !DILocation(line: 646, column: 29, scope: !1645)
!1950 = !DILocation(line: 649, column: 39, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1643, file: !451, line: 648, column: 29)
!1952 = !DILocation(line: 649, column: 31, scope: !1951)
!1953 = !DILocation(line: 648, column: 60, scope: !1951)
!1954 = !DILocation(line: 648, column: 50, scope: !1951)
!1955 = !DILocation(line: 648, column: 29, scope: !1643)
!1956 = distinct !{!1956, !1955, !1957, !864}
!1957 = !DILocation(line: 654, column: 33, scope: !1643)
!1958 = !DILocation(line: 657, column: 43, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1646, file: !451, line: 657, column: 29)
!1960 = !DILocalVariable(name: "wc", arg: 1, scope: !1961, file: !1962, line: 865, type: !1965)
!1961 = distinct !DISubprogram(name: "c32isprint", scope: !1962, file: !1962, line: 865, type: !1963, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1967)
!1962 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!116, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1966, line: 20, baseType: !86)
!1966 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1967 = !{!1960}
!1968 = !DILocation(line: 0, scope: !1961, inlinedAt: !1969)
!1969 = distinct !DILocation(line: 657, column: 31, scope: !1959)
!1970 = !DILocation(line: 871, column: 10, scope: !1961, inlinedAt: !1969)
!1971 = !DILocation(line: 657, column: 31, scope: !1959)
!1972 = !DILocation(line: 664, column: 23, scope: !1638)
!1973 = !DILocation(line: 665, column: 19, scope: !1639)
!1974 = !DILocation(line: 666, column: 15, scope: !1636)
!1975 = !DILocation(line: 0, scope: !1636)
!1976 = !DILocation(line: 670, column: 19, scope: !1652)
!1977 = !DILocation(line: 670, column: 23, scope: !1652)
!1978 = !DILocation(line: 674, column: 33, scope: !1651)
!1979 = !DILocation(line: 0, scope: !1651)
!1980 = !DILocation(line: 676, column: 17, scope: !1651)
!1981 = !DILocation(line: 398, column: 12, scope: !1622)
!1982 = !DILocation(line: 678, column: 43, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 678, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !451, line: 677, column: 19)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !451, line: 676, column: 17)
!1986 = distinct !DILexicalBlock(scope: !1651, file: !451, line: 676, column: 17)
!1987 = !DILocation(line: 680, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !451, line: 680, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 679, column: 23)
!1990 = !DILocation(line: 680, column: 25, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1988, file: !451, line: 680, column: 25)
!1992 = !DILocation(line: 680, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !451, line: 680, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !451, line: 680, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1991, file: !451, line: 680, column: 25)
!1996 = !DILocation(line: 680, column: 25, scope: !1994)
!1997 = !DILocation(line: 680, column: 25, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !451, line: 680, column: 25)
!1999 = distinct !DILexicalBlock(scope: !1995, file: !451, line: 680, column: 25)
!2000 = !DILocation(line: 680, column: 25, scope: !1999)
!2001 = !DILocation(line: 680, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !451, line: 680, column: 25)
!2003 = distinct !DILexicalBlock(scope: !1995, file: !451, line: 680, column: 25)
!2004 = !DILocation(line: 680, column: 25, scope: !2003)
!2005 = !DILocation(line: 680, column: 25, scope: !1995)
!2006 = !DILocation(line: 680, column: 25, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !451, line: 680, column: 25)
!2008 = distinct !DILexicalBlock(scope: !1988, file: !451, line: 680, column: 25)
!2009 = !DILocation(line: 680, column: 25, scope: !2008)
!2010 = !DILocation(line: 681, column: 25, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !451, line: 681, column: 25)
!2012 = distinct !DILexicalBlock(scope: !1989, file: !451, line: 681, column: 25)
!2013 = !DILocation(line: 681, column: 25, scope: !2012)
!2014 = !DILocation(line: 682, column: 25, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !451, line: 682, column: 25)
!2016 = distinct !DILexicalBlock(scope: !1989, file: !451, line: 682, column: 25)
!2017 = !DILocation(line: 682, column: 25, scope: !2016)
!2018 = !DILocation(line: 683, column: 38, scope: !1989)
!2019 = !DILocation(line: 683, column: 33, scope: !1989)
!2020 = !DILocation(line: 684, column: 23, scope: !1989)
!2021 = !DILocation(line: 685, column: 30, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 685, column: 30)
!2023 = !DILocation(line: 685, column: 30, scope: !1983)
!2024 = !DILocation(line: 687, column: 25, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !451, line: 687, column: 25)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !451, line: 687, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !451, line: 686, column: 23)
!2028 = !DILocation(line: 687, column: 25, scope: !2026)
!2029 = !DILocation(line: 689, column: 23, scope: !2027)
!2030 = !DILocation(line: 690, column: 35, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 690, column: 25)
!2032 = !DILocation(line: 690, column: 30, scope: !2031)
!2033 = !DILocation(line: 690, column: 25, scope: !1984)
!2034 = !DILocation(line: 692, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !451, line: 692, column: 21)
!2036 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 692, column: 21)
!2037 = !DILocation(line: 692, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !451, line: 692, column: 21)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !451, line: 692, column: 21)
!2040 = distinct !DILexicalBlock(scope: !2035, file: !451, line: 692, column: 21)
!2041 = !DILocation(line: 692, column: 21, scope: !2039)
!2042 = !DILocation(line: 692, column: 21, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !451, line: 692, column: 21)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !451, line: 692, column: 21)
!2045 = !DILocation(line: 692, column: 21, scope: !2044)
!2046 = !DILocation(line: 692, column: 21, scope: !2040)
!2047 = !DILocation(line: 0, scope: !1984)
!2048 = !DILocation(line: 693, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !451, line: 693, column: 21)
!2050 = distinct !DILexicalBlock(scope: !1984, file: !451, line: 693, column: 21)
!2051 = !DILocation(line: 693, column: 21, scope: !2050)
!2052 = !DILocation(line: 694, column: 25, scope: !1984)
!2053 = !DILocation(line: 676, column: 17, scope: !1985)
!2054 = distinct !{!2054, !2055, !2056}
!2055 = !DILocation(line: 676, column: 17, scope: !1986)
!2056 = !DILocation(line: 695, column: 19, scope: !1986)
!2057 = !DILocation(line: 409, column: 30, scope: !1773)
!2058 = !DILocation(line: 702, column: 34, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 702, column: 11)
!2060 = !DILocation(line: 704, column: 14, scope: !2059)
!2061 = !DILocation(line: 705, column: 14, scope: !2059)
!2062 = !DILocation(line: 705, column: 35, scope: !2059)
!2063 = !DILocation(line: 705, column: 17, scope: !2059)
!2064 = !DILocation(line: 705, column: 47, scope: !2059)
!2065 = !DILocation(line: 705, column: 65, scope: !2059)
!2066 = !DILocation(line: 706, column: 11, scope: !2059)
!2067 = !DILocation(line: 702, column: 11, scope: !1622)
!2068 = !DILocation(line: 395, column: 15, scope: !1620)
!2069 = !DILocation(line: 709, column: 5, scope: !1622)
!2070 = !DILocation(line: 710, column: 7, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 710, column: 7)
!2072 = !DILocation(line: 710, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2071, file: !451, line: 710, column: 7)
!2074 = !DILocation(line: 710, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !451, line: 710, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !451, line: 710, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !451, line: 710, column: 7)
!2078 = !DILocation(line: 710, column: 7, scope: !2076)
!2079 = !DILocation(line: 710, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2081, file: !451, line: 710, column: 7)
!2081 = distinct !DILexicalBlock(scope: !2077, file: !451, line: 710, column: 7)
!2082 = !DILocation(line: 710, column: 7, scope: !2081)
!2083 = !DILocation(line: 710, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !451, line: 710, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2077, file: !451, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2085)
!2087 = !DILocation(line: 710, column: 7, scope: !2077)
!2088 = !DILocation(line: 710, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !451, line: 710, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2071, file: !451, line: 710, column: 7)
!2091 = !DILocation(line: 710, column: 7, scope: !2090)
!2092 = !DILocation(line: 712, column: 5, scope: !1622)
!2093 = !DILocation(line: 713, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !451, line: 713, column: 7)
!2095 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 713, column: 7)
!2096 = !DILocation(line: 417, column: 21, scope: !1622)
!2097 = !DILocation(line: 713, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !451, line: 713, column: 7)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !451, line: 713, column: 7)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !451, line: 713, column: 7)
!2101 = !DILocation(line: 713, column: 7, scope: !2099)
!2102 = !DILocation(line: 713, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !451, line: 713, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2100, file: !451, line: 713, column: 7)
!2105 = !DILocation(line: 713, column: 7, scope: !2104)
!2106 = !DILocation(line: 713, column: 7, scope: !2100)
!2107 = !DILocation(line: 714, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !451, line: 714, column: 7)
!2109 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 714, column: 7)
!2110 = !DILocation(line: 714, column: 7, scope: !2109)
!2111 = !DILocation(line: 716, column: 13, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !1622, file: !451, line: 716, column: 11)
!2113 = !DILocation(line: 716, column: 11, scope: !1622)
!2114 = !DILocation(line: 718, column: 5, scope: !1623)
!2115 = !DILocation(line: 395, column: 82, scope: !1623)
!2116 = !DILocation(line: 395, column: 3, scope: !1623)
!2117 = distinct !{!2117, !1769, !2118, !864}
!2118 = !DILocation(line: 718, column: 5, scope: !1620)
!2119 = !DILocation(line: 720, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 720, column: 7)
!2121 = !DILocation(line: 720, column: 16, scope: !2120)
!2122 = !DILocation(line: 728, column: 51, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 728, column: 7)
!2124 = !DILocation(line: 731, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !451, line: 731, column: 11)
!2126 = distinct !DILexicalBlock(scope: !2123, file: !451, line: 730, column: 5)
!2127 = !DILocation(line: 731, column: 11, scope: !2126)
!2128 = !DILocation(line: 732, column: 16, scope: !2125)
!2129 = !DILocation(line: 732, column: 9, scope: !2125)
!2130 = !DILocation(line: 736, column: 18, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2125, file: !451, line: 736, column: 16)
!2132 = !DILocation(line: 736, column: 29, scope: !2131)
!2133 = !DILocation(line: 745, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 745, column: 7)
!2135 = !DILocation(line: 745, column: 20, scope: !2134)
!2136 = !DILocation(line: 746, column: 12, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2138, file: !451, line: 746, column: 5)
!2138 = distinct !DILexicalBlock(scope: !2134, file: !451, line: 746, column: 5)
!2139 = !DILocation(line: 746, column: 5, scope: !2138)
!2140 = !DILocation(line: 747, column: 7, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !451, line: 747, column: 7)
!2142 = distinct !DILexicalBlock(scope: !2137, file: !451, line: 747, column: 7)
!2143 = !DILocation(line: 747, column: 7, scope: !2142)
!2144 = !DILocation(line: 746, column: 39, scope: !2137)
!2145 = distinct !{!2145, !2139, !2146, !864}
!2146 = !DILocation(line: 747, column: 7, scope: !2138)
!2147 = !DILocation(line: 749, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 749, column: 7)
!2149 = !DILocation(line: 749, column: 7, scope: !1588)
!2150 = !DILocation(line: 750, column: 5, scope: !2148)
!2151 = !DILocation(line: 750, column: 17, scope: !2148)
!2152 = !DILocation(line: 753, column: 2, scope: !1588)
!2153 = !DILocation(line: 756, column: 51, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !1588, file: !451, line: 756, column: 7)
!2155 = !DILocation(line: 756, column: 21, scope: !2154)
!2156 = !DILocation(line: 760, column: 42, scope: !1588)
!2157 = !DILocation(line: 758, column: 10, scope: !1588)
!2158 = !DILocation(line: 758, column: 3, scope: !1588)
!2159 = !DILocation(line: 762, column: 1, scope: !1588)
!2160 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !941, file: !941, line: 98, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!118}
!2163 = !DISubprogram(name: "strlen", scope: !937, file: !937, line: 407, type: !2164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!120, !80}
!2166 = !DISubprogram(name: "iswprint", scope: !2167, file: !2167, line: 120, type: !1963, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2167 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2168 = distinct !DISubprogram(name: "quotearg_alloc", scope: !451, file: !451, line: 788, type: !2169, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!260, !80, !118, !1481}
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "arg", arg: 1, scope: !2168, file: !451, line: 788, type: !80)
!2173 = !DILocalVariable(name: "argsize", arg: 2, scope: !2168, file: !451, line: 788, type: !118)
!2174 = !DILocalVariable(name: "o", arg: 3, scope: !2168, file: !451, line: 789, type: !1481)
!2175 = !DILocation(line: 0, scope: !2168)
!2176 = !DILocalVariable(name: "arg", arg: 1, scope: !2177, file: !451, line: 801, type: !80)
!2177 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !451, file: !451, line: 801, type: !2178, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!260, !80, !118, !689, !1481}
!2180 = !{!2176, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!2181 = !DILocalVariable(name: "argsize", arg: 2, scope: !2177, file: !451, line: 801, type: !118)
!2182 = !DILocalVariable(name: "size", arg: 3, scope: !2177, file: !451, line: 801, type: !689)
!2183 = !DILocalVariable(name: "o", arg: 4, scope: !2177, file: !451, line: 802, type: !1481)
!2184 = !DILocalVariable(name: "p", scope: !2177, file: !451, line: 804, type: !1481)
!2185 = !DILocalVariable(name: "saved_errno", scope: !2177, file: !451, line: 805, type: !116)
!2186 = !DILocalVariable(name: "flags", scope: !2177, file: !451, line: 807, type: !116)
!2187 = !DILocalVariable(name: "bufsize", scope: !2177, file: !451, line: 808, type: !118)
!2188 = !DILocalVariable(name: "buf", scope: !2177, file: !451, line: 812, type: !260)
!2189 = !DILocation(line: 0, scope: !2177, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 791, column: 10, scope: !2168)
!2191 = !DILocation(line: 804, column: 37, scope: !2177, inlinedAt: !2190)
!2192 = !DILocation(line: 805, column: 21, scope: !2177, inlinedAt: !2190)
!2193 = !DILocation(line: 807, column: 18, scope: !2177, inlinedAt: !2190)
!2194 = !DILocation(line: 807, column: 24, scope: !2177, inlinedAt: !2190)
!2195 = !DILocation(line: 808, column: 72, scope: !2177, inlinedAt: !2190)
!2196 = !DILocation(line: 809, column: 56, scope: !2177, inlinedAt: !2190)
!2197 = !DILocation(line: 810, column: 49, scope: !2177, inlinedAt: !2190)
!2198 = !DILocation(line: 811, column: 49, scope: !2177, inlinedAt: !2190)
!2199 = !DILocation(line: 808, column: 20, scope: !2177, inlinedAt: !2190)
!2200 = !DILocation(line: 811, column: 62, scope: !2177, inlinedAt: !2190)
!2201 = !DILocation(line: 812, column: 15, scope: !2177, inlinedAt: !2190)
!2202 = !DILocation(line: 813, column: 60, scope: !2177, inlinedAt: !2190)
!2203 = !DILocation(line: 815, column: 32, scope: !2177, inlinedAt: !2190)
!2204 = !DILocation(line: 815, column: 47, scope: !2177, inlinedAt: !2190)
!2205 = !DILocation(line: 813, column: 3, scope: !2177, inlinedAt: !2190)
!2206 = !DILocation(line: 816, column: 9, scope: !2177, inlinedAt: !2190)
!2207 = !DILocation(line: 791, column: 3, scope: !2168)
!2208 = !DILocation(line: 0, scope: !2177)
!2209 = !DILocation(line: 804, column: 37, scope: !2177)
!2210 = !DILocation(line: 805, column: 21, scope: !2177)
!2211 = !DILocation(line: 807, column: 18, scope: !2177)
!2212 = !DILocation(line: 807, column: 27, scope: !2177)
!2213 = !DILocation(line: 807, column: 24, scope: !2177)
!2214 = !DILocation(line: 808, column: 72, scope: !2177)
!2215 = !DILocation(line: 809, column: 56, scope: !2177)
!2216 = !DILocation(line: 810, column: 49, scope: !2177)
!2217 = !DILocation(line: 811, column: 49, scope: !2177)
!2218 = !DILocation(line: 808, column: 20, scope: !2177)
!2219 = !DILocation(line: 811, column: 62, scope: !2177)
!2220 = !DILocation(line: 812, column: 15, scope: !2177)
!2221 = !DILocation(line: 813, column: 60, scope: !2177)
!2222 = !DILocation(line: 815, column: 32, scope: !2177)
!2223 = !DILocation(line: 815, column: 47, scope: !2177)
!2224 = !DILocation(line: 813, column: 3, scope: !2177)
!2225 = !DILocation(line: 816, column: 9, scope: !2177)
!2226 = !DILocation(line: 817, column: 7, scope: !2177)
!2227 = !DILocation(line: 818, column: 11, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2177, file: !451, line: 817, column: 7)
!2229 = !{!1199, !1199, i64 0}
!2230 = !DILocation(line: 818, column: 5, scope: !2228)
!2231 = !DILocation(line: 819, column: 3, scope: !2177)
!2232 = distinct !DISubprogram(name: "quotearg_free", scope: !451, file: !451, line: 837, type: !382, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2233)
!2233 = !{!2234, !2235}
!2234 = !DILocalVariable(name: "sv", scope: !2232, file: !451, line: 839, type: !540)
!2235 = !DILocalVariable(name: "i", scope: !2236, file: !451, line: 840, type: !116)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !451, line: 840, column: 3)
!2237 = !DILocation(line: 839, column: 24, scope: !2232)
!2238 = !DILocation(line: 0, scope: !2232)
!2239 = !DILocation(line: 0, scope: !2236)
!2240 = !DILocation(line: 840, column: 21, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2236, file: !451, line: 840, column: 3)
!2242 = !DILocation(line: 840, column: 3, scope: !2236)
!2243 = !DILocation(line: 842, column: 13, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2232, file: !451, line: 842, column: 7)
!2245 = !{!2246, !757, i64 8}
!2246 = !{!"slotvec", !1199, i64 0, !757, i64 8}
!2247 = !DILocation(line: 842, column: 17, scope: !2244)
!2248 = !DILocation(line: 842, column: 7, scope: !2232)
!2249 = !DILocation(line: 841, column: 17, scope: !2241)
!2250 = !DILocation(line: 841, column: 5, scope: !2241)
!2251 = !DILocation(line: 840, column: 32, scope: !2241)
!2252 = distinct !{!2252, !2242, !2253, !864}
!2253 = !DILocation(line: 841, column: 20, scope: !2236)
!2254 = !DILocation(line: 844, column: 7, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2244, file: !451, line: 843, column: 5)
!2256 = !DILocation(line: 845, column: 21, scope: !2255)
!2257 = !{!2246, !1199, i64 0}
!2258 = !DILocation(line: 846, column: 20, scope: !2255)
!2259 = !DILocation(line: 847, column: 5, scope: !2255)
!2260 = !DILocation(line: 848, column: 10, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2232, file: !451, line: 848, column: 7)
!2262 = !DILocation(line: 848, column: 7, scope: !2232)
!2263 = !DILocation(line: 850, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2261, file: !451, line: 849, column: 5)
!2265 = !DILocation(line: 851, column: 15, scope: !2264)
!2266 = !DILocation(line: 852, column: 5, scope: !2264)
!2267 = !DILocation(line: 853, column: 10, scope: !2232)
!2268 = !DILocation(line: 854, column: 1, scope: !2232)
!2269 = !DISubprogram(name: "free", scope: !1435, file: !1435, line: 786, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !115}
!2272 = distinct !DISubprogram(name: "quotearg_n", scope: !451, file: !451, line: 919, type: !934, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2273)
!2273 = !{!2274, !2275}
!2274 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !451, line: 919, type: !116)
!2275 = !DILocalVariable(name: "arg", arg: 2, scope: !2272, file: !451, line: 919, type: !80)
!2276 = !DILocation(line: 0, scope: !2272)
!2277 = !DILocation(line: 921, column: 10, scope: !2272)
!2278 = !DILocation(line: 921, column: 3, scope: !2272)
!2279 = distinct !DISubprogram(name: "quotearg_n_options", scope: !451, file: !451, line: 866, type: !2280, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!260, !116, !80, !118, !1481}
!2282 = !{!2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2293, !2294, !2296, !2297, !2298}
!2283 = !DILocalVariable(name: "n", arg: 1, scope: !2279, file: !451, line: 866, type: !116)
!2284 = !DILocalVariable(name: "arg", arg: 2, scope: !2279, file: !451, line: 866, type: !80)
!2285 = !DILocalVariable(name: "argsize", arg: 3, scope: !2279, file: !451, line: 866, type: !118)
!2286 = !DILocalVariable(name: "options", arg: 4, scope: !2279, file: !451, line: 867, type: !1481)
!2287 = !DILocalVariable(name: "saved_errno", scope: !2279, file: !451, line: 869, type: !116)
!2288 = !DILocalVariable(name: "sv", scope: !2279, file: !451, line: 871, type: !540)
!2289 = !DILocalVariable(name: "nslots_max", scope: !2279, file: !451, line: 873, type: !116)
!2290 = !DILocalVariable(name: "preallocated", scope: !2291, file: !451, line: 879, type: !239)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !451, line: 878, column: 5)
!2292 = distinct !DILexicalBlock(scope: !2279, file: !451, line: 877, column: 7)
!2293 = !DILocalVariable(name: "new_nslots", scope: !2291, file: !451, line: 880, type: !702)
!2294 = !DILocalVariable(name: "size", scope: !2295, file: !451, line: 891, type: !118)
!2295 = distinct !DILexicalBlock(scope: !2279, file: !451, line: 890, column: 3)
!2296 = !DILocalVariable(name: "val", scope: !2295, file: !451, line: 892, type: !260)
!2297 = !DILocalVariable(name: "flags", scope: !2295, file: !451, line: 894, type: !116)
!2298 = !DILocalVariable(name: "qsize", scope: !2295, file: !451, line: 895, type: !118)
!2299 = distinct !DIAssignID()
!2300 = !DILocation(line: 0, scope: !2291)
!2301 = !DILocation(line: 0, scope: !2279)
!2302 = !DILocation(line: 869, column: 21, scope: !2279)
!2303 = !DILocation(line: 871, column: 24, scope: !2279)
!2304 = !DILocation(line: 874, column: 17, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2279, file: !451, line: 874, column: 7)
!2306 = !DILocation(line: 875, column: 5, scope: !2305)
!2307 = !DILocation(line: 877, column: 7, scope: !2292)
!2308 = !DILocation(line: 877, column: 14, scope: !2292)
!2309 = !DILocation(line: 877, column: 7, scope: !2279)
!2310 = !DILocation(line: 879, column: 31, scope: !2291)
!2311 = !DILocation(line: 880, column: 7, scope: !2291)
!2312 = !DILocation(line: 880, column: 26, scope: !2291)
!2313 = !DILocation(line: 880, column: 13, scope: !2291)
!2314 = distinct !DIAssignID()
!2315 = !DILocation(line: 882, column: 31, scope: !2291)
!2316 = !DILocation(line: 883, column: 33, scope: !2291)
!2317 = !DILocation(line: 883, column: 42, scope: !2291)
!2318 = !DILocation(line: 883, column: 31, scope: !2291)
!2319 = !DILocation(line: 882, column: 22, scope: !2291)
!2320 = !DILocation(line: 882, column: 15, scope: !2291)
!2321 = !DILocation(line: 884, column: 11, scope: !2291)
!2322 = !DILocation(line: 885, column: 15, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2291, file: !451, line: 884, column: 11)
!2324 = !{i64 0, i64 8, !2229, i64 8, i64 8, !756}
!2325 = !DILocation(line: 885, column: 9, scope: !2323)
!2326 = !DILocation(line: 886, column: 20, scope: !2291)
!2327 = !DILocation(line: 886, column: 18, scope: !2291)
!2328 = !DILocation(line: 886, column: 32, scope: !2291)
!2329 = !DILocation(line: 886, column: 43, scope: !2291)
!2330 = !DILocation(line: 886, column: 53, scope: !2291)
!2331 = !DILocation(line: 0, scope: !1703, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 886, column: 7, scope: !2291)
!2333 = !DILocation(line: 59, column: 10, scope: !1703, inlinedAt: !2332)
!2334 = !DILocation(line: 887, column: 16, scope: !2291)
!2335 = !DILocation(line: 887, column: 14, scope: !2291)
!2336 = !DILocation(line: 888, column: 5, scope: !2292)
!2337 = !DILocation(line: 888, column: 5, scope: !2291)
!2338 = !DILocation(line: 891, column: 19, scope: !2295)
!2339 = !DILocation(line: 891, column: 25, scope: !2295)
!2340 = !DILocation(line: 0, scope: !2295)
!2341 = !DILocation(line: 892, column: 23, scope: !2295)
!2342 = !DILocation(line: 894, column: 26, scope: !2295)
!2343 = !DILocation(line: 894, column: 32, scope: !2295)
!2344 = !DILocation(line: 896, column: 55, scope: !2295)
!2345 = !DILocation(line: 897, column: 55, scope: !2295)
!2346 = !DILocation(line: 898, column: 55, scope: !2295)
!2347 = !DILocation(line: 899, column: 55, scope: !2295)
!2348 = !DILocation(line: 895, column: 20, scope: !2295)
!2349 = !DILocation(line: 901, column: 14, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2295, file: !451, line: 901, column: 9)
!2351 = !DILocation(line: 901, column: 9, scope: !2295)
!2352 = !DILocation(line: 903, column: 35, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2350, file: !451, line: 902, column: 7)
!2354 = !DILocation(line: 903, column: 20, scope: !2353)
!2355 = !DILocation(line: 904, column: 17, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2353, file: !451, line: 904, column: 13)
!2357 = !DILocation(line: 904, column: 13, scope: !2353)
!2358 = !DILocation(line: 905, column: 11, scope: !2356)
!2359 = !DILocation(line: 906, column: 27, scope: !2353)
!2360 = !DILocation(line: 906, column: 19, scope: !2353)
!2361 = !DILocation(line: 907, column: 69, scope: !2353)
!2362 = !DILocation(line: 909, column: 44, scope: !2353)
!2363 = !DILocation(line: 910, column: 44, scope: !2353)
!2364 = !DILocation(line: 907, column: 9, scope: !2353)
!2365 = !DILocation(line: 911, column: 7, scope: !2353)
!2366 = !DILocation(line: 913, column: 11, scope: !2295)
!2367 = !DILocation(line: 914, column: 5, scope: !2295)
!2368 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !451, file: !451, line: 925, type: !2369, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2371)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!260, !116, !80, !118}
!2371 = !{!2372, !2373, !2374}
!2372 = !DILocalVariable(name: "n", arg: 1, scope: !2368, file: !451, line: 925, type: !116)
!2373 = !DILocalVariable(name: "arg", arg: 2, scope: !2368, file: !451, line: 925, type: !80)
!2374 = !DILocalVariable(name: "argsize", arg: 3, scope: !2368, file: !451, line: 925, type: !118)
!2375 = !DILocation(line: 0, scope: !2368)
!2376 = !DILocation(line: 927, column: 10, scope: !2368)
!2377 = !DILocation(line: 927, column: 3, scope: !2368)
!2378 = distinct !DISubprogram(name: "quotearg", scope: !451, file: !451, line: 931, type: !943, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2379)
!2379 = !{!2380}
!2380 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !451, line: 931, type: !80)
!2381 = !DILocation(line: 0, scope: !2378)
!2382 = !DILocation(line: 0, scope: !2272, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 933, column: 10, scope: !2378)
!2384 = !DILocation(line: 921, column: 10, scope: !2272, inlinedAt: !2383)
!2385 = !DILocation(line: 933, column: 3, scope: !2378)
!2386 = distinct !DISubprogram(name: "quotearg_mem", scope: !451, file: !451, line: 937, type: !2387, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!260, !80, !118}
!2389 = !{!2390, !2391}
!2390 = !DILocalVariable(name: "arg", arg: 1, scope: !2386, file: !451, line: 937, type: !80)
!2391 = !DILocalVariable(name: "argsize", arg: 2, scope: !2386, file: !451, line: 937, type: !118)
!2392 = !DILocation(line: 0, scope: !2386)
!2393 = !DILocation(line: 0, scope: !2368, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 939, column: 10, scope: !2386)
!2395 = !DILocation(line: 927, column: 10, scope: !2368, inlinedAt: !2394)
!2396 = !DILocation(line: 939, column: 3, scope: !2386)
!2397 = distinct !DISubprogram(name: "quotearg_n_style", scope: !451, file: !451, line: 943, type: !2398, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2400)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!260, !116, !477, !80}
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DILocalVariable(name: "n", arg: 1, scope: !2397, file: !451, line: 943, type: !116)
!2402 = !DILocalVariable(name: "s", arg: 2, scope: !2397, file: !451, line: 943, type: !477)
!2403 = !DILocalVariable(name: "arg", arg: 3, scope: !2397, file: !451, line: 943, type: !80)
!2404 = !DILocalVariable(name: "o", scope: !2397, file: !451, line: 945, type: !1482)
!2405 = distinct !DIAssignID()
!2406 = !DILocation(line: 0, scope: !2397)
!2407 = !DILocation(line: 945, column: 3, scope: !2397)
!2408 = !{!2409}
!2409 = distinct !{!2409, !2410, !"quoting_options_from_style: argument 0"}
!2410 = distinct !{!2410, !"quoting_options_from_style"}
!2411 = !DILocation(line: 945, column: 36, scope: !2397)
!2412 = !DILocalVariable(name: "style", arg: 1, scope: !2413, file: !451, line: 183, type: !477)
!2413 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !451, file: !451, line: 183, type: !2414, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2416)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!492, !477}
!2416 = !{!2412, !2417}
!2417 = !DILocalVariable(name: "o", scope: !2413, file: !451, line: 185, type: !492)
!2418 = !DILocation(line: 0, scope: !2413, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 945, column: 36, scope: !2397)
!2420 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2419)
!2421 = distinct !DIAssignID()
!2422 = !DILocation(line: 186, column: 13, scope: !2423, inlinedAt: !2419)
!2423 = distinct !DILexicalBlock(scope: !2413, file: !451, line: 186, column: 7)
!2424 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2419)
!2425 = !DILocation(line: 187, column: 5, scope: !2423, inlinedAt: !2419)
!2426 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2419)
!2427 = distinct !DIAssignID()
!2428 = !DILocation(line: 946, column: 10, scope: !2397)
!2429 = !DILocation(line: 947, column: 1, scope: !2397)
!2430 = !DILocation(line: 946, column: 3, scope: !2397)
!2431 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !451, file: !451, line: 950, type: !2432, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!260, !116, !477, !80, !118}
!2434 = !{!2435, !2436, !2437, !2438, !2439}
!2435 = !DILocalVariable(name: "n", arg: 1, scope: !2431, file: !451, line: 950, type: !116)
!2436 = !DILocalVariable(name: "s", arg: 2, scope: !2431, file: !451, line: 950, type: !477)
!2437 = !DILocalVariable(name: "arg", arg: 3, scope: !2431, file: !451, line: 951, type: !80)
!2438 = !DILocalVariable(name: "argsize", arg: 4, scope: !2431, file: !451, line: 951, type: !118)
!2439 = !DILocalVariable(name: "o", scope: !2431, file: !451, line: 953, type: !1482)
!2440 = distinct !DIAssignID()
!2441 = !DILocation(line: 0, scope: !2431)
!2442 = !DILocation(line: 953, column: 3, scope: !2431)
!2443 = !{!2444}
!2444 = distinct !{!2444, !2445, !"quoting_options_from_style: argument 0"}
!2445 = distinct !{!2445, !"quoting_options_from_style"}
!2446 = !DILocation(line: 953, column: 36, scope: !2431)
!2447 = !DILocation(line: 0, scope: !2413, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 953, column: 36, scope: !2431)
!2449 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2448)
!2450 = distinct !DIAssignID()
!2451 = !DILocation(line: 186, column: 13, scope: !2423, inlinedAt: !2448)
!2452 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2448)
!2453 = !DILocation(line: 187, column: 5, scope: !2423, inlinedAt: !2448)
!2454 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2448)
!2455 = distinct !DIAssignID()
!2456 = !DILocation(line: 954, column: 10, scope: !2431)
!2457 = !DILocation(line: 955, column: 1, scope: !2431)
!2458 = !DILocation(line: 954, column: 3, scope: !2431)
!2459 = distinct !DISubprogram(name: "quotearg_style", scope: !451, file: !451, line: 958, type: !2460, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2462)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!260, !477, !80}
!2462 = !{!2463, !2464}
!2463 = !DILocalVariable(name: "s", arg: 1, scope: !2459, file: !451, line: 958, type: !477)
!2464 = !DILocalVariable(name: "arg", arg: 2, scope: !2459, file: !451, line: 958, type: !80)
!2465 = distinct !DIAssignID()
!2466 = !DILocation(line: 0, scope: !2459)
!2467 = !DILocation(line: 0, scope: !2397, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 960, column: 10, scope: !2459)
!2469 = !DILocation(line: 945, column: 3, scope: !2397, inlinedAt: !2468)
!2470 = !{!2471}
!2471 = distinct !{!2471, !2472, !"quoting_options_from_style: argument 0"}
!2472 = distinct !{!2472, !"quoting_options_from_style"}
!2473 = !DILocation(line: 945, column: 36, scope: !2397, inlinedAt: !2468)
!2474 = !DILocation(line: 0, scope: !2413, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 945, column: 36, scope: !2397, inlinedAt: !2468)
!2476 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2475)
!2477 = distinct !DIAssignID()
!2478 = !DILocation(line: 186, column: 13, scope: !2423, inlinedAt: !2475)
!2479 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2475)
!2480 = !DILocation(line: 187, column: 5, scope: !2423, inlinedAt: !2475)
!2481 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2475)
!2482 = distinct !DIAssignID()
!2483 = !DILocation(line: 946, column: 10, scope: !2397, inlinedAt: !2468)
!2484 = !DILocation(line: 947, column: 1, scope: !2397, inlinedAt: !2468)
!2485 = !DILocation(line: 960, column: 3, scope: !2459)
!2486 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !451, file: !451, line: 964, type: !2487, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!260, !477, !80, !118}
!2489 = !{!2490, !2491, !2492}
!2490 = !DILocalVariable(name: "s", arg: 1, scope: !2486, file: !451, line: 964, type: !477)
!2491 = !DILocalVariable(name: "arg", arg: 2, scope: !2486, file: !451, line: 964, type: !80)
!2492 = !DILocalVariable(name: "argsize", arg: 3, scope: !2486, file: !451, line: 964, type: !118)
!2493 = distinct !DIAssignID()
!2494 = !DILocation(line: 0, scope: !2486)
!2495 = !DILocation(line: 0, scope: !2431, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 966, column: 10, scope: !2486)
!2497 = !DILocation(line: 953, column: 3, scope: !2431, inlinedAt: !2496)
!2498 = !{!2499}
!2499 = distinct !{!2499, !2500, !"quoting_options_from_style: argument 0"}
!2500 = distinct !{!2500, !"quoting_options_from_style"}
!2501 = !DILocation(line: 953, column: 36, scope: !2431, inlinedAt: !2496)
!2502 = !DILocation(line: 0, scope: !2413, inlinedAt: !2503)
!2503 = distinct !DILocation(line: 953, column: 36, scope: !2431, inlinedAt: !2496)
!2504 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2503)
!2505 = distinct !DIAssignID()
!2506 = !DILocation(line: 186, column: 13, scope: !2423, inlinedAt: !2503)
!2507 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2503)
!2508 = !DILocation(line: 187, column: 5, scope: !2423, inlinedAt: !2503)
!2509 = !DILocation(line: 188, column: 11, scope: !2413, inlinedAt: !2503)
!2510 = distinct !DIAssignID()
!2511 = !DILocation(line: 954, column: 10, scope: !2431, inlinedAt: !2496)
!2512 = !DILocation(line: 955, column: 1, scope: !2431, inlinedAt: !2496)
!2513 = !DILocation(line: 966, column: 3, scope: !2486)
!2514 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !451, file: !451, line: 970, type: !2515, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!260, !80, !118, !4}
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !451, line: 970, type: !80)
!2519 = !DILocalVariable(name: "argsize", arg: 2, scope: !2514, file: !451, line: 970, type: !118)
!2520 = !DILocalVariable(name: "ch", arg: 3, scope: !2514, file: !451, line: 970, type: !4)
!2521 = !DILocalVariable(name: "options", scope: !2514, file: !451, line: 972, type: !492)
!2522 = distinct !DIAssignID()
!2523 = !DILocation(line: 0, scope: !2514)
!2524 = !DILocation(line: 972, column: 3, scope: !2514)
!2525 = !DILocation(line: 973, column: 13, scope: !2514)
!2526 = !{i64 0, i64 4, !817, i64 4, i64 4, !817, i64 8, i64 32, !826, i64 40, i64 8, !756, i64 48, i64 8, !756}
!2527 = distinct !DIAssignID()
!2528 = !DILocation(line: 0, scope: !1501, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 974, column: 3, scope: !2514)
!2530 = !DILocation(line: 147, column: 41, scope: !1501, inlinedAt: !2529)
!2531 = !DILocation(line: 147, column: 62, scope: !1501, inlinedAt: !2529)
!2532 = !DILocation(line: 147, column: 57, scope: !1501, inlinedAt: !2529)
!2533 = !DILocation(line: 148, column: 15, scope: !1501, inlinedAt: !2529)
!2534 = !DILocation(line: 149, column: 21, scope: !1501, inlinedAt: !2529)
!2535 = !DILocation(line: 149, column: 24, scope: !1501, inlinedAt: !2529)
!2536 = !DILocation(line: 150, column: 19, scope: !1501, inlinedAt: !2529)
!2537 = !DILocation(line: 150, column: 24, scope: !1501, inlinedAt: !2529)
!2538 = !DILocation(line: 150, column: 6, scope: !1501, inlinedAt: !2529)
!2539 = !DILocation(line: 975, column: 10, scope: !2514)
!2540 = !DILocation(line: 976, column: 1, scope: !2514)
!2541 = !DILocation(line: 975, column: 3, scope: !2514)
!2542 = distinct !DISubprogram(name: "quotearg_char", scope: !451, file: !451, line: 979, type: !2543, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2545)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!260, !80, !4}
!2545 = !{!2546, !2547}
!2546 = !DILocalVariable(name: "arg", arg: 1, scope: !2542, file: !451, line: 979, type: !80)
!2547 = !DILocalVariable(name: "ch", arg: 2, scope: !2542, file: !451, line: 979, type: !4)
!2548 = distinct !DIAssignID()
!2549 = !DILocation(line: 0, scope: !2542)
!2550 = !DILocation(line: 0, scope: !2514, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 981, column: 10, scope: !2542)
!2552 = !DILocation(line: 972, column: 3, scope: !2514, inlinedAt: !2551)
!2553 = !DILocation(line: 973, column: 13, scope: !2514, inlinedAt: !2551)
!2554 = distinct !DIAssignID()
!2555 = !DILocation(line: 0, scope: !1501, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 974, column: 3, scope: !2514, inlinedAt: !2551)
!2557 = !DILocation(line: 147, column: 41, scope: !1501, inlinedAt: !2556)
!2558 = !DILocation(line: 147, column: 62, scope: !1501, inlinedAt: !2556)
!2559 = !DILocation(line: 147, column: 57, scope: !1501, inlinedAt: !2556)
!2560 = !DILocation(line: 148, column: 15, scope: !1501, inlinedAt: !2556)
!2561 = !DILocation(line: 149, column: 21, scope: !1501, inlinedAt: !2556)
!2562 = !DILocation(line: 149, column: 24, scope: !1501, inlinedAt: !2556)
!2563 = !DILocation(line: 150, column: 19, scope: !1501, inlinedAt: !2556)
!2564 = !DILocation(line: 150, column: 24, scope: !1501, inlinedAt: !2556)
!2565 = !DILocation(line: 150, column: 6, scope: !1501, inlinedAt: !2556)
!2566 = !DILocation(line: 975, column: 10, scope: !2514, inlinedAt: !2551)
!2567 = !DILocation(line: 976, column: 1, scope: !2514, inlinedAt: !2551)
!2568 = !DILocation(line: 981, column: 3, scope: !2542)
!2569 = distinct !DISubprogram(name: "quotearg_colon", scope: !451, file: !451, line: 985, type: !943, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2570)
!2570 = !{!2571}
!2571 = !DILocalVariable(name: "arg", arg: 1, scope: !2569, file: !451, line: 985, type: !80)
!2572 = distinct !DIAssignID()
!2573 = !DILocation(line: 0, scope: !2569)
!2574 = !DILocation(line: 0, scope: !2542, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 987, column: 10, scope: !2569)
!2576 = !DILocation(line: 0, scope: !2514, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 981, column: 10, scope: !2542, inlinedAt: !2575)
!2578 = !DILocation(line: 972, column: 3, scope: !2514, inlinedAt: !2577)
!2579 = !DILocation(line: 973, column: 13, scope: !2514, inlinedAt: !2577)
!2580 = distinct !DIAssignID()
!2581 = !DILocation(line: 0, scope: !1501, inlinedAt: !2582)
!2582 = distinct !DILocation(line: 974, column: 3, scope: !2514, inlinedAt: !2577)
!2583 = !DILocation(line: 147, column: 57, scope: !1501, inlinedAt: !2582)
!2584 = !DILocation(line: 149, column: 21, scope: !1501, inlinedAt: !2582)
!2585 = !DILocation(line: 150, column: 6, scope: !1501, inlinedAt: !2582)
!2586 = !DILocation(line: 975, column: 10, scope: !2514, inlinedAt: !2577)
!2587 = !DILocation(line: 976, column: 1, scope: !2514, inlinedAt: !2577)
!2588 = !DILocation(line: 987, column: 3, scope: !2569)
!2589 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !451, file: !451, line: 991, type: !2387, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2590)
!2590 = !{!2591, !2592}
!2591 = !DILocalVariable(name: "arg", arg: 1, scope: !2589, file: !451, line: 991, type: !80)
!2592 = !DILocalVariable(name: "argsize", arg: 2, scope: !2589, file: !451, line: 991, type: !118)
!2593 = distinct !DIAssignID()
!2594 = !DILocation(line: 0, scope: !2589)
!2595 = !DILocation(line: 0, scope: !2514, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 993, column: 10, scope: !2589)
!2597 = !DILocation(line: 972, column: 3, scope: !2514, inlinedAt: !2596)
!2598 = !DILocation(line: 973, column: 13, scope: !2514, inlinedAt: !2596)
!2599 = distinct !DIAssignID()
!2600 = !DILocation(line: 0, scope: !1501, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 974, column: 3, scope: !2514, inlinedAt: !2596)
!2602 = !DILocation(line: 147, column: 57, scope: !1501, inlinedAt: !2601)
!2603 = !DILocation(line: 149, column: 21, scope: !1501, inlinedAt: !2601)
!2604 = !DILocation(line: 150, column: 6, scope: !1501, inlinedAt: !2601)
!2605 = !DILocation(line: 975, column: 10, scope: !2514, inlinedAt: !2596)
!2606 = !DILocation(line: 976, column: 1, scope: !2514, inlinedAt: !2596)
!2607 = !DILocation(line: 993, column: 3, scope: !2589)
!2608 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !451, file: !451, line: 997, type: !2398, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2609)
!2609 = !{!2610, !2611, !2612, !2613}
!2610 = !DILocalVariable(name: "n", arg: 1, scope: !2608, file: !451, line: 997, type: !116)
!2611 = !DILocalVariable(name: "s", arg: 2, scope: !2608, file: !451, line: 997, type: !477)
!2612 = !DILocalVariable(name: "arg", arg: 3, scope: !2608, file: !451, line: 997, type: !80)
!2613 = !DILocalVariable(name: "options", scope: !2608, file: !451, line: 999, type: !492)
!2614 = distinct !DIAssignID()
!2615 = !DILocation(line: 0, scope: !2608)
!2616 = !DILocation(line: 185, column: 26, scope: !2413, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1000, column: 13, scope: !2608)
!2618 = !DILocation(line: 999, column: 3, scope: !2608)
!2619 = !DILocation(line: 0, scope: !2413, inlinedAt: !2617)
!2620 = !DILocation(line: 186, column: 13, scope: !2423, inlinedAt: !2617)
!2621 = !DILocation(line: 186, column: 7, scope: !2413, inlinedAt: !2617)
!2622 = !DILocation(line: 187, column: 5, scope: !2423, inlinedAt: !2617)
!2623 = !{!2624}
!2624 = distinct !{!2624, !2625, !"quoting_options_from_style: argument 0"}
!2625 = distinct !{!2625, !"quoting_options_from_style"}
!2626 = !DILocation(line: 1000, column: 13, scope: !2608)
!2627 = distinct !DIAssignID()
!2628 = distinct !DIAssignID()
!2629 = !DILocation(line: 0, scope: !1501, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 1001, column: 3, scope: !2608)
!2631 = !DILocation(line: 147, column: 57, scope: !1501, inlinedAt: !2630)
!2632 = !DILocation(line: 149, column: 21, scope: !1501, inlinedAt: !2630)
!2633 = !DILocation(line: 150, column: 6, scope: !1501, inlinedAt: !2630)
!2634 = distinct !DIAssignID()
!2635 = !DILocation(line: 1002, column: 10, scope: !2608)
!2636 = !DILocation(line: 1003, column: 1, scope: !2608)
!2637 = !DILocation(line: 1002, column: 3, scope: !2608)
!2638 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !451, file: !451, line: 1006, type: !2639, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2641)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!260, !116, !80, !80, !80}
!2641 = !{!2642, !2643, !2644, !2645}
!2642 = !DILocalVariable(name: "n", arg: 1, scope: !2638, file: !451, line: 1006, type: !116)
!2643 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2638, file: !451, line: 1006, type: !80)
!2644 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2638, file: !451, line: 1007, type: !80)
!2645 = !DILocalVariable(name: "arg", arg: 4, scope: !2638, file: !451, line: 1007, type: !80)
!2646 = distinct !DIAssignID()
!2647 = !DILocation(line: 0, scope: !2638)
!2648 = !DILocalVariable(name: "o", scope: !2649, file: !451, line: 1018, type: !492)
!2649 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !451, file: !451, line: 1014, type: !2650, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2652)
!2650 = !DISubroutineType(types: !2651)
!2651 = !{!260, !116, !80, !80, !80, !118}
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2648}
!2653 = !DILocalVariable(name: "n", arg: 1, scope: !2649, file: !451, line: 1014, type: !116)
!2654 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2649, file: !451, line: 1014, type: !80)
!2655 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2649, file: !451, line: 1015, type: !80)
!2656 = !DILocalVariable(name: "arg", arg: 4, scope: !2649, file: !451, line: 1016, type: !80)
!2657 = !DILocalVariable(name: "argsize", arg: 5, scope: !2649, file: !451, line: 1016, type: !118)
!2658 = !DILocation(line: 0, scope: !2649, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1009, column: 10, scope: !2638)
!2660 = !DILocation(line: 1018, column: 3, scope: !2649, inlinedAt: !2659)
!2661 = !DILocation(line: 1018, column: 30, scope: !2649, inlinedAt: !2659)
!2662 = distinct !DIAssignID()
!2663 = distinct !DIAssignID()
!2664 = !DILocation(line: 0, scope: !1541, inlinedAt: !2665)
!2665 = distinct !DILocation(line: 1019, column: 3, scope: !2649, inlinedAt: !2659)
!2666 = !DILocation(line: 174, column: 12, scope: !1541, inlinedAt: !2665)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 175, column: 8, scope: !1554, inlinedAt: !2665)
!2669 = !DILocation(line: 175, column: 19, scope: !1554, inlinedAt: !2665)
!2670 = !DILocation(line: 176, column: 5, scope: !1554, inlinedAt: !2665)
!2671 = !DILocation(line: 177, column: 6, scope: !1541, inlinedAt: !2665)
!2672 = !DILocation(line: 177, column: 17, scope: !1541, inlinedAt: !2665)
!2673 = distinct !DIAssignID()
!2674 = !DILocation(line: 178, column: 6, scope: !1541, inlinedAt: !2665)
!2675 = !DILocation(line: 178, column: 18, scope: !1541, inlinedAt: !2665)
!2676 = distinct !DIAssignID()
!2677 = !DILocation(line: 1020, column: 10, scope: !2649, inlinedAt: !2659)
!2678 = !DILocation(line: 1021, column: 1, scope: !2649, inlinedAt: !2659)
!2679 = !DILocation(line: 1009, column: 3, scope: !2638)
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 0, scope: !2649)
!2682 = !DILocation(line: 1018, column: 3, scope: !2649)
!2683 = !DILocation(line: 1018, column: 30, scope: !2649)
!2684 = distinct !DIAssignID()
!2685 = distinct !DIAssignID()
!2686 = !DILocation(line: 0, scope: !1541, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1019, column: 3, scope: !2649)
!2688 = !DILocation(line: 174, column: 12, scope: !1541, inlinedAt: !2687)
!2689 = distinct !DIAssignID()
!2690 = !DILocation(line: 175, column: 8, scope: !1554, inlinedAt: !2687)
!2691 = !DILocation(line: 175, column: 19, scope: !1554, inlinedAt: !2687)
!2692 = !DILocation(line: 176, column: 5, scope: !1554, inlinedAt: !2687)
!2693 = !DILocation(line: 177, column: 6, scope: !1541, inlinedAt: !2687)
!2694 = !DILocation(line: 177, column: 17, scope: !1541, inlinedAt: !2687)
!2695 = distinct !DIAssignID()
!2696 = !DILocation(line: 178, column: 6, scope: !1541, inlinedAt: !2687)
!2697 = !DILocation(line: 178, column: 18, scope: !1541, inlinedAt: !2687)
!2698 = distinct !DIAssignID()
!2699 = !DILocation(line: 1020, column: 10, scope: !2649)
!2700 = !DILocation(line: 1021, column: 1, scope: !2649)
!2701 = !DILocation(line: 1020, column: 3, scope: !2649)
!2702 = distinct !DISubprogram(name: "quotearg_custom", scope: !451, file: !451, line: 1024, type: !2703, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!260, !80, !80, !80}
!2705 = !{!2706, !2707, !2708}
!2706 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2702, file: !451, line: 1024, type: !80)
!2707 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2702, file: !451, line: 1024, type: !80)
!2708 = !DILocalVariable(name: "arg", arg: 3, scope: !2702, file: !451, line: 1025, type: !80)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 0, scope: !2702)
!2711 = !DILocation(line: 0, scope: !2638, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 1027, column: 10, scope: !2702)
!2713 = !DILocation(line: 0, scope: !2649, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1009, column: 10, scope: !2638, inlinedAt: !2712)
!2715 = !DILocation(line: 1018, column: 3, scope: !2649, inlinedAt: !2714)
!2716 = !DILocation(line: 1018, column: 30, scope: !2649, inlinedAt: !2714)
!2717 = distinct !DIAssignID()
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 0, scope: !1541, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1019, column: 3, scope: !2649, inlinedAt: !2714)
!2721 = !DILocation(line: 174, column: 12, scope: !1541, inlinedAt: !2720)
!2722 = distinct !DIAssignID()
!2723 = !DILocation(line: 175, column: 8, scope: !1554, inlinedAt: !2720)
!2724 = !DILocation(line: 175, column: 19, scope: !1554, inlinedAt: !2720)
!2725 = !DILocation(line: 176, column: 5, scope: !1554, inlinedAt: !2720)
!2726 = !DILocation(line: 177, column: 6, scope: !1541, inlinedAt: !2720)
!2727 = !DILocation(line: 177, column: 17, scope: !1541, inlinedAt: !2720)
!2728 = distinct !DIAssignID()
!2729 = !DILocation(line: 178, column: 6, scope: !1541, inlinedAt: !2720)
!2730 = !DILocation(line: 178, column: 18, scope: !1541, inlinedAt: !2720)
!2731 = distinct !DIAssignID()
!2732 = !DILocation(line: 1020, column: 10, scope: !2649, inlinedAt: !2714)
!2733 = !DILocation(line: 1021, column: 1, scope: !2649, inlinedAt: !2714)
!2734 = !DILocation(line: 1027, column: 3, scope: !2702)
!2735 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !451, file: !451, line: 1031, type: !2736, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!260, !80, !80, !80, !118}
!2738 = !{!2739, !2740, !2741, !2742}
!2739 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2735, file: !451, line: 1031, type: !80)
!2740 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2735, file: !451, line: 1031, type: !80)
!2741 = !DILocalVariable(name: "arg", arg: 3, scope: !2735, file: !451, line: 1032, type: !80)
!2742 = !DILocalVariable(name: "argsize", arg: 4, scope: !2735, file: !451, line: 1032, type: !118)
!2743 = distinct !DIAssignID()
!2744 = !DILocation(line: 0, scope: !2735)
!2745 = !DILocation(line: 0, scope: !2649, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1034, column: 10, scope: !2735)
!2747 = !DILocation(line: 1018, column: 3, scope: !2649, inlinedAt: !2746)
!2748 = !DILocation(line: 1018, column: 30, scope: !2649, inlinedAt: !2746)
!2749 = distinct !DIAssignID()
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 0, scope: !1541, inlinedAt: !2752)
!2752 = distinct !DILocation(line: 1019, column: 3, scope: !2649, inlinedAt: !2746)
!2753 = !DILocation(line: 174, column: 12, scope: !1541, inlinedAt: !2752)
!2754 = distinct !DIAssignID()
!2755 = !DILocation(line: 175, column: 8, scope: !1554, inlinedAt: !2752)
!2756 = !DILocation(line: 175, column: 19, scope: !1554, inlinedAt: !2752)
!2757 = !DILocation(line: 176, column: 5, scope: !1554, inlinedAt: !2752)
!2758 = !DILocation(line: 177, column: 6, scope: !1541, inlinedAt: !2752)
!2759 = !DILocation(line: 177, column: 17, scope: !1541, inlinedAt: !2752)
!2760 = distinct !DIAssignID()
!2761 = !DILocation(line: 178, column: 6, scope: !1541, inlinedAt: !2752)
!2762 = !DILocation(line: 178, column: 18, scope: !1541, inlinedAt: !2752)
!2763 = distinct !DIAssignID()
!2764 = !DILocation(line: 1020, column: 10, scope: !2649, inlinedAt: !2746)
!2765 = !DILocation(line: 1021, column: 1, scope: !2649, inlinedAt: !2746)
!2766 = !DILocation(line: 1034, column: 3, scope: !2735)
!2767 = distinct !DISubprogram(name: "quote_n_mem", scope: !451, file: !451, line: 1049, type: !2768, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2770)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!80, !116, !80, !118}
!2770 = !{!2771, !2772, !2773}
!2771 = !DILocalVariable(name: "n", arg: 1, scope: !2767, file: !451, line: 1049, type: !116)
!2772 = !DILocalVariable(name: "arg", arg: 2, scope: !2767, file: !451, line: 1049, type: !80)
!2773 = !DILocalVariable(name: "argsize", arg: 3, scope: !2767, file: !451, line: 1049, type: !118)
!2774 = !DILocation(line: 0, scope: !2767)
!2775 = !DILocation(line: 1051, column: 10, scope: !2767)
!2776 = !DILocation(line: 1051, column: 3, scope: !2767)
!2777 = distinct !DISubprogram(name: "quote_mem", scope: !451, file: !451, line: 1055, type: !2778, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2780)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!80, !80, !118}
!2780 = !{!2781, !2782}
!2781 = !DILocalVariable(name: "arg", arg: 1, scope: !2777, file: !451, line: 1055, type: !80)
!2782 = !DILocalVariable(name: "argsize", arg: 2, scope: !2777, file: !451, line: 1055, type: !118)
!2783 = !DILocation(line: 0, scope: !2777)
!2784 = !DILocation(line: 0, scope: !2767, inlinedAt: !2785)
!2785 = distinct !DILocation(line: 1057, column: 10, scope: !2777)
!2786 = !DILocation(line: 1051, column: 10, scope: !2767, inlinedAt: !2785)
!2787 = !DILocation(line: 1057, column: 3, scope: !2777)
!2788 = distinct !DISubprogram(name: "quote_n", scope: !451, file: !451, line: 1061, type: !2789, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!80, !116, !80}
!2791 = !{!2792, !2793}
!2792 = !DILocalVariable(name: "n", arg: 1, scope: !2788, file: !451, line: 1061, type: !116)
!2793 = !DILocalVariable(name: "arg", arg: 2, scope: !2788, file: !451, line: 1061, type: !80)
!2794 = !DILocation(line: 0, scope: !2788)
!2795 = !DILocation(line: 0, scope: !2767, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 1063, column: 10, scope: !2788)
!2797 = !DILocation(line: 1051, column: 10, scope: !2767, inlinedAt: !2796)
!2798 = !DILocation(line: 1063, column: 3, scope: !2788)
!2799 = distinct !DISubprogram(name: "quote", scope: !451, file: !451, line: 1067, type: !2800, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!80, !80}
!2802 = !{!2803}
!2803 = !DILocalVariable(name: "arg", arg: 1, scope: !2799, file: !451, line: 1067, type: !80)
!2804 = !DILocation(line: 0, scope: !2799)
!2805 = !DILocation(line: 0, scope: !2788, inlinedAt: !2806)
!2806 = distinct !DILocation(line: 1069, column: 10, scope: !2799)
!2807 = !DILocation(line: 0, scope: !2767, inlinedAt: !2808)
!2808 = distinct !DILocation(line: 1063, column: 10, scope: !2788, inlinedAt: !2806)
!2809 = !DILocation(line: 1051, column: 10, scope: !2767, inlinedAt: !2808)
!2810 = !DILocation(line: 1069, column: 3, scope: !2799)
!2811 = distinct !DISubprogram(name: "version_etc_arn", scope: !555, file: !555, line: 61, type: !2812, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2849)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{null, !2814, !80, !80, !80, !2848, !118}
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !2816)
!2816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !2817)
!2817 = !{!2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2816, file: !256, line: 51, baseType: !116, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2816, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2816, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2816, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2816, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2816, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2816, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2816, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2816, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2816, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2816, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2816, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2816, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2816, file: !256, line: 70, baseType: !2832, size: 64, offset: 832)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2816, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2816, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2816, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2816, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2816, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2816, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2816, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2816, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2816, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2816, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2816, file: !256, line: 93, baseType: !2832, size: 64, offset: 1344)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2816, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2816, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2816, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2816, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855}
!2850 = !DILocalVariable(name: "stream", arg: 1, scope: !2811, file: !555, line: 61, type: !2814)
!2851 = !DILocalVariable(name: "command_name", arg: 2, scope: !2811, file: !555, line: 62, type: !80)
!2852 = !DILocalVariable(name: "package", arg: 3, scope: !2811, file: !555, line: 62, type: !80)
!2853 = !DILocalVariable(name: "version", arg: 4, scope: !2811, file: !555, line: 63, type: !80)
!2854 = !DILocalVariable(name: "authors", arg: 5, scope: !2811, file: !555, line: 64, type: !2848)
!2855 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2811, file: !555, line: 64, type: !118)
!2856 = !DILocation(line: 0, scope: !2811)
!2857 = !DILocation(line: 66, column: 7, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2811, file: !555, line: 66, column: 7)
!2859 = !DILocation(line: 66, column: 7, scope: !2811)
!2860 = !DILocation(line: 67, column: 5, scope: !2858)
!2861 = !DILocation(line: 69, column: 5, scope: !2858)
!2862 = !DILocation(line: 83, column: 3, scope: !2811)
!2863 = !DILocation(line: 85, column: 3, scope: !2811)
!2864 = !DILocation(line: 88, column: 3, scope: !2811)
!2865 = !DILocation(line: 95, column: 3, scope: !2811)
!2866 = !DILocation(line: 97, column: 3, scope: !2811)
!2867 = !DILocation(line: 105, column: 7, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2811, file: !555, line: 98, column: 5)
!2869 = !DILocation(line: 106, column: 7, scope: !2868)
!2870 = !DILocation(line: 109, column: 7, scope: !2868)
!2871 = !DILocation(line: 110, column: 7, scope: !2868)
!2872 = !DILocation(line: 113, column: 7, scope: !2868)
!2873 = !DILocation(line: 115, column: 7, scope: !2868)
!2874 = !DILocation(line: 120, column: 7, scope: !2868)
!2875 = !DILocation(line: 122, column: 7, scope: !2868)
!2876 = !DILocation(line: 127, column: 7, scope: !2868)
!2877 = !DILocation(line: 129, column: 7, scope: !2868)
!2878 = !DILocation(line: 134, column: 7, scope: !2868)
!2879 = !DILocation(line: 137, column: 7, scope: !2868)
!2880 = !DILocation(line: 142, column: 7, scope: !2868)
!2881 = !DILocation(line: 145, column: 7, scope: !2868)
!2882 = !DILocation(line: 150, column: 7, scope: !2868)
!2883 = !DILocation(line: 154, column: 7, scope: !2868)
!2884 = !DILocation(line: 159, column: 7, scope: !2868)
!2885 = !DILocation(line: 163, column: 7, scope: !2868)
!2886 = !DILocation(line: 170, column: 7, scope: !2868)
!2887 = !DILocation(line: 174, column: 7, scope: !2868)
!2888 = !DILocation(line: 176, column: 1, scope: !2811)
!2889 = distinct !DISubprogram(name: "version_etc_ar", scope: !555, file: !555, line: 183, type: !2890, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2892)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !2814, !80, !80, !80, !2848}
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898}
!2893 = !DILocalVariable(name: "stream", arg: 1, scope: !2889, file: !555, line: 183, type: !2814)
!2894 = !DILocalVariable(name: "command_name", arg: 2, scope: !2889, file: !555, line: 184, type: !80)
!2895 = !DILocalVariable(name: "package", arg: 3, scope: !2889, file: !555, line: 184, type: !80)
!2896 = !DILocalVariable(name: "version", arg: 4, scope: !2889, file: !555, line: 185, type: !80)
!2897 = !DILocalVariable(name: "authors", arg: 5, scope: !2889, file: !555, line: 185, type: !2848)
!2898 = !DILocalVariable(name: "n_authors", scope: !2889, file: !555, line: 187, type: !118)
!2899 = !DILocation(line: 0, scope: !2889)
!2900 = !DILocation(line: 189, column: 8, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2889, file: !555, line: 189, column: 3)
!2902 = !DILocation(line: 189, scope: !2901)
!2903 = !DILocation(line: 189, column: 23, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2901, file: !555, line: 189, column: 3)
!2905 = !DILocation(line: 189, column: 3, scope: !2901)
!2906 = !DILocation(line: 189, column: 52, scope: !2904)
!2907 = distinct !{!2907, !2905, !2908, !864}
!2908 = !DILocation(line: 190, column: 5, scope: !2901)
!2909 = !DILocation(line: 191, column: 3, scope: !2889)
!2910 = !DILocation(line: 192, column: 1, scope: !2889)
!2911 = distinct !DISubprogram(name: "version_etc_va", scope: !555, file: !555, line: 199, type: !2912, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2921)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !2814, !80, !80, !80, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2915, size: 64)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2915, file: !555, line: 192, baseType: !86, size: 32)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2915, file: !555, line: 192, baseType: !86, size: 32, offset: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2915, file: !555, line: 192, baseType: !115, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2915, file: !555, line: 192, baseType: !115, size: 64, offset: 128)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928}
!2922 = !DILocalVariable(name: "stream", arg: 1, scope: !2911, file: !555, line: 199, type: !2814)
!2923 = !DILocalVariable(name: "command_name", arg: 2, scope: !2911, file: !555, line: 200, type: !80)
!2924 = !DILocalVariable(name: "package", arg: 3, scope: !2911, file: !555, line: 200, type: !80)
!2925 = !DILocalVariable(name: "version", arg: 4, scope: !2911, file: !555, line: 201, type: !80)
!2926 = !DILocalVariable(name: "authors", arg: 5, scope: !2911, file: !555, line: 201, type: !2914)
!2927 = !DILocalVariable(name: "n_authors", scope: !2911, file: !555, line: 203, type: !118)
!2928 = !DILocalVariable(name: "authtab", scope: !2911, file: !555, line: 204, type: !2929)
!2929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!2930 = distinct !DIAssignID()
!2931 = !DILocation(line: 0, scope: !2911)
!2932 = !DILocation(line: 204, column: 3, scope: !2911)
!2933 = !DILocation(line: 208, column: 35, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !555, line: 206, column: 3)
!2935 = distinct !DILexicalBlock(scope: !2911, file: !555, line: 206, column: 3)
!2936 = !DILocation(line: 208, column: 33, scope: !2934)
!2937 = !DILocation(line: 208, column: 67, scope: !2934)
!2938 = !DILocation(line: 206, column: 3, scope: !2935)
!2939 = !DILocation(line: 208, column: 14, scope: !2934)
!2940 = !DILocation(line: 0, scope: !2935)
!2941 = !DILocation(line: 211, column: 3, scope: !2911)
!2942 = !DILocation(line: 213, column: 1, scope: !2911)
!2943 = distinct !DISubprogram(name: "version_etc", scope: !555, file: !555, line: 230, type: !2944, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2946)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{null, !2814, !80, !80, !80, null}
!2946 = !{!2947, !2948, !2949, !2950, !2951}
!2947 = !DILocalVariable(name: "stream", arg: 1, scope: !2943, file: !555, line: 230, type: !2814)
!2948 = !DILocalVariable(name: "command_name", arg: 2, scope: !2943, file: !555, line: 231, type: !80)
!2949 = !DILocalVariable(name: "package", arg: 3, scope: !2943, file: !555, line: 231, type: !80)
!2950 = !DILocalVariable(name: "version", arg: 4, scope: !2943, file: !555, line: 232, type: !80)
!2951 = !DILocalVariable(name: "authors", scope: !2943, file: !555, line: 234, type: !2952)
!2952 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !812, line: 52, baseType: !2953)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1234, line: 12, baseType: !2954)
!2954 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !555, baseType: !2955)
!2955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2915, size: 192, elements: !35)
!2956 = distinct !DIAssignID()
!2957 = !DILocation(line: 0, scope: !2943)
!2958 = !DILocation(line: 234, column: 3, scope: !2943)
!2959 = !DILocation(line: 235, column: 3, scope: !2943)
!2960 = !DILocation(line: 236, column: 3, scope: !2943)
!2961 = !DILocation(line: 237, column: 3, scope: !2943)
!2962 = !DILocation(line: 238, column: 1, scope: !2943)
!2963 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !555, file: !555, line: 241, type: !382, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676)
!2964 = !DILocation(line: 243, column: 3, scope: !2963)
!2965 = !DILocation(line: 248, column: 3, scope: !2963)
!2966 = !DILocation(line: 254, column: 3, scope: !2963)
!2967 = !DILocation(line: 259, column: 3, scope: !2963)
!2968 = !DILocation(line: 261, column: 1, scope: !2963)
!2969 = distinct !DISubprogram(name: "xnrealloc", scope: !2970, file: !2970, line: 147, type: !2971, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2973)
!2970 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!115, !115, !118, !118}
!2973 = !{!2974, !2975, !2976}
!2974 = !DILocalVariable(name: "p", arg: 1, scope: !2969, file: !2970, line: 147, type: !115)
!2975 = !DILocalVariable(name: "n", arg: 2, scope: !2969, file: !2970, line: 147, type: !118)
!2976 = !DILocalVariable(name: "s", arg: 3, scope: !2969, file: !2970, line: 147, type: !118)
!2977 = !DILocation(line: 0, scope: !2969)
!2978 = !DILocalVariable(name: "p", arg: 1, scope: !2979, file: !683, line: 83, type: !115)
!2979 = distinct !DISubprogram(name: "xreallocarray", scope: !683, file: !683, line: 83, type: !2971, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2980)
!2980 = !{!2978, !2981, !2982}
!2981 = !DILocalVariable(name: "n", arg: 2, scope: !2979, file: !683, line: 83, type: !118)
!2982 = !DILocalVariable(name: "s", arg: 3, scope: !2979, file: !683, line: 83, type: !118)
!2983 = !DILocation(line: 0, scope: !2979, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 149, column: 10, scope: !2969)
!2985 = !DILocation(line: 85, column: 25, scope: !2979, inlinedAt: !2984)
!2986 = !DILocalVariable(name: "p", arg: 1, scope: !2987, file: !683, line: 37, type: !115)
!2987 = distinct !DISubprogram(name: "check_nonnull", scope: !683, file: !683, line: 37, type: !2988, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!115, !115}
!2990 = !{!2986}
!2991 = !DILocation(line: 0, scope: !2987, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 85, column: 10, scope: !2979, inlinedAt: !2984)
!2993 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !2992)
!2994 = distinct !DILexicalBlock(scope: !2987, file: !683, line: 39, column: 7)
!2995 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !2992)
!2996 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !2992)
!2997 = !DILocation(line: 149, column: 3, scope: !2969)
!2998 = !DILocation(line: 0, scope: !2979)
!2999 = !DILocation(line: 85, column: 25, scope: !2979)
!3000 = !DILocation(line: 0, scope: !2987, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 85, column: 10, scope: !2979)
!3002 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3001)
!3003 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3001)
!3004 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3001)
!3005 = !DILocation(line: 85, column: 3, scope: !2979)
!3006 = distinct !DISubprogram(name: "xmalloc", scope: !683, file: !683, line: 47, type: !3007, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!115, !118}
!3009 = !{!3010}
!3010 = !DILocalVariable(name: "s", arg: 1, scope: !3006, file: !683, line: 47, type: !118)
!3011 = !DILocation(line: 0, scope: !3006)
!3012 = !DILocation(line: 49, column: 25, scope: !3006)
!3013 = !DILocation(line: 0, scope: !2987, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 49, column: 10, scope: !3006)
!3015 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3014)
!3016 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3014)
!3017 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3014)
!3018 = !DILocation(line: 49, column: 3, scope: !3006)
!3019 = !DISubprogram(name: "malloc", scope: !941, file: !941, line: 540, type: !3007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3020 = distinct !DISubprogram(name: "ximalloc", scope: !683, file: !683, line: 53, type: !3021, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!115, !702}
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "s", arg: 1, scope: !3020, file: !683, line: 53, type: !702)
!3025 = !DILocation(line: 0, scope: !3020)
!3026 = !DILocalVariable(name: "s", arg: 1, scope: !3027, file: !3028, line: 55, type: !702)
!3027 = distinct !DISubprogram(name: "imalloc", scope: !3028, file: !3028, line: 55, type: !3021, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3029)
!3028 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3029 = !{!3026}
!3030 = !DILocation(line: 0, scope: !3027, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 55, column: 25, scope: !3020)
!3032 = !DILocation(line: 57, column: 26, scope: !3027, inlinedAt: !3031)
!3033 = !DILocation(line: 0, scope: !2987, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 55, column: 10, scope: !3020)
!3035 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3034)
!3036 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3034)
!3037 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3034)
!3038 = !DILocation(line: 55, column: 3, scope: !3020)
!3039 = distinct !DISubprogram(name: "xcharalloc", scope: !683, file: !683, line: 59, type: !3040, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3042)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!260, !118}
!3042 = !{!3043}
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3039, file: !683, line: 59, type: !118)
!3044 = !DILocation(line: 0, scope: !3039)
!3045 = !DILocation(line: 0, scope: !3006, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 61, column: 10, scope: !3039)
!3047 = !DILocation(line: 49, column: 25, scope: !3006, inlinedAt: !3046)
!3048 = !DILocation(line: 0, scope: !2987, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 49, column: 10, scope: !3006, inlinedAt: !3046)
!3050 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3049)
!3052 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3049)
!3053 = !DILocation(line: 61, column: 3, scope: !3039)
!3054 = distinct !DISubprogram(name: "xrealloc", scope: !683, file: !683, line: 68, type: !3055, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!115, !115, !118}
!3057 = !{!3058, !3059}
!3058 = !DILocalVariable(name: "p", arg: 1, scope: !3054, file: !683, line: 68, type: !115)
!3059 = !DILocalVariable(name: "s", arg: 2, scope: !3054, file: !683, line: 68, type: !118)
!3060 = !DILocation(line: 0, scope: !3054)
!3061 = !DILocalVariable(name: "ptr", arg: 1, scope: !3062, file: !3063, line: 2057, type: !115)
!3062 = distinct !DISubprogram(name: "rpl_realloc", scope: !3063, file: !3063, line: 2057, type: !3055, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3064)
!3063 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3064 = !{!3061, !3065}
!3065 = !DILocalVariable(name: "size", arg: 2, scope: !3062, file: !3063, line: 2057, type: !118)
!3066 = !DILocation(line: 0, scope: !3062, inlinedAt: !3067)
!3067 = distinct !DILocation(line: 70, column: 25, scope: !3054)
!3068 = !DILocation(line: 2059, column: 24, scope: !3062, inlinedAt: !3067)
!3069 = !DILocation(line: 2059, column: 10, scope: !3062, inlinedAt: !3067)
!3070 = !DILocation(line: 0, scope: !2987, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 70, column: 10, scope: !3054)
!3072 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3071)
!3073 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3071)
!3074 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3071)
!3075 = !DILocation(line: 70, column: 3, scope: !3054)
!3076 = !DISubprogram(name: "realloc", scope: !941, file: !941, line: 551, type: !3055, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3077 = distinct !DISubprogram(name: "xirealloc", scope: !683, file: !683, line: 74, type: !3078, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!115, !115, !702}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "p", arg: 1, scope: !3077, file: !683, line: 74, type: !115)
!3082 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !683, line: 74, type: !702)
!3083 = !DILocation(line: 0, scope: !3077)
!3084 = !DILocalVariable(name: "p", arg: 1, scope: !3085, file: !3028, line: 66, type: !115)
!3085 = distinct !DISubprogram(name: "irealloc", scope: !3028, file: !3028, line: 66, type: !3078, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3086)
!3086 = !{!3084, !3087}
!3087 = !DILocalVariable(name: "s", arg: 2, scope: !3085, file: !3028, line: 66, type: !702)
!3088 = !DILocation(line: 0, scope: !3085, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 76, column: 25, scope: !3077)
!3090 = !DILocation(line: 0, scope: !3062, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 68, column: 26, scope: !3085, inlinedAt: !3089)
!3092 = !DILocation(line: 2059, column: 24, scope: !3062, inlinedAt: !3091)
!3093 = !DILocation(line: 2059, column: 10, scope: !3062, inlinedAt: !3091)
!3094 = !DILocation(line: 0, scope: !2987, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 76, column: 10, scope: !3077)
!3096 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3095)
!3097 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3095)
!3098 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3095)
!3099 = !DILocation(line: 76, column: 3, scope: !3077)
!3100 = distinct !DISubprogram(name: "xireallocarray", scope: !683, file: !683, line: 89, type: !3101, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!115, !115, !702, !702}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "p", arg: 1, scope: !3100, file: !683, line: 89, type: !115)
!3105 = !DILocalVariable(name: "n", arg: 2, scope: !3100, file: !683, line: 89, type: !702)
!3106 = !DILocalVariable(name: "s", arg: 3, scope: !3100, file: !683, line: 89, type: !702)
!3107 = !DILocation(line: 0, scope: !3100)
!3108 = !DILocalVariable(name: "p", arg: 1, scope: !3109, file: !3028, line: 98, type: !115)
!3109 = distinct !DISubprogram(name: "ireallocarray", scope: !3028, file: !3028, line: 98, type: !3101, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3110)
!3110 = !{!3108, !3111, !3112}
!3111 = !DILocalVariable(name: "n", arg: 2, scope: !3109, file: !3028, line: 98, type: !702)
!3112 = !DILocalVariable(name: "s", arg: 3, scope: !3109, file: !3028, line: 98, type: !702)
!3113 = !DILocation(line: 0, scope: !3109, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 91, column: 25, scope: !3100)
!3115 = !DILocation(line: 101, column: 13, scope: !3109, inlinedAt: !3114)
!3116 = !DILocation(line: 0, scope: !2987, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 91, column: 10, scope: !3100)
!3118 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3117)
!3119 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3117)
!3120 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3117)
!3121 = !DILocation(line: 91, column: 3, scope: !3100)
!3122 = distinct !DISubprogram(name: "xnmalloc", scope: !683, file: !683, line: 98, type: !3123, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3125)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!115, !118, !118}
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "n", arg: 1, scope: !3122, file: !683, line: 98, type: !118)
!3127 = !DILocalVariable(name: "s", arg: 2, scope: !3122, file: !683, line: 98, type: !118)
!3128 = !DILocation(line: 0, scope: !3122)
!3129 = !DILocation(line: 0, scope: !2979, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 100, column: 10, scope: !3122)
!3131 = !DILocation(line: 85, column: 25, scope: !2979, inlinedAt: !3130)
!3132 = !DILocation(line: 0, scope: !2987, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 85, column: 10, scope: !2979, inlinedAt: !3130)
!3134 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3133)
!3135 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3133)
!3136 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3133)
!3137 = !DILocation(line: 100, column: 3, scope: !3122)
!3138 = distinct !DISubprogram(name: "xinmalloc", scope: !683, file: !683, line: 104, type: !3139, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3141)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!115, !702, !702}
!3141 = !{!3142, !3143}
!3142 = !DILocalVariable(name: "n", arg: 1, scope: !3138, file: !683, line: 104, type: !702)
!3143 = !DILocalVariable(name: "s", arg: 2, scope: !3138, file: !683, line: 104, type: !702)
!3144 = !DILocation(line: 0, scope: !3138)
!3145 = !DILocation(line: 0, scope: !3100, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 106, column: 10, scope: !3138)
!3147 = !DILocation(line: 0, scope: !3109, inlinedAt: !3148)
!3148 = distinct !DILocation(line: 91, column: 25, scope: !3100, inlinedAt: !3146)
!3149 = !DILocation(line: 101, column: 13, scope: !3109, inlinedAt: !3148)
!3150 = !DILocation(line: 0, scope: !2987, inlinedAt: !3151)
!3151 = distinct !DILocation(line: 91, column: 10, scope: !3100, inlinedAt: !3146)
!3152 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3151)
!3153 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3151)
!3154 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3151)
!3155 = !DILocation(line: 106, column: 3, scope: !3138)
!3156 = distinct !DISubprogram(name: "x2realloc", scope: !683, file: !683, line: 116, type: !3157, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3159)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!115, !115, !689}
!3159 = !{!3160, !3161}
!3160 = !DILocalVariable(name: "p", arg: 1, scope: !3156, file: !683, line: 116, type: !115)
!3161 = !DILocalVariable(name: "ps", arg: 2, scope: !3156, file: !683, line: 116, type: !689)
!3162 = !DILocation(line: 0, scope: !3156)
!3163 = !DILocation(line: 0, scope: !686, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 118, column: 10, scope: !3156)
!3165 = !DILocation(line: 178, column: 14, scope: !686, inlinedAt: !3164)
!3166 = !DILocation(line: 180, column: 9, scope: !3167, inlinedAt: !3164)
!3167 = distinct !DILexicalBlock(scope: !686, file: !683, line: 180, column: 7)
!3168 = !DILocation(line: 180, column: 7, scope: !686, inlinedAt: !3164)
!3169 = !DILocation(line: 182, column: 13, scope: !3170, inlinedAt: !3164)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !683, line: 182, column: 11)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !683, line: 181, column: 5)
!3172 = !DILocation(line: 182, column: 11, scope: !3171, inlinedAt: !3164)
!3173 = !DILocation(line: 197, column: 11, scope: !3174, inlinedAt: !3164)
!3174 = distinct !DILexicalBlock(scope: !3175, file: !683, line: 197, column: 11)
!3175 = distinct !DILexicalBlock(scope: !3167, file: !683, line: 195, column: 5)
!3176 = !DILocation(line: 197, column: 11, scope: !3175, inlinedAt: !3164)
!3177 = !DILocation(line: 198, column: 9, scope: !3174, inlinedAt: !3164)
!3178 = !DILocation(line: 0, scope: !2979, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 201, column: 7, scope: !686, inlinedAt: !3164)
!3180 = !DILocation(line: 85, column: 25, scope: !2979, inlinedAt: !3179)
!3181 = !DILocation(line: 0, scope: !2987, inlinedAt: !3182)
!3182 = distinct !DILocation(line: 85, column: 10, scope: !2979, inlinedAt: !3179)
!3183 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3182)
!3184 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3182)
!3185 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3182)
!3186 = !DILocation(line: 202, column: 7, scope: !686, inlinedAt: !3164)
!3187 = !DILocation(line: 118, column: 3, scope: !3156)
!3188 = !DILocation(line: 0, scope: !686)
!3189 = !DILocation(line: 178, column: 14, scope: !686)
!3190 = !DILocation(line: 180, column: 9, scope: !3167)
!3191 = !DILocation(line: 180, column: 7, scope: !686)
!3192 = !DILocation(line: 182, column: 13, scope: !3170)
!3193 = !DILocation(line: 182, column: 11, scope: !3171)
!3194 = !DILocation(line: 190, column: 30, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3170, file: !683, line: 183, column: 9)
!3196 = !DILocation(line: 191, column: 16, scope: !3195)
!3197 = !DILocation(line: 191, column: 13, scope: !3195)
!3198 = !DILocation(line: 192, column: 9, scope: !3195)
!3199 = !DILocation(line: 197, column: 11, scope: !3174)
!3200 = !DILocation(line: 197, column: 11, scope: !3175)
!3201 = !DILocation(line: 198, column: 9, scope: !3174)
!3202 = !DILocation(line: 0, scope: !2979, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 201, column: 7, scope: !686)
!3204 = !DILocation(line: 85, column: 25, scope: !2979, inlinedAt: !3203)
!3205 = !DILocation(line: 0, scope: !2987, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 85, column: 10, scope: !2979, inlinedAt: !3203)
!3207 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3206)
!3208 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3206)
!3209 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3206)
!3210 = !DILocation(line: 202, column: 7, scope: !686)
!3211 = !DILocation(line: 203, column: 3, scope: !686)
!3212 = !DILocation(line: 0, scope: !698)
!3213 = !DILocation(line: 230, column: 14, scope: !698)
!3214 = !DILocation(line: 238, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !698, file: !683, line: 238, column: 7)
!3216 = !DILocation(line: 238, column: 7, scope: !698)
!3217 = !DILocation(line: 240, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !698, file: !683, line: 240, column: 7)
!3219 = !DILocation(line: 240, column: 18, scope: !3218)
!3220 = !DILocation(line: 253, column: 8, scope: !698)
!3221 = !DILocation(line: 256, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !698, file: !683, line: 256, column: 7)
!3223 = !DILocation(line: 256, column: 7, scope: !698)
!3224 = !DILocation(line: 258, column: 27, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3222, file: !683, line: 257, column: 5)
!3226 = !DILocation(line: 259, column: 50, scope: !3225)
!3227 = !DILocation(line: 259, column: 32, scope: !3225)
!3228 = !DILocation(line: 260, column: 5, scope: !3225)
!3229 = !DILocation(line: 262, column: 9, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !698, file: !683, line: 262, column: 7)
!3231 = !DILocation(line: 262, column: 7, scope: !698)
!3232 = !DILocation(line: 263, column: 9, scope: !3230)
!3233 = !DILocation(line: 263, column: 5, scope: !3230)
!3234 = !DILocation(line: 264, column: 9, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !698, file: !683, line: 264, column: 7)
!3236 = !DILocation(line: 264, column: 14, scope: !3235)
!3237 = !DILocation(line: 265, column: 7, scope: !3235)
!3238 = !DILocation(line: 265, column: 11, scope: !3235)
!3239 = !DILocation(line: 266, column: 11, scope: !3235)
!3240 = !DILocation(line: 267, column: 14, scope: !3235)
!3241 = !DILocation(line: 264, column: 7, scope: !698)
!3242 = !DILocation(line: 268, column: 5, scope: !3235)
!3243 = !DILocation(line: 0, scope: !3054, inlinedAt: !3244)
!3244 = distinct !DILocation(line: 269, column: 8, scope: !698)
!3245 = !DILocation(line: 0, scope: !3062, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 70, column: 25, scope: !3054, inlinedAt: !3244)
!3247 = !DILocation(line: 2059, column: 24, scope: !3062, inlinedAt: !3246)
!3248 = !DILocation(line: 2059, column: 10, scope: !3062, inlinedAt: !3246)
!3249 = !DILocation(line: 0, scope: !2987, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 70, column: 10, scope: !3054, inlinedAt: !3244)
!3251 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3250)
!3252 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3250)
!3253 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3250)
!3254 = !DILocation(line: 270, column: 7, scope: !698)
!3255 = !DILocation(line: 271, column: 3, scope: !698)
!3256 = distinct !DISubprogram(name: "xzalloc", scope: !683, file: !683, line: 279, type: !3007, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3257)
!3257 = !{!3258}
!3258 = !DILocalVariable(name: "s", arg: 1, scope: !3256, file: !683, line: 279, type: !118)
!3259 = !DILocation(line: 0, scope: !3256)
!3260 = !DILocalVariable(name: "n", arg: 1, scope: !3261, file: !683, line: 294, type: !118)
!3261 = distinct !DISubprogram(name: "xcalloc", scope: !683, file: !683, line: 294, type: !3123, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3262)
!3262 = !{!3260, !3263}
!3263 = !DILocalVariable(name: "s", arg: 2, scope: !3261, file: !683, line: 294, type: !118)
!3264 = !DILocation(line: 0, scope: !3261, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 281, column: 10, scope: !3256)
!3266 = !DILocation(line: 296, column: 25, scope: !3261, inlinedAt: !3265)
!3267 = !DILocation(line: 0, scope: !2987, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 296, column: 10, scope: !3261, inlinedAt: !3265)
!3269 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3268)
!3270 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3268)
!3271 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3268)
!3272 = !DILocation(line: 281, column: 3, scope: !3256)
!3273 = !DISubprogram(name: "calloc", scope: !941, file: !941, line: 543, type: !3123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3274 = !DILocation(line: 0, scope: !3261)
!3275 = !DILocation(line: 296, column: 25, scope: !3261)
!3276 = !DILocation(line: 0, scope: !2987, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 296, column: 10, scope: !3261)
!3278 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3277)
!3279 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3277)
!3280 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3277)
!3281 = !DILocation(line: 296, column: 3, scope: !3261)
!3282 = distinct !DISubprogram(name: "xizalloc", scope: !683, file: !683, line: 285, type: !3021, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3283)
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "s", arg: 1, scope: !3282, file: !683, line: 285, type: !702)
!3285 = !DILocation(line: 0, scope: !3282)
!3286 = !DILocalVariable(name: "n", arg: 1, scope: !3287, file: !683, line: 300, type: !702)
!3287 = distinct !DISubprogram(name: "xicalloc", scope: !683, file: !683, line: 300, type: !3139, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3288)
!3288 = !{!3286, !3289}
!3289 = !DILocalVariable(name: "s", arg: 2, scope: !3287, file: !683, line: 300, type: !702)
!3290 = !DILocation(line: 0, scope: !3287, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 287, column: 10, scope: !3282)
!3292 = !DILocalVariable(name: "n", arg: 1, scope: !3293, file: !3028, line: 77, type: !702)
!3293 = distinct !DISubprogram(name: "icalloc", scope: !3028, file: !3028, line: 77, type: !3139, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3294)
!3294 = !{!3292, !3295}
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3293, file: !3028, line: 77, type: !702)
!3296 = !DILocation(line: 0, scope: !3293, inlinedAt: !3297)
!3297 = distinct !DILocation(line: 302, column: 25, scope: !3287, inlinedAt: !3291)
!3298 = !DILocation(line: 91, column: 10, scope: !3293, inlinedAt: !3297)
!3299 = !DILocation(line: 0, scope: !2987, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 302, column: 10, scope: !3287, inlinedAt: !3291)
!3301 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3300)
!3302 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3300)
!3303 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3300)
!3304 = !DILocation(line: 287, column: 3, scope: !3282)
!3305 = !DILocation(line: 0, scope: !3287)
!3306 = !DILocation(line: 0, scope: !3293, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 302, column: 25, scope: !3287)
!3308 = !DILocation(line: 91, column: 10, scope: !3293, inlinedAt: !3307)
!3309 = !DILocation(line: 0, scope: !2987, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 302, column: 10, scope: !3287)
!3311 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3310)
!3312 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3310)
!3313 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3310)
!3314 = !DILocation(line: 302, column: 3, scope: !3287)
!3315 = distinct !DISubprogram(name: "xmemdup", scope: !683, file: !683, line: 310, type: !3316, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!115, !965, !118}
!3318 = !{!3319, !3320}
!3319 = !DILocalVariable(name: "p", arg: 1, scope: !3315, file: !683, line: 310, type: !965)
!3320 = !DILocalVariable(name: "s", arg: 2, scope: !3315, file: !683, line: 310, type: !118)
!3321 = !DILocation(line: 0, scope: !3315)
!3322 = !DILocation(line: 0, scope: !3006, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 312, column: 18, scope: !3315)
!3324 = !DILocation(line: 49, column: 25, scope: !3006, inlinedAt: !3323)
!3325 = !DILocation(line: 0, scope: !2987, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 49, column: 10, scope: !3006, inlinedAt: !3323)
!3327 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3326)
!3328 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3326)
!3329 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3326)
!3330 = !DILocalVariable(name: "__dest", arg: 1, scope: !3331, file: !1444, line: 26, type: !3334)
!3331 = distinct !DISubprogram(name: "memcpy", scope: !1444, file: !1444, line: 26, type: !3332, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3335)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!115, !3334, !964, !118}
!3334 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!3335 = !{!3330, !3336, !3337}
!3336 = !DILocalVariable(name: "__src", arg: 2, scope: !3331, file: !1444, line: 26, type: !964)
!3337 = !DILocalVariable(name: "__len", arg: 3, scope: !3331, file: !1444, line: 26, type: !118)
!3338 = !DILocation(line: 0, scope: !3331, inlinedAt: !3339)
!3339 = distinct !DILocation(line: 312, column: 10, scope: !3315)
!3340 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3339)
!3341 = !DILocation(line: 312, column: 3, scope: !3315)
!3342 = distinct !DISubprogram(name: "ximemdup", scope: !683, file: !683, line: 316, type: !3343, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3345)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!115, !965, !702}
!3345 = !{!3346, !3347}
!3346 = !DILocalVariable(name: "p", arg: 1, scope: !3342, file: !683, line: 316, type: !965)
!3347 = !DILocalVariable(name: "s", arg: 2, scope: !3342, file: !683, line: 316, type: !702)
!3348 = !DILocation(line: 0, scope: !3342)
!3349 = !DILocation(line: 0, scope: !3020, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 318, column: 18, scope: !3342)
!3351 = !DILocation(line: 0, scope: !3027, inlinedAt: !3352)
!3352 = distinct !DILocation(line: 55, column: 25, scope: !3020, inlinedAt: !3350)
!3353 = !DILocation(line: 57, column: 26, scope: !3027, inlinedAt: !3352)
!3354 = !DILocation(line: 0, scope: !2987, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 55, column: 10, scope: !3020, inlinedAt: !3350)
!3356 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3355)
!3357 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3355)
!3358 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3355)
!3359 = !DILocation(line: 0, scope: !3331, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 318, column: 10, scope: !3342)
!3361 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3360)
!3362 = !DILocation(line: 318, column: 3, scope: !3342)
!3363 = distinct !DISubprogram(name: "ximemdup0", scope: !683, file: !683, line: 325, type: !3364, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3366)
!3364 = !DISubroutineType(types: !3365)
!3365 = !{!260, !965, !702}
!3366 = !{!3367, !3368, !3369}
!3367 = !DILocalVariable(name: "p", arg: 1, scope: !3363, file: !683, line: 325, type: !965)
!3368 = !DILocalVariable(name: "s", arg: 2, scope: !3363, file: !683, line: 325, type: !702)
!3369 = !DILocalVariable(name: "result", scope: !3363, file: !683, line: 327, type: !260)
!3370 = !DILocation(line: 0, scope: !3363)
!3371 = !DILocation(line: 327, column: 30, scope: !3363)
!3372 = !DILocation(line: 0, scope: !3020, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 327, column: 18, scope: !3363)
!3374 = !DILocation(line: 0, scope: !3027, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 55, column: 25, scope: !3020, inlinedAt: !3373)
!3376 = !DILocation(line: 57, column: 26, scope: !3027, inlinedAt: !3375)
!3377 = !DILocation(line: 0, scope: !2987, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 55, column: 10, scope: !3020, inlinedAt: !3373)
!3379 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3378)
!3380 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3378)
!3381 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3378)
!3382 = !DILocation(line: 328, column: 3, scope: !3363)
!3383 = !DILocation(line: 328, column: 13, scope: !3363)
!3384 = !DILocation(line: 0, scope: !3331, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 329, column: 10, scope: !3363)
!3386 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3385)
!3387 = !DILocation(line: 329, column: 3, scope: !3363)
!3388 = distinct !DISubprogram(name: "xstrdup", scope: !683, file: !683, line: 335, type: !943, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !682, retainedNodes: !3389)
!3389 = !{!3390}
!3390 = !DILocalVariable(name: "string", arg: 1, scope: !3388, file: !683, line: 335, type: !80)
!3391 = !DILocation(line: 0, scope: !3388)
!3392 = !DILocation(line: 337, column: 27, scope: !3388)
!3393 = !DILocation(line: 337, column: 43, scope: !3388)
!3394 = !DILocation(line: 0, scope: !3315, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 337, column: 10, scope: !3388)
!3396 = !DILocation(line: 0, scope: !3006, inlinedAt: !3397)
!3397 = distinct !DILocation(line: 312, column: 18, scope: !3315, inlinedAt: !3395)
!3398 = !DILocation(line: 49, column: 25, scope: !3006, inlinedAt: !3397)
!3399 = !DILocation(line: 0, scope: !2987, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 49, column: 10, scope: !3006, inlinedAt: !3397)
!3401 = !DILocation(line: 39, column: 8, scope: !2994, inlinedAt: !3400)
!3402 = !DILocation(line: 39, column: 7, scope: !2987, inlinedAt: !3400)
!3403 = !DILocation(line: 40, column: 5, scope: !2994, inlinedAt: !3400)
!3404 = !DILocation(line: 0, scope: !3331, inlinedAt: !3405)
!3405 = distinct !DILocation(line: 312, column: 10, scope: !3315, inlinedAt: !3395)
!3406 = !DILocation(line: 29, column: 10, scope: !3331, inlinedAt: !3405)
!3407 = !DILocation(line: 337, column: 3, scope: !3388)
!3408 = distinct !DISubprogram(name: "xalloc_die", scope: !648, file: !648, line: 32, type: !382, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3409)
!3409 = !{!3410}
!3410 = !DILocalVariable(name: "__errstatus", scope: !3411, file: !648, line: 34, type: !3412)
!3411 = distinct !DILexicalBlock(scope: !3408, file: !648, line: 34, column: 3)
!3412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3413 = !DILocation(line: 34, column: 3, scope: !3411)
!3414 = !DILocation(line: 0, scope: !3411)
!3415 = !DILocation(line: 40, column: 3, scope: !3408)
!3416 = distinct !DISubprogram(name: "close_stream", scope: !720, file: !720, line: 55, type: !3417, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3453)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!116, !3419}
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3422)
!3422 = !{!3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3421, file: !256, line: 51, baseType: !116, size: 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3421, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3421, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3421, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3421, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3421, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3421, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3421, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3421, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3421, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3421, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3421, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3421, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3421, file: !256, line: 70, baseType: !3437, size: 64, offset: 832)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3421, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3421, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3421, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3421, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3421, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3421, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3421, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3421, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3421, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3421, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3421, file: !256, line: 93, baseType: !3437, size: 64, offset: 1344)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3421, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3421, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3421, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3421, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3453 = !{!3454, !3455, !3457, !3458}
!3454 = !DILocalVariable(name: "stream", arg: 1, scope: !3416, file: !720, line: 55, type: !3419)
!3455 = !DILocalVariable(name: "some_pending", scope: !3416, file: !720, line: 57, type: !3456)
!3456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!3457 = !DILocalVariable(name: "prev_fail", scope: !3416, file: !720, line: 58, type: !3456)
!3458 = !DILocalVariable(name: "fclose_fail", scope: !3416, file: !720, line: 59, type: !3456)
!3459 = !DILocation(line: 0, scope: !3416)
!3460 = !DILocation(line: 57, column: 30, scope: !3416)
!3461 = !DILocalVariable(name: "__stream", arg: 1, scope: !3462, file: !1189, line: 135, type: !3419)
!3462 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1189, file: !1189, line: 135, type: !3417, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3463)
!3463 = !{!3461}
!3464 = !DILocation(line: 0, scope: !3462, inlinedAt: !3465)
!3465 = distinct !DILocation(line: 58, column: 27, scope: !3416)
!3466 = !DILocation(line: 137, column: 10, scope: !3462, inlinedAt: !3465)
!3467 = !{!1198, !818, i64 0}
!3468 = !DILocation(line: 58, column: 43, scope: !3416)
!3469 = !DILocation(line: 59, column: 29, scope: !3416)
!3470 = !DILocation(line: 59, column: 45, scope: !3416)
!3471 = !DILocation(line: 69, column: 17, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3416, file: !720, line: 69, column: 7)
!3473 = !DILocation(line: 57, column: 50, scope: !3416)
!3474 = !DILocation(line: 69, column: 33, scope: !3472)
!3475 = !DILocation(line: 69, column: 53, scope: !3472)
!3476 = !DILocation(line: 69, column: 59, scope: !3472)
!3477 = !DILocation(line: 69, column: 7, scope: !3416)
!3478 = !DILocation(line: 71, column: 11, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !720, line: 70, column: 5)
!3480 = !DILocation(line: 72, column: 9, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3479, file: !720, line: 71, column: 11)
!3482 = !DILocation(line: 72, column: 15, scope: !3481)
!3483 = !DILocation(line: 77, column: 1, scope: !3416)
!3484 = !DISubprogram(name: "__fpending", scope: !3485, file: !3485, line: 75, type: !3486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3485 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!118, !3419}
!3488 = distinct !DISubprogram(name: "rpl_fclose", scope: !722, file: !722, line: 58, type: !3489, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3525)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!116, !3491}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3493, file: !256, line: 51, baseType: !116, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3493, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3493, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3493, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3493, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3493, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3493, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3493, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3493, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3493, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3493, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3493, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3493, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3493, file: !256, line: 70, baseType: !3509, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3493, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3493, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3493, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3493, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3493, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3493, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3493, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3493, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3493, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3493, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3493, file: !256, line: 93, baseType: !3509, size: 64, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3493, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3493, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3493, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3493, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DILocalVariable(name: "fp", arg: 1, scope: !3488, file: !722, line: 58, type: !3491)
!3527 = !DILocalVariable(name: "saved_errno", scope: !3488, file: !722, line: 60, type: !116)
!3528 = !DILocalVariable(name: "fd", scope: !3488, file: !722, line: 63, type: !116)
!3529 = !DILocalVariable(name: "result", scope: !3488, file: !722, line: 74, type: !116)
!3530 = !DILocation(line: 0, scope: !3488)
!3531 = !DILocation(line: 63, column: 12, scope: !3488)
!3532 = !DILocation(line: 64, column: 10, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3488, file: !722, line: 64, column: 7)
!3534 = !DILocation(line: 64, column: 7, scope: !3488)
!3535 = !DILocation(line: 65, column: 12, scope: !3533)
!3536 = !DILocation(line: 65, column: 5, scope: !3533)
!3537 = !DILocation(line: 70, column: 9, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3488, file: !722, line: 70, column: 7)
!3539 = !DILocation(line: 70, column: 23, scope: !3538)
!3540 = !DILocation(line: 70, column: 33, scope: !3538)
!3541 = !DILocation(line: 70, column: 26, scope: !3538)
!3542 = !DILocation(line: 70, column: 59, scope: !3538)
!3543 = !DILocation(line: 71, column: 7, scope: !3538)
!3544 = !DILocation(line: 71, column: 10, scope: !3538)
!3545 = !DILocation(line: 70, column: 7, scope: !3488)
!3546 = !DILocation(line: 100, column: 12, scope: !3488)
!3547 = !DILocation(line: 105, column: 7, scope: !3488)
!3548 = !DILocation(line: 72, column: 19, scope: !3538)
!3549 = !DILocation(line: 105, column: 19, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3488, file: !722, line: 105, column: 7)
!3551 = !DILocation(line: 107, column: 13, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3550, file: !722, line: 106, column: 5)
!3553 = !DILocation(line: 109, column: 5, scope: !3552)
!3554 = !DILocation(line: 112, column: 1, scope: !3488)
!3555 = !DISubprogram(name: "fileno", scope: !812, file: !812, line: 809, type: !3489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3556 = !DISubprogram(name: "fclose", scope: !812, file: !812, line: 178, type: !3489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3557 = !DISubprogram(name: "__freading", scope: !3485, file: !3485, line: 51, type: !3489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3558 = !DISubprogram(name: "lseek", scope: !1018, file: !1018, line: 339, type: !3559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!279, !116, !279, !116}
!3561 = distinct !DISubprogram(name: "rpl_fflush", scope: !724, file: !724, line: 130, type: !3562, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3598)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!116, !3564}
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3566)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3566, file: !256, line: 51, baseType: !116, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3566, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3566, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3566, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3566, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3566, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3566, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3566, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3566, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3566, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3566, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3566, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3566, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3566, file: !256, line: 70, baseType: !3582, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3566, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3566, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3566, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3566, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3566, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3566, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3566, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3566, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3566, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3566, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3566, file: !256, line: 93, baseType: !3582, size: 64, offset: 1344)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3566, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3566, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3566, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3566, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3598 = !{!3599}
!3599 = !DILocalVariable(name: "stream", arg: 1, scope: !3561, file: !724, line: 130, type: !3564)
!3600 = !DILocation(line: 0, scope: !3561)
!3601 = !DILocation(line: 151, column: 14, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3561, file: !724, line: 151, column: 7)
!3603 = !DILocation(line: 151, column: 22, scope: !3602)
!3604 = !DILocation(line: 151, column: 27, scope: !3602)
!3605 = !DILocation(line: 151, column: 7, scope: !3561)
!3606 = !DILocation(line: 152, column: 12, scope: !3602)
!3607 = !DILocation(line: 152, column: 5, scope: !3602)
!3608 = !DILocalVariable(name: "fp", arg: 1, scope: !3609, file: !724, line: 42, type: !3564)
!3609 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !724, file: !724, line: 42, type: !3610, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !3564}
!3612 = !{!3608}
!3613 = !DILocation(line: 0, scope: !3609, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 157, column: 3, scope: !3561)
!3615 = !DILocation(line: 44, column: 12, scope: !3616, inlinedAt: !3614)
!3616 = distinct !DILexicalBlock(scope: !3609, file: !724, line: 44, column: 7)
!3617 = !DILocation(line: 44, column: 19, scope: !3616, inlinedAt: !3614)
!3618 = !DILocation(line: 44, column: 7, scope: !3609, inlinedAt: !3614)
!3619 = !DILocation(line: 46, column: 5, scope: !3616, inlinedAt: !3614)
!3620 = !DILocation(line: 159, column: 10, scope: !3561)
!3621 = !DILocation(line: 159, column: 3, scope: !3561)
!3622 = !DILocation(line: 236, column: 1, scope: !3561)
!3623 = !DISubprogram(name: "fflush", scope: !812, file: !812, line: 230, type: !3562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3624 = distinct !DISubprogram(name: "rpl_fseeko", scope: !726, file: !726, line: 28, type: !3625, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3662)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!116, !3627, !3661, !116}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3630)
!3630 = !{!3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3629, file: !256, line: 51, baseType: !116, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3629, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3629, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3629, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3629, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3629, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3629, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3629, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3629, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3629, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3629, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3629, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3629, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3629, file: !256, line: 70, baseType: !3645, size: 64, offset: 832)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3629, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3629, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3629, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3629, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3629, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3629, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3629, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3629, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3629, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3629, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3629, file: !256, line: 93, baseType: !3645, size: 64, offset: 1344)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3629, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3629, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3629, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3629, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3661 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !812, line: 63, baseType: !279)
!3662 = !{!3663, !3664, !3665, !3666}
!3663 = !DILocalVariable(name: "fp", arg: 1, scope: !3624, file: !726, line: 28, type: !3627)
!3664 = !DILocalVariable(name: "offset", arg: 2, scope: !3624, file: !726, line: 28, type: !3661)
!3665 = !DILocalVariable(name: "whence", arg: 3, scope: !3624, file: !726, line: 28, type: !116)
!3666 = !DILocalVariable(name: "pos", scope: !3667, file: !726, line: 123, type: !3661)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !726, line: 119, column: 5)
!3668 = distinct !DILexicalBlock(scope: !3624, file: !726, line: 55, column: 7)
!3669 = !DILocation(line: 0, scope: !3624)
!3670 = !DILocation(line: 55, column: 12, scope: !3668)
!3671 = !{!1198, !757, i64 16}
!3672 = !DILocation(line: 55, column: 33, scope: !3668)
!3673 = !{!1198, !757, i64 8}
!3674 = !DILocation(line: 55, column: 25, scope: !3668)
!3675 = !DILocation(line: 56, column: 7, scope: !3668)
!3676 = !DILocation(line: 56, column: 15, scope: !3668)
!3677 = !DILocation(line: 56, column: 37, scope: !3668)
!3678 = !{!1198, !757, i64 32}
!3679 = !DILocation(line: 56, column: 29, scope: !3668)
!3680 = !DILocation(line: 57, column: 7, scope: !3668)
!3681 = !DILocation(line: 57, column: 15, scope: !3668)
!3682 = !{!1198, !757, i64 72}
!3683 = !DILocation(line: 57, column: 29, scope: !3668)
!3684 = !DILocation(line: 55, column: 7, scope: !3624)
!3685 = !DILocation(line: 123, column: 26, scope: !3667)
!3686 = !DILocation(line: 123, column: 19, scope: !3667)
!3687 = !DILocation(line: 0, scope: !3667)
!3688 = !DILocation(line: 124, column: 15, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3667, file: !726, line: 124, column: 11)
!3690 = !DILocation(line: 124, column: 11, scope: !3667)
!3691 = !DILocation(line: 135, column: 19, scope: !3667)
!3692 = !DILocation(line: 136, column: 12, scope: !3667)
!3693 = !DILocation(line: 136, column: 20, scope: !3667)
!3694 = !{!1198, !1199, i64 144}
!3695 = !DILocation(line: 167, column: 7, scope: !3667)
!3696 = !DILocation(line: 169, column: 10, scope: !3624)
!3697 = !DILocation(line: 169, column: 3, scope: !3624)
!3698 = !DILocation(line: 170, column: 1, scope: !3624)
!3699 = !DISubprogram(name: "fseeko", scope: !812, file: !812, line: 736, type: !3700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!116, !3627, !279, !116}
!3702 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !655, file: !655, line: 100, type: !3703, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !3706)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!118, !1462, !80, !118, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!3706 = !{!3707, !3708, !3709, !3710, !3711}
!3707 = !DILocalVariable(name: "pwc", arg: 1, scope: !3702, file: !655, line: 100, type: !1462)
!3708 = !DILocalVariable(name: "s", arg: 2, scope: !3702, file: !655, line: 100, type: !80)
!3709 = !DILocalVariable(name: "n", arg: 3, scope: !3702, file: !655, line: 100, type: !118)
!3710 = !DILocalVariable(name: "ps", arg: 4, scope: !3702, file: !655, line: 100, type: !3705)
!3711 = !DILocalVariable(name: "ret", scope: !3702, file: !655, line: 130, type: !118)
!3712 = !DILocation(line: 0, scope: !3702)
!3713 = !DILocation(line: 105, column: 9, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3702, file: !655, line: 105, column: 7)
!3715 = !DILocation(line: 105, column: 7, scope: !3702)
!3716 = !DILocation(line: 117, column: 10, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3702, file: !655, line: 117, column: 7)
!3718 = !DILocation(line: 117, column: 7, scope: !3702)
!3719 = !DILocation(line: 130, column: 16, scope: !3702)
!3720 = !DILocation(line: 135, column: 11, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3702, file: !655, line: 135, column: 7)
!3722 = !DILocation(line: 135, column: 25, scope: !3721)
!3723 = !DILocation(line: 135, column: 30, scope: !3721)
!3724 = !DILocation(line: 135, column: 7, scope: !3702)
!3725 = !DILocalVariable(name: "ps", arg: 1, scope: !3726, file: !1435, line: 1135, type: !3705)
!3726 = distinct !DISubprogram(name: "mbszero", scope: !1435, file: !1435, line: 1135, type: !3727, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !3729)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !3705}
!3729 = !{!3725}
!3730 = !DILocation(line: 0, scope: !3726, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 137, column: 5, scope: !3721)
!3732 = !DILocalVariable(name: "__dest", arg: 1, scope: !3733, file: !1444, line: 57, type: !115)
!3733 = distinct !DISubprogram(name: "memset", scope: !1444, file: !1444, line: 57, type: !1445, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !658, retainedNodes: !3734)
!3734 = !{!3732, !3735, !3736}
!3735 = !DILocalVariable(name: "__ch", arg: 2, scope: !3733, file: !1444, line: 57, type: !116)
!3736 = !DILocalVariable(name: "__len", arg: 3, scope: !3733, file: !1444, line: 57, type: !118)
!3737 = !DILocation(line: 0, scope: !3733, inlinedAt: !3738)
!3738 = distinct !DILocation(line: 1137, column: 3, scope: !3726, inlinedAt: !3731)
!3739 = !DILocation(line: 59, column: 10, scope: !3733, inlinedAt: !3738)
!3740 = !DILocation(line: 137, column: 5, scope: !3721)
!3741 = !DILocation(line: 138, column: 11, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3702, file: !655, line: 138, column: 7)
!3743 = !DILocation(line: 138, column: 7, scope: !3702)
!3744 = !DILocation(line: 139, column: 5, scope: !3742)
!3745 = !DILocation(line: 143, column: 26, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3702, file: !655, line: 143, column: 7)
!3747 = !DILocation(line: 143, column: 41, scope: !3746)
!3748 = !DILocation(line: 143, column: 7, scope: !3702)
!3749 = !DILocation(line: 145, column: 15, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3751, file: !655, line: 145, column: 11)
!3751 = distinct !DILexicalBlock(scope: !3746, file: !655, line: 144, column: 5)
!3752 = !DILocation(line: 145, column: 11, scope: !3751)
!3753 = !DILocation(line: 146, column: 32, scope: !3750)
!3754 = !DILocation(line: 146, column: 16, scope: !3750)
!3755 = !DILocation(line: 146, column: 14, scope: !3750)
!3756 = !DILocation(line: 146, column: 9, scope: !3750)
!3757 = !DILocation(line: 286, column: 1, scope: !3702)
!3758 = !DISubprogram(name: "mbsinit", scope: !3759, file: !3759, line: 293, type: !3760, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3759 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!116, !3762}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !661)
!3764 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !728, file: !728, line: 27, type: !2971, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3765)
!3765 = !{!3766, !3767, !3768, !3769}
!3766 = !DILocalVariable(name: "ptr", arg: 1, scope: !3764, file: !728, line: 27, type: !115)
!3767 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3764, file: !728, line: 27, type: !118)
!3768 = !DILocalVariable(name: "size", arg: 3, scope: !3764, file: !728, line: 27, type: !118)
!3769 = !DILocalVariable(name: "nbytes", scope: !3764, file: !728, line: 29, type: !118)
!3770 = !DILocation(line: 0, scope: !3764)
!3771 = !DILocation(line: 30, column: 7, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3764, file: !728, line: 30, column: 7)
!3773 = !DILocation(line: 30, column: 7, scope: !3764)
!3774 = !DILocation(line: 32, column: 7, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3772, file: !728, line: 31, column: 5)
!3776 = !DILocation(line: 32, column: 13, scope: !3775)
!3777 = !DILocation(line: 33, column: 7, scope: !3775)
!3778 = !DILocalVariable(name: "ptr", arg: 1, scope: !3779, file: !3063, line: 2057, type: !115)
!3779 = distinct !DISubprogram(name: "rpl_realloc", scope: !3063, file: !3063, line: 2057, type: !3055, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3780)
!3780 = !{!3778, !3781}
!3781 = !DILocalVariable(name: "size", arg: 2, scope: !3779, file: !3063, line: 2057, type: !118)
!3782 = !DILocation(line: 0, scope: !3779, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 37, column: 10, scope: !3764)
!3784 = !DILocation(line: 2059, column: 24, scope: !3779, inlinedAt: !3783)
!3785 = !DILocation(line: 2059, column: 10, scope: !3779, inlinedAt: !3783)
!3786 = !DILocation(line: 37, column: 3, scope: !3764)
!3787 = !DILocation(line: 38, column: 1, scope: !3764)
!3788 = distinct !DISubprogram(name: "hard_locale", scope: !673, file: !673, line: 28, type: !3789, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3791)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!239, !116}
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "category", arg: 1, scope: !3788, file: !673, line: 28, type: !116)
!3793 = !DILocalVariable(name: "locale", scope: !3788, file: !673, line: 30, type: !3794)
!3794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3795)
!3795 = !{!3796}
!3796 = !DISubrange(count: 257)
!3797 = distinct !DIAssignID()
!3798 = !DILocation(line: 0, scope: !3788)
!3799 = !DILocation(line: 30, column: 3, scope: !3788)
!3800 = !DILocation(line: 32, column: 7, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3788, file: !673, line: 32, column: 7)
!3802 = !DILocation(line: 32, column: 7, scope: !3788)
!3803 = !DILocalVariable(name: "__s1", arg: 1, scope: !3804, file: !830, line: 1359, type: !80)
!3804 = distinct !DISubprogram(name: "streq", scope: !830, file: !830, line: 1359, type: !831, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3805)
!3805 = !{!3803, !3806}
!3806 = !DILocalVariable(name: "__s2", arg: 2, scope: !3804, file: !830, line: 1359, type: !80)
!3807 = !DILocation(line: 0, scope: !3804, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 35, column: 9, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3788, file: !673, line: 35, column: 7)
!3810 = !DILocation(line: 1361, column: 11, scope: !3804, inlinedAt: !3808)
!3811 = !DILocation(line: 35, column: 29, scope: !3809)
!3812 = !DILocation(line: 0, scope: !3804, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 35, column: 32, scope: !3809)
!3814 = !DILocation(line: 1361, column: 11, scope: !3804, inlinedAt: !3813)
!3815 = !DILocation(line: 1361, column: 10, scope: !3804, inlinedAt: !3813)
!3816 = !DILocation(line: 35, column: 7, scope: !3788)
!3817 = !DILocation(line: 46, column: 3, scope: !3788)
!3818 = !DILocation(line: 47, column: 1, scope: !3788)
!3819 = distinct !DISubprogram(name: "setlocale_null_r", scope: !734, file: !734, line: 154, type: !3820, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3822)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!116, !116, !260, !118}
!3822 = !{!3823, !3824, !3825}
!3823 = !DILocalVariable(name: "category", arg: 1, scope: !3819, file: !734, line: 154, type: !116)
!3824 = !DILocalVariable(name: "buf", arg: 2, scope: !3819, file: !734, line: 154, type: !260)
!3825 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3819, file: !734, line: 154, type: !118)
!3826 = !DILocation(line: 0, scope: !3819)
!3827 = !DILocation(line: 159, column: 10, scope: !3819)
!3828 = !DILocation(line: 159, column: 3, scope: !3819)
!3829 = distinct !DISubprogram(name: "setlocale_null", scope: !734, file: !734, line: 186, type: !3830, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!80, !116}
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "category", arg: 1, scope: !3829, file: !734, line: 186, type: !116)
!3834 = !DILocation(line: 0, scope: !3829)
!3835 = !DILocation(line: 189, column: 10, scope: !3829)
!3836 = !DILocation(line: 189, column: 3, scope: !3829)
!3837 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !736, file: !736, line: 35, type: !3830, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3838)
!3838 = !{!3839, !3840}
!3839 = !DILocalVariable(name: "category", arg: 1, scope: !3837, file: !736, line: 35, type: !116)
!3840 = !DILocalVariable(name: "result", scope: !3837, file: !736, line: 37, type: !80)
!3841 = !DILocation(line: 0, scope: !3837)
!3842 = !DILocation(line: 37, column: 24, scope: !3837)
!3843 = !DILocation(line: 62, column: 3, scope: !3837)
!3844 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !736, file: !736, line: 66, type: !3820, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850}
!3846 = !DILocalVariable(name: "category", arg: 1, scope: !3844, file: !736, line: 66, type: !116)
!3847 = !DILocalVariable(name: "buf", arg: 2, scope: !3844, file: !736, line: 66, type: !260)
!3848 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3844, file: !736, line: 66, type: !118)
!3849 = !DILocalVariable(name: "result", scope: !3844, file: !736, line: 111, type: !80)
!3850 = !DILocalVariable(name: "length", scope: !3851, file: !736, line: 125, type: !118)
!3851 = distinct !DILexicalBlock(scope: !3852, file: !736, line: 124, column: 5)
!3852 = distinct !DILexicalBlock(scope: !3844, file: !736, line: 113, column: 7)
!3853 = !DILocation(line: 0, scope: !3844)
!3854 = !DILocation(line: 0, scope: !3837, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 111, column: 24, scope: !3844)
!3856 = !DILocation(line: 37, column: 24, scope: !3837, inlinedAt: !3855)
!3857 = !DILocation(line: 113, column: 14, scope: !3852)
!3858 = !DILocation(line: 113, column: 7, scope: !3844)
!3859 = !DILocation(line: 116, column: 19, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3861, file: !736, line: 116, column: 11)
!3861 = distinct !DILexicalBlock(scope: !3852, file: !736, line: 114, column: 5)
!3862 = !DILocation(line: 116, column: 11, scope: !3861)
!3863 = !DILocation(line: 120, column: 16, scope: !3860)
!3864 = !DILocation(line: 120, column: 9, scope: !3860)
!3865 = !DILocation(line: 125, column: 23, scope: !3851)
!3866 = !DILocation(line: 0, scope: !3851)
!3867 = !DILocation(line: 126, column: 18, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3851, file: !736, line: 126, column: 11)
!3869 = !DILocation(line: 126, column: 11, scope: !3851)
!3870 = !DILocation(line: 128, column: 39, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3868, file: !736, line: 127, column: 9)
!3872 = !DILocalVariable(name: "__dest", arg: 1, scope: !3873, file: !1444, line: 26, type: !3334)
!3873 = distinct !DISubprogram(name: "memcpy", scope: !1444, file: !1444, line: 26, type: !3332, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3874)
!3874 = !{!3872, !3875, !3876}
!3875 = !DILocalVariable(name: "__src", arg: 2, scope: !3873, file: !1444, line: 26, type: !964)
!3876 = !DILocalVariable(name: "__len", arg: 3, scope: !3873, file: !1444, line: 26, type: !118)
!3877 = !DILocation(line: 0, scope: !3873, inlinedAt: !3878)
!3878 = distinct !DILocation(line: 128, column: 11, scope: !3871)
!3879 = !DILocation(line: 29, column: 10, scope: !3873, inlinedAt: !3878)
!3880 = !DILocation(line: 129, column: 11, scope: !3871)
!3881 = !DILocation(line: 133, column: 23, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !736, line: 133, column: 15)
!3883 = distinct !DILexicalBlock(scope: !3868, file: !736, line: 132, column: 9)
!3884 = !DILocation(line: 133, column: 15, scope: !3883)
!3885 = !DILocation(line: 138, column: 44, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3882, file: !736, line: 134, column: 13)
!3887 = !DILocation(line: 0, scope: !3873, inlinedAt: !3888)
!3888 = distinct !DILocation(line: 138, column: 15, scope: !3886)
!3889 = !DILocation(line: 29, column: 10, scope: !3873, inlinedAt: !3888)
!3890 = !DILocation(line: 139, column: 15, scope: !3886)
!3891 = !DILocation(line: 139, column: 32, scope: !3886)
!3892 = !DILocation(line: 140, column: 13, scope: !3886)
!3893 = !DILocation(line: 0, scope: !3852)
!3894 = !DILocation(line: 145, column: 1, scope: !3844)
