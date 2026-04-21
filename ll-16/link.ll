; ModuleID = 'src/link.bc'
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !331
@.str.22 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !323
@.str.1.23 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !325
@.str.2.24 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !327
@.str.3.25 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !329
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !333
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !339
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !376
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !341
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !366
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !368
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !370
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !372
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !374
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !378
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !380
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !385
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !390
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !393
@optind = external local_unnamed_addr global i32, align 4
@.str.1.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !397
@.str.2.43 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !399
@.str.3.44 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !401
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !413
@.str.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !419
@.str.1.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !421
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !423
@.str.56 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !454
@.str.1.57 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !457
@.str.2.58 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !459
@.str.3.59 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !464
@.str.4.60 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !466
@.str.5.61 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !468
@.str.6.62 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !470
@.str.7.63 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !472
@.str.8.64 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !474
@.str.9.65 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !476
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.56, ptr @.str.1.57, ptr @.str.2.58, ptr @.str.3.59, ptr @.str.4.60, ptr @.str.5.61, ptr @.str.6.62, ptr @.str.7.63, ptr @.str.8.64, ptr @.str.9.65, ptr null], align 8, !dbg !478
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !489
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !503
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !541
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !548
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !505
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !550
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !493
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !510
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !512
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !514
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !516
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !518
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !556
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !559
@.str.2.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !561
@.str.3.79 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !563
@.str.4.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !565
@.str.5.81 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !567
@.str.6.82 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !572
@.str.7.83 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !577
@.str.8.84 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !579
@.str.9.85 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !584
@.str.10.86 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !586
@.str.11.87 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !591
@.str.12.88 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !596
@.str.13.89 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !598
@.str.14.90 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !603
@.str.15.91 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !608
@.str.16.92 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !613
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.97 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !618
@.str.18.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !620
@.str.19.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !622
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !624
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !626
@.str.22.100 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !628
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !630
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !635
@exit_failure = dso_local global i32 1, align 4, !dbg !643
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !649
@.str.1.111 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !652
@.str.2.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !654
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !656
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !659
@.str.129 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !674
@.str.1.130 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !677

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !749 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !753, metadata !DIExpression()), !dbg !754
  %2 = icmp eq i32 %0, 0, !dbg !755
  br i1 %2, label %8, label %3, !dbg !757

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !758, !tbaa !760
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !758
  %6 = load ptr, ptr @program_name, align 8, !dbg !758, !tbaa !760
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !758
  br label %31, !dbg !758

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !764
  %10 = load ptr, ptr @program_name, align 8, !dbg !764, !tbaa !760
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #36, !dbg !764
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !766
  %13 = load ptr, ptr @stdout, align 8, !dbg !766, !tbaa !760
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !766
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !767
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !767
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !768
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !768
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !769, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !781, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr poison, metadata !781, metadata !DIExpression()), !dbg !786
  tail call void @emit_bug_reporting_address() #36, !dbg !788
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !789
  call void @llvm.dbg.value(metadata ptr %17, metadata !784, metadata !DIExpression()), !dbg !786
  %18 = icmp eq ptr %17, null, !dbg !790
  br i1 %18, label %26, label %19, !dbg !792

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #37, !dbg !793
  %21 = icmp eq i32 %20, 0, !dbg !793
  br i1 %21, label %26, label %22, !dbg !794

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !795
  %24 = load ptr, ptr @stdout, align 8, !dbg !795, !tbaa !760
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !795
  br label %26, !dbg !797

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !781, metadata !DIExpression()), !dbg !786
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !785, metadata !DIExpression()), !dbg !786
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !798
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #36, !dbg !798
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !799
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #36, !dbg !799
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !800
  unreachable, !dbg !800
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !801 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !806 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !812 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !815 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !76 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !233, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %0, metadata !234, metadata !DIExpression()), !dbg !818
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !819, !tbaa !820
  %3 = icmp eq i32 %2, -1, !dbg !822
  br i1 %3, label %4, label %16, !dbg !823

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #36, !dbg !824
  call void @llvm.dbg.value(metadata ptr %5, metadata !235, metadata !DIExpression()), !dbg !825
  %6 = icmp eq ptr %5, null, !dbg !826
  br i1 %6, label %14, label %7, !dbg !827

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !828, !tbaa !829
  %9 = icmp eq i8 %8, 0, !dbg !828
  br i1 %9, label %14, label %10, !dbg !830

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !831, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !837, metadata !DIExpression()), !dbg !838
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #37, !dbg !840
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
  br label %122, !dbg !849

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !238, metadata !DIExpression()), !dbg !818
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #37, !dbg !850
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !851
  call void @llvm.dbg.value(metadata ptr %24, metadata !240, metadata !DIExpression()), !dbg !818
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !852
  call void @llvm.dbg.value(metadata ptr %25, metadata !241, metadata !DIExpression()), !dbg !818
  %26 = icmp eq ptr %25, null, !dbg !853
  br i1 %26, label %54, label %27, !dbg !854

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !855
  br i1 %28, label %54, label %29, !dbg !856

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !242, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !857
  %30 = icmp ult ptr %24, %25, !dbg !858
  br i1 %30, label %31, label %52, !dbg !859

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !818
  %33 = load ptr, ptr %32, align 8, !tbaa !760
  br label %34, !dbg !859

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !242, metadata !DIExpression()), !dbg !857
  call void @llvm.dbg.value(metadata i64 %36, metadata !246, metadata !DIExpression()), !dbg !857
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !860
  call void @llvm.dbg.value(metadata ptr %37, metadata !242, metadata !DIExpression()), !dbg !857
  %38 = load i8, ptr %35, align 1, !dbg !860, !tbaa !829
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !860
  %41 = load i16, ptr %40, align 2, !dbg !860, !tbaa !861
  %42 = freeze i16 %41, !dbg !863
  %43 = lshr i16 %42, 13, !dbg !863
  %44 = and i16 %43, 1, !dbg !863
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !864
  call void @llvm.dbg.value(metadata i64 %46, metadata !246, metadata !DIExpression()), !dbg !857
  %47 = icmp ult ptr %37, %25, !dbg !858
  %48 = icmp ult i64 %46, 2, !dbg !865
  %49 = select i1 %47, i1 %48, i1 false, !dbg !865
  br i1 %49, label %34, label %50, !dbg !859, !llvm.loop !866

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !868
  br i1 %51, label %52, label %54, !dbg !870

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !870

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !818
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !238, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %55, metadata !241, metadata !DIExpression()), !dbg !818
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.18) #37, !dbg !871
  call void @llvm.dbg.value(metadata i64 %57, metadata !247, metadata !DIExpression()), !dbg !818
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !872
  call void @llvm.dbg.value(metadata ptr %58, metadata !248, metadata !DIExpression()), !dbg !818
  br label %59, !dbg !873

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !818
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !238, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata ptr %60, metadata !248, metadata !DIExpression()), !dbg !818
  %62 = load i8, ptr %60, align 1, !dbg !874, !tbaa !829
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !875

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !876
  %65 = load i8, ptr %64, align 1, !dbg !879, !tbaa !829
  %66 = icmp ne i8 %65, 45, !dbg !880
  %67 = select i1 %66, i1 %61, i1 false, !dbg !881
  br label %68, !dbg !881

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !238, metadata !DIExpression()), !dbg !818
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !882
  %71 = load ptr, ptr %70, align 8, !dbg !882, !tbaa !760
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !882
  %74 = load i16, ptr %73, align 2, !dbg !882, !tbaa !861
  %75 = and i16 %74, 8192, !dbg !882
  %76 = icmp eq i16 %75, 0, !dbg !882
  br i1 %76, label %90, label %77, !dbg !884

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !885
  br i1 %78, label %92, label %79, !dbg !888

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !889
  %81 = load i8, ptr %80, align 1, !dbg !889, !tbaa !829
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !889
  %84 = load i16, ptr %83, align 2, !dbg !889, !tbaa !861
  %85 = and i16 %84, 8192, !dbg !889
  %86 = icmp eq i16 %85, 0, !dbg !889
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !890
  br i1 %89, label %90, label %92, !dbg !890

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !891
  call void @llvm.dbg.value(metadata ptr %91, metadata !248, metadata !DIExpression()), !dbg !818
  br label %59, !dbg !873, !llvm.loop !892

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !894
  %94 = load ptr, ptr @stdout, align 8, !dbg !894, !tbaa !760
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !831, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !306, metadata !DIExpression()), !dbg !818
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #37, !dbg !915
  %97 = icmp eq i32 %96, 0, !dbg !915
  br i1 %97, label %101, label %98, !dbg !917

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #37, !dbg !918
  %100 = icmp eq i32 %99, 0, !dbg !918
  br i1 %100, label %101, label %104, !dbg !919

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !920
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !920
  br label %107, !dbg !922

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !923
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !923
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !760
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %108), !dbg !925
  %110 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !760
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %110), !dbg !926
  %112 = ptrtoint ptr %60 to i64, !dbg !927
  %113 = sub i64 %112, %93, !dbg !927
  %114 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !760
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !927
  %116 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !760
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %116), !dbg !928
  %118 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !760
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %118), !dbg !929
  %120 = load ptr, ptr @stdout, align 8, !dbg !930, !tbaa !760
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !930
  br label %122, !dbg !931

122:                                              ; preds = %107, %19
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
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !967 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !972, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata ptr %1, metadata !973, metadata !DIExpression()), !dbg !974
  %3 = load ptr, ptr %1, align 8, !dbg !975, !tbaa !760
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !976
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !977
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !978
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !979
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !980
  %8 = load ptr, ptr @Version, align 8, !dbg !981, !tbaa !760
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !982
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !983
  %10 = load i32, ptr @optind, align 4, !dbg !984, !tbaa !820
  %11 = add nsw i32 %10, 2, !dbg !986
  %12 = icmp sgt i32 %11, %0, !dbg !987
  br i1 %12, label %13, label %25, !dbg !988

13:                                               ; preds = %2
  %14 = icmp slt i32 %10, %0, !dbg !989
  br i1 %14, label %17, label %15, !dbg !992

15:                                               ; preds = %13
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !993
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #36, !dbg !993
  br label %24, !dbg !993

17:                                               ; preds = %13
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !994
  %19 = load i32, ptr @optind, align 4, !dbg !994, !tbaa !820
  %20 = sext i32 %19 to i64, !dbg !994
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20, !dbg !994
  %22 = load ptr, ptr %21, align 8, !dbg !994, !tbaa !760
  %23 = tail call ptr @quote(ptr noundef %22) #36, !dbg !994
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %23) #36, !dbg !994
  br label %24

24:                                               ; preds = %17, %15
  tail call void @usage(i32 noundef 1) #40, !dbg !995
  unreachable, !dbg !995

25:                                               ; preds = %2
  %26 = icmp slt i32 %11, %0, !dbg !996
  br i1 %26, label %27, label %35, !dbg !998

27:                                               ; preds = %25
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !999
  %29 = load i32, ptr @optind, align 4, !dbg !999, !tbaa !820
  %30 = add nsw i32 %29, 2, !dbg !999
  %31 = sext i32 %30 to i64, !dbg !999
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31, !dbg !999
  %33 = load ptr, ptr %32, align 8, !dbg !999, !tbaa !760
  %34 = tail call ptr @quote(ptr noundef %33) #36, !dbg !999
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %34) #36, !dbg !999
  tail call void @usage(i32 noundef 1) #40, !dbg !1001
  unreachable, !dbg !1001

35:                                               ; preds = %25
  %36 = sext i32 %10 to i64, !dbg !1002
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1002
  %38 = load ptr, ptr %37, align 8, !dbg !1002, !tbaa !760
  %39 = add nsw i32 %10, 1, !dbg !1004
  %40 = sext i32 %39 to i64, !dbg !1005
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40, !dbg !1005
  %42 = load ptr, ptr %41, align 8, !dbg !1005, !tbaa !760
  %43 = tail call i32 @link(ptr noundef %38, ptr noundef %42) #36, !dbg !1006
  %44 = icmp eq i32 %43, 0, !dbg !1007
  br i1 %44, label %60, label %45, !dbg !1008

45:                                               ; preds = %35
  %46 = tail call ptr @__errno_location() #39, !dbg !1009
  %47 = load i32, ptr %46, align 4, !dbg !1009, !tbaa !820
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !1009
  %49 = load i32, ptr @optind, align 4, !dbg !1009, !tbaa !820
  %50 = add nsw i32 %49, 1, !dbg !1009
  %51 = sext i32 %50 to i64, !dbg !1009
  %52 = getelementptr inbounds ptr, ptr %1, i64 %51, !dbg !1009
  %53 = load ptr, ptr %52, align 8, !dbg !1009, !tbaa !760
  %54 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %53) #36, !dbg !1009
  %55 = load i32, ptr @optind, align 4, !dbg !1009, !tbaa !820
  %56 = sext i32 %55 to i64, !dbg !1009
  %57 = getelementptr inbounds ptr, ptr %1, i64 %56, !dbg !1009
  %58 = load ptr, ptr %57, align 8, !dbg !1009, !tbaa !760
  %59 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %58) #36, !dbg !1009
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %47, ptr noundef %48, ptr noundef %54, ptr noundef %59) #36, !dbg !1009
  unreachable, !dbg !1009

60:                                               ; preds = %35
  ret i32 0, !dbg !1010
}

; Function Attrs: nounwind
declare !dbg !1011 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1014 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1015 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1018 i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1020 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1026, metadata !DIExpression()), !dbg !1027
  store ptr %0, ptr @file_name, align 8, !dbg !1028, !tbaa !760
  ret void, !dbg !1029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1030 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1036, !tbaa !1037
  ret void, !dbg !1039
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1040 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1045, !tbaa !760
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1046
  %3 = icmp eq i32 %2, 0, !dbg !1047
  br i1 %3, label %22, label %4, !dbg !1048

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1049, !tbaa !1037, !range !1050, !noundef !805
  %6 = icmp eq i8 %5, 0, !dbg !1049
  br i1 %6, label %11, label %7, !dbg !1051

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1052
  %9 = load i32, ptr %8, align 4, !dbg !1052, !tbaa !820
  %10 = icmp eq i32 %9, 32, !dbg !1053
  br i1 %10, label %22, label %11, !dbg !1054

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #36, !dbg !1055
  call void @llvm.dbg.value(metadata ptr %12, metadata !1042, metadata !DIExpression()), !dbg !1056
  %13 = load ptr, ptr @file_name, align 8, !dbg !1057, !tbaa !760
  %14 = icmp eq ptr %13, null, !dbg !1057
  %15 = tail call ptr @__errno_location() #39, !dbg !1059
  %16 = load i32, ptr %15, align 4, !dbg !1059, !tbaa !820
  br i1 %14, label %19, label %17, !dbg !1060

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1061
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #36, !dbg !1061
  br label %20, !dbg !1061

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #36, !dbg !1062
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1063, !tbaa !820
  tail call void @_exit(i32 noundef %21) #38, !dbg !1064
  unreachable, !dbg !1064

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1065, !tbaa !760
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1067
  %25 = icmp eq i32 %24, 0, !dbg !1068
  br i1 %25, label %28, label %26, !dbg !1069

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1070, !tbaa !820
  tail call void @_exit(i32 noundef %27) #38, !dbg !1071
  unreachable, !dbg !1071

28:                                               ; preds = %22
  ret void, !dbg !1072
}

; Function Attrs: noreturn
declare !dbg !1073 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1074 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1078, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %1, metadata !1079, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata ptr %2, metadata !1080, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1081, metadata !DIExpression()), !dbg !1083
  tail call fastcc void @flush_stdout(), !dbg !1084
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1085, !tbaa !760
  %7 = icmp eq ptr %6, null, !dbg !1085
  br i1 %7, label %9, label %8, !dbg !1087

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1088
  br label %13, !dbg !1088

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1089, !tbaa !760
  %11 = tail call ptr @getprogname() #37, !dbg !1089
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %11) #36, !dbg !1089
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1091, !tbaa.struct !1092
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1091
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1091
  ret void, !dbg !1093
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1094 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 1, metadata !1098, metadata !DIExpression()), !dbg !1103
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1106
  %2 = icmp slt i32 %1, 0, !dbg !1107
  br i1 %2, label %6, label %3, !dbg !1108

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1109, !tbaa !760
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1109
  br label %6, !dbg !1109

6:                                                ; preds = %3, %0
  ret void, !dbg !1110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1111 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1113, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata i32 %1, metadata !1114, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.value(metadata ptr %2, metadata !1115, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1116, metadata !DIExpression()), !dbg !1118
  %7 = load ptr, ptr @stderr, align 8, !dbg !1119, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1120, !noalias !1164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1168
  call void @llvm.dbg.value(metadata ptr %7, metadata !1160, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr %2, metadata !1161, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1162, metadata !DIExpression()), !dbg !1170
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1120, !noalias !1164
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1171, !tbaa !820
  %10 = add i32 %9, 1, !dbg !1171
  store i32 %10, ptr @error_message_count, align 4, !dbg !1171, !tbaa !820
  %11 = icmp eq i32 %1, 0, !dbg !1172
  br i1 %11, label %21, label %12, !dbg !1174

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1175, metadata !DIExpression()), !dbg !1183
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1185
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1179, metadata !DIExpression()), !dbg !1186
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1187
  call void @llvm.dbg.value(metadata ptr %13, metadata !1178, metadata !DIExpression()), !dbg !1183
  %14 = icmp eq ptr %13, null, !dbg !1188
  br i1 %14, label %15, label %17, !dbg !1190

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #36, !dbg !1191
  call void @llvm.dbg.value(metadata ptr %16, metadata !1178, metadata !DIExpression()), !dbg !1183
  br label %17, !dbg !1192

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1183
  call void @llvm.dbg.value(metadata ptr %18, metadata !1178, metadata !DIExpression()), !dbg !1183
  %19 = load ptr, ptr @stderr, align 8, !dbg !1193, !tbaa !760
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %18) #36, !dbg !1193
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1194
  br label %21, !dbg !1195

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1196, !tbaa !760
  call void @llvm.dbg.value(metadata i32 10, metadata !1197, metadata !DIExpression()), !dbg !1204
  call void @llvm.dbg.value(metadata ptr %22, metadata !1203, metadata !DIExpression()), !dbg !1204
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1206
  %24 = load ptr, ptr %23, align 8, !dbg !1206, !tbaa !1207
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1206
  %26 = load ptr, ptr %25, align 8, !dbg !1206, !tbaa !1210
  %27 = icmp ult ptr %24, %26, !dbg !1206
  br i1 %27, label %30, label %28, !dbg !1206, !prof !1211

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1206
  br label %32, !dbg !1206

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1206
  store ptr %31, ptr %23, align 8, !dbg !1206, !tbaa !1207
  store i8 10, ptr %24, align 1, !dbg !1206, !tbaa !829
  br label %32, !dbg !1206

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1212, !tbaa !760
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1212
  %35 = icmp eq i32 %0, 0, !dbg !1213
  br i1 %35, label %37, label %36, !dbg !1215

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1216
  unreachable, !dbg !1216

37:                                               ; preds = %32
  ret void, !dbg !1217
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1218 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1221 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1224 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1227 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1230 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1234 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1238, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata i32 %1, metadata !1239, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr %2, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1241, metadata !DIExpression()), !dbg !1244
  call void @llvm.va_start(ptr nonnull %4), !dbg !1245
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1246
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1246, !tbaa.struct !1092
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1246
  call void @llvm.va_end(ptr nonnull %4), !dbg !1247
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1248
  ret void, !dbg !1248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !343 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !360, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %1, metadata !361, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %2, metadata !362, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %3, metadata !363, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr %4, metadata !364, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %5, metadata !365, metadata !DIExpression()), !dbg !1250
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1251, !tbaa !820
  %9 = icmp eq i32 %8, 0, !dbg !1251
  br i1 %9, label %24, label %10, !dbg !1253

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1254, !tbaa !820
  %12 = icmp eq i32 %11, %3, !dbg !1257
  br i1 %12, label %13, label %23, !dbg !1258

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1259, !tbaa !760
  %15 = icmp eq ptr %14, %2, !dbg !1260
  br i1 %15, label %37, label %16, !dbg !1261

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1262
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1263
  br i1 %19, label %20, label %23, !dbg !1263

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1264
  %22 = icmp eq i32 %21, 0, !dbg !1265
  br i1 %22, label %37, label %23, !dbg !1266

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1267, !tbaa !760
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1268, !tbaa !820
  br label %24, !dbg !1269

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1270
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1271, !tbaa !760
  %26 = icmp eq ptr %25, null, !dbg !1271
  br i1 %26, label %28, label %27, !dbg !1273

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1274
  br label %32, !dbg !1274

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1275, !tbaa !760
  %30 = tail call ptr @getprogname() #37, !dbg !1275
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %30) #36, !dbg !1275
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1277, !tbaa !760
  %34 = icmp eq ptr %2, null, !dbg !1277
  %35 = select i1 %34, ptr @.str.3.33, ptr @.str.2.34, !dbg !1277
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1277
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1278, !tbaa.struct !1092
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1278
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1278
  br label %37, !dbg !1279

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1279
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1280 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1284, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %1, metadata !1285, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %2, metadata !1286, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %3, metadata !1287, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata ptr %4, metadata !1288, metadata !DIExpression()), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1291
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1289, metadata !DIExpression()), !dbg !1292
  call void @llvm.va_start(ptr nonnull %6), !dbg !1293
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1294, !tbaa.struct !1092
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1294
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1294
  call void @llvm.va_end(ptr nonnull %6), !dbg !1295
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1296
  ret void, !dbg !1296
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1297 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1300, !tbaa !760
  ret ptr %1, !dbg !1301
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1302 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1307, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %1, metadata !1308, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %2, metadata !1309, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %3, metadata !1310, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %4, metadata !1311, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata ptr %5, metadata !1312, metadata !DIExpression()), !dbg !1333
  %9 = load i32, ptr @opterr, align 4, !dbg !1334, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %9, metadata !1313, metadata !DIExpression()), !dbg !1333
  store i32 0, ptr @opterr, align 4, !dbg !1335, !tbaa !820
  %10 = icmp eq i32 %0, 2, !dbg !1336
  br i1 %10, label %11, label %16, !dbg !1337

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1338
  call void @llvm.dbg.value(metadata i32 %12, metadata !1314, metadata !DIExpression()), !dbg !1339
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1340

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #36, !dbg !1341
  br label %16, !dbg !1342

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1343
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1317, metadata !DIExpression()), !dbg !1344
  call void @llvm.va_start(ptr nonnull %7), !dbg !1345
  %15 = load ptr, ptr @stdout, align 8, !dbg !1346, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1347, !tbaa.struct !1092
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #36, !dbg !1347
  call void @exit(i32 noundef 0) #38, !dbg !1348
  unreachable, !dbg !1348

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1349, !tbaa !820
  store i32 0, ptr @optind, align 4, !dbg !1350, !tbaa !820
  ret void, !dbg !1351
}

; Function Attrs: nounwind
declare !dbg !1352 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1358 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1362, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %1, metadata !1363, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %2, metadata !1364, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %3, metadata !1365, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %4, metadata !1366, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i1 %5, metadata !1367, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %6, metadata !1368, metadata !DIExpression()), !dbg !1377
  %10 = load i32, ptr @opterr, align 4, !dbg !1378, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %10, metadata !1369, metadata !DIExpression()), !dbg !1377
  store i32 1, ptr @opterr, align 4, !dbg !1379, !tbaa !820
  %11 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1380
  call void @llvm.dbg.value(metadata ptr %11, metadata !1370, metadata !DIExpression()), !dbg !1377
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %12, metadata !1371, metadata !DIExpression()), !dbg !1377
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1382

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1383
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1372, metadata !DIExpression()), !dbg !1384
  call void @llvm.va_start(ptr nonnull %8), !dbg !1385
  %14 = load ptr, ptr @stdout, align 8, !dbg !1386, !tbaa !760
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #36, !dbg !1387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1387, !tbaa.struct !1092
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #36, !dbg !1387
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #36, !dbg !1387
  call void @exit(i32 noundef 0) #38, !dbg !1388
  unreachable, !dbg !1388

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1389, !tbaa !820
  br label %17, !dbg !1390

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #36, !dbg !1391
  br label %19, !dbg !1392

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1392, !tbaa !820
  ret void, !dbg !1393
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1394 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1396, metadata !DIExpression()), !dbg !1399
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1400
  call void @llvm.dbg.value(metadata ptr %2, metadata !1397, metadata !DIExpression()), !dbg !1399
  %3 = icmp eq ptr %2, null, !dbg !1401
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1401
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1401
  call void @llvm.dbg.value(metadata ptr %5, metadata !1398, metadata !DIExpression()), !dbg !1399
  %6 = ptrtoint ptr %5 to i64, !dbg !1402
  %7 = ptrtoint ptr %0 to i64, !dbg !1402
  %8 = sub i64 %6, %7, !dbg !1402
  %9 = icmp sgt i64 %8, 6, !dbg !1404
  br i1 %9, label %10, label %19, !dbg !1405

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1406
  call void @llvm.dbg.value(metadata ptr %11, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1412, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 7, metadata !1413, metadata !DIExpression()), !dbg !1414
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1416
  %13 = icmp eq i32 %12, 0, !dbg !1417
  br i1 %13, label %14, label %19, !dbg !1418

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1399
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #37, !dbg !1419
  %16 = icmp eq i32 %15, 0, !dbg !1422
  %17 = select i1 %16, i64 3, i64 0, !dbg !1423
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1423
  br label %19, !dbg !1423

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1399
  call void @llvm.dbg.value(metadata ptr %21, metadata !1398, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr %20, metadata !1396, metadata !DIExpression()), !dbg !1399
  store ptr %20, ptr @program_name, align 8, !dbg !1424, !tbaa !760
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1425, !tbaa !760
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1426, !tbaa !760
  ret void, !dbg !1427
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1428 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !425 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !432, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !1429
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1430
  call void @llvm.dbg.value(metadata ptr %5, metadata !434, metadata !DIExpression()), !dbg !1429
  %6 = icmp eq ptr %5, %0, !dbg !1431
  br i1 %6, label %7, label %14, !dbg !1433

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1434
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1435
  call void @llvm.dbg.declare(metadata ptr %4, metadata !440, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr %4, metadata !1437, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %4, metadata !1446, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i32 0, metadata !1452, metadata !DIExpression()), !dbg !1454
  call void @llvm.dbg.value(metadata i64 8, metadata !1453, metadata !DIExpression()), !dbg !1454
  store i64 0, ptr %4, align 8, !dbg !1456
  call void @llvm.dbg.value(metadata ptr %3, metadata !435, metadata !DIExpression(DW_OP_deref)), !dbg !1429
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1457
  %9 = icmp eq i64 %8, 2, !dbg !1459
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !435, metadata !DIExpression()), !dbg !1429
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1460
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1429
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1461
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1461
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1429
  ret ptr %15, !dbg !1461
}

; Function Attrs: nounwind
declare !dbg !1462 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1468 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1473, metadata !DIExpression()), !dbg !1476
  %2 = tail call ptr @__errno_location() #39, !dbg !1477
  %3 = load i32, ptr %2, align 4, !dbg !1477, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %3, metadata !1474, metadata !DIExpression()), !dbg !1476
  %4 = icmp eq ptr %0, null, !dbg !1478
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1478
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1479
  call void @llvm.dbg.value(metadata ptr %6, metadata !1475, metadata !DIExpression()), !dbg !1476
  store i32 %3, ptr %2, align 4, !dbg !1480, !tbaa !820
  ret ptr %6, !dbg !1481
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1482 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1488, metadata !DIExpression()), !dbg !1489
  %2 = icmp eq ptr %0, null, !dbg !1490
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1490
  %4 = load i32, ptr %3, align 8, !dbg !1491, !tbaa !1492
  ret i32 %4, !dbg !1494
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1495 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1499, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %1, metadata !1500, metadata !DIExpression()), !dbg !1501
  %3 = icmp eq ptr %0, null, !dbg !1502
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1502
  store i32 %1, ptr %4, align 8, !dbg !1503, !tbaa !1492
  ret void, !dbg !1504
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1505 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1509, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 %1, metadata !1510, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i32 %2, metadata !1511, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata i8 %1, metadata !1512, metadata !DIExpression()), !dbg !1517
  %4 = icmp eq ptr %0, null, !dbg !1518
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1518
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1519
  %7 = lshr i8 %1, 5, !dbg !1520
  %8 = zext i8 %7 to i64, !dbg !1520
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1521
  call void @llvm.dbg.value(metadata ptr %9, metadata !1513, metadata !DIExpression()), !dbg !1517
  %10 = and i8 %1, 31, !dbg !1522
  %11 = zext i8 %10 to i32, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %11, metadata !1515, metadata !DIExpression()), !dbg !1517
  %12 = load i32, ptr %9, align 4, !dbg !1523, !tbaa !820
  %13 = lshr i32 %12, %11, !dbg !1524
  %14 = and i32 %13, 1, !dbg !1525
  call void @llvm.dbg.value(metadata i32 %14, metadata !1516, metadata !DIExpression()), !dbg !1517
  %15 = xor i32 %13, %2, !dbg !1526
  %16 = and i32 %15, 1, !dbg !1526
  %17 = shl nuw i32 %16, %11, !dbg !1527
  %18 = xor i32 %17, %12, !dbg !1528
  store i32 %18, ptr %9, align 4, !dbg !1528, !tbaa !820
  ret i32 %14, !dbg !1529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1534, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %1, metadata !1535, metadata !DIExpression()), !dbg !1537
  %3 = icmp eq ptr %0, null, !dbg !1538
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %4, metadata !1534, metadata !DIExpression()), !dbg !1537
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1541
  %6 = load i32, ptr %5, align 4, !dbg !1541, !tbaa !1542
  call void @llvm.dbg.value(metadata i32 %6, metadata !1536, metadata !DIExpression()), !dbg !1537
  store i32 %1, ptr %5, align 4, !dbg !1543, !tbaa !1542
  ret i32 %6, !dbg !1544
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1545 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !1552
  %4 = icmp eq ptr %0, null, !dbg !1553
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1555
  call void @llvm.dbg.value(metadata ptr %5, metadata !1549, metadata !DIExpression()), !dbg !1552
  store i32 10, ptr %5, align 8, !dbg !1556, !tbaa !1492
  %6 = icmp ne ptr %1, null, !dbg !1557
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1559
  br i1 %8, label %10, label %9, !dbg !1559

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1560
  unreachable, !dbg !1560

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1561
  store ptr %1, ptr %11, align 8, !dbg !1562, !tbaa !1563
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1564
  store ptr %2, ptr %12, align 8, !dbg !1565, !tbaa !1566
  ret void, !dbg !1567
}

; Function Attrs: noreturn nounwind
declare !dbg !1568 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1569 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1573, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %1, metadata !1574, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata ptr %2, metadata !1575, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i64 %3, metadata !1576, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata ptr %4, metadata !1577, metadata !DIExpression()), !dbg !1581
  %6 = icmp eq ptr %4, null, !dbg !1582
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1582
  call void @llvm.dbg.value(metadata ptr %7, metadata !1578, metadata !DIExpression()), !dbg !1581
  %8 = tail call ptr @__errno_location() #39, !dbg !1583
  %9 = load i32, ptr %8, align 4, !dbg !1583, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %9, metadata !1579, metadata !DIExpression()), !dbg !1581
  %10 = load i32, ptr %7, align 8, !dbg !1584, !tbaa !1492
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1585
  %12 = load i32, ptr %11, align 4, !dbg !1585, !tbaa !1542
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1586
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1587
  %15 = load ptr, ptr %14, align 8, !dbg !1587, !tbaa !1563
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1588
  %17 = load ptr, ptr %16, align 8, !dbg !1588, !tbaa !1566
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1589
  call void @llvm.dbg.value(metadata i64 %18, metadata !1580, metadata !DIExpression()), !dbg !1581
  store i32 %9, ptr %8, align 4, !dbg !1590, !tbaa !820
  ret i64 %18, !dbg !1591
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1592 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1598, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %1, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %2, metadata !1600, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %3, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %4, metadata !1602, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %5, metadata !1603, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %6, metadata !1604, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %7, metadata !1605, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %8, metadata !1606, metadata !DIExpression()), !dbg !1660
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1661
  %17 = icmp eq i64 %16, 1, !dbg !1662
  call void @llvm.dbg.value(metadata i1 %17, metadata !1607, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr null, metadata !1610, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1611, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %5, metadata !1613, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1615, metadata !DIExpression()), !dbg !1660
  %18 = and i32 %5, 2, !dbg !1663
  %19 = icmp ne i32 %18, 0, !dbg !1663
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1663

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1664
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1665
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1666
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %34, metadata !1611, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %33, metadata !1610, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %32, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %31, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %30, metadata !1606, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %29, metadata !1605, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %28, metadata !1602, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.label(metadata !1653), !dbg !1667
  call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1660
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
  ], !dbg !1668

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 5, metadata !1602, metadata !DIExpression()), !dbg !1660
  br label %102, !dbg !1669

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 5, metadata !1602, metadata !DIExpression()), !dbg !1660
  br i1 %36, label %102, label %42, !dbg !1669

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1670
  br i1 %43, label %102, label %44, !dbg !1674

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1670, !tbaa !829
  br label %102, !dbg !1670

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !524, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %28, metadata !525, metadata !DIExpression()), !dbg !1675
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #36, !dbg !1679
  call void @llvm.dbg.value(metadata ptr %46, metadata !526, metadata !DIExpression()), !dbg !1675
  %47 = icmp eq ptr %46, @.str.11.66, !dbg !1680
  br i1 %47, label %48, label %57, !dbg !1682

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1683
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %13, metadata !528, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata ptr %13, metadata !1686, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata ptr %13, metadata !1694, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i64 8, metadata !1698, metadata !DIExpression()), !dbg !1699
  store i64 0, ptr %13, align 8, !dbg !1701
  call void @llvm.dbg.value(metadata ptr %12, metadata !527, metadata !DIExpression(DW_OP_deref)), !dbg !1675
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1702
  %50 = icmp eq i64 %49, 3, !dbg !1704
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !527, metadata !DIExpression()), !dbg !1675
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1705
  %54 = icmp eq i32 %28, 9, !dbg !1705
  %55 = select i1 %54, ptr @.str.10.68, ptr @.str.12.69, !dbg !1705
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1706
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1706
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1675
  call void @llvm.dbg.value(metadata ptr %58, metadata !1605, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !524, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %28, metadata !525, metadata !DIExpression()), !dbg !1707
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #36, !dbg !1709
  call void @llvm.dbg.value(metadata ptr %59, metadata !526, metadata !DIExpression()), !dbg !1707
  %60 = icmp eq ptr %59, @.str.12.69, !dbg !1710
  br i1 %60, label %61, label %70, !dbg !1711

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1712
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %11, metadata !528, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %11, metadata !1686, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.value(metadata ptr %11, metadata !1694, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata i64 8, metadata !1698, metadata !DIExpression()), !dbg !1717
  store i64 0, ptr %11, align 8, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %10, metadata !527, metadata !DIExpression(DW_OP_deref)), !dbg !1707
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1720
  %63 = icmp eq i64 %62, 3, !dbg !1721
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !527, metadata !DIExpression()), !dbg !1707
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1722
  %67 = icmp eq i32 %28, 9, !dbg !1722
  %68 = select i1 %67, ptr @.str.10.68, ptr @.str.12.69, !dbg !1722
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1723
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1723
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1606, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %71, metadata !1605, metadata !DIExpression()), !dbg !1660
  br i1 %36, label %88, label %73, !dbg !1724

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1617, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1660
  %74 = load i8, ptr %71, align 1, !dbg !1726, !tbaa !829
  %75 = icmp eq i8 %74, 0, !dbg !1728
  br i1 %75, label %88, label %76, !dbg !1728

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1617, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %79, metadata !1608, metadata !DIExpression()), !dbg !1660
  %80 = icmp ult i64 %79, %39, !dbg !1729
  br i1 %80, label %81, label %83, !dbg !1732

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1729
  store i8 %77, ptr %82, align 1, !dbg !1729, !tbaa !829
  br label %83, !dbg !1729

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %84, metadata !1608, metadata !DIExpression()), !dbg !1660
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %85, metadata !1617, metadata !DIExpression()), !dbg !1725
  %86 = load i8, ptr %85, align 1, !dbg !1726, !tbaa !829
  %87 = icmp eq i8 %86, 0, !dbg !1728
  br i1 %87, label %88, label %76, !dbg !1728, !llvm.loop !1734

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1736
  call void @llvm.dbg.value(metadata i64 %89, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %72, metadata !1610, metadata !DIExpression()), !dbg !1660
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %90, metadata !1611, metadata !DIExpression()), !dbg !1660
  br label %102, !dbg !1738

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1660
  br label %93, !dbg !1739

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1660
  br i1 %36, label %102, label %96, !dbg !1740

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 2, metadata !1602, metadata !DIExpression()), !dbg !1660
  br label %102, !dbg !1741

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 2, metadata !1602, metadata !DIExpression()), !dbg !1660
  br i1 %36, label %102, label %96, !dbg !1741

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1742
  br i1 %98, label %102, label %99, !dbg !1746

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1742, !tbaa !829
  br label %102, !dbg !1742

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1660
  br label %102, !dbg !1747

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1748
  unreachable, !dbg !1748

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1736
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.68, %42 ], [ @.str.10.68, %44 ], [ @.str.10.68, %41 ], [ %33, %27 ], [ @.str.12.69, %96 ], [ @.str.12.69, %99 ], [ @.str.12.69, %95 ], [ @.str.10.68, %40 ], [ @.str.12.69, %93 ], [ @.str.12.69, %92 ], !dbg !1660
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1660
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %108, metadata !1611, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %107, metadata !1610, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %106, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %105, metadata !1606, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata ptr %104, metadata !1605, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %103, metadata !1602, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 0, metadata !1622, metadata !DIExpression()), !dbg !1749
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
  br label %122, !dbg !1750

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1736
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1664
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1751
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %129, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %125, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %123, metadata !1601, metadata !DIExpression()), !dbg !1660
  %131 = icmp eq i64 %123, -1, !dbg !1752
  br i1 %131, label %132, label %136, !dbg !1753

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1754
  %134 = load i8, ptr %133, align 1, !dbg !1754, !tbaa !829
  %135 = icmp eq i8 %134, 0, !dbg !1755
  br i1 %135, label %579, label %138, !dbg !1756

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1757
  br i1 %137, label %579, label %138, !dbg !1756

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1758
  br i1 %114, label %139, label %152, !dbg !1759

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1761
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1762
  br i1 %141, label %142, label %144, !dbg !1762

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %143, metadata !1601, metadata !DIExpression()), !dbg !1660
  br label %144, !dbg !1764

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1764
  call void @llvm.dbg.value(metadata i64 %145, metadata !1601, metadata !DIExpression()), !dbg !1660
  %146 = icmp ugt i64 %140, %145, !dbg !1765
  br i1 %146, label %152, label %147, !dbg !1766

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1767
  call void @llvm.dbg.value(metadata ptr %148, metadata !1768, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata ptr %107, metadata !1771, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i64 %108, metadata !1772, metadata !DIExpression()), !dbg !1773
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1775
  %150 = icmp eq i32 %149, 0, !dbg !1776
  %151 = and i1 %150, %110, !dbg !1777
  br i1 %151, label %630, label %152, !dbg !1777

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %153, metadata !1601, metadata !DIExpression()), !dbg !1660
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1778
  %156 = load i8, ptr %155, align 1, !dbg !1778, !tbaa !829
  call void @llvm.dbg.value(metadata i8 %156, metadata !1629, metadata !DIExpression()), !dbg !1758
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
  ], !dbg !1779

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1780

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1781

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1758
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1785
  br i1 %160, label %177, label %161, !dbg !1785

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1787
  br i1 %162, label %163, label %165, !dbg !1791

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1787
  store i8 39, ptr %164, align 1, !dbg !1787, !tbaa !829
  br label %165, !dbg !1787

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %166, metadata !1608, metadata !DIExpression()), !dbg !1660
  %167 = icmp ult i64 %166, %130, !dbg !1792
  br i1 %167, label %168, label %170, !dbg !1795

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1792
  store i8 36, ptr %169, align 1, !dbg !1792, !tbaa !829
  br label %170, !dbg !1792

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1795
  call void @llvm.dbg.value(metadata i64 %171, metadata !1608, metadata !DIExpression()), !dbg !1660
  %172 = icmp ult i64 %171, %130, !dbg !1796
  br i1 %172, label %173, label %175, !dbg !1799

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1796
  store i8 39, ptr %174, align 1, !dbg !1796, !tbaa !829
  br label %175, !dbg !1796

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %176, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1660
  br label %177, !dbg !1800

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1660
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %178, metadata !1608, metadata !DIExpression()), !dbg !1660
  %180 = icmp ult i64 %178, %130, !dbg !1801
  br i1 %180, label %181, label %183, !dbg !1804

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1801
  store i8 92, ptr %182, align 1, !dbg !1801, !tbaa !829
  br label %183, !dbg !1801

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %184, metadata !1608, metadata !DIExpression()), !dbg !1660
  br i1 %111, label %185, label %482, !dbg !1805

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1807
  %187 = icmp ult i64 %186, %153, !dbg !1808
  br i1 %187, label %188, label %439, !dbg !1809

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1810
  %190 = load i8, ptr %189, align 1, !dbg !1810, !tbaa !829
  %191 = add i8 %190, -48, !dbg !1811
  %192 = icmp ult i8 %191, 10, !dbg !1811
  br i1 %192, label %193, label %439, !dbg !1811

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1812
  br i1 %194, label %195, label %197, !dbg !1816

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1812
  store i8 48, ptr %196, align 1, !dbg !1812, !tbaa !829
  br label %197, !dbg !1812

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %198, metadata !1608, metadata !DIExpression()), !dbg !1660
  %199 = icmp ult i64 %198, %130, !dbg !1817
  br i1 %199, label %200, label %202, !dbg !1820

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1817
  store i8 48, ptr %201, align 1, !dbg !1817, !tbaa !829
  br label %202, !dbg !1817

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %203, metadata !1608, metadata !DIExpression()), !dbg !1660
  br label %439, !dbg !1821

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1822

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1823

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1824

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1826

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1828
  %210 = icmp ult i64 %209, %153, !dbg !1829
  br i1 %210, label %211, label %439, !dbg !1830

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1831
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1832
  %214 = load i8, ptr %213, align 1, !dbg !1832, !tbaa !829
  %215 = icmp eq i8 %214, 63, !dbg !1833
  br i1 %215, label %216, label %439, !dbg !1834

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1835
  %218 = load i8, ptr %217, align 1, !dbg !1835, !tbaa !829
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
  ], !dbg !1836

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1837

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %209, metadata !1622, metadata !DIExpression()), !dbg !1749
  %221 = icmp ult i64 %124, %130, !dbg !1839
  br i1 %221, label %222, label %224, !dbg !1842

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1839
  store i8 63, ptr %223, align 1, !dbg !1839, !tbaa !829
  br label %224, !dbg !1839

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1842
  call void @llvm.dbg.value(metadata i64 %225, metadata !1608, metadata !DIExpression()), !dbg !1660
  %226 = icmp ult i64 %225, %130, !dbg !1843
  br i1 %226, label %227, label %229, !dbg !1846

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1843
  store i8 34, ptr %228, align 1, !dbg !1843, !tbaa !829
  br label %229, !dbg !1843

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %230, metadata !1608, metadata !DIExpression()), !dbg !1660
  %231 = icmp ult i64 %230, %130, !dbg !1847
  br i1 %231, label %232, label %234, !dbg !1850

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1847
  store i8 34, ptr %233, align 1, !dbg !1847, !tbaa !829
  br label %234, !dbg !1847

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %235, metadata !1608, metadata !DIExpression()), !dbg !1660
  %236 = icmp ult i64 %235, %130, !dbg !1851
  br i1 %236, label %237, label %239, !dbg !1854

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1851
  store i8 63, ptr %238, align 1, !dbg !1851, !tbaa !829
  br label %239, !dbg !1851

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1854
  call void @llvm.dbg.value(metadata i64 %240, metadata !1608, metadata !DIExpression()), !dbg !1660
  br label %439, !dbg !1855

241:                                              ; preds = %152
  br label %251, !dbg !1856

242:                                              ; preds = %152
  br label %251, !dbg !1857

243:                                              ; preds = %152
  br label %249, !dbg !1858

244:                                              ; preds = %152
  br label %249, !dbg !1859

245:                                              ; preds = %152
  br label %251, !dbg !1860

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1861

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1862

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1865

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1867
  call void @llvm.dbg.label(metadata !1654), !dbg !1868
  br i1 %119, label %621, label %251, !dbg !1869

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1867
  call void @llvm.dbg.label(metadata !1656), !dbg !1871
  br i1 %109, label %493, label %450, !dbg !1872

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1873

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1874, !tbaa !829
  %256 = icmp eq i8 %255, 0, !dbg !1876
  br i1 %256, label %257, label %439, !dbg !1877

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1878
  br i1 %258, label %259, label %439, !dbg !1880

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1758
  br label %260, !dbg !1881

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1758
  br i1 %116, label %262, label %439, !dbg !1882

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1884

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1758
  br i1 %116, label %264, label %439, !dbg !1885

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1886

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1889
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1891
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1891
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %270, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %269, metadata !1609, metadata !DIExpression()), !dbg !1660
  %271 = icmp ult i64 %124, %270, !dbg !1892
  br i1 %271, label %272, label %274, !dbg !1895

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1892
  store i8 39, ptr %273, align 1, !dbg !1892, !tbaa !829
  br label %274, !dbg !1892

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %275, metadata !1608, metadata !DIExpression()), !dbg !1660
  %276 = icmp ult i64 %275, %270, !dbg !1896
  br i1 %276, label %277, label %279, !dbg !1899

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1896
  store i8 92, ptr %278, align 1, !dbg !1896, !tbaa !829
  br label %279, !dbg !1896

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %280, metadata !1608, metadata !DIExpression()), !dbg !1660
  %281 = icmp ult i64 %280, %270, !dbg !1900
  br i1 %281, label %282, label %284, !dbg !1903

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1900
  store i8 39, ptr %283, align 1, !dbg !1900, !tbaa !829
  br label %284, !dbg !1900

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %285, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1660
  br label %439, !dbg !1904

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1905

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1630, metadata !DIExpression()), !dbg !1906
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1907
  %289 = load ptr, ptr %288, align 8, !dbg !1907, !tbaa !760
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1907
  %292 = load i16, ptr %291, align 2, !dbg !1907, !tbaa !861
  %293 = and i16 %292, 16384, !dbg !1907
  %294 = icmp ne i16 %293, 0, !dbg !1909
  call void @llvm.dbg.value(metadata i1 %294, metadata !1633, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1906
  br label %337, !dbg !1910

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1911
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1634, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata ptr %14, metadata !1686, metadata !DIExpression()), !dbg !1913
  call void @llvm.dbg.value(metadata ptr %14, metadata !1694, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !1915
  call void @llvm.dbg.value(metadata i64 8, metadata !1698, metadata !DIExpression()), !dbg !1915
  store i64 0, ptr %14, align 8, !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 1, metadata !1633, metadata !DIExpression()), !dbg !1906
  %296 = icmp eq i64 %153, -1, !dbg !1918
  br i1 %296, label %297, label %299, !dbg !1920

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %298, metadata !1601, metadata !DIExpression()), !dbg !1660
  br label %299, !dbg !1922

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %300, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1923
  %301 = sub i64 %300, %129, !dbg !1924
  call void @llvm.dbg.value(metadata ptr %15, metadata !1637, metadata !DIExpression(DW_OP_deref)), !dbg !1925
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %302, metadata !1641, metadata !DIExpression()), !dbg !1925
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1927

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1906
  %304 = icmp ugt i64 %300, %129, !dbg !1928
  br i1 %304, label %306, label %332, !dbg !1930

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1633, metadata !DIExpression()), !dbg !1906
  br label %332, !dbg !1931

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1630, metadata !DIExpression()), !dbg !1906
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1933
  %310 = load i8, ptr %309, align 1, !dbg !1933, !tbaa !829
  %311 = icmp eq i8 %310, 0, !dbg !1930
  br i1 %311, label %332, label %312, !dbg !1934

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %313, metadata !1630, metadata !DIExpression()), !dbg !1906
  %314 = add i64 %313, %129, !dbg !1936
  %315 = icmp eq i64 %313, %301, !dbg !1928
  br i1 %315, label %332, label %306, !dbg !1930, !llvm.loop !1937

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1938
  %319 = and i1 %318, %110, !dbg !1938
  call void @llvm.dbg.value(metadata i64 1, metadata !1642, metadata !DIExpression()), !dbg !1939
  br i1 %319, label %320, label %328, !dbg !1938

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1642, metadata !DIExpression()), !dbg !1939
  %322 = add i64 %321, %129, !dbg !1940
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1942
  %324 = load i8, ptr %323, align 1, !dbg !1942, !tbaa !829
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1943

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1944
  call void @llvm.dbg.value(metadata i64 %326, metadata !1642, metadata !DIExpression()), !dbg !1939
  %327 = icmp eq i64 %326, %302, !dbg !1945
  br i1 %327, label %328, label %320, !dbg !1946, !llvm.loop !1947

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1949, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %329, metadata !1637, metadata !DIExpression()), !dbg !1925
  call void @llvm.dbg.value(metadata i32 %329, metadata !1951, metadata !DIExpression()), !dbg !1959
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1961
  %331 = icmp ne i32 %330, 0, !dbg !1962
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %302, metadata !1630, metadata !DIExpression()), !dbg !1906
  br label %332, !dbg !1963

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %333, metadata !1630, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1964
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1965
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1906
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1964
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1965
  call void @llvm.dbg.label(metadata !1659), !dbg !1966
  %336 = select i1 %109, i32 4, i32 2, !dbg !1967
  br label %626, !dbg !1967

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1758
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1969
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1633, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %339, metadata !1630, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i64 %338, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i1 %340, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1758
  %341 = icmp ult i64 %339, 2, !dbg !1970
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1971
  br i1 %343, label %439, label %344, !dbg !1971

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1972
  call void @llvm.dbg.value(metadata i64 %345, metadata !1650, metadata !DIExpression()), !dbg !1973
  br label %346, !dbg !1974

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1660
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1749
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1975
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1758
  call void @llvm.dbg.value(metadata i8 %352, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 %351, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %349, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %347, metadata !1608, metadata !DIExpression()), !dbg !1660
  br i1 %342, label %397, label %353, !dbg !1976

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1981

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1758
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1984
  br i1 %355, label %372, label %356, !dbg !1984

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1986
  br i1 %357, label %358, label %360, !dbg !1990

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1986
  store i8 39, ptr %359, align 1, !dbg !1986, !tbaa !829
  br label %360, !dbg !1986

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %361, metadata !1608, metadata !DIExpression()), !dbg !1660
  %362 = icmp ult i64 %361, %130, !dbg !1991
  br i1 %362, label %363, label %365, !dbg !1994

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1991
  store i8 36, ptr %364, align 1, !dbg !1991, !tbaa !829
  br label %365, !dbg !1991

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %366, metadata !1608, metadata !DIExpression()), !dbg !1660
  %367 = icmp ult i64 %366, %130, !dbg !1995
  br i1 %367, label %368, label %370, !dbg !1998

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1995
  store i8 39, ptr %369, align 1, !dbg !1995, !tbaa !829
  br label %370, !dbg !1995

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %371, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1660
  br label %372, !dbg !1999

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1660
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %373, metadata !1608, metadata !DIExpression()), !dbg !1660
  %375 = icmp ult i64 %373, %130, !dbg !2000
  br i1 %375, label %376, label %378, !dbg !2003

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2000
  store i8 92, ptr %377, align 1, !dbg !2000, !tbaa !829
  br label %378, !dbg !2000

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2003
  call void @llvm.dbg.value(metadata i64 %379, metadata !1608, metadata !DIExpression()), !dbg !1660
  %380 = icmp ult i64 %379, %130, !dbg !2004
  br i1 %380, label %381, label %385, !dbg !2007

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2004
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2004
  store i8 %383, ptr %384, align 1, !dbg !2004, !tbaa !829
  br label %385, !dbg !2004

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2007
  call void @llvm.dbg.value(metadata i64 %386, metadata !1608, metadata !DIExpression()), !dbg !1660
  %387 = icmp ult i64 %386, %130, !dbg !2008
  br i1 %387, label %388, label %393, !dbg !2011

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2008
  %391 = or i8 %390, 48, !dbg !2008
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2008
  store i8 %391, ptr %392, align 1, !dbg !2008, !tbaa !829
  br label %393, !dbg !2008

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %394, metadata !1608, metadata !DIExpression()), !dbg !1660
  %395 = and i8 %352, 7, !dbg !2012
  %396 = or i8 %395, 48, !dbg !2013
  call void @llvm.dbg.value(metadata i8 %396, metadata !1629, metadata !DIExpression()), !dbg !1758
  br label %404, !dbg !2014

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2015

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2016
  br i1 %399, label %400, label %402, !dbg !2021

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2016
  store i8 92, ptr %401, align 1, !dbg !2016, !tbaa !829
  br label %402, !dbg !2016

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %403, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1758
  br label %404, !dbg !2022

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1660
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1758
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1758
  call void @llvm.dbg.value(metadata i8 %409, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 %408, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %405, metadata !1608, metadata !DIExpression()), !dbg !1660
  %410 = add i64 %349, 1, !dbg !2023
  %411 = icmp ugt i64 %345, %410, !dbg !2025
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2026

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2027
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2027
  br i1 %415, label %416, label %427, !dbg !2027

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2030
  br i1 %417, label %418, label %420, !dbg !2034

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2030
  store i8 39, ptr %419, align 1, !dbg !2030, !tbaa !829
  br label %420, !dbg !2030

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2034
  call void @llvm.dbg.value(metadata i64 %421, metadata !1608, metadata !DIExpression()), !dbg !1660
  %422 = icmp ult i64 %421, %130, !dbg !2035
  br i1 %422, label %423, label %425, !dbg !2038

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2035
  store i8 39, ptr %424, align 1, !dbg !2035, !tbaa !829
  br label %425, !dbg !2035

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %426, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1660
  br label %427, !dbg !2039

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2040
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %428, metadata !1608, metadata !DIExpression()), !dbg !1660
  %430 = icmp ult i64 %428, %130, !dbg !2041
  br i1 %430, label %431, label %433, !dbg !2044

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2041
  store i8 %409, ptr %432, align 1, !dbg !2041, !tbaa !829
  br label %433, !dbg !2041

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %434, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %410, metadata !1622, metadata !DIExpression()), !dbg !1749
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2045
  %436 = load i8, ptr %435, align 1, !dbg !2045, !tbaa !829
  call void @llvm.dbg.value(metadata i8 %436, metadata !1629, metadata !DIExpression()), !dbg !1758
  br label %346, !dbg !2046, !llvm.loop !2047

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i1 %340, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1758
  call void @llvm.dbg.value(metadata i8 %408, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %349, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %405, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %338, metadata !1601, metadata !DIExpression()), !dbg !1660
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2050
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1660
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1664
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1749
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1758
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %448, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %445, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %442, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %441, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %440, metadata !1601, metadata !DIExpression()), !dbg !1660
  br i1 %112, label %461, label %450, !dbg !2051

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
  br i1 %121, label %462, label %482, !dbg !2053

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2054

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
  %473 = lshr i8 %464, 5, !dbg !2055
  %474 = zext i8 %473 to i64, !dbg !2055
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2056
  %476 = load i32, ptr %475, align 4, !dbg !2056, !tbaa !820
  %477 = and i8 %464, 31, !dbg !2057
  %478 = zext i8 %477 to i32, !dbg !2057
  %479 = shl nuw i32 1, %478, !dbg !2058
  %480 = and i32 %476, %479, !dbg !2058
  %481 = icmp eq i32 %480, 0, !dbg !2058
  br i1 %481, label %482, label %493, !dbg !2059

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
  br i1 %154, label %493, label %529, !dbg !2060

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2050
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1660
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1664
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2061
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1758
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %501, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %499, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %496, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %495, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %494, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.label(metadata !1657), !dbg !2062
  br i1 %110, label %621, label %503, !dbg !2063

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1758
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2065
  br i1 %504, label %521, label %505, !dbg !2065

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2067
  br i1 %506, label %507, label %509, !dbg !2071

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2067
  store i8 39, ptr %508, align 1, !dbg !2067, !tbaa !829
  br label %509, !dbg !2067

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %510, metadata !1608, metadata !DIExpression()), !dbg !1660
  %511 = icmp ult i64 %510, %502, !dbg !2072
  br i1 %511, label %512, label %514, !dbg !2075

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2072
  store i8 36, ptr %513, align 1, !dbg !2072, !tbaa !829
  br label %514, !dbg !2072

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %515, metadata !1608, metadata !DIExpression()), !dbg !1660
  %516 = icmp ult i64 %515, %502, !dbg !2076
  br i1 %516, label %517, label %519, !dbg !2079

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2076
  store i8 39, ptr %518, align 1, !dbg !2076, !tbaa !829
  br label %519, !dbg !2076

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %520, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1660
  br label %521, !dbg !2080

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1758
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %522, metadata !1608, metadata !DIExpression()), !dbg !1660
  %524 = icmp ult i64 %522, %502, !dbg !2081
  br i1 %524, label %525, label %527, !dbg !2084

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2081
  store i8 92, ptr %526, align 1, !dbg !2081, !tbaa !829
  br label %527, !dbg !2081

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2084
  call void @llvm.dbg.value(metadata i64 %502, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %501, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %499, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %496, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %528, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %494, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.label(metadata !1658), !dbg !2085
  br label %553, !dbg !2086

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2050
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1660
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1664
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2061
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2089
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 %538, metadata !1629, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %535, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %532, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %531, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %530, metadata !1601, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.label(metadata !1658), !dbg !2085
  %540 = xor i1 %534, true, !dbg !2086
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2086
  br i1 %541, label %553, label %542, !dbg !2086

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2090
  br i1 %543, label %544, label %546, !dbg !2094

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2090
  store i8 39, ptr %545, align 1, !dbg !2090, !tbaa !829
  br label %546, !dbg !2090

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2094
  call void @llvm.dbg.value(metadata i64 %547, metadata !1608, metadata !DIExpression()), !dbg !1660
  %548 = icmp ult i64 %547, %539, !dbg !2095
  br i1 %548, label %549, label %551, !dbg !2098

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2095
  store i8 39, ptr %550, align 1, !dbg !2095, !tbaa !829
  br label %551, !dbg !2095

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %552, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1660
  br label %553, !dbg !2099

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1758
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %561, metadata !1608, metadata !DIExpression()), !dbg !1660
  %563 = icmp ult i64 %561, %554, !dbg !2100
  br i1 %563, label %564, label %566, !dbg !2103

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2100
  store i8 %555, ptr %565, align 1, !dbg !2100, !tbaa !829
  br label %566, !dbg !2100

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2103
  call void @llvm.dbg.value(metadata i64 %567, metadata !1608, metadata !DIExpression()), !dbg !1660
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2104
  call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1660
  br label %569, !dbg !2105

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2050
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1660
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1664
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2061
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %576, metadata !1622, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %572, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %571, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %570, metadata !1601, metadata !DIExpression()), !dbg !1660
  %578 = add i64 %576, 1, !dbg !2106
  call void @llvm.dbg.value(metadata i64 %578, metadata !1622, metadata !DIExpression()), !dbg !1749
  br label %122, !dbg !2107, !llvm.loop !2108

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1599, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1615, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %125, metadata !1609, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1608, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %123, metadata !1601, metadata !DIExpression()), !dbg !1660
  %580 = icmp ne i64 %124, 0, !dbg !2110
  %581 = xor i1 %110, true, !dbg !2112
  %582 = or i1 %580, %581, !dbg !2112
  %583 = or i1 %582, %111, !dbg !2112
  br i1 %583, label %584, label %621, !dbg !2112

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2113
  %586 = xor i1 %126, true, !dbg !2113
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2113
  br i1 %587, label %595, label %588, !dbg !2113

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2115

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2117
  br label %636, !dbg !2119

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2120
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2122
  br i1 %594, label %27, label %595, !dbg !2122

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2123
  %598 = or i1 %597, %596, !dbg !2125
  br i1 %598, label %614, label %599, !dbg !2125

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1610, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %124, metadata !1608, metadata !DIExpression()), !dbg !1660
  %600 = load i8, ptr %107, align 1, !dbg !2126, !tbaa !829
  %601 = icmp eq i8 %600, 0, !dbg !2129
  br i1 %601, label %614, label %602, !dbg !2129

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1610, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i64 %605, metadata !1608, metadata !DIExpression()), !dbg !1660
  %606 = icmp ult i64 %605, %130, !dbg !2130
  br i1 %606, label %607, label %609, !dbg !2133

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2130
  store i8 %603, ptr %608, align 1, !dbg !2130, !tbaa !829
  br label %609, !dbg !2130

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2133
  call void @llvm.dbg.value(metadata i64 %610, metadata !1608, metadata !DIExpression()), !dbg !1660
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2134
  call void @llvm.dbg.value(metadata ptr %611, metadata !1610, metadata !DIExpression()), !dbg !1660
  %612 = load i8, ptr %611, align 1, !dbg !2126, !tbaa !829
  %613 = icmp eq i8 %612, 0, !dbg !2129
  br i1 %613, label %614, label %602, !dbg !2129, !llvm.loop !2135

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1736
  call void @llvm.dbg.value(metadata i64 %615, metadata !1608, metadata !DIExpression()), !dbg !1660
  %616 = icmp ult i64 %615, %130, !dbg !2137
  br i1 %616, label %617, label %636, !dbg !2139

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2140
  store i8 0, ptr %618, align 1, !dbg !2141, !tbaa !829
  br label %636, !dbg !2140

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1659), !dbg !1966
  %620 = icmp eq i32 %103, 2, !dbg !2142
  br i1 %620, label %626, label %630, !dbg !1967

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1659), !dbg !1966
  %624 = icmp eq i32 %103, 2, !dbg !2142
  %625 = select i1 %109, i32 4, i32 2, !dbg !1967
  br i1 %624, label %626, label %630, !dbg !1967

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1967

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1602, metadata !DIExpression()), !dbg !1660
  %634 = and i32 %5, -3, !dbg !2143
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2144
  br label %636, !dbg !2145

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2146
}

; Function Attrs: nounwind
declare !dbg !2147 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2150 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2153 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2155 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2159, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata i64 %1, metadata !2160, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %2, metadata !2161, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %0, metadata !2163, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %1, metadata !2168, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr null, metadata !2169, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr %2, metadata !2170, metadata !DIExpression()), !dbg !2176
  %4 = icmp eq ptr %2, null, !dbg !2178
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2178
  call void @llvm.dbg.value(metadata ptr %5, metadata !2171, metadata !DIExpression()), !dbg !2176
  %6 = tail call ptr @__errno_location() #39, !dbg !2179
  %7 = load i32, ptr %6, align 4, !dbg !2179, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %7, metadata !2172, metadata !DIExpression()), !dbg !2176
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2180
  %9 = load i32, ptr %8, align 4, !dbg !2180, !tbaa !1542
  %10 = or i32 %9, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %10, metadata !2173, metadata !DIExpression()), !dbg !2176
  %11 = load i32, ptr %5, align 8, !dbg !2182, !tbaa !1492
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2183
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2184
  %14 = load ptr, ptr %13, align 8, !dbg !2184, !tbaa !1563
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2185
  %16 = load ptr, ptr %15, align 8, !dbg !2185, !tbaa !1566
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2186
  %18 = add i64 %17, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %18, metadata !2174, metadata !DIExpression()), !dbg !2176
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %19, metadata !2175, metadata !DIExpression()), !dbg !2176
  %20 = load i32, ptr %5, align 8, !dbg !2189, !tbaa !1492
  %21 = load ptr, ptr %13, align 8, !dbg !2190, !tbaa !1563
  %22 = load ptr, ptr %15, align 8, !dbg !2191, !tbaa !1566
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2192
  store i32 %7, ptr %6, align 4, !dbg !2193, !tbaa !820
  ret ptr %19, !dbg !2194
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2164 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2163, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata i64 %1, metadata !2168, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata ptr %2, metadata !2169, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata ptr %3, metadata !2170, metadata !DIExpression()), !dbg !2195
  %5 = icmp eq ptr %3, null, !dbg !2196
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2196
  call void @llvm.dbg.value(metadata ptr %6, metadata !2171, metadata !DIExpression()), !dbg !2195
  %7 = tail call ptr @__errno_location() #39, !dbg !2197
  %8 = load i32, ptr %7, align 4, !dbg !2197, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %8, metadata !2172, metadata !DIExpression()), !dbg !2195
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2198
  %10 = load i32, ptr %9, align 4, !dbg !2198, !tbaa !1542
  %11 = icmp eq ptr %2, null, !dbg !2199
  %12 = zext i1 %11 to i32, !dbg !2199
  %13 = or i32 %10, %12, !dbg !2200
  call void @llvm.dbg.value(metadata i32 %13, metadata !2173, metadata !DIExpression()), !dbg !2195
  %14 = load i32, ptr %6, align 8, !dbg !2201, !tbaa !1492
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2202
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2203
  %17 = load ptr, ptr %16, align 8, !dbg !2203, !tbaa !1563
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2204
  %19 = load ptr, ptr %18, align 8, !dbg !2204, !tbaa !1566
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2205
  %21 = add i64 %20, 1, !dbg !2206
  call void @llvm.dbg.value(metadata i64 %21, metadata !2174, metadata !DIExpression()), !dbg !2195
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2207
  call void @llvm.dbg.value(metadata ptr %22, metadata !2175, metadata !DIExpression()), !dbg !2195
  %23 = load i32, ptr %6, align 8, !dbg !2208, !tbaa !1492
  %24 = load ptr, ptr %16, align 8, !dbg !2209, !tbaa !1563
  %25 = load ptr, ptr %18, align 8, !dbg !2210, !tbaa !1566
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2211
  store i32 %8, ptr %7, align 4, !dbg !2212, !tbaa !820
  br i1 %11, label %28, label %27, !dbg !2213

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2214, !tbaa !2216
  br label %28, !dbg !2217

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2218
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2219 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2224, !tbaa !760
  call void @llvm.dbg.value(metadata ptr %1, metadata !2221, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i32 1, metadata !2222, metadata !DIExpression()), !dbg !2226
  %2 = load i32, ptr @nslots, align 4, !tbaa !820
  call void @llvm.dbg.value(metadata i32 1, metadata !2222, metadata !DIExpression()), !dbg !2226
  %3 = icmp sgt i32 %2, 1, !dbg !2227
  br i1 %3, label %4, label %6, !dbg !2229

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2227
  br label %10, !dbg !2229

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2230
  %8 = load ptr, ptr %7, align 8, !dbg !2230, !tbaa !2232
  %9 = icmp eq ptr %8, @slot0, !dbg !2234
  br i1 %9, label %17, label %16, !dbg !2235

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2222, metadata !DIExpression()), !dbg !2226
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2236
  %13 = load ptr, ptr %12, align 8, !dbg !2236, !tbaa !2232
  tail call void @free(ptr noundef %13) #36, !dbg !2237
  %14 = add nuw nsw i64 %11, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %14, metadata !2222, metadata !DIExpression()), !dbg !2226
  %15 = icmp eq i64 %14, %5, !dbg !2227
  br i1 %15, label %6, label %10, !dbg !2229, !llvm.loop !2239

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2241
  store i64 256, ptr @slotvec0, align 8, !dbg !2243, !tbaa !2244
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2245, !tbaa !2232
  br label %17, !dbg !2246

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2247
  br i1 %18, label %20, label %19, !dbg !2249

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2250
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2252, !tbaa !760
  br label %20, !dbg !2253

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2254, !tbaa !820
  ret void, !dbg !2255
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2256 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2259 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata ptr %1, metadata !2262, metadata !DIExpression()), !dbg !2263
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2264
  ret ptr %3, !dbg !2265
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2266 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2270, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata ptr %1, metadata !2271, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i64 %2, metadata !2272, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata ptr %3, metadata !2273, metadata !DIExpression()), !dbg !2286
  %6 = tail call ptr @__errno_location() #39, !dbg !2287
  %7 = load i32, ptr %6, align 4, !dbg !2287, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %7, metadata !2274, metadata !DIExpression()), !dbg !2286
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2288, !tbaa !760
  call void @llvm.dbg.value(metadata ptr %8, metadata !2275, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2276, metadata !DIExpression()), !dbg !2286
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2289
  br i1 %9, label %10, label %11, !dbg !2289

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2291
  unreachable, !dbg !2291

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2292, !tbaa !820
  %13 = icmp sgt i32 %12, %0, !dbg !2293
  br i1 %13, label %32, label %14, !dbg !2294

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2295
  call void @llvm.dbg.value(metadata i1 %15, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2296
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2297
  %16 = sext i32 %12 to i64, !dbg !2298
  call void @llvm.dbg.value(metadata i64 %16, metadata !2280, metadata !DIExpression()), !dbg !2296
  store i64 %16, ptr %5, align 8, !dbg !2299, !tbaa !2216
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2300
  %18 = add nuw nsw i32 %0, 1, !dbg !2301
  %19 = sub i32 %18, %12, !dbg !2302
  %20 = sext i32 %19 to i64, !dbg !2303
  call void @llvm.dbg.value(metadata ptr %5, metadata !2280, metadata !DIExpression(DW_OP_deref)), !dbg !2296
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2304
  call void @llvm.dbg.value(metadata ptr %21, metadata !2275, metadata !DIExpression()), !dbg !2286
  store ptr %21, ptr @slotvec, align 8, !dbg !2305, !tbaa !760
  br i1 %15, label %22, label %23, !dbg !2306

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2307, !tbaa.struct !2309
  br label %23, !dbg !2310

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2311, !tbaa !820
  %25 = sext i32 %24 to i64, !dbg !2312
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2312
  %27 = load i64, ptr %5, align 8, !dbg !2313, !tbaa !2216
  call void @llvm.dbg.value(metadata i64 %27, metadata !2280, metadata !DIExpression()), !dbg !2296
  %28 = sub nsw i64 %27, %25, !dbg !2314
  %29 = shl i64 %28, 4, !dbg !2315
  call void @llvm.dbg.value(metadata ptr %26, metadata !1694, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i32 0, metadata !1697, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata i64 %29, metadata !1698, metadata !DIExpression()), !dbg !2316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2318
  %30 = load i64, ptr %5, align 8, !dbg !2319, !tbaa !2216
  call void @llvm.dbg.value(metadata i64 %30, metadata !2280, metadata !DIExpression()), !dbg !2296
  %31 = trunc i64 %30 to i32, !dbg !2319
  store i32 %31, ptr @nslots, align 4, !dbg !2320, !tbaa !820
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2321
  br label %32, !dbg !2322

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2286
  call void @llvm.dbg.value(metadata ptr %33, metadata !2275, metadata !DIExpression()), !dbg !2286
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2323
  %36 = load i64, ptr %35, align 8, !dbg !2324, !tbaa !2244
  call void @llvm.dbg.value(metadata i64 %36, metadata !2281, metadata !DIExpression()), !dbg !2325
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2326
  %38 = load ptr, ptr %37, align 8, !dbg !2326, !tbaa !2232
  call void @llvm.dbg.value(metadata ptr %38, metadata !2283, metadata !DIExpression()), !dbg !2325
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2327
  %40 = load i32, ptr %39, align 4, !dbg !2327, !tbaa !1542
  %41 = or i32 %40, 1, !dbg !2328
  call void @llvm.dbg.value(metadata i32 %41, metadata !2284, metadata !DIExpression()), !dbg !2325
  %42 = load i32, ptr %3, align 8, !dbg !2329, !tbaa !1492
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2330
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2331
  %45 = load ptr, ptr %44, align 8, !dbg !2331, !tbaa !1563
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2332
  %47 = load ptr, ptr %46, align 8, !dbg !2332, !tbaa !1566
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %48, metadata !2285, metadata !DIExpression()), !dbg !2325
  %49 = icmp ugt i64 %36, %48, !dbg !2334
  br i1 %49, label %60, label %50, !dbg !2336

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2337
  call void @llvm.dbg.value(metadata i64 %51, metadata !2281, metadata !DIExpression()), !dbg !2325
  store i64 %51, ptr %35, align 8, !dbg !2339, !tbaa !2244
  %52 = icmp eq ptr %38, @slot0, !dbg !2340
  br i1 %52, label %54, label %53, !dbg !2342

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2343
  br label %54, !dbg !2343

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2344
  call void @llvm.dbg.value(metadata ptr %55, metadata !2283, metadata !DIExpression()), !dbg !2325
  store ptr %55, ptr %37, align 8, !dbg !2345, !tbaa !2232
  %56 = load i32, ptr %3, align 8, !dbg !2346, !tbaa !1492
  %57 = load ptr, ptr %44, align 8, !dbg !2347, !tbaa !1563
  %58 = load ptr, ptr %46, align 8, !dbg !2348, !tbaa !1566
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2349
  br label %60, !dbg !2350

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2325
  call void @llvm.dbg.value(metadata ptr %61, metadata !2283, metadata !DIExpression()), !dbg !2325
  store i32 %7, ptr %6, align 4, !dbg !2351, !tbaa !820
  ret ptr %61, !dbg !2352
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2353 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata ptr %1, metadata !2358, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.value(metadata i64 %2, metadata !2359, metadata !DIExpression()), !dbg !2360
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2361
  ret ptr %4, !dbg !2362
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2363 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 0, metadata !2261, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr %0, metadata !2262, metadata !DIExpression()), !dbg !2367
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2369
  ret ptr %2, !dbg !2370
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2371 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i64 %1, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 0, metadata !2357, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata ptr %0, metadata !2358, metadata !DIExpression()), !dbg !2378
  call void @llvm.dbg.value(metadata i64 %1, metadata !2359, metadata !DIExpression()), !dbg !2378
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2380
  ret ptr %3, !dbg !2381
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2382 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2386, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata ptr %2, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2389, metadata !DIExpression()), !dbg !2392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2393), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2402, metadata !DIExpression()), !dbg !2405
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2405, !alias.scope !2393
  %5 = icmp eq i32 %1, 10, !dbg !2406
  br i1 %5, label %6, label %7, !dbg !2408

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2409, !noalias !2393
  unreachable, !dbg !2409

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2410, !tbaa !1492, !alias.scope !2393
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2411
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2412
  ret ptr %8, !dbg !2413
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2414 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2418, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %1, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata ptr %2, metadata !2420, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i64 %3, metadata !2421, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2422, metadata !DIExpression()), !dbg !2425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426), !dbg !2429
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2402, metadata !DIExpression()), !dbg !2432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2432, !alias.scope !2426
  %6 = icmp eq i32 %1, 10, !dbg !2433
  br i1 %6, label %7, label %8, !dbg !2434

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2435, !noalias !2426
  unreachable, !dbg !2435

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2436, !tbaa !1492, !alias.scope !2426
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2437
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2438
  ret ptr %9, !dbg !2439
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2440 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr %1, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata i32 0, metadata !2386, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata ptr %1, metadata !2388, metadata !DIExpression()), !dbg !2447
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2389, metadata !DIExpression()), !dbg !2450
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2402, metadata !DIExpression()), !dbg !2457
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2457, !alias.scope !2451
  %4 = icmp eq i32 %0, 10, !dbg !2458
  br i1 %4, label %5, label %6, !dbg !2459

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2460, !noalias !2451
  unreachable, !dbg !2460

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2461, !tbaa !1492, !alias.scope !2451
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2462
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2463
  ret ptr %7, !dbg !2464
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2465 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata ptr %1, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %2, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %0, metadata !2419, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata ptr %1, metadata !2420, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %2, metadata !2421, metadata !DIExpression()), !dbg !2473
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2475
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2422, metadata !DIExpression()), !dbg !2476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2477), !dbg !2480
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2402, metadata !DIExpression()), !dbg !2483
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2483, !alias.scope !2477
  %5 = icmp eq i32 %0, 10, !dbg !2484
  br i1 %5, label %6, label %7, !dbg !2485

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2486, !noalias !2477
  unreachable, !dbg !2486

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2487, !tbaa !1492, !alias.scope !2477
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2488
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2489
  ret ptr %8, !dbg !2490
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2491 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i64 %1, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i8 %2, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2500
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2498, metadata !DIExpression()), !dbg !2501
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2502, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %2, metadata !1510, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 1, metadata !1511, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %2, metadata !1512, metadata !DIExpression()), !dbg !2504
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2506
  %6 = lshr i8 %2, 5, !dbg !2507
  %7 = zext i8 %6 to i64, !dbg !2507
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2508
  call void @llvm.dbg.value(metadata ptr %8, metadata !1513, metadata !DIExpression()), !dbg !2504
  %9 = and i8 %2, 31, !dbg !2509
  %10 = zext i8 %9 to i32, !dbg !2509
  call void @llvm.dbg.value(metadata i32 %10, metadata !1515, metadata !DIExpression()), !dbg !2504
  %11 = load i32, ptr %8, align 4, !dbg !2510, !tbaa !820
  %12 = lshr i32 %11, %10, !dbg !2511
  call void @llvm.dbg.value(metadata i32 %12, metadata !1516, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2504
  %13 = and i32 %12, 1, !dbg !2512
  %14 = xor i32 %13, 1, !dbg !2512
  %15 = shl nuw i32 %14, %10, !dbg !2513
  %16 = xor i32 %15, %11, !dbg !2514
  store i32 %16, ptr %8, align 4, !dbg !2514, !tbaa !820
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2515
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2516
  ret ptr %17, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2518 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2522, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i8 %1, metadata !2523, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i64 -1, metadata !2496, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata i8 %1, metadata !2497, metadata !DIExpression()), !dbg !2525
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2527
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2498, metadata !DIExpression()), !dbg !2528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2529, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %3, metadata !1509, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 %1, metadata !1510, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i32 1, metadata !1511, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 %1, metadata !1512, metadata !DIExpression()), !dbg !2530
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2532
  %5 = lshr i8 %1, 5, !dbg !2533
  %6 = zext i8 %5 to i64, !dbg !2533
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2534
  call void @llvm.dbg.value(metadata ptr %7, metadata !1513, metadata !DIExpression()), !dbg !2530
  %8 = and i8 %1, 31, !dbg !2535
  %9 = zext i8 %8 to i32, !dbg !2535
  call void @llvm.dbg.value(metadata i32 %9, metadata !1515, metadata !DIExpression()), !dbg !2530
  %10 = load i32, ptr %7, align 4, !dbg !2536, !tbaa !820
  %11 = lshr i32 %10, %9, !dbg !2537
  call void @llvm.dbg.value(metadata i32 %11, metadata !1516, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2530
  %12 = and i32 %11, 1, !dbg !2538
  %13 = xor i32 %12, 1, !dbg !2538
  %14 = shl nuw i32 %13, %9, !dbg !2539
  %15 = xor i32 %14, %10, !dbg !2540
  store i32 %15, ptr %7, align 4, !dbg !2540, !tbaa !820
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2541
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2542
  ret ptr %16, !dbg !2543
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2544 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata ptr %0, metadata !2522, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 58, metadata !2523, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i64 -1, metadata !2496, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 58, metadata !2497, metadata !DIExpression()), !dbg !2550
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2552
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2498, metadata !DIExpression()), !dbg !2553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2554, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %2, metadata !1509, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 58, metadata !1510, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 1, metadata !1511, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8 58, metadata !1512, metadata !DIExpression()), !dbg !2555
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2557
  call void @llvm.dbg.value(metadata ptr %3, metadata !1513, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 26, metadata !1515, metadata !DIExpression()), !dbg !2555
  %4 = load i32, ptr %3, align 4, !dbg !2558, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %4, metadata !1516, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2555
  %5 = or i32 %4, 67108864, !dbg !2559
  store i32 %5, ptr %3, align 4, !dbg !2559, !tbaa !820
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2560
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2561
  ret ptr %6, !dbg !2562
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2563 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2565, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i64 %1, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %0, metadata !2495, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i64 %1, metadata !2496, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !2497, metadata !DIExpression()), !dbg !2568
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2570
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2498, metadata !DIExpression()), !dbg !2571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2572, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %3, metadata !1509, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !1510, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 1, metadata !1511, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i8 58, metadata !1512, metadata !DIExpression()), !dbg !2573
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2575
  call void @llvm.dbg.value(metadata ptr %4, metadata !1513, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.value(metadata i32 26, metadata !1515, metadata !DIExpression()), !dbg !2573
  %5 = load i32, ptr %4, align 4, !dbg !2576, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %5, metadata !1516, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2573
  %6 = or i32 %5, 67108864, !dbg !2577
  store i32 %6, ptr %4, align 4, !dbg !2577, !tbaa !820
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2578
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2579
  ret ptr %7, !dbg !2580
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2581 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2402, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2587
  call void @llvm.dbg.value(metadata i32 %0, metadata !2583, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata i32 %1, metadata !2584, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.value(metadata ptr %2, metadata !2585, metadata !DIExpression()), !dbg !2589
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2590
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2586, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !2402, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2592
  %5 = icmp eq i32 %1, 10, !dbg !2593
  br i1 %5, label %6, label %7, !dbg !2594

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2595, !noalias !2596
  unreachable, !dbg !2595

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2402, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2592
  store i32 %1, ptr %4, align 8, !dbg !2599, !tbaa.struct !2503
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2599
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2599
  call void @llvm.dbg.value(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !1510, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 1, metadata !1511, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i8 58, metadata !1512, metadata !DIExpression()), !dbg !2600
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2602
  call void @llvm.dbg.value(metadata ptr %9, metadata !1513, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 26, metadata !1515, metadata !DIExpression()), !dbg !2600
  %10 = load i32, ptr %9, align 4, !dbg !2603, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %10, metadata !1516, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2600
  %11 = or i32 %10, 67108864, !dbg !2604
  store i32 %11, ptr %9, align 4, !dbg !2604, !tbaa !820
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2605
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2606
  ret ptr %12, !dbg !2607
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2608 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2612, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %1, metadata !2613, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %2, metadata !2614, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata ptr %3, metadata !2615, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %1, metadata !2622, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %2, metadata !2623, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %3, metadata !2624, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i64 -1, metadata !2625, metadata !DIExpression()), !dbg !2627
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2629
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2631, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %5, metadata !1549, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %5, metadata !1549, metadata !DIExpression()), !dbg !2632
  store i32 10, ptr %5, align 8, !dbg !2634, !tbaa !1492
  %6 = icmp ne ptr %1, null, !dbg !2635
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2636
  br i1 %8, label %10, label %9, !dbg !2636

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2637
  unreachable, !dbg !2637

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2638
  store ptr %1, ptr %11, align 8, !dbg !2639, !tbaa !1563
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2640
  store ptr %2, ptr %12, align 8, !dbg !2641, !tbaa !1566
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2642
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2643
  ret ptr %13, !dbg !2644
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2618 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %1, metadata !2622, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %2, metadata !2623, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %3, metadata !2624, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 %4, metadata !2625, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2646
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2626, metadata !DIExpression()), !dbg !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2648, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %6, metadata !1549, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %2, metadata !1551, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata ptr %6, metadata !1549, metadata !DIExpression()), !dbg !2649
  store i32 10, ptr %6, align 8, !dbg !2651, !tbaa !1492
  %7 = icmp ne ptr %1, null, !dbg !2652
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2653
  br i1 %9, label %11, label %10, !dbg !2653

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2654
  unreachable, !dbg !2654

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2655
  store ptr %1, ptr %12, align 8, !dbg !2656, !tbaa !1563
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2657
  store ptr %2, ptr %13, align 8, !dbg !2658, !tbaa !1566
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2659
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2660
  ret ptr %14, !dbg !2661
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2662 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %1, metadata !2667, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata ptr %2, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2612, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %0, metadata !2613, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %1, metadata !2614, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata ptr %2, metadata !2615, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %0, metadata !2622, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %1, metadata !2623, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata ptr %2, metadata !2624, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i64 -1, metadata !2625, metadata !DIExpression()), !dbg !2672
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2626, metadata !DIExpression()), !dbg !2675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2676, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %4, metadata !1549, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %1, metadata !1551, metadata !DIExpression()), !dbg !2677
  call void @llvm.dbg.value(metadata ptr %4, metadata !1549, metadata !DIExpression()), !dbg !2677
  store i32 10, ptr %4, align 8, !dbg !2679, !tbaa !1492
  %5 = icmp ne ptr %0, null, !dbg !2680
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2681
  br i1 %7, label %9, label %8, !dbg !2681

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2682
  unreachable, !dbg !2682

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2683
  store ptr %0, ptr %10, align 8, !dbg !2684, !tbaa !1563
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2685
  store ptr %1, ptr %11, align 8, !dbg !2686, !tbaa !1566
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2687
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2688
  ret ptr %12, !dbg !2689
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2690 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2694, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %1, metadata !2695, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %2, metadata !2696, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i64 %3, metadata !2697, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata i32 0, metadata !2617, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %0, metadata !2622, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %1, metadata !2623, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata ptr %2, metadata !2624, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %3, metadata !2625, metadata !DIExpression()), !dbg !2699
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2701
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2626, metadata !DIExpression()), !dbg !2702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2703, !tbaa.struct !2503
  call void @llvm.dbg.value(metadata ptr %5, metadata !1549, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %0, metadata !1550, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %1, metadata !1551, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata ptr %5, metadata !1549, metadata !DIExpression()), !dbg !2704
  store i32 10, ptr %5, align 8, !dbg !2706, !tbaa !1492
  %6 = icmp ne ptr %0, null, !dbg !2707
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2708
  br i1 %8, label %10, label %9, !dbg !2708

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2709
  unreachable, !dbg !2709

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2710
  store ptr %0, ptr %11, align 8, !dbg !2711, !tbaa !1563
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2712
  store ptr %1, ptr %12, align 8, !dbg !2713, !tbaa !1566
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2714
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2715
  ret ptr %13, !dbg !2716
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2717 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata ptr %1, metadata !2722, metadata !DIExpression()), !dbg !2724
  call void @llvm.dbg.value(metadata i64 %2, metadata !2723, metadata !DIExpression()), !dbg !2724
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2725
  ret ptr %4, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2727 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %1, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %0, metadata !2722, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %1, metadata !2723, metadata !DIExpression()), !dbg !2734
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2736
  ret ptr %3, !dbg !2737
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2738 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %1, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i32 %0, metadata !2721, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata ptr %1, metadata !2722, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 -1, metadata !2723, metadata !DIExpression()), !dbg !2745
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2747
  ret ptr %3, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2749 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 0, metadata !2742, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2721, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata ptr %0, metadata !2722, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.value(metadata i64 -1, metadata !2723, metadata !DIExpression()), !dbg !2757
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2759
  ret ptr %2, !dbg !2760
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2761 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2800, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %1, metadata !2801, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %2, metadata !2802, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %3, metadata !2803, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata ptr %4, metadata !2804, metadata !DIExpression()), !dbg !2806
  call void @llvm.dbg.value(metadata i64 %5, metadata !2805, metadata !DIExpression()), !dbg !2806
  %7 = icmp eq ptr %1, null, !dbg !2807
  br i1 %7, label %10, label %8, !dbg !2809

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2810
  br label %12, !dbg !2810

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.77, ptr noundef %2, ptr noundef %3) #36, !dbg !2811
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.3.79, i32 noundef 5) #36, !dbg !2812
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2812
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2813
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.5.81, i32 noundef 5) #36, !dbg !2814
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.82) #36, !dbg !2814
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2815
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
  ], !dbg !2816

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.7.83, i32 noundef 5) #36, !dbg !2817
  %21 = load ptr, ptr %4, align 8, !dbg !2817, !tbaa !760
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2817
  br label %147, !dbg !2819

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.8.84, i32 noundef 5) #36, !dbg !2820
  %25 = load ptr, ptr %4, align 8, !dbg !2820, !tbaa !760
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2820
  %27 = load ptr, ptr %26, align 8, !dbg !2820, !tbaa !760
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2820
  br label %147, !dbg !2821

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.9.85, i32 noundef 5) #36, !dbg !2822
  %31 = load ptr, ptr %4, align 8, !dbg !2822, !tbaa !760
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2822
  %33 = load ptr, ptr %32, align 8, !dbg !2822, !tbaa !760
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2822
  %35 = load ptr, ptr %34, align 8, !dbg !2822, !tbaa !760
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2822
  br label %147, !dbg !2823

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.10.86, i32 noundef 5) #36, !dbg !2824
  %39 = load ptr, ptr %4, align 8, !dbg !2824, !tbaa !760
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2824
  %41 = load ptr, ptr %40, align 8, !dbg !2824, !tbaa !760
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2824
  %43 = load ptr, ptr %42, align 8, !dbg !2824, !tbaa !760
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2824
  %45 = load ptr, ptr %44, align 8, !dbg !2824, !tbaa !760
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2824
  br label %147, !dbg !2825

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.11.87, i32 noundef 5) #36, !dbg !2826
  %49 = load ptr, ptr %4, align 8, !dbg !2826, !tbaa !760
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2826
  %51 = load ptr, ptr %50, align 8, !dbg !2826, !tbaa !760
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2826
  %53 = load ptr, ptr %52, align 8, !dbg !2826, !tbaa !760
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2826
  %55 = load ptr, ptr %54, align 8, !dbg !2826, !tbaa !760
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2826
  %57 = load ptr, ptr %56, align 8, !dbg !2826, !tbaa !760
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2826
  br label %147, !dbg !2827

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.12.88, i32 noundef 5) #36, !dbg !2828
  %61 = load ptr, ptr %4, align 8, !dbg !2828, !tbaa !760
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2828
  %63 = load ptr, ptr %62, align 8, !dbg !2828, !tbaa !760
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2828
  %65 = load ptr, ptr %64, align 8, !dbg !2828, !tbaa !760
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2828
  %67 = load ptr, ptr %66, align 8, !dbg !2828, !tbaa !760
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2828
  %69 = load ptr, ptr %68, align 8, !dbg !2828, !tbaa !760
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2828
  %71 = load ptr, ptr %70, align 8, !dbg !2828, !tbaa !760
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2828
  br label %147, !dbg !2829

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.13.89, i32 noundef 5) #36, !dbg !2830
  %75 = load ptr, ptr %4, align 8, !dbg !2830, !tbaa !760
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2830
  %77 = load ptr, ptr %76, align 8, !dbg !2830, !tbaa !760
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2830
  %79 = load ptr, ptr %78, align 8, !dbg !2830, !tbaa !760
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2830
  %81 = load ptr, ptr %80, align 8, !dbg !2830, !tbaa !760
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2830
  %83 = load ptr, ptr %82, align 8, !dbg !2830, !tbaa !760
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2830
  %85 = load ptr, ptr %84, align 8, !dbg !2830, !tbaa !760
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2830
  %87 = load ptr, ptr %86, align 8, !dbg !2830, !tbaa !760
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2830
  br label %147, !dbg !2831

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.14.90, i32 noundef 5) #36, !dbg !2832
  %91 = load ptr, ptr %4, align 8, !dbg !2832, !tbaa !760
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2832
  %93 = load ptr, ptr %92, align 8, !dbg !2832, !tbaa !760
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2832
  %95 = load ptr, ptr %94, align 8, !dbg !2832, !tbaa !760
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2832
  %97 = load ptr, ptr %96, align 8, !dbg !2832, !tbaa !760
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2832
  %99 = load ptr, ptr %98, align 8, !dbg !2832, !tbaa !760
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2832
  %101 = load ptr, ptr %100, align 8, !dbg !2832, !tbaa !760
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2832
  %103 = load ptr, ptr %102, align 8, !dbg !2832, !tbaa !760
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2832
  %105 = load ptr, ptr %104, align 8, !dbg !2832, !tbaa !760
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2832
  br label %147, !dbg !2833

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.15.91, i32 noundef 5) #36, !dbg !2834
  %109 = load ptr, ptr %4, align 8, !dbg !2834, !tbaa !760
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2834
  %111 = load ptr, ptr %110, align 8, !dbg !2834, !tbaa !760
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2834
  %113 = load ptr, ptr %112, align 8, !dbg !2834, !tbaa !760
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2834
  %115 = load ptr, ptr %114, align 8, !dbg !2834, !tbaa !760
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2834
  %117 = load ptr, ptr %116, align 8, !dbg !2834, !tbaa !760
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2834
  %119 = load ptr, ptr %118, align 8, !dbg !2834, !tbaa !760
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2834
  %121 = load ptr, ptr %120, align 8, !dbg !2834, !tbaa !760
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2834
  %123 = load ptr, ptr %122, align 8, !dbg !2834, !tbaa !760
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2834
  %125 = load ptr, ptr %124, align 8, !dbg !2834, !tbaa !760
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2834
  br label %147, !dbg !2835

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.16.92, i32 noundef 5) #36, !dbg !2836
  %129 = load ptr, ptr %4, align 8, !dbg !2836, !tbaa !760
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2836
  %131 = load ptr, ptr %130, align 8, !dbg !2836, !tbaa !760
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2836
  %133 = load ptr, ptr %132, align 8, !dbg !2836, !tbaa !760
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2836
  %135 = load ptr, ptr %134, align 8, !dbg !2836, !tbaa !760
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2836
  %137 = load ptr, ptr %136, align 8, !dbg !2836, !tbaa !760
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2836
  %139 = load ptr, ptr %138, align 8, !dbg !2836, !tbaa !760
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2836
  %141 = load ptr, ptr %140, align 8, !dbg !2836, !tbaa !760
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2836
  %143 = load ptr, ptr %142, align 8, !dbg !2836, !tbaa !760
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2836
  %145 = load ptr, ptr %144, align 8, !dbg !2836, !tbaa !760
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2836
  br label %147, !dbg !2837

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2838
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2843, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %1, metadata !2844, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %2, metadata !2845, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %3, metadata !2846, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata ptr %4, metadata !2847, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.value(metadata i64 0, metadata !2848, metadata !DIExpression()), !dbg !2849
  br label %6, !dbg !2850

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2852
  call void @llvm.dbg.value(metadata i64 %7, metadata !2848, metadata !DIExpression()), !dbg !2849
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2853
  %9 = load ptr, ptr %8, align 8, !dbg !2853, !tbaa !760
  %10 = icmp eq ptr %9, null, !dbg !2855
  %11 = add i64 %7, 1, !dbg !2856
  call void @llvm.dbg.value(metadata i64 %11, metadata !2848, metadata !DIExpression()), !dbg !2849
  br i1 %10, label %12, label %6, !dbg !2855, !llvm.loop !2857

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2859
  ret void, !dbg !2860
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2861 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2876, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %1, metadata !2877, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %2, metadata !2878, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata ptr %3, metadata !2879, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2880, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2882, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2884
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2881, metadata !DIExpression()), !dbg !2884
  %10 = icmp sgt i32 %9, -1, !dbg !2888
  br i1 %10, label %18, label %11, !dbg !2888

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2888
  store i32 %12, ptr %7, align 8, !dbg !2888
  %13 = icmp ult i32 %9, -7, !dbg !2888
  br i1 %13, label %14, label %18, !dbg !2888

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2888
  %16 = sext i32 %9 to i64, !dbg !2888
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2888
  br label %22, !dbg !2888

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2888
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2888
  store ptr %21, ptr %4, align 8, !dbg !2888
  br label %22, !dbg !2888

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2888
  %25 = load ptr, ptr %24, align 8, !dbg !2888
  store ptr %25, ptr %6, align 8, !dbg !2891, !tbaa !760
  %26 = icmp eq ptr %25, null, !dbg !2892
  br i1 %26, label %197, label %27, !dbg !2893

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 1, metadata !2881, metadata !DIExpression()), !dbg !2884
  %28 = icmp sgt i32 %23, -1, !dbg !2888
  br i1 %28, label %36, label %29, !dbg !2888

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2888
  store i32 %30, ptr %7, align 8, !dbg !2888
  %31 = icmp ult i32 %23, -7, !dbg !2888
  br i1 %31, label %32, label %36, !dbg !2888

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2888
  %34 = sext i32 %23 to i64, !dbg !2888
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2888
  br label %40, !dbg !2888

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2888
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2888
  store ptr %39, ptr %4, align 8, !dbg !2888
  br label %40, !dbg !2888

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2888
  %43 = load ptr, ptr %42, align 8, !dbg !2888
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2894
  store ptr %43, ptr %44, align 8, !dbg !2891, !tbaa !760
  %45 = icmp eq ptr %43, null, !dbg !2892
  br i1 %45, label %197, label %46, !dbg !2893

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 2, metadata !2881, metadata !DIExpression()), !dbg !2884
  %47 = icmp sgt i32 %41, -1, !dbg !2888
  br i1 %47, label %55, label %48, !dbg !2888

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2888
  store i32 %49, ptr %7, align 8, !dbg !2888
  %50 = icmp ult i32 %41, -7, !dbg !2888
  br i1 %50, label %51, label %55, !dbg !2888

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2888
  %53 = sext i32 %41 to i64, !dbg !2888
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2888
  br label %59, !dbg !2888

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2888
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2888
  store ptr %58, ptr %4, align 8, !dbg !2888
  br label %59, !dbg !2888

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2888
  %62 = load ptr, ptr %61, align 8, !dbg !2888
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2894
  store ptr %62, ptr %63, align 8, !dbg !2891, !tbaa !760
  %64 = icmp eq ptr %62, null, !dbg !2892
  br i1 %64, label %197, label %65, !dbg !2893

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 3, metadata !2881, metadata !DIExpression()), !dbg !2884
  %66 = icmp sgt i32 %60, -1, !dbg !2888
  br i1 %66, label %74, label %67, !dbg !2888

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2888
  store i32 %68, ptr %7, align 8, !dbg !2888
  %69 = icmp ult i32 %60, -7, !dbg !2888
  br i1 %69, label %70, label %74, !dbg !2888

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2888
  %72 = sext i32 %60 to i64, !dbg !2888
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2888
  br label %78, !dbg !2888

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2888
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2888
  store ptr %77, ptr %4, align 8, !dbg !2888
  br label %78, !dbg !2888

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2888
  %81 = load ptr, ptr %80, align 8, !dbg !2888
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2894
  store ptr %81, ptr %82, align 8, !dbg !2891, !tbaa !760
  %83 = icmp eq ptr %81, null, !dbg !2892
  br i1 %83, label %197, label %84, !dbg !2893

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 4, metadata !2881, metadata !DIExpression()), !dbg !2884
  %85 = icmp sgt i32 %79, -1, !dbg !2888
  br i1 %85, label %93, label %86, !dbg !2888

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2888
  store i32 %87, ptr %7, align 8, !dbg !2888
  %88 = icmp ult i32 %79, -7, !dbg !2888
  br i1 %88, label %89, label %93, !dbg !2888

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2888
  %91 = sext i32 %79 to i64, !dbg !2888
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2888
  br label %97, !dbg !2888

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2888
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2888
  store ptr %96, ptr %4, align 8, !dbg !2888
  br label %97, !dbg !2888

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2888
  %100 = load ptr, ptr %99, align 8, !dbg !2888
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2894
  store ptr %100, ptr %101, align 8, !dbg !2891, !tbaa !760
  %102 = icmp eq ptr %100, null, !dbg !2892
  br i1 %102, label %197, label %103, !dbg !2893

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 5, metadata !2881, metadata !DIExpression()), !dbg !2884
  %104 = icmp sgt i32 %98, -1, !dbg !2888
  br i1 %104, label %112, label %105, !dbg !2888

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2888
  store i32 %106, ptr %7, align 8, !dbg !2888
  %107 = icmp ult i32 %98, -7, !dbg !2888
  br i1 %107, label %108, label %112, !dbg !2888

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2888
  %110 = sext i32 %98 to i64, !dbg !2888
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2888
  br label %116, !dbg !2888

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2888
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2888
  store ptr %115, ptr %4, align 8, !dbg !2888
  br label %116, !dbg !2888

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2888
  %119 = load ptr, ptr %118, align 8, !dbg !2888
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2894
  store ptr %119, ptr %120, align 8, !dbg !2891, !tbaa !760
  %121 = icmp eq ptr %119, null, !dbg !2892
  br i1 %121, label %197, label %122, !dbg !2893

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 6, metadata !2881, metadata !DIExpression()), !dbg !2884
  %123 = icmp sgt i32 %117, -1, !dbg !2888
  br i1 %123, label %131, label %124, !dbg !2888

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2888
  store i32 %125, ptr %7, align 8, !dbg !2888
  %126 = icmp ult i32 %117, -7, !dbg !2888
  br i1 %126, label %127, label %131, !dbg !2888

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2888
  %129 = sext i32 %117 to i64, !dbg !2888
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2888
  br label %135, !dbg !2888

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2888
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2888
  store ptr %134, ptr %4, align 8, !dbg !2888
  br label %135, !dbg !2888

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2888
  %138 = load ptr, ptr %137, align 8, !dbg !2888
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2894
  store ptr %138, ptr %139, align 8, !dbg !2891, !tbaa !760
  %140 = icmp eq ptr %138, null, !dbg !2892
  br i1 %140, label %197, label %141, !dbg !2893

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 7, metadata !2881, metadata !DIExpression()), !dbg !2884
  %142 = icmp sgt i32 %136, -1, !dbg !2888
  br i1 %142, label %150, label %143, !dbg !2888

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2888
  store i32 %144, ptr %7, align 8, !dbg !2888
  %145 = icmp ult i32 %136, -7, !dbg !2888
  br i1 %145, label %146, label %150, !dbg !2888

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2888
  %148 = sext i32 %136 to i64, !dbg !2888
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2888
  br label %154, !dbg !2888

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2888
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2888
  store ptr %153, ptr %4, align 8, !dbg !2888
  br label %154, !dbg !2888

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2888
  %157 = load ptr, ptr %156, align 8, !dbg !2888
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2894
  store ptr %157, ptr %158, align 8, !dbg !2891, !tbaa !760
  %159 = icmp eq ptr %157, null, !dbg !2892
  br i1 %159, label %197, label %160, !dbg !2893

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 8, metadata !2881, metadata !DIExpression()), !dbg !2884
  %161 = icmp sgt i32 %155, -1, !dbg !2888
  br i1 %161, label %169, label %162, !dbg !2888

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2888
  store i32 %163, ptr %7, align 8, !dbg !2888
  %164 = icmp ult i32 %155, -7, !dbg !2888
  br i1 %164, label %165, label %169, !dbg !2888

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2888
  %167 = sext i32 %155 to i64, !dbg !2888
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2888
  br label %173, !dbg !2888

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2888
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2888
  store ptr %172, ptr %4, align 8, !dbg !2888
  br label %173, !dbg !2888

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2888
  %176 = load ptr, ptr %175, align 8, !dbg !2888
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2894
  store ptr %176, ptr %177, align 8, !dbg !2891, !tbaa !760
  %178 = icmp eq ptr %176, null, !dbg !2892
  br i1 %178, label %197, label %179, !dbg !2893

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 9, metadata !2881, metadata !DIExpression()), !dbg !2884
  %180 = icmp sgt i32 %174, -1, !dbg !2888
  br i1 %180, label %188, label %181, !dbg !2888

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2888
  store i32 %182, ptr %7, align 8, !dbg !2888
  %183 = icmp ult i32 %174, -7, !dbg !2888
  br i1 %183, label %184, label %188, !dbg !2888

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2888
  %186 = sext i32 %174 to i64, !dbg !2888
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2888
  br label %191, !dbg !2888

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2888
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2888
  store ptr %190, ptr %4, align 8, !dbg !2888
  br label %191, !dbg !2888

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2888
  %193 = load ptr, ptr %192, align 8, !dbg !2888
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2894
  store ptr %193, ptr %194, align 8, !dbg !2891, !tbaa !760
  %195 = icmp eq ptr %193, null, !dbg !2892
  %196 = select i1 %195, i64 9, i64 10, !dbg !2893
  br label %197, !dbg !2893

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2895
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2896
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2897
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2898 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2902, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %1, metadata !2903, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %2, metadata !2904, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata ptr %3, metadata !2905, metadata !DIExpression()), !dbg !2907
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2908
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2906, metadata !DIExpression()), !dbg !2909
  call void @llvm.va_start(ptr nonnull %5), !dbg !2910
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2911, !tbaa.struct !1092
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2911
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2911
  call void @llvm.va_end(ptr nonnull %5), !dbg !2912
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2913
  ret void, !dbg !2913
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2914 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2915, !tbaa !760
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %1), !dbg !2915
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.17.97, i32 noundef 5) #36, !dbg !2916
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.98) #36, !dbg !2916
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.19.99, i32 noundef 5) #36, !dbg !2917
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #36, !dbg !2917
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.22.100, i32 noundef 5) #36, !dbg !2918
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2918
  ret void, !dbg !2919
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2920 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %1, metadata !2926, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i64 %2, metadata !2927, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2934
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2936
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !2942
  %5 = icmp eq ptr %4, null, !dbg !2944
  br i1 %5, label %6, label %7, !dbg !2946

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2947
  unreachable, !dbg !2947

7:                                                ; preds = %3
  ret ptr %4, !dbg !2948
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %1, metadata !2932, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !2949
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2950
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !2951
  %5 = icmp eq ptr %4, null, !dbg !2953
  br i1 %5, label %6, label %7, !dbg !2954

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2955
  unreachable, !dbg !2955

7:                                                ; preds = %3
  ret ptr %4, !dbg !2956
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2957 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2962
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2963
  call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !2964
  %3 = icmp eq ptr %2, null, !dbg !2966
  br i1 %3, label %4, label %5, !dbg !2967

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2968
  unreachable, !dbg !2968

5:                                                ; preds = %1
  ret ptr %2, !dbg !2969
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2970 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()), !dbg !2981
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !2984
  %3 = icmp eq ptr %2, null, !dbg !2986
  br i1 %3, label %4, label %5, !dbg !2987

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2988
  unreachable, !dbg !2988

5:                                                ; preds = %1
  ret ptr %2, !dbg !2989
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2990 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %0, metadata !2961, metadata !DIExpression()), !dbg !2996
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !2999
  %3 = icmp eq ptr %2, null, !dbg !3001
  br i1 %3, label %4, label %5, !dbg !3002

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3003
  unreachable, !dbg !3003

5:                                                ; preds = %1
  ret ptr %2, !dbg !3004
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3005 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3017
  %3 = icmp eq i64 %1, 0, !dbg !3019
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3019
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %5, metadata !2937, metadata !DIExpression()), !dbg !3021
  %6 = icmp eq ptr %5, null, !dbg !3023
  br i1 %6, label %7, label %8, !dbg !3024

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3025
  unreachable, !dbg !3025

8:                                                ; preds = %2
  ret ptr %5, !dbg !3026
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3027 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3028 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata ptr %0, metadata !3035, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.value(metadata i64 %1, metadata !3016, metadata !DIExpression()), !dbg !3041
  %3 = icmp eq i64 %1, 0, !dbg !3043
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3043
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3044
  call void @llvm.dbg.value(metadata ptr %5, metadata !2937, metadata !DIExpression()), !dbg !3045
  %6 = icmp eq ptr %5, null, !dbg !3047
  br i1 %6, label %7, label %8, !dbg !3048

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3049
  unreachable, !dbg !3049

8:                                                ; preds = %2
  ret ptr %5, !dbg !3050
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3051 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3055, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %1, metadata !3056, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i64 %2, metadata !3057, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %2, metadata !3063, metadata !DIExpression()), !dbg !3064
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3066
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !3067
  %5 = icmp eq ptr %4, null, !dbg !3069
  br i1 %5, label %6, label %7, !dbg !3070

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3071
  unreachable, !dbg !3071

7:                                                ; preds = %3
  ret ptr %4, !dbg !3072
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3073 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3077, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i64 %1, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr null, metadata !2929, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %0, metadata !2932, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !2933, metadata !DIExpression()), !dbg !3080
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3082
  call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !3083
  %4 = icmp eq ptr %3, null, !dbg !3085
  br i1 %4, label %5, label %6, !dbg !3086

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3087
  unreachable, !dbg !3087

6:                                                ; preds = %2
  ret ptr %3, !dbg !3088
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3089 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata ptr null, metadata !3055, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %0, metadata !3056, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3057, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.value(metadata ptr null, metadata !3059, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %0, metadata !3062, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3098
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3100
  call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !3101
  %4 = icmp eq ptr %3, null, !dbg !3103
  br i1 %4, label %5, label %6, !dbg !3104

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3105
  unreachable, !dbg !3105

6:                                                ; preds = %2
  ret ptr %3, !dbg !3106
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3107 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3111, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %1, metadata !3112, metadata !DIExpression()), !dbg !3113
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %1, metadata !698, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 1, metadata !699, metadata !DIExpression()), !dbg !3114
  %3 = load i64, ptr %1, align 8, !dbg !3116, !tbaa !2216
  call void @llvm.dbg.value(metadata i64 %3, metadata !700, metadata !DIExpression()), !dbg !3114
  %4 = icmp eq ptr %0, null, !dbg !3117
  br i1 %4, label %5, label %8, !dbg !3119

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3120
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3123
  br label %15, !dbg !3123

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3124
  %10 = add nuw i64 %9, 1, !dbg !3124
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3124
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3124
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %13, metadata !700, metadata !DIExpression()), !dbg !3114
  br i1 %12, label %14, label %15, !dbg !3127

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3128
  unreachable, !dbg !3128

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3114
  call void @llvm.dbg.value(metadata i64 %16, metadata !700, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 %16, metadata !2932, metadata !DIExpression()), !dbg !3129
  call void @llvm.dbg.value(metadata i64 1, metadata !2933, metadata !DIExpression()), !dbg !3129
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3131
  call void @llvm.dbg.value(metadata ptr %17, metadata !2937, metadata !DIExpression()), !dbg !3132
  %18 = icmp eq ptr %17, null, !dbg !3134
  br i1 %18, label %19, label %20, !dbg !3135

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3136
  unreachable, !dbg !3136

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !697, metadata !DIExpression()), !dbg !3114
  store i64 %16, ptr %1, align 8, !dbg !3137, !tbaa !2216
  ret ptr %17, !dbg !3138
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %1, metadata !698, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %2, metadata !699, metadata !DIExpression()), !dbg !3139
  %4 = load i64, ptr %1, align 8, !dbg !3140, !tbaa !2216
  call void @llvm.dbg.value(metadata i64 %4, metadata !700, metadata !DIExpression()), !dbg !3139
  %5 = icmp eq ptr %0, null, !dbg !3141
  br i1 %5, label %6, label %13, !dbg !3142

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3143
  br i1 %7, label %8, label %20, !dbg !3144

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3145
  call void @llvm.dbg.value(metadata i64 %9, metadata !700, metadata !DIExpression()), !dbg !3139
  %10 = icmp ugt i64 %2, 128, !dbg !3147
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %12, metadata !700, metadata !DIExpression()), !dbg !3139
  br label %20, !dbg !3149

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3150
  %15 = add nuw i64 %14, 1, !dbg !3150
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3150
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3150
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %18, metadata !700, metadata !DIExpression()), !dbg !3139
  br i1 %17, label %19, label %20, !dbg !3151

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3152
  unreachable, !dbg !3152

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3139
  call void @llvm.dbg.value(metadata i64 %21, metadata !700, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr %0, metadata !2929, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %21, metadata !2932, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %2, metadata !2933, metadata !DIExpression()), !dbg !3153
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3155
  call void @llvm.dbg.value(metadata ptr %22, metadata !2937, metadata !DIExpression()), !dbg !3156
  %23 = icmp eq ptr %22, null, !dbg !3158
  br i1 %23, label %24, label %25, !dbg !3159

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3160
  unreachable, !dbg !3160

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !697, metadata !DIExpression()), !dbg !3139
  store i64 %21, ptr %1, align 8, !dbg !3161, !tbaa !2216
  ret ptr %22, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !704 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !712, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %1, metadata !713, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %2, metadata !714, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %3, metadata !715, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %4, metadata !716, metadata !DIExpression()), !dbg !3163
  %6 = load i64, ptr %1, align 8, !dbg !3164, !tbaa !2216
  call void @llvm.dbg.value(metadata i64 %6, metadata !717, metadata !DIExpression()), !dbg !3163
  %7 = ashr i64 %6, 1, !dbg !3165
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3165
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3165
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %10, metadata !718, metadata !DIExpression()), !dbg !3163
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %11, metadata !718, metadata !DIExpression()), !dbg !3163
  %12 = icmp sgt i64 %3, -1, !dbg !3168
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3170
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %15, metadata !718, metadata !DIExpression()), !dbg !3163
  %16 = icmp slt i64 %4, 0, !dbg !3171
  br i1 %16, label %17, label %30, !dbg !3171

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3171
  br i1 %18, label %19, label %24, !dbg !3171

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3171
  %21 = udiv i64 9223372036854775807, %20, !dbg !3171
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3171
  br i1 %23, label %46, label %43, !dbg !3171

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3171
  br i1 %25, label %43, label %26, !dbg !3171

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3171
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3171
  %29 = icmp ult i64 %28, %15, !dbg !3171
  br i1 %29, label %46, label %43, !dbg !3171

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3171
  br i1 %31, label %43, label %32, !dbg !3171

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3171
  br i1 %33, label %34, label %40, !dbg !3171

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3171
  br i1 %35, label %43, label %36, !dbg !3171

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3171
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3171
  %39 = icmp ult i64 %38, %4, !dbg !3171
  br i1 %39, label %46, label %43, !dbg !3171

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3171
  br i1 %42, label %46, label %43, !dbg !3171

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !719, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3163
  %44 = mul i64 %15, %4, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %44, metadata !719, metadata !DIExpression()), !dbg !3163
  %45 = icmp slt i64 %44, 128, !dbg !3171
  br i1 %45, label %46, label %52, !dbg !3171

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !720, metadata !DIExpression()), !dbg !3163
  %48 = sdiv i64 %47, %4, !dbg !3172
  call void @llvm.dbg.value(metadata i64 %48, metadata !718, metadata !DIExpression()), !dbg !3163
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %51, metadata !719, metadata !DIExpression()), !dbg !3163
  br label %52, !dbg !3176

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3163
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3163
  call void @llvm.dbg.value(metadata i64 %54, metadata !719, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %53, metadata !718, metadata !DIExpression()), !dbg !3163
  %55 = icmp eq ptr %0, null, !dbg !3177
  br i1 %55, label %56, label %57, !dbg !3179

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3180, !tbaa !2216
  br label %57, !dbg !3181

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3182
  %59 = icmp slt i64 %58, %2, !dbg !3184
  br i1 %59, label %60, label %97, !dbg !3185

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3186
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3186
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %63, metadata !718, metadata !DIExpression()), !dbg !3163
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3187
  br i1 %66, label %96, label %67, !dbg !3187

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3188

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3188
  br i1 %69, label %70, label %75, !dbg !3188

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3188
  %72 = udiv i64 9223372036854775807, %71, !dbg !3188
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3188
  br i1 %74, label %96, label %94, !dbg !3188

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3188
  br i1 %76, label %94, label %77, !dbg !3188

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3188
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3188
  %80 = icmp ult i64 %79, %63, !dbg !3188
  br i1 %80, label %96, label %94, !dbg !3188

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3188
  br i1 %82, label %94, label %83, !dbg !3188

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3188
  br i1 %84, label %85, label %91, !dbg !3188

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3188
  br i1 %86, label %94, label %87, !dbg !3188

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3188
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3188
  %90 = icmp ult i64 %89, %4, !dbg !3188
  br i1 %90, label %96, label %94, !dbg !3188

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3188
  br i1 %93, label %96, label %94, !dbg !3188

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !719, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3163
  %95 = mul i64 %63, %4, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %95, metadata !719, metadata !DIExpression()), !dbg !3163
  br label %97, !dbg !3189

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3190
  unreachable, !dbg !3190

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3163
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3163
  call void @llvm.dbg.value(metadata i64 %99, metadata !719, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %98, metadata !718, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata i64 %99, metadata !3010, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.value(metadata ptr %0, metadata !3012, metadata !DIExpression()), !dbg !3193
  call void @llvm.dbg.value(metadata i64 %99, metadata !3016, metadata !DIExpression()), !dbg !3193
  %100 = icmp eq i64 %99, 0, !dbg !3195
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3195
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3196
  call void @llvm.dbg.value(metadata ptr %102, metadata !2937, metadata !DIExpression()), !dbg !3197
  %103 = icmp eq ptr %102, null, !dbg !3199
  br i1 %103, label %104, label %105, !dbg !3200

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3201
  unreachable, !dbg !3201

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !712, metadata !DIExpression()), !dbg !3163
  store i64 %98, ptr %1, align 8, !dbg !3202, !tbaa !2216
  ret ptr %102, !dbg !3203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3204 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3206, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %0, metadata !3208, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.value(metadata i64 1, metadata !3211, metadata !DIExpression()), !dbg !3212
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3214
  call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !3215
  %3 = icmp eq ptr %2, null, !dbg !3217
  br i1 %3, label %4, label %5, !dbg !3218

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3219
  unreachable, !dbg !3219

5:                                                ; preds = %1
  ret ptr %2, !dbg !3220
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3221 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3209 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3208, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %1, metadata !3211, metadata !DIExpression()), !dbg !3222
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3223
  call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !3224
  %4 = icmp eq ptr %3, null, !dbg !3226
  br i1 %4, label %5, label %6, !dbg !3227

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3228
  unreachable, !dbg !3228

6:                                                ; preds = %2
  ret ptr %3, !dbg !3229
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3230 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3232, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 1, metadata !3237, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 1, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 1, metadata !3243, metadata !DIExpression()), !dbg !3244
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3246
  call void @llvm.dbg.value(metadata ptr %2, metadata !2937, metadata !DIExpression()), !dbg !3247
  %3 = icmp eq ptr %2, null, !dbg !3249
  br i1 %3, label %4, label %5, !dbg !3250

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3251
  unreachable, !dbg !3251

5:                                                ; preds = %1
  ret ptr %2, !dbg !3252
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3235 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %1, metadata !3237, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %0, metadata !3240, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3243, metadata !DIExpression()), !dbg !3254
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3256
  call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !3257
  %4 = icmp eq ptr %3, null, !dbg !3259
  br i1 %4, label %5, label %6, !dbg !3260

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3261
  unreachable, !dbg !3261

6:                                                ; preds = %2
  ret ptr %3, !dbg !3262
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3263 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3267, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !3268, metadata !DIExpression()), !dbg !3269
  call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !3270
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3272
  call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !3273
  %4 = icmp eq ptr %3, null, !dbg !3275
  br i1 %4, label %5, label %6, !dbg !3276

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3277
  unreachable, !dbg !3277

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3278, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3286
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3288
  ret ptr %3, !dbg !3289
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3290 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3294, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !3295, metadata !DIExpression()), !dbg !3296
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()), !dbg !3299
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3301
  call void @llvm.dbg.value(metadata ptr %3, metadata !2937, metadata !DIExpression()), !dbg !3302
  %4 = icmp eq ptr %3, null, !dbg !3304
  br i1 %4, label %5, label %6, !dbg !3305

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3306
  unreachable, !dbg !3306

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3278, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3307
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3309
  ret ptr %3, !dbg !3310
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3311 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3315, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3316, metadata !DIExpression()), !dbg !3318
  %3 = add nsw i64 %1, 1, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %3, metadata !2975, metadata !DIExpression()), !dbg !3320
  call void @llvm.dbg.value(metadata i64 %3, metadata !2977, metadata !DIExpression()), !dbg !3322
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3324
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !3325
  %5 = icmp eq ptr %4, null, !dbg !3327
  br i1 %5, label %6, label %7, !dbg !3328

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3329
  unreachable, !dbg !3329

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3317, metadata !DIExpression()), !dbg !3318
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3330
  store i8 0, ptr %8, align 1, !dbg !3331, !tbaa !829
  call void @llvm.dbg.value(metadata ptr %4, metadata !3278, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64 %1, metadata !3285, metadata !DIExpression()), !dbg !3332
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3334
  ret ptr %4, !dbg !3335
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3336 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3338, metadata !DIExpression()), !dbg !3339
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3340
  %3 = add i64 %2, 1, !dbg !3341
  call void @llvm.dbg.value(metadata ptr %0, metadata !3267, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %3, metadata !3268, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %3, metadata !2961, metadata !DIExpression()), !dbg !3344
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %4, metadata !2937, metadata !DIExpression()), !dbg !3347
  %5 = icmp eq ptr %4, null, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3350

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3351
  unreachable, !dbg !3351

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3278, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata ptr %0, metadata !3284, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %3, metadata !3285, metadata !DIExpression()), !dbg !3352
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3354
  ret ptr %4, !dbg !3355
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3356 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3361, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %1, metadata !3358, metadata !DIExpression()), !dbg !3362
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.111, ptr noundef nonnull @.str.2.112, i32 noundef 5) #36, !dbg !3361
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.113, ptr noundef %2) #36, !dbg !3361
  %3 = icmp eq i32 %1, 0, !dbg !3361
  tail call void @llvm.assume(i1 %3), !dbg !3361
  tail call void @abort() #38, !dbg !3363
  unreachable, !dbg !3363
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3364 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3402, metadata !DIExpression()), !dbg !3407
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3408
  call void @llvm.dbg.value(metadata i1 poison, metadata !3403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3407
  call void @llvm.dbg.value(metadata ptr %0, metadata !3409, metadata !DIExpression()), !dbg !3412
  %3 = load i32, ptr %0, align 8, !dbg !3414, !tbaa !3415
  %4 = and i32 %3, 32, !dbg !3416
  %5 = icmp eq i32 %4, 0, !dbg !3416
  call void @llvm.dbg.value(metadata i1 %5, metadata !3405, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3407
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3417
  %7 = icmp eq i32 %6, 0, !dbg !3418
  call void @llvm.dbg.value(metadata i1 %7, metadata !3406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3407
  br i1 %5, label %8, label %18, !dbg !3419

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3421
  call void @llvm.dbg.value(metadata i1 %9, metadata !3403, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3407
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3422
  %11 = xor i1 %7, true, !dbg !3422
  %12 = sext i1 %11 to i32, !dbg !3422
  br i1 %10, label %21, label %13, !dbg !3422

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3423
  %15 = load i32, ptr %14, align 4, !dbg !3423, !tbaa !820
  %16 = icmp ne i32 %15, 9, !dbg !3424
  %17 = sext i1 %16 to i32, !dbg !3425
  br label %21, !dbg !3425

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3426

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3428
  store i32 0, ptr %20, align 4, !dbg !3430, !tbaa !820
  br label %21, !dbg !3428

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3407
  ret i32 %22, !dbg !3431
}

; Function Attrs: nounwind
declare !dbg !3432 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3436 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3474, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3478
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3479
  call void @llvm.dbg.value(metadata i32 %2, metadata !3476, metadata !DIExpression()), !dbg !3478
  %3 = icmp slt i32 %2, 0, !dbg !3480
  br i1 %3, label %4, label %6, !dbg !3482

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3483
  br label %24, !dbg !3484

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3485
  %8 = icmp eq i32 %7, 0, !dbg !3485
  br i1 %8, label %13, label %9, !dbg !3487

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3488
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3489
  %12 = icmp eq i64 %11, -1, !dbg !3490
  br i1 %12, label %16, label %13, !dbg !3491

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3492
  %15 = icmp eq i32 %14, 0, !dbg !3492
  br i1 %15, label %16, label %18, !dbg !3493

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3477, metadata !DIExpression()), !dbg !3478
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %17, metadata !3477, metadata !DIExpression()), !dbg !3478
  br label %24, !dbg !3495

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3496
  %20 = load i32, ptr %19, align 4, !dbg !3496, !tbaa !820
  call void @llvm.dbg.value(metadata i32 %20, metadata !3475, metadata !DIExpression()), !dbg !3478
  call void @llvm.dbg.value(metadata i32 0, metadata !3477, metadata !DIExpression()), !dbg !3478
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3494
  call void @llvm.dbg.value(metadata i32 %21, metadata !3477, metadata !DIExpression()), !dbg !3478
  %22 = icmp eq i32 %20, 0, !dbg !3497
  br i1 %22, label %24, label %23, !dbg !3495

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3499, !tbaa !820
  call void @llvm.dbg.value(metadata i32 -1, metadata !3477, metadata !DIExpression()), !dbg !3478
  br label %24, !dbg !3501

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3478
  ret i32 %25, !dbg !3502
}

; Function Attrs: nofree nounwind
declare !dbg !3503 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3504 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3505 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3506 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3509 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3547, metadata !DIExpression()), !dbg !3548
  %2 = icmp eq ptr %0, null, !dbg !3549
  br i1 %2, label %6, label %3, !dbg !3551

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3552
  %5 = icmp eq i32 %4, 0, !dbg !3552
  br i1 %5, label %6, label %8, !dbg !3553

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3554
  br label %16, !dbg !3555

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3556, metadata !DIExpression()), !dbg !3561
  %9 = load i32, ptr %0, align 8, !dbg !3563, !tbaa !3415
  %10 = and i32 %9, 256, !dbg !3565
  %11 = icmp eq i32 %10, 0, !dbg !3565
  br i1 %11, label %14, label %12, !dbg !3566

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3567
  br label %14, !dbg !3567

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3568
  br label %16, !dbg !3569

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3548
  ret i32 %17, !dbg !3570
}

; Function Attrs: nofree nounwind
declare !dbg !3571 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3572 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3611, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %1, metadata !3612, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %2, metadata !3613, metadata !DIExpression()), !dbg !3617
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3618
  %5 = load ptr, ptr %4, align 8, !dbg !3618, !tbaa !3619
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3620
  %7 = load ptr, ptr %6, align 8, !dbg !3620, !tbaa !3621
  %8 = icmp eq ptr %5, %7, !dbg !3622
  br i1 %8, label %9, label %27, !dbg !3623

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3624
  %11 = load ptr, ptr %10, align 8, !dbg !3624, !tbaa !1207
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3625
  %13 = load ptr, ptr %12, align 8, !dbg !3625, !tbaa !3626
  %14 = icmp eq ptr %11, %13, !dbg !3627
  br i1 %14, label %15, label %27, !dbg !3628

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3629
  %17 = load ptr, ptr %16, align 8, !dbg !3629, !tbaa !3630
  %18 = icmp eq ptr %17, null, !dbg !3631
  br i1 %18, label %19, label %27, !dbg !3632

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3633
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %21, metadata !3614, metadata !DIExpression()), !dbg !3635
  %22 = icmp eq i64 %21, -1, !dbg !3636
  br i1 %22, label %29, label %23, !dbg !3638

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3639, !tbaa !3415
  %25 = and i32 %24, -17, !dbg !3639
  store i32 %25, ptr %0, align 8, !dbg !3639, !tbaa !3415
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3640
  store i64 %21, ptr %26, align 8, !dbg !3641, !tbaa !3642
  br label %29, !dbg !3643

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3644
  br label %29, !dbg !3645

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3617
  ret i32 %30, !dbg !3646
}

; Function Attrs: nofree nounwind
declare !dbg !3647 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3650 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3655, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %1, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i64 %2, metadata !3657, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %3, metadata !3658, metadata !DIExpression()), !dbg !3660
  %5 = icmp eq ptr %1, null, !dbg !3661
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3663
  %7 = select i1 %5, ptr @.str.124, ptr %1, !dbg !3663
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3663
  call void @llvm.dbg.value(metadata i64 %8, metadata !3657, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %7, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata ptr %6, metadata !3655, metadata !DIExpression()), !dbg !3660
  %9 = icmp eq ptr %3, null, !dbg !3664
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3666
  call void @llvm.dbg.value(metadata ptr %10, metadata !3658, metadata !DIExpression()), !dbg !3660
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %11, metadata !3659, metadata !DIExpression()), !dbg !3660
  %12 = icmp ult i64 %11, -3, !dbg !3668
  br i1 %12, label %13, label %17, !dbg !3670

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3671
  %15 = icmp eq i32 %14, 0, !dbg !3671
  br i1 %15, label %16, label %29, !dbg !3672

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3673, metadata !DIExpression()), !dbg !3678
  call void @llvm.dbg.value(metadata ptr %10, metadata !3680, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i32 0, metadata !3683, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.value(metadata i64 8, metadata !3684, metadata !DIExpression()), !dbg !3685
  store i64 0, ptr %10, align 1, !dbg !3687
  br label %29, !dbg !3688

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3689
  br i1 %18, label %19, label %20, !dbg !3691

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3692
  unreachable, !dbg !3692

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3693

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3695
  br i1 %23, label %29, label %24, !dbg !3696

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3697
  br i1 %25, label %29, label %26, !dbg !3700

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3701, !tbaa !829
  %28 = zext i8 %27 to i32, !dbg !3702
  store i32 %28, ptr %6, align 4, !dbg !3703, !tbaa !820
  br label %29, !dbg !3704

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3660
  ret i64 %30, !dbg !3705
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3706 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3712 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3714, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %1, metadata !3715, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i64 %2, metadata !3716, metadata !DIExpression()), !dbg !3718
  %4 = icmp eq i64 %2, 0, !dbg !3719
  br i1 %4, label %8, label %5, !dbg !3719

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3719
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3719
  br i1 %7, label %13, label %8, !dbg !3719

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3718
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3718
  %9 = mul i64 %2, %1, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %9, metadata !3717, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %0, metadata !3721, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %9, metadata !3724, metadata !DIExpression()), !dbg !3725
  %10 = icmp eq i64 %9, 0, !dbg !3727
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3727
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3728
  br label %15, !dbg !3729

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3717, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3718
  %14 = tail call ptr @__errno_location() #39, !dbg !3730
  store i32 12, ptr %14, align 4, !dbg !3732, !tbaa !820
  br label %15, !dbg !3733

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3718
  ret ptr %16, !dbg !3734
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3735 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3739, metadata !DIExpression()), !dbg !3744
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3745
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3740, metadata !DIExpression()), !dbg !3746
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3747
  %4 = icmp eq i32 %3, 0, !dbg !3747
  br i1 %4, label %5, label %12, !dbg !3749

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3750, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr @.str.129, metadata !3753, metadata !DIExpression()), !dbg !3754
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.129, i64 2), !dbg !3757
  %7 = icmp eq i32 %6, 0, !dbg !3758
  br i1 %7, label %11, label %8, !dbg !3759

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3750, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata ptr @.str.1.130, metadata !3753, metadata !DIExpression()), !dbg !3760
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.130, i64 6), !dbg !3762
  %10 = icmp eq i32 %9, 0, !dbg !3763
  br i1 %10, label %11, label %12, !dbg !3764

11:                                               ; preds = %8, %5
  br label %12, !dbg !3765

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3744
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3766
  ret i1 %13, !dbg !3766
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3767 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3771, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata ptr %1, metadata !3772, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.value(metadata i64 %2, metadata !3773, metadata !DIExpression()), !dbg !3774
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3775
  ret i32 %4, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3781, metadata !DIExpression()), !dbg !3782
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3783
  ret ptr %2, !dbg !3784
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3785 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3789
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3790
  call void @llvm.dbg.value(metadata ptr %2, metadata !3788, metadata !DIExpression()), !dbg !3789
  ret ptr %2, !dbg !3791
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata ptr %1, metadata !3795, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %2, metadata !3796, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3802
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3804
  call void @llvm.dbg.value(metadata ptr %4, metadata !3788, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata ptr %4, metadata !3797, metadata !DIExpression()), !dbg !3801
  %5 = icmp eq ptr %4, null, !dbg !3805
  br i1 %5, label %6, label %9, !dbg !3806

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3807
  br i1 %7, label %19, label %8, !dbg !3810

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3811, !tbaa !829
  br label %19, !dbg !3812

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3813
  call void @llvm.dbg.value(metadata i64 %10, metadata !3798, metadata !DIExpression()), !dbg !3814
  %11 = icmp ult i64 %10, %2, !dbg !3815
  br i1 %11, label %12, label %14, !dbg !3817

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3818
  call void @llvm.dbg.value(metadata ptr %1, metadata !3820, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata ptr %4, metadata !3823, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.value(metadata i64 %13, metadata !3824, metadata !DIExpression()), !dbg !3825
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3827
  br label %19, !dbg !3828

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3829
  br i1 %15, label %19, label %16, !dbg !3832

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3833
  call void @llvm.dbg.value(metadata ptr %1, metadata !3820, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata ptr %4, metadata !3823, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %17, metadata !3824, metadata !DIExpression()), !dbg !3835
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3837
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3838
  store i8 0, ptr %18, align 1, !dbg !3839, !tbaa !829
  br label %19, !dbg !3840

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3841
  ret i32 %20, !dbg !3842
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

!llvm.dbg.cu = !{!82, !316, !320, !335, !645, !679, !395, !415, !429, !480, !681, !637, !688, !722, !724, !726, !728, !730, !661, !732, !735, !737, !739}
!llvm.ident = !{!741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741, !741}
!llvm.module.flags = !{!742, !743, !744, !745, !746, !747, !748}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/link.c", directory: "/src", checksumkind: CSK_MD5, checksum: "355a8a3740f0720795f10b09973f5dbc")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
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
!82 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !114, globals: !122, splitDebugInlining: false, nameTableKind: None)
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
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !119, line: 46, baseType: !120)
!119 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!254 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !257)
!256 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!280 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!316 = distinct !DICompileUnit(language: DW_LANG_C11, file: !313, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !317, splitDebugInlining: false, nameTableKind: None)
!317 = !{!311, !314}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "file_name", scope: !320, file: !321, line: 45, type: !80, isLocal: true, isDefinition: true)
!320 = distinct !DICompileUnit(language: DW_LANG_C11, file: !321, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !322, splitDebugInlining: false, nameTableKind: None)
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
!334 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !335, file: !336, line: 66, type: !387, isLocal: false, isDefinition: true)
!335 = distinct !DICompileUnit(language: DW_LANG_C11, file: !336, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !337, globals: !338, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!337 = !{!115, !121}
!338 = !{!339, !341, !366, !368, !370, !372, !333, !374, !376, !378, !380, !385}
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !336, line: 272, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "old_file_name", scope: !343, file: !336, line: 304, type: !80, isLocal: true, isDefinition: true)
!343 = distinct !DISubprogram(name: "verror_at_line", scope: !336, file: !336, line: 298, type: !344, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !359)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !116, !116, !80, !86, !80, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !347, line: 52, baseType: !348)
!347 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !349, line: 14, baseType: !350)
!349 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !351, baseType: !352)
!351 = !DIFile(filename: "lib/error.c", directory: "/src")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !353)
!353 = !{!354, !355, !356, !357, !358}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !352, file: !351, baseType: !115, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !352, file: !351, baseType: !115, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !352, file: !351, baseType: !115, size: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !352, file: !351, baseType: !116, size: 32, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !352, file: !351, baseType: !116, size: 32, offset: 224)
!359 = !{!360, !361, !362, !363, !364, !365}
!360 = !DILocalVariable(name: "status", arg: 1, scope: !343, file: !336, line: 298, type: !116)
!361 = !DILocalVariable(name: "errnum", arg: 2, scope: !343, file: !336, line: 298, type: !116)
!362 = !DILocalVariable(name: "file_name", arg: 3, scope: !343, file: !336, line: 298, type: !80)
!363 = !DILocalVariable(name: "line_number", arg: 4, scope: !343, file: !336, line: 298, type: !86)
!364 = !DILocalVariable(name: "message", arg: 5, scope: !343, file: !336, line: 298, type: !80)
!365 = !DILocalVariable(name: "args", arg: 6, scope: !343, file: !336, line: 298, type: !346)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "old_line_number", scope: !343, file: !336, line: 305, type: !86, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !336, line: 338, type: !129, isLocal: true, isDefinition: true)
!370 = !DIGlobalVariableExpression(var: !371, expr: !DIExpression())
!371 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !164, isLocal: true, isDefinition: true)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !139, isLocal: true, isDefinition: true)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "error_message_count", scope: !335, file: !336, line: 69, type: !86, isLocal: false, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !335, file: !336, line: 295, type: !116, isLocal: false, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !159, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !382, isLocal: true, isDefinition: true)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 21)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !336, line: 214, type: !19, isLocal: true, isDefinition: true)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{null}
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(scope: null, file: !392, line: 60, type: !139, isLocal: true, isDefinition: true)
!392 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "long_options", scope: !395, file: !392, line: 34, type: !403, isLocal: true, isDefinition: true)
!395 = distinct !DICompileUnit(language: DW_LANG_C11, file: !392, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !396, splitDebugInlining: false, nameTableKind: None)
!396 = !{!390, !397, !399, !401, !393}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !392, line: 112, type: !34, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !392, line: 36, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !392, line: 37, type: !164, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 768, elements: !149)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !406, line: 50, size: 256, elements: !407)
!406 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!407 = !{!408, !409, !410, !412}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !406, line: 52, baseType: !80, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !405, file: !406, line: 55, baseType: !116, size: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !405, file: !406, line: 56, baseType: !411, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !406, line: 57, baseType: !116, size: 32, offset: 192)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "program_name", scope: !415, file: !416, line: 31, type: !80, isLocal: false, isDefinition: true)
!415 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !417, globals: !418, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!417 = !{!260}
!418 = !{!413, !419, !421}
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !416, line: 46, type: !164, isLocal: true, isDefinition: true)
!421 = !DIGlobalVariableExpression(var: !422, expr: !DIExpression())
!422 = distinct !DIGlobalVariable(scope: null, file: !416, line: 49, type: !129, isLocal: true, isDefinition: true)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(name: "utf07FF", scope: !425, file: !426, line: 46, type: !453, isLocal: true, isDefinition: true)
!425 = distinct !DISubprogram(name: "proper_name_lite", scope: !426, file: !426, line: 38, type: !427, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !431)
!426 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!427 = !DISubroutineType(types: !428)
!428 = !{!80, !80, !80}
!429 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !430, splitDebugInlining: false, nameTableKind: None)
!430 = !{!423}
!431 = !{!432, !433, !434, !435, !440}
!432 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !425, file: !426, line: 38, type: !80)
!433 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !425, file: !426, line: 38, type: !80)
!434 = !DILocalVariable(name: "translation", scope: !425, file: !426, line: 40, type: !80)
!435 = !DILocalVariable(name: "w", scope: !425, file: !426, line: 47, type: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !437, line: 37, baseType: !438)
!437 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !280, line: 57, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !280, line: 42, baseType: !86)
!440 = !DILocalVariable(name: "mbs", scope: !425, file: !426, line: 48, type: !441)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !442, line: 6, baseType: !443)
!442 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !444, line: 21, baseType: !445)
!444 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 13, size: 64, elements: !446)
!446 = !{!447, !448}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !445, file: !444, line: 15, baseType: !116, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !445, file: !444, line: 20, baseType: !449, size: 32, offset: 32)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !444, line: 16, size: 32, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !449, file: !444, line: 18, baseType: !86, size: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !449, file: !444, line: 19, baseType: !129, size: 32)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 16, elements: !140)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !456, line: 78, type: !164, isLocal: true, isDefinition: true)
!456 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !456, line: 79, type: !134, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !456, line: 80, type: !461, isLocal: true, isDefinition: true)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 13)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !456, line: 81, type: !461, isLocal: true, isDefinition: true)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !456, line: 82, type: !302, isLocal: true, isDefinition: true)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !456, line: 83, type: !139, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !456, line: 84, type: !164, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !456, line: 85, type: !159, isLocal: true, isDefinition: true)
!474 = !DIGlobalVariableExpression(var: !475, expr: !DIExpression())
!475 = distinct !DIGlobalVariable(scope: null, file: !456, line: 86, type: !159, isLocal: true, isDefinition: true)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !456, line: 87, type: !164, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !480, file: !456, line: 76, type: !552, isLocal: false, isDefinition: true)
!480 = distinct !DICompileUnit(language: DW_LANG_C11, file: !456, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !481, retainedTypes: !487, globals: !488, splitDebugInlining: false, nameTableKind: None)
!481 = !{!84, !482, !99}
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !85, line: 254, baseType: !86, size: 32, elements: !483)
!483 = !{!484, !485, !486}
!484 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!485 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!486 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!487 = !{!116, !117, !118}
!488 = !{!454, !457, !459, !464, !466, !468, !470, !472, !474, !476, !478, !489, !493, !503, !505, !510, !512, !514, !516, !518, !541, !548, !550}
!489 = !DIGlobalVariableExpression(var: !490, expr: !DIExpression())
!490 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !480, file: !456, line: 92, type: !491, isLocal: false, isDefinition: true)
!491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 320, elements: !40)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !480, file: !456, line: 1040, type: !495, isLocal: false, isDefinition: true)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !456, line: 56, size: 448, elements: !496)
!496 = !{!497, !498, !499, !501, !502}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !495, file: !456, line: 59, baseType: !84, size: 32)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !495, file: !456, line: 62, baseType: !116, size: 32, offset: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !495, file: !456, line: 66, baseType: !500, size: 256, offset: 64)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, elements: !165)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !495, file: !456, line: 69, baseType: !80, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !495, file: !456, line: 72, baseType: !80, size: 64, offset: 384)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !480, file: !456, line: 107, type: !495, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "slot0", scope: !480, file: !456, line: 831, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 256)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !456, line: 321, type: !139, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !456, line: 357, type: !139, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !456, line: 358, type: !139, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !456, line: 199, type: !159, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(name: "quote", scope: !520, file: !456, line: 228, type: !539, isLocal: true, isDefinition: true)
!520 = distinct !DISubprogram(name: "gettext_quote", scope: !456, file: !456, line: 197, type: !521, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !523)
!521 = !DISubroutineType(types: !522)
!522 = !{!80, !80, !84}
!523 = !{!524, !525, !526, !527, !528}
!524 = !DILocalVariable(name: "msgid", arg: 1, scope: !520, file: !456, line: 197, type: !80)
!525 = !DILocalVariable(name: "s", arg: 2, scope: !520, file: !456, line: 197, type: !84)
!526 = !DILocalVariable(name: "translation", scope: !520, file: !456, line: 199, type: !80)
!527 = !DILocalVariable(name: "w", scope: !520, file: !456, line: 229, type: !436)
!528 = !DILocalVariable(name: "mbs", scope: !520, file: !456, line: 230, type: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !442, line: 6, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !444, line: 21, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 13, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !531, file: !444, line: 15, baseType: !116, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !531, file: !444, line: 20, baseType: !535, size: 32, offset: 32)
!535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !444, line: 16, size: 32, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !535, file: !444, line: 18, baseType: !86, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !535, file: !444, line: 19, baseType: !129, size: 32)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !540)
!540 = !{!141, !131}
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "slotvec", scope: !480, file: !456, line: 834, type: !543, isLocal: true, isDefinition: true)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !456, line: 823, size: 128, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !456, line: 825, baseType: !118, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !544, file: !456, line: 826, baseType: !260, size: 64, offset: 64)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(name: "nslots", scope: !480, file: !456, line: 832, type: !116, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "slotvec0", scope: !480, file: !456, line: 833, type: !544, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 704, elements: !554)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!554 = !{!555}
!555 = !DISubrange(count: 11)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !558, line: 67, type: !229, isLocal: true, isDefinition: true)
!558 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !558, line: 69, type: !159, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !558, line: 83, type: !159, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !558, line: 83, type: !129, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !558, line: 85, type: !139, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !558, line: 88, type: !569, isLocal: true, isDefinition: true)
!569 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !570)
!570 = !{!571}
!571 = !DISubrange(count: 171)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !558, line: 88, type: !574, isLocal: true, isDefinition: true)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 34)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !558, line: 105, type: !56, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !558, line: 109, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 23)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !558, line: 113, type: !71, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !558, line: 120, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 32)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !558, line: 127, type: !593, isLocal: true, isDefinition: true)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 36)
!596 = !DIGlobalVariableExpression(var: !597, expr: !DIExpression())
!597 = distinct !DIGlobalVariable(scope: null, file: !558, line: 134, type: !9, isLocal: true, isDefinition: true)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !558, line: 142, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 44)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !558, line: 150, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 48)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !558, line: 159, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 52)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !558, line: 170, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 60)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !558, line: 248, type: !302, isLocal: true, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !558, line: 248, type: !205, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !558, line: 254, type: !302, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !558, line: 254, type: !49, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !558, line: 254, type: !9, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !558, line: 259, type: !3, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !558, line: 259, type: !632, isLocal: true, isDefinition: true)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 29)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !637, file: !638, line: 26, type: !640, isLocal: false, isDefinition: true)
!637 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !639, splitDebugInlining: false, nameTableKind: None)
!638 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!639 = !{!635}
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 47)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "exit_failure", scope: !645, file: !646, line: 24, type: !648, isLocal: false, isDefinition: true)
!645 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !647, splitDebugInlining: false, nameTableKind: None)
!646 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!647 = !{!643}
!648 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 34, type: !148, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !651, line: 34, type: !159, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !651, line: 34, type: !66, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !658, line: 108, type: !34, isLocal: true, isDefinition: true)
!658 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "internal_state", scope: !661, file: !658, line: 97, type: !664, isLocal: true, isDefinition: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !658, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !662, globals: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !{!115, !118, !121}
!663 = !{!656, !659}
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !442, line: 6, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !444, line: 21, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 13, size: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !666, file: !444, line: 15, baseType: !116, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !666, file: !444, line: 20, baseType: !670, size: 32, offset: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !444, line: 16, size: 32, elements: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !670, file: !444, line: 18, baseType: !86, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !670, file: !444, line: 19, baseType: !129, size: 32)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !676, line: 35, type: !139, isLocal: true, isDefinition: true)
!676 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!677 = !DIGlobalVariableExpression(var: !678, expr: !DIExpression())
!678 = distinct !DIGlobalVariable(scope: null, file: !676, line: 35, type: !134, isLocal: true, isDefinition: true)
!679 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!680 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !558, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !686, globals: !687, splitDebugInlining: false, nameTableKind: None)
!682 = !{!683}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !558, line: 40, baseType: !86, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!686 = !{!115}
!687 = !{!556, !559, !561, !563, !565, !567, !572, !577, !579, !584, !586, !591, !596, !598, !603, !608, !613, !618, !620, !622, !624, !626, !628, !630}
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !690, retainedTypes: !721, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!690 = !{!691, !703}
!691 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !692, file: !689, line: 188, baseType: !86, size: 32, elements: !701)
!692 = distinct !DISubprogram(name: "x2nrealloc", scope: !689, file: !689, line: 176, type: !693, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{!115, !115, !695, !118}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!696 = !{!697, !698, !699, !700}
!697 = !DILocalVariable(name: "p", arg: 1, scope: !692, file: !689, line: 176, type: !115)
!698 = !DILocalVariable(name: "pn", arg: 2, scope: !692, file: !689, line: 176, type: !695)
!699 = !DILocalVariable(name: "s", arg: 3, scope: !692, file: !689, line: 176, type: !118)
!700 = !DILocalVariable(name: "n", scope: !692, file: !689, line: 178, type: !118)
!701 = !{!702}
!702 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!703 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !704, file: !689, line: 228, baseType: !86, size: 32, elements: !701)
!704 = distinct !DISubprogram(name: "xpalloc", scope: !689, file: !689, line: 223, type: !705, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !711)
!705 = !DISubroutineType(types: !706)
!706 = !{!115, !115, !707, !708, !710, !708}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !709, line: 130, baseType: !710)
!709 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !119, line: 35, baseType: !281)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720}
!712 = !DILocalVariable(name: "pa", arg: 1, scope: !704, file: !689, line: 223, type: !115)
!713 = !DILocalVariable(name: "pn", arg: 2, scope: !704, file: !689, line: 223, type: !707)
!714 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !704, file: !689, line: 223, type: !708)
!715 = !DILocalVariable(name: "n_max", arg: 4, scope: !704, file: !689, line: 223, type: !710)
!716 = !DILocalVariable(name: "s", arg: 5, scope: !704, file: !689, line: 223, type: !708)
!717 = !DILocalVariable(name: "n0", scope: !704, file: !689, line: 230, type: !708)
!718 = !DILocalVariable(name: "n", scope: !704, file: !689, line: 237, type: !708)
!719 = !DILocalVariable(name: "nbytes", scope: !704, file: !689, line: 248, type: !708)
!720 = !DILocalVariable(name: "adjusted_nbytes", scope: !704, file: !689, line: 252, type: !708)
!721 = !{!260, !115, !239, !281, !120}
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !723, splitDebugInlining: false, nameTableKind: None)
!723 = !{!649, !652, !654}
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !734, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!734 = !{!239, !120, !115}
!735 = distinct !DICompileUnit(language: DW_LANG_C11, file: !676, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !736, splitDebugInlining: false, nameTableKind: None)
!736 = !{!674, !677}
!737 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!738 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!739 = distinct !DICompileUnit(language: DW_LANG_C11, file: !740, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !686, splitDebugInlining: false, nameTableKind: None)
!740 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!741 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!742 = !{i32 7, !"Dwarf Version", i32 5}
!743 = !{i32 2, !"Debug Info Version", i32 3}
!744 = !{i32 1, !"wchar_size", i32 4}
!745 = !{i32 8, !"PIC Level", i32 2}
!746 = !{i32 7, !"PIE Level", i32 2}
!747 = !{i32 7, !"uwtable", i32 2}
!748 = !{i32 7, !"frame-pointer", i32 1}
!749 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !750, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !752)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !116}
!752 = !{!753}
!753 = !DILocalVariable(name: "status", arg: 1, scope: !749, file: !2, line: 37, type: !116)
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
!767 = !DILocation(line: 49, column: 7, scope: !765)
!768 = !DILocation(line: 50, column: 7, scope: !765)
!769 = !DILocalVariable(name: "program", arg: 1, scope: !770, file: !77, line: 836, type: !80)
!770 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !771, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !80}
!773 = !{!769, !774, !781, !782, !784, !785}
!774 = !DILocalVariable(name: "infomap", scope: !770, file: !77, line: 838, type: !775)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 896, elements: !160)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !770, file: !77, line: 838, size: 128, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !777, file: !77, line: 838, baseType: !80, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !777, file: !77, line: 838, baseType: !80, size: 64, offset: 64)
!781 = !DILocalVariable(name: "node", scope: !770, file: !77, line: 848, type: !80)
!782 = !DILocalVariable(name: "map_prog", scope: !770, file: !77, line: 849, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!784 = !DILocalVariable(name: "lc_messages", scope: !770, file: !77, line: 861, type: !80)
!785 = !DILocalVariable(name: "url_program", scope: !770, file: !77, line: 874, type: !80)
!786 = !DILocation(line: 0, scope: !770, inlinedAt: !787)
!787 = distinct !DILocation(line: 51, column: 7, scope: !765)
!788 = !DILocation(line: 857, column: 3, scope: !770, inlinedAt: !787)
!789 = !DILocation(line: 861, column: 29, scope: !770, inlinedAt: !787)
!790 = !DILocation(line: 862, column: 7, scope: !791, inlinedAt: !787)
!791 = distinct !DILexicalBlock(scope: !770, file: !77, line: 862, column: 7)
!792 = !DILocation(line: 862, column: 19, scope: !791, inlinedAt: !787)
!793 = !DILocation(line: 862, column: 22, scope: !791, inlinedAt: !787)
!794 = !DILocation(line: 862, column: 7, scope: !770, inlinedAt: !787)
!795 = !DILocation(line: 868, column: 7, scope: !796, inlinedAt: !787)
!796 = distinct !DILexicalBlock(scope: !791, file: !77, line: 863, column: 5)
!797 = !DILocation(line: 870, column: 5, scope: !796, inlinedAt: !787)
!798 = !DILocation(line: 875, column: 3, scope: !770, inlinedAt: !787)
!799 = !DILocation(line: 877, column: 3, scope: !770, inlinedAt: !787)
!800 = !DILocation(line: 53, column: 3, scope: !749)
!801 = !DISubprogram(name: "dcgettext", scope: !802, file: !802, line: 51, type: !803, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!802 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!803 = !DISubroutineType(types: !804)
!804 = !{!260, !80, !80, !116}
!805 = !{}
!806 = !DISubprogram(name: "__fprintf_chk", scope: !807, file: !807, line: 93, type: !808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!807 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!808 = !DISubroutineType(types: !809)
!809 = !{!116, !810, !116, !811, null}
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!811 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!812 = !DISubprogram(name: "__printf_chk", scope: !807, file: !807, line: 95, type: !813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!813 = !DISubroutineType(types: !814)
!814 = !{!116, !116, !811, null}
!815 = !DISubprogram(name: "fputs_unlocked", scope: !347, file: !347, line: 691, type: !816, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!816 = !DISubroutineType(types: !817)
!817 = !{!116, !811, !810}
!818 = !DILocation(line: 0, scope: !76)
!819 = !DILocation(line: 581, column: 7, scope: !237)
!820 = !{!821, !821, i64 0}
!821 = !{!"int", !762, i64 0}
!822 = !DILocation(line: 581, column: 19, scope: !237)
!823 = !DILocation(line: 581, column: 7, scope: !76)
!824 = !DILocation(line: 585, column: 26, scope: !236)
!825 = !DILocation(line: 0, scope: !236)
!826 = !DILocation(line: 586, column: 23, scope: !236)
!827 = !DILocation(line: 586, column: 28, scope: !236)
!828 = !DILocation(line: 586, column: 32, scope: !236)
!829 = !{!762, !762, i64 0}
!830 = !DILocation(line: 586, column: 38, scope: !236)
!831 = !DILocalVariable(name: "__s1", arg: 1, scope: !832, file: !833, line: 1359, type: !80)
!832 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !836)
!833 = !DIFile(filename: "./lib/string.h", directory: "/src")
!834 = !DISubroutineType(types: !835)
!835 = !{!239, !80, !80}
!836 = !{!831, !837}
!837 = !DILocalVariable(name: "__s2", arg: 2, scope: !832, file: !833, line: 1359, type: !80)
!838 = !DILocation(line: 0, scope: !832, inlinedAt: !839)
!839 = distinct !DILocation(line: 586, column: 41, scope: !236)
!840 = !DILocation(line: 1361, column: 11, scope: !832, inlinedAt: !839)
!841 = !DILocation(line: 1361, column: 10, scope: !832, inlinedAt: !839)
!842 = !DILocation(line: 586, column: 19, scope: !236)
!843 = !DILocation(line: 587, column: 5, scope: !236)
!844 = !DILocation(line: 588, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !76, file: !77, line: 588, column: 7)
!846 = !DILocation(line: 588, column: 7, scope: !76)
!847 = !DILocation(line: 590, column: 7, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !77, line: 589, column: 5)
!849 = !DILocation(line: 591, column: 7, scope: !848)
!850 = !DILocation(line: 595, column: 37, scope: !76)
!851 = !DILocation(line: 595, column: 35, scope: !76)
!852 = !DILocation(line: 596, column: 29, scope: !76)
!853 = !DILocation(line: 597, column: 8, scope: !245)
!854 = !DILocation(line: 597, column: 7, scope: !76)
!855 = !DILocation(line: 604, column: 24, scope: !244)
!856 = !DILocation(line: 604, column: 12, scope: !245)
!857 = !DILocation(line: 0, scope: !243)
!858 = !DILocation(line: 610, column: 16, scope: !243)
!859 = !DILocation(line: 610, column: 7, scope: !243)
!860 = !DILocation(line: 611, column: 21, scope: !243)
!861 = !{!862, !862, i64 0}
!862 = !{!"short", !762, i64 0}
!863 = !DILocation(line: 611, column: 19, scope: !243)
!864 = !DILocation(line: 611, column: 16, scope: !243)
!865 = !DILocation(line: 610, column: 30, scope: !243)
!866 = distinct !{!866, !859, !860, !867}
!867 = !{!"llvm.loop.mustprogress"}
!868 = !DILocation(line: 612, column: 18, scope: !869)
!869 = distinct !DILexicalBlock(scope: !243, file: !77, line: 612, column: 11)
!870 = !DILocation(line: 612, column: 11, scope: !243)
!871 = !DILocation(line: 620, column: 23, scope: !76)
!872 = !DILocation(line: 625, column: 39, scope: !76)
!873 = !DILocation(line: 626, column: 3, scope: !76)
!874 = !DILocation(line: 626, column: 10, scope: !76)
!875 = !DILocation(line: 626, column: 21, scope: !76)
!876 = !DILocation(line: 628, column: 44, scope: !877)
!877 = distinct !DILexicalBlock(scope: !878, file: !77, line: 628, column: 11)
!878 = distinct !DILexicalBlock(scope: !76, file: !77, line: 627, column: 5)
!879 = !DILocation(line: 628, column: 32, scope: !877)
!880 = !DILocation(line: 628, column: 49, scope: !877)
!881 = !DILocation(line: 628, column: 11, scope: !878)
!882 = !DILocation(line: 630, column: 11, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !77, line: 630, column: 11)
!884 = !DILocation(line: 630, column: 11, scope: !878)
!885 = !DILocation(line: 632, column: 26, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !77, line: 632, column: 15)
!887 = distinct !DILexicalBlock(scope: !883, file: !77, line: 631, column: 9)
!888 = !DILocation(line: 632, column: 34, scope: !886)
!889 = !DILocation(line: 632, column: 37, scope: !886)
!890 = !DILocation(line: 632, column: 15, scope: !887)
!891 = !DILocation(line: 640, column: 16, scope: !878)
!892 = distinct !{!892, !873, !893, !867}
!893 = !DILocation(line: 641, column: 5, scope: !76)
!894 = !DILocation(line: 644, column: 3, scope: !76)
!895 = !DILocation(line: 0, scope: !832, inlinedAt: !896)
!896 = distinct !DILocation(line: 648, column: 31, scope: !76)
!897 = !DILocation(line: 0, scope: !832, inlinedAt: !898)
!898 = distinct !DILocation(line: 649, column: 31, scope: !76)
!899 = !DILocation(line: 0, scope: !832, inlinedAt: !900)
!900 = distinct !DILocation(line: 650, column: 31, scope: !76)
!901 = !DILocation(line: 0, scope: !832, inlinedAt: !902)
!902 = distinct !DILocation(line: 651, column: 31, scope: !76)
!903 = !DILocation(line: 0, scope: !832, inlinedAt: !904)
!904 = distinct !DILocation(line: 652, column: 31, scope: !76)
!905 = !DILocation(line: 0, scope: !832, inlinedAt: !906)
!906 = distinct !DILocation(line: 653, column: 31, scope: !76)
!907 = !DILocation(line: 0, scope: !832, inlinedAt: !908)
!908 = distinct !DILocation(line: 654, column: 31, scope: !76)
!909 = !DILocation(line: 0, scope: !832, inlinedAt: !910)
!910 = distinct !DILocation(line: 655, column: 31, scope: !76)
!911 = !DILocation(line: 0, scope: !832, inlinedAt: !912)
!912 = distinct !DILocation(line: 656, column: 31, scope: !76)
!913 = !DILocation(line: 0, scope: !832, inlinedAt: !914)
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
!932 = !DISubprogram(name: "setlocale", scope: !933, file: !933, line: 122, type: !934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!933 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!934 = !DISubroutineType(types: !935)
!935 = !{!260, !116, !80}
!936 = !DISubprogram(name: "strncmp", scope: !937, file: !937, line: 159, type: !938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!937 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!938 = !DISubroutineType(types: !939)
!939 = !{!116, !80, !80, !118}
!940 = !DISubprogram(name: "exit", scope: !941, file: !941, line: 624, type: !750, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !805)
!941 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!942 = !DISubprogram(name: "getenv", scope: !941, file: !941, line: 641, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!943 = !DISubroutineType(types: !944)
!944 = !{!260, !80}
!945 = !DISubprogram(name: "strcmp", scope: !937, file: !937, line: 156, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!946 = !DISubroutineType(types: !947)
!947 = !{!116, !80, !80}
!948 = !DISubprogram(name: "strspn", scope: !937, file: !937, line: 297, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!949 = !DISubroutineType(types: !950)
!950 = !{!120, !80, !80}
!951 = !DISubprogram(name: "strchr", scope: !937, file: !937, line: 246, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!952 = !DISubroutineType(types: !953)
!953 = !{!260, !80, !116}
!954 = !DISubprogram(name: "__ctype_b_loc", scope: !100, file: !100, line: 79, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!955 = !DISubroutineType(types: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!960 = !DISubprogram(name: "strcspn", scope: !937, file: !937, line: 293, type: !949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!961 = !DISubprogram(name: "fwrite_unlocked", scope: !347, file: !347, line: 704, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!962 = !DISubroutineType(types: !963)
!963 = !{!118, !964, !118, !118, !810}
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
!1004 = !DILocation(line: 86, column: 39, scope: !1003)
!1005 = !DILocation(line: 86, column: 27, scope: !1003)
!1006 = !DILocation(line: 86, column: 7, scope: !1003)
!1007 = !DILocation(line: 86, column: 45, scope: !1003)
!1008 = !DILocation(line: 86, column: 7, scope: !967)
!1009 = !DILocation(line: 87, column: 5, scope: !1003)
!1010 = !DILocation(line: 90, column: 3, scope: !967)
!1011 = !DISubprogram(name: "bindtextdomain", scope: !802, file: !802, line: 86, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!260, !80, !80}
!1014 = !DISubprogram(name: "textdomain", scope: !802, file: !802, line: 82, type: !943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1015 = !DISubprogram(name: "atexit", scope: !941, file: !941, line: 602, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!116, !387}
!1018 = !DISubprogram(name: "link", scope: !1019, file: !1019, line: 819, type: !946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1019 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1020 = !DISubprogram(name: "__errno_location", scope: !1021, file: !1021, line: 37, type: !1022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1021 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!411}
!1024 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !321, file: !321, line: 50, type: !771, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1025)
!1025 = !{!1026}
!1026 = !DILocalVariable(name: "file", arg: 1, scope: !1024, file: !321, line: 50, type: !80)
!1027 = !DILocation(line: 0, scope: !1024)
!1028 = !DILocation(line: 52, column: 13, scope: !1024)
!1029 = !DILocation(line: 53, column: 1, scope: !1024)
!1030 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !321, file: !321, line: 87, type: !1031, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{null, !239}
!1033 = !{!1034}
!1034 = !DILocalVariable(name: "ignore", arg: 1, scope: !1030, file: !321, line: 87, type: !239)
!1035 = !DILocation(line: 0, scope: !1030)
!1036 = !DILocation(line: 89, column: 16, scope: !1030)
!1037 = !{!1038, !1038, i64 0}
!1038 = !{!"_Bool", !762, i64 0}
!1039 = !DILocation(line: 90, column: 1, scope: !1030)
!1040 = distinct !DISubprogram(name: "close_stdout", scope: !321, file: !321, line: 116, type: !388, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1041)
!1041 = !{!1042}
!1042 = !DILocalVariable(name: "write_error", scope: !1043, file: !321, line: 121, type: !80)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !321, line: 120, column: 5)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !321, line: 118, column: 7)
!1045 = !DILocation(line: 118, column: 21, scope: !1044)
!1046 = !DILocation(line: 118, column: 7, scope: !1044)
!1047 = !DILocation(line: 118, column: 29, scope: !1044)
!1048 = !DILocation(line: 119, column: 7, scope: !1044)
!1049 = !DILocation(line: 119, column: 12, scope: !1044)
!1050 = !{i8 0, i8 2}
!1051 = !DILocation(line: 119, column: 25, scope: !1044)
!1052 = !DILocation(line: 119, column: 28, scope: !1044)
!1053 = !DILocation(line: 119, column: 34, scope: !1044)
!1054 = !DILocation(line: 118, column: 7, scope: !1040)
!1055 = !DILocation(line: 121, column: 33, scope: !1043)
!1056 = !DILocation(line: 0, scope: !1043)
!1057 = !DILocation(line: 122, column: 11, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1043, file: !321, line: 122, column: 11)
!1059 = !DILocation(line: 0, scope: !1058)
!1060 = !DILocation(line: 122, column: 11, scope: !1043)
!1061 = !DILocation(line: 123, column: 9, scope: !1058)
!1062 = !DILocation(line: 126, column: 9, scope: !1058)
!1063 = !DILocation(line: 128, column: 14, scope: !1043)
!1064 = !DILocation(line: 128, column: 7, scope: !1043)
!1065 = !DILocation(line: 133, column: 42, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1040, file: !321, line: 133, column: 7)
!1067 = !DILocation(line: 133, column: 28, scope: !1066)
!1068 = !DILocation(line: 133, column: 50, scope: !1066)
!1069 = !DILocation(line: 133, column: 7, scope: !1040)
!1070 = !DILocation(line: 134, column: 12, scope: !1066)
!1071 = !DILocation(line: 134, column: 5, scope: !1066)
!1072 = !DILocation(line: 135, column: 1, scope: !1040)
!1073 = !DISubprogram(name: "_exit", scope: !1019, file: !1019, line: 624, type: !750, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1074 = distinct !DISubprogram(name: "verror", scope: !336, file: !336, line: 251, type: !1075, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1077)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{null, !116, !116, !80, !346}
!1077 = !{!1078, !1079, !1080, !1081}
!1078 = !DILocalVariable(name: "status", arg: 1, scope: !1074, file: !336, line: 251, type: !116)
!1079 = !DILocalVariable(name: "errnum", arg: 2, scope: !1074, file: !336, line: 251, type: !116)
!1080 = !DILocalVariable(name: "message", arg: 3, scope: !1074, file: !336, line: 251, type: !80)
!1081 = !DILocalVariable(name: "args", arg: 4, scope: !1074, file: !336, line: 251, type: !346)
!1082 = !DILocation(line: 0, scope: !1074)
!1083 = !DILocation(line: 251, column: 1, scope: !1074)
!1084 = !DILocation(line: 261, column: 3, scope: !1074)
!1085 = !DILocation(line: 265, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1074, file: !336, line: 265, column: 7)
!1087 = !DILocation(line: 265, column: 7, scope: !1074)
!1088 = !DILocation(line: 266, column: 5, scope: !1086)
!1089 = !DILocation(line: 272, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !336, line: 268, column: 5)
!1091 = !DILocation(line: 276, column: 3, scope: !1074)
!1092 = !{i64 0, i64 8, !760, i64 8, i64 8, !760, i64 16, i64 8, !760, i64 24, i64 4, !820, i64 28, i64 4, !820}
!1093 = !DILocation(line: 282, column: 1, scope: !1074)
!1094 = distinct !DISubprogram(name: "flush_stdout", scope: !336, file: !336, line: 163, type: !388, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1095)
!1095 = !{!1096}
!1096 = !DILocalVariable(name: "stdout_fd", scope: !1094, file: !336, line: 166, type: !116)
!1097 = !DILocation(line: 0, scope: !1094)
!1098 = !DILocalVariable(name: "fd", arg: 1, scope: !1099, file: !336, line: 145, type: !116)
!1099 = distinct !DISubprogram(name: "is_open", scope: !336, file: !336, line: 145, type: !1100, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1102)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!116, !116}
!1102 = !{!1098}
!1103 = !DILocation(line: 0, scope: !1099, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 182, column: 25, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1094, file: !336, line: 182, column: 7)
!1106 = !DILocation(line: 157, column: 15, scope: !1099, inlinedAt: !1104)
!1107 = !DILocation(line: 157, column: 12, scope: !1099, inlinedAt: !1104)
!1108 = !DILocation(line: 182, column: 7, scope: !1094)
!1109 = !DILocation(line: 184, column: 5, scope: !1105)
!1110 = !DILocation(line: 185, column: 1, scope: !1094)
!1111 = distinct !DISubprogram(name: "error_tail", scope: !336, file: !336, line: 219, type: !1075, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1112)
!1112 = !{!1113, !1114, !1115, !1116}
!1113 = !DILocalVariable(name: "status", arg: 1, scope: !1111, file: !336, line: 219, type: !116)
!1114 = !DILocalVariable(name: "errnum", arg: 2, scope: !1111, file: !336, line: 219, type: !116)
!1115 = !DILocalVariable(name: "message", arg: 3, scope: !1111, file: !336, line: 219, type: !80)
!1116 = !DILocalVariable(name: "args", arg: 4, scope: !1111, file: !336, line: 219, type: !346)
!1117 = !DILocation(line: 0, scope: !1111)
!1118 = !DILocation(line: 219, column: 1, scope: !1111)
!1119 = !DILocation(line: 229, column: 13, scope: !1111)
!1120 = !DILocation(line: 135, column: 10, scope: !1121, inlinedAt: !1163)
!1121 = distinct !DISubprogram(name: "vfprintf", scope: !807, file: !807, line: 132, type: !1122, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1159)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!116, !1124, !811, !348}
!1124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1127, file: !256, line: 51, baseType: !116, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1127, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1127, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1127, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1127, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1127, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1127, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1127, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1127, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1127, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1127, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1127, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1127, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1127, file: !256, line: 70, baseType: !1143, size: 64, offset: 832)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1127, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1127, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1127, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1127, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1127, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1127, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1127, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1127, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1127, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1127, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1127, file: !256, line: 93, baseType: !1143, size: 64, offset: 1344)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1127, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1127, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1127, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1127, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!1159 = !{!1160, !1161, !1162}
!1160 = !DILocalVariable(name: "__stream", arg: 1, scope: !1121, file: !807, line: 132, type: !1124)
!1161 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1121, file: !807, line: 133, type: !811)
!1162 = !DILocalVariable(name: "__ap", arg: 3, scope: !1121, file: !807, line: 133, type: !348)
!1163 = distinct !DILocation(line: 229, column: 3, scope: !1111)
!1164 = !{!1165, !1167}
!1165 = distinct !{!1165, !1166, !"vfprintf.inline: argument 0"}
!1166 = distinct !{!1166, !"vfprintf.inline"}
!1167 = distinct !{!1167, !1166, !"vfprintf.inline: argument 1"}
!1168 = !DILocation(line: 229, column: 3, scope: !1111)
!1169 = !DILocation(line: 0, scope: !1121, inlinedAt: !1163)
!1170 = !DILocation(line: 133, column: 49, scope: !1121, inlinedAt: !1163)
!1171 = !DILocation(line: 232, column: 3, scope: !1111)
!1172 = !DILocation(line: 233, column: 7, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1111, file: !336, line: 233, column: 7)
!1174 = !DILocation(line: 233, column: 7, scope: !1111)
!1175 = !DILocalVariable(name: "errnum", arg: 1, scope: !1176, file: !336, line: 188, type: !116)
!1176 = distinct !DISubprogram(name: "print_errno_message", scope: !336, file: !336, line: 188, type: !750, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1177)
!1177 = !{!1175, !1178, !1179}
!1178 = !DILocalVariable(name: "s", scope: !1176, file: !336, line: 190, type: !80)
!1179 = !DILocalVariable(name: "errbuf", scope: !1176, file: !336, line: 193, type: !1180)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1181)
!1181 = !{!1182}
!1182 = !DISubrange(count: 1024)
!1183 = !DILocation(line: 0, scope: !1176, inlinedAt: !1184)
!1184 = distinct !DILocation(line: 234, column: 5, scope: !1173)
!1185 = !DILocation(line: 193, column: 3, scope: !1176, inlinedAt: !1184)
!1186 = !DILocation(line: 193, column: 8, scope: !1176, inlinedAt: !1184)
!1187 = !DILocation(line: 195, column: 7, scope: !1176, inlinedAt: !1184)
!1188 = !DILocation(line: 207, column: 9, scope: !1189, inlinedAt: !1184)
!1189 = distinct !DILexicalBlock(scope: !1176, file: !336, line: 207, column: 7)
!1190 = !DILocation(line: 207, column: 7, scope: !1176, inlinedAt: !1184)
!1191 = !DILocation(line: 208, column: 9, scope: !1189, inlinedAt: !1184)
!1192 = !DILocation(line: 208, column: 5, scope: !1189, inlinedAt: !1184)
!1193 = !DILocation(line: 214, column: 3, scope: !1176, inlinedAt: !1184)
!1194 = !DILocation(line: 216, column: 1, scope: !1176, inlinedAt: !1184)
!1195 = !DILocation(line: 234, column: 5, scope: !1173)
!1196 = !DILocation(line: 238, column: 3, scope: !1111)
!1197 = !DILocalVariable(name: "__c", arg: 1, scope: !1198, file: !1199, line: 101, type: !116)
!1198 = distinct !DISubprogram(name: "putc_unlocked", scope: !1199, file: !1199, line: 101, type: !1200, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1202)
!1199 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!116, !116, !1125}
!1202 = !{!1197, !1203}
!1203 = !DILocalVariable(name: "__stream", arg: 2, scope: !1198, file: !1199, line: 101, type: !1125)
!1204 = !DILocation(line: 0, scope: !1198, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 238, column: 3, scope: !1111)
!1206 = !DILocation(line: 103, column: 10, scope: !1198, inlinedAt: !1205)
!1207 = !{!1208, !761, i64 40}
!1208 = !{!"_IO_FILE", !821, i64 0, !761, i64 8, !761, i64 16, !761, i64 24, !761, i64 32, !761, i64 40, !761, i64 48, !761, i64 56, !761, i64 64, !761, i64 72, !761, i64 80, !761, i64 88, !761, i64 96, !761, i64 104, !821, i64 112, !821, i64 116, !1209, i64 120, !862, i64 128, !762, i64 130, !762, i64 131, !761, i64 136, !1209, i64 144, !761, i64 152, !761, i64 160, !761, i64 168, !761, i64 176, !1209, i64 184, !821, i64 192, !762, i64 196}
!1209 = !{!"long", !762, i64 0}
!1210 = !{!1208, !761, i64 48}
!1211 = !{!"branch_weights", i32 2000, i32 1}
!1212 = !DILocation(line: 240, column: 3, scope: !1111)
!1213 = !DILocation(line: 241, column: 7, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1111, file: !336, line: 241, column: 7)
!1215 = !DILocation(line: 241, column: 7, scope: !1111)
!1216 = !DILocation(line: 242, column: 5, scope: !1214)
!1217 = !DILocation(line: 243, column: 1, scope: !1111)
!1218 = !DISubprogram(name: "__vfprintf_chk", scope: !807, file: !807, line: 96, type: !1219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!116, !1124, !116, !811, !348}
!1221 = !DISubprogram(name: "strerror_r", scope: !937, file: !937, line: 444, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!260, !116, !260, !118}
!1224 = !DISubprogram(name: "__overflow", scope: !347, file: !347, line: 886, type: !1225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!116, !1125, !116}
!1227 = !DISubprogram(name: "fflush_unlocked", scope: !347, file: !347, line: 239, type: !1228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!116, !1125}
!1230 = !DISubprogram(name: "fcntl", scope: !1231, file: !1231, line: 149, type: !1232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1231 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!116, !116, !116, null}
!1234 = distinct !DISubprogram(name: "error", scope: !336, file: !336, line: 285, type: !1235, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !116, !116, !80, null}
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DILocalVariable(name: "status", arg: 1, scope: !1234, file: !336, line: 285, type: !116)
!1239 = !DILocalVariable(name: "errnum", arg: 2, scope: !1234, file: !336, line: 285, type: !116)
!1240 = !DILocalVariable(name: "message", arg: 3, scope: !1234, file: !336, line: 285, type: !80)
!1241 = !DILocalVariable(name: "ap", scope: !1234, file: !336, line: 287, type: !346)
!1242 = !DILocation(line: 0, scope: !1234)
!1243 = !DILocation(line: 287, column: 3, scope: !1234)
!1244 = !DILocation(line: 287, column: 11, scope: !1234)
!1245 = !DILocation(line: 288, column: 3, scope: !1234)
!1246 = !DILocation(line: 289, column: 3, scope: !1234)
!1247 = !DILocation(line: 290, column: 3, scope: !1234)
!1248 = !DILocation(line: 291, column: 1, scope: !1234)
!1249 = !DILocation(line: 0, scope: !343)
!1250 = !DILocation(line: 298, column: 1, scope: !343)
!1251 = !DILocation(line: 302, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !343, file: !336, line: 302, column: 7)
!1253 = !DILocation(line: 302, column: 7, scope: !343)
!1254 = !DILocation(line: 307, column: 11, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !336, line: 307, column: 11)
!1256 = distinct !DILexicalBlock(scope: !1252, file: !336, line: 303, column: 5)
!1257 = !DILocation(line: 307, column: 27, scope: !1255)
!1258 = !DILocation(line: 308, column: 11, scope: !1255)
!1259 = !DILocation(line: 308, column: 28, scope: !1255)
!1260 = !DILocation(line: 308, column: 25, scope: !1255)
!1261 = !DILocation(line: 309, column: 15, scope: !1255)
!1262 = !DILocation(line: 309, column: 33, scope: !1255)
!1263 = !DILocation(line: 310, column: 19, scope: !1255)
!1264 = !DILocation(line: 311, column: 22, scope: !1255)
!1265 = !DILocation(line: 311, column: 56, scope: !1255)
!1266 = !DILocation(line: 307, column: 11, scope: !1256)
!1267 = !DILocation(line: 316, column: 21, scope: !1256)
!1268 = !DILocation(line: 317, column: 23, scope: !1256)
!1269 = !DILocation(line: 318, column: 5, scope: !1256)
!1270 = !DILocation(line: 327, column: 3, scope: !343)
!1271 = !DILocation(line: 331, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !343, file: !336, line: 331, column: 7)
!1273 = !DILocation(line: 331, column: 7, scope: !343)
!1274 = !DILocation(line: 332, column: 5, scope: !1272)
!1275 = !DILocation(line: 338, column: 7, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1272, file: !336, line: 334, column: 5)
!1277 = !DILocation(line: 346, column: 3, scope: !343)
!1278 = !DILocation(line: 350, column: 3, scope: !343)
!1279 = !DILocation(line: 356, column: 1, scope: !343)
!1280 = distinct !DISubprogram(name: "error_at_line", scope: !336, file: !336, line: 359, type: !1281, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1283)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null, !116, !116, !80, !86, !80, null}
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289}
!1284 = !DILocalVariable(name: "status", arg: 1, scope: !1280, file: !336, line: 359, type: !116)
!1285 = !DILocalVariable(name: "errnum", arg: 2, scope: !1280, file: !336, line: 359, type: !116)
!1286 = !DILocalVariable(name: "file_name", arg: 3, scope: !1280, file: !336, line: 359, type: !80)
!1287 = !DILocalVariable(name: "line_number", arg: 4, scope: !1280, file: !336, line: 360, type: !86)
!1288 = !DILocalVariable(name: "message", arg: 5, scope: !1280, file: !336, line: 360, type: !80)
!1289 = !DILocalVariable(name: "ap", scope: !1280, file: !336, line: 362, type: !346)
!1290 = !DILocation(line: 0, scope: !1280)
!1291 = !DILocation(line: 362, column: 3, scope: !1280)
!1292 = !DILocation(line: 362, column: 11, scope: !1280)
!1293 = !DILocation(line: 363, column: 3, scope: !1280)
!1294 = !DILocation(line: 364, column: 3, scope: !1280)
!1295 = !DILocation(line: 366, column: 3, scope: !1280)
!1296 = !DILocation(line: 367, column: 1, scope: !1280)
!1297 = distinct !DISubprogram(name: "getprogname", scope: !680, file: !680, line: 54, type: !1298, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !679, retainedNodes: !805)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!80}
!1300 = !DILocation(line: 58, column: 10, scope: !1297)
!1301 = !DILocation(line: 58, column: 3, scope: !1297)
!1302 = distinct !DISubprogram(name: "parse_long_options", scope: !392, file: !392, line: 45, type: !1303, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1306)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !116, !970, !80, !80, !80, !1305, null}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!1306 = !{!1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1317}
!1307 = !DILocalVariable(name: "argc", arg: 1, scope: !1302, file: !392, line: 45, type: !116)
!1308 = !DILocalVariable(name: "argv", arg: 2, scope: !1302, file: !392, line: 46, type: !970)
!1309 = !DILocalVariable(name: "command_name", arg: 3, scope: !1302, file: !392, line: 47, type: !80)
!1310 = !DILocalVariable(name: "package", arg: 4, scope: !1302, file: !392, line: 48, type: !80)
!1311 = !DILocalVariable(name: "version", arg: 5, scope: !1302, file: !392, line: 49, type: !80)
!1312 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1302, file: !392, line: 50, type: !1305)
!1313 = !DILocalVariable(name: "saved_opterr", scope: !1302, file: !392, line: 53, type: !116)
!1314 = !DILocalVariable(name: "c", scope: !1315, file: !392, line: 60, type: !116)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !392, line: 59, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1302, file: !392, line: 58, column: 7)
!1317 = !DILocalVariable(name: "authors", scope: !1318, file: !392, line: 71, type: !1322)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !392, line: 70, column: 15)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !392, line: 64, column: 13)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !392, line: 62, column: 9)
!1321 = distinct !DILexicalBlock(scope: !1315, file: !392, line: 61, column: 11)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !347, line: 52, baseType: !1323)
!1323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !349, line: 14, baseType: !1324)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1325, baseType: !1326)
!1325 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331, !1332}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1326, file: !1325, line: 71, baseType: !115, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1326, file: !1325, line: 71, baseType: !115, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1326, file: !1325, line: 71, baseType: !115, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1326, file: !1325, line: 71, baseType: !116, size: 32, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1326, file: !1325, line: 71, baseType: !116, size: 32, offset: 224)
!1333 = !DILocation(line: 0, scope: !1302)
!1334 = !DILocation(line: 53, column: 22, scope: !1302)
!1335 = !DILocation(line: 56, column: 10, scope: !1302)
!1336 = !DILocation(line: 58, column: 12, scope: !1316)
!1337 = !DILocation(line: 58, column: 7, scope: !1302)
!1338 = !DILocation(line: 60, column: 15, scope: !1315)
!1339 = !DILocation(line: 0, scope: !1315)
!1340 = !DILocation(line: 61, column: 11, scope: !1315)
!1341 = !DILocation(line: 66, column: 15, scope: !1319)
!1342 = !DILocation(line: 67, column: 15, scope: !1319)
!1343 = !DILocation(line: 71, column: 17, scope: !1318)
!1344 = !DILocation(line: 71, column: 25, scope: !1318)
!1345 = !DILocation(line: 72, column: 17, scope: !1318)
!1346 = !DILocation(line: 73, column: 33, scope: !1318)
!1347 = !DILocation(line: 73, column: 17, scope: !1318)
!1348 = !DILocation(line: 74, column: 17, scope: !1318)
!1349 = !DILocation(line: 85, column: 10, scope: !1302)
!1350 = !DILocation(line: 89, column: 10, scope: !1302)
!1351 = !DILocation(line: 90, column: 1, scope: !1302)
!1352 = !DISubprogram(name: "getopt_long", scope: !406, file: !406, line: 66, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!116, !116, !1355, !80, !1357, !411}
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1358 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !392, file: !392, line: 98, type: !1359, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !1361)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{null, !116, !970, !80, !80, !80, !239, !1305, null}
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372}
!1362 = !DILocalVariable(name: "argc", arg: 1, scope: !1358, file: !392, line: 98, type: !116)
!1363 = !DILocalVariable(name: "argv", arg: 2, scope: !1358, file: !392, line: 99, type: !970)
!1364 = !DILocalVariable(name: "command_name", arg: 3, scope: !1358, file: !392, line: 100, type: !80)
!1365 = !DILocalVariable(name: "package", arg: 4, scope: !1358, file: !392, line: 101, type: !80)
!1366 = !DILocalVariable(name: "version", arg: 5, scope: !1358, file: !392, line: 102, type: !80)
!1367 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1358, file: !392, line: 103, type: !239)
!1368 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1358, file: !392, line: 104, type: !1305)
!1369 = !DILocalVariable(name: "saved_opterr", scope: !1358, file: !392, line: 107, type: !116)
!1370 = !DILocalVariable(name: "optstring", scope: !1358, file: !392, line: 112, type: !80)
!1371 = !DILocalVariable(name: "c", scope: !1358, file: !392, line: 114, type: !116)
!1372 = !DILocalVariable(name: "authors", scope: !1373, file: !392, line: 125, type: !1322)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !392, line: 124, column: 11)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !392, line: 118, column: 9)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !392, line: 116, column: 5)
!1376 = distinct !DILexicalBlock(scope: !1358, file: !392, line: 115, column: 7)
!1377 = !DILocation(line: 0, scope: !1358)
!1378 = !DILocation(line: 107, column: 22, scope: !1358)
!1379 = !DILocation(line: 110, column: 10, scope: !1358)
!1380 = !DILocation(line: 112, column: 27, scope: !1358)
!1381 = !DILocation(line: 114, column: 11, scope: !1358)
!1382 = !DILocation(line: 115, column: 7, scope: !1358)
!1383 = !DILocation(line: 125, column: 13, scope: !1373)
!1384 = !DILocation(line: 125, column: 21, scope: !1373)
!1385 = !DILocation(line: 126, column: 13, scope: !1373)
!1386 = !DILocation(line: 127, column: 29, scope: !1373)
!1387 = !DILocation(line: 127, column: 13, scope: !1373)
!1388 = !DILocation(line: 128, column: 13, scope: !1373)
!1389 = !DILocation(line: 132, column: 26, scope: !1374)
!1390 = !DILocation(line: 133, column: 11, scope: !1374)
!1391 = !DILocation(line: 0, scope: !1374)
!1392 = !DILocation(line: 138, column: 10, scope: !1358)
!1393 = !DILocation(line: 139, column: 1, scope: !1358)
!1394 = distinct !DISubprogram(name: "set_program_name", scope: !416, file: !416, line: 37, type: !771, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DILocalVariable(name: "argv0", arg: 1, scope: !1394, file: !416, line: 37, type: !80)
!1397 = !DILocalVariable(name: "slash", scope: !1394, file: !416, line: 44, type: !80)
!1398 = !DILocalVariable(name: "base", scope: !1394, file: !416, line: 45, type: !80)
!1399 = !DILocation(line: 0, scope: !1394)
!1400 = !DILocation(line: 44, column: 23, scope: !1394)
!1401 = !DILocation(line: 45, column: 22, scope: !1394)
!1402 = !DILocation(line: 46, column: 17, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1394, file: !416, line: 46, column: 7)
!1404 = !DILocation(line: 46, column: 9, scope: !1403)
!1405 = !DILocation(line: 46, column: 25, scope: !1403)
!1406 = !DILocation(line: 46, column: 40, scope: !1403)
!1407 = !DILocalVariable(name: "__s1", arg: 1, scope: !1408, file: !833, line: 974, type: !965)
!1408 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1409, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!239, !965, !965, !118}
!1411 = !{!1407, !1412, !1413}
!1412 = !DILocalVariable(name: "__s2", arg: 2, scope: !1408, file: !833, line: 974, type: !965)
!1413 = !DILocalVariable(name: "__n", arg: 3, scope: !1408, file: !833, line: 974, type: !118)
!1414 = !DILocation(line: 0, scope: !1408, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 46, column: 28, scope: !1403)
!1416 = !DILocation(line: 976, column: 11, scope: !1408, inlinedAt: !1415)
!1417 = !DILocation(line: 976, column: 10, scope: !1408, inlinedAt: !1415)
!1418 = !DILocation(line: 46, column: 7, scope: !1394)
!1419 = !DILocation(line: 49, column: 11, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !416, line: 49, column: 11)
!1421 = distinct !DILexicalBlock(scope: !1403, file: !416, line: 47, column: 5)
!1422 = !DILocation(line: 49, column: 36, scope: !1420)
!1423 = !DILocation(line: 49, column: 11, scope: !1421)
!1424 = !DILocation(line: 65, column: 16, scope: !1394)
!1425 = !DILocation(line: 71, column: 27, scope: !1394)
!1426 = !DILocation(line: 74, column: 33, scope: !1394)
!1427 = !DILocation(line: 76, column: 1, scope: !1394)
!1428 = !DISubprogram(name: "strrchr", scope: !937, file: !937, line: 273, type: !952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1429 = !DILocation(line: 0, scope: !425)
!1430 = !DILocation(line: 40, column: 29, scope: !425)
!1431 = !DILocation(line: 41, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !425, file: !426, line: 41, column: 7)
!1433 = !DILocation(line: 41, column: 7, scope: !425)
!1434 = !DILocation(line: 47, column: 3, scope: !425)
!1435 = !DILocation(line: 48, column: 3, scope: !425)
!1436 = !DILocation(line: 48, column: 13, scope: !425)
!1437 = !DILocalVariable(name: "ps", arg: 1, scope: !1438, file: !1439, line: 1135, type: !1442)
!1438 = distinct !DISubprogram(name: "mbszero", scope: !1439, file: !1439, line: 1135, type: !1440, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1443)
!1439 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1442}
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1443 = !{!1437}
!1444 = !DILocation(line: 0, scope: !1438, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 48, column: 18, scope: !425)
!1446 = !DILocalVariable(name: "__dest", arg: 1, scope: !1447, file: !1448, line: 57, type: !115)
!1447 = distinct !DISubprogram(name: "memset", scope: !1448, file: !1448, line: 57, type: !1449, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1451)
!1448 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!115, !115, !116, !118}
!1451 = !{!1446, !1452, !1453}
!1452 = !DILocalVariable(name: "__ch", arg: 2, scope: !1447, file: !1448, line: 57, type: !116)
!1453 = !DILocalVariable(name: "__len", arg: 3, scope: !1447, file: !1448, line: 57, type: !118)
!1454 = !DILocation(line: 0, scope: !1447, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 1137, column: 3, scope: !1438, inlinedAt: !1445)
!1456 = !DILocation(line: 59, column: 10, scope: !1447, inlinedAt: !1455)
!1457 = !DILocation(line: 49, column: 7, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !425, file: !426, line: 49, column: 7)
!1459 = !DILocation(line: 49, column: 39, scope: !1458)
!1460 = !DILocation(line: 49, column: 44, scope: !1458)
!1461 = !DILocation(line: 54, column: 1, scope: !425)
!1462 = !DISubprogram(name: "mbrtoc32", scope: !437, file: !437, line: 57, type: !1463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!118, !1465, !811, !118, !1467}
!1465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1442)
!1468 = distinct !DISubprogram(name: "clone_quoting_options", scope: !456, file: !456, line: 113, type: !1469, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1472)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1471, !1471}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!1472 = !{!1473, !1474, !1475}
!1473 = !DILocalVariable(name: "o", arg: 1, scope: !1468, file: !456, line: 113, type: !1471)
!1474 = !DILocalVariable(name: "saved_errno", scope: !1468, file: !456, line: 115, type: !116)
!1475 = !DILocalVariable(name: "p", scope: !1468, file: !456, line: 116, type: !1471)
!1476 = !DILocation(line: 0, scope: !1468)
!1477 = !DILocation(line: 115, column: 21, scope: !1468)
!1478 = !DILocation(line: 116, column: 40, scope: !1468)
!1479 = !DILocation(line: 116, column: 31, scope: !1468)
!1480 = !DILocation(line: 118, column: 9, scope: !1468)
!1481 = !DILocation(line: 119, column: 3, scope: !1468)
!1482 = distinct !DISubprogram(name: "get_quoting_style", scope: !456, file: !456, line: 124, type: !1483, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1487)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!84, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!1487 = !{!1488}
!1488 = !DILocalVariable(name: "o", arg: 1, scope: !1482, file: !456, line: 124, type: !1485)
!1489 = !DILocation(line: 0, scope: !1482)
!1490 = !DILocation(line: 126, column: 11, scope: !1482)
!1491 = !DILocation(line: 126, column: 46, scope: !1482)
!1492 = !{!1493, !762, i64 0}
!1493 = !{!"quoting_options", !762, i64 0, !821, i64 4, !762, i64 8, !761, i64 40, !761, i64 48}
!1494 = !DILocation(line: 126, column: 3, scope: !1482)
!1495 = distinct !DISubprogram(name: "set_quoting_style", scope: !456, file: !456, line: 132, type: !1496, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1498)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !1471, !84}
!1498 = !{!1499, !1500}
!1499 = !DILocalVariable(name: "o", arg: 1, scope: !1495, file: !456, line: 132, type: !1471)
!1500 = !DILocalVariable(name: "s", arg: 2, scope: !1495, file: !456, line: 132, type: !84)
!1501 = !DILocation(line: 0, scope: !1495)
!1502 = !DILocation(line: 134, column: 4, scope: !1495)
!1503 = !DILocation(line: 134, column: 45, scope: !1495)
!1504 = !DILocation(line: 135, column: 1, scope: !1495)
!1505 = distinct !DISubprogram(name: "set_char_quoting", scope: !456, file: !456, line: 143, type: !1506, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!116, !1471, !4, !116}
!1508 = !{!1509, !1510, !1511, !1512, !1513, !1515, !1516}
!1509 = !DILocalVariable(name: "o", arg: 1, scope: !1505, file: !456, line: 143, type: !1471)
!1510 = !DILocalVariable(name: "c", arg: 2, scope: !1505, file: !456, line: 143, type: !4)
!1511 = !DILocalVariable(name: "i", arg: 3, scope: !1505, file: !456, line: 143, type: !116)
!1512 = !DILocalVariable(name: "uc", scope: !1505, file: !456, line: 145, type: !121)
!1513 = !DILocalVariable(name: "p", scope: !1505, file: !456, line: 146, type: !1514)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1515 = !DILocalVariable(name: "shift", scope: !1505, file: !456, line: 148, type: !116)
!1516 = !DILocalVariable(name: "r", scope: !1505, file: !456, line: 149, type: !86)
!1517 = !DILocation(line: 0, scope: !1505)
!1518 = !DILocation(line: 147, column: 6, scope: !1505)
!1519 = !DILocation(line: 147, column: 41, scope: !1505)
!1520 = !DILocation(line: 147, column: 62, scope: !1505)
!1521 = !DILocation(line: 147, column: 57, scope: !1505)
!1522 = !DILocation(line: 148, column: 15, scope: !1505)
!1523 = !DILocation(line: 149, column: 21, scope: !1505)
!1524 = !DILocation(line: 149, column: 24, scope: !1505)
!1525 = !DILocation(line: 149, column: 34, scope: !1505)
!1526 = !DILocation(line: 150, column: 19, scope: !1505)
!1527 = !DILocation(line: 150, column: 24, scope: !1505)
!1528 = !DILocation(line: 150, column: 6, scope: !1505)
!1529 = !DILocation(line: 151, column: 3, scope: !1505)
!1530 = distinct !DISubprogram(name: "set_quoting_flags", scope: !456, file: !456, line: 159, type: !1531, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!116, !1471, !116}
!1533 = !{!1534, !1535, !1536}
!1534 = !DILocalVariable(name: "o", arg: 1, scope: !1530, file: !456, line: 159, type: !1471)
!1535 = !DILocalVariable(name: "i", arg: 2, scope: !1530, file: !456, line: 159, type: !116)
!1536 = !DILocalVariable(name: "r", scope: !1530, file: !456, line: 163, type: !116)
!1537 = !DILocation(line: 0, scope: !1530)
!1538 = !DILocation(line: 161, column: 8, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !456, line: 161, column: 7)
!1540 = !DILocation(line: 161, column: 7, scope: !1530)
!1541 = !DILocation(line: 163, column: 14, scope: !1530)
!1542 = !{!1493, !821, i64 4}
!1543 = !DILocation(line: 164, column: 12, scope: !1530)
!1544 = !DILocation(line: 165, column: 3, scope: !1530)
!1545 = distinct !DISubprogram(name: "set_custom_quoting", scope: !456, file: !456, line: 169, type: !1546, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !1471, !80, !80}
!1548 = !{!1549, !1550, !1551}
!1549 = !DILocalVariable(name: "o", arg: 1, scope: !1545, file: !456, line: 169, type: !1471)
!1550 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1545, file: !456, line: 170, type: !80)
!1551 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1545, file: !456, line: 170, type: !80)
!1552 = !DILocation(line: 0, scope: !1545)
!1553 = !DILocation(line: 172, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !456, line: 172, column: 7)
!1555 = !DILocation(line: 172, column: 7, scope: !1545)
!1556 = !DILocation(line: 174, column: 12, scope: !1545)
!1557 = !DILocation(line: 175, column: 8, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1545, file: !456, line: 175, column: 7)
!1559 = !DILocation(line: 175, column: 19, scope: !1558)
!1560 = !DILocation(line: 176, column: 5, scope: !1558)
!1561 = !DILocation(line: 177, column: 6, scope: !1545)
!1562 = !DILocation(line: 177, column: 17, scope: !1545)
!1563 = !{!1493, !761, i64 40}
!1564 = !DILocation(line: 178, column: 6, scope: !1545)
!1565 = !DILocation(line: 178, column: 18, scope: !1545)
!1566 = !{!1493, !761, i64 48}
!1567 = !DILocation(line: 179, column: 1, scope: !1545)
!1568 = !DISubprogram(name: "abort", scope: !941, file: !941, line: 598, type: !388, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !805)
!1569 = distinct !DISubprogram(name: "quotearg_buffer", scope: !456, file: !456, line: 774, type: !1570, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1572)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!118, !260, !118, !80, !118, !1485}
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580}
!1573 = !DILocalVariable(name: "buffer", arg: 1, scope: !1569, file: !456, line: 774, type: !260)
!1574 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1569, file: !456, line: 774, type: !118)
!1575 = !DILocalVariable(name: "arg", arg: 3, scope: !1569, file: !456, line: 775, type: !80)
!1576 = !DILocalVariable(name: "argsize", arg: 4, scope: !1569, file: !456, line: 775, type: !118)
!1577 = !DILocalVariable(name: "o", arg: 5, scope: !1569, file: !456, line: 776, type: !1485)
!1578 = !DILocalVariable(name: "p", scope: !1569, file: !456, line: 778, type: !1485)
!1579 = !DILocalVariable(name: "saved_errno", scope: !1569, file: !456, line: 779, type: !116)
!1580 = !DILocalVariable(name: "r", scope: !1569, file: !456, line: 780, type: !118)
!1581 = !DILocation(line: 0, scope: !1569)
!1582 = !DILocation(line: 778, column: 37, scope: !1569)
!1583 = !DILocation(line: 779, column: 21, scope: !1569)
!1584 = !DILocation(line: 781, column: 43, scope: !1569)
!1585 = !DILocation(line: 781, column: 53, scope: !1569)
!1586 = !DILocation(line: 781, column: 63, scope: !1569)
!1587 = !DILocation(line: 782, column: 43, scope: !1569)
!1588 = !DILocation(line: 782, column: 58, scope: !1569)
!1589 = !DILocation(line: 780, column: 14, scope: !1569)
!1590 = !DILocation(line: 783, column: 9, scope: !1569)
!1591 = !DILocation(line: 784, column: 3, scope: !1569)
!1592 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !456, file: !456, line: 251, type: !1593, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1597)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!118, !260, !118, !80, !118, !84, !116, !1595, !80, !80}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1622, !1624, !1627, !1628, !1629, !1630, !1633, !1634, !1637, !1641, !1642, !1650, !1653, !1654, !1656, !1657, !1658, !1659}
!1598 = !DILocalVariable(name: "buffer", arg: 1, scope: !1592, file: !456, line: 251, type: !260)
!1599 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1592, file: !456, line: 251, type: !118)
!1600 = !DILocalVariable(name: "arg", arg: 3, scope: !1592, file: !456, line: 252, type: !80)
!1601 = !DILocalVariable(name: "argsize", arg: 4, scope: !1592, file: !456, line: 252, type: !118)
!1602 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1592, file: !456, line: 253, type: !84)
!1603 = !DILocalVariable(name: "flags", arg: 6, scope: !1592, file: !456, line: 253, type: !116)
!1604 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1592, file: !456, line: 254, type: !1595)
!1605 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1592, file: !456, line: 255, type: !80)
!1606 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1592, file: !456, line: 256, type: !80)
!1607 = !DILocalVariable(name: "unibyte_locale", scope: !1592, file: !456, line: 258, type: !239)
!1608 = !DILocalVariable(name: "len", scope: !1592, file: !456, line: 260, type: !118)
!1609 = !DILocalVariable(name: "orig_buffersize", scope: !1592, file: !456, line: 261, type: !118)
!1610 = !DILocalVariable(name: "quote_string", scope: !1592, file: !456, line: 262, type: !80)
!1611 = !DILocalVariable(name: "quote_string_len", scope: !1592, file: !456, line: 263, type: !118)
!1612 = !DILocalVariable(name: "backslash_escapes", scope: !1592, file: !456, line: 264, type: !239)
!1613 = !DILocalVariable(name: "elide_outer_quotes", scope: !1592, file: !456, line: 265, type: !239)
!1614 = !DILocalVariable(name: "encountered_single_quote", scope: !1592, file: !456, line: 266, type: !239)
!1615 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1592, file: !456, line: 267, type: !239)
!1616 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1592, file: !456, line: 309, type: !239)
!1617 = !DILocalVariable(name: "lq", scope: !1618, file: !456, line: 361, type: !80)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !456, line: 361, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !456, line: 360, column: 13)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !456, line: 333, column: 7)
!1621 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 312, column: 5)
!1622 = !DILocalVariable(name: "i", scope: !1623, file: !456, line: 395, type: !118)
!1623 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 395, column: 3)
!1624 = !DILocalVariable(name: "is_right_quote", scope: !1625, file: !456, line: 397, type: !239)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !456, line: 396, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !456, line: 395, column: 3)
!1627 = !DILocalVariable(name: "escaping", scope: !1625, file: !456, line: 398, type: !239)
!1628 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1625, file: !456, line: 399, type: !239)
!1629 = !DILocalVariable(name: "c", scope: !1625, file: !456, line: 417, type: !121)
!1630 = !DILocalVariable(name: "m", scope: !1631, file: !456, line: 598, type: !118)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 596, column: 11)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 419, column: 9)
!1633 = !DILocalVariable(name: "printable", scope: !1631, file: !456, line: 600, type: !239)
!1634 = !DILocalVariable(name: "mbs", scope: !1635, file: !456, line: 609, type: !529)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !456, line: 608, column: 15)
!1636 = distinct !DILexicalBlock(scope: !1631, file: !456, line: 602, column: 17)
!1637 = !DILocalVariable(name: "w", scope: !1638, file: !456, line: 618, type: !436)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !456, line: 617, column: 19)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !456, line: 616, column: 17)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !456, line: 616, column: 17)
!1641 = !DILocalVariable(name: "bytes", scope: !1638, file: !456, line: 619, type: !118)
!1642 = !DILocalVariable(name: "j", scope: !1643, file: !456, line: 648, type: !118)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !456, line: 648, column: 29)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !456, line: 647, column: 27)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !456, line: 645, column: 29)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !456, line: 636, column: 23)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !456, line: 628, column: 30)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !456, line: 623, column: 30)
!1649 = distinct !DILexicalBlock(scope: !1638, file: !456, line: 621, column: 25)
!1650 = !DILocalVariable(name: "ilim", scope: !1651, file: !456, line: 674, type: !118)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !456, line: 671, column: 15)
!1652 = distinct !DILexicalBlock(scope: !1631, file: !456, line: 670, column: 17)
!1653 = !DILabel(scope: !1592, name: "process_input", file: !456, line: 308)
!1654 = !DILabel(scope: !1655, name: "c_and_shell_escape", file: !456, line: 502)
!1655 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 478, column: 9)
!1656 = !DILabel(scope: !1655, name: "c_escape", file: !456, line: 507)
!1657 = !DILabel(scope: !1625, name: "store_escape", file: !456, line: 709)
!1658 = !DILabel(scope: !1625, name: "store_c", file: !456, line: 712)
!1659 = !DILabel(scope: !1592, name: "force_outer_quoting_style", file: !456, line: 753)
!1660 = !DILocation(line: 0, scope: !1592)
!1661 = !DILocation(line: 258, column: 25, scope: !1592)
!1662 = !DILocation(line: 258, column: 36, scope: !1592)
!1663 = !DILocation(line: 267, column: 3, scope: !1592)
!1664 = !DILocation(line: 261, column: 10, scope: !1592)
!1665 = !DILocation(line: 262, column: 15, scope: !1592)
!1666 = !DILocation(line: 263, column: 10, scope: !1592)
!1667 = !DILocation(line: 308, column: 2, scope: !1592)
!1668 = !DILocation(line: 311, column: 3, scope: !1592)
!1669 = !DILocation(line: 318, column: 11, scope: !1621)
!1670 = !DILocation(line: 319, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !456, line: 319, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !456, line: 319, column: 9)
!1673 = distinct !DILexicalBlock(scope: !1621, file: !456, line: 318, column: 11)
!1674 = !DILocation(line: 319, column: 9, scope: !1672)
!1675 = !DILocation(line: 0, scope: !520, inlinedAt: !1676)
!1676 = distinct !DILocation(line: 357, column: 26, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !456, line: 335, column: 11)
!1678 = distinct !DILexicalBlock(scope: !1620, file: !456, line: 334, column: 13)
!1679 = !DILocation(line: 199, column: 29, scope: !520, inlinedAt: !1676)
!1680 = !DILocation(line: 201, column: 19, scope: !1681, inlinedAt: !1676)
!1681 = distinct !DILexicalBlock(scope: !520, file: !456, line: 201, column: 7)
!1682 = !DILocation(line: 201, column: 7, scope: !520, inlinedAt: !1676)
!1683 = !DILocation(line: 229, column: 3, scope: !520, inlinedAt: !1676)
!1684 = !DILocation(line: 230, column: 3, scope: !520, inlinedAt: !1676)
!1685 = !DILocation(line: 230, column: 13, scope: !520, inlinedAt: !1676)
!1686 = !DILocalVariable(name: "ps", arg: 1, scope: !1687, file: !1439, line: 1135, type: !1690)
!1687 = distinct !DISubprogram(name: "mbszero", scope: !1439, file: !1439, line: 1135, type: !1688, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1691)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{null, !1690}
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1691 = !{!1686}
!1692 = !DILocation(line: 0, scope: !1687, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 230, column: 18, scope: !520, inlinedAt: !1676)
!1694 = !DILocalVariable(name: "__dest", arg: 1, scope: !1695, file: !1448, line: 57, type: !115)
!1695 = distinct !DISubprogram(name: "memset", scope: !1448, file: !1448, line: 57, type: !1449, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1696)
!1696 = !{!1694, !1697, !1698}
!1697 = !DILocalVariable(name: "__ch", arg: 2, scope: !1695, file: !1448, line: 57, type: !116)
!1698 = !DILocalVariable(name: "__len", arg: 3, scope: !1695, file: !1448, line: 57, type: !118)
!1699 = !DILocation(line: 0, scope: !1695, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 1137, column: 3, scope: !1687, inlinedAt: !1693)
!1701 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !1700)
!1702 = !DILocation(line: 231, column: 7, scope: !1703, inlinedAt: !1676)
!1703 = distinct !DILexicalBlock(scope: !520, file: !456, line: 231, column: 7)
!1704 = !DILocation(line: 231, column: 40, scope: !1703, inlinedAt: !1676)
!1705 = !DILocation(line: 231, column: 45, scope: !1703, inlinedAt: !1676)
!1706 = !DILocation(line: 235, column: 1, scope: !520, inlinedAt: !1676)
!1707 = !DILocation(line: 0, scope: !520, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 358, column: 27, scope: !1677)
!1709 = !DILocation(line: 199, column: 29, scope: !520, inlinedAt: !1708)
!1710 = !DILocation(line: 201, column: 19, scope: !1681, inlinedAt: !1708)
!1711 = !DILocation(line: 201, column: 7, scope: !520, inlinedAt: !1708)
!1712 = !DILocation(line: 229, column: 3, scope: !520, inlinedAt: !1708)
!1713 = !DILocation(line: 230, column: 3, scope: !520, inlinedAt: !1708)
!1714 = !DILocation(line: 230, column: 13, scope: !520, inlinedAt: !1708)
!1715 = !DILocation(line: 0, scope: !1687, inlinedAt: !1716)
!1716 = distinct !DILocation(line: 230, column: 18, scope: !520, inlinedAt: !1708)
!1717 = !DILocation(line: 0, scope: !1695, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 1137, column: 3, scope: !1687, inlinedAt: !1716)
!1719 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !1718)
!1720 = !DILocation(line: 231, column: 7, scope: !1703, inlinedAt: !1708)
!1721 = !DILocation(line: 231, column: 40, scope: !1703, inlinedAt: !1708)
!1722 = !DILocation(line: 231, column: 45, scope: !1703, inlinedAt: !1708)
!1723 = !DILocation(line: 235, column: 1, scope: !520, inlinedAt: !1708)
!1724 = !DILocation(line: 360, column: 13, scope: !1620)
!1725 = !DILocation(line: 0, scope: !1618)
!1726 = !DILocation(line: 361, column: 45, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1618, file: !456, line: 361, column: 11)
!1728 = !DILocation(line: 361, column: 11, scope: !1618)
!1729 = !DILocation(line: 362, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !456, line: 362, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !456, line: 362, column: 13)
!1732 = !DILocation(line: 362, column: 13, scope: !1731)
!1733 = !DILocation(line: 361, column: 52, scope: !1727)
!1734 = distinct !{!1734, !1728, !1735, !867}
!1735 = !DILocation(line: 362, column: 13, scope: !1618)
!1736 = !DILocation(line: 260, column: 10, scope: !1592)
!1737 = !DILocation(line: 365, column: 28, scope: !1620)
!1738 = !DILocation(line: 367, column: 7, scope: !1621)
!1739 = !DILocation(line: 370, column: 7, scope: !1621)
!1740 = !DILocation(line: 376, column: 11, scope: !1621)
!1741 = !DILocation(line: 381, column: 11, scope: !1621)
!1742 = !DILocation(line: 382, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !456, line: 382, column: 9)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !456, line: 382, column: 9)
!1745 = distinct !DILexicalBlock(scope: !1621, file: !456, line: 381, column: 11)
!1746 = !DILocation(line: 382, column: 9, scope: !1744)
!1747 = !DILocation(line: 389, column: 7, scope: !1621)
!1748 = !DILocation(line: 392, column: 7, scope: !1621)
!1749 = !DILocation(line: 0, scope: !1623)
!1750 = !DILocation(line: 395, column: 8, scope: !1623)
!1751 = !DILocation(line: 395, scope: !1623)
!1752 = !DILocation(line: 395, column: 34, scope: !1626)
!1753 = !DILocation(line: 395, column: 26, scope: !1626)
!1754 = !DILocation(line: 395, column: 48, scope: !1626)
!1755 = !DILocation(line: 395, column: 55, scope: !1626)
!1756 = !DILocation(line: 395, column: 3, scope: !1623)
!1757 = !DILocation(line: 395, column: 67, scope: !1626)
!1758 = !DILocation(line: 0, scope: !1625)
!1759 = !DILocation(line: 402, column: 11, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 401, column: 11)
!1761 = !DILocation(line: 404, column: 17, scope: !1760)
!1762 = !DILocation(line: 405, column: 39, scope: !1760)
!1763 = !DILocation(line: 409, column: 32, scope: !1760)
!1764 = !DILocation(line: 405, column: 19, scope: !1760)
!1765 = !DILocation(line: 405, column: 15, scope: !1760)
!1766 = !DILocation(line: 410, column: 11, scope: !1760)
!1767 = !DILocation(line: 410, column: 25, scope: !1760)
!1768 = !DILocalVariable(name: "__s1", arg: 1, scope: !1769, file: !833, line: 974, type: !965)
!1769 = distinct !DISubprogram(name: "memeq", scope: !833, file: !833, line: 974, type: !1409, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1770)
!1770 = !{!1768, !1771, !1772}
!1771 = !DILocalVariable(name: "__s2", arg: 2, scope: !1769, file: !833, line: 974, type: !965)
!1772 = !DILocalVariable(name: "__n", arg: 3, scope: !1769, file: !833, line: 974, type: !118)
!1773 = !DILocation(line: 0, scope: !1769, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 410, column: 14, scope: !1760)
!1775 = !DILocation(line: 976, column: 11, scope: !1769, inlinedAt: !1774)
!1776 = !DILocation(line: 976, column: 10, scope: !1769, inlinedAt: !1774)
!1777 = !DILocation(line: 401, column: 11, scope: !1625)
!1778 = !DILocation(line: 417, column: 25, scope: !1625)
!1779 = !DILocation(line: 418, column: 7, scope: !1625)
!1780 = !DILocation(line: 421, column: 15, scope: !1632)
!1781 = !DILocation(line: 423, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !456, line: 423, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !456, line: 422, column: 13)
!1784 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 421, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !456, line: 423, column: 15)
!1787 = !DILocation(line: 423, column: 15, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !456, line: 423, column: 15)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !456, line: 423, column: 15)
!1790 = distinct !DILexicalBlock(scope: !1786, file: !456, line: 423, column: 15)
!1791 = !DILocation(line: 423, column: 15, scope: !1789)
!1792 = !DILocation(line: 423, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !456, line: 423, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !456, line: 423, column: 15)
!1795 = !DILocation(line: 423, column: 15, scope: !1794)
!1796 = !DILocation(line: 423, column: 15, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !456, line: 423, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1790, file: !456, line: 423, column: 15)
!1799 = !DILocation(line: 423, column: 15, scope: !1798)
!1800 = !DILocation(line: 423, column: 15, scope: !1790)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !456, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1782, file: !456, line: 423, column: 15)
!1804 = !DILocation(line: 423, column: 15, scope: !1803)
!1805 = !DILocation(line: 431, column: 19, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1783, file: !456, line: 430, column: 19)
!1807 = !DILocation(line: 431, column: 24, scope: !1806)
!1808 = !DILocation(line: 431, column: 28, scope: !1806)
!1809 = !DILocation(line: 431, column: 38, scope: !1806)
!1810 = !DILocation(line: 431, column: 48, scope: !1806)
!1811 = !DILocation(line: 431, column: 59, scope: !1806)
!1812 = !DILocation(line: 433, column: 19, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !456, line: 433, column: 19)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !456, line: 433, column: 19)
!1815 = distinct !DILexicalBlock(scope: !1806, file: !456, line: 432, column: 17)
!1816 = !DILocation(line: 433, column: 19, scope: !1814)
!1817 = !DILocation(line: 434, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !456, line: 434, column: 19)
!1819 = distinct !DILexicalBlock(scope: !1815, file: !456, line: 434, column: 19)
!1820 = !DILocation(line: 434, column: 19, scope: !1819)
!1821 = !DILocation(line: 435, column: 17, scope: !1815)
!1822 = !DILocation(line: 442, column: 20, scope: !1784)
!1823 = !DILocation(line: 447, column: 11, scope: !1632)
!1824 = !DILocation(line: 450, column: 19, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 448, column: 13)
!1826 = !DILocation(line: 456, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1825, file: !456, line: 455, column: 19)
!1828 = !DILocation(line: 456, column: 24, scope: !1827)
!1829 = !DILocation(line: 456, column: 28, scope: !1827)
!1830 = !DILocation(line: 456, column: 38, scope: !1827)
!1831 = !DILocation(line: 456, column: 47, scope: !1827)
!1832 = !DILocation(line: 456, column: 41, scope: !1827)
!1833 = !DILocation(line: 456, column: 52, scope: !1827)
!1834 = !DILocation(line: 455, column: 19, scope: !1825)
!1835 = !DILocation(line: 457, column: 25, scope: !1827)
!1836 = !DILocation(line: 457, column: 17, scope: !1827)
!1837 = !DILocation(line: 464, column: 25, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1827, file: !456, line: 458, column: 19)
!1839 = !DILocation(line: 468, column: 21, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !456, line: 468, column: 21)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !456, line: 468, column: 21)
!1842 = !DILocation(line: 468, column: 21, scope: !1841)
!1843 = !DILocation(line: 469, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !456, line: 469, column: 21)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !456, line: 469, column: 21)
!1846 = !DILocation(line: 469, column: 21, scope: !1845)
!1847 = !DILocation(line: 470, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !456, line: 470, column: 21)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !456, line: 470, column: 21)
!1850 = !DILocation(line: 470, column: 21, scope: !1849)
!1851 = !DILocation(line: 471, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !456, line: 471, column: 21)
!1853 = distinct !DILexicalBlock(scope: !1838, file: !456, line: 471, column: 21)
!1854 = !DILocation(line: 471, column: 21, scope: !1853)
!1855 = !DILocation(line: 472, column: 21, scope: !1838)
!1856 = !DILocation(line: 482, column: 33, scope: !1655)
!1857 = !DILocation(line: 483, column: 33, scope: !1655)
!1858 = !DILocation(line: 485, column: 33, scope: !1655)
!1859 = !DILocation(line: 486, column: 33, scope: !1655)
!1860 = !DILocation(line: 487, column: 33, scope: !1655)
!1861 = !DILocation(line: 490, column: 17, scope: !1655)
!1862 = !DILocation(line: 492, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !456, line: 491, column: 15)
!1864 = distinct !DILexicalBlock(scope: !1655, file: !456, line: 490, column: 17)
!1865 = !DILocation(line: 499, column: 35, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1655, file: !456, line: 499, column: 17)
!1867 = !DILocation(line: 0, scope: !1655)
!1868 = !DILocation(line: 502, column: 11, scope: !1655)
!1869 = !DILocation(line: 504, column: 17, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1655, file: !456, line: 503, column: 17)
!1871 = !DILocation(line: 507, column: 11, scope: !1655)
!1872 = !DILocation(line: 508, column: 17, scope: !1655)
!1873 = !DILocation(line: 517, column: 15, scope: !1632)
!1874 = !DILocation(line: 517, column: 40, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 517, column: 15)
!1876 = !DILocation(line: 517, column: 47, scope: !1875)
!1877 = !DILocation(line: 517, column: 18, scope: !1875)
!1878 = !DILocation(line: 521, column: 17, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 521, column: 15)
!1880 = !DILocation(line: 521, column: 15, scope: !1632)
!1881 = !DILocation(line: 525, column: 11, scope: !1632)
!1882 = !DILocation(line: 537, column: 15, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 536, column: 15)
!1884 = !DILocation(line: 536, column: 15, scope: !1632)
!1885 = !DILocation(line: 544, column: 15, scope: !1632)
!1886 = !DILocation(line: 546, column: 19, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !456, line: 545, column: 13)
!1888 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 544, column: 15)
!1889 = !DILocation(line: 549, column: 19, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1887, file: !456, line: 549, column: 19)
!1891 = !DILocation(line: 549, column: 30, scope: !1890)
!1892 = !DILocation(line: 558, column: 15, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !456, line: 558, column: 15)
!1894 = distinct !DILexicalBlock(scope: !1887, file: !456, line: 558, column: 15)
!1895 = !DILocation(line: 558, column: 15, scope: !1894)
!1896 = !DILocation(line: 559, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !456, line: 559, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1887, file: !456, line: 559, column: 15)
!1899 = !DILocation(line: 559, column: 15, scope: !1898)
!1900 = !DILocation(line: 560, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !456, line: 560, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1887, file: !456, line: 560, column: 15)
!1903 = !DILocation(line: 560, column: 15, scope: !1902)
!1904 = !DILocation(line: 562, column: 13, scope: !1887)
!1905 = !DILocation(line: 602, column: 17, scope: !1631)
!1906 = !DILocation(line: 0, scope: !1631)
!1907 = !DILocation(line: 605, column: 29, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1636, file: !456, line: 603, column: 15)
!1909 = !DILocation(line: 605, column: 41, scope: !1908)
!1910 = !DILocation(line: 606, column: 15, scope: !1908)
!1911 = !DILocation(line: 609, column: 17, scope: !1635)
!1912 = !DILocation(line: 609, column: 27, scope: !1635)
!1913 = !DILocation(line: 0, scope: !1687, inlinedAt: !1914)
!1914 = distinct !DILocation(line: 609, column: 32, scope: !1635)
!1915 = !DILocation(line: 0, scope: !1695, inlinedAt: !1916)
!1916 = distinct !DILocation(line: 1137, column: 3, scope: !1687, inlinedAt: !1914)
!1917 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !1916)
!1918 = !DILocation(line: 613, column: 29, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1635, file: !456, line: 613, column: 21)
!1920 = !DILocation(line: 613, column: 21, scope: !1635)
!1921 = !DILocation(line: 614, column: 29, scope: !1919)
!1922 = !DILocation(line: 614, column: 19, scope: !1919)
!1923 = !DILocation(line: 618, column: 21, scope: !1638)
!1924 = !DILocation(line: 620, column: 54, scope: !1638)
!1925 = !DILocation(line: 0, scope: !1638)
!1926 = !DILocation(line: 619, column: 36, scope: !1638)
!1927 = !DILocation(line: 621, column: 25, scope: !1638)
!1928 = !DILocation(line: 631, column: 38, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1647, file: !456, line: 629, column: 23)
!1930 = !DILocation(line: 631, column: 48, scope: !1929)
!1931 = !DILocation(line: 626, column: 25, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1648, file: !456, line: 624, column: 23)
!1933 = !DILocation(line: 631, column: 51, scope: !1929)
!1934 = !DILocation(line: 631, column: 25, scope: !1929)
!1935 = !DILocation(line: 632, column: 28, scope: !1929)
!1936 = !DILocation(line: 631, column: 34, scope: !1929)
!1937 = distinct !{!1937, !1934, !1935, !867}
!1938 = !DILocation(line: 646, column: 29, scope: !1645)
!1939 = !DILocation(line: 0, scope: !1643)
!1940 = !DILocation(line: 649, column: 49, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1643, file: !456, line: 648, column: 29)
!1942 = !DILocation(line: 649, column: 39, scope: !1941)
!1943 = !DILocation(line: 649, column: 31, scope: !1941)
!1944 = !DILocation(line: 648, column: 60, scope: !1941)
!1945 = !DILocation(line: 648, column: 50, scope: !1941)
!1946 = !DILocation(line: 648, column: 29, scope: !1643)
!1947 = distinct !{!1947, !1946, !1948, !867}
!1948 = !DILocation(line: 654, column: 33, scope: !1643)
!1949 = !DILocation(line: 657, column: 43, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1646, file: !456, line: 657, column: 29)
!1951 = !DILocalVariable(name: "wc", arg: 1, scope: !1952, file: !1953, line: 865, type: !1956)
!1952 = distinct !DISubprogram(name: "c32isprint", scope: !1953, file: !1953, line: 865, type: !1954, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1958)
!1953 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!116, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1957, line: 20, baseType: !86)
!1957 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1958 = !{!1951}
!1959 = !DILocation(line: 0, scope: !1952, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 657, column: 31, scope: !1950)
!1961 = !DILocation(line: 871, column: 10, scope: !1952, inlinedAt: !1960)
!1962 = !DILocation(line: 657, column: 31, scope: !1950)
!1963 = !DILocation(line: 664, column: 23, scope: !1638)
!1964 = !DILocation(line: 665, column: 19, scope: !1639)
!1965 = !DILocation(line: 666, column: 15, scope: !1636)
!1966 = !DILocation(line: 753, column: 2, scope: !1592)
!1967 = !DILocation(line: 756, column: 51, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 756, column: 7)
!1969 = !DILocation(line: 0, scope: !1636)
!1970 = !DILocation(line: 670, column: 19, scope: !1652)
!1971 = !DILocation(line: 670, column: 23, scope: !1652)
!1972 = !DILocation(line: 674, column: 33, scope: !1651)
!1973 = !DILocation(line: 0, scope: !1651)
!1974 = !DILocation(line: 676, column: 17, scope: !1651)
!1975 = !DILocation(line: 398, column: 12, scope: !1625)
!1976 = !DILocation(line: 678, column: 43, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !456, line: 678, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !456, line: 677, column: 19)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !456, line: 676, column: 17)
!1980 = distinct !DILexicalBlock(scope: !1651, file: !456, line: 676, column: 17)
!1981 = !DILocation(line: 680, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !456, line: 680, column: 25)
!1983 = distinct !DILexicalBlock(scope: !1977, file: !456, line: 679, column: 23)
!1984 = !DILocation(line: 680, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !456, line: 680, column: 25)
!1986 = !DILocation(line: 680, column: 25, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1988, file: !456, line: 680, column: 25)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !456, line: 680, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1985, file: !456, line: 680, column: 25)
!1990 = !DILocation(line: 680, column: 25, scope: !1988)
!1991 = !DILocation(line: 680, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !456, line: 680, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !456, line: 680, column: 25)
!1994 = !DILocation(line: 680, column: 25, scope: !1993)
!1995 = !DILocation(line: 680, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !456, line: 680, column: 25)
!1997 = distinct !DILexicalBlock(scope: !1989, file: !456, line: 680, column: 25)
!1998 = !DILocation(line: 680, column: 25, scope: !1997)
!1999 = !DILocation(line: 680, column: 25, scope: !1989)
!2000 = !DILocation(line: 680, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !456, line: 680, column: 25)
!2002 = distinct !DILexicalBlock(scope: !1982, file: !456, line: 680, column: 25)
!2003 = !DILocation(line: 680, column: 25, scope: !2002)
!2004 = !DILocation(line: 681, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2006, file: !456, line: 681, column: 25)
!2006 = distinct !DILexicalBlock(scope: !1983, file: !456, line: 681, column: 25)
!2007 = !DILocation(line: 681, column: 25, scope: !2006)
!2008 = !DILocation(line: 682, column: 25, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !456, line: 682, column: 25)
!2010 = distinct !DILexicalBlock(scope: !1983, file: !456, line: 682, column: 25)
!2011 = !DILocation(line: 682, column: 25, scope: !2010)
!2012 = !DILocation(line: 683, column: 38, scope: !1983)
!2013 = !DILocation(line: 683, column: 33, scope: !1983)
!2014 = !DILocation(line: 684, column: 23, scope: !1983)
!2015 = !DILocation(line: 685, column: 30, scope: !1977)
!2016 = !DILocation(line: 687, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !456, line: 687, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2019, file: !456, line: 687, column: 25)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !456, line: 686, column: 23)
!2020 = distinct !DILexicalBlock(scope: !1977, file: !456, line: 685, column: 30)
!2021 = !DILocation(line: 687, column: 25, scope: !2018)
!2022 = !DILocation(line: 689, column: 23, scope: !2019)
!2023 = !DILocation(line: 690, column: 35, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1978, file: !456, line: 690, column: 25)
!2025 = !DILocation(line: 690, column: 30, scope: !2024)
!2026 = !DILocation(line: 690, column: 25, scope: !1978)
!2027 = !DILocation(line: 692, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !456, line: 692, column: 21)
!2029 = distinct !DILexicalBlock(scope: !1978, file: !456, line: 692, column: 21)
!2030 = !DILocation(line: 692, column: 21, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !456, line: 692, column: 21)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !456, line: 692, column: 21)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !456, line: 692, column: 21)
!2034 = !DILocation(line: 692, column: 21, scope: !2032)
!2035 = !DILocation(line: 692, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !456, line: 692, column: 21)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !456, line: 692, column: 21)
!2038 = !DILocation(line: 692, column: 21, scope: !2037)
!2039 = !DILocation(line: 692, column: 21, scope: !2033)
!2040 = !DILocation(line: 0, scope: !1978)
!2041 = !DILocation(line: 693, column: 21, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !456, line: 693, column: 21)
!2043 = distinct !DILexicalBlock(scope: !1978, file: !456, line: 693, column: 21)
!2044 = !DILocation(line: 693, column: 21, scope: !2043)
!2045 = !DILocation(line: 694, column: 25, scope: !1978)
!2046 = !DILocation(line: 676, column: 17, scope: !1979)
!2047 = distinct !{!2047, !2048, !2049}
!2048 = !DILocation(line: 676, column: 17, scope: !1980)
!2049 = !DILocation(line: 695, column: 19, scope: !1980)
!2050 = !DILocation(line: 409, column: 30, scope: !1760)
!2051 = !DILocation(line: 702, column: 34, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 702, column: 11)
!2053 = !DILocation(line: 704, column: 14, scope: !2052)
!2054 = !DILocation(line: 705, column: 14, scope: !2052)
!2055 = !DILocation(line: 705, column: 35, scope: !2052)
!2056 = !DILocation(line: 705, column: 17, scope: !2052)
!2057 = !DILocation(line: 705, column: 47, scope: !2052)
!2058 = !DILocation(line: 705, column: 65, scope: !2052)
!2059 = !DILocation(line: 706, column: 11, scope: !2052)
!2060 = !DILocation(line: 702, column: 11, scope: !1625)
!2061 = !DILocation(line: 395, column: 15, scope: !1623)
!2062 = !DILocation(line: 709, column: 5, scope: !1625)
!2063 = !DILocation(line: 710, column: 7, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 710, column: 7)
!2065 = !DILocation(line: 710, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2064, file: !456, line: 710, column: 7)
!2067 = !DILocation(line: 710, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !456, line: 710, column: 7)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !456, line: 710, column: 7)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !456, line: 710, column: 7)
!2071 = !DILocation(line: 710, column: 7, scope: !2069)
!2072 = !DILocation(line: 710, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !456, line: 710, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !456, line: 710, column: 7)
!2075 = !DILocation(line: 710, column: 7, scope: !2074)
!2076 = !DILocation(line: 710, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !456, line: 710, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2070, file: !456, line: 710, column: 7)
!2079 = !DILocation(line: 710, column: 7, scope: !2078)
!2080 = !DILocation(line: 710, column: 7, scope: !2070)
!2081 = !DILocation(line: 710, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !456, line: 710, column: 7)
!2083 = distinct !DILexicalBlock(scope: !2064, file: !456, line: 710, column: 7)
!2084 = !DILocation(line: 710, column: 7, scope: !2083)
!2085 = !DILocation(line: 712, column: 5, scope: !1625)
!2086 = !DILocation(line: 713, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !456, line: 713, column: 7)
!2088 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 713, column: 7)
!2089 = !DILocation(line: 417, column: 21, scope: !1625)
!2090 = !DILocation(line: 713, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !456, line: 713, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !456, line: 713, column: 7)
!2093 = distinct !DILexicalBlock(scope: !2087, file: !456, line: 713, column: 7)
!2094 = !DILocation(line: 713, column: 7, scope: !2092)
!2095 = !DILocation(line: 713, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !456, line: 713, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2093, file: !456, line: 713, column: 7)
!2098 = !DILocation(line: 713, column: 7, scope: !2097)
!2099 = !DILocation(line: 713, column: 7, scope: !2093)
!2100 = !DILocation(line: 714, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !456, line: 714, column: 7)
!2102 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 714, column: 7)
!2103 = !DILocation(line: 714, column: 7, scope: !2102)
!2104 = !DILocation(line: 716, column: 11, scope: !1625)
!2105 = !DILocation(line: 718, column: 5, scope: !1626)
!2106 = !DILocation(line: 395, column: 82, scope: !1626)
!2107 = !DILocation(line: 395, column: 3, scope: !1626)
!2108 = distinct !{!2108, !1756, !2109, !867}
!2109 = !DILocation(line: 718, column: 5, scope: !1623)
!2110 = !DILocation(line: 720, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 720, column: 7)
!2112 = !DILocation(line: 720, column: 16, scope: !2111)
!2113 = !DILocation(line: 728, column: 51, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 728, column: 7)
!2115 = !DILocation(line: 731, column: 11, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2114, file: !456, line: 730, column: 5)
!2117 = !DILocation(line: 732, column: 16, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2116, file: !456, line: 731, column: 11)
!2119 = !DILocation(line: 732, column: 9, scope: !2118)
!2120 = !DILocation(line: 736, column: 18, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !456, line: 736, column: 16)
!2122 = !DILocation(line: 736, column: 29, scope: !2121)
!2123 = !DILocation(line: 745, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 745, column: 7)
!2125 = !DILocation(line: 745, column: 20, scope: !2124)
!2126 = !DILocation(line: 746, column: 12, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !456, line: 746, column: 5)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !456, line: 746, column: 5)
!2129 = !DILocation(line: 746, column: 5, scope: !2128)
!2130 = !DILocation(line: 747, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !456, line: 747, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2127, file: !456, line: 747, column: 7)
!2133 = !DILocation(line: 747, column: 7, scope: !2132)
!2134 = !DILocation(line: 746, column: 39, scope: !2127)
!2135 = distinct !{!2135, !2129, !2136, !867}
!2136 = !DILocation(line: 747, column: 7, scope: !2128)
!2137 = !DILocation(line: 749, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1592, file: !456, line: 749, column: 7)
!2139 = !DILocation(line: 749, column: 7, scope: !1592)
!2140 = !DILocation(line: 750, column: 5, scope: !2138)
!2141 = !DILocation(line: 750, column: 17, scope: !2138)
!2142 = !DILocation(line: 756, column: 21, scope: !1968)
!2143 = !DILocation(line: 760, column: 42, scope: !1592)
!2144 = !DILocation(line: 758, column: 10, scope: !1592)
!2145 = !DILocation(line: 758, column: 3, scope: !1592)
!2146 = !DILocation(line: 762, column: 1, scope: !1592)
!2147 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !941, file: !941, line: 98, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!118}
!2150 = !DISubprogram(name: "strlen", scope: !937, file: !937, line: 407, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!120, !80}
!2153 = !DISubprogram(name: "iswprint", scope: !2154, file: !2154, line: 120, type: !1954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!2154 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2155 = distinct !DISubprogram(name: "quotearg_alloc", scope: !456, file: !456, line: 788, type: !2156, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!260, !80, !118, !1485}
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "arg", arg: 1, scope: !2155, file: !456, line: 788, type: !80)
!2160 = !DILocalVariable(name: "argsize", arg: 2, scope: !2155, file: !456, line: 788, type: !118)
!2161 = !DILocalVariable(name: "o", arg: 3, scope: !2155, file: !456, line: 789, type: !1485)
!2162 = !DILocation(line: 0, scope: !2155)
!2163 = !DILocalVariable(name: "arg", arg: 1, scope: !2164, file: !456, line: 801, type: !80)
!2164 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !456, file: !456, line: 801, type: !2165, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!260, !80, !118, !695, !1485}
!2167 = !{!2163, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2168 = !DILocalVariable(name: "argsize", arg: 2, scope: !2164, file: !456, line: 801, type: !118)
!2169 = !DILocalVariable(name: "size", arg: 3, scope: !2164, file: !456, line: 801, type: !695)
!2170 = !DILocalVariable(name: "o", arg: 4, scope: !2164, file: !456, line: 802, type: !1485)
!2171 = !DILocalVariable(name: "p", scope: !2164, file: !456, line: 804, type: !1485)
!2172 = !DILocalVariable(name: "saved_errno", scope: !2164, file: !456, line: 805, type: !116)
!2173 = !DILocalVariable(name: "flags", scope: !2164, file: !456, line: 807, type: !116)
!2174 = !DILocalVariable(name: "bufsize", scope: !2164, file: !456, line: 808, type: !118)
!2175 = !DILocalVariable(name: "buf", scope: !2164, file: !456, line: 812, type: !260)
!2176 = !DILocation(line: 0, scope: !2164, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 791, column: 10, scope: !2155)
!2178 = !DILocation(line: 804, column: 37, scope: !2164, inlinedAt: !2177)
!2179 = !DILocation(line: 805, column: 21, scope: !2164, inlinedAt: !2177)
!2180 = !DILocation(line: 807, column: 18, scope: !2164, inlinedAt: !2177)
!2181 = !DILocation(line: 807, column: 24, scope: !2164, inlinedAt: !2177)
!2182 = !DILocation(line: 808, column: 72, scope: !2164, inlinedAt: !2177)
!2183 = !DILocation(line: 809, column: 56, scope: !2164, inlinedAt: !2177)
!2184 = !DILocation(line: 810, column: 49, scope: !2164, inlinedAt: !2177)
!2185 = !DILocation(line: 811, column: 49, scope: !2164, inlinedAt: !2177)
!2186 = !DILocation(line: 808, column: 20, scope: !2164, inlinedAt: !2177)
!2187 = !DILocation(line: 811, column: 62, scope: !2164, inlinedAt: !2177)
!2188 = !DILocation(line: 812, column: 15, scope: !2164, inlinedAt: !2177)
!2189 = !DILocation(line: 813, column: 60, scope: !2164, inlinedAt: !2177)
!2190 = !DILocation(line: 815, column: 32, scope: !2164, inlinedAt: !2177)
!2191 = !DILocation(line: 815, column: 47, scope: !2164, inlinedAt: !2177)
!2192 = !DILocation(line: 813, column: 3, scope: !2164, inlinedAt: !2177)
!2193 = !DILocation(line: 816, column: 9, scope: !2164, inlinedAt: !2177)
!2194 = !DILocation(line: 791, column: 3, scope: !2155)
!2195 = !DILocation(line: 0, scope: !2164)
!2196 = !DILocation(line: 804, column: 37, scope: !2164)
!2197 = !DILocation(line: 805, column: 21, scope: !2164)
!2198 = !DILocation(line: 807, column: 18, scope: !2164)
!2199 = !DILocation(line: 807, column: 27, scope: !2164)
!2200 = !DILocation(line: 807, column: 24, scope: !2164)
!2201 = !DILocation(line: 808, column: 72, scope: !2164)
!2202 = !DILocation(line: 809, column: 56, scope: !2164)
!2203 = !DILocation(line: 810, column: 49, scope: !2164)
!2204 = !DILocation(line: 811, column: 49, scope: !2164)
!2205 = !DILocation(line: 808, column: 20, scope: !2164)
!2206 = !DILocation(line: 811, column: 62, scope: !2164)
!2207 = !DILocation(line: 812, column: 15, scope: !2164)
!2208 = !DILocation(line: 813, column: 60, scope: !2164)
!2209 = !DILocation(line: 815, column: 32, scope: !2164)
!2210 = !DILocation(line: 815, column: 47, scope: !2164)
!2211 = !DILocation(line: 813, column: 3, scope: !2164)
!2212 = !DILocation(line: 816, column: 9, scope: !2164)
!2213 = !DILocation(line: 817, column: 7, scope: !2164)
!2214 = !DILocation(line: 818, column: 11, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2164, file: !456, line: 817, column: 7)
!2216 = !{!1209, !1209, i64 0}
!2217 = !DILocation(line: 818, column: 5, scope: !2215)
!2218 = !DILocation(line: 819, column: 3, scope: !2164)
!2219 = distinct !DISubprogram(name: "quotearg_free", scope: !456, file: !456, line: 837, type: !388, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2220)
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "sv", scope: !2219, file: !456, line: 839, type: !543)
!2222 = !DILocalVariable(name: "i", scope: !2223, file: !456, line: 840, type: !116)
!2223 = distinct !DILexicalBlock(scope: !2219, file: !456, line: 840, column: 3)
!2224 = !DILocation(line: 839, column: 24, scope: !2219)
!2225 = !DILocation(line: 0, scope: !2219)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocation(line: 840, column: 21, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !456, line: 840, column: 3)
!2229 = !DILocation(line: 840, column: 3, scope: !2223)
!2230 = !DILocation(line: 842, column: 13, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2219, file: !456, line: 842, column: 7)
!2232 = !{!2233, !761, i64 8}
!2233 = !{!"slotvec", !1209, i64 0, !761, i64 8}
!2234 = !DILocation(line: 842, column: 17, scope: !2231)
!2235 = !DILocation(line: 842, column: 7, scope: !2219)
!2236 = !DILocation(line: 841, column: 17, scope: !2228)
!2237 = !DILocation(line: 841, column: 5, scope: !2228)
!2238 = !DILocation(line: 840, column: 32, scope: !2228)
!2239 = distinct !{!2239, !2229, !2240, !867}
!2240 = !DILocation(line: 841, column: 20, scope: !2223)
!2241 = !DILocation(line: 844, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2231, file: !456, line: 843, column: 5)
!2243 = !DILocation(line: 845, column: 21, scope: !2242)
!2244 = !{!2233, !1209, i64 0}
!2245 = !DILocation(line: 846, column: 20, scope: !2242)
!2246 = !DILocation(line: 847, column: 5, scope: !2242)
!2247 = !DILocation(line: 848, column: 10, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2219, file: !456, line: 848, column: 7)
!2249 = !DILocation(line: 848, column: 7, scope: !2219)
!2250 = !DILocation(line: 850, column: 7, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2248, file: !456, line: 849, column: 5)
!2252 = !DILocation(line: 851, column: 15, scope: !2251)
!2253 = !DILocation(line: 852, column: 5, scope: !2251)
!2254 = !DILocation(line: 853, column: 10, scope: !2219)
!2255 = !DILocation(line: 854, column: 1, scope: !2219)
!2256 = !DISubprogram(name: "free", scope: !1439, file: !1439, line: 786, type: !2257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !115}
!2259 = distinct !DISubprogram(name: "quotearg_n", scope: !456, file: !456, line: 919, type: !934, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2260)
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !456, line: 919, type: !116)
!2262 = !DILocalVariable(name: "arg", arg: 2, scope: !2259, file: !456, line: 919, type: !80)
!2263 = !DILocation(line: 0, scope: !2259)
!2264 = !DILocation(line: 921, column: 10, scope: !2259)
!2265 = !DILocation(line: 921, column: 3, scope: !2259)
!2266 = distinct !DISubprogram(name: "quotearg_n_options", scope: !456, file: !456, line: 866, type: !2267, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!260, !116, !80, !118, !1485}
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2280, !2281, !2283, !2284, !2285}
!2270 = !DILocalVariable(name: "n", arg: 1, scope: !2266, file: !456, line: 866, type: !116)
!2271 = !DILocalVariable(name: "arg", arg: 2, scope: !2266, file: !456, line: 866, type: !80)
!2272 = !DILocalVariable(name: "argsize", arg: 3, scope: !2266, file: !456, line: 866, type: !118)
!2273 = !DILocalVariable(name: "options", arg: 4, scope: !2266, file: !456, line: 867, type: !1485)
!2274 = !DILocalVariable(name: "saved_errno", scope: !2266, file: !456, line: 869, type: !116)
!2275 = !DILocalVariable(name: "sv", scope: !2266, file: !456, line: 871, type: !543)
!2276 = !DILocalVariable(name: "nslots_max", scope: !2266, file: !456, line: 873, type: !116)
!2277 = !DILocalVariable(name: "preallocated", scope: !2278, file: !456, line: 879, type: !239)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !456, line: 878, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2266, file: !456, line: 877, column: 7)
!2280 = !DILocalVariable(name: "new_nslots", scope: !2278, file: !456, line: 880, type: !708)
!2281 = !DILocalVariable(name: "size", scope: !2282, file: !456, line: 891, type: !118)
!2282 = distinct !DILexicalBlock(scope: !2266, file: !456, line: 890, column: 3)
!2283 = !DILocalVariable(name: "val", scope: !2282, file: !456, line: 892, type: !260)
!2284 = !DILocalVariable(name: "flags", scope: !2282, file: !456, line: 894, type: !116)
!2285 = !DILocalVariable(name: "qsize", scope: !2282, file: !456, line: 895, type: !118)
!2286 = !DILocation(line: 0, scope: !2266)
!2287 = !DILocation(line: 869, column: 21, scope: !2266)
!2288 = !DILocation(line: 871, column: 24, scope: !2266)
!2289 = !DILocation(line: 874, column: 17, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2266, file: !456, line: 874, column: 7)
!2291 = !DILocation(line: 875, column: 5, scope: !2290)
!2292 = !DILocation(line: 877, column: 7, scope: !2279)
!2293 = !DILocation(line: 877, column: 14, scope: !2279)
!2294 = !DILocation(line: 877, column: 7, scope: !2266)
!2295 = !DILocation(line: 879, column: 31, scope: !2278)
!2296 = !DILocation(line: 0, scope: !2278)
!2297 = !DILocation(line: 880, column: 7, scope: !2278)
!2298 = !DILocation(line: 880, column: 26, scope: !2278)
!2299 = !DILocation(line: 880, column: 13, scope: !2278)
!2300 = !DILocation(line: 882, column: 31, scope: !2278)
!2301 = !DILocation(line: 883, column: 33, scope: !2278)
!2302 = !DILocation(line: 883, column: 42, scope: !2278)
!2303 = !DILocation(line: 883, column: 31, scope: !2278)
!2304 = !DILocation(line: 882, column: 22, scope: !2278)
!2305 = !DILocation(line: 882, column: 15, scope: !2278)
!2306 = !DILocation(line: 884, column: 11, scope: !2278)
!2307 = !DILocation(line: 885, column: 15, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2278, file: !456, line: 884, column: 11)
!2309 = !{i64 0, i64 8, !2216, i64 8, i64 8, !760}
!2310 = !DILocation(line: 885, column: 9, scope: !2308)
!2311 = !DILocation(line: 886, column: 20, scope: !2278)
!2312 = !DILocation(line: 886, column: 18, scope: !2278)
!2313 = !DILocation(line: 886, column: 32, scope: !2278)
!2314 = !DILocation(line: 886, column: 43, scope: !2278)
!2315 = !DILocation(line: 886, column: 53, scope: !2278)
!2316 = !DILocation(line: 0, scope: !1695, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 886, column: 7, scope: !2278)
!2318 = !DILocation(line: 59, column: 10, scope: !1695, inlinedAt: !2317)
!2319 = !DILocation(line: 887, column: 16, scope: !2278)
!2320 = !DILocation(line: 887, column: 14, scope: !2278)
!2321 = !DILocation(line: 888, column: 5, scope: !2279)
!2322 = !DILocation(line: 888, column: 5, scope: !2278)
!2323 = !DILocation(line: 891, column: 19, scope: !2282)
!2324 = !DILocation(line: 891, column: 25, scope: !2282)
!2325 = !DILocation(line: 0, scope: !2282)
!2326 = !DILocation(line: 892, column: 23, scope: !2282)
!2327 = !DILocation(line: 894, column: 26, scope: !2282)
!2328 = !DILocation(line: 894, column: 32, scope: !2282)
!2329 = !DILocation(line: 896, column: 55, scope: !2282)
!2330 = !DILocation(line: 897, column: 55, scope: !2282)
!2331 = !DILocation(line: 898, column: 55, scope: !2282)
!2332 = !DILocation(line: 899, column: 55, scope: !2282)
!2333 = !DILocation(line: 895, column: 20, scope: !2282)
!2334 = !DILocation(line: 901, column: 14, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2282, file: !456, line: 901, column: 9)
!2336 = !DILocation(line: 901, column: 9, scope: !2282)
!2337 = !DILocation(line: 903, column: 35, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2335, file: !456, line: 902, column: 7)
!2339 = !DILocation(line: 903, column: 20, scope: !2338)
!2340 = !DILocation(line: 904, column: 17, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !456, line: 904, column: 13)
!2342 = !DILocation(line: 904, column: 13, scope: !2338)
!2343 = !DILocation(line: 905, column: 11, scope: !2341)
!2344 = !DILocation(line: 906, column: 27, scope: !2338)
!2345 = !DILocation(line: 906, column: 19, scope: !2338)
!2346 = !DILocation(line: 907, column: 69, scope: !2338)
!2347 = !DILocation(line: 909, column: 44, scope: !2338)
!2348 = !DILocation(line: 910, column: 44, scope: !2338)
!2349 = !DILocation(line: 907, column: 9, scope: !2338)
!2350 = !DILocation(line: 911, column: 7, scope: !2338)
!2351 = !DILocation(line: 913, column: 11, scope: !2282)
!2352 = !DILocation(line: 914, column: 5, scope: !2282)
!2353 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !456, file: !456, line: 925, type: !2354, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!260, !116, !80, !118}
!2356 = !{!2357, !2358, !2359}
!2357 = !DILocalVariable(name: "n", arg: 1, scope: !2353, file: !456, line: 925, type: !116)
!2358 = !DILocalVariable(name: "arg", arg: 2, scope: !2353, file: !456, line: 925, type: !80)
!2359 = !DILocalVariable(name: "argsize", arg: 3, scope: !2353, file: !456, line: 925, type: !118)
!2360 = !DILocation(line: 0, scope: !2353)
!2361 = !DILocation(line: 927, column: 10, scope: !2353)
!2362 = !DILocation(line: 927, column: 3, scope: !2353)
!2363 = distinct !DISubprogram(name: "quotearg", scope: !456, file: !456, line: 931, type: !943, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2364)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "arg", arg: 1, scope: !2363, file: !456, line: 931, type: !80)
!2366 = !DILocation(line: 0, scope: !2363)
!2367 = !DILocation(line: 0, scope: !2259, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 933, column: 10, scope: !2363)
!2369 = !DILocation(line: 921, column: 10, scope: !2259, inlinedAt: !2368)
!2370 = !DILocation(line: 933, column: 3, scope: !2363)
!2371 = distinct !DISubprogram(name: "quotearg_mem", scope: !456, file: !456, line: 937, type: !2372, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2374)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!260, !80, !118}
!2374 = !{!2375, !2376}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2371, file: !456, line: 937, type: !80)
!2376 = !DILocalVariable(name: "argsize", arg: 2, scope: !2371, file: !456, line: 937, type: !118)
!2377 = !DILocation(line: 0, scope: !2371)
!2378 = !DILocation(line: 0, scope: !2353, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 939, column: 10, scope: !2371)
!2380 = !DILocation(line: 927, column: 10, scope: !2353, inlinedAt: !2379)
!2381 = !DILocation(line: 939, column: 3, scope: !2371)
!2382 = distinct !DISubprogram(name: "quotearg_n_style", scope: !456, file: !456, line: 943, type: !2383, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2385)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!260, !116, !84, !80}
!2385 = !{!2386, !2387, !2388, !2389}
!2386 = !DILocalVariable(name: "n", arg: 1, scope: !2382, file: !456, line: 943, type: !116)
!2387 = !DILocalVariable(name: "s", arg: 2, scope: !2382, file: !456, line: 943, type: !84)
!2388 = !DILocalVariable(name: "arg", arg: 3, scope: !2382, file: !456, line: 943, type: !80)
!2389 = !DILocalVariable(name: "o", scope: !2382, file: !456, line: 945, type: !1486)
!2390 = !DILocation(line: 0, scope: !2382)
!2391 = !DILocation(line: 945, column: 3, scope: !2382)
!2392 = !DILocation(line: 945, column: 32, scope: !2382)
!2393 = !{!2394}
!2394 = distinct !{!2394, !2395, !"quoting_options_from_style: argument 0"}
!2395 = distinct !{!2395, !"quoting_options_from_style"}
!2396 = !DILocation(line: 945, column: 36, scope: !2382)
!2397 = !DILocalVariable(name: "style", arg: 1, scope: !2398, file: !456, line: 183, type: !84)
!2398 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !456, file: !456, line: 183, type: !2399, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!495, !84}
!2401 = !{!2397, !2402}
!2402 = !DILocalVariable(name: "o", scope: !2398, file: !456, line: 185, type: !495)
!2403 = !DILocation(line: 0, scope: !2398, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 945, column: 36, scope: !2382)
!2405 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2404)
!2406 = !DILocation(line: 186, column: 13, scope: !2407, inlinedAt: !2404)
!2407 = distinct !DILexicalBlock(scope: !2398, file: !456, line: 186, column: 7)
!2408 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2404)
!2409 = !DILocation(line: 187, column: 5, scope: !2407, inlinedAt: !2404)
!2410 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2404)
!2411 = !DILocation(line: 946, column: 10, scope: !2382)
!2412 = !DILocation(line: 947, column: 1, scope: !2382)
!2413 = !DILocation(line: 946, column: 3, scope: !2382)
!2414 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !456, file: !456, line: 950, type: !2415, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2417)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!260, !116, !84, !80, !118}
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DILocalVariable(name: "n", arg: 1, scope: !2414, file: !456, line: 950, type: !116)
!2419 = !DILocalVariable(name: "s", arg: 2, scope: !2414, file: !456, line: 950, type: !84)
!2420 = !DILocalVariable(name: "arg", arg: 3, scope: !2414, file: !456, line: 951, type: !80)
!2421 = !DILocalVariable(name: "argsize", arg: 4, scope: !2414, file: !456, line: 951, type: !118)
!2422 = !DILocalVariable(name: "o", scope: !2414, file: !456, line: 953, type: !1486)
!2423 = !DILocation(line: 0, scope: !2414)
!2424 = !DILocation(line: 953, column: 3, scope: !2414)
!2425 = !DILocation(line: 953, column: 32, scope: !2414)
!2426 = !{!2427}
!2427 = distinct !{!2427, !2428, !"quoting_options_from_style: argument 0"}
!2428 = distinct !{!2428, !"quoting_options_from_style"}
!2429 = !DILocation(line: 953, column: 36, scope: !2414)
!2430 = !DILocation(line: 0, scope: !2398, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 953, column: 36, scope: !2414)
!2432 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2431)
!2433 = !DILocation(line: 186, column: 13, scope: !2407, inlinedAt: !2431)
!2434 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2431)
!2435 = !DILocation(line: 187, column: 5, scope: !2407, inlinedAt: !2431)
!2436 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2431)
!2437 = !DILocation(line: 954, column: 10, scope: !2414)
!2438 = !DILocation(line: 955, column: 1, scope: !2414)
!2439 = !DILocation(line: 954, column: 3, scope: !2414)
!2440 = distinct !DISubprogram(name: "quotearg_style", scope: !456, file: !456, line: 958, type: !2441, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2443)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!260, !84, !80}
!2443 = !{!2444, !2445}
!2444 = !DILocalVariable(name: "s", arg: 1, scope: !2440, file: !456, line: 958, type: !84)
!2445 = !DILocalVariable(name: "arg", arg: 2, scope: !2440, file: !456, line: 958, type: !80)
!2446 = !DILocation(line: 0, scope: !2440)
!2447 = !DILocation(line: 0, scope: !2382, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 960, column: 10, scope: !2440)
!2449 = !DILocation(line: 945, column: 3, scope: !2382, inlinedAt: !2448)
!2450 = !DILocation(line: 945, column: 32, scope: !2382, inlinedAt: !2448)
!2451 = !{!2452}
!2452 = distinct !{!2452, !2453, !"quoting_options_from_style: argument 0"}
!2453 = distinct !{!2453, !"quoting_options_from_style"}
!2454 = !DILocation(line: 945, column: 36, scope: !2382, inlinedAt: !2448)
!2455 = !DILocation(line: 0, scope: !2398, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 945, column: 36, scope: !2382, inlinedAt: !2448)
!2457 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2456)
!2458 = !DILocation(line: 186, column: 13, scope: !2407, inlinedAt: !2456)
!2459 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2456)
!2460 = !DILocation(line: 187, column: 5, scope: !2407, inlinedAt: !2456)
!2461 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2456)
!2462 = !DILocation(line: 946, column: 10, scope: !2382, inlinedAt: !2448)
!2463 = !DILocation(line: 947, column: 1, scope: !2382, inlinedAt: !2448)
!2464 = !DILocation(line: 960, column: 3, scope: !2440)
!2465 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !456, file: !456, line: 964, type: !2466, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!260, !84, !80, !118}
!2468 = !{!2469, !2470, !2471}
!2469 = !DILocalVariable(name: "s", arg: 1, scope: !2465, file: !456, line: 964, type: !84)
!2470 = !DILocalVariable(name: "arg", arg: 2, scope: !2465, file: !456, line: 964, type: !80)
!2471 = !DILocalVariable(name: "argsize", arg: 3, scope: !2465, file: !456, line: 964, type: !118)
!2472 = !DILocation(line: 0, scope: !2465)
!2473 = !DILocation(line: 0, scope: !2414, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 966, column: 10, scope: !2465)
!2475 = !DILocation(line: 953, column: 3, scope: !2414, inlinedAt: !2474)
!2476 = !DILocation(line: 953, column: 32, scope: !2414, inlinedAt: !2474)
!2477 = !{!2478}
!2478 = distinct !{!2478, !2479, !"quoting_options_from_style: argument 0"}
!2479 = distinct !{!2479, !"quoting_options_from_style"}
!2480 = !DILocation(line: 953, column: 36, scope: !2414, inlinedAt: !2474)
!2481 = !DILocation(line: 0, scope: !2398, inlinedAt: !2482)
!2482 = distinct !DILocation(line: 953, column: 36, scope: !2414, inlinedAt: !2474)
!2483 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2482)
!2484 = !DILocation(line: 186, column: 13, scope: !2407, inlinedAt: !2482)
!2485 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2482)
!2486 = !DILocation(line: 187, column: 5, scope: !2407, inlinedAt: !2482)
!2487 = !DILocation(line: 188, column: 11, scope: !2398, inlinedAt: !2482)
!2488 = !DILocation(line: 954, column: 10, scope: !2414, inlinedAt: !2474)
!2489 = !DILocation(line: 955, column: 1, scope: !2414, inlinedAt: !2474)
!2490 = !DILocation(line: 966, column: 3, scope: !2465)
!2491 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !456, file: !456, line: 970, type: !2492, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!260, !80, !118, !4}
!2494 = !{!2495, !2496, !2497, !2498}
!2495 = !DILocalVariable(name: "arg", arg: 1, scope: !2491, file: !456, line: 970, type: !80)
!2496 = !DILocalVariable(name: "argsize", arg: 2, scope: !2491, file: !456, line: 970, type: !118)
!2497 = !DILocalVariable(name: "ch", arg: 3, scope: !2491, file: !456, line: 970, type: !4)
!2498 = !DILocalVariable(name: "options", scope: !2491, file: !456, line: 972, type: !495)
!2499 = !DILocation(line: 0, scope: !2491)
!2500 = !DILocation(line: 972, column: 3, scope: !2491)
!2501 = !DILocation(line: 972, column: 26, scope: !2491)
!2502 = !DILocation(line: 973, column: 13, scope: !2491)
!2503 = !{i64 0, i64 4, !829, i64 4, i64 4, !820, i64 8, i64 32, !829, i64 40, i64 8, !760, i64 48, i64 8, !760}
!2504 = !DILocation(line: 0, scope: !1505, inlinedAt: !2505)
!2505 = distinct !DILocation(line: 974, column: 3, scope: !2491)
!2506 = !DILocation(line: 147, column: 41, scope: !1505, inlinedAt: !2505)
!2507 = !DILocation(line: 147, column: 62, scope: !1505, inlinedAt: !2505)
!2508 = !DILocation(line: 147, column: 57, scope: !1505, inlinedAt: !2505)
!2509 = !DILocation(line: 148, column: 15, scope: !1505, inlinedAt: !2505)
!2510 = !DILocation(line: 149, column: 21, scope: !1505, inlinedAt: !2505)
!2511 = !DILocation(line: 149, column: 24, scope: !1505, inlinedAt: !2505)
!2512 = !DILocation(line: 150, column: 19, scope: !1505, inlinedAt: !2505)
!2513 = !DILocation(line: 150, column: 24, scope: !1505, inlinedAt: !2505)
!2514 = !DILocation(line: 150, column: 6, scope: !1505, inlinedAt: !2505)
!2515 = !DILocation(line: 975, column: 10, scope: !2491)
!2516 = !DILocation(line: 976, column: 1, scope: !2491)
!2517 = !DILocation(line: 975, column: 3, scope: !2491)
!2518 = distinct !DISubprogram(name: "quotearg_char", scope: !456, file: !456, line: 979, type: !2519, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!260, !80, !4}
!2521 = !{!2522, !2523}
!2522 = !DILocalVariable(name: "arg", arg: 1, scope: !2518, file: !456, line: 979, type: !80)
!2523 = !DILocalVariable(name: "ch", arg: 2, scope: !2518, file: !456, line: 979, type: !4)
!2524 = !DILocation(line: 0, scope: !2518)
!2525 = !DILocation(line: 0, scope: !2491, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 981, column: 10, scope: !2518)
!2527 = !DILocation(line: 972, column: 3, scope: !2491, inlinedAt: !2526)
!2528 = !DILocation(line: 972, column: 26, scope: !2491, inlinedAt: !2526)
!2529 = !DILocation(line: 973, column: 13, scope: !2491, inlinedAt: !2526)
!2530 = !DILocation(line: 0, scope: !1505, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 974, column: 3, scope: !2491, inlinedAt: !2526)
!2532 = !DILocation(line: 147, column: 41, scope: !1505, inlinedAt: !2531)
!2533 = !DILocation(line: 147, column: 62, scope: !1505, inlinedAt: !2531)
!2534 = !DILocation(line: 147, column: 57, scope: !1505, inlinedAt: !2531)
!2535 = !DILocation(line: 148, column: 15, scope: !1505, inlinedAt: !2531)
!2536 = !DILocation(line: 149, column: 21, scope: !1505, inlinedAt: !2531)
!2537 = !DILocation(line: 149, column: 24, scope: !1505, inlinedAt: !2531)
!2538 = !DILocation(line: 150, column: 19, scope: !1505, inlinedAt: !2531)
!2539 = !DILocation(line: 150, column: 24, scope: !1505, inlinedAt: !2531)
!2540 = !DILocation(line: 150, column: 6, scope: !1505, inlinedAt: !2531)
!2541 = !DILocation(line: 975, column: 10, scope: !2491, inlinedAt: !2526)
!2542 = !DILocation(line: 976, column: 1, scope: !2491, inlinedAt: !2526)
!2543 = !DILocation(line: 981, column: 3, scope: !2518)
!2544 = distinct !DISubprogram(name: "quotearg_colon", scope: !456, file: !456, line: 985, type: !943, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2545)
!2545 = !{!2546}
!2546 = !DILocalVariable(name: "arg", arg: 1, scope: !2544, file: !456, line: 985, type: !80)
!2547 = !DILocation(line: 0, scope: !2544)
!2548 = !DILocation(line: 0, scope: !2518, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 987, column: 10, scope: !2544)
!2550 = !DILocation(line: 0, scope: !2491, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 981, column: 10, scope: !2518, inlinedAt: !2549)
!2552 = !DILocation(line: 972, column: 3, scope: !2491, inlinedAt: !2551)
!2553 = !DILocation(line: 972, column: 26, scope: !2491, inlinedAt: !2551)
!2554 = !DILocation(line: 973, column: 13, scope: !2491, inlinedAt: !2551)
!2555 = !DILocation(line: 0, scope: !1505, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 974, column: 3, scope: !2491, inlinedAt: !2551)
!2557 = !DILocation(line: 147, column: 57, scope: !1505, inlinedAt: !2556)
!2558 = !DILocation(line: 149, column: 21, scope: !1505, inlinedAt: !2556)
!2559 = !DILocation(line: 150, column: 6, scope: !1505, inlinedAt: !2556)
!2560 = !DILocation(line: 975, column: 10, scope: !2491, inlinedAt: !2551)
!2561 = !DILocation(line: 976, column: 1, scope: !2491, inlinedAt: !2551)
!2562 = !DILocation(line: 987, column: 3, scope: !2544)
!2563 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !456, file: !456, line: 991, type: !2372, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2564)
!2564 = !{!2565, !2566}
!2565 = !DILocalVariable(name: "arg", arg: 1, scope: !2563, file: !456, line: 991, type: !80)
!2566 = !DILocalVariable(name: "argsize", arg: 2, scope: !2563, file: !456, line: 991, type: !118)
!2567 = !DILocation(line: 0, scope: !2563)
!2568 = !DILocation(line: 0, scope: !2491, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 993, column: 10, scope: !2563)
!2570 = !DILocation(line: 972, column: 3, scope: !2491, inlinedAt: !2569)
!2571 = !DILocation(line: 972, column: 26, scope: !2491, inlinedAt: !2569)
!2572 = !DILocation(line: 973, column: 13, scope: !2491, inlinedAt: !2569)
!2573 = !DILocation(line: 0, scope: !1505, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 974, column: 3, scope: !2491, inlinedAt: !2569)
!2575 = !DILocation(line: 147, column: 57, scope: !1505, inlinedAt: !2574)
!2576 = !DILocation(line: 149, column: 21, scope: !1505, inlinedAt: !2574)
!2577 = !DILocation(line: 150, column: 6, scope: !1505, inlinedAt: !2574)
!2578 = !DILocation(line: 975, column: 10, scope: !2491, inlinedAt: !2569)
!2579 = !DILocation(line: 976, column: 1, scope: !2491, inlinedAt: !2569)
!2580 = !DILocation(line: 993, column: 3, scope: !2563)
!2581 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !456, file: !456, line: 997, type: !2383, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2582)
!2582 = !{!2583, !2584, !2585, !2586}
!2583 = !DILocalVariable(name: "n", arg: 1, scope: !2581, file: !456, line: 997, type: !116)
!2584 = !DILocalVariable(name: "s", arg: 2, scope: !2581, file: !456, line: 997, type: !84)
!2585 = !DILocalVariable(name: "arg", arg: 3, scope: !2581, file: !456, line: 997, type: !80)
!2586 = !DILocalVariable(name: "options", scope: !2581, file: !456, line: 999, type: !495)
!2587 = !DILocation(line: 185, column: 26, scope: !2398, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 1000, column: 13, scope: !2581)
!2589 = !DILocation(line: 0, scope: !2581)
!2590 = !DILocation(line: 999, column: 3, scope: !2581)
!2591 = !DILocation(line: 999, column: 26, scope: !2581)
!2592 = !DILocation(line: 0, scope: !2398, inlinedAt: !2588)
!2593 = !DILocation(line: 186, column: 13, scope: !2407, inlinedAt: !2588)
!2594 = !DILocation(line: 186, column: 7, scope: !2398, inlinedAt: !2588)
!2595 = !DILocation(line: 187, column: 5, scope: !2407, inlinedAt: !2588)
!2596 = !{!2597}
!2597 = distinct !{!2597, !2598, !"quoting_options_from_style: argument 0"}
!2598 = distinct !{!2598, !"quoting_options_from_style"}
!2599 = !DILocation(line: 1000, column: 13, scope: !2581)
!2600 = !DILocation(line: 0, scope: !1505, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1001, column: 3, scope: !2581)
!2602 = !DILocation(line: 147, column: 57, scope: !1505, inlinedAt: !2601)
!2603 = !DILocation(line: 149, column: 21, scope: !1505, inlinedAt: !2601)
!2604 = !DILocation(line: 150, column: 6, scope: !1505, inlinedAt: !2601)
!2605 = !DILocation(line: 1002, column: 10, scope: !2581)
!2606 = !DILocation(line: 1003, column: 1, scope: !2581)
!2607 = !DILocation(line: 1002, column: 3, scope: !2581)
!2608 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !456, file: !456, line: 1006, type: !2609, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!260, !116, !80, !80, !80}
!2611 = !{!2612, !2613, !2614, !2615}
!2612 = !DILocalVariable(name: "n", arg: 1, scope: !2608, file: !456, line: 1006, type: !116)
!2613 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2608, file: !456, line: 1006, type: !80)
!2614 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2608, file: !456, line: 1007, type: !80)
!2615 = !DILocalVariable(name: "arg", arg: 4, scope: !2608, file: !456, line: 1007, type: !80)
!2616 = !DILocation(line: 0, scope: !2608)
!2617 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !456, line: 1014, type: !116)
!2618 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !456, file: !456, line: 1014, type: !2619, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!260, !116, !80, !80, !80, !118}
!2621 = !{!2617, !2622, !2623, !2624, !2625, !2626}
!2622 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2618, file: !456, line: 1014, type: !80)
!2623 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2618, file: !456, line: 1015, type: !80)
!2624 = !DILocalVariable(name: "arg", arg: 4, scope: !2618, file: !456, line: 1016, type: !80)
!2625 = !DILocalVariable(name: "argsize", arg: 5, scope: !2618, file: !456, line: 1016, type: !118)
!2626 = !DILocalVariable(name: "o", scope: !2618, file: !456, line: 1018, type: !495)
!2627 = !DILocation(line: 0, scope: !2618, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 1009, column: 10, scope: !2608)
!2629 = !DILocation(line: 1018, column: 3, scope: !2618, inlinedAt: !2628)
!2630 = !DILocation(line: 1018, column: 26, scope: !2618, inlinedAt: !2628)
!2631 = !DILocation(line: 1018, column: 30, scope: !2618, inlinedAt: !2628)
!2632 = !DILocation(line: 0, scope: !1545, inlinedAt: !2633)
!2633 = distinct !DILocation(line: 1019, column: 3, scope: !2618, inlinedAt: !2628)
!2634 = !DILocation(line: 174, column: 12, scope: !1545, inlinedAt: !2633)
!2635 = !DILocation(line: 175, column: 8, scope: !1558, inlinedAt: !2633)
!2636 = !DILocation(line: 175, column: 19, scope: !1558, inlinedAt: !2633)
!2637 = !DILocation(line: 176, column: 5, scope: !1558, inlinedAt: !2633)
!2638 = !DILocation(line: 177, column: 6, scope: !1545, inlinedAt: !2633)
!2639 = !DILocation(line: 177, column: 17, scope: !1545, inlinedAt: !2633)
!2640 = !DILocation(line: 178, column: 6, scope: !1545, inlinedAt: !2633)
!2641 = !DILocation(line: 178, column: 18, scope: !1545, inlinedAt: !2633)
!2642 = !DILocation(line: 1020, column: 10, scope: !2618, inlinedAt: !2628)
!2643 = !DILocation(line: 1021, column: 1, scope: !2618, inlinedAt: !2628)
!2644 = !DILocation(line: 1009, column: 3, scope: !2608)
!2645 = !DILocation(line: 0, scope: !2618)
!2646 = !DILocation(line: 1018, column: 3, scope: !2618)
!2647 = !DILocation(line: 1018, column: 26, scope: !2618)
!2648 = !DILocation(line: 1018, column: 30, scope: !2618)
!2649 = !DILocation(line: 0, scope: !1545, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 1019, column: 3, scope: !2618)
!2651 = !DILocation(line: 174, column: 12, scope: !1545, inlinedAt: !2650)
!2652 = !DILocation(line: 175, column: 8, scope: !1558, inlinedAt: !2650)
!2653 = !DILocation(line: 175, column: 19, scope: !1558, inlinedAt: !2650)
!2654 = !DILocation(line: 176, column: 5, scope: !1558, inlinedAt: !2650)
!2655 = !DILocation(line: 177, column: 6, scope: !1545, inlinedAt: !2650)
!2656 = !DILocation(line: 177, column: 17, scope: !1545, inlinedAt: !2650)
!2657 = !DILocation(line: 178, column: 6, scope: !1545, inlinedAt: !2650)
!2658 = !DILocation(line: 178, column: 18, scope: !1545, inlinedAt: !2650)
!2659 = !DILocation(line: 1020, column: 10, scope: !2618)
!2660 = !DILocation(line: 1021, column: 1, scope: !2618)
!2661 = !DILocation(line: 1020, column: 3, scope: !2618)
!2662 = distinct !DISubprogram(name: "quotearg_custom", scope: !456, file: !456, line: 1024, type: !2663, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2665)
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!260, !80, !80, !80}
!2665 = !{!2666, !2667, !2668}
!2666 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2662, file: !456, line: 1024, type: !80)
!2667 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2662, file: !456, line: 1024, type: !80)
!2668 = !DILocalVariable(name: "arg", arg: 3, scope: !2662, file: !456, line: 1025, type: !80)
!2669 = !DILocation(line: 0, scope: !2662)
!2670 = !DILocation(line: 0, scope: !2608, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 1027, column: 10, scope: !2662)
!2672 = !DILocation(line: 0, scope: !2618, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1009, column: 10, scope: !2608, inlinedAt: !2671)
!2674 = !DILocation(line: 1018, column: 3, scope: !2618, inlinedAt: !2673)
!2675 = !DILocation(line: 1018, column: 26, scope: !2618, inlinedAt: !2673)
!2676 = !DILocation(line: 1018, column: 30, scope: !2618, inlinedAt: !2673)
!2677 = !DILocation(line: 0, scope: !1545, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 1019, column: 3, scope: !2618, inlinedAt: !2673)
!2679 = !DILocation(line: 174, column: 12, scope: !1545, inlinedAt: !2678)
!2680 = !DILocation(line: 175, column: 8, scope: !1558, inlinedAt: !2678)
!2681 = !DILocation(line: 175, column: 19, scope: !1558, inlinedAt: !2678)
!2682 = !DILocation(line: 176, column: 5, scope: !1558, inlinedAt: !2678)
!2683 = !DILocation(line: 177, column: 6, scope: !1545, inlinedAt: !2678)
!2684 = !DILocation(line: 177, column: 17, scope: !1545, inlinedAt: !2678)
!2685 = !DILocation(line: 178, column: 6, scope: !1545, inlinedAt: !2678)
!2686 = !DILocation(line: 178, column: 18, scope: !1545, inlinedAt: !2678)
!2687 = !DILocation(line: 1020, column: 10, scope: !2618, inlinedAt: !2673)
!2688 = !DILocation(line: 1021, column: 1, scope: !2618, inlinedAt: !2673)
!2689 = !DILocation(line: 1027, column: 3, scope: !2662)
!2690 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !456, file: !456, line: 1031, type: !2691, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2693)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!260, !80, !80, !80, !118}
!2693 = !{!2694, !2695, !2696, !2697}
!2694 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2690, file: !456, line: 1031, type: !80)
!2695 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2690, file: !456, line: 1031, type: !80)
!2696 = !DILocalVariable(name: "arg", arg: 3, scope: !2690, file: !456, line: 1032, type: !80)
!2697 = !DILocalVariable(name: "argsize", arg: 4, scope: !2690, file: !456, line: 1032, type: !118)
!2698 = !DILocation(line: 0, scope: !2690)
!2699 = !DILocation(line: 0, scope: !2618, inlinedAt: !2700)
!2700 = distinct !DILocation(line: 1034, column: 10, scope: !2690)
!2701 = !DILocation(line: 1018, column: 3, scope: !2618, inlinedAt: !2700)
!2702 = !DILocation(line: 1018, column: 26, scope: !2618, inlinedAt: !2700)
!2703 = !DILocation(line: 1018, column: 30, scope: !2618, inlinedAt: !2700)
!2704 = !DILocation(line: 0, scope: !1545, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1019, column: 3, scope: !2618, inlinedAt: !2700)
!2706 = !DILocation(line: 174, column: 12, scope: !1545, inlinedAt: !2705)
!2707 = !DILocation(line: 175, column: 8, scope: !1558, inlinedAt: !2705)
!2708 = !DILocation(line: 175, column: 19, scope: !1558, inlinedAt: !2705)
!2709 = !DILocation(line: 176, column: 5, scope: !1558, inlinedAt: !2705)
!2710 = !DILocation(line: 177, column: 6, scope: !1545, inlinedAt: !2705)
!2711 = !DILocation(line: 177, column: 17, scope: !1545, inlinedAt: !2705)
!2712 = !DILocation(line: 178, column: 6, scope: !1545, inlinedAt: !2705)
!2713 = !DILocation(line: 178, column: 18, scope: !1545, inlinedAt: !2705)
!2714 = !DILocation(line: 1020, column: 10, scope: !2618, inlinedAt: !2700)
!2715 = !DILocation(line: 1021, column: 1, scope: !2618, inlinedAt: !2700)
!2716 = !DILocation(line: 1034, column: 3, scope: !2690)
!2717 = distinct !DISubprogram(name: "quote_n_mem", scope: !456, file: !456, line: 1049, type: !2718, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!80, !116, !80, !118}
!2720 = !{!2721, !2722, !2723}
!2721 = !DILocalVariable(name: "n", arg: 1, scope: !2717, file: !456, line: 1049, type: !116)
!2722 = !DILocalVariable(name: "arg", arg: 2, scope: !2717, file: !456, line: 1049, type: !80)
!2723 = !DILocalVariable(name: "argsize", arg: 3, scope: !2717, file: !456, line: 1049, type: !118)
!2724 = !DILocation(line: 0, scope: !2717)
!2725 = !DILocation(line: 1051, column: 10, scope: !2717)
!2726 = !DILocation(line: 1051, column: 3, scope: !2717)
!2727 = distinct !DISubprogram(name: "quote_mem", scope: !456, file: !456, line: 1055, type: !2728, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!80, !80, !118}
!2730 = !{!2731, !2732}
!2731 = !DILocalVariable(name: "arg", arg: 1, scope: !2727, file: !456, line: 1055, type: !80)
!2732 = !DILocalVariable(name: "argsize", arg: 2, scope: !2727, file: !456, line: 1055, type: !118)
!2733 = !DILocation(line: 0, scope: !2727)
!2734 = !DILocation(line: 0, scope: !2717, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 1057, column: 10, scope: !2727)
!2736 = !DILocation(line: 1051, column: 10, scope: !2717, inlinedAt: !2735)
!2737 = !DILocation(line: 1057, column: 3, scope: !2727)
!2738 = distinct !DISubprogram(name: "quote_n", scope: !456, file: !456, line: 1061, type: !2739, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2741)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!80, !116, !80}
!2741 = !{!2742, !2743}
!2742 = !DILocalVariable(name: "n", arg: 1, scope: !2738, file: !456, line: 1061, type: !116)
!2743 = !DILocalVariable(name: "arg", arg: 2, scope: !2738, file: !456, line: 1061, type: !80)
!2744 = !DILocation(line: 0, scope: !2738)
!2745 = !DILocation(line: 0, scope: !2717, inlinedAt: !2746)
!2746 = distinct !DILocation(line: 1063, column: 10, scope: !2738)
!2747 = !DILocation(line: 1051, column: 10, scope: !2717, inlinedAt: !2746)
!2748 = !DILocation(line: 1063, column: 3, scope: !2738)
!2749 = distinct !DISubprogram(name: "quote", scope: !456, file: !456, line: 1067, type: !2750, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!80, !80}
!2752 = !{!2753}
!2753 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !456, line: 1067, type: !80)
!2754 = !DILocation(line: 0, scope: !2749)
!2755 = !DILocation(line: 0, scope: !2738, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 1069, column: 10, scope: !2749)
!2757 = !DILocation(line: 0, scope: !2717, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 1063, column: 10, scope: !2738, inlinedAt: !2756)
!2759 = !DILocation(line: 1051, column: 10, scope: !2717, inlinedAt: !2758)
!2760 = !DILocation(line: 1069, column: 3, scope: !2749)
!2761 = distinct !DISubprogram(name: "version_etc_arn", scope: !558, file: !558, line: 61, type: !2762, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2799)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{null, !2764, !80, !80, !80, !2798, !118}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !2766)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2766, file: !256, line: 51, baseType: !116, size: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2766, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2766, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2766, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2766, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2766, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2766, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2766, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2766, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2766, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2766, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2766, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2766, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2766, file: !256, line: 70, baseType: !2782, size: 64, offset: 832)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2766, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2766, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2766, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2766, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2766, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2766, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2766, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2766, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2766, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2766, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2766, file: !256, line: 93, baseType: !2782, size: 64, offset: 1344)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2766, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2766, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2766, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2766, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!2799 = !{!2800, !2801, !2802, !2803, !2804, !2805}
!2800 = !DILocalVariable(name: "stream", arg: 1, scope: !2761, file: !558, line: 61, type: !2764)
!2801 = !DILocalVariable(name: "command_name", arg: 2, scope: !2761, file: !558, line: 62, type: !80)
!2802 = !DILocalVariable(name: "package", arg: 3, scope: !2761, file: !558, line: 62, type: !80)
!2803 = !DILocalVariable(name: "version", arg: 4, scope: !2761, file: !558, line: 63, type: !80)
!2804 = !DILocalVariable(name: "authors", arg: 5, scope: !2761, file: !558, line: 64, type: !2798)
!2805 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2761, file: !558, line: 64, type: !118)
!2806 = !DILocation(line: 0, scope: !2761)
!2807 = !DILocation(line: 66, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2761, file: !558, line: 66, column: 7)
!2809 = !DILocation(line: 66, column: 7, scope: !2761)
!2810 = !DILocation(line: 67, column: 5, scope: !2808)
!2811 = !DILocation(line: 69, column: 5, scope: !2808)
!2812 = !DILocation(line: 83, column: 3, scope: !2761)
!2813 = !DILocation(line: 85, column: 3, scope: !2761)
!2814 = !DILocation(line: 88, column: 3, scope: !2761)
!2815 = !DILocation(line: 95, column: 3, scope: !2761)
!2816 = !DILocation(line: 97, column: 3, scope: !2761)
!2817 = !DILocation(line: 105, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2761, file: !558, line: 98, column: 5)
!2819 = !DILocation(line: 106, column: 7, scope: !2818)
!2820 = !DILocation(line: 109, column: 7, scope: !2818)
!2821 = !DILocation(line: 110, column: 7, scope: !2818)
!2822 = !DILocation(line: 113, column: 7, scope: !2818)
!2823 = !DILocation(line: 115, column: 7, scope: !2818)
!2824 = !DILocation(line: 120, column: 7, scope: !2818)
!2825 = !DILocation(line: 122, column: 7, scope: !2818)
!2826 = !DILocation(line: 127, column: 7, scope: !2818)
!2827 = !DILocation(line: 129, column: 7, scope: !2818)
!2828 = !DILocation(line: 134, column: 7, scope: !2818)
!2829 = !DILocation(line: 137, column: 7, scope: !2818)
!2830 = !DILocation(line: 142, column: 7, scope: !2818)
!2831 = !DILocation(line: 145, column: 7, scope: !2818)
!2832 = !DILocation(line: 150, column: 7, scope: !2818)
!2833 = !DILocation(line: 154, column: 7, scope: !2818)
!2834 = !DILocation(line: 159, column: 7, scope: !2818)
!2835 = !DILocation(line: 163, column: 7, scope: !2818)
!2836 = !DILocation(line: 170, column: 7, scope: !2818)
!2837 = !DILocation(line: 174, column: 7, scope: !2818)
!2838 = !DILocation(line: 176, column: 1, scope: !2761)
!2839 = distinct !DISubprogram(name: "version_etc_ar", scope: !558, file: !558, line: 183, type: !2840, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{null, !2764, !80, !80, !80, !2798}
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848}
!2843 = !DILocalVariable(name: "stream", arg: 1, scope: !2839, file: !558, line: 183, type: !2764)
!2844 = !DILocalVariable(name: "command_name", arg: 2, scope: !2839, file: !558, line: 184, type: !80)
!2845 = !DILocalVariable(name: "package", arg: 3, scope: !2839, file: !558, line: 184, type: !80)
!2846 = !DILocalVariable(name: "version", arg: 4, scope: !2839, file: !558, line: 185, type: !80)
!2847 = !DILocalVariable(name: "authors", arg: 5, scope: !2839, file: !558, line: 185, type: !2798)
!2848 = !DILocalVariable(name: "n_authors", scope: !2839, file: !558, line: 187, type: !118)
!2849 = !DILocation(line: 0, scope: !2839)
!2850 = !DILocation(line: 189, column: 8, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2839, file: !558, line: 189, column: 3)
!2852 = !DILocation(line: 189, scope: !2851)
!2853 = !DILocation(line: 189, column: 23, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2851, file: !558, line: 189, column: 3)
!2855 = !DILocation(line: 189, column: 3, scope: !2851)
!2856 = !DILocation(line: 189, column: 52, scope: !2854)
!2857 = distinct !{!2857, !2855, !2858, !867}
!2858 = !DILocation(line: 190, column: 5, scope: !2851)
!2859 = !DILocation(line: 191, column: 3, scope: !2839)
!2860 = !DILocation(line: 192, column: 1, scope: !2839)
!2861 = distinct !DISubprogram(name: "version_etc_va", scope: !558, file: !558, line: 199, type: !2862, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2875)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !2764, !80, !80, !80, !2864}
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !347, line: 52, baseType: !2865)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !349, line: 14, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2867, baseType: !2868)
!2867 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2869)
!2869 = !{!2870, !2871, !2872, !2873, !2874}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2868, file: !2867, line: 192, baseType: !115, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2868, file: !2867, line: 192, baseType: !115, size: 64, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2868, file: !2867, line: 192, baseType: !115, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2868, file: !2867, line: 192, baseType: !116, size: 32, offset: 192)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2868, file: !2867, line: 192, baseType: !116, size: 32, offset: 224)
!2875 = !{!2876, !2877, !2878, !2879, !2880, !2881, !2882}
!2876 = !DILocalVariable(name: "stream", arg: 1, scope: !2861, file: !558, line: 199, type: !2764)
!2877 = !DILocalVariable(name: "command_name", arg: 2, scope: !2861, file: !558, line: 200, type: !80)
!2878 = !DILocalVariable(name: "package", arg: 3, scope: !2861, file: !558, line: 200, type: !80)
!2879 = !DILocalVariable(name: "version", arg: 4, scope: !2861, file: !558, line: 201, type: !80)
!2880 = !DILocalVariable(name: "authors", arg: 5, scope: !2861, file: !558, line: 201, type: !2864)
!2881 = !DILocalVariable(name: "n_authors", scope: !2861, file: !558, line: 203, type: !118)
!2882 = !DILocalVariable(name: "authtab", scope: !2861, file: !558, line: 204, type: !2883)
!2883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!2884 = !DILocation(line: 0, scope: !2861)
!2885 = !DILocation(line: 201, column: 46, scope: !2861)
!2886 = !DILocation(line: 204, column: 3, scope: !2861)
!2887 = !DILocation(line: 204, column: 15, scope: !2861)
!2888 = !DILocation(line: 208, column: 35, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !558, line: 206, column: 3)
!2890 = distinct !DILexicalBlock(scope: !2861, file: !558, line: 206, column: 3)
!2891 = !DILocation(line: 208, column: 33, scope: !2889)
!2892 = !DILocation(line: 208, column: 67, scope: !2889)
!2893 = !DILocation(line: 206, column: 3, scope: !2890)
!2894 = !DILocation(line: 208, column: 14, scope: !2889)
!2895 = !DILocation(line: 0, scope: !2890)
!2896 = !DILocation(line: 211, column: 3, scope: !2861)
!2897 = !DILocation(line: 213, column: 1, scope: !2861)
!2898 = distinct !DISubprogram(name: "version_etc", scope: !558, file: !558, line: 230, type: !2899, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2901)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2764, !80, !80, !80, null}
!2901 = !{!2902, !2903, !2904, !2905, !2906}
!2902 = !DILocalVariable(name: "stream", arg: 1, scope: !2898, file: !558, line: 230, type: !2764)
!2903 = !DILocalVariable(name: "command_name", arg: 2, scope: !2898, file: !558, line: 231, type: !80)
!2904 = !DILocalVariable(name: "package", arg: 3, scope: !2898, file: !558, line: 231, type: !80)
!2905 = !DILocalVariable(name: "version", arg: 4, scope: !2898, file: !558, line: 232, type: !80)
!2906 = !DILocalVariable(name: "authors", scope: !2898, file: !558, line: 234, type: !2864)
!2907 = !DILocation(line: 0, scope: !2898)
!2908 = !DILocation(line: 234, column: 3, scope: !2898)
!2909 = !DILocation(line: 234, column: 11, scope: !2898)
!2910 = !DILocation(line: 235, column: 3, scope: !2898)
!2911 = !DILocation(line: 236, column: 3, scope: !2898)
!2912 = !DILocation(line: 237, column: 3, scope: !2898)
!2913 = !DILocation(line: 238, column: 1, scope: !2898)
!2914 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !558, file: !558, line: 241, type: !388, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !805)
!2915 = !DILocation(line: 243, column: 3, scope: !2914)
!2916 = !DILocation(line: 248, column: 3, scope: !2914)
!2917 = !DILocation(line: 254, column: 3, scope: !2914)
!2918 = !DILocation(line: 259, column: 3, scope: !2914)
!2919 = !DILocation(line: 261, column: 1, scope: !2914)
!2920 = distinct !DISubprogram(name: "xnrealloc", scope: !2921, file: !2921, line: 147, type: !2922, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2924)
!2921 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!115, !115, !118, !118}
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "p", arg: 1, scope: !2920, file: !2921, line: 147, type: !115)
!2926 = !DILocalVariable(name: "n", arg: 2, scope: !2920, file: !2921, line: 147, type: !118)
!2927 = !DILocalVariable(name: "s", arg: 3, scope: !2920, file: !2921, line: 147, type: !118)
!2928 = !DILocation(line: 0, scope: !2920)
!2929 = !DILocalVariable(name: "p", arg: 1, scope: !2930, file: !689, line: 83, type: !115)
!2930 = distinct !DISubprogram(name: "xreallocarray", scope: !689, file: !689, line: 83, type: !2922, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2931)
!2931 = !{!2929, !2932, !2933}
!2932 = !DILocalVariable(name: "n", arg: 2, scope: !2930, file: !689, line: 83, type: !118)
!2933 = !DILocalVariable(name: "s", arg: 3, scope: !2930, file: !689, line: 83, type: !118)
!2934 = !DILocation(line: 0, scope: !2930, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 149, column: 10, scope: !2920)
!2936 = !DILocation(line: 85, column: 25, scope: !2930, inlinedAt: !2935)
!2937 = !DILocalVariable(name: "p", arg: 1, scope: !2938, file: !689, line: 37, type: !115)
!2938 = distinct !DISubprogram(name: "check_nonnull", scope: !689, file: !689, line: 37, type: !2939, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!115, !115}
!2941 = !{!2937}
!2942 = !DILocation(line: 0, scope: !2938, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 85, column: 10, scope: !2930, inlinedAt: !2935)
!2944 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !2943)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !689, line: 39, column: 7)
!2946 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !2943)
!2947 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !2943)
!2948 = !DILocation(line: 149, column: 3, scope: !2920)
!2949 = !DILocation(line: 0, scope: !2930)
!2950 = !DILocation(line: 85, column: 25, scope: !2930)
!2951 = !DILocation(line: 0, scope: !2938, inlinedAt: !2952)
!2952 = distinct !DILocation(line: 85, column: 10, scope: !2930)
!2953 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !2952)
!2954 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !2952)
!2955 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !2952)
!2956 = !DILocation(line: 85, column: 3, scope: !2930)
!2957 = distinct !DISubprogram(name: "xmalloc", scope: !689, file: !689, line: 47, type: !2958, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!115, !118}
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "s", arg: 1, scope: !2957, file: !689, line: 47, type: !118)
!2962 = !DILocation(line: 0, scope: !2957)
!2963 = !DILocation(line: 49, column: 25, scope: !2957)
!2964 = !DILocation(line: 0, scope: !2938, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 49, column: 10, scope: !2957)
!2966 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !2965)
!2967 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !2965)
!2968 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !2965)
!2969 = !DILocation(line: 49, column: 3, scope: !2957)
!2970 = !DISubprogram(name: "malloc", scope: !941, file: !941, line: 540, type: !2958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!2971 = distinct !DISubprogram(name: "ximalloc", scope: !689, file: !689, line: 53, type: !2972, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!115, !708}
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "s", arg: 1, scope: !2971, file: !689, line: 53, type: !708)
!2976 = !DILocation(line: 0, scope: !2971)
!2977 = !DILocalVariable(name: "s", arg: 1, scope: !2978, file: !2979, line: 55, type: !708)
!2978 = distinct !DISubprogram(name: "imalloc", scope: !2979, file: !2979, line: 55, type: !2972, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2980)
!2979 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2980 = !{!2977}
!2981 = !DILocation(line: 0, scope: !2978, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 55, column: 25, scope: !2971)
!2983 = !DILocation(line: 57, column: 26, scope: !2978, inlinedAt: !2982)
!2984 = !DILocation(line: 0, scope: !2938, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 55, column: 10, scope: !2971)
!2986 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !2985)
!2987 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !2985)
!2988 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !2985)
!2989 = !DILocation(line: 55, column: 3, scope: !2971)
!2990 = distinct !DISubprogram(name: "xcharalloc", scope: !689, file: !689, line: 59, type: !2991, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!260, !118}
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "n", arg: 1, scope: !2990, file: !689, line: 59, type: !118)
!2995 = !DILocation(line: 0, scope: !2990)
!2996 = !DILocation(line: 0, scope: !2957, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 61, column: 10, scope: !2990)
!2998 = !DILocation(line: 49, column: 25, scope: !2957, inlinedAt: !2997)
!2999 = !DILocation(line: 0, scope: !2938, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 49, column: 10, scope: !2957, inlinedAt: !2997)
!3001 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3000)
!3002 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3000)
!3003 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3000)
!3004 = !DILocation(line: 61, column: 3, scope: !2990)
!3005 = distinct !DISubprogram(name: "xrealloc", scope: !689, file: !689, line: 68, type: !3006, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3008)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!115, !115, !118}
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "p", arg: 1, scope: !3005, file: !689, line: 68, type: !115)
!3010 = !DILocalVariable(name: "s", arg: 2, scope: !3005, file: !689, line: 68, type: !118)
!3011 = !DILocation(line: 0, scope: !3005)
!3012 = !DILocalVariable(name: "ptr", arg: 1, scope: !3013, file: !3014, line: 2057, type: !115)
!3013 = distinct !DISubprogram(name: "rpl_realloc", scope: !3014, file: !3014, line: 2057, type: !3006, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3015)
!3014 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3015 = !{!3012, !3016}
!3016 = !DILocalVariable(name: "size", arg: 2, scope: !3013, file: !3014, line: 2057, type: !118)
!3017 = !DILocation(line: 0, scope: !3013, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 70, column: 25, scope: !3005)
!3019 = !DILocation(line: 2059, column: 24, scope: !3013, inlinedAt: !3018)
!3020 = !DILocation(line: 2059, column: 10, scope: !3013, inlinedAt: !3018)
!3021 = !DILocation(line: 0, scope: !2938, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 70, column: 10, scope: !3005)
!3023 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3022)
!3024 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3022)
!3025 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3022)
!3026 = !DILocation(line: 70, column: 3, scope: !3005)
!3027 = !DISubprogram(name: "realloc", scope: !941, file: !941, line: 551, type: !3006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3028 = distinct !DISubprogram(name: "xirealloc", scope: !689, file: !689, line: 74, type: !3029, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!115, !115, !708}
!3031 = !{!3032, !3033}
!3032 = !DILocalVariable(name: "p", arg: 1, scope: !3028, file: !689, line: 74, type: !115)
!3033 = !DILocalVariable(name: "s", arg: 2, scope: !3028, file: !689, line: 74, type: !708)
!3034 = !DILocation(line: 0, scope: !3028)
!3035 = !DILocalVariable(name: "p", arg: 1, scope: !3036, file: !2979, line: 66, type: !115)
!3036 = distinct !DISubprogram(name: "irealloc", scope: !2979, file: !2979, line: 66, type: !3029, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3037)
!3037 = !{!3035, !3038}
!3038 = !DILocalVariable(name: "s", arg: 2, scope: !3036, file: !2979, line: 66, type: !708)
!3039 = !DILocation(line: 0, scope: !3036, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 76, column: 25, scope: !3028)
!3041 = !DILocation(line: 0, scope: !3013, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 68, column: 26, scope: !3036, inlinedAt: !3040)
!3043 = !DILocation(line: 2059, column: 24, scope: !3013, inlinedAt: !3042)
!3044 = !DILocation(line: 2059, column: 10, scope: !3013, inlinedAt: !3042)
!3045 = !DILocation(line: 0, scope: !2938, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 76, column: 10, scope: !3028)
!3047 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3046)
!3048 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3046)
!3049 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3046)
!3050 = !DILocation(line: 76, column: 3, scope: !3028)
!3051 = distinct !DISubprogram(name: "xireallocarray", scope: !689, file: !689, line: 89, type: !3052, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3054)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!115, !115, !708, !708}
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "p", arg: 1, scope: !3051, file: !689, line: 89, type: !115)
!3056 = !DILocalVariable(name: "n", arg: 2, scope: !3051, file: !689, line: 89, type: !708)
!3057 = !DILocalVariable(name: "s", arg: 3, scope: !3051, file: !689, line: 89, type: !708)
!3058 = !DILocation(line: 0, scope: !3051)
!3059 = !DILocalVariable(name: "p", arg: 1, scope: !3060, file: !2979, line: 98, type: !115)
!3060 = distinct !DISubprogram(name: "ireallocarray", scope: !2979, file: !2979, line: 98, type: !3052, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3061)
!3061 = !{!3059, !3062, !3063}
!3062 = !DILocalVariable(name: "n", arg: 2, scope: !3060, file: !2979, line: 98, type: !708)
!3063 = !DILocalVariable(name: "s", arg: 3, scope: !3060, file: !2979, line: 98, type: !708)
!3064 = !DILocation(line: 0, scope: !3060, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 91, column: 25, scope: !3051)
!3066 = !DILocation(line: 101, column: 13, scope: !3060, inlinedAt: !3065)
!3067 = !DILocation(line: 0, scope: !2938, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 91, column: 10, scope: !3051)
!3069 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3068)
!3070 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3068)
!3071 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3068)
!3072 = !DILocation(line: 91, column: 3, scope: !3051)
!3073 = distinct !DISubprogram(name: "xnmalloc", scope: !689, file: !689, line: 98, type: !3074, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!115, !118, !118}
!3076 = !{!3077, !3078}
!3077 = !DILocalVariable(name: "n", arg: 1, scope: !3073, file: !689, line: 98, type: !118)
!3078 = !DILocalVariable(name: "s", arg: 2, scope: !3073, file: !689, line: 98, type: !118)
!3079 = !DILocation(line: 0, scope: !3073)
!3080 = !DILocation(line: 0, scope: !2930, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 100, column: 10, scope: !3073)
!3082 = !DILocation(line: 85, column: 25, scope: !2930, inlinedAt: !3081)
!3083 = !DILocation(line: 0, scope: !2938, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 85, column: 10, scope: !2930, inlinedAt: !3081)
!3085 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3084)
!3086 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3084)
!3087 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3084)
!3088 = !DILocation(line: 100, column: 3, scope: !3073)
!3089 = distinct !DISubprogram(name: "xinmalloc", scope: !689, file: !689, line: 104, type: !3090, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!115, !708, !708}
!3092 = !{!3093, !3094}
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3089, file: !689, line: 104, type: !708)
!3094 = !DILocalVariable(name: "s", arg: 2, scope: !3089, file: !689, line: 104, type: !708)
!3095 = !DILocation(line: 0, scope: !3089)
!3096 = !DILocation(line: 0, scope: !3051, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 106, column: 10, scope: !3089)
!3098 = !DILocation(line: 0, scope: !3060, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 91, column: 25, scope: !3051, inlinedAt: !3097)
!3100 = !DILocation(line: 101, column: 13, scope: !3060, inlinedAt: !3099)
!3101 = !DILocation(line: 0, scope: !2938, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 91, column: 10, scope: !3051, inlinedAt: !3097)
!3103 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3102)
!3104 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3102)
!3105 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3102)
!3106 = !DILocation(line: 106, column: 3, scope: !3089)
!3107 = distinct !DISubprogram(name: "x2realloc", scope: !689, file: !689, line: 116, type: !3108, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!115, !115, !695}
!3110 = !{!3111, !3112}
!3111 = !DILocalVariable(name: "p", arg: 1, scope: !3107, file: !689, line: 116, type: !115)
!3112 = !DILocalVariable(name: "ps", arg: 2, scope: !3107, file: !689, line: 116, type: !695)
!3113 = !DILocation(line: 0, scope: !3107)
!3114 = !DILocation(line: 0, scope: !692, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 118, column: 10, scope: !3107)
!3116 = !DILocation(line: 178, column: 14, scope: !692, inlinedAt: !3115)
!3117 = !DILocation(line: 180, column: 9, scope: !3118, inlinedAt: !3115)
!3118 = distinct !DILexicalBlock(scope: !692, file: !689, line: 180, column: 7)
!3119 = !DILocation(line: 180, column: 7, scope: !692, inlinedAt: !3115)
!3120 = !DILocation(line: 182, column: 13, scope: !3121, inlinedAt: !3115)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !689, line: 182, column: 11)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !689, line: 181, column: 5)
!3123 = !DILocation(line: 182, column: 11, scope: !3122, inlinedAt: !3115)
!3124 = !DILocation(line: 197, column: 11, scope: !3125, inlinedAt: !3115)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !689, line: 197, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3118, file: !689, line: 195, column: 5)
!3127 = !DILocation(line: 197, column: 11, scope: !3126, inlinedAt: !3115)
!3128 = !DILocation(line: 198, column: 9, scope: !3125, inlinedAt: !3115)
!3129 = !DILocation(line: 0, scope: !2930, inlinedAt: !3130)
!3130 = distinct !DILocation(line: 201, column: 7, scope: !692, inlinedAt: !3115)
!3131 = !DILocation(line: 85, column: 25, scope: !2930, inlinedAt: !3130)
!3132 = !DILocation(line: 0, scope: !2938, inlinedAt: !3133)
!3133 = distinct !DILocation(line: 85, column: 10, scope: !2930, inlinedAt: !3130)
!3134 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3133)
!3135 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3133)
!3136 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3133)
!3137 = !DILocation(line: 202, column: 7, scope: !692, inlinedAt: !3115)
!3138 = !DILocation(line: 118, column: 3, scope: !3107)
!3139 = !DILocation(line: 0, scope: !692)
!3140 = !DILocation(line: 178, column: 14, scope: !692)
!3141 = !DILocation(line: 180, column: 9, scope: !3118)
!3142 = !DILocation(line: 180, column: 7, scope: !692)
!3143 = !DILocation(line: 182, column: 13, scope: !3121)
!3144 = !DILocation(line: 182, column: 11, scope: !3122)
!3145 = !DILocation(line: 190, column: 30, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3121, file: !689, line: 183, column: 9)
!3147 = !DILocation(line: 191, column: 16, scope: !3146)
!3148 = !DILocation(line: 191, column: 13, scope: !3146)
!3149 = !DILocation(line: 192, column: 9, scope: !3146)
!3150 = !DILocation(line: 197, column: 11, scope: !3125)
!3151 = !DILocation(line: 197, column: 11, scope: !3126)
!3152 = !DILocation(line: 198, column: 9, scope: !3125)
!3153 = !DILocation(line: 0, scope: !2930, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 201, column: 7, scope: !692)
!3155 = !DILocation(line: 85, column: 25, scope: !2930, inlinedAt: !3154)
!3156 = !DILocation(line: 0, scope: !2938, inlinedAt: !3157)
!3157 = distinct !DILocation(line: 85, column: 10, scope: !2930, inlinedAt: !3154)
!3158 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3157)
!3159 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3157)
!3160 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3157)
!3161 = !DILocation(line: 202, column: 7, scope: !692)
!3162 = !DILocation(line: 203, column: 3, scope: !692)
!3163 = !DILocation(line: 0, scope: !704)
!3164 = !DILocation(line: 230, column: 14, scope: !704)
!3165 = !DILocation(line: 238, column: 7, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !704, file: !689, line: 238, column: 7)
!3167 = !DILocation(line: 238, column: 7, scope: !704)
!3168 = !DILocation(line: 240, column: 9, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !704, file: !689, line: 240, column: 7)
!3170 = !DILocation(line: 240, column: 18, scope: !3169)
!3171 = !DILocation(line: 253, column: 8, scope: !704)
!3172 = !DILocation(line: 258, column: 27, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !689, line: 257, column: 5)
!3174 = distinct !DILexicalBlock(scope: !704, file: !689, line: 256, column: 7)
!3175 = !DILocation(line: 259, column: 32, scope: !3173)
!3176 = !DILocation(line: 260, column: 5, scope: !3173)
!3177 = !DILocation(line: 262, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !704, file: !689, line: 262, column: 7)
!3179 = !DILocation(line: 262, column: 7, scope: !704)
!3180 = !DILocation(line: 263, column: 9, scope: !3178)
!3181 = !DILocation(line: 263, column: 5, scope: !3178)
!3182 = !DILocation(line: 264, column: 9, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !704, file: !689, line: 264, column: 7)
!3184 = !DILocation(line: 264, column: 14, scope: !3183)
!3185 = !DILocation(line: 265, column: 7, scope: !3183)
!3186 = !DILocation(line: 265, column: 11, scope: !3183)
!3187 = !DILocation(line: 266, column: 11, scope: !3183)
!3188 = !DILocation(line: 267, column: 14, scope: !3183)
!3189 = !DILocation(line: 264, column: 7, scope: !704)
!3190 = !DILocation(line: 268, column: 5, scope: !3183)
!3191 = !DILocation(line: 0, scope: !3005, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 269, column: 8, scope: !704)
!3193 = !DILocation(line: 0, scope: !3013, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 70, column: 25, scope: !3005, inlinedAt: !3192)
!3195 = !DILocation(line: 2059, column: 24, scope: !3013, inlinedAt: !3194)
!3196 = !DILocation(line: 2059, column: 10, scope: !3013, inlinedAt: !3194)
!3197 = !DILocation(line: 0, scope: !2938, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 70, column: 10, scope: !3005, inlinedAt: !3192)
!3199 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3198)
!3201 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3198)
!3202 = !DILocation(line: 270, column: 7, scope: !704)
!3203 = !DILocation(line: 271, column: 3, scope: !704)
!3204 = distinct !DISubprogram(name: "xzalloc", scope: !689, file: !689, line: 279, type: !2958, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3205)
!3205 = !{!3206}
!3206 = !DILocalVariable(name: "s", arg: 1, scope: !3204, file: !689, line: 279, type: !118)
!3207 = !DILocation(line: 0, scope: !3204)
!3208 = !DILocalVariable(name: "n", arg: 1, scope: !3209, file: !689, line: 294, type: !118)
!3209 = distinct !DISubprogram(name: "xcalloc", scope: !689, file: !689, line: 294, type: !3074, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3210)
!3210 = !{!3208, !3211}
!3211 = !DILocalVariable(name: "s", arg: 2, scope: !3209, file: !689, line: 294, type: !118)
!3212 = !DILocation(line: 0, scope: !3209, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 281, column: 10, scope: !3204)
!3214 = !DILocation(line: 296, column: 25, scope: !3209, inlinedAt: !3213)
!3215 = !DILocation(line: 0, scope: !2938, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 296, column: 10, scope: !3209, inlinedAt: !3213)
!3217 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3216)
!3218 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3216)
!3219 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3216)
!3220 = !DILocation(line: 281, column: 3, scope: !3204)
!3221 = !DISubprogram(name: "calloc", scope: !941, file: !941, line: 543, type: !3074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3222 = !DILocation(line: 0, scope: !3209)
!3223 = !DILocation(line: 296, column: 25, scope: !3209)
!3224 = !DILocation(line: 0, scope: !2938, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 296, column: 10, scope: !3209)
!3226 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3225)
!3227 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3225)
!3228 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3225)
!3229 = !DILocation(line: 296, column: 3, scope: !3209)
!3230 = distinct !DISubprogram(name: "xizalloc", scope: !689, file: !689, line: 285, type: !2972, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3231)
!3231 = !{!3232}
!3232 = !DILocalVariable(name: "s", arg: 1, scope: !3230, file: !689, line: 285, type: !708)
!3233 = !DILocation(line: 0, scope: !3230)
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3235, file: !689, line: 300, type: !708)
!3235 = distinct !DISubprogram(name: "xicalloc", scope: !689, file: !689, line: 300, type: !3090, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3236)
!3236 = !{!3234, !3237}
!3237 = !DILocalVariable(name: "s", arg: 2, scope: !3235, file: !689, line: 300, type: !708)
!3238 = !DILocation(line: 0, scope: !3235, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 287, column: 10, scope: !3230)
!3240 = !DILocalVariable(name: "n", arg: 1, scope: !3241, file: !2979, line: 77, type: !708)
!3241 = distinct !DISubprogram(name: "icalloc", scope: !2979, file: !2979, line: 77, type: !3090, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3242)
!3242 = !{!3240, !3243}
!3243 = !DILocalVariable(name: "s", arg: 2, scope: !3241, file: !2979, line: 77, type: !708)
!3244 = !DILocation(line: 0, scope: !3241, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 302, column: 25, scope: !3235, inlinedAt: !3239)
!3246 = !DILocation(line: 91, column: 10, scope: !3241, inlinedAt: !3245)
!3247 = !DILocation(line: 0, scope: !2938, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 302, column: 10, scope: !3235, inlinedAt: !3239)
!3249 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3248)
!3250 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3248)
!3251 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3248)
!3252 = !DILocation(line: 287, column: 3, scope: !3230)
!3253 = !DILocation(line: 0, scope: !3235)
!3254 = !DILocation(line: 0, scope: !3241, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 302, column: 25, scope: !3235)
!3256 = !DILocation(line: 91, column: 10, scope: !3241, inlinedAt: !3255)
!3257 = !DILocation(line: 0, scope: !2938, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 302, column: 10, scope: !3235)
!3259 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3258)
!3260 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3258)
!3261 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3258)
!3262 = !DILocation(line: 302, column: 3, scope: !3235)
!3263 = distinct !DISubprogram(name: "xmemdup", scope: !689, file: !689, line: 310, type: !3264, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3266)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!115, !965, !118}
!3266 = !{!3267, !3268}
!3267 = !DILocalVariable(name: "p", arg: 1, scope: !3263, file: !689, line: 310, type: !965)
!3268 = !DILocalVariable(name: "s", arg: 2, scope: !3263, file: !689, line: 310, type: !118)
!3269 = !DILocation(line: 0, scope: !3263)
!3270 = !DILocation(line: 0, scope: !2957, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 312, column: 18, scope: !3263)
!3272 = !DILocation(line: 49, column: 25, scope: !2957, inlinedAt: !3271)
!3273 = !DILocation(line: 0, scope: !2938, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 49, column: 10, scope: !2957, inlinedAt: !3271)
!3275 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3274)
!3276 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3274)
!3277 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3274)
!3278 = !DILocalVariable(name: "__dest", arg: 1, scope: !3279, file: !1448, line: 26, type: !3282)
!3279 = distinct !DISubprogram(name: "memcpy", scope: !1448, file: !1448, line: 26, type: !3280, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3283)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!115, !3282, !964, !118}
!3282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!3283 = !{!3278, !3284, !3285}
!3284 = !DILocalVariable(name: "__src", arg: 2, scope: !3279, file: !1448, line: 26, type: !964)
!3285 = !DILocalVariable(name: "__len", arg: 3, scope: !3279, file: !1448, line: 26, type: !118)
!3286 = !DILocation(line: 0, scope: !3279, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 312, column: 10, scope: !3263)
!3288 = !DILocation(line: 29, column: 10, scope: !3279, inlinedAt: !3287)
!3289 = !DILocation(line: 312, column: 3, scope: !3263)
!3290 = distinct !DISubprogram(name: "ximemdup", scope: !689, file: !689, line: 316, type: !3291, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3293)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!115, !965, !708}
!3293 = !{!3294, !3295}
!3294 = !DILocalVariable(name: "p", arg: 1, scope: !3290, file: !689, line: 316, type: !965)
!3295 = !DILocalVariable(name: "s", arg: 2, scope: !3290, file: !689, line: 316, type: !708)
!3296 = !DILocation(line: 0, scope: !3290)
!3297 = !DILocation(line: 0, scope: !2971, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 318, column: 18, scope: !3290)
!3299 = !DILocation(line: 0, scope: !2978, inlinedAt: !3300)
!3300 = distinct !DILocation(line: 55, column: 25, scope: !2971, inlinedAt: !3298)
!3301 = !DILocation(line: 57, column: 26, scope: !2978, inlinedAt: !3300)
!3302 = !DILocation(line: 0, scope: !2938, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 55, column: 10, scope: !2971, inlinedAt: !3298)
!3304 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3303)
!3305 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3303)
!3306 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3303)
!3307 = !DILocation(line: 0, scope: !3279, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 318, column: 10, scope: !3290)
!3309 = !DILocation(line: 29, column: 10, scope: !3279, inlinedAt: !3308)
!3310 = !DILocation(line: 318, column: 3, scope: !3290)
!3311 = distinct !DISubprogram(name: "ximemdup0", scope: !689, file: !689, line: 325, type: !3312, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3314)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!260, !965, !708}
!3314 = !{!3315, !3316, !3317}
!3315 = !DILocalVariable(name: "p", arg: 1, scope: !3311, file: !689, line: 325, type: !965)
!3316 = !DILocalVariable(name: "s", arg: 2, scope: !3311, file: !689, line: 325, type: !708)
!3317 = !DILocalVariable(name: "result", scope: !3311, file: !689, line: 327, type: !260)
!3318 = !DILocation(line: 0, scope: !3311)
!3319 = !DILocation(line: 327, column: 30, scope: !3311)
!3320 = !DILocation(line: 0, scope: !2971, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 327, column: 18, scope: !3311)
!3322 = !DILocation(line: 0, scope: !2978, inlinedAt: !3323)
!3323 = distinct !DILocation(line: 55, column: 25, scope: !2971, inlinedAt: !3321)
!3324 = !DILocation(line: 57, column: 26, scope: !2978, inlinedAt: !3323)
!3325 = !DILocation(line: 0, scope: !2938, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 55, column: 10, scope: !2971, inlinedAt: !3321)
!3327 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3326)
!3328 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3326)
!3329 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3326)
!3330 = !DILocation(line: 328, column: 3, scope: !3311)
!3331 = !DILocation(line: 328, column: 13, scope: !3311)
!3332 = !DILocation(line: 0, scope: !3279, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 329, column: 10, scope: !3311)
!3334 = !DILocation(line: 29, column: 10, scope: !3279, inlinedAt: !3333)
!3335 = !DILocation(line: 329, column: 3, scope: !3311)
!3336 = distinct !DISubprogram(name: "xstrdup", scope: !689, file: !689, line: 335, type: !943, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !3337)
!3337 = !{!3338}
!3338 = !DILocalVariable(name: "string", arg: 1, scope: !3336, file: !689, line: 335, type: !80)
!3339 = !DILocation(line: 0, scope: !3336)
!3340 = !DILocation(line: 337, column: 27, scope: !3336)
!3341 = !DILocation(line: 337, column: 43, scope: !3336)
!3342 = !DILocation(line: 0, scope: !3263, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 337, column: 10, scope: !3336)
!3344 = !DILocation(line: 0, scope: !2957, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 312, column: 18, scope: !3263, inlinedAt: !3343)
!3346 = !DILocation(line: 49, column: 25, scope: !2957, inlinedAt: !3345)
!3347 = !DILocation(line: 0, scope: !2938, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 49, column: 10, scope: !2957, inlinedAt: !3345)
!3349 = !DILocation(line: 39, column: 8, scope: !2945, inlinedAt: !3348)
!3350 = !DILocation(line: 39, column: 7, scope: !2938, inlinedAt: !3348)
!3351 = !DILocation(line: 40, column: 5, scope: !2945, inlinedAt: !3348)
!3352 = !DILocation(line: 0, scope: !3279, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 312, column: 10, scope: !3263, inlinedAt: !3343)
!3354 = !DILocation(line: 29, column: 10, scope: !3279, inlinedAt: !3353)
!3355 = !DILocation(line: 337, column: 3, scope: !3336)
!3356 = distinct !DISubprogram(name: "xalloc_die", scope: !651, file: !651, line: 32, type: !388, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !3357)
!3357 = !{!3358}
!3358 = !DILocalVariable(name: "__errstatus", scope: !3359, file: !651, line: 34, type: !3360)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !651, line: 34, column: 3)
!3360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3361 = !DILocation(line: 34, column: 3, scope: !3359)
!3362 = !DILocation(line: 0, scope: !3359)
!3363 = !DILocation(line: 40, column: 3, scope: !3356)
!3364 = distinct !DISubprogram(name: "close_stream", scope: !725, file: !725, line: 55, type: !3365, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3401)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!116, !3367}
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3369)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3370)
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3369, file: !256, line: 51, baseType: !116, size: 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3369, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3369, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3369, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3369, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3369, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3369, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3369, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3369, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3369, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3369, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3369, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3369, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3369, file: !256, line: 70, baseType: !3385, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3369, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3369, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3369, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3369, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3369, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3369, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3369, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3369, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3369, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3369, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3369, file: !256, line: 93, baseType: !3385, size: 64, offset: 1344)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3369, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3369, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3369, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3369, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3401 = !{!3402, !3403, !3405, !3406}
!3402 = !DILocalVariable(name: "stream", arg: 1, scope: !3364, file: !725, line: 55, type: !3367)
!3403 = !DILocalVariable(name: "some_pending", scope: !3364, file: !725, line: 57, type: !3404)
!3404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!3405 = !DILocalVariable(name: "prev_fail", scope: !3364, file: !725, line: 58, type: !3404)
!3406 = !DILocalVariable(name: "fclose_fail", scope: !3364, file: !725, line: 59, type: !3404)
!3407 = !DILocation(line: 0, scope: !3364)
!3408 = !DILocation(line: 57, column: 30, scope: !3364)
!3409 = !DILocalVariable(name: "__stream", arg: 1, scope: !3410, file: !1199, line: 135, type: !3367)
!3410 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1199, file: !1199, line: 135, type: !3365, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3411)
!3411 = !{!3409}
!3412 = !DILocation(line: 0, scope: !3410, inlinedAt: !3413)
!3413 = distinct !DILocation(line: 58, column: 27, scope: !3364)
!3414 = !DILocation(line: 137, column: 10, scope: !3410, inlinedAt: !3413)
!3415 = !{!1208, !821, i64 0}
!3416 = !DILocation(line: 58, column: 43, scope: !3364)
!3417 = !DILocation(line: 59, column: 29, scope: !3364)
!3418 = !DILocation(line: 59, column: 45, scope: !3364)
!3419 = !DILocation(line: 69, column: 17, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3364, file: !725, line: 69, column: 7)
!3421 = !DILocation(line: 57, column: 50, scope: !3364)
!3422 = !DILocation(line: 69, column: 33, scope: !3420)
!3423 = !DILocation(line: 69, column: 53, scope: !3420)
!3424 = !DILocation(line: 69, column: 59, scope: !3420)
!3425 = !DILocation(line: 69, column: 7, scope: !3364)
!3426 = !DILocation(line: 71, column: 11, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3420, file: !725, line: 70, column: 5)
!3428 = !DILocation(line: 72, column: 9, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3427, file: !725, line: 71, column: 11)
!3430 = !DILocation(line: 72, column: 15, scope: !3429)
!3431 = !DILocation(line: 77, column: 1, scope: !3364)
!3432 = !DISubprogram(name: "__fpending", scope: !3433, file: !3433, line: 75, type: !3434, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3433 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!118, !3367}
!3436 = distinct !DISubprogram(name: "rpl_fclose", scope: !727, file: !727, line: 58, type: !3437, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3473)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!116, !3439}
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3441)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3441, file: !256, line: 51, baseType: !116, size: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3441, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3441, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3441, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3441, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3441, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3441, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3441, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3441, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3441, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3441, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3441, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3441, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3441, file: !256, line: 70, baseType: !3457, size: 64, offset: 832)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3441, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3441, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3441, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3441, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3441, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3441, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3441, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3441, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3441, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3441, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3441, file: !256, line: 93, baseType: !3457, size: 64, offset: 1344)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3441, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3441, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3441, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3441, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3473 = !{!3474, !3475, !3476, !3477}
!3474 = !DILocalVariable(name: "fp", arg: 1, scope: !3436, file: !727, line: 58, type: !3439)
!3475 = !DILocalVariable(name: "saved_errno", scope: !3436, file: !727, line: 60, type: !116)
!3476 = !DILocalVariable(name: "fd", scope: !3436, file: !727, line: 63, type: !116)
!3477 = !DILocalVariable(name: "result", scope: !3436, file: !727, line: 74, type: !116)
!3478 = !DILocation(line: 0, scope: !3436)
!3479 = !DILocation(line: 63, column: 12, scope: !3436)
!3480 = !DILocation(line: 64, column: 10, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3436, file: !727, line: 64, column: 7)
!3482 = !DILocation(line: 64, column: 7, scope: !3436)
!3483 = !DILocation(line: 65, column: 12, scope: !3481)
!3484 = !DILocation(line: 65, column: 5, scope: !3481)
!3485 = !DILocation(line: 70, column: 9, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3436, file: !727, line: 70, column: 7)
!3487 = !DILocation(line: 70, column: 23, scope: !3486)
!3488 = !DILocation(line: 70, column: 33, scope: !3486)
!3489 = !DILocation(line: 70, column: 26, scope: !3486)
!3490 = !DILocation(line: 70, column: 59, scope: !3486)
!3491 = !DILocation(line: 71, column: 7, scope: !3486)
!3492 = !DILocation(line: 71, column: 10, scope: !3486)
!3493 = !DILocation(line: 70, column: 7, scope: !3436)
!3494 = !DILocation(line: 100, column: 12, scope: !3436)
!3495 = !DILocation(line: 105, column: 7, scope: !3436)
!3496 = !DILocation(line: 72, column: 19, scope: !3486)
!3497 = !DILocation(line: 105, column: 19, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3436, file: !727, line: 105, column: 7)
!3499 = !DILocation(line: 107, column: 13, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3498, file: !727, line: 106, column: 5)
!3501 = !DILocation(line: 109, column: 5, scope: !3500)
!3502 = !DILocation(line: 112, column: 1, scope: !3436)
!3503 = !DISubprogram(name: "fileno", scope: !347, file: !347, line: 809, type: !3437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3504 = !DISubprogram(name: "fclose", scope: !347, file: !347, line: 178, type: !3437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3505 = !DISubprogram(name: "__freading", scope: !3433, file: !3433, line: 51, type: !3437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3506 = !DISubprogram(name: "lseek", scope: !1019, file: !1019, line: 339, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!279, !116, !279, !116}
!3509 = distinct !DISubprogram(name: "rpl_fflush", scope: !729, file: !729, line: 130, type: !3510, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3546)
!3510 = !DISubroutineType(types: !3511)
!3511 = !{!116, !3512}
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3515)
!3515 = !{!3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3514, file: !256, line: 51, baseType: !116, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3514, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3514, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3514, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3514, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3514, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3514, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3514, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3514, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3514, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3514, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3514, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3514, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3514, file: !256, line: 70, baseType: !3530, size: 64, offset: 832)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3514, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3514, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3514, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3514, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3514, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3514, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3514, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3514, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3514, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3514, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3514, file: !256, line: 93, baseType: !3530, size: 64, offset: 1344)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3514, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3514, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3514, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3514, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3546 = !{!3547}
!3547 = !DILocalVariable(name: "stream", arg: 1, scope: !3509, file: !729, line: 130, type: !3512)
!3548 = !DILocation(line: 0, scope: !3509)
!3549 = !DILocation(line: 151, column: 14, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3509, file: !729, line: 151, column: 7)
!3551 = !DILocation(line: 151, column: 22, scope: !3550)
!3552 = !DILocation(line: 151, column: 27, scope: !3550)
!3553 = !DILocation(line: 151, column: 7, scope: !3509)
!3554 = !DILocation(line: 152, column: 12, scope: !3550)
!3555 = !DILocation(line: 152, column: 5, scope: !3550)
!3556 = !DILocalVariable(name: "fp", arg: 1, scope: !3557, file: !729, line: 42, type: !3512)
!3557 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !729, file: !729, line: 42, type: !3558, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3560)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{null, !3512}
!3560 = !{!3556}
!3561 = !DILocation(line: 0, scope: !3557, inlinedAt: !3562)
!3562 = distinct !DILocation(line: 157, column: 3, scope: !3509)
!3563 = !DILocation(line: 44, column: 12, scope: !3564, inlinedAt: !3562)
!3564 = distinct !DILexicalBlock(scope: !3557, file: !729, line: 44, column: 7)
!3565 = !DILocation(line: 44, column: 19, scope: !3564, inlinedAt: !3562)
!3566 = !DILocation(line: 44, column: 7, scope: !3557, inlinedAt: !3562)
!3567 = !DILocation(line: 46, column: 5, scope: !3564, inlinedAt: !3562)
!3568 = !DILocation(line: 159, column: 10, scope: !3509)
!3569 = !DILocation(line: 159, column: 3, scope: !3509)
!3570 = !DILocation(line: 236, column: 1, scope: !3509)
!3571 = !DISubprogram(name: "fflush", scope: !347, file: !347, line: 230, type: !3510, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3572 = distinct !DISubprogram(name: "rpl_fseeko", scope: !731, file: !731, line: 28, type: !3573, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3610)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!116, !3575, !3609, !116}
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3577, file: !256, line: 51, baseType: !116, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3577, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3577, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3577, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3577, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3577, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3577, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3577, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3577, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3577, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3577, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3577, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3577, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3577, file: !256, line: 70, baseType: !3593, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3577, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3577, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3577, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3577, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3577, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3577, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3577, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3577, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3577, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3577, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3577, file: !256, line: 93, baseType: !3593, size: 64, offset: 1344)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3577, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3577, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3577, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3577, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3609 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !347, line: 63, baseType: !279)
!3610 = !{!3611, !3612, !3613, !3614}
!3611 = !DILocalVariable(name: "fp", arg: 1, scope: !3572, file: !731, line: 28, type: !3575)
!3612 = !DILocalVariable(name: "offset", arg: 2, scope: !3572, file: !731, line: 28, type: !3609)
!3613 = !DILocalVariable(name: "whence", arg: 3, scope: !3572, file: !731, line: 28, type: !116)
!3614 = !DILocalVariable(name: "pos", scope: !3615, file: !731, line: 123, type: !3609)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !731, line: 119, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3572, file: !731, line: 55, column: 7)
!3617 = !DILocation(line: 0, scope: !3572)
!3618 = !DILocation(line: 55, column: 12, scope: !3616)
!3619 = !{!1208, !761, i64 16}
!3620 = !DILocation(line: 55, column: 33, scope: !3616)
!3621 = !{!1208, !761, i64 8}
!3622 = !DILocation(line: 55, column: 25, scope: !3616)
!3623 = !DILocation(line: 56, column: 7, scope: !3616)
!3624 = !DILocation(line: 56, column: 15, scope: !3616)
!3625 = !DILocation(line: 56, column: 37, scope: !3616)
!3626 = !{!1208, !761, i64 32}
!3627 = !DILocation(line: 56, column: 29, scope: !3616)
!3628 = !DILocation(line: 57, column: 7, scope: !3616)
!3629 = !DILocation(line: 57, column: 15, scope: !3616)
!3630 = !{!1208, !761, i64 72}
!3631 = !DILocation(line: 57, column: 29, scope: !3616)
!3632 = !DILocation(line: 55, column: 7, scope: !3572)
!3633 = !DILocation(line: 123, column: 26, scope: !3615)
!3634 = !DILocation(line: 123, column: 19, scope: !3615)
!3635 = !DILocation(line: 0, scope: !3615)
!3636 = !DILocation(line: 124, column: 15, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3615, file: !731, line: 124, column: 11)
!3638 = !DILocation(line: 124, column: 11, scope: !3615)
!3639 = !DILocation(line: 135, column: 19, scope: !3615)
!3640 = !DILocation(line: 136, column: 12, scope: !3615)
!3641 = !DILocation(line: 136, column: 20, scope: !3615)
!3642 = !{!1208, !1209, i64 144}
!3643 = !DILocation(line: 167, column: 7, scope: !3615)
!3644 = !DILocation(line: 169, column: 10, scope: !3572)
!3645 = !DILocation(line: 169, column: 3, scope: !3572)
!3646 = !DILocation(line: 170, column: 1, scope: !3572)
!3647 = !DISubprogram(name: "fseeko", scope: !347, file: !347, line: 736, type: !3648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!116, !3575, !279, !116}
!3650 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !658, file: !658, line: 100, type: !3651, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3654)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!118, !1466, !80, !118, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!3654 = !{!3655, !3656, !3657, !3658, !3659}
!3655 = !DILocalVariable(name: "pwc", arg: 1, scope: !3650, file: !658, line: 100, type: !1466)
!3656 = !DILocalVariable(name: "s", arg: 2, scope: !3650, file: !658, line: 100, type: !80)
!3657 = !DILocalVariable(name: "n", arg: 3, scope: !3650, file: !658, line: 100, type: !118)
!3658 = !DILocalVariable(name: "ps", arg: 4, scope: !3650, file: !658, line: 100, type: !3653)
!3659 = !DILocalVariable(name: "ret", scope: !3650, file: !658, line: 130, type: !118)
!3660 = !DILocation(line: 0, scope: !3650)
!3661 = !DILocation(line: 105, column: 9, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3650, file: !658, line: 105, column: 7)
!3663 = !DILocation(line: 105, column: 7, scope: !3650)
!3664 = !DILocation(line: 117, column: 10, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3650, file: !658, line: 117, column: 7)
!3666 = !DILocation(line: 117, column: 7, scope: !3650)
!3667 = !DILocation(line: 130, column: 16, scope: !3650)
!3668 = !DILocation(line: 135, column: 11, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3650, file: !658, line: 135, column: 7)
!3670 = !DILocation(line: 135, column: 25, scope: !3669)
!3671 = !DILocation(line: 135, column: 30, scope: !3669)
!3672 = !DILocation(line: 135, column: 7, scope: !3650)
!3673 = !DILocalVariable(name: "ps", arg: 1, scope: !3674, file: !1439, line: 1135, type: !3653)
!3674 = distinct !DISubprogram(name: "mbszero", scope: !1439, file: !1439, line: 1135, type: !3675, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3677)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{null, !3653}
!3677 = !{!3673}
!3678 = !DILocation(line: 0, scope: !3674, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 137, column: 5, scope: !3669)
!3680 = !DILocalVariable(name: "__dest", arg: 1, scope: !3681, file: !1448, line: 57, type: !115)
!3681 = distinct !DISubprogram(name: "memset", scope: !1448, file: !1448, line: 57, type: !1449, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !3682)
!3682 = !{!3680, !3683, !3684}
!3683 = !DILocalVariable(name: "__ch", arg: 2, scope: !3681, file: !1448, line: 57, type: !116)
!3684 = !DILocalVariable(name: "__len", arg: 3, scope: !3681, file: !1448, line: 57, type: !118)
!3685 = !DILocation(line: 0, scope: !3681, inlinedAt: !3686)
!3686 = distinct !DILocation(line: 1137, column: 3, scope: !3674, inlinedAt: !3679)
!3687 = !DILocation(line: 59, column: 10, scope: !3681, inlinedAt: !3686)
!3688 = !DILocation(line: 137, column: 5, scope: !3669)
!3689 = !DILocation(line: 138, column: 11, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3650, file: !658, line: 138, column: 7)
!3691 = !DILocation(line: 138, column: 7, scope: !3650)
!3692 = !DILocation(line: 139, column: 5, scope: !3690)
!3693 = !DILocation(line: 143, column: 26, scope: !3694)
!3694 = distinct !DILexicalBlock(scope: !3650, file: !658, line: 143, column: 7)
!3695 = !DILocation(line: 143, column: 41, scope: !3694)
!3696 = !DILocation(line: 143, column: 7, scope: !3650)
!3697 = !DILocation(line: 145, column: 15, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !658, line: 145, column: 11)
!3699 = distinct !DILexicalBlock(scope: !3694, file: !658, line: 144, column: 5)
!3700 = !DILocation(line: 145, column: 11, scope: !3699)
!3701 = !DILocation(line: 146, column: 32, scope: !3698)
!3702 = !DILocation(line: 146, column: 16, scope: !3698)
!3703 = !DILocation(line: 146, column: 14, scope: !3698)
!3704 = !DILocation(line: 146, column: 9, scope: !3698)
!3705 = !DILocation(line: 286, column: 1, scope: !3650)
!3706 = !DISubprogram(name: "mbsinit", scope: !3707, file: !3707, line: 293, type: !3708, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !805)
!3707 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!116, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!3712 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !733, file: !733, line: 27, type: !2922, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3713)
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DILocalVariable(name: "ptr", arg: 1, scope: !3712, file: !733, line: 27, type: !115)
!3715 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3712, file: !733, line: 27, type: !118)
!3716 = !DILocalVariable(name: "size", arg: 3, scope: !3712, file: !733, line: 27, type: !118)
!3717 = !DILocalVariable(name: "nbytes", scope: !3712, file: !733, line: 29, type: !118)
!3718 = !DILocation(line: 0, scope: !3712)
!3719 = !DILocation(line: 30, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3712, file: !733, line: 30, column: 7)
!3721 = !DILocalVariable(name: "ptr", arg: 1, scope: !3722, file: !3014, line: 2057, type: !115)
!3722 = distinct !DISubprogram(name: "rpl_realloc", scope: !3014, file: !3014, line: 2057, type: !3006, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3723)
!3723 = !{!3721, !3724}
!3724 = !DILocalVariable(name: "size", arg: 2, scope: !3722, file: !3014, line: 2057, type: !118)
!3725 = !DILocation(line: 0, scope: !3722, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 37, column: 10, scope: !3712)
!3727 = !DILocation(line: 2059, column: 24, scope: !3722, inlinedAt: !3726)
!3728 = !DILocation(line: 2059, column: 10, scope: !3722, inlinedAt: !3726)
!3729 = !DILocation(line: 37, column: 3, scope: !3712)
!3730 = !DILocation(line: 32, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3720, file: !733, line: 31, column: 5)
!3732 = !DILocation(line: 32, column: 13, scope: !3731)
!3733 = !DILocation(line: 33, column: 7, scope: !3731)
!3734 = !DILocation(line: 38, column: 1, scope: !3712)
!3735 = distinct !DISubprogram(name: "hard_locale", scope: !676, file: !676, line: 28, type: !3736, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!239, !116}
!3738 = !{!3739, !3740}
!3739 = !DILocalVariable(name: "category", arg: 1, scope: !3735, file: !676, line: 28, type: !116)
!3740 = !DILocalVariable(name: "locale", scope: !3735, file: !676, line: 30, type: !3741)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3742)
!3742 = !{!3743}
!3743 = !DISubrange(count: 257)
!3744 = !DILocation(line: 0, scope: !3735)
!3745 = !DILocation(line: 30, column: 3, scope: !3735)
!3746 = !DILocation(line: 30, column: 8, scope: !3735)
!3747 = !DILocation(line: 32, column: 7, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3735, file: !676, line: 32, column: 7)
!3749 = !DILocation(line: 32, column: 7, scope: !3735)
!3750 = !DILocalVariable(name: "__s1", arg: 1, scope: !3751, file: !833, line: 1359, type: !80)
!3751 = distinct !DISubprogram(name: "streq", scope: !833, file: !833, line: 1359, type: !834, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !735, retainedNodes: !3752)
!3752 = !{!3750, !3753}
!3753 = !DILocalVariable(name: "__s2", arg: 2, scope: !3751, file: !833, line: 1359, type: !80)
!3754 = !DILocation(line: 0, scope: !3751, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 35, column: 9, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3735, file: !676, line: 35, column: 7)
!3757 = !DILocation(line: 1361, column: 11, scope: !3751, inlinedAt: !3755)
!3758 = !DILocation(line: 1361, column: 10, scope: !3751, inlinedAt: !3755)
!3759 = !DILocation(line: 35, column: 29, scope: !3756)
!3760 = !DILocation(line: 0, scope: !3751, inlinedAt: !3761)
!3761 = distinct !DILocation(line: 35, column: 32, scope: !3756)
!3762 = !DILocation(line: 1361, column: 11, scope: !3751, inlinedAt: !3761)
!3763 = !DILocation(line: 1361, column: 10, scope: !3751, inlinedAt: !3761)
!3764 = !DILocation(line: 35, column: 7, scope: !3735)
!3765 = !DILocation(line: 46, column: 3, scope: !3735)
!3766 = !DILocation(line: 47, column: 1, scope: !3735)
!3767 = distinct !DISubprogram(name: "setlocale_null_r", scope: !738, file: !738, line: 154, type: !3768, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3770)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!116, !116, !260, !118}
!3770 = !{!3771, !3772, !3773}
!3771 = !DILocalVariable(name: "category", arg: 1, scope: !3767, file: !738, line: 154, type: !116)
!3772 = !DILocalVariable(name: "buf", arg: 2, scope: !3767, file: !738, line: 154, type: !260)
!3773 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3767, file: !738, line: 154, type: !118)
!3774 = !DILocation(line: 0, scope: !3767)
!3775 = !DILocation(line: 159, column: 10, scope: !3767)
!3776 = !DILocation(line: 159, column: 3, scope: !3767)
!3777 = distinct !DISubprogram(name: "setlocale_null", scope: !738, file: !738, line: 186, type: !3778, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !737, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!80, !116}
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "category", arg: 1, scope: !3777, file: !738, line: 186, type: !116)
!3782 = !DILocation(line: 0, scope: !3777)
!3783 = !DILocation(line: 189, column: 10, scope: !3777)
!3784 = !DILocation(line: 189, column: 3, scope: !3777)
!3785 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !740, file: !740, line: 35, type: !3778, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3786)
!3786 = !{!3787, !3788}
!3787 = !DILocalVariable(name: "category", arg: 1, scope: !3785, file: !740, line: 35, type: !116)
!3788 = !DILocalVariable(name: "result", scope: !3785, file: !740, line: 37, type: !80)
!3789 = !DILocation(line: 0, scope: !3785)
!3790 = !DILocation(line: 37, column: 24, scope: !3785)
!3791 = !DILocation(line: 62, column: 3, scope: !3785)
!3792 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !740, file: !740, line: 66, type: !3768, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798}
!3794 = !DILocalVariable(name: "category", arg: 1, scope: !3792, file: !740, line: 66, type: !116)
!3795 = !DILocalVariable(name: "buf", arg: 2, scope: !3792, file: !740, line: 66, type: !260)
!3796 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3792, file: !740, line: 66, type: !118)
!3797 = !DILocalVariable(name: "result", scope: !3792, file: !740, line: 111, type: !80)
!3798 = !DILocalVariable(name: "length", scope: !3799, file: !740, line: 125, type: !118)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !740, line: 124, column: 5)
!3800 = distinct !DILexicalBlock(scope: !3792, file: !740, line: 113, column: 7)
!3801 = !DILocation(line: 0, scope: !3792)
!3802 = !DILocation(line: 0, scope: !3785, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 111, column: 24, scope: !3792)
!3804 = !DILocation(line: 37, column: 24, scope: !3785, inlinedAt: !3803)
!3805 = !DILocation(line: 113, column: 14, scope: !3800)
!3806 = !DILocation(line: 113, column: 7, scope: !3792)
!3807 = !DILocation(line: 116, column: 19, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !740, line: 116, column: 11)
!3809 = distinct !DILexicalBlock(scope: !3800, file: !740, line: 114, column: 5)
!3810 = !DILocation(line: 116, column: 11, scope: !3809)
!3811 = !DILocation(line: 120, column: 16, scope: !3808)
!3812 = !DILocation(line: 120, column: 9, scope: !3808)
!3813 = !DILocation(line: 125, column: 23, scope: !3799)
!3814 = !DILocation(line: 0, scope: !3799)
!3815 = !DILocation(line: 126, column: 18, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3799, file: !740, line: 126, column: 11)
!3817 = !DILocation(line: 126, column: 11, scope: !3799)
!3818 = !DILocation(line: 128, column: 39, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3816, file: !740, line: 127, column: 9)
!3820 = !DILocalVariable(name: "__dest", arg: 1, scope: !3821, file: !1448, line: 26, type: !3282)
!3821 = distinct !DISubprogram(name: "memcpy", scope: !1448, file: !1448, line: 26, type: !3280, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !739, retainedNodes: !3822)
!3822 = !{!3820, !3823, !3824}
!3823 = !DILocalVariable(name: "__src", arg: 2, scope: !3821, file: !1448, line: 26, type: !964)
!3824 = !DILocalVariable(name: "__len", arg: 3, scope: !3821, file: !1448, line: 26, type: !118)
!3825 = !DILocation(line: 0, scope: !3821, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 128, column: 11, scope: !3819)
!3827 = !DILocation(line: 29, column: 10, scope: !3821, inlinedAt: !3826)
!3828 = !DILocation(line: 129, column: 11, scope: !3819)
!3829 = !DILocation(line: 133, column: 23, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !740, line: 133, column: 15)
!3831 = distinct !DILexicalBlock(scope: !3816, file: !740, line: 132, column: 9)
!3832 = !DILocation(line: 133, column: 15, scope: !3831)
!3833 = !DILocation(line: 138, column: 44, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3830, file: !740, line: 134, column: 13)
!3835 = !DILocation(line: 0, scope: !3821, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 138, column: 15, scope: !3834)
!3837 = !DILocation(line: 29, column: 10, scope: !3821, inlinedAt: !3836)
!3838 = !DILocation(line: 139, column: 15, scope: !3834)
!3839 = !DILocation(line: 139, column: 32, scope: !3834)
!3840 = !DILocation(line: 140, column: 13, scope: !3834)
!3841 = !DILocation(line: 0, scope: !3800)
!3842 = !DILocation(line: 145, column: 1, scope: !3792)
