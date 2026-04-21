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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !375
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !341
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !365
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !367
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !369
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !371
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !373
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !377
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !379
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !384
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !389
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !392
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !491
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !505
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !543
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !550
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !507
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !552
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !495
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !512
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !514
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !516
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !518
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !520
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !558
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !561
@.str.2.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !563
@.str.3.79 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !565
@.str.4.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !567
@.str.5.81 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !569
@.str.6.82 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !574
@.str.7.83 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !579
@.str.8.84 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !581
@.str.9.85 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !586
@.str.10.86 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !588
@.str.11.87 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !593
@.str.12.88 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !598
@.str.13.89 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !600
@.str.14.90 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !605
@.str.15.91 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !610
@.str.16.92 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !615
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.97 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !620
@.str.18.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !622
@.str.19.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !624
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !626
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !628
@.str.22.100 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !630
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !632
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !637
@exit_failure = dso_local global i32 1, align 4, !dbg !645
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !651
@.str.1.111 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !654
@.str.2.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !656
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !658
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !661
@.str.129 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !676
@.str.1.130 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !679

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !751 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !755, metadata !DIExpression()), !dbg !756
  %2 = icmp eq i32 %0, 0, !dbg !757
  br i1 %2, label %8, label %3, !dbg !759

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !760, !tbaa !762
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !760
  %6 = load ptr, ptr @program_name, align 8, !dbg !760, !tbaa !762
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !760
  br label %31, !dbg !760

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !766
  %10 = load ptr, ptr @program_name, align 8, !dbg !766, !tbaa !762
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #37, !dbg !766
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !768
  %13 = load ptr, ptr @stdout, align 8, !dbg !768, !tbaa !762
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !768
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !769
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !769
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !770
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !770
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !771, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata !790, metadata !784, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata ptr poison, metadata !783, metadata !DIExpression()), !dbg !788
  tail call void @emit_bug_reporting_address() #37, !dbg !791
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !792
  call void @llvm.dbg.value(metadata ptr %17, metadata !786, metadata !DIExpression()), !dbg !788
  %18 = icmp eq ptr %17, null, !dbg !793
  br i1 %18, label %26, label %19, !dbg !795

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #38, !dbg !796
  %21 = icmp eq i32 %20, 0, !dbg !796
  br i1 %21, label %26, label %22, !dbg !797

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !798
  %24 = load ptr, ptr @stdout, align 8, !dbg !798, !tbaa !762
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !798
  br label %26, !dbg !800

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !783, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !787, metadata !DIExpression()), !dbg !788
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !801
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #37, !dbg !801
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #37, !dbg !802
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #37, !dbg !802
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !803
  unreachable, !dbg !803
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !804 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !808 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !814 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !817 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !76 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !233, metadata !DIExpression()), !dbg !820
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !234, metadata !DIExpression()), !dbg !820
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !821, !tbaa !822
  %3 = icmp eq i32 %2, -1, !dbg !824
  br i1 %3, label %4, label %16, !dbg !825

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #37, !dbg !826
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !235, metadata !DIExpression()), !dbg !827
  %6 = icmp eq ptr %5, null, !dbg !828
  br i1 %6, label %14, label %7, !dbg !829

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !830, !tbaa !831
  %9 = icmp eq i8 %8, 0, !dbg !830
  br i1 %9, label %14, label %10, !dbg !832

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !833, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !839, metadata !DIExpression()), !dbg !840
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #38, !dbg !842
  %12 = icmp eq i32 %11, 0, !dbg !843
  %13 = zext i1 %12 to i32, !dbg !832
  br label %14, !dbg !832

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !844, !tbaa !822
  br label %16, !dbg !845

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !846
  %18 = icmp eq i32 %17, 0, !dbg !846
  br i1 %18, label %22, label %19, !dbg !848

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !849, !tbaa !762
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !849
  br label %121, !dbg !851

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !238, metadata !DIExpression()), !dbg !820
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #38, !dbg !852
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !853
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !240, metadata !DIExpression()), !dbg !820
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !854
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !241, metadata !DIExpression()), !dbg !820
  %26 = icmp eq ptr %25, null, !dbg !855
  br i1 %26, label %53, label %27, !dbg !856

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !857
  br i1 %28, label %53, label %29, !dbg !858

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !242, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !859
  %30 = icmp ult ptr %24, %25, !dbg !860
  br i1 %30, label %31, label %53, !dbg !861

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !820
  %33 = load ptr, ptr %32, align 8, !tbaa !762
  br label %34, !dbg !861

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !242, metadata !DIExpression()), !dbg !859
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !246, metadata !DIExpression()), !dbg !859
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !862
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !242, metadata !DIExpression()), !dbg !859
  %38 = load i8, ptr %35, align 1, !dbg !862, !tbaa !831
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !862
  %41 = load i16, ptr %40, align 2, !dbg !862, !tbaa !863
  %42 = freeze i16 %41, !dbg !865
  %43 = lshr i16 %42, 13, !dbg !865
  %44 = and i16 %43, 1, !dbg !865
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !866
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !246, metadata !DIExpression()), !dbg !859
  %47 = icmp ult ptr %37, %25, !dbg !860
  %48 = icmp ult i64 %46, 2, !dbg !867
  %49 = select i1 %47, i1 %48, i1 false, !dbg !867
  br i1 %49, label %34, label %50, !dbg !861, !llvm.loop !868

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !866
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !870
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !872
  br label %53, !dbg !872

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !820
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !238, metadata !DIExpression()), !dbg !820
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !241, metadata !DIExpression()), !dbg !820
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.18) #38, !dbg !873
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !247, metadata !DIExpression()), !dbg !820
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !874
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !248, metadata !DIExpression()), !dbg !820
  br label %58, !dbg !875

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !820
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !238, metadata !DIExpression()), !dbg !820
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !248, metadata !DIExpression()), !dbg !820
  %61 = load i8, ptr %59, align 1, !dbg !876, !tbaa !831
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !877

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !878
  %64 = load i8, ptr %63, align 1, !dbg !881, !tbaa !831
  %65 = icmp ne i8 %64, 45, !dbg !882
  %66 = select i1 %65, i1 %60, i1 false, !dbg !883
  br label %67, !dbg !883

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !238, metadata !DIExpression()), !dbg !820
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !884
  %70 = load ptr, ptr %69, align 8, !dbg !884, !tbaa !762
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !884
  %73 = load i16, ptr %72, align 2, !dbg !884, !tbaa !863
  %74 = and i16 %73, 8192, !dbg !884
  %75 = icmp eq i16 %74, 0, !dbg !884
  br i1 %75, label %89, label %76, !dbg !886

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !887
  br i1 %77, label %91, label %78, !dbg !890

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !891
  %80 = load i8, ptr %79, align 1, !dbg !891, !tbaa !831
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !891
  %83 = load i16, ptr %82, align 2, !dbg !891, !tbaa !863
  %84 = and i16 %83, 8192, !dbg !891
  %85 = icmp eq i16 %84, 0, !dbg !891
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !892
  br i1 %88, label %89, label %91, !dbg !892

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !893
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !248, metadata !DIExpression()), !dbg !820
  br label %58, !dbg !875, !llvm.loop !894

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !820
  %92 = ptrtoint ptr %24 to i64, !dbg !896
  %93 = load ptr, ptr @stdout, align 8, !dbg !896, !tbaa !762
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !833, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.value(metadata !790, metadata !839, metadata !DIExpression()), !dbg !915
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !306, metadata !DIExpression()), !dbg !820
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #38, !dbg !917
  %96 = icmp eq i32 %95, 0, !dbg !917
  br i1 %96, label %100, label %97, !dbg !919

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #38, !dbg !920
  %99 = icmp eq i32 %98, 0, !dbg !920
  br i1 %99, label %100, label %103, !dbg !921

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !922
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !922
  br label %106, !dbg !924

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !925
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !925
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !762
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %107), !dbg !927
  %109 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !762
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %109), !dbg !928
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !929
  %112 = sub i64 %111, %92, !dbg !929
  %113 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !762
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !929
  %115 = load ptr, ptr @stdout, align 8, !dbg !930, !tbaa !762
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %115), !dbg !930
  %117 = load ptr, ptr @stdout, align 8, !dbg !931, !tbaa !762
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %117), !dbg !931
  %119 = load ptr, ptr @stdout, align 8, !dbg !932, !tbaa !762
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !932
  br label %121, !dbg !933

121:                                              ; preds = %106, %19
  ret void, !dbg !933
}

; Function Attrs: nounwind
declare !dbg !934 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !938 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !942 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !944 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !947 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !950 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !953 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !956 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !962 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !963 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !969 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !974, metadata !DIExpression()), !dbg !976
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !975, metadata !DIExpression()), !dbg !976
  %3 = load ptr, ptr %1, align 8, !dbg !977, !tbaa !762
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !978
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !979
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !980
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !981
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !982
  %8 = load ptr, ptr @Version, align 8, !dbg !983, !tbaa !762
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !984
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !985
  %10 = load i32, ptr @optind, align 4, !dbg !986, !tbaa !822
  %11 = add nsw i32 %10, 2, !dbg !988
  %12 = icmp sgt i32 %11, %0, !dbg !989
  br i1 %12, label %13, label %25, !dbg !990

13:                                               ; preds = %2
  %14 = icmp slt i32 %10, %0, !dbg !991
  br i1 %14, label %17, label %15, !dbg !994

15:                                               ; preds = %13
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !995
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #37, !dbg !995
  br label %24, !dbg !995

17:                                               ; preds = %13
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !996
  %19 = load i32, ptr @optind, align 4, !dbg !996, !tbaa !822
  %20 = sext i32 %19 to i64, !dbg !996
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20, !dbg !996
  %22 = load ptr, ptr %21, align 8, !dbg !996, !tbaa !762
  %23 = tail call ptr @quote(ptr noundef %22) #37, !dbg !996
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %23) #37, !dbg !996
  br label %24

24:                                               ; preds = %17, %15
  tail call void @usage(i32 noundef 1) #41, !dbg !997
  unreachable, !dbg !997

25:                                               ; preds = %2
  %26 = icmp slt i32 %11, %0, !dbg !998
  br i1 %26, label %27, label %35, !dbg !1000

27:                                               ; preds = %25
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1001
  %29 = load i32, ptr @optind, align 4, !dbg !1001, !tbaa !822
  %30 = sext i32 %29 to i64, !dbg !1001
  %31 = getelementptr ptr, ptr %1, i64 %30, !dbg !1001
  %32 = getelementptr ptr, ptr %31, i64 2, !dbg !1001
  %33 = load ptr, ptr %32, align 8, !dbg !1001, !tbaa !762
  %34 = tail call ptr @quote(ptr noundef %33) #37, !dbg !1001
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %34) #37, !dbg !1001
  tail call void @usage(i32 noundef 1) #41, !dbg !1003
  unreachable, !dbg !1003

35:                                               ; preds = %25
  %36 = sext i32 %10 to i64, !dbg !1004
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1004
  %38 = load ptr, ptr %37, align 8, !dbg !1004, !tbaa !762
  %39 = getelementptr ptr, ptr %37, i64 1, !dbg !1006
  %40 = load ptr, ptr %39, align 8, !dbg !1006, !tbaa !762
  %41 = tail call i32 @link(ptr noundef %38, ptr noundef %40) #37, !dbg !1007
  %42 = icmp eq i32 %41, 0, !dbg !1008
  br i1 %42, label %58, label %43, !dbg !1009

43:                                               ; preds = %35
  %44 = tail call ptr @__errno_location() #40, !dbg !1010
  %45 = load i32, ptr %44, align 4, !dbg !1010, !tbaa !822
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #37, !dbg !1010
  %47 = load i32, ptr @optind, align 4, !dbg !1010, !tbaa !822
  %48 = sext i32 %47 to i64, !dbg !1010
  %49 = getelementptr ptr, ptr %1, i64 %48, !dbg !1010
  %50 = getelementptr ptr, ptr %49, i64 1, !dbg !1010
  %51 = load ptr, ptr %50, align 8, !dbg !1010, !tbaa !762
  %52 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %51) #37, !dbg !1010
  %53 = load i32, ptr @optind, align 4, !dbg !1010, !tbaa !822
  %54 = sext i32 %53 to i64, !dbg !1010
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1010
  %56 = load ptr, ptr %55, align 8, !dbg !1010, !tbaa !762
  %57 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %56) #37, !dbg !1010
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %45, ptr noundef %46, ptr noundef %52, ptr noundef %57) #37, !dbg !1010
  unreachable, !dbg !1010

58:                                               ; preds = %35
  ret i32 0, !dbg !1011
}

; Function Attrs: nounwind
declare !dbg !1012 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1015 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1016 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1019 i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1021 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1025 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1027, metadata !DIExpression()), !dbg !1028
  store ptr %0, ptr @file_name, align 8, !dbg !1029, !tbaa !762
  ret void, !dbg !1030
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1031 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1035, metadata !DIExpression()), !dbg !1036
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1037, !tbaa !1038
  ret void, !dbg !1040
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1041 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1046, !tbaa !762
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1047
  %3 = icmp eq i32 %2, 0, !dbg !1048
  br i1 %3, label %22, label %4, !dbg !1049

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1050, !tbaa !1038, !range !1051, !noundef !790
  %6 = icmp eq i8 %5, 0, !dbg !1050
  br i1 %6, label %11, label %7, !dbg !1052

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1053
  %9 = load i32, ptr %8, align 4, !dbg !1053, !tbaa !822
  %10 = icmp eq i32 %9, 32, !dbg !1054
  br i1 %10, label %22, label %11, !dbg !1055

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #37, !dbg !1056
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1043, metadata !DIExpression()), !dbg !1057
  %13 = load ptr, ptr @file_name, align 8, !dbg !1058, !tbaa !762
  %14 = icmp eq ptr %13, null, !dbg !1058
  %15 = tail call ptr @__errno_location() #40, !dbg !1060
  %16 = load i32, ptr %15, align 4, !dbg !1060, !tbaa !822
  br i1 %14, label %19, label %17, !dbg !1061

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1062
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #37, !dbg !1062
  br label %20, !dbg !1062

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #37, !dbg !1063
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1064, !tbaa !822
  tail call void @_exit(i32 noundef %21) #39, !dbg !1065
  unreachable, !dbg !1065

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1066, !tbaa !762
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1068
  %25 = icmp eq i32 %24, 0, !dbg !1069
  br i1 %25, label %28, label %26, !dbg !1070

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1071, !tbaa !822
  tail call void @_exit(i32 noundef %27) #39, !dbg !1072
  unreachable, !dbg !1072

28:                                               ; preds = %22
  ret void, !dbg !1073
}

; Function Attrs: noreturn
declare !dbg !1074 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1075 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1079, metadata !DIExpression()), !dbg !1083
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1080, metadata !DIExpression()), !dbg !1083
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1081, metadata !DIExpression()), !dbg !1083
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1082, metadata !DIExpression(DW_OP_deref)), !dbg !1083
  tail call fastcc void @flush_stdout(), !dbg !1084
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1085, !tbaa !762
  %7 = icmp eq ptr %6, null, !dbg !1085
  br i1 %7, label %9, label %8, !dbg !1087

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1088
  br label %13, !dbg !1088

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1089, !tbaa !762
  %11 = tail call ptr @getprogname() #38, !dbg !1089
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %11) #37, !dbg !1089
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1091, !tbaa.struct !1092
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1091
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1091
  ret void, !dbg !1093
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1094 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1096, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 1, metadata !1098, metadata !DIExpression()), !dbg !1103
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1106
  %2 = icmp slt i32 %1, 0, !dbg !1107
  br i1 %2, label %6, label %3, !dbg !1108

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1109, !tbaa !762
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1109
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
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1117
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1113, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1114, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1115, metadata !DIExpression()), !dbg !1118
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1116, metadata !DIExpression(DW_OP_deref)), !dbg !1118
  %7 = load ptr, ptr @stderr, align 8, !dbg !1119, !tbaa !762
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1120, !noalias !1164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1168
  call void @llvm.dbg.value(metadata ptr %7, metadata !1160, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr %2, metadata !1161, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata ptr poison, metadata !1162, metadata !DIExpression(DW_OP_deref)), !dbg !1169
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1120
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1120, !noalias !1164
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1170, !tbaa !822
  %10 = add i32 %9, 1, !dbg !1170
  store i32 %10, ptr @error_message_count, align 4, !dbg !1170, !tbaa !822
  %11 = icmp eq i32 %1, 0, !dbg !1171
  br i1 %11, label %21, label %12, !dbg !1173

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1174, metadata !DIExpression(), metadata !1117, metadata ptr %5, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 %1, metadata !1177, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1184
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1185
  call void @llvm.dbg.value(metadata ptr %13, metadata !1178, metadata !DIExpression()), !dbg !1182
  %14 = icmp eq ptr %13, null, !dbg !1186
  br i1 %14, label %15, label %17, !dbg !1188

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #37, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %16, metadata !1178, metadata !DIExpression()), !dbg !1182
  br label %17, !dbg !1190

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1182
  call void @llvm.dbg.value(metadata ptr %18, metadata !1178, metadata !DIExpression()), !dbg !1182
  %19 = load ptr, ptr @stderr, align 8, !dbg !1191, !tbaa !762
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %18) #37, !dbg !1191
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1192
  br label %21, !dbg !1193

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1194, !tbaa !762
  call void @llvm.dbg.value(metadata i32 10, metadata !1195, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata ptr %22, metadata !1201, metadata !DIExpression()), !dbg !1202
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1204
  %24 = load ptr, ptr %23, align 8, !dbg !1204, !tbaa !1205
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1204
  %26 = load ptr, ptr %25, align 8, !dbg !1204, !tbaa !1208
  %27 = icmp ult ptr %24, %26, !dbg !1204
  br i1 %27, label %30, label %28, !dbg !1204, !prof !1209

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1204
  br label %32, !dbg !1204

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1204
  store ptr %31, ptr %23, align 8, !dbg !1204, !tbaa !1205
  store i8 10, ptr %24, align 1, !dbg !1204, !tbaa !831
  br label %32, !dbg !1204

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1210, !tbaa !762
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1210
  %35 = icmp eq i32 %0, 0, !dbg !1211
  br i1 %35, label %37, label %36, !dbg !1213

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1214
  unreachable, !dbg !1214

37:                                               ; preds = %32
  ret void, !dbg !1215
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1216 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1219 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1222 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1225 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1228 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1232 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1239, metadata !DIExpression(), metadata !1240, metadata ptr %4, metadata !DIExpression()), !dbg !1241
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1237, metadata !DIExpression()), !dbg !1241
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1238, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1242
  call void @llvm.va_start(ptr nonnull %4), !dbg !1243
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1244, !tbaa.struct !1092
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1244
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1244
  call void @llvm.va_end(ptr nonnull %4), !dbg !1245
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1246
  ret void, !dbg !1246
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !343 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !359, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !360, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !361, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !362, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !363, metadata !DIExpression()), !dbg !1247
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !364, metadata !DIExpression(DW_OP_deref)), !dbg !1247
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1248, !tbaa !822
  %9 = icmp eq i32 %8, 0, !dbg !1248
  br i1 %9, label %24, label %10, !dbg !1250

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1251, !tbaa !822
  %12 = icmp eq i32 %11, %3, !dbg !1254
  br i1 %12, label %13, label %23, !dbg !1255

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1256, !tbaa !762
  %15 = icmp eq ptr %14, %2, !dbg !1257
  br i1 %15, label %37, label %16, !dbg !1258

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1259
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1260
  br i1 %19, label %20, label %23, !dbg !1260

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1261
  %22 = icmp eq i32 %21, 0, !dbg !1262
  br i1 %22, label %37, label %23, !dbg !1263

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1264, !tbaa !762
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1265, !tbaa !822
  br label %24, !dbg !1266

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1267
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1268, !tbaa !762
  %26 = icmp eq ptr %25, null, !dbg !1268
  br i1 %26, label %28, label %27, !dbg !1270

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1271
  br label %32, !dbg !1271

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1272, !tbaa !762
  %30 = tail call ptr @getprogname() #38, !dbg !1272
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %30) #37, !dbg !1272
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1274, !tbaa !762
  %34 = icmp eq ptr %2, null, !dbg !1274
  %35 = select i1 %34, ptr @.str.3.33, ptr @.str.2.34, !dbg !1274
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1274
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1275, !tbaa.struct !1092
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1275
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1275
  br label %37, !dbg !1276

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1276
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1277 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1286, metadata !DIExpression(), metadata !1287, metadata ptr %6, metadata !DIExpression()), !dbg !1288
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1281, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1282, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1283, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1284, metadata !DIExpression()), !dbg !1288
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1285, metadata !DIExpression()), !dbg !1288
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1289
  call void @llvm.va_start(ptr nonnull %6), !dbg !1290
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1291, !tbaa.struct !1092
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1291
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1291
  call void @llvm.va_end(ptr nonnull %6), !dbg !1292
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1293
  ret void, !dbg !1293
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1294 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1297, !tbaa !762
  ret ptr %1, !dbg !1298
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1299 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1314, metadata !DIExpression(), metadata !1329, metadata ptr %7, metadata !DIExpression()), !dbg !1330
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1304, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1305, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1306, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1307, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1308, metadata !DIExpression()), !dbg !1331
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1309, metadata !DIExpression()), !dbg !1331
  %9 = load i32, ptr @opterr, align 4, !dbg !1332, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1310, metadata !DIExpression()), !dbg !1331
  store i32 0, ptr @opterr, align 4, !dbg !1333, !tbaa !822
  %10 = icmp eq i32 %0, 2, !dbg !1334
  br i1 %10, label %11, label %16, !dbg !1335

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1336
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1311, metadata !DIExpression()), !dbg !1337
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1338

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #37, !dbg !1339
  br label %16, !dbg !1340

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1341
  call void @llvm.va_start(ptr nonnull %7), !dbg !1342
  %15 = load ptr, ptr @stdout, align 8, !dbg !1343, !tbaa !762
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1344, !tbaa.struct !1092
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1344
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #37, !dbg !1344
  call void @exit(i32 noundef 0) #39, !dbg !1345
  unreachable, !dbg !1345

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1346, !tbaa !822
  store i32 0, ptr @optind, align 4, !dbg !1347, !tbaa !822
  ret void, !dbg !1348
}

; Function Attrs: nounwind
declare !dbg !1349 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1355 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1374
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1369, metadata !DIExpression(), metadata !1374, metadata ptr %8, metadata !DIExpression()), !dbg !1375
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1359, metadata !DIExpression()), !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1360, metadata !DIExpression()), !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1361, metadata !DIExpression()), !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1362, metadata !DIExpression()), !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1363, metadata !DIExpression()), !dbg !1376
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1364, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1376
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1365, metadata !DIExpression()), !dbg !1376
  %10 = load i32, ptr @opterr, align 4, !dbg !1377, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1366, metadata !DIExpression()), !dbg !1376
  store i32 1, ptr @opterr, align 4, !dbg !1378, !tbaa !822
  %11 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1379
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1367, metadata !DIExpression()), !dbg !1376
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1380
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1368, metadata !DIExpression()), !dbg !1376
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1381

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1382
  call void @llvm.va_start(ptr nonnull %8), !dbg !1383
  %14 = load ptr, ptr @stdout, align 8, !dbg !1384, !tbaa !762
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #37, !dbg !1385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1385, !tbaa.struct !1092
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #37, !dbg !1385
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #37, !dbg !1385
  call void @exit(i32 noundef 0) #39, !dbg !1386
  unreachable, !dbg !1386

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1387, !tbaa !822
  br label %17, !dbg !1388

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #37, !dbg !1389
  br label %19, !dbg !1390

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1390, !tbaa !822
  ret void, !dbg !1391
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1392 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1394, metadata !DIExpression()), !dbg !1397
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1398
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1395, metadata !DIExpression()), !dbg !1397
  %3 = icmp eq ptr %2, null, !dbg !1399
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1399
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1399
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1396, metadata !DIExpression()), !dbg !1397
  %6 = ptrtoint ptr %5 to i64, !dbg !1400
  %7 = ptrtoint ptr %0 to i64, !dbg !1400
  %8 = sub i64 %6, %7, !dbg !1400
  %9 = icmp sgt i64 %8, 6, !dbg !1402
  br i1 %9, label %10, label %19, !dbg !1403

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1404
  call void @llvm.dbg.value(metadata ptr %11, metadata !1405, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1410, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i64 7, metadata !1411, metadata !DIExpression()), !dbg !1412
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1414
  %13 = icmp eq i32 %12, 0, !dbg !1415
  br i1 %13, label %14, label %19, !dbg !1416

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1394, metadata !DIExpression()), !dbg !1397
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #38, !dbg !1417
  %16 = icmp eq i32 %15, 0, !dbg !1420
  %17 = select i1 %16, i64 3, i64 0, !dbg !1421
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1421
  br label %19, !dbg !1421

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1396, metadata !DIExpression()), !dbg !1397
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1394, metadata !DIExpression()), !dbg !1397
  store ptr %20, ptr @program_name, align 8, !dbg !1422, !tbaa !762
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1423, !tbaa !762
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1424, !tbaa !762
  ret void, !dbg !1425
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1426 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !425 {
  %3 = alloca i32, align 4, !DIAssignID !1427
  call void @llvm.dbg.assign(metadata i1 undef, metadata !435, metadata !DIExpression(), metadata !1427, metadata ptr %3, metadata !DIExpression()), !dbg !1428
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1429
  call void @llvm.dbg.assign(metadata i1 undef, metadata !440, metadata !DIExpression(), metadata !1429, metadata ptr %4, metadata !DIExpression()), !dbg !1428
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !432, metadata !DIExpression()), !dbg !1428
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !433, metadata !DIExpression()), !dbg !1428
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1430
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !434, metadata !DIExpression()), !dbg !1428
  %6 = icmp eq ptr %5, %0, !dbg !1431
  br i1 %6, label %7, label %14, !dbg !1433

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1434
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1435
  call void @llvm.dbg.value(metadata ptr %4, metadata !1436, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata ptr %4, metadata !1445, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i32 0, metadata !1451, metadata !DIExpression()), !dbg !1453
  call void @llvm.dbg.value(metadata i64 8, metadata !1452, metadata !DIExpression()), !dbg !1453
  store i64 0, ptr %4, align 8, !dbg !1455
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1456
  %9 = icmp eq i64 %8, 2, !dbg !1458
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1459
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1428
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1460
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1428
  ret ptr %15, !dbg !1460
}

; Function Attrs: nounwind
declare !dbg !1461 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1467 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1472, metadata !DIExpression()), !dbg !1475
  %2 = tail call ptr @__errno_location() #40, !dbg !1476
  %3 = load i32, ptr %2, align 4, !dbg !1476, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1473, metadata !DIExpression()), !dbg !1475
  %4 = icmp eq ptr %0, null, !dbg !1477
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1477
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1478
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1474, metadata !DIExpression()), !dbg !1475
  store i32 %3, ptr %2, align 4, !dbg !1479, !tbaa !822
  ret ptr %6, !dbg !1480
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1481 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1487, metadata !DIExpression()), !dbg !1488
  %2 = icmp eq ptr %0, null, !dbg !1489
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1489
  %4 = load i32, ptr %3, align 8, !dbg !1490, !tbaa !1491
  ret i32 %4, !dbg !1493
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1494 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1498, metadata !DIExpression()), !dbg !1500
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1499, metadata !DIExpression()), !dbg !1500
  %3 = icmp eq ptr %0, null, !dbg !1501
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1501
  store i32 %1, ptr %4, align 8, !dbg !1502, !tbaa !1491
  ret void, !dbg !1503
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1504 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1508, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1509, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1510, metadata !DIExpression()), !dbg !1516
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1511, metadata !DIExpression()), !dbg !1516
  %4 = icmp eq ptr %0, null, !dbg !1517
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1517
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1518
  %7 = lshr i8 %1, 5, !dbg !1519
  %8 = zext nneg i8 %7 to i64, !dbg !1519
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1520
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1512, metadata !DIExpression()), !dbg !1516
  %10 = and i8 %1, 31, !dbg !1521
  %11 = zext nneg i8 %10 to i32, !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1514, metadata !DIExpression()), !dbg !1516
  %12 = load i32, ptr %9, align 4, !dbg !1522, !tbaa !822
  %13 = lshr i32 %12, %11, !dbg !1523
  %14 = and i32 %13, 1, !dbg !1524
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1515, metadata !DIExpression()), !dbg !1516
  %15 = xor i32 %13, %2, !dbg !1525
  %16 = and i32 %15, 1, !dbg !1525
  %17 = shl nuw i32 %16, %11, !dbg !1526
  %18 = xor i32 %17, %12, !dbg !1527
  store i32 %18, ptr %9, align 4, !dbg !1527, !tbaa !822
  ret i32 %14, !dbg !1528
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1533, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1534, metadata !DIExpression()), !dbg !1536
  %3 = icmp eq ptr %0, null, !dbg !1537
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1539
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1533, metadata !DIExpression()), !dbg !1536
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1540
  %6 = load i32, ptr %5, align 4, !dbg !1540, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1535, metadata !DIExpression()), !dbg !1536
  store i32 %1, ptr %5, align 4, !dbg !1542, !tbaa !1541
  ret i32 %6, !dbg !1543
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1544 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1548, metadata !DIExpression()), !dbg !1551
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1549, metadata !DIExpression()), !dbg !1551
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1550, metadata !DIExpression()), !dbg !1551
  %4 = icmp eq ptr %0, null, !dbg !1552
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1554
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1548, metadata !DIExpression()), !dbg !1551
  store i32 10, ptr %5, align 8, !dbg !1555, !tbaa !1491
  %6 = icmp ne ptr %1, null, !dbg !1556
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1558
  br i1 %8, label %10, label %9, !dbg !1558

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1559
  unreachable, !dbg !1559

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1560
  store ptr %1, ptr %11, align 8, !dbg !1561, !tbaa !1562
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1563
  store ptr %2, ptr %12, align 8, !dbg !1564, !tbaa !1565
  ret void, !dbg !1566
}

; Function Attrs: noreturn nounwind
declare !dbg !1567 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1568 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1572, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1573, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1574, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1575, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1576, metadata !DIExpression()), !dbg !1580
  %6 = icmp eq ptr %4, null, !dbg !1581
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1581
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1577, metadata !DIExpression()), !dbg !1580
  %8 = tail call ptr @__errno_location() #40, !dbg !1582
  %9 = load i32, ptr %8, align 4, !dbg !1582, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1578, metadata !DIExpression()), !dbg !1580
  %10 = load i32, ptr %7, align 8, !dbg !1583, !tbaa !1491
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1584
  %12 = load i32, ptr %11, align 4, !dbg !1584, !tbaa !1541
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1585
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1586
  %15 = load ptr, ptr %14, align 8, !dbg !1586, !tbaa !1562
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1587
  %17 = load ptr, ptr %16, align 8, !dbg !1587, !tbaa !1565
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1588
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1579, metadata !DIExpression()), !dbg !1580
  store i32 %9, ptr %8, align 4, !dbg !1589, !tbaa !822
  ret i64 %18, !dbg !1590
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1591 {
  %10 = alloca i32, align 4, !DIAssignID !1659
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1660
  %12 = alloca i32, align 4, !DIAssignID !1661
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1662
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1663
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1637, metadata !DIExpression(), metadata !1663, metadata ptr %14, metadata !DIExpression()), !dbg !1664
  %15 = alloca i32, align 4, !DIAssignID !1665
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1640, metadata !DIExpression(), metadata !1665, metadata ptr %15, metadata !DIExpression()), !dbg !1666
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1597, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1599, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1600, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1601, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1602, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1603, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1604, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1605, metadata !DIExpression()), !dbg !1667
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1668
  %17 = icmp eq i64 %16, 1, !dbg !1669
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1606, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1609, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1610, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1612, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1614, metadata !DIExpression()), !dbg !1667
  %18 = and i32 %5, 2, !dbg !1670
  %19 = icmp ne i32 %18, 0, !dbg !1670
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1670

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1671
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1672
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1673
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1610, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1609, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1600, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1605, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1604, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1601, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.label(metadata !1615), !dbg !1674
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1667
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
  ], !dbg !1675

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1601, metadata !DIExpression()), !dbg !1667
  br label %101, !dbg !1676

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1601, metadata !DIExpression()), !dbg !1667
  br i1 %36, label %101, label %42, !dbg !1676

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1677
  br i1 %43, label %101, label %44, !dbg !1681

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1677, !tbaa !831
  br label %101, !dbg !1677

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !529, metadata !DIExpression(), metadata !1661, metadata ptr %12, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.assign(metadata i1 undef, metadata !530, metadata !DIExpression(), metadata !1662, metadata ptr %13, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !526, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %28, metadata !527, metadata !DIExpression()), !dbg !1682
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #37, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %46, metadata !528, metadata !DIExpression()), !dbg !1682
  %47 = icmp eq ptr %46, @.str.11.66, !dbg !1687
  br i1 %47, label %48, label %57, !dbg !1689

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1690
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1691
  call void @llvm.dbg.value(metadata ptr %13, metadata !1692, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata ptr %13, metadata !1700, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i32 0, metadata !1703, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata i64 8, metadata !1704, metadata !DIExpression()), !dbg !1705
  store i64 0, ptr %13, align 8, !dbg !1707
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1708
  %50 = icmp eq i64 %49, 3, !dbg !1710
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1711
  %54 = icmp eq i32 %28, 9, !dbg !1711
  %55 = select i1 %54, ptr @.str.10.68, ptr @.str.12.69, !dbg !1711
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1712
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1712
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1682
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1604, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !529, metadata !DIExpression(), metadata !1659, metadata ptr %10, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.assign(metadata i1 undef, metadata !530, metadata !DIExpression(), metadata !1660, metadata ptr %11, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !526, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i32 %28, metadata !527, metadata !DIExpression()), !dbg !1713
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #37, !dbg !1715
  call void @llvm.dbg.value(metadata ptr %59, metadata !528, metadata !DIExpression()), !dbg !1713
  %60 = icmp eq ptr %59, @.str.12.69, !dbg !1716
  br i1 %60, label %61, label %70, !dbg !1717

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1718
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1719
  call void @llvm.dbg.value(metadata ptr %11, metadata !1692, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata ptr %11, metadata !1700, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i32 0, metadata !1703, metadata !DIExpression()), !dbg !1722
  call void @llvm.dbg.value(metadata i64 8, metadata !1704, metadata !DIExpression()), !dbg !1722
  store i64 0, ptr %11, align 8, !dbg !1724
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1725
  %63 = icmp eq i64 %62, 3, !dbg !1726
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1727
  %67 = icmp eq i32 %28, 9, !dbg !1727
  %68 = select i1 %67, ptr @.str.10.68, ptr @.str.12.69, !dbg !1727
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1727
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1728
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1728
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1605, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1604, metadata !DIExpression()), !dbg !1667
  br i1 %36, label %88, label %73, !dbg !1729

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1617, metadata !DIExpression()), !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1607, metadata !DIExpression()), !dbg !1667
  %74 = load i8, ptr %71, align 1, !dbg !1731, !tbaa !831
  %75 = icmp eq i8 %74, 0, !dbg !1733
  br i1 %75, label %88, label %.preheader11, !dbg !1733

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1733

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1617, metadata !DIExpression()), !dbg !1730
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1607, metadata !DIExpression()), !dbg !1667
  %80 = icmp ult i64 %79, %39, !dbg !1734
  br i1 %80, label %81, label %83, !dbg !1737

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1734
  store i8 %77, ptr %82, align 1, !dbg !1734, !tbaa !831
  br label %83, !dbg !1734

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1737
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1607, metadata !DIExpression()), !dbg !1667
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1738
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1617, metadata !DIExpression()), !dbg !1730
  %86 = load i8, ptr %85, align 1, !dbg !1731, !tbaa !831
  %87 = icmp eq i8 %86, 0, !dbg !1733
  br i1 %87, label %.loopexit12, label %76, !dbg !1733, !llvm.loop !1739

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1737
  br label %88, !dbg !1741

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1742
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1609, metadata !DIExpression()), !dbg !1667
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1741
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1610, metadata !DIExpression()), !dbg !1667
  br label %101, !dbg !1743

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1667
  br label %101, !dbg !1744

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1601, metadata !DIExpression()), !dbg !1667
  br label %101, !dbg !1745

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1667
  br i1 %36, label %101, label %95, !dbg !1746

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1601, metadata !DIExpression()), !dbg !1667
  br i1 %36, label %101, label %95, !dbg !1745

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1747
  br i1 %97, label %101, label %98, !dbg !1751

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1747, !tbaa !831
  br label %101, !dbg !1747

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1667
  br label %101, !dbg !1752

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1753
  unreachable, !dbg !1753

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1742
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.68, %42 ], [ @.str.10.68, %44 ], [ @.str.10.68, %41 ], [ %33, %27 ], [ @.str.12.69, %95 ], [ @.str.12.69, %98 ], [ @.str.12.69, %94 ], [ @.str.10.68, %40 ], [ @.str.12.69, %91 ], [ @.str.12.69, %92 ], [ @.str.12.69, %93 ], !dbg !1667
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1667
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1610, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1609, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1605, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1604, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1601, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1622, metadata !DIExpression()), !dbg !1754
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
  br label %121, !dbg !1755

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1742
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1671
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1756
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1600, metadata !DIExpression()), !dbg !1667
  %130 = icmp eq i64 %122, -1, !dbg !1757
  br i1 %130, label %131, label %135, !dbg !1758

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1759
  %133 = load i8, ptr %132, align 1, !dbg !1759, !tbaa !831
  %134 = icmp eq i8 %133, 0, !dbg !1760
  br i1 %134, label %573, label %137, !dbg !1761

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1762
  br i1 %136, label %573, label %137, !dbg !1761

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1763
  br i1 %113, label %138, label %151, !dbg !1764

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1766
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1767
  br i1 %140, label %141, label %143, !dbg !1767

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1600, metadata !DIExpression()), !dbg !1667
  br label %143, !dbg !1769

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1600, metadata !DIExpression()), !dbg !1667
  %145 = icmp ugt i64 %139, %144, !dbg !1770
  br i1 %145, label %151, label %146, !dbg !1771

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %147, metadata !1773, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr %106, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %107, metadata !1777, metadata !DIExpression()), !dbg !1778
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1780
  %149 = icmp eq i32 %148, 0, !dbg !1781
  %150 = and i1 %149, %109, !dbg !1782
  br i1 %150, label %.loopexit7, label %151, !dbg !1782

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1600, metadata !DIExpression()), !dbg !1667
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1783
  %155 = load i8, ptr %154, align 1, !dbg !1783, !tbaa !831
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1629, metadata !DIExpression()), !dbg !1763
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
  ], !dbg !1784

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1785

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1786

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1763
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1790
  br i1 %159, label %176, label %160, !dbg !1790

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1792
  br i1 %161, label %162, label %164, !dbg !1796

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1792
  store i8 39, ptr %163, align 1, !dbg !1792, !tbaa !831
  br label %164, !dbg !1792

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1796
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1607, metadata !DIExpression()), !dbg !1667
  %166 = icmp ult i64 %165, %129, !dbg !1797
  br i1 %166, label %167, label %169, !dbg !1800

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1797
  store i8 36, ptr %168, align 1, !dbg !1797, !tbaa !831
  br label %169, !dbg !1797

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1800
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1607, metadata !DIExpression()), !dbg !1667
  %171 = icmp ult i64 %170, %129, !dbg !1801
  br i1 %171, label %172, label %174, !dbg !1804

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1801
  store i8 39, ptr %173, align 1, !dbg !1801, !tbaa !831
  br label %174, !dbg !1801

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1667
  br label %176, !dbg !1805

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1667
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1607, metadata !DIExpression()), !dbg !1667
  %179 = icmp ult i64 %177, %129, !dbg !1806
  br i1 %179, label %180, label %182, !dbg !1809

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1806
  store i8 92, ptr %181, align 1, !dbg !1806, !tbaa !831
  br label %182, !dbg !1806

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1809
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1607, metadata !DIExpression()), !dbg !1667
  br i1 %110, label %184, label %476, !dbg !1810

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1812
  %186 = icmp ult i64 %185, %152, !dbg !1813
  br i1 %186, label %187, label %433, !dbg !1814

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1815
  %189 = load i8, ptr %188, align 1, !dbg !1815, !tbaa !831
  %190 = add i8 %189, -48, !dbg !1816
  %191 = icmp ult i8 %190, 10, !dbg !1816
  br i1 %191, label %192, label %433, !dbg !1816

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1817
  br i1 %193, label %194, label %196, !dbg !1821

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1817
  store i8 48, ptr %195, align 1, !dbg !1817, !tbaa !831
  br label %196, !dbg !1817

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1821
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1607, metadata !DIExpression()), !dbg !1667
  %198 = icmp ult i64 %197, %129, !dbg !1822
  br i1 %198, label %199, label %201, !dbg !1825

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1822
  store i8 48, ptr %200, align 1, !dbg !1822, !tbaa !831
  br label %201, !dbg !1822

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1825
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1607, metadata !DIExpression()), !dbg !1667
  br label %433, !dbg !1826

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1827

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1828

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1829

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1831

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1833
  %209 = icmp ult i64 %208, %152, !dbg !1834
  br i1 %209, label %210, label %433, !dbg !1835

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1836
  %212 = load i8, ptr %211, align 1, !dbg !1836, !tbaa !831
  %213 = icmp eq i8 %212, 63, !dbg !1837
  br i1 %213, label %214, label %433, !dbg !1838

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1839
  %216 = load i8, ptr %215, align 1, !dbg !1839, !tbaa !831
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
  ], !dbg !1840

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1841

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1622, metadata !DIExpression()), !dbg !1754
  %219 = icmp ult i64 %123, %129, !dbg !1843
  br i1 %219, label %220, label %222, !dbg !1846

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1843
  store i8 63, ptr %221, align 1, !dbg !1843, !tbaa !831
  br label %222, !dbg !1843

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1846
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1607, metadata !DIExpression()), !dbg !1667
  %224 = icmp ult i64 %223, %129, !dbg !1847
  br i1 %224, label %225, label %227, !dbg !1850

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1847
  store i8 34, ptr %226, align 1, !dbg !1847, !tbaa !831
  br label %227, !dbg !1847

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1850
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1607, metadata !DIExpression()), !dbg !1667
  %229 = icmp ult i64 %228, %129, !dbg !1851
  br i1 %229, label %230, label %232, !dbg !1854

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1851
  store i8 34, ptr %231, align 1, !dbg !1851, !tbaa !831
  br label %232, !dbg !1851

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1854
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1607, metadata !DIExpression()), !dbg !1667
  %234 = icmp ult i64 %233, %129, !dbg !1855
  br i1 %234, label %235, label %237, !dbg !1858

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1855
  store i8 63, ptr %236, align 1, !dbg !1855, !tbaa !831
  br label %237, !dbg !1855

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1858
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1607, metadata !DIExpression()), !dbg !1667
  br label %433, !dbg !1859

239:                                              ; preds = %151
  br label %249, !dbg !1860

240:                                              ; preds = %151
  br label %249, !dbg !1861

241:                                              ; preds = %151
  br label %247, !dbg !1862

242:                                              ; preds = %151
  br label %247, !dbg !1863

243:                                              ; preds = %151
  br label %249, !dbg !1864

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1865

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1866

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1869

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1871
  call void @llvm.dbg.label(metadata !1630), !dbg !1872
  br i1 %118, label %.loopexit8, label %249, !dbg !1873

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1871
  call void @llvm.dbg.label(metadata !1633), !dbg !1875
  br i1 %108, label %487, label %444, !dbg !1876

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1877

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1878, !tbaa !831
  %254 = icmp eq i8 %253, 0, !dbg !1880
  br i1 %254, label %255, label %433, !dbg !1881

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1882
  br i1 %256, label %257, label %433, !dbg !1884

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1763
  br label %258, !dbg !1885

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1763
  br i1 %115, label %260, label %433, !dbg !1886

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1888

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1763
  br i1 %115, label %262, label %433, !dbg !1889

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1890

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1893
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1895
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1895
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1608, metadata !DIExpression()), !dbg !1667
  %269 = icmp ult i64 %123, %268, !dbg !1896
  br i1 %269, label %270, label %272, !dbg !1899

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1896
  store i8 39, ptr %271, align 1, !dbg !1896, !tbaa !831
  br label %272, !dbg !1896

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1899
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1607, metadata !DIExpression()), !dbg !1667
  %274 = icmp ult i64 %273, %268, !dbg !1900
  br i1 %274, label %275, label %277, !dbg !1903

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1900
  store i8 92, ptr %276, align 1, !dbg !1900, !tbaa !831
  br label %277, !dbg !1900

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1903
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1607, metadata !DIExpression()), !dbg !1667
  %279 = icmp ult i64 %278, %268, !dbg !1904
  br i1 %279, label %280, label %282, !dbg !1907

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1904
  store i8 39, ptr %281, align 1, !dbg !1904, !tbaa !831
  br label %282, !dbg !1904

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1907
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1667
  br label %433, !dbg !1908

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1909

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1634, metadata !DIExpression()), !dbg !1910
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1911
  %287 = load ptr, ptr %286, align 8, !dbg !1911, !tbaa !762
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1911
  %290 = load i16, ptr %289, align 2, !dbg !1911, !tbaa !863
  %291 = and i16 %290, 16384, !dbg !1911
  %292 = icmp ne i16 %291, 0, !dbg !1913
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1636, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1910
  br label %334, !dbg !1914

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1915
  call void @llvm.dbg.value(metadata ptr %14, metadata !1692, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata ptr %14, metadata !1700, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i32 0, metadata !1703, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i64 8, metadata !1704, metadata !DIExpression()), !dbg !1918
  store i64 0, ptr %14, align 8, !dbg !1920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1634, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1910
  %294 = icmp eq i64 %152, -1, !dbg !1921
  br i1 %294, label %295, label %297, !dbg !1923

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1924
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1600, metadata !DIExpression()), !dbg !1667
  br label %297, !dbg !1925

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1600, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1926
  %299 = sub i64 %298, %128, !dbg !1927
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1928
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1644, metadata !DIExpression()), !dbg !1666
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1929

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1634, metadata !DIExpression()), !dbg !1910
  %302 = icmp ult i64 %128, %298, !dbg !1930
  br i1 %302, label %.preheader5, label %329, !dbg !1932

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1933

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1910
  br label %329, !dbg !1934

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1634, metadata !DIExpression()), !dbg !1910
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1936
  %308 = load i8, ptr %307, align 1, !dbg !1936, !tbaa !831
  %309 = icmp eq i8 %308, 0, !dbg !1932
  br i1 %309, label %.loopexit6, label %310, !dbg !1933

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1937
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1634, metadata !DIExpression()), !dbg !1910
  %312 = add i64 %311, %128, !dbg !1938
  %313 = icmp eq i64 %311, %299, !dbg !1930
  br i1 %313, label %.loopexit6, label %304, !dbg !1932, !llvm.loop !1939

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1645, metadata !DIExpression()), !dbg !1940
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1941
  %317 = and i1 %316, %109, !dbg !1941
  br i1 %317, label %.preheader3, label %325, !dbg !1941

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1942

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1645, metadata !DIExpression()), !dbg !1940
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1943
  %321 = load i8, ptr %320, align 1, !dbg !1943, !tbaa !831
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1945

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1946
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1645, metadata !DIExpression()), !dbg !1940
  %324 = icmp eq i64 %323, %300, !dbg !1947
  br i1 %324, label %.loopexit4, label %318, !dbg !1942, !llvm.loop !1948

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1950

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1950, !tbaa !822
  call void @llvm.dbg.value(metadata i32 %326, metadata !1952, metadata !DIExpression()), !dbg !1960
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1962
  %328 = icmp ne i32 %327, 0, !dbg !1963
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1634, metadata !DIExpression()), !dbg !1910
  br label %329, !dbg !1964

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1965

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1634, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1966
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1634, metadata !DIExpression()), !dbg !1910
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1965
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1966
  call void @llvm.dbg.label(metadata !1658), !dbg !1967
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1968
  br label %624, !dbg !1968

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1763
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1970
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1634, metadata !DIExpression()), !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1600, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  %338 = icmp ult i64 %336, 2, !dbg !1971
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1972
  br i1 %340, label %433, label %341, !dbg !1972

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1973
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1653, metadata !DIExpression()), !dbg !1974
  br label %343, !dbg !1975

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1667
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1754
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1607, metadata !DIExpression()), !dbg !1667
  br i1 %339, label %394, label %350, !dbg !1976

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1981

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1763
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1984
  br i1 %352, label %369, label %353, !dbg !1984

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1986
  br i1 %354, label %355, label %357, !dbg !1990

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1986
  store i8 39, ptr %356, align 1, !dbg !1986, !tbaa !831
  br label %357, !dbg !1986

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1990
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1607, metadata !DIExpression()), !dbg !1667
  %359 = icmp ult i64 %358, %129, !dbg !1991
  br i1 %359, label %360, label %362, !dbg !1994

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1991
  store i8 36, ptr %361, align 1, !dbg !1991, !tbaa !831
  br label %362, !dbg !1991

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1994
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1607, metadata !DIExpression()), !dbg !1667
  %364 = icmp ult i64 %363, %129, !dbg !1995
  br i1 %364, label %365, label %367, !dbg !1998

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1995
  store i8 39, ptr %366, align 1, !dbg !1995, !tbaa !831
  br label %367, !dbg !1995

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1998
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1667
  br label %369, !dbg !1999

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1667
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1607, metadata !DIExpression()), !dbg !1667
  %372 = icmp ult i64 %370, %129, !dbg !2000
  br i1 %372, label %373, label %375, !dbg !2003

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2000
  store i8 92, ptr %374, align 1, !dbg !2000, !tbaa !831
  br label %375, !dbg !2000

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2003
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1607, metadata !DIExpression()), !dbg !1667
  %377 = icmp ult i64 %376, %129, !dbg !2004
  br i1 %377, label %378, label %382, !dbg !2007

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2004
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2004
  store i8 %380, ptr %381, align 1, !dbg !2004, !tbaa !831
  br label %382, !dbg !2004

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2007
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1607, metadata !DIExpression()), !dbg !1667
  %384 = icmp ult i64 %383, %129, !dbg !2008
  br i1 %384, label %385, label %390, !dbg !2011

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2008
  %388 = or disjoint i8 %387, 48, !dbg !2008
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2008
  store i8 %388, ptr %389, align 1, !dbg !2008, !tbaa !831
  br label %390, !dbg !2008

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2011
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1607, metadata !DIExpression()), !dbg !1667
  %392 = and i8 %349, 7, !dbg !2012
  %393 = or disjoint i8 %392, 48, !dbg !2013
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1629, metadata !DIExpression()), !dbg !1763
  br label %401, !dbg !2014

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2015

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2016
  br i1 %396, label %397, label %399, !dbg !2021

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2016
  store i8 92, ptr %398, align 1, !dbg !2016, !tbaa !831
  br label %399, !dbg !2016

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2021
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1763
  br label %401, !dbg !2022

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1667
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1607, metadata !DIExpression()), !dbg !1667
  %407 = add i64 %346, 1, !dbg !2023
  %408 = icmp ugt i64 %342, %407, !dbg !2025
  br i1 %408, label %409, label %.loopexit2, !dbg !2026

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2027
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2027
  br i1 %411, label %423, label %412, !dbg !2027

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2030
  br i1 %413, label %414, label %416, !dbg !2034

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2030
  store i8 39, ptr %415, align 1, !dbg !2030, !tbaa !831
  br label %416, !dbg !2030

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2034
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1607, metadata !DIExpression()), !dbg !1667
  %418 = icmp ult i64 %417, %129, !dbg !2035
  br i1 %418, label %419, label %421, !dbg !2038

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2035
  store i8 39, ptr %420, align 1, !dbg !2035, !tbaa !831
  br label %421, !dbg !2035

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1667
  br label %423, !dbg !2039

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2040
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1607, metadata !DIExpression()), !dbg !1667
  %426 = icmp ult i64 %424, %129, !dbg !2041
  br i1 %426, label %427, label %429, !dbg !2044

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2041
  store i8 %406, ptr %428, align 1, !dbg !2041, !tbaa !831
  br label %429, !dbg !2041

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2044
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1622, metadata !DIExpression()), !dbg !1754
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2045
  %432 = load i8, ptr %431, align 1, !dbg !2045, !tbaa !831
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1629, metadata !DIExpression()), !dbg !1763
  br label %343, !dbg !2046, !llvm.loop !2047

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2050
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1667
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1671
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1754
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1763
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1624, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1600, metadata !DIExpression()), !dbg !1667
  br i1 %111, label %455, label %444, !dbg !2051

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
  br i1 %120, label %456, label %476, !dbg !2053

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2054

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
  %467 = lshr i8 %458, 5, !dbg !2055
  %468 = zext nneg i8 %467 to i64, !dbg !2055
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2056
  %470 = load i32, ptr %469, align 4, !dbg !2056, !tbaa !822
  %471 = and i8 %458, 31, !dbg !2057
  %472 = zext nneg i8 %471 to i32, !dbg !2057
  %473 = shl nuw i32 1, %472, !dbg !2058
  %474 = and i32 %470, %473, !dbg !2058
  %475 = icmp eq i32 %474, 0, !dbg !2058
  br i1 %475, label %476, label %487, !dbg !2059

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
  br i1 %153, label %487, label %523, !dbg !2060

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2050
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1667
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1671
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2061
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1763
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1600, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.label(metadata !1656), !dbg !2062
  br i1 %109, label %.loopexit8, label %497, !dbg !2063

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1763
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2065
  br i1 %498, label %515, label %499, !dbg !2065

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2067
  br i1 %500, label %501, label %503, !dbg !2071

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2067
  store i8 39, ptr %502, align 1, !dbg !2067, !tbaa !831
  br label %503, !dbg !2067

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2071
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1607, metadata !DIExpression()), !dbg !1667
  %505 = icmp ult i64 %504, %496, !dbg !2072
  br i1 %505, label %506, label %508, !dbg !2075

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2072
  store i8 36, ptr %507, align 1, !dbg !2072, !tbaa !831
  br label %508, !dbg !2072

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2075
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1607, metadata !DIExpression()), !dbg !1667
  %510 = icmp ult i64 %509, %496, !dbg !2076
  br i1 %510, label %511, label %513, !dbg !2079

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2076
  store i8 39, ptr %512, align 1, !dbg !2076, !tbaa !831
  br label %513, !dbg !2076

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1616, metadata !DIExpression()), !dbg !1667
  br label %515, !dbg !2080

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1763
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1607, metadata !DIExpression()), !dbg !1667
  %518 = icmp ult i64 %516, %496, !dbg !2081
  br i1 %518, label %519, label %521, !dbg !2084

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2081
  store i8 92, ptr %520, align 1, !dbg !2081, !tbaa !831
  br label %521, !dbg !2081

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2084
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1600, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.label(metadata !1657), !dbg !2085
  br label %547, !dbg !2086

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1667
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1763
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1754
  br label %523, !dbg !2086

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2050
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1667
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1671
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2061
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2089
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1629, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1763
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1600, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.label(metadata !1657), !dbg !2085
  %534 = xor i1 %528, true, !dbg !2086
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2086
  br i1 %535, label %547, label %536, !dbg !2086

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2090
  br i1 %537, label %538, label %540, !dbg !2094

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2090
  store i8 39, ptr %539, align 1, !dbg !2090, !tbaa !831
  br label %540, !dbg !2090

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2094
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1607, metadata !DIExpression()), !dbg !1667
  %542 = icmp ult i64 %541, %533, !dbg !2095
  br i1 %542, label %543, label %545, !dbg !2098

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2095
  store i8 39, ptr %544, align 1, !dbg !2095, !tbaa !831
  br label %545, !dbg !2095

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2098
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1667
  br label %547, !dbg !2099

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1763
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1607, metadata !DIExpression()), !dbg !1667
  %557 = icmp ult i64 %555, %548, !dbg !2100
  br i1 %557, label %558, label %560, !dbg !2103

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2100
  store i8 %549, ptr %559, align 1, !dbg !2100, !tbaa !831
  br label %560, !dbg !2100

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2103
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1607, metadata !DIExpression()), !dbg !1667
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2104
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1667
  br label %563, !dbg !2105

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2050
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1667
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1671
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2061
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1622, metadata !DIExpression()), !dbg !1754
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1616, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1600, metadata !DIExpression()), !dbg !1667
  %572 = add i64 %570, 1, !dbg !2106
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1622, metadata !DIExpression()), !dbg !1754
  br label %121, !dbg !2107, !llvm.loop !2108

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1742
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1671
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1598, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1614, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1608, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1607, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1600, metadata !DIExpression()), !dbg !1667
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2110
  %575 = xor i1 %109, true, !dbg !2112
  %576 = or i1 %574, %575, !dbg !2112
  %577 = or i1 %576, %110, !dbg !2112
  br i1 %577, label %578, label %.loopexit13, !dbg !2112

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2113
  %580 = xor i1 %.lcssa38, true, !dbg !2113
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2113
  br i1 %581, label %589, label %582, !dbg !2113

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2115

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1671
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2117
  br label %638, !dbg !2119

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2120
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2122
  br i1 %588, label %27, label %589, !dbg !2122

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1667
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1742
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2123
  %592 = or i1 %591, %590, !dbg !2125
  br i1 %592, label %608, label %593, !dbg !2125

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1609, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1607, metadata !DIExpression()), !dbg !1667
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2126, !tbaa !831
  %595 = icmp eq i8 %594, 0, !dbg !2129
  br i1 %595, label %608, label %.preheader, !dbg !2129

.preheader:                                       ; preds = %593
  br label %596, !dbg !2129

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1609, metadata !DIExpression()), !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1607, metadata !DIExpression()), !dbg !1667
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2130
  br i1 %600, label %601, label %603, !dbg !2133

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2130
  store i8 %597, ptr %602, align 1, !dbg !2130, !tbaa !831
  br label %603, !dbg !2130

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2133
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1607, metadata !DIExpression()), !dbg !1667
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2134
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1609, metadata !DIExpression()), !dbg !1667
  %606 = load i8, ptr %605, align 1, !dbg !2126, !tbaa !831
  %607 = icmp eq i8 %606, 0, !dbg !2129
  br i1 %607, label %.loopexit, label %596, !dbg !2129, !llvm.loop !2135

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2133
  br label %608, !dbg !2137

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1742
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1607, metadata !DIExpression()), !dbg !1667
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2137
  br i1 %610, label %611, label %638, !dbg !2139

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2140
  store i8 0, ptr %612, align 1, !dbg !2141, !tbaa !831
  br label %638, !dbg !2140

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1658), !dbg !1967
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2142
  br i1 %614, label %624, label %630, !dbg !1968

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1763
  br label %615, !dbg !2142

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2142

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2142

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1658), !dbg !1967
  %622 = icmp eq i32 %616, 2, !dbg !2142
  %623 = select i1 %619, i32 4, i32 2, !dbg !1968
  br i1 %622, label %624, label %630, !dbg !1968

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1968

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1769
  br label %630, !dbg !2143

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1601, metadata !DIExpression()), !dbg !1667
  %636 = and i32 %5, -3, !dbg !2143
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2144
  br label %638, !dbg !2145

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2146
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
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2155 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2159, metadata !DIExpression()), !dbg !2162
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2160, metadata !DIExpression()), !dbg !2162
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2161, metadata !DIExpression()), !dbg !2162
  call void @llvm.dbg.value(metadata ptr %0, metadata !2163, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i64 %1, metadata !2168, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr null, metadata !2169, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr %2, metadata !2170, metadata !DIExpression()), !dbg !2176
  %4 = icmp eq ptr %2, null, !dbg !2178
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2178
  call void @llvm.dbg.value(metadata ptr %5, metadata !2171, metadata !DIExpression()), !dbg !2176
  %6 = tail call ptr @__errno_location() #40, !dbg !2179
  %7 = load i32, ptr %6, align 4, !dbg !2179, !tbaa !822
  call void @llvm.dbg.value(metadata i32 %7, metadata !2172, metadata !DIExpression()), !dbg !2176
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2180
  %9 = load i32, ptr %8, align 4, !dbg !2180, !tbaa !1541
  %10 = or i32 %9, 1, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %10, metadata !2173, metadata !DIExpression()), !dbg !2176
  %11 = load i32, ptr %5, align 8, !dbg !2182, !tbaa !1491
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2183
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2184
  %14 = load ptr, ptr %13, align 8, !dbg !2184, !tbaa !1562
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2185
  %16 = load ptr, ptr %15, align 8, !dbg !2185, !tbaa !1565
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2186
  %18 = add i64 %17, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i64 %18, metadata !2174, metadata !DIExpression()), !dbg !2176
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %19, metadata !2175, metadata !DIExpression()), !dbg !2176
  %20 = load i32, ptr %5, align 8, !dbg !2189, !tbaa !1491
  %21 = load ptr, ptr %13, align 8, !dbg !2190, !tbaa !1562
  %22 = load ptr, ptr %15, align 8, !dbg !2191, !tbaa !1565
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2192
  store i32 %7, ptr %6, align 4, !dbg !2193, !tbaa !822
  ret ptr %19, !dbg !2194
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2164 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2163, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2168, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2169, metadata !DIExpression()), !dbg !2195
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2170, metadata !DIExpression()), !dbg !2195
  %5 = icmp eq ptr %3, null, !dbg !2196
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2196
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2171, metadata !DIExpression()), !dbg !2195
  %7 = tail call ptr @__errno_location() #40, !dbg !2197
  %8 = load i32, ptr %7, align 4, !dbg !2197, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2172, metadata !DIExpression()), !dbg !2195
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2198
  %10 = load i32, ptr %9, align 4, !dbg !2198, !tbaa !1541
  %11 = icmp eq ptr %2, null, !dbg !2199
  %12 = zext i1 %11 to i32, !dbg !2199
  %13 = or i32 %10, %12, !dbg !2200
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2173, metadata !DIExpression()), !dbg !2195
  %14 = load i32, ptr %6, align 8, !dbg !2201, !tbaa !1491
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2202
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2203
  %17 = load ptr, ptr %16, align 8, !dbg !2203, !tbaa !1562
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2204
  %19 = load ptr, ptr %18, align 8, !dbg !2204, !tbaa !1565
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2205
  %21 = add i64 %20, 1, !dbg !2206
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2174, metadata !DIExpression()), !dbg !2195
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2207
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2175, metadata !DIExpression()), !dbg !2195
  %23 = load i32, ptr %6, align 8, !dbg !2208, !tbaa !1491
  %24 = load ptr, ptr %16, align 8, !dbg !2209, !tbaa !1562
  %25 = load ptr, ptr %18, align 8, !dbg !2210, !tbaa !1565
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2211
  store i32 %8, ptr %7, align 4, !dbg !2212, !tbaa !822
  br i1 %11, label %28, label %27, !dbg !2213

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2214, !tbaa !2216
  br label %28, !dbg !2217

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2218
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2219 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2224, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2221, metadata !DIExpression()), !dbg !2225
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2222, metadata !DIExpression()), !dbg !2226
  %2 = load i32, ptr @nslots, align 4, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2222, metadata !DIExpression()), !dbg !2226
  %3 = icmp sgt i32 %2, 1, !dbg !2227
  br i1 %3, label %4, label %6, !dbg !2229

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2227
  br label %10, !dbg !2229

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2230

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2230
  %8 = load ptr, ptr %7, align 8, !dbg !2230, !tbaa !2232
  %9 = icmp eq ptr %8, @slot0, !dbg !2234
  br i1 %9, label %17, label %16, !dbg !2235

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2222, metadata !DIExpression()), !dbg !2226
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2236
  %13 = load ptr, ptr %12, align 8, !dbg !2236, !tbaa !2232
  tail call void @free(ptr noundef %13) #37, !dbg !2237
  %14 = add nuw nsw i64 %11, 1, !dbg !2238
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2222, metadata !DIExpression()), !dbg !2226
  %15 = icmp eq i64 %14, %5, !dbg !2227
  br i1 %15, label %.loopexit, label %10, !dbg !2229, !llvm.loop !2239

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2241
  store i64 256, ptr @slotvec0, align 8, !dbg !2243, !tbaa !2244
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2245, !tbaa !2232
  br label %17, !dbg !2246

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2247
  br i1 %18, label %20, label %19, !dbg !2249

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2250
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2252, !tbaa !762
  br label %20, !dbg !2253

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2254, !tbaa !822
  ret void, !dbg !2255
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2256 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2259 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2261, metadata !DIExpression()), !dbg !2263
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2262, metadata !DIExpression()), !dbg !2263
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2264
  ret ptr %3, !dbg !2265
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2266 {
  %5 = alloca i64, align 8, !DIAssignID !2286
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2280, metadata !DIExpression(), metadata !2286, metadata ptr %5, metadata !DIExpression()), !dbg !2287
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2270, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2271, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2272, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2273, metadata !DIExpression()), !dbg !2288
  %6 = tail call ptr @__errno_location() #40, !dbg !2289
  %7 = load i32, ptr %6, align 4, !dbg !2289, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2274, metadata !DIExpression()), !dbg !2288
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2290, !tbaa !762
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2275, metadata !DIExpression()), !dbg !2288
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2276, metadata !DIExpression()), !dbg !2288
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2291
  br i1 %9, label %10, label %11, !dbg !2291

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2293
  unreachable, !dbg !2293

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2294, !tbaa !822
  %13 = icmp sgt i32 %12, %0, !dbg !2295
  br i1 %13, label %32, label %14, !dbg !2296

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2297
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2298
  %16 = sext i32 %12 to i64, !dbg !2299
  store i64 %16, ptr %5, align 8, !dbg !2300, !tbaa !2216, !DIAssignID !2301
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2280, metadata !DIExpression(), metadata !2301, metadata ptr %5, metadata !DIExpression()), !dbg !2287
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2302
  %18 = add nuw nsw i32 %0, 1, !dbg !2303
  %19 = sub i32 %18, %12, !dbg !2304
  %20 = sext i32 %19 to i64, !dbg !2305
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2306
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2275, metadata !DIExpression()), !dbg !2288
  store ptr %21, ptr @slotvec, align 8, !dbg !2307, !tbaa !762
  br i1 %15, label %22, label %23, !dbg !2308

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2309, !tbaa.struct !2311
  br label %23, !dbg !2312

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2313, !tbaa !822
  %25 = sext i32 %24 to i64, !dbg !2314
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2314
  %27 = load i64, ptr %5, align 8, !dbg !2315, !tbaa !2216
  %28 = sub nsw i64 %27, %25, !dbg !2316
  %29 = shl i64 %28, 4, !dbg !2317
  call void @llvm.dbg.value(metadata ptr %26, metadata !1700, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i32 0, metadata !1703, metadata !DIExpression()), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %29, metadata !1704, metadata !DIExpression()), !dbg !2318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2320
  %30 = load i64, ptr %5, align 8, !dbg !2321, !tbaa !2216
  %31 = trunc i64 %30 to i32, !dbg !2321
  store i32 %31, ptr @nslots, align 4, !dbg !2322, !tbaa !822
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2323
  br label %32, !dbg !2324

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2288
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2275, metadata !DIExpression()), !dbg !2288
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2325
  %36 = load i64, ptr %35, align 8, !dbg !2326, !tbaa !2244
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2281, metadata !DIExpression()), !dbg !2327
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2328
  %38 = load ptr, ptr %37, align 8, !dbg !2328, !tbaa !2232
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2283, metadata !DIExpression()), !dbg !2327
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2329
  %40 = load i32, ptr %39, align 4, !dbg !2329, !tbaa !1541
  %41 = or i32 %40, 1, !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2284, metadata !DIExpression()), !dbg !2327
  %42 = load i32, ptr %3, align 8, !dbg !2331, !tbaa !1491
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2332
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2333
  %45 = load ptr, ptr %44, align 8, !dbg !2333, !tbaa !1562
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2334
  %47 = load ptr, ptr %46, align 8, !dbg !2334, !tbaa !1565
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2335
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2285, metadata !DIExpression()), !dbg !2327
  %49 = icmp ugt i64 %36, %48, !dbg !2336
  br i1 %49, label %60, label %50, !dbg !2338

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2339
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2281, metadata !DIExpression()), !dbg !2327
  store i64 %51, ptr %35, align 8, !dbg !2341, !tbaa !2244
  %52 = icmp eq ptr %38, @slot0, !dbg !2342
  br i1 %52, label %54, label %53, !dbg !2344

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2345
  br label %54, !dbg !2345

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2346
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2283, metadata !DIExpression()), !dbg !2327
  store ptr %55, ptr %37, align 8, !dbg !2347, !tbaa !2232
  %56 = load i32, ptr %3, align 8, !dbg !2348, !tbaa !1491
  %57 = load ptr, ptr %44, align 8, !dbg !2349, !tbaa !1562
  %58 = load ptr, ptr %46, align 8, !dbg !2350, !tbaa !1565
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2351
  br label %60, !dbg !2352

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2327
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2283, metadata !DIExpression()), !dbg !2327
  store i32 %7, ptr %6, align 4, !dbg !2353, !tbaa !822
  ret ptr %61, !dbg !2354
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2355 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2362
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2360, metadata !DIExpression()), !dbg !2362
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2361, metadata !DIExpression()), !dbg !2362
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2363
  ret ptr %4, !dbg !2364
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2365 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.value(metadata i32 0, metadata !2261, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.value(metadata ptr %0, metadata !2262, metadata !DIExpression()), !dbg !2369
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2371
  ret ptr %2, !dbg !2372
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2373 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2377, metadata !DIExpression()), !dbg !2379
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 0, metadata !2359, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata ptr %0, metadata !2360, metadata !DIExpression()), !dbg !2380
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()), !dbg !2380
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2382
  ret ptr %3, !dbg !2383
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2384 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2391, metadata !DIExpression(), metadata !2392, metadata ptr %4, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2388, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2389, metadata !DIExpression()), !dbg !2393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2390, metadata !DIExpression()), !dbg !2393
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2395), !dbg !2398
  call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2404, metadata !DIExpression()), !dbg !2407
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2407, !alias.scope !2395, !DIAssignID !2408
  call void @llvm.dbg.assign(metadata i8 0, metadata !2391, metadata !DIExpression(), metadata !2408, metadata ptr %4, metadata !DIExpression()), !dbg !2393
  %5 = icmp eq i32 %1, 10, !dbg !2409
  br i1 %5, label %6, label %7, !dbg !2411

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2412, !noalias !2395
  unreachable, !dbg !2412

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2413, !tbaa !1491, !alias.scope !2395, !DIAssignID !2414
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2391, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2414, metadata ptr %4, metadata !DIExpression()), !dbg !2393
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2415
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2416
  ret ptr %8, !dbg !2417
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2418 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2427
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2426, metadata !DIExpression(), metadata !2427, metadata ptr %5, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2423, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2424, metadata !DIExpression()), !dbg !2428
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2425, metadata !DIExpression()), !dbg !2428
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2429
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression()), !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2404, metadata !DIExpression()), !dbg !2436
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2436, !alias.scope !2430, !DIAssignID !2437
  call void @llvm.dbg.assign(metadata i8 0, metadata !2426, metadata !DIExpression(), metadata !2437, metadata ptr %5, metadata !DIExpression()), !dbg !2428
  %6 = icmp eq i32 %1, 10, !dbg !2438
  br i1 %6, label %7, label %8, !dbg !2439

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2440, !noalias !2430
  unreachable, !dbg !2440

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2441, !tbaa !1491, !alias.scope !2430, !DIAssignID !2442
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2426, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2442, metadata ptr %5, metadata !DIExpression()), !dbg !2428
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2443
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2444
  ret ptr %9, !dbg !2445
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2446 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2452
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()), !dbg !2453
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2391, metadata !DIExpression(), metadata !2452, metadata ptr %3, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 0, metadata !2388, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %0, metadata !2389, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata ptr %1, metadata !2390, metadata !DIExpression()), !dbg !2454
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2404, metadata !DIExpression()), !dbg !2463
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2463, !alias.scope !2457, !DIAssignID !2464
  call void @llvm.dbg.assign(metadata i8 0, metadata !2391, metadata !DIExpression(), metadata !2464, metadata ptr %3, metadata !DIExpression()), !dbg !2454
  %4 = icmp eq i32 %0, 10, !dbg !2465
  br i1 %4, label %5, label %6, !dbg !2466

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2467, !noalias !2457
  unreachable, !dbg !2467

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2468, !tbaa !1491, !alias.scope !2457, !DIAssignID !2469
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2391, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2469, metadata ptr %3, metadata !DIExpression()), !dbg !2454
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2470
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2471
  ret ptr %7, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2473 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2480
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2477, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2478, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2479, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2426, metadata !DIExpression(), metadata !2480, metadata ptr %4, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 0, metadata !2422, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 %0, metadata !2423, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %1, metadata !2424, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %2, metadata !2425, metadata !DIExpression()), !dbg !2482
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2484
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485), !dbg !2488
  call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2404, metadata !DIExpression()), !dbg !2491
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2491, !alias.scope !2485, !DIAssignID !2492
  call void @llvm.dbg.assign(metadata i8 0, metadata !2426, metadata !DIExpression(), metadata !2492, metadata ptr %4, metadata !DIExpression()), !dbg !2482
  %5 = icmp eq i32 %0, 10, !dbg !2493
  br i1 %5, label %6, label %7, !dbg !2494

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2495, !noalias !2485
  unreachable, !dbg !2495

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2496, !tbaa !1491, !alias.scope !2485, !DIAssignID !2497
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2426, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2497, metadata ptr %4, metadata !DIExpression()), !dbg !2482
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2498
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2499
  ret ptr %8, !dbg !2500
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2501 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2509
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2509, metadata ptr %4, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2506, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2512, !tbaa.struct !2513, !DIAssignID !2514
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2514, metadata ptr %4, metadata !DIExpression()), !dbg !2510
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1508, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1509, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1510, metadata !DIExpression()), !dbg !2515
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1511, metadata !DIExpression()), !dbg !2515
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2517
  %6 = lshr i8 %2, 5, !dbg !2518
  %7 = zext nneg i8 %6 to i64, !dbg !2518
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2519
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1512, metadata !DIExpression()), !dbg !2515
  %9 = and i8 %2, 31, !dbg !2520
  %10 = zext nneg i8 %9 to i32, !dbg !2520
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1514, metadata !DIExpression()), !dbg !2515
  %11 = load i32, ptr %8, align 4, !dbg !2521, !tbaa !822
  %12 = lshr i32 %11, %10, !dbg !2522
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1515, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2515
  %13 = and i32 %12, 1, !dbg !2523
  %14 = xor i32 %13, 1, !dbg !2523
  %15 = shl nuw i32 %14, %10, !dbg !2524
  %16 = xor i32 %15, %11, !dbg !2525
  store i32 %16, ptr %8, align 4, !dbg !2525, !tbaa !822
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2526
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2527
  ret ptr %17, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2529 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2535
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2536
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2534, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2535, metadata ptr %3, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i64 -1, metadata !2506, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i8 %1, metadata !2507, metadata !DIExpression()), !dbg !2537
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2540, !tbaa.struct !2513, !DIAssignID !2541
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2541, metadata ptr %3, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %3, metadata !1508, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 %1, metadata !1509, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i32 1, metadata !1510, metadata !DIExpression()), !dbg !2542
  call void @llvm.dbg.value(metadata i8 %1, metadata !1511, metadata !DIExpression()), !dbg !2542
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2544
  %5 = lshr i8 %1, 5, !dbg !2545
  %6 = zext nneg i8 %5 to i64, !dbg !2545
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2546
  call void @llvm.dbg.value(metadata ptr %7, metadata !1512, metadata !DIExpression()), !dbg !2542
  %8 = and i8 %1, 31, !dbg !2547
  %9 = zext nneg i8 %8 to i32, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %9, metadata !1514, metadata !DIExpression()), !dbg !2542
  %10 = load i32, ptr %7, align 4, !dbg !2548, !tbaa !822
  %11 = lshr i32 %10, %9, !dbg !2549
  call void @llvm.dbg.value(metadata i32 %11, metadata !1515, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2542
  %12 = and i32 %11, 1, !dbg !2550
  %13 = xor i32 %12, 1, !dbg !2550
  %14 = shl nuw i32 %13, %9, !dbg !2551
  %15 = xor i32 %14, %10, !dbg !2552
  store i32 %15, ptr %7, align 4, !dbg !2552, !tbaa !822
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2553
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2554
  ret ptr %16, !dbg !2555
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2556 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2559
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2558, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %0, metadata !2533, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !2534, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2559, metadata ptr %2, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i64 -1, metadata !2506, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata i8 58, metadata !2507, metadata !DIExpression()), !dbg !2563
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2566, !tbaa.struct !2513, !DIAssignID !2567
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2567, metadata ptr %2, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.value(metadata ptr %2, metadata !1508, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !1509, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 1, metadata !1510, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i8 58, metadata !1511, metadata !DIExpression()), !dbg !2568
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %3, metadata !1512, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata i32 26, metadata !1514, metadata !DIExpression()), !dbg !2568
  %4 = load i32, ptr %3, align 4, !dbg !2571, !tbaa !822
  call void @llvm.dbg.value(metadata i32 %4, metadata !1515, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2568
  %5 = or i32 %4, 67108864, !dbg !2572
  store i32 %5, ptr %3, align 4, !dbg !2572, !tbaa !822
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2573
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2574
  ret ptr %6, !dbg !2575
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2576 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2580
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2578, metadata !DIExpression()), !dbg !2581
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2579, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2580, metadata ptr %3, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %1, metadata !2506, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !2507, metadata !DIExpression()), !dbg !2582
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2585, !tbaa.struct !2513, !DIAssignID !2586
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2508, metadata !DIExpression(), metadata !2586, metadata ptr %3, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata ptr %3, metadata !1508, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !1509, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 1, metadata !1510, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i8 58, metadata !1511, metadata !DIExpression()), !dbg !2587
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2589
  call void @llvm.dbg.value(metadata ptr %4, metadata !1512, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.value(metadata i32 26, metadata !1514, metadata !DIExpression()), !dbg !2587
  %5 = load i32, ptr %4, align 4, !dbg !2590, !tbaa !822
  call void @llvm.dbg.value(metadata i32 %5, metadata !1515, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2587
  %6 = or i32 %5, 67108864, !dbg !2591
  store i32 %6, ptr %4, align 4, !dbg !2591, !tbaa !822
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2592
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2593
  ret ptr %7, !dbg !2594
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2595 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2601
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2600, metadata !DIExpression(), metadata !2601, metadata ptr %4, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2404, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2598, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2602
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2605
  call void @llvm.dbg.value(metadata i32 %1, metadata !2399, metadata !DIExpression()), !dbg !2606
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2606
  %5 = icmp eq i32 %1, 10, !dbg !2607
  br i1 %5, label %6, label %7, !dbg !2608

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2609, !noalias !2610
  unreachable, !dbg !2609

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2606
  store i32 %1, ptr %4, align 8, !dbg !2613, !tbaa.struct !2513, !DIAssignID !2614
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2613
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2613
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2614, metadata ptr %4, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2615, metadata ptr %8, metadata !DIExpression()), !dbg !2602
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1508, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1509, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1510, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1511, metadata !DIExpression()), !dbg !2616
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2618
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1512, metadata !DIExpression()), !dbg !2616
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1514, metadata !DIExpression()), !dbg !2616
  %10 = load i32, ptr %9, align 4, !dbg !2619, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1515, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2616
  %11 = or i32 %10, 67108864, !dbg !2620
  store i32 %11, ptr %9, align 4, !dbg !2620, !tbaa !822, !DIAssignID !2621
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2600, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2621, metadata ptr %9, metadata !DIExpression()), !dbg !2602
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2622
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2623
  ret ptr %12, !dbg !2624
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2625 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2633
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2629, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2630, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2631, metadata !DIExpression()), !dbg !2634
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2632, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2633, metadata ptr %5, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %1, metadata !2641, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %2, metadata !2642, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %3, metadata !2643, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata i64 -1, metadata !2644, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2648, !tbaa.struct !2513, !DIAssignID !2649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2649, metadata ptr %5, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2650, metadata ptr undef, metadata !DIExpression()), !dbg !2645
  call void @llvm.dbg.value(metadata ptr %5, metadata !1548, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %1, metadata !1549, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %2, metadata !1550, metadata !DIExpression()), !dbg !2651
  call void @llvm.dbg.value(metadata ptr %5, metadata !1548, metadata !DIExpression()), !dbg !2651
  store i32 10, ptr %5, align 8, !dbg !2653, !tbaa !1491, !DIAssignID !2654
  call void @llvm.dbg.assign(metadata i32 10, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2654, metadata ptr %5, metadata !DIExpression()), !dbg !2645
  %6 = icmp ne ptr %1, null, !dbg !2655
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2656
  br i1 %8, label %10, label %9, !dbg !2656

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2657
  unreachable, !dbg !2657

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2658
  store ptr %1, ptr %11, align 8, !dbg !2659, !tbaa !1562, !DIAssignID !2660
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2660, metadata ptr %11, metadata !DIExpression()), !dbg !2645
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2661
  store ptr %2, ptr %12, align 8, !dbg !2662, !tbaa !1565, !DIAssignID !2663
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2663, metadata ptr %12, metadata !DIExpression()), !dbg !2645
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2664
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2665
  ret ptr %13, !dbg !2666
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2636 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2667, metadata ptr %6, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2640, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2641, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2642, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2643, metadata !DIExpression()), !dbg !2668
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2644, metadata !DIExpression()), !dbg !2668
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2669
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2670, !tbaa.struct !2513, !DIAssignID !2671
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2671, metadata ptr %6, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2672, metadata ptr undef, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %6, metadata !1548, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %1, metadata !1549, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %2, metadata !1550, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata ptr %6, metadata !1548, metadata !DIExpression()), !dbg !2673
  store i32 10, ptr %6, align 8, !dbg !2675, !tbaa !1491, !DIAssignID !2676
  call void @llvm.dbg.assign(metadata i32 10, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2676, metadata ptr %6, metadata !DIExpression()), !dbg !2668
  %7 = icmp ne ptr %1, null, !dbg !2677
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2678
  br i1 %9, label %11, label %10, !dbg !2678

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2679
  unreachable, !dbg !2679

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2680
  store ptr %1, ptr %12, align 8, !dbg !2681, !tbaa !1562, !DIAssignID !2682
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2682, metadata ptr %12, metadata !DIExpression()), !dbg !2668
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2683
  store ptr %2, ptr %13, align 8, !dbg !2684, !tbaa !1565, !DIAssignID !2685
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2685, metadata ptr %13, metadata !DIExpression()), !dbg !2668
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2686
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2687
  ret ptr %14, !dbg !2688
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2689 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2696
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2693, metadata !DIExpression()), !dbg !2697
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2694, metadata !DIExpression()), !dbg !2697
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2695, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i32 0, metadata !2629, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %0, metadata !2630, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %1, metadata !2631, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.value(metadata ptr %2, metadata !2632, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2696, metadata ptr %4, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %1, metadata !2642, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %2, metadata !2643, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 -1, metadata !2644, metadata !DIExpression()), !dbg !2700
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2703, !tbaa.struct !2513, !DIAssignID !2704
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2704, metadata ptr %4, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2705, metadata ptr undef, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata ptr %4, metadata !1548, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %4, metadata !1548, metadata !DIExpression()), !dbg !2706
  store i32 10, ptr %4, align 8, !dbg !2708, !tbaa !1491, !DIAssignID !2709
  call void @llvm.dbg.assign(metadata i32 10, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2709, metadata ptr %4, metadata !DIExpression()), !dbg !2700
  %5 = icmp ne ptr %0, null, !dbg !2710
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2711
  br i1 %7, label %9, label %8, !dbg !2711

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2712
  unreachable, !dbg !2712

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2713
  store ptr %0, ptr %10, align 8, !dbg !2714, !tbaa !1562, !DIAssignID !2715
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2715, metadata ptr %10, metadata !DIExpression()), !dbg !2700
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2716
  store ptr %1, ptr %11, align 8, !dbg !2717, !tbaa !1565, !DIAssignID !2718
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2718, metadata ptr %11, metadata !DIExpression()), !dbg !2700
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2719
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2720
  ret ptr %12, !dbg !2721
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2722 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2730
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2726, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2727, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2728, metadata !DIExpression()), !dbg !2731
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2729, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2730, metadata ptr %5, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i32 0, metadata !2640, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %0, metadata !2641, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %1, metadata !2642, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %2, metadata !2643, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i64 %3, metadata !2644, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2734
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2735, !tbaa.struct !2513, !DIAssignID !2736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(), metadata !2736, metadata ptr %5, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2737, metadata ptr undef, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata ptr %5, metadata !1548, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !1549, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %1, metadata !1550, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %5, metadata !1548, metadata !DIExpression()), !dbg !2738
  store i32 10, ptr %5, align 8, !dbg !2740, !tbaa !1491, !DIAssignID !2741
  call void @llvm.dbg.assign(metadata i32 10, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2741, metadata ptr %5, metadata !DIExpression()), !dbg !2732
  %6 = icmp ne ptr %0, null, !dbg !2742
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2743
  br i1 %8, label %10, label %9, !dbg !2743

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2744
  unreachable, !dbg !2744

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2745
  store ptr %0, ptr %11, align 8, !dbg !2746, !tbaa !1562, !DIAssignID !2747
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2747, metadata ptr %11, metadata !DIExpression()), !dbg !2732
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2748
  store ptr %1, ptr %12, align 8, !dbg !2749, !tbaa !1565, !DIAssignID !2750
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2635, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2750, metadata ptr %12, metadata !DIExpression()), !dbg !2732
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2751
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2752
  ret ptr %13, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2754 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2760, metadata !DIExpression()), !dbg !2761
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2762
  ret ptr %4, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2764 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2768, metadata !DIExpression()), !dbg !2770
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2769, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata ptr %0, metadata !2759, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()), !dbg !2771
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2773
  ret ptr %3, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2775 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2781
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata ptr %1, metadata !2759, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 -1, metadata !2760, metadata !DIExpression()), !dbg !2782
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2784
  ret ptr %3, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2786 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata ptr %0, metadata !2780, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata ptr %0, metadata !2759, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i64 -1, metadata !2760, metadata !DIExpression()), !dbg !2794
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2796
  ret ptr %2, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2798 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2837, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2838, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2839, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2840, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2841, metadata !DIExpression()), !dbg !2843
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2842, metadata !DIExpression()), !dbg !2843
  %7 = icmp eq ptr %1, null, !dbg !2844
  br i1 %7, label %10, label %8, !dbg !2846

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2847
  br label %12, !dbg !2847

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.77, ptr noundef %2, ptr noundef %3) #37, !dbg !2848
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.3.79, i32 noundef 5) #37, !dbg !2849
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2849
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2850
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.5.81, i32 noundef 5) #37, !dbg !2851
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.82) #37, !dbg !2851
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2852
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
  ], !dbg !2853

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.7.83, i32 noundef 5) #37, !dbg !2854
  %21 = load ptr, ptr %4, align 8, !dbg !2854, !tbaa !762
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2854
  br label %147, !dbg !2856

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.8.84, i32 noundef 5) #37, !dbg !2857
  %25 = load ptr, ptr %4, align 8, !dbg !2857, !tbaa !762
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2857
  %27 = load ptr, ptr %26, align 8, !dbg !2857, !tbaa !762
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2857
  br label %147, !dbg !2858

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.9.85, i32 noundef 5) #37, !dbg !2859
  %31 = load ptr, ptr %4, align 8, !dbg !2859, !tbaa !762
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2859
  %33 = load ptr, ptr %32, align 8, !dbg !2859, !tbaa !762
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2859
  %35 = load ptr, ptr %34, align 8, !dbg !2859, !tbaa !762
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2859
  br label %147, !dbg !2860

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.10.86, i32 noundef 5) #37, !dbg !2861
  %39 = load ptr, ptr %4, align 8, !dbg !2861, !tbaa !762
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2861
  %41 = load ptr, ptr %40, align 8, !dbg !2861, !tbaa !762
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2861
  %43 = load ptr, ptr %42, align 8, !dbg !2861, !tbaa !762
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2861
  %45 = load ptr, ptr %44, align 8, !dbg !2861, !tbaa !762
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2861
  br label %147, !dbg !2862

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.11.87, i32 noundef 5) #37, !dbg !2863
  %49 = load ptr, ptr %4, align 8, !dbg !2863, !tbaa !762
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2863
  %51 = load ptr, ptr %50, align 8, !dbg !2863, !tbaa !762
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2863
  %53 = load ptr, ptr %52, align 8, !dbg !2863, !tbaa !762
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2863
  %55 = load ptr, ptr %54, align 8, !dbg !2863, !tbaa !762
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2863
  %57 = load ptr, ptr %56, align 8, !dbg !2863, !tbaa !762
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2863
  br label %147, !dbg !2864

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.12.88, i32 noundef 5) #37, !dbg !2865
  %61 = load ptr, ptr %4, align 8, !dbg !2865, !tbaa !762
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2865
  %63 = load ptr, ptr %62, align 8, !dbg !2865, !tbaa !762
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2865
  %65 = load ptr, ptr %64, align 8, !dbg !2865, !tbaa !762
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2865
  %67 = load ptr, ptr %66, align 8, !dbg !2865, !tbaa !762
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2865
  %69 = load ptr, ptr %68, align 8, !dbg !2865, !tbaa !762
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2865
  %71 = load ptr, ptr %70, align 8, !dbg !2865, !tbaa !762
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2865
  br label %147, !dbg !2866

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.13.89, i32 noundef 5) #37, !dbg !2867
  %75 = load ptr, ptr %4, align 8, !dbg !2867, !tbaa !762
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2867
  %77 = load ptr, ptr %76, align 8, !dbg !2867, !tbaa !762
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2867
  %79 = load ptr, ptr %78, align 8, !dbg !2867, !tbaa !762
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2867
  %81 = load ptr, ptr %80, align 8, !dbg !2867, !tbaa !762
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2867
  %83 = load ptr, ptr %82, align 8, !dbg !2867, !tbaa !762
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2867
  %85 = load ptr, ptr %84, align 8, !dbg !2867, !tbaa !762
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2867
  %87 = load ptr, ptr %86, align 8, !dbg !2867, !tbaa !762
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2867
  br label %147, !dbg !2868

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.14.90, i32 noundef 5) #37, !dbg !2869
  %91 = load ptr, ptr %4, align 8, !dbg !2869, !tbaa !762
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2869
  %93 = load ptr, ptr %92, align 8, !dbg !2869, !tbaa !762
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2869
  %95 = load ptr, ptr %94, align 8, !dbg !2869, !tbaa !762
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2869
  %97 = load ptr, ptr %96, align 8, !dbg !2869, !tbaa !762
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2869
  %99 = load ptr, ptr %98, align 8, !dbg !2869, !tbaa !762
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2869
  %101 = load ptr, ptr %100, align 8, !dbg !2869, !tbaa !762
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2869
  %103 = load ptr, ptr %102, align 8, !dbg !2869, !tbaa !762
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2869
  %105 = load ptr, ptr %104, align 8, !dbg !2869, !tbaa !762
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2869
  br label %147, !dbg !2870

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.15.91, i32 noundef 5) #37, !dbg !2871
  %109 = load ptr, ptr %4, align 8, !dbg !2871, !tbaa !762
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2871
  %111 = load ptr, ptr %110, align 8, !dbg !2871, !tbaa !762
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2871
  %113 = load ptr, ptr %112, align 8, !dbg !2871, !tbaa !762
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2871
  %115 = load ptr, ptr %114, align 8, !dbg !2871, !tbaa !762
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2871
  %117 = load ptr, ptr %116, align 8, !dbg !2871, !tbaa !762
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2871
  %119 = load ptr, ptr %118, align 8, !dbg !2871, !tbaa !762
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2871
  %121 = load ptr, ptr %120, align 8, !dbg !2871, !tbaa !762
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2871
  %123 = load ptr, ptr %122, align 8, !dbg !2871, !tbaa !762
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2871
  %125 = load ptr, ptr %124, align 8, !dbg !2871, !tbaa !762
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2871
  br label %147, !dbg !2872

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.16.92, i32 noundef 5) #37, !dbg !2873
  %129 = load ptr, ptr %4, align 8, !dbg !2873, !tbaa !762
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2873
  %131 = load ptr, ptr %130, align 8, !dbg !2873, !tbaa !762
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2873
  %133 = load ptr, ptr %132, align 8, !dbg !2873, !tbaa !762
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2873
  %135 = load ptr, ptr %134, align 8, !dbg !2873, !tbaa !762
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2873
  %137 = load ptr, ptr %136, align 8, !dbg !2873, !tbaa !762
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2873
  %139 = load ptr, ptr %138, align 8, !dbg !2873, !tbaa !762
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2873
  %141 = load ptr, ptr %140, align 8, !dbg !2873, !tbaa !762
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2873
  %143 = load ptr, ptr %142, align 8, !dbg !2873, !tbaa !762
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2873
  %145 = load ptr, ptr %144, align 8, !dbg !2873, !tbaa !762
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2873
  br label %147, !dbg !2874

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2876 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2880, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2881, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2882, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2883, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2884, metadata !DIExpression()), !dbg !2886
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2885, metadata !DIExpression()), !dbg !2886
  br label %6, !dbg !2887

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2889
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2885, metadata !DIExpression()), !dbg !2886
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2890
  %9 = load ptr, ptr %8, align 8, !dbg !2890, !tbaa !762
  %10 = icmp eq ptr %9, null, !dbg !2892
  %11 = add i64 %7, 1, !dbg !2893
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2885, metadata !DIExpression()), !dbg !2886
  br i1 %10, label %12, label %6, !dbg !2892, !llvm.loop !2894

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2889
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2896
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2898 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2920
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2918, metadata !DIExpression(), metadata !2920, metadata ptr %6, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2912, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2913, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2914, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2915, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2916, metadata !DIExpression(DW_OP_deref)), !dbg !2921
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2922
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2917, metadata !DIExpression()), !dbg !2921
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2917, metadata !DIExpression()), !dbg !2921
  %10 = icmp sgt i32 %9, -1, !dbg !2923
  br i1 %10, label %18, label %11, !dbg !2923

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2923
  store i32 %12, ptr %7, align 8, !dbg !2923
  %13 = icmp ult i32 %9, -7, !dbg !2923
  br i1 %13, label %14, label %18, !dbg !2923

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2923
  %16 = sext i32 %9 to i64, !dbg !2923
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2923
  br label %22, !dbg !2923

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2923
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2923
  store ptr %21, ptr %4, align 8, !dbg !2923
  br label %22, !dbg !2923

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2923
  %25 = load ptr, ptr %24, align 8, !dbg !2923
  store ptr %25, ptr %6, align 8, !dbg !2926, !tbaa !762
  %26 = icmp eq ptr %25, null, !dbg !2927
  br i1 %26, label %197, label %27, !dbg !2928

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2917, metadata !DIExpression()), !dbg !2921
  %28 = icmp sgt i32 %23, -1, !dbg !2923
  br i1 %28, label %36, label %29, !dbg !2923

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2923
  store i32 %30, ptr %7, align 8, !dbg !2923
  %31 = icmp ult i32 %23, -7, !dbg !2923
  br i1 %31, label %32, label %36, !dbg !2923

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2923
  %34 = sext i32 %23 to i64, !dbg !2923
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2923
  br label %40, !dbg !2923

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2923
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2923
  store ptr %39, ptr %4, align 8, !dbg !2923
  br label %40, !dbg !2923

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2923
  %43 = load ptr, ptr %42, align 8, !dbg !2923
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2929
  store ptr %43, ptr %44, align 8, !dbg !2926, !tbaa !762
  %45 = icmp eq ptr %43, null, !dbg !2927
  br i1 %45, label %197, label %46, !dbg !2928

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2917, metadata !DIExpression()), !dbg !2921
  %47 = icmp sgt i32 %41, -1, !dbg !2923
  br i1 %47, label %55, label %48, !dbg !2923

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2923
  store i32 %49, ptr %7, align 8, !dbg !2923
  %50 = icmp ult i32 %41, -7, !dbg !2923
  br i1 %50, label %51, label %55, !dbg !2923

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2923
  %53 = sext i32 %41 to i64, !dbg !2923
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2923
  br label %59, !dbg !2923

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2923
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2923
  store ptr %58, ptr %4, align 8, !dbg !2923
  br label %59, !dbg !2923

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2923
  %62 = load ptr, ptr %61, align 8, !dbg !2923
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2929
  store ptr %62, ptr %63, align 8, !dbg !2926, !tbaa !762
  %64 = icmp eq ptr %62, null, !dbg !2927
  br i1 %64, label %197, label %65, !dbg !2928

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2917, metadata !DIExpression()), !dbg !2921
  %66 = icmp sgt i32 %60, -1, !dbg !2923
  br i1 %66, label %74, label %67, !dbg !2923

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2923
  store i32 %68, ptr %7, align 8, !dbg !2923
  %69 = icmp ult i32 %60, -7, !dbg !2923
  br i1 %69, label %70, label %74, !dbg !2923

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2923
  %72 = sext i32 %60 to i64, !dbg !2923
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2923
  br label %78, !dbg !2923

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2923
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2923
  store ptr %77, ptr %4, align 8, !dbg !2923
  br label %78, !dbg !2923

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2923
  %81 = load ptr, ptr %80, align 8, !dbg !2923
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2929
  store ptr %81, ptr %82, align 8, !dbg !2926, !tbaa !762
  %83 = icmp eq ptr %81, null, !dbg !2927
  br i1 %83, label %197, label %84, !dbg !2928

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2917, metadata !DIExpression()), !dbg !2921
  %85 = icmp sgt i32 %79, -1, !dbg !2923
  br i1 %85, label %93, label %86, !dbg !2923

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2923
  store i32 %87, ptr %7, align 8, !dbg !2923
  %88 = icmp ult i32 %79, -7, !dbg !2923
  br i1 %88, label %89, label %93, !dbg !2923

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2923
  %91 = sext i32 %79 to i64, !dbg !2923
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2923
  br label %97, !dbg !2923

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2923
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2923
  store ptr %96, ptr %4, align 8, !dbg !2923
  br label %97, !dbg !2923

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2923
  %100 = load ptr, ptr %99, align 8, !dbg !2923
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2929
  store ptr %100, ptr %101, align 8, !dbg !2926, !tbaa !762
  %102 = icmp eq ptr %100, null, !dbg !2927
  br i1 %102, label %197, label %103, !dbg !2928

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2917, metadata !DIExpression()), !dbg !2921
  %104 = icmp sgt i32 %98, -1, !dbg !2923
  br i1 %104, label %112, label %105, !dbg !2923

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2923
  store i32 %106, ptr %7, align 8, !dbg !2923
  %107 = icmp ult i32 %98, -7, !dbg !2923
  br i1 %107, label %108, label %112, !dbg !2923

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2923
  %110 = sext i32 %98 to i64, !dbg !2923
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2923
  br label %116, !dbg !2923

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2923
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2923
  store ptr %115, ptr %4, align 8, !dbg !2923
  br label %116, !dbg !2923

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2923
  %119 = load ptr, ptr %118, align 8, !dbg !2923
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2929
  store ptr %119, ptr %120, align 8, !dbg !2926, !tbaa !762
  %121 = icmp eq ptr %119, null, !dbg !2927
  br i1 %121, label %197, label %122, !dbg !2928

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2917, metadata !DIExpression()), !dbg !2921
  %123 = icmp sgt i32 %117, -1, !dbg !2923
  br i1 %123, label %131, label %124, !dbg !2923

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2923
  store i32 %125, ptr %7, align 8, !dbg !2923
  %126 = icmp ult i32 %117, -7, !dbg !2923
  br i1 %126, label %127, label %131, !dbg !2923

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2923
  %129 = sext i32 %117 to i64, !dbg !2923
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2923
  br label %135, !dbg !2923

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2923
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2923
  store ptr %134, ptr %4, align 8, !dbg !2923
  br label %135, !dbg !2923

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2923
  %138 = load ptr, ptr %137, align 8, !dbg !2923
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2929
  store ptr %138, ptr %139, align 8, !dbg !2926, !tbaa !762
  %140 = icmp eq ptr %138, null, !dbg !2927
  br i1 %140, label %197, label %141, !dbg !2928

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2917, metadata !DIExpression()), !dbg !2921
  %142 = icmp sgt i32 %136, -1, !dbg !2923
  br i1 %142, label %150, label %143, !dbg !2923

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2923
  store i32 %144, ptr %7, align 8, !dbg !2923
  %145 = icmp ult i32 %136, -7, !dbg !2923
  br i1 %145, label %146, label %150, !dbg !2923

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2923
  %148 = sext i32 %136 to i64, !dbg !2923
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2923
  br label %154, !dbg !2923

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2923
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2923
  store ptr %153, ptr %4, align 8, !dbg !2923
  br label %154, !dbg !2923

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2923
  %157 = load ptr, ptr %156, align 8, !dbg !2923
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2929
  store ptr %157, ptr %158, align 8, !dbg !2926, !tbaa !762
  %159 = icmp eq ptr %157, null, !dbg !2927
  br i1 %159, label %197, label %160, !dbg !2928

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2917, metadata !DIExpression()), !dbg !2921
  %161 = icmp sgt i32 %155, -1, !dbg !2923
  br i1 %161, label %169, label %162, !dbg !2923

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2923
  store i32 %163, ptr %7, align 8, !dbg !2923
  %164 = icmp ult i32 %155, -7, !dbg !2923
  br i1 %164, label %165, label %169, !dbg !2923

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2923
  %167 = sext i32 %155 to i64, !dbg !2923
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2923
  br label %173, !dbg !2923

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2923
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2923
  store ptr %172, ptr %4, align 8, !dbg !2923
  br label %173, !dbg !2923

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2923
  %176 = load ptr, ptr %175, align 8, !dbg !2923
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2929
  store ptr %176, ptr %177, align 8, !dbg !2926, !tbaa !762
  %178 = icmp eq ptr %176, null, !dbg !2927
  br i1 %178, label %197, label %179, !dbg !2928

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2917, metadata !DIExpression()), !dbg !2921
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2917, metadata !DIExpression()), !dbg !2921
  %180 = icmp sgt i32 %174, -1, !dbg !2923
  br i1 %180, label %188, label %181, !dbg !2923

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2923
  store i32 %182, ptr %7, align 8, !dbg !2923
  %183 = icmp ult i32 %174, -7, !dbg !2923
  br i1 %183, label %184, label %188, !dbg !2923

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2923
  %186 = sext i32 %174 to i64, !dbg !2923
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2923
  br label %191, !dbg !2923

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2923
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2923
  store ptr %190, ptr %4, align 8, !dbg !2923
  br label %191, !dbg !2923

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2923
  %193 = load ptr, ptr %192, align 8, !dbg !2923
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2929
  store ptr %193, ptr %194, align 8, !dbg !2926, !tbaa !762
  %195 = icmp eq ptr %193, null, !dbg !2927
  %196 = select i1 %195, i64 9, i64 10, !dbg !2928
  br label %197, !dbg !2928

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2930
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2931
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2932
  ret void, !dbg !2932
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2933 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2942
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2941, metadata !DIExpression(), metadata !2942, metadata ptr %5, metadata !DIExpression()), !dbg !2943
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2937, metadata !DIExpression()), !dbg !2943
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2938, metadata !DIExpression()), !dbg !2943
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2939, metadata !DIExpression()), !dbg !2943
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2940, metadata !DIExpression()), !dbg !2943
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2944
  call void @llvm.va_start(ptr nonnull %5), !dbg !2945
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2946, !tbaa.struct !1092
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2946
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2946
  call void @llvm.va_end(ptr nonnull %5), !dbg !2947
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2948
  ret void, !dbg !2948
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2949 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2950, !tbaa !762
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %1), !dbg !2950
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.17.97, i32 noundef 5) #37, !dbg !2951
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.98) #37, !dbg !2951
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.19.99, i32 noundef 5) #37, !dbg !2952
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #37, !dbg !2952
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.22.100, i32 noundef 5) #37, !dbg !2953
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2953
  ret void, !dbg !2954
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2955 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2960, metadata !DIExpression()), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2961, metadata !DIExpression()), !dbg !2963
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64 %2, metadata !2968, metadata !DIExpression()), !dbg !2969
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2971
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !2977
  %5 = icmp eq ptr %4, null, !dbg !2979
  br i1 %5, label %6, label %7, !dbg !2981

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2982
  unreachable, !dbg !2982

7:                                                ; preds = %3
  ret ptr %4, !dbg !2983
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2965 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2967, metadata !DIExpression()), !dbg !2984
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2968, metadata !DIExpression()), !dbg !2984
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2985
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !2986
  %5 = icmp eq ptr %4, null, !dbg !2988
  br i1 %5, label %6, label %7, !dbg !2989

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2990
  unreachable, !dbg !2990

7:                                                ; preds = %3
  ret ptr %4, !dbg !2991
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2992 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2996, metadata !DIExpression()), !dbg !2997
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2998
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !2999
  %3 = icmp eq ptr %2, null, !dbg !3001
  br i1 %3, label %4, label %5, !dbg !3002

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3003
  unreachable, !dbg !3003

5:                                                ; preds = %1
  ret ptr %2, !dbg !3004
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3005 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3006 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3010, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %0, metadata !3012, metadata !DIExpression()), !dbg !3016
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3018
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !3019
  %3 = icmp eq ptr %2, null, !dbg !3021
  br i1 %3, label %4, label %5, !dbg !3022

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3023
  unreachable, !dbg !3023

5:                                                ; preds = %1
  ret ptr %2, !dbg !3024
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3025 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %0, metadata !2996, metadata !DIExpression()), !dbg !3031
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3033
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !3034
  %3 = icmp eq ptr %2, null, !dbg !3036
  br i1 %3, label %4, label %5, !dbg !3037

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3038
  unreachable, !dbg !3038

5:                                                ; preds = %1
  ret ptr %2, !dbg !3039
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3040 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3046
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3052
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3054
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3055
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !3056
  %5 = icmp eq ptr %4, null, !dbg !3058
  br i1 %5, label %6, label %7, !dbg !3059

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3060
  unreachable, !dbg !3060

7:                                                ; preds = %2
  ret ptr %4, !dbg !3061
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3062 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3063 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3067, metadata !DIExpression()), !dbg !3069
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata ptr %0, metadata !3070, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3076
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3078
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3079
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !3080
  %5 = icmp eq ptr %4, null, !dbg !3082
  br i1 %5, label %6, label %7, !dbg !3083

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3084
  unreachable, !dbg !3084

7:                                                ; preds = %2
  ret ptr %4, !dbg !3085
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3086 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %0, metadata !3094, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %2, metadata !3098, metadata !DIExpression()), !dbg !3099
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3101
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !3102
  %5 = icmp eq ptr %4, null, !dbg !3104
  br i1 %5, label %6, label %7, !dbg !3105

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3106
  unreachable, !dbg !3106

7:                                                ; preds = %3
  ret ptr %4, !dbg !3107
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3108 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata ptr null, metadata !2964, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %0, metadata !2967, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i64 %1, metadata !2968, metadata !DIExpression()), !dbg !3115
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3117
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3118
  %4 = icmp eq ptr %3, null, !dbg !3120
  br i1 %4, label %5, label %6, !dbg !3121

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3122
  unreachable, !dbg !3122

6:                                                ; preds = %2
  ret ptr %3, !dbg !3123
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3124 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3128, metadata !DIExpression()), !dbg !3130
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata ptr null, metadata !3090, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3131
  call void @llvm.dbg.value(metadata ptr null, metadata !3094, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3133
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3135
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3136
  %4 = icmp eq ptr %3, null, !dbg !3138
  br i1 %4, label %5, label %6, !dbg !3139

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3140
  unreachable, !dbg !3140

6:                                                ; preds = %2
  ret ptr %3, !dbg !3141
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3142 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %0, metadata !698, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 1, metadata !700, metadata !DIExpression()), !dbg !3149
  %3 = load i64, ptr %1, align 8, !dbg !3151, !tbaa !2216
  call void @llvm.dbg.value(metadata i64 %3, metadata !701, metadata !DIExpression()), !dbg !3149
  %4 = icmp eq ptr %0, null, !dbg !3152
  br i1 %4, label %5, label %8, !dbg !3154

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3155
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3158
  br label %15, !dbg !3158

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3159
  %10 = add nuw i64 %9, 1, !dbg !3159
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3159
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3159
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %13, metadata !701, metadata !DIExpression()), !dbg !3149
  br i1 %12, label %14, label %15, !dbg !3162

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3163
  unreachable, !dbg !3163

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3149
  call void @llvm.dbg.value(metadata i64 %16, metadata !701, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 %16, metadata !2967, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.value(metadata i64 1, metadata !2968, metadata !DIExpression()), !dbg !3164
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3166
  call void @llvm.dbg.value(metadata ptr %17, metadata !2972, metadata !DIExpression()), !dbg !3167
  %18 = icmp eq ptr %17, null, !dbg !3169
  br i1 %18, label %19, label %20, !dbg !3170

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3171
  unreachable, !dbg !3171

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !698, metadata !DIExpression()), !dbg !3149
  store i64 %16, ptr %1, align 8, !dbg !3172, !tbaa !2216
  ret ptr %17, !dbg !3173
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !693 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !698, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !699, metadata !DIExpression()), !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !700, metadata !DIExpression()), !dbg !3174
  %4 = load i64, ptr %1, align 8, !dbg !3175, !tbaa !2216
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !701, metadata !DIExpression()), !dbg !3174
  %5 = icmp eq ptr %0, null, !dbg !3176
  br i1 %5, label %6, label %13, !dbg !3177

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3178
  br i1 %7, label %8, label %20, !dbg !3179

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3180
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !701, metadata !DIExpression()), !dbg !3174
  %10 = icmp ugt i64 %2, 128, !dbg !3182
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !701, metadata !DIExpression()), !dbg !3174
  br label %20, !dbg !3184

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3185
  %15 = add nuw i64 %14, 1, !dbg !3185
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3185
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3185
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !701, metadata !DIExpression()), !dbg !3174
  br i1 %17, label %19, label %20, !dbg !3186

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3187
  unreachable, !dbg !3187

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3174
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !701, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata ptr %0, metadata !2964, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %21, metadata !2967, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i64 %2, metadata !2968, metadata !DIExpression()), !dbg !3188
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3190
  call void @llvm.dbg.value(metadata ptr %22, metadata !2972, metadata !DIExpression()), !dbg !3191
  %23 = icmp eq ptr %22, null, !dbg !3193
  br i1 %23, label %24, label %25, !dbg !3194

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3195
  unreachable, !dbg !3195

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !698, metadata !DIExpression()), !dbg !3174
  store i64 %21, ptr %1, align 8, !dbg !3196, !tbaa !2216
  ret ptr %22, !dbg !3197
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !705 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !714, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !715, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !716, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !717, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !718, metadata !DIExpression()), !dbg !3198
  %6 = load i64, ptr %1, align 8, !dbg !3199, !tbaa !2216
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !719, metadata !DIExpression()), !dbg !3198
  %7 = ashr i64 %6, 1, !dbg !3200
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3200
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3200
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3200
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !720, metadata !DIExpression()), !dbg !3198
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !720, metadata !DIExpression()), !dbg !3198
  %12 = icmp sgt i64 %3, -1, !dbg !3203
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3205
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !720, metadata !DIExpression()), !dbg !3198
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3206
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3206
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !721, metadata !DIExpression()), !dbg !3198
  %18 = icmp slt i64 %17, 128, !dbg !3206
  %19 = select i1 %18, i64 128, i64 0, !dbg !3206
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3206
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !722, metadata !DIExpression()), !dbg !3198
  %21 = icmp eq i64 %20, 0, !dbg !3207
  br i1 %21, label %28, label %22, !dbg !3209

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !720, metadata !DIExpression()), !dbg !3198
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3212
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !721, metadata !DIExpression()), !dbg !3198
  br label %28, !dbg !3213

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3198
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !721, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !720, metadata !DIExpression()), !dbg !3198
  %31 = icmp eq ptr %0, null, !dbg !3214
  br i1 %31, label %32, label %33, !dbg !3216

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3217, !tbaa !2216
  br label %33, !dbg !3218

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3219
  %35 = icmp slt i64 %34, %2, !dbg !3221
  br i1 %35, label %36, label %48, !dbg !3222

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3223
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3223
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !720, metadata !DIExpression()), !dbg !3198
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3224
  br i1 %42, label %47, label %43, !dbg !3224

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3225
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3225
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3225
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !721, metadata !DIExpression()), !dbg !3198
  br i1 %45, label %47, label %48, !dbg !3226

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3227
  unreachable, !dbg !3227

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3198
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !721, metadata !DIExpression()), !dbg !3198
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !720, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %50, metadata !3045, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata ptr %0, metadata !3047, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %50, metadata !3051, metadata !DIExpression()), !dbg !3230
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3232
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3233
  call void @llvm.dbg.value(metadata ptr %52, metadata !2972, metadata !DIExpression()), !dbg !3234
  %53 = icmp eq ptr %52, null, !dbg !3236
  br i1 %53, label %54, label %55, !dbg !3237

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3238
  unreachable, !dbg !3238

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !714, metadata !DIExpression()), !dbg !3198
  store i64 %49, ptr %1, align 8, !dbg !3239, !tbaa !2216
  ret ptr %52, !dbg !3240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3241 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3248, metadata !DIExpression()), !dbg !3249
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3251
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !3252
  %3 = icmp eq ptr %2, null, !dbg !3254
  br i1 %3, label %4, label %5, !dbg !3255

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3256
  unreachable, !dbg !3256

5:                                                ; preds = %1
  ret ptr %2, !dbg !3257
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3258 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3246 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3259
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3259
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3261
  %4 = icmp eq ptr %3, null, !dbg !3263
  br i1 %4, label %5, label %6, !dbg !3264

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3265
  unreachable, !dbg !3265

6:                                                ; preds = %2
  ret ptr %3, !dbg !3266
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3267 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3269, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 1, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 1, metadata !3280, metadata !DIExpression()), !dbg !3281
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %2, metadata !2972, metadata !DIExpression()), !dbg !3284
  %3 = icmp eq ptr %2, null, !dbg !3286
  br i1 %3, label %4, label %5, !dbg !3287

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3288
  unreachable, !dbg !3288

5:                                                ; preds = %1
  ret ptr %2, !dbg !3289
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3272 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3271, metadata !DIExpression()), !dbg !3290
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3274, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %0, metadata !3277, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3291
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3294
  %4 = icmp eq ptr %3, null, !dbg !3296
  br i1 %4, label %5, label %6, !dbg !3297

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3298
  unreachable, !dbg !3298

6:                                                ; preds = %2
  ret ptr %3, !dbg !3299
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3300 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3305, metadata !DIExpression()), !dbg !3306
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()), !dbg !3307
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3310
  %4 = icmp eq ptr %3, null, !dbg !3312
  br i1 %4, label %5, label %6, !dbg !3313

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3314
  unreachable, !dbg !3314

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3323
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3325
  ret ptr %3, !dbg !3326
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3010, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i64 %1, metadata !3012, metadata !DIExpression()), !dbg !3336
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3338
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !3339
  %4 = icmp eq ptr %3, null, !dbg !3341
  br i1 %4, label %5, label %6, !dbg !3342

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3343
  unreachable, !dbg !3343

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3315, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3344
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3346
  ret ptr %3, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3352, metadata !DIExpression()), !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3355
  %3 = add nsw i64 %1, 1, !dbg !3356
  call void @llvm.dbg.value(metadata i64 %3, metadata !3010, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i64 %3, metadata !3012, metadata !DIExpression()), !dbg !3359
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3361
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !3362
  %5 = icmp eq ptr %4, null, !dbg !3364
  br i1 %5, label %6, label %7, !dbg !3365

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3366
  unreachable, !dbg !3366

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3354, metadata !DIExpression()), !dbg !3355
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3367
  store i8 0, ptr %8, align 1, !dbg !3368, !tbaa !831
  call void @llvm.dbg.value(metadata ptr %4, metadata !3315, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3322, metadata !DIExpression()), !dbg !3369
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3371
  ret ptr %4, !dbg !3372
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3373 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3375, metadata !DIExpression()), !dbg !3376
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3377
  %3 = add i64 %2, 1, !dbg !3378
  call void @llvm.dbg.value(metadata ptr %0, metadata !3304, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %3, metadata !3305, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %3, metadata !2996, metadata !DIExpression()), !dbg !3381
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3383
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !3384
  %5 = icmp eq ptr %4, null, !dbg !3386
  br i1 %5, label %6, label %7, !dbg !3387

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3388
  unreachable, !dbg !3388

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3315, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata ptr %0, metadata !3321, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %3, metadata !3322, metadata !DIExpression()), !dbg !3389
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3391
  ret ptr %4, !dbg !3392
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3393 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3398, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3395, metadata !DIExpression()), !dbg !3399
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.111, ptr noundef nonnull @.str.2.112, i32 noundef 5) #37, !dbg !3398
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.113, ptr noundef %2) #37, !dbg !3398
  %3 = icmp eq i32 %1, 0, !dbg !3398
  tail call void @llvm.assume(i1 %3), !dbg !3398
  tail call void @abort() #39, !dbg !3400
  unreachable, !dbg !3400
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3401 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3439, metadata !DIExpression()), !dbg !3444
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3440, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3446, metadata !DIExpression()), !dbg !3449
  %3 = load i32, ptr %0, align 8, !dbg !3451, !tbaa !3452
  %4 = and i32 %3, 32, !dbg !3453
  %5 = icmp eq i32 %4, 0, !dbg !3453
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3442, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3454
  %7 = icmp eq i32 %6, 0, !dbg !3455
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3443, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  br i1 %5, label %8, label %18, !dbg !3456

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3458
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3440, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3444
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3459
  %11 = xor i1 %7, true, !dbg !3459
  %12 = sext i1 %11 to i32, !dbg !3459
  br i1 %10, label %21, label %13, !dbg !3459

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3460
  %15 = load i32, ptr %14, align 4, !dbg !3460, !tbaa !822
  %16 = icmp ne i32 %15, 9, !dbg !3461
  %17 = sext i1 %16 to i32, !dbg !3462
  br label %21, !dbg !3462

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3463

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3465
  store i32 0, ptr %20, align 4, !dbg !3467, !tbaa !822
  br label %21, !dbg !3465

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3444
  ret i32 %22, !dbg !3468
}

; Function Attrs: nounwind
declare !dbg !3469 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3511, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3512, metadata !DIExpression()), !dbg !3515
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3513, metadata !DIExpression()), !dbg !3515
  %3 = icmp slt i32 %2, 0, !dbg !3517
  br i1 %3, label %4, label %6, !dbg !3519

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3520
  br label %24, !dbg !3521

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3522
  %8 = icmp eq i32 %7, 0, !dbg !3522
  br i1 %8, label %13, label %9, !dbg !3524

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3525
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3526
  %12 = icmp eq i64 %11, -1, !dbg !3527
  br i1 %12, label %16, label %13, !dbg !3528

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3529
  %15 = icmp eq i32 %14, 0, !dbg !3529
  br i1 %15, label %16, label %18, !dbg !3530

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3512, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3514, metadata !DIExpression()), !dbg !3515
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3514, metadata !DIExpression()), !dbg !3515
  br label %24, !dbg !3532

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3533
  %20 = load i32, ptr %19, align 4, !dbg !3533, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3512, metadata !DIExpression()), !dbg !3515
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3514, metadata !DIExpression()), !dbg !3515
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3531
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3514, metadata !DIExpression()), !dbg !3515
  %22 = icmp eq i32 %20, 0, !dbg !3534
  br i1 %22, label %24, label %23, !dbg !3532

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3536, !tbaa !822
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3514, metadata !DIExpression()), !dbg !3515
  br label %24, !dbg !3538

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3515
  ret i32 %25, !dbg !3539
}

; Function Attrs: nofree nounwind
declare !dbg !3540 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3541 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3542 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3543 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3546 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3584, metadata !DIExpression()), !dbg !3585
  %2 = icmp eq ptr %0, null, !dbg !3586
  br i1 %2, label %6, label %3, !dbg !3588

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3589
  %5 = icmp eq i32 %4, 0, !dbg !3589
  br i1 %5, label %6, label %8, !dbg !3590

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3591
  br label %16, !dbg !3592

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3593, metadata !DIExpression()), !dbg !3598
  %9 = load i32, ptr %0, align 8, !dbg !3600, !tbaa !3452
  %10 = and i32 %9, 256, !dbg !3602
  %11 = icmp eq i32 %10, 0, !dbg !3602
  br i1 %11, label %14, label %12, !dbg !3603

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3604
  br label %14, !dbg !3604

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3605
  br label %16, !dbg !3606

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3585
  ret i32 %17, !dbg !3607
}

; Function Attrs: nofree nounwind
declare !dbg !3608 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3648, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3649, metadata !DIExpression()), !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3650, metadata !DIExpression()), !dbg !3654
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3655
  %5 = load ptr, ptr %4, align 8, !dbg !3655, !tbaa !3656
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3657
  %7 = load ptr, ptr %6, align 8, !dbg !3657, !tbaa !3658
  %8 = icmp eq ptr %5, %7, !dbg !3659
  br i1 %8, label %9, label %27, !dbg !3660

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3661
  %11 = load ptr, ptr %10, align 8, !dbg !3661, !tbaa !1205
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3662
  %13 = load ptr, ptr %12, align 8, !dbg !3662, !tbaa !3663
  %14 = icmp eq ptr %11, %13, !dbg !3664
  br i1 %14, label %15, label %27, !dbg !3665

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3666
  %17 = load ptr, ptr %16, align 8, !dbg !3666, !tbaa !3667
  %18 = icmp eq ptr %17, null, !dbg !3668
  br i1 %18, label %19, label %27, !dbg !3669

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3670
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3671
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3651, metadata !DIExpression()), !dbg !3672
  %22 = icmp eq i64 %21, -1, !dbg !3673
  br i1 %22, label %29, label %23, !dbg !3675

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3676, !tbaa !3452
  %25 = and i32 %24, -17, !dbg !3676
  store i32 %25, ptr %0, align 8, !dbg !3676, !tbaa !3452
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3677
  store i64 %21, ptr %26, align 8, !dbg !3678, !tbaa !3679
  br label %29, !dbg !3680

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3681
  br label %29, !dbg !3682

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3654
  ret i32 %30, !dbg !3683
}

; Function Attrs: nofree nounwind
declare !dbg !3684 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3692, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3694, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3695, metadata !DIExpression()), !dbg !3697
  %5 = icmp eq ptr %1, null, !dbg !3698
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3700
  %7 = select i1 %5, ptr @.str.124, ptr %1, !dbg !3700
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3694, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3693, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3692, metadata !DIExpression()), !dbg !3697
  %9 = icmp eq ptr %3, null, !dbg !3701
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3703
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3695, metadata !DIExpression()), !dbg !3697
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3704
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3696, metadata !DIExpression()), !dbg !3697
  %12 = icmp ult i64 %11, -3, !dbg !3705
  br i1 %12, label %13, label %17, !dbg !3707

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3708
  %15 = icmp eq i32 %14, 0, !dbg !3708
  br i1 %15, label %16, label %29, !dbg !3709

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata ptr %10, metadata !3717, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i32 0, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 8, metadata !3721, metadata !DIExpression()), !dbg !3722
  store i64 0, ptr %10, align 1, !dbg !3724
  br label %29, !dbg !3725

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3726
  br i1 %18, label %19, label %20, !dbg !3728

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3729
  unreachable, !dbg !3729

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3730

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3732
  br i1 %23, label %29, label %24, !dbg !3733

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3734
  br i1 %25, label %29, label %26, !dbg !3737

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3738, !tbaa !831
  %28 = zext i8 %27 to i32, !dbg !3739
  store i32 %28, ptr %6, align 4, !dbg !3740, !tbaa !822
  br label %29, !dbg !3741

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3697
  ret i64 %30, !dbg !3742
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3743 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3752, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3753, metadata !DIExpression()), !dbg !3755
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3756
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3754, metadata !DIExpression()), !dbg !3755
  br i1 %5, label %6, label %8, !dbg !3758

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3759
  store i32 12, ptr %7, align 4, !dbg !3761, !tbaa !822
  br label %12, !dbg !3762

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3756
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %0, metadata !3763, metadata !DIExpression()), !dbg !3767
  call void @llvm.dbg.value(metadata i64 %9, metadata !3766, metadata !DIExpression()), !dbg !3767
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3769
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3770
  br label %12, !dbg !3771

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3755
  ret ptr %13, !dbg !3772
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3773 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3782
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3778, metadata !DIExpression(), metadata !3782, metadata ptr %2, metadata !DIExpression()), !dbg !3783
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3777, metadata !DIExpression()), !dbg !3783
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3784
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3785
  %4 = icmp eq i32 %3, 0, !dbg !3785
  br i1 %4, label %5, label %12, !dbg !3787

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3788, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata ptr @.str.129, metadata !3791, metadata !DIExpression()), !dbg !3792
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.129, i64 2), !dbg !3795
  %7 = icmp eq i32 %6, 0, !dbg !3796
  br i1 %7, label %11, label %8, !dbg !3797

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3788, metadata !DIExpression()), !dbg !3798
  call void @llvm.dbg.value(metadata ptr @.str.1.130, metadata !3791, metadata !DIExpression()), !dbg !3798
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.130, i64 6), !dbg !3800
  %10 = icmp eq i32 %9, 0, !dbg !3801
  br i1 %10, label %11, label %12, !dbg !3802

11:                                               ; preds = %8, %5
  br label %12, !dbg !3803

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3783
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3804
  ret i1 %13, !dbg !3804
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3805 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3810, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3811, metadata !DIExpression()), !dbg !3812
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3813
  ret i32 %4, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3819, metadata !DIExpression()), !dbg !3820
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3821
  ret ptr %2, !dbg !3822
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3827
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3828
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3826, metadata !DIExpression()), !dbg !3827
  ret ptr %2, !dbg !3829
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3830 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3832, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3833, metadata !DIExpression()), !dbg !3839
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3834, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i32 %0, metadata !3825, metadata !DIExpression()), !dbg !3840
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3842
  call void @llvm.dbg.value(metadata ptr %4, metadata !3826, metadata !DIExpression()), !dbg !3840
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3835, metadata !DIExpression()), !dbg !3839
  %5 = icmp eq ptr %4, null, !dbg !3843
  br i1 %5, label %6, label %9, !dbg !3844

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3845
  br i1 %7, label %19, label %8, !dbg !3848

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3849, !tbaa !831
  br label %19, !dbg !3850

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3851
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3836, metadata !DIExpression()), !dbg !3852
  %11 = icmp ult i64 %10, %2, !dbg !3853
  br i1 %11, label %12, label %14, !dbg !3855

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %1, metadata !3858, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata ptr %4, metadata !3861, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i64 %13, metadata !3862, metadata !DIExpression()), !dbg !3863
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3865
  br label %19, !dbg !3866

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3867
  br i1 %15, label %19, label %16, !dbg !3870

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3871
  call void @llvm.dbg.value(metadata ptr %1, metadata !3858, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata ptr %4, metadata !3861, metadata !DIExpression()), !dbg !3873
  call void @llvm.dbg.value(metadata i64 %17, metadata !3862, metadata !DIExpression()), !dbg !3873
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3875
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3876
  store i8 0, ptr %18, align 1, !dbg !3877, !tbaa !831
  br label %19, !dbg !3878

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3879
  ret i32 %20, !dbg !3880
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

!llvm.dbg.cu = !{!82, !316, !320, !335, !647, !681, !394, !415, !429, !480, !683, !639, !689, !724, !726, !728, !730, !732, !663, !734, !736, !738, !740}
!llvm.ident = !{!742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742, !742}
!llvm.module.flags = !{!743, !744, !745, !746, !747, !748, !749, !750}

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
!334 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !335, file: !336, line: 66, type: !386, isLocal: false, isDefinition: true)
!335 = distinct !DICompileUnit(language: DW_LANG_C11, file: !336, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !337, globals: !338, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!337 = !{!115, !121}
!338 = !{!339, !341, !365, !367, !369, !371, !333, !373, !375, !377, !379, !384}
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !336, line: 272, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "old_file_name", scope: !343, file: !336, line: 304, type: !80, isLocal: true, isDefinition: true)
!343 = distinct !DISubprogram(name: "verror_at_line", scope: !336, file: !336, line: 298, type: !344, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !358)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !116, !116, !80, !86, !80, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !347, line: 52, baseType: !348)
!347 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !349, line: 12, baseType: !350)
!349 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !336, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !352)
!352 = !{!353, !354, !355, !356, !357}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !351, file: !336, baseType: !115, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !351, file: !336, baseType: !115, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !351, file: !336, baseType: !115, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !351, file: !336, baseType: !116, size: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !351, file: !336, baseType: !116, size: 32, offset: 224)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DILocalVariable(name: "status", arg: 1, scope: !343, file: !336, line: 298, type: !116)
!360 = !DILocalVariable(name: "errnum", arg: 2, scope: !343, file: !336, line: 298, type: !116)
!361 = !DILocalVariable(name: "file_name", arg: 3, scope: !343, file: !336, line: 298, type: !80)
!362 = !DILocalVariable(name: "line_number", arg: 4, scope: !343, file: !336, line: 298, type: !86)
!363 = !DILocalVariable(name: "message", arg: 5, scope: !343, file: !336, line: 298, type: !80)
!364 = !DILocalVariable(name: "args", arg: 6, scope: !343, file: !336, line: 298, type: !346)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "old_line_number", scope: !343, file: !336, line: 305, type: !86, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !336, line: 338, type: !129, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !164, isLocal: true, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !139, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(name: "error_message_count", scope: !335, file: !336, line: 69, type: !86, isLocal: false, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !335, file: !336, line: 295, type: !116, isLocal: false, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !159, isLocal: true, isDefinition: true)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 21)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !336, line: 214, type: !19, isLocal: true, isDefinition: true)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{null}
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !391, line: 60, type: !139, isLocal: true, isDefinition: true)
!391 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(name: "long_options", scope: !394, file: !391, line: 34, type: !403, isLocal: true, isDefinition: true)
!394 = distinct !DICompileUnit(language: DW_LANG_C11, file: !391, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, globals: !396, splitDebugInlining: false, nameTableKind: None)
!395 = !{!115}
!396 = !{!389, !397, !399, !401, !392}
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !391, line: 112, type: !34, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !391, line: 36, type: !19, isLocal: true, isDefinition: true)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !391, line: 37, type: !164, isLocal: true, isDefinition: true)
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
!415 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !417, globals: !418, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!417 = !{!115, !260}
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
!429 = distinct !DICompileUnit(language: DW_LANG_C11, file: !426, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !430, splitDebugInlining: false, nameTableKind: None)
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
!479 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !480, file: !456, line: 76, type: !554, isLocal: false, isDefinition: true)
!480 = distinct !DICompileUnit(language: DW_LANG_C11, file: !456, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !481, retainedTypes: !489, globals: !490, splitDebugInlining: false, nameTableKind: None)
!481 = !{!482, !484, !99}
!482 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !483, line: 42, baseType: !86, size: 32, elements: !87)
!483 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!484 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !483, line: 254, baseType: !86, size: 32, elements: !485)
!485 = !{!486, !487, !488}
!486 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!487 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!488 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!489 = !{!115, !116, !117, !118}
!490 = !{!454, !457, !459, !464, !466, !468, !470, !472, !474, !476, !478, !491, !495, !505, !507, !512, !514, !516, !518, !520, !543, !550, !552}
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !480, file: !456, line: 92, type: !493, isLocal: false, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !494, size: 320, elements: !40)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !482)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !480, file: !456, line: 1040, type: !497, isLocal: false, isDefinition: true)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !456, line: 56, size: 448, elements: !498)
!498 = !{!499, !500, !501, !503, !504}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !497, file: !456, line: 59, baseType: !482, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !497, file: !456, line: 62, baseType: !116, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !497, file: !456, line: 66, baseType: !502, size: 256, offset: 64)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, elements: !165)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !497, file: !456, line: 69, baseType: !80, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !497, file: !456, line: 72, baseType: !80, size: 64, offset: 384)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !480, file: !456, line: 107, type: !497, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "slot0", scope: !480, file: !456, line: 831, type: !509, isLocal: true, isDefinition: true)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 256)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !456, line: 321, type: !139, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !456, line: 357, type: !139, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !456, line: 358, type: !139, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !456, line: 199, type: !159, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "quote", scope: !522, file: !456, line: 228, type: !541, isLocal: true, isDefinition: true)
!522 = distinct !DISubprogram(name: "gettext_quote", scope: !456, file: !456, line: 197, type: !523, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !525)
!523 = !DISubroutineType(types: !524)
!524 = !{!80, !80, !482}
!525 = !{!526, !527, !528, !529, !530}
!526 = !DILocalVariable(name: "msgid", arg: 1, scope: !522, file: !456, line: 197, type: !80)
!527 = !DILocalVariable(name: "s", arg: 2, scope: !522, file: !456, line: 197, type: !482)
!528 = !DILocalVariable(name: "translation", scope: !522, file: !456, line: 199, type: !80)
!529 = !DILocalVariable(name: "w", scope: !522, file: !456, line: 229, type: !436)
!530 = !DILocalVariable(name: "mbs", scope: !522, file: !456, line: 230, type: !531)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !442, line: 6, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !444, line: 21, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 13, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !533, file: !444, line: 15, baseType: !116, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !533, file: !444, line: 20, baseType: !537, size: 32, offset: 32)
!537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !533, file: !444, line: 16, size: 32, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !537, file: !444, line: 18, baseType: !86, size: 32)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !537, file: !444, line: 19, baseType: !129, size: 32)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !542)
!542 = !{!141, !131}
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "slotvec", scope: !480, file: !456, line: 834, type: !545, isLocal: true, isDefinition: true)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !456, line: 823, size: 128, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !546, file: !456, line: 825, baseType: !118, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !546, file: !456, line: 826, baseType: !260, size: 64, offset: 64)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "nslots", scope: !480, file: !456, line: 832, type: !116, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "slotvec0", scope: !480, file: !456, line: 833, type: !546, isLocal: true, isDefinition: true)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 704, elements: !556)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!556 = !{!557}
!557 = !DISubrange(count: 11)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !560, line: 67, type: !229, isLocal: true, isDefinition: true)
!560 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !560, line: 69, type: !159, isLocal: true, isDefinition: true)
!563 = !DIGlobalVariableExpression(var: !564, expr: !DIExpression())
!564 = distinct !DIGlobalVariable(scope: null, file: !560, line: 83, type: !159, isLocal: true, isDefinition: true)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(scope: null, file: !560, line: 83, type: !129, isLocal: true, isDefinition: true)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !560, line: 85, type: !139, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !560, line: 88, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 171)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !560, line: 88, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 34)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !560, line: 105, type: !56, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !560, line: 109, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 23)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !560, line: 113, type: !71, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !560, line: 120, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 32)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !560, line: 127, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 36)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !560, line: 134, type: !9, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !560, line: 142, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 44)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !560, line: 150, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 48)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !560, line: 159, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 52)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !560, line: 170, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 60)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !560, line: 248, type: !302, isLocal: true, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !560, line: 248, type: !205, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !560, line: 254, type: !302, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !560, line: 254, type: !49, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !560, line: 254, type: !9, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !560, line: 259, type: !3, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !560, line: 259, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 29)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !639, file: !640, line: 26, type: !642, isLocal: false, isDefinition: true)
!639 = distinct !DICompileUnit(language: DW_LANG_C11, file: !640, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !641, splitDebugInlining: false, nameTableKind: None)
!640 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!641 = !{!637}
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !643)
!643 = !{!644}
!644 = !DISubrange(count: 47)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(name: "exit_failure", scope: !647, file: !648, line: 24, type: !650, isLocal: false, isDefinition: true)
!647 = distinct !DICompileUnit(language: DW_LANG_C11, file: !648, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !649, splitDebugInlining: false, nameTableKind: None)
!648 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!649 = !{!645}
!650 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !653, line: 34, type: !148, isLocal: true, isDefinition: true)
!653 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !653, line: 34, type: !159, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !653, line: 34, type: !66, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !660, line: 108, type: !34, isLocal: true, isDefinition: true)
!660 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(name: "internal_state", scope: !663, file: !660, line: 97, type: !666, isLocal: true, isDefinition: true)
!663 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !664, globals: !665, splitDebugInlining: false, nameTableKind: None)
!664 = !{!115, !118, !121}
!665 = !{!658, !661}
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !442, line: 6, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !444, line: 21, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !444, line: 13, size: 64, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !668, file: !444, line: 15, baseType: !116, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !668, file: !444, line: 20, baseType: !672, size: 32, offset: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !444, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !672, file: !444, line: 18, baseType: !86, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !672, file: !444, line: 19, baseType: !129, size: 32)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !678, line: 35, type: !139, isLocal: true, isDefinition: true)
!678 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !678, line: 35, type: !134, isLocal: true, isDefinition: true)
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !560, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !684, retainedTypes: !395, globals: !688, splitDebugInlining: false, nameTableKind: None)
!684 = !{!685}
!685 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !560, line: 40, baseType: !86, size: 32, elements: !686)
!686 = !{!687}
!687 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!688 = !{!558, !561, !563, !565, !567, !569, !574, !579, !581, !586, !588, !593, !598, !600, !605, !610, !615, !620, !622, !624, !626, !628, !630, !632}
!689 = distinct !DICompileUnit(language: DW_LANG_C11, file: !690, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !691, retainedTypes: !723, splitDebugInlining: false, nameTableKind: None)
!690 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!691 = !{!692, !704}
!692 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !693, file: !690, line: 188, baseType: !86, size: 32, elements: !702)
!693 = distinct !DISubprogram(name: "x2nrealloc", scope: !690, file: !690, line: 176, type: !694, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !697)
!694 = !DISubroutineType(types: !695)
!695 = !{!115, !115, !696, !118}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!697 = !{!698, !699, !700, !701}
!698 = !DILocalVariable(name: "p", arg: 1, scope: !693, file: !690, line: 176, type: !115)
!699 = !DILocalVariable(name: "pn", arg: 2, scope: !693, file: !690, line: 176, type: !696)
!700 = !DILocalVariable(name: "s", arg: 3, scope: !693, file: !690, line: 176, type: !118)
!701 = !DILocalVariable(name: "n", scope: !693, file: !690, line: 178, type: !118)
!702 = !{!703}
!703 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!704 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !705, file: !690, line: 228, baseType: !86, size: 32, elements: !702)
!705 = distinct !DISubprogram(name: "xpalloc", scope: !690, file: !690, line: 223, type: !706, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !713)
!706 = !DISubroutineType(types: !707)
!707 = !{!115, !115, !708, !709, !711, !709}
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !710, line: 130, baseType: !711)
!710 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !712, line: 18, baseType: !281)
!712 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!713 = !{!714, !715, !716, !717, !718, !719, !720, !721, !722}
!714 = !DILocalVariable(name: "pa", arg: 1, scope: !705, file: !690, line: 223, type: !115)
!715 = !DILocalVariable(name: "pn", arg: 2, scope: !705, file: !690, line: 223, type: !708)
!716 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !705, file: !690, line: 223, type: !709)
!717 = !DILocalVariable(name: "n_max", arg: 4, scope: !705, file: !690, line: 223, type: !711)
!718 = !DILocalVariable(name: "s", arg: 5, scope: !705, file: !690, line: 223, type: !709)
!719 = !DILocalVariable(name: "n0", scope: !705, file: !690, line: 230, type: !709)
!720 = !DILocalVariable(name: "n", scope: !705, file: !690, line: 237, type: !709)
!721 = !DILocalVariable(name: "nbytes", scope: !705, file: !690, line: 248, type: !709)
!722 = !DILocalVariable(name: "adjusted_nbytes", scope: !705, file: !690, line: 252, type: !709)
!723 = !{!260, !115}
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !725, splitDebugInlining: false, nameTableKind: None)
!725 = !{!651, !654, !656}
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !678, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !737, splitDebugInlining: false, nameTableKind: None)
!737 = !{!676, !679}
!738 = distinct !DICompileUnit(language: DW_LANG_C11, file: !739, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!739 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!740 = distinct !DICompileUnit(language: DW_LANG_C11, file: !741, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !395, splitDebugInlining: false, nameTableKind: None)
!741 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!742 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!743 = !{i32 7, !"Dwarf Version", i32 5}
!744 = !{i32 2, !"Debug Info Version", i32 3}
!745 = !{i32 1, !"wchar_size", i32 4}
!746 = !{i32 8, !"PIC Level", i32 2}
!747 = !{i32 7, !"PIE Level", i32 2}
!748 = !{i32 7, !"uwtable", i32 2}
!749 = !{i32 7, !"frame-pointer", i32 1}
!750 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!751 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !752, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !116}
!754 = !{!755}
!755 = !DILocalVariable(name: "status", arg: 1, scope: !751, file: !2, line: 37, type: !116)
!756 = !DILocation(line: 0, scope: !751)
!757 = !DILocation(line: 39, column: 14, scope: !758)
!758 = distinct !DILexicalBlock(scope: !751, file: !2, line: 39, column: 7)
!759 = !DILocation(line: 39, column: 7, scope: !751)
!760 = !DILocation(line: 40, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !2, line: 40, column: 5)
!762 = !{!763, !763, i64 0}
!763 = !{!"any pointer", !764, i64 0}
!764 = !{!"omnipotent char", !765, i64 0}
!765 = !{!"Simple C/C++ TBAA"}
!766 = !DILocation(line: 43, column: 7, scope: !767)
!767 = distinct !DILexicalBlock(scope: !758, file: !2, line: 42, column: 5)
!768 = !DILocation(line: 46, column: 7, scope: !767)
!769 = !DILocation(line: 49, column: 7, scope: !767)
!770 = !DILocation(line: 50, column: 7, scope: !767)
!771 = !DILocalVariable(name: "program", arg: 1, scope: !772, file: !77, line: 836, type: !80)
!772 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !773, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !80}
!775 = !{!771, !776, !783, !784, !786, !787}
!776 = !DILocalVariable(name: "infomap", scope: !772, file: !77, line: 838, type: !777)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !778, size: 896, elements: !160)
!778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !772, file: !77, line: 838, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !779, file: !77, line: 838, baseType: !80, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !779, file: !77, line: 838, baseType: !80, size: 64, offset: 64)
!783 = !DILocalVariable(name: "node", scope: !772, file: !77, line: 848, type: !80)
!784 = !DILocalVariable(name: "map_prog", scope: !772, file: !77, line: 849, type: !785)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!786 = !DILocalVariable(name: "lc_messages", scope: !772, file: !77, line: 861, type: !80)
!787 = !DILocalVariable(name: "url_program", scope: !772, file: !77, line: 874, type: !80)
!788 = !DILocation(line: 0, scope: !772, inlinedAt: !789)
!789 = distinct !DILocation(line: 51, column: 7, scope: !767)
!790 = !{}
!791 = !DILocation(line: 857, column: 3, scope: !772, inlinedAt: !789)
!792 = !DILocation(line: 861, column: 29, scope: !772, inlinedAt: !789)
!793 = !DILocation(line: 862, column: 7, scope: !794, inlinedAt: !789)
!794 = distinct !DILexicalBlock(scope: !772, file: !77, line: 862, column: 7)
!795 = !DILocation(line: 862, column: 19, scope: !794, inlinedAt: !789)
!796 = !DILocation(line: 862, column: 22, scope: !794, inlinedAt: !789)
!797 = !DILocation(line: 862, column: 7, scope: !772, inlinedAt: !789)
!798 = !DILocation(line: 868, column: 7, scope: !799, inlinedAt: !789)
!799 = distinct !DILexicalBlock(scope: !794, file: !77, line: 863, column: 5)
!800 = !DILocation(line: 870, column: 5, scope: !799, inlinedAt: !789)
!801 = !DILocation(line: 875, column: 3, scope: !772, inlinedAt: !789)
!802 = !DILocation(line: 877, column: 3, scope: !772, inlinedAt: !789)
!803 = !DILocation(line: 53, column: 3, scope: !751)
!804 = !DISubprogram(name: "dcgettext", scope: !805, file: !805, line: 51, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!805 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!806 = !DISubroutineType(types: !807)
!807 = !{!260, !80, !80, !116}
!808 = !DISubprogram(name: "__fprintf_chk", scope: !809, file: !809, line: 93, type: !810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!809 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!810 = !DISubroutineType(types: !811)
!811 = !{!116, !812, !116, !813, null}
!812 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!813 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!814 = !DISubprogram(name: "__printf_chk", scope: !809, file: !809, line: 95, type: !815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!815 = !DISubroutineType(types: !816)
!816 = !{!116, !116, !813, null}
!817 = !DISubprogram(name: "fputs_unlocked", scope: !347, file: !347, line: 691, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!818 = !DISubroutineType(types: !819)
!819 = !{!116, !813, !812}
!820 = !DILocation(line: 0, scope: !76)
!821 = !DILocation(line: 581, column: 7, scope: !237)
!822 = !{!823, !823, i64 0}
!823 = !{!"int", !764, i64 0}
!824 = !DILocation(line: 581, column: 19, scope: !237)
!825 = !DILocation(line: 581, column: 7, scope: !76)
!826 = !DILocation(line: 585, column: 26, scope: !236)
!827 = !DILocation(line: 0, scope: !236)
!828 = !DILocation(line: 586, column: 23, scope: !236)
!829 = !DILocation(line: 586, column: 28, scope: !236)
!830 = !DILocation(line: 586, column: 32, scope: !236)
!831 = !{!764, !764, i64 0}
!832 = !DILocation(line: 586, column: 38, scope: !236)
!833 = !DILocalVariable(name: "__s1", arg: 1, scope: !834, file: !835, line: 1359, type: !80)
!834 = distinct !DISubprogram(name: "streq", scope: !835, file: !835, line: 1359, type: !836, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !838)
!835 = !DIFile(filename: "./lib/string.h", directory: "/src")
!836 = !DISubroutineType(types: !837)
!837 = !{!239, !80, !80}
!838 = !{!833, !839}
!839 = !DILocalVariable(name: "__s2", arg: 2, scope: !834, file: !835, line: 1359, type: !80)
!840 = !DILocation(line: 0, scope: !834, inlinedAt: !841)
!841 = distinct !DILocation(line: 586, column: 41, scope: !236)
!842 = !DILocation(line: 1361, column: 11, scope: !834, inlinedAt: !841)
!843 = !DILocation(line: 1361, column: 10, scope: !834, inlinedAt: !841)
!844 = !DILocation(line: 586, column: 19, scope: !236)
!845 = !DILocation(line: 587, column: 5, scope: !236)
!846 = !DILocation(line: 588, column: 7, scope: !847)
!847 = distinct !DILexicalBlock(scope: !76, file: !77, line: 588, column: 7)
!848 = !DILocation(line: 588, column: 7, scope: !76)
!849 = !DILocation(line: 590, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !77, line: 589, column: 5)
!851 = !DILocation(line: 591, column: 7, scope: !850)
!852 = !DILocation(line: 595, column: 37, scope: !76)
!853 = !DILocation(line: 595, column: 35, scope: !76)
!854 = !DILocation(line: 596, column: 29, scope: !76)
!855 = !DILocation(line: 597, column: 8, scope: !245)
!856 = !DILocation(line: 597, column: 7, scope: !76)
!857 = !DILocation(line: 604, column: 24, scope: !244)
!858 = !DILocation(line: 604, column: 12, scope: !245)
!859 = !DILocation(line: 0, scope: !243)
!860 = !DILocation(line: 610, column: 16, scope: !243)
!861 = !DILocation(line: 610, column: 7, scope: !243)
!862 = !DILocation(line: 611, column: 21, scope: !243)
!863 = !{!864, !864, i64 0}
!864 = !{!"short", !764, i64 0}
!865 = !DILocation(line: 611, column: 19, scope: !243)
!866 = !DILocation(line: 611, column: 16, scope: !243)
!867 = !DILocation(line: 610, column: 30, scope: !243)
!868 = distinct !{!868, !861, !862, !869}
!869 = !{!"llvm.loop.mustprogress"}
!870 = !DILocation(line: 612, column: 18, scope: !871)
!871 = distinct !DILexicalBlock(scope: !243, file: !77, line: 612, column: 11)
!872 = !DILocation(line: 612, column: 11, scope: !243)
!873 = !DILocation(line: 620, column: 23, scope: !76)
!874 = !DILocation(line: 625, column: 39, scope: !76)
!875 = !DILocation(line: 626, column: 3, scope: !76)
!876 = !DILocation(line: 626, column: 10, scope: !76)
!877 = !DILocation(line: 626, column: 21, scope: !76)
!878 = !DILocation(line: 628, column: 44, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !77, line: 628, column: 11)
!880 = distinct !DILexicalBlock(scope: !76, file: !77, line: 627, column: 5)
!881 = !DILocation(line: 628, column: 32, scope: !879)
!882 = !DILocation(line: 628, column: 49, scope: !879)
!883 = !DILocation(line: 628, column: 11, scope: !880)
!884 = !DILocation(line: 630, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !880, file: !77, line: 630, column: 11)
!886 = !DILocation(line: 630, column: 11, scope: !880)
!887 = !DILocation(line: 632, column: 26, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !77, line: 632, column: 15)
!889 = distinct !DILexicalBlock(scope: !885, file: !77, line: 631, column: 9)
!890 = !DILocation(line: 632, column: 34, scope: !888)
!891 = !DILocation(line: 632, column: 37, scope: !888)
!892 = !DILocation(line: 632, column: 15, scope: !889)
!893 = !DILocation(line: 640, column: 16, scope: !880)
!894 = distinct !{!894, !875, !895, !869}
!895 = !DILocation(line: 641, column: 5, scope: !76)
!896 = !DILocation(line: 644, column: 3, scope: !76)
!897 = !DILocation(line: 0, scope: !834, inlinedAt: !898)
!898 = distinct !DILocation(line: 648, column: 31, scope: !76)
!899 = !DILocation(line: 0, scope: !834, inlinedAt: !900)
!900 = distinct !DILocation(line: 649, column: 31, scope: !76)
!901 = !DILocation(line: 0, scope: !834, inlinedAt: !902)
!902 = distinct !DILocation(line: 650, column: 31, scope: !76)
!903 = !DILocation(line: 0, scope: !834, inlinedAt: !904)
!904 = distinct !DILocation(line: 651, column: 31, scope: !76)
!905 = !DILocation(line: 0, scope: !834, inlinedAt: !906)
!906 = distinct !DILocation(line: 652, column: 31, scope: !76)
!907 = !DILocation(line: 0, scope: !834, inlinedAt: !908)
!908 = distinct !DILocation(line: 653, column: 31, scope: !76)
!909 = !DILocation(line: 0, scope: !834, inlinedAt: !910)
!910 = distinct !DILocation(line: 654, column: 31, scope: !76)
!911 = !DILocation(line: 0, scope: !834, inlinedAt: !912)
!912 = distinct !DILocation(line: 655, column: 31, scope: !76)
!913 = !DILocation(line: 0, scope: !834, inlinedAt: !914)
!914 = distinct !DILocation(line: 656, column: 31, scope: !76)
!915 = !DILocation(line: 0, scope: !834, inlinedAt: !916)
!916 = distinct !DILocation(line: 657, column: 31, scope: !76)
!917 = !DILocation(line: 663, column: 7, scope: !918)
!918 = distinct !DILexicalBlock(scope: !76, file: !77, line: 663, column: 7)
!919 = !DILocation(line: 664, column: 7, scope: !918)
!920 = !DILocation(line: 664, column: 10, scope: !918)
!921 = !DILocation(line: 663, column: 7, scope: !76)
!922 = !DILocation(line: 669, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !77, line: 665, column: 5)
!924 = !DILocation(line: 671, column: 5, scope: !923)
!925 = !DILocation(line: 676, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !918, file: !77, line: 673, column: 5)
!927 = !DILocation(line: 679, column: 3, scope: !76)
!928 = !DILocation(line: 683, column: 3, scope: !76)
!929 = !DILocation(line: 686, column: 3, scope: !76)
!930 = !DILocation(line: 688, column: 3, scope: !76)
!931 = !DILocation(line: 691, column: 3, scope: !76)
!932 = !DILocation(line: 695, column: 3, scope: !76)
!933 = !DILocation(line: 696, column: 1, scope: !76)
!934 = !DISubprogram(name: "setlocale", scope: !935, file: !935, line: 122, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!936 = !DISubroutineType(types: !937)
!937 = !{!260, !116, !80}
!938 = !DISubprogram(name: "strncmp", scope: !939, file: !939, line: 159, type: !940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!940 = !DISubroutineType(types: !941)
!941 = !{!116, !80, !80, !118}
!942 = !DISubprogram(name: "exit", scope: !943, file: !943, line: 624, type: !752, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!943 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!944 = !DISubprogram(name: "getenv", scope: !943, file: !943, line: 641, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{!260, !80}
!947 = !DISubprogram(name: "strcmp", scope: !939, file: !939, line: 156, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{!116, !80, !80}
!950 = !DISubprogram(name: "strspn", scope: !939, file: !939, line: 297, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!951 = !DISubroutineType(types: !952)
!952 = !{!120, !80, !80}
!953 = !DISubprogram(name: "strchr", scope: !939, file: !939, line: 246, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubroutineType(types: !955)
!955 = !{!260, !80, !116}
!956 = !DISubprogram(name: "__ctype_b_loc", scope: !100, file: !100, line: 79, type: !957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!957 = !DISubroutineType(types: !958)
!958 = !{!959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!962 = !DISubprogram(name: "strcspn", scope: !939, file: !939, line: 293, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!963 = !DISubprogram(name: "fwrite_unlocked", scope: !347, file: !347, line: 704, type: !964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!964 = !DISubroutineType(types: !965)
!965 = !{!118, !966, !118, !118, !812}
!966 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!969 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 57, type: !970, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !973)
!970 = !DISubroutineType(types: !971)
!971 = !{!116, !116, !972}
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!973 = !{!974, !975}
!974 = !DILocalVariable(name: "argc", arg: 1, scope: !969, file: !2, line: 57, type: !116)
!975 = !DILocalVariable(name: "argv", arg: 2, scope: !969, file: !2, line: 57, type: !972)
!976 = !DILocation(line: 0, scope: !969)
!977 = !DILocation(line: 60, column: 21, scope: !969)
!978 = !DILocation(line: 60, column: 3, scope: !969)
!979 = !DILocation(line: 61, column: 3, scope: !969)
!980 = !DILocation(line: 62, column: 3, scope: !969)
!981 = !DILocation(line: 63, column: 3, scope: !969)
!982 = !DILocation(line: 65, column: 3, scope: !969)
!983 = !DILocation(line: 68, column: 36, scope: !969)
!984 = !DILocation(line: 68, column: 58, scope: !969)
!985 = !DILocation(line: 67, column: 3, scope: !969)
!986 = !DILocation(line: 71, column: 14, scope: !987)
!987 = distinct !DILexicalBlock(scope: !969, file: !2, line: 71, column: 7)
!988 = !DILocation(line: 71, column: 21, scope: !987)
!989 = !DILocation(line: 71, column: 12, scope: !987)
!990 = !DILocation(line: 71, column: 7, scope: !969)
!991 = !DILocation(line: 73, column: 16, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !2, line: 73, column: 11)
!993 = distinct !DILexicalBlock(scope: !987, file: !2, line: 72, column: 5)
!994 = !DILocation(line: 73, column: 11, scope: !993)
!995 = !DILocation(line: 74, column: 9, scope: !992)
!996 = !DILocation(line: 76, column: 9, scope: !992)
!997 = !DILocation(line: 77, column: 7, scope: !993)
!998 = !DILocation(line: 80, column: 18, scope: !999)
!999 = distinct !DILexicalBlock(scope: !969, file: !2, line: 80, column: 7)
!1000 = !DILocation(line: 80, column: 7, scope: !969)
!1001 = !DILocation(line: 82, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !2, line: 81, column: 5)
!1003 = !DILocation(line: 83, column: 7, scope: !1002)
!1004 = !DILocation(line: 86, column: 13, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !969, file: !2, line: 86, column: 7)
!1006 = !DILocation(line: 86, column: 27, scope: !1005)
!1007 = !DILocation(line: 86, column: 7, scope: !1005)
!1008 = !DILocation(line: 86, column: 45, scope: !1005)
!1009 = !DILocation(line: 86, column: 7, scope: !969)
!1010 = !DILocation(line: 87, column: 5, scope: !1005)
!1011 = !DILocation(line: 90, column: 3, scope: !969)
!1012 = !DISubprogram(name: "bindtextdomain", scope: !805, file: !805, line: 86, type: !1013, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!260, !80, !80}
!1015 = !DISubprogram(name: "textdomain", scope: !805, file: !805, line: 82, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1016 = !DISubprogram(name: "atexit", scope: !943, file: !943, line: 602, type: !1017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!116, !386}
!1019 = !DISubprogram(name: "link", scope: !1020, file: !1020, line: 819, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1021 = !DISubprogram(name: "__errno_location", scope: !1022, file: !1022, line: 37, type: !1023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1022 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!411}
!1025 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !321, file: !321, line: 50, type: !773, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1026)
!1026 = !{!1027}
!1027 = !DILocalVariable(name: "file", arg: 1, scope: !1025, file: !321, line: 50, type: !80)
!1028 = !DILocation(line: 0, scope: !1025)
!1029 = !DILocation(line: 52, column: 13, scope: !1025)
!1030 = !DILocation(line: 53, column: 1, scope: !1025)
!1031 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !321, file: !321, line: 87, type: !1032, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1034)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{null, !239}
!1034 = !{!1035}
!1035 = !DILocalVariable(name: "ignore", arg: 1, scope: !1031, file: !321, line: 87, type: !239)
!1036 = !DILocation(line: 0, scope: !1031)
!1037 = !DILocation(line: 89, column: 16, scope: !1031)
!1038 = !{!1039, !1039, i64 0}
!1039 = !{!"_Bool", !764, i64 0}
!1040 = !DILocation(line: 90, column: 1, scope: !1031)
!1041 = distinct !DISubprogram(name: "close_stdout", scope: !321, file: !321, line: 116, type: !387, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1042)
!1042 = !{!1043}
!1043 = !DILocalVariable(name: "write_error", scope: !1044, file: !321, line: 121, type: !80)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !321, line: 120, column: 5)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !321, line: 118, column: 7)
!1046 = !DILocation(line: 118, column: 21, scope: !1045)
!1047 = !DILocation(line: 118, column: 7, scope: !1045)
!1048 = !DILocation(line: 118, column: 29, scope: !1045)
!1049 = !DILocation(line: 119, column: 7, scope: !1045)
!1050 = !DILocation(line: 119, column: 12, scope: !1045)
!1051 = !{i8 0, i8 2}
!1052 = !DILocation(line: 119, column: 25, scope: !1045)
!1053 = !DILocation(line: 119, column: 28, scope: !1045)
!1054 = !DILocation(line: 119, column: 34, scope: !1045)
!1055 = !DILocation(line: 118, column: 7, scope: !1041)
!1056 = !DILocation(line: 121, column: 33, scope: !1044)
!1057 = !DILocation(line: 0, scope: !1044)
!1058 = !DILocation(line: 122, column: 11, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1044, file: !321, line: 122, column: 11)
!1060 = !DILocation(line: 0, scope: !1059)
!1061 = !DILocation(line: 122, column: 11, scope: !1044)
!1062 = !DILocation(line: 123, column: 9, scope: !1059)
!1063 = !DILocation(line: 126, column: 9, scope: !1059)
!1064 = !DILocation(line: 128, column: 14, scope: !1044)
!1065 = !DILocation(line: 128, column: 7, scope: !1044)
!1066 = !DILocation(line: 133, column: 42, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1041, file: !321, line: 133, column: 7)
!1068 = !DILocation(line: 133, column: 28, scope: !1067)
!1069 = !DILocation(line: 133, column: 50, scope: !1067)
!1070 = !DILocation(line: 133, column: 7, scope: !1041)
!1071 = !DILocation(line: 134, column: 12, scope: !1067)
!1072 = !DILocation(line: 134, column: 5, scope: !1067)
!1073 = !DILocation(line: 135, column: 1, scope: !1041)
!1074 = !DISubprogram(name: "_exit", scope: !1020, file: !1020, line: 624, type: !752, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1075 = distinct !DISubprogram(name: "verror", scope: !336, file: !336, line: 251, type: !1076, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !116, !116, !80, !346}
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DILocalVariable(name: "status", arg: 1, scope: !1075, file: !336, line: 251, type: !116)
!1080 = !DILocalVariable(name: "errnum", arg: 2, scope: !1075, file: !336, line: 251, type: !116)
!1081 = !DILocalVariable(name: "message", arg: 3, scope: !1075, file: !336, line: 251, type: !80)
!1082 = !DILocalVariable(name: "args", arg: 4, scope: !1075, file: !336, line: 251, type: !346)
!1083 = !DILocation(line: 0, scope: !1075)
!1084 = !DILocation(line: 261, column: 3, scope: !1075)
!1085 = !DILocation(line: 265, column: 7, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1075, file: !336, line: 265, column: 7)
!1087 = !DILocation(line: 265, column: 7, scope: !1075)
!1088 = !DILocation(line: 266, column: 5, scope: !1086)
!1089 = !DILocation(line: 272, column: 7, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !336, line: 268, column: 5)
!1091 = !DILocation(line: 276, column: 3, scope: !1075)
!1092 = !{i64 0, i64 8, !762, i64 8, i64 8, !762, i64 16, i64 8, !762, i64 24, i64 4, !822, i64 28, i64 4, !822}
!1093 = !DILocation(line: 282, column: 1, scope: !1075)
!1094 = distinct !DISubprogram(name: "flush_stdout", scope: !336, file: !336, line: 163, type: !387, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1095)
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
!1111 = distinct !DISubprogram(name: "error_tail", scope: !336, file: !336, line: 219, type: !1076, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1112)
!1112 = !{!1113, !1114, !1115, !1116}
!1113 = !DILocalVariable(name: "status", arg: 1, scope: !1111, file: !336, line: 219, type: !116)
!1114 = !DILocalVariable(name: "errnum", arg: 2, scope: !1111, file: !336, line: 219, type: !116)
!1115 = !DILocalVariable(name: "message", arg: 3, scope: !1111, file: !336, line: 219, type: !80)
!1116 = !DILocalVariable(name: "args", arg: 4, scope: !1111, file: !336, line: 219, type: !346)
!1117 = distinct !DIAssignID()
!1118 = !DILocation(line: 0, scope: !1111)
!1119 = !DILocation(line: 229, column: 13, scope: !1111)
!1120 = !DILocation(line: 135, column: 10, scope: !1121, inlinedAt: !1163)
!1121 = distinct !DISubprogram(name: "vfprintf", scope: !809, file: !809, line: 132, type: !1122, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1159)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!116, !1124, !813, !348}
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
!1160 = !DILocalVariable(name: "__stream", arg: 1, scope: !1121, file: !809, line: 132, type: !1124)
!1161 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1121, file: !809, line: 133, type: !813)
!1162 = !DILocalVariable(name: "__ap", arg: 3, scope: !1121, file: !809, line: 133, type: !348)
!1163 = distinct !DILocation(line: 229, column: 3, scope: !1111)
!1164 = !{!1165, !1167}
!1165 = distinct !{!1165, !1166, !"vfprintf.inline: argument 0"}
!1166 = distinct !{!1166, !"vfprintf.inline"}
!1167 = distinct !{!1167, !1166, !"vfprintf.inline: argument 1"}
!1168 = !DILocation(line: 229, column: 3, scope: !1111)
!1169 = !DILocation(line: 0, scope: !1121, inlinedAt: !1163)
!1170 = !DILocation(line: 232, column: 3, scope: !1111)
!1171 = !DILocation(line: 233, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1111, file: !336, line: 233, column: 7)
!1173 = !DILocation(line: 233, column: 7, scope: !1111)
!1174 = !DILocalVariable(name: "errbuf", scope: !1175, file: !336, line: 193, type: !1179)
!1175 = distinct !DISubprogram(name: "print_errno_message", scope: !336, file: !336, line: 188, type: !752, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1176)
!1176 = !{!1177, !1178, !1174}
!1177 = !DILocalVariable(name: "errnum", arg: 1, scope: !1175, file: !336, line: 188, type: !116)
!1178 = !DILocalVariable(name: "s", scope: !1175, file: !336, line: 190, type: !80)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 1024)
!1182 = !DILocation(line: 0, scope: !1175, inlinedAt: !1183)
!1183 = distinct !DILocation(line: 234, column: 5, scope: !1172)
!1184 = !DILocation(line: 193, column: 3, scope: !1175, inlinedAt: !1183)
!1185 = !DILocation(line: 195, column: 7, scope: !1175, inlinedAt: !1183)
!1186 = !DILocation(line: 207, column: 9, scope: !1187, inlinedAt: !1183)
!1187 = distinct !DILexicalBlock(scope: !1175, file: !336, line: 207, column: 7)
!1188 = !DILocation(line: 207, column: 7, scope: !1175, inlinedAt: !1183)
!1189 = !DILocation(line: 208, column: 9, scope: !1187, inlinedAt: !1183)
!1190 = !DILocation(line: 208, column: 5, scope: !1187, inlinedAt: !1183)
!1191 = !DILocation(line: 214, column: 3, scope: !1175, inlinedAt: !1183)
!1192 = !DILocation(line: 216, column: 1, scope: !1175, inlinedAt: !1183)
!1193 = !DILocation(line: 234, column: 5, scope: !1172)
!1194 = !DILocation(line: 238, column: 3, scope: !1111)
!1195 = !DILocalVariable(name: "__c", arg: 1, scope: !1196, file: !1197, line: 101, type: !116)
!1196 = distinct !DISubprogram(name: "putc_unlocked", scope: !1197, file: !1197, line: 101, type: !1198, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1200)
!1197 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!116, !116, !1125}
!1200 = !{!1195, !1201}
!1201 = !DILocalVariable(name: "__stream", arg: 2, scope: !1196, file: !1197, line: 101, type: !1125)
!1202 = !DILocation(line: 0, scope: !1196, inlinedAt: !1203)
!1203 = distinct !DILocation(line: 238, column: 3, scope: !1111)
!1204 = !DILocation(line: 103, column: 10, scope: !1196, inlinedAt: !1203)
!1205 = !{!1206, !763, i64 40}
!1206 = !{!"_IO_FILE", !823, i64 0, !763, i64 8, !763, i64 16, !763, i64 24, !763, i64 32, !763, i64 40, !763, i64 48, !763, i64 56, !763, i64 64, !763, i64 72, !763, i64 80, !763, i64 88, !763, i64 96, !763, i64 104, !823, i64 112, !823, i64 116, !1207, i64 120, !864, i64 128, !764, i64 130, !764, i64 131, !763, i64 136, !1207, i64 144, !763, i64 152, !763, i64 160, !763, i64 168, !763, i64 176, !1207, i64 184, !823, i64 192, !764, i64 196}
!1207 = !{!"long", !764, i64 0}
!1208 = !{!1206, !763, i64 48}
!1209 = !{!"branch_weights", i32 2000, i32 1}
!1210 = !DILocation(line: 240, column: 3, scope: !1111)
!1211 = !DILocation(line: 241, column: 7, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1111, file: !336, line: 241, column: 7)
!1213 = !DILocation(line: 241, column: 7, scope: !1111)
!1214 = !DILocation(line: 242, column: 5, scope: !1212)
!1215 = !DILocation(line: 243, column: 1, scope: !1111)
!1216 = !DISubprogram(name: "__vfprintf_chk", scope: !809, file: !809, line: 96, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!116, !1124, !116, !813, !348}
!1219 = !DISubprogram(name: "strerror_r", scope: !939, file: !939, line: 444, type: !1220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!260, !116, !260, !118}
!1222 = !DISubprogram(name: "__overflow", scope: !347, file: !347, line: 886, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!116, !1125, !116}
!1225 = !DISubprogram(name: "fflush_unlocked", scope: !347, file: !347, line: 239, type: !1226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!116, !1125}
!1228 = !DISubprogram(name: "fcntl", scope: !1229, file: !1229, line: 149, type: !1230, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1229 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!116, !116, !116, null}
!1232 = distinct !DISubprogram(name: "error", scope: !336, file: !336, line: 285, type: !1233, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1235)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{null, !116, !116, !80, null}
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1232, file: !336, line: 285, type: !116)
!1237 = !DILocalVariable(name: "errnum", arg: 2, scope: !1232, file: !336, line: 285, type: !116)
!1238 = !DILocalVariable(name: "message", arg: 3, scope: !1232, file: !336, line: 285, type: !80)
!1239 = !DILocalVariable(name: "ap", scope: !1232, file: !336, line: 287, type: !346)
!1240 = distinct !DIAssignID()
!1241 = !DILocation(line: 0, scope: !1232)
!1242 = !DILocation(line: 287, column: 3, scope: !1232)
!1243 = !DILocation(line: 288, column: 3, scope: !1232)
!1244 = !DILocation(line: 289, column: 3, scope: !1232)
!1245 = !DILocation(line: 290, column: 3, scope: !1232)
!1246 = !DILocation(line: 291, column: 1, scope: !1232)
!1247 = !DILocation(line: 0, scope: !343)
!1248 = !DILocation(line: 302, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !343, file: !336, line: 302, column: 7)
!1250 = !DILocation(line: 302, column: 7, scope: !343)
!1251 = !DILocation(line: 307, column: 11, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1253, file: !336, line: 307, column: 11)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !336, line: 303, column: 5)
!1254 = !DILocation(line: 307, column: 27, scope: !1252)
!1255 = !DILocation(line: 308, column: 11, scope: !1252)
!1256 = !DILocation(line: 308, column: 28, scope: !1252)
!1257 = !DILocation(line: 308, column: 25, scope: !1252)
!1258 = !DILocation(line: 309, column: 15, scope: !1252)
!1259 = !DILocation(line: 309, column: 33, scope: !1252)
!1260 = !DILocation(line: 310, column: 19, scope: !1252)
!1261 = !DILocation(line: 311, column: 22, scope: !1252)
!1262 = !DILocation(line: 311, column: 56, scope: !1252)
!1263 = !DILocation(line: 307, column: 11, scope: !1253)
!1264 = !DILocation(line: 316, column: 21, scope: !1253)
!1265 = !DILocation(line: 317, column: 23, scope: !1253)
!1266 = !DILocation(line: 318, column: 5, scope: !1253)
!1267 = !DILocation(line: 327, column: 3, scope: !343)
!1268 = !DILocation(line: 331, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !343, file: !336, line: 331, column: 7)
!1270 = !DILocation(line: 331, column: 7, scope: !343)
!1271 = !DILocation(line: 332, column: 5, scope: !1269)
!1272 = !DILocation(line: 338, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1269, file: !336, line: 334, column: 5)
!1274 = !DILocation(line: 346, column: 3, scope: !343)
!1275 = !DILocation(line: 350, column: 3, scope: !343)
!1276 = !DILocation(line: 356, column: 1, scope: !343)
!1277 = distinct !DISubprogram(name: "error_at_line", scope: !336, file: !336, line: 359, type: !1278, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1280)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{null, !116, !116, !80, !86, !80, null}
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286}
!1281 = !DILocalVariable(name: "status", arg: 1, scope: !1277, file: !336, line: 359, type: !116)
!1282 = !DILocalVariable(name: "errnum", arg: 2, scope: !1277, file: !336, line: 359, type: !116)
!1283 = !DILocalVariable(name: "file_name", arg: 3, scope: !1277, file: !336, line: 359, type: !80)
!1284 = !DILocalVariable(name: "line_number", arg: 4, scope: !1277, file: !336, line: 360, type: !86)
!1285 = !DILocalVariable(name: "message", arg: 5, scope: !1277, file: !336, line: 360, type: !80)
!1286 = !DILocalVariable(name: "ap", scope: !1277, file: !336, line: 362, type: !346)
!1287 = distinct !DIAssignID()
!1288 = !DILocation(line: 0, scope: !1277)
!1289 = !DILocation(line: 362, column: 3, scope: !1277)
!1290 = !DILocation(line: 363, column: 3, scope: !1277)
!1291 = !DILocation(line: 364, column: 3, scope: !1277)
!1292 = !DILocation(line: 366, column: 3, scope: !1277)
!1293 = !DILocation(line: 367, column: 1, scope: !1277)
!1294 = distinct !DISubprogram(name: "getprogname", scope: !682, file: !682, line: 54, type: !1295, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!80}
!1297 = !DILocation(line: 58, column: 10, scope: !1294)
!1298 = !DILocation(line: 58, column: 3, scope: !1294)
!1299 = distinct !DISubprogram(name: "parse_long_options", scope: !391, file: !391, line: 45, type: !1300, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1303)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !116, !972, !80, !80, !80, !1302, null}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1314}
!1304 = !DILocalVariable(name: "argc", arg: 1, scope: !1299, file: !391, line: 45, type: !116)
!1305 = !DILocalVariable(name: "argv", arg: 2, scope: !1299, file: !391, line: 46, type: !972)
!1306 = !DILocalVariable(name: "command_name", arg: 3, scope: !1299, file: !391, line: 47, type: !80)
!1307 = !DILocalVariable(name: "package", arg: 4, scope: !1299, file: !391, line: 48, type: !80)
!1308 = !DILocalVariable(name: "version", arg: 5, scope: !1299, file: !391, line: 49, type: !80)
!1309 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1299, file: !391, line: 50, type: !1302)
!1310 = !DILocalVariable(name: "saved_opterr", scope: !1299, file: !391, line: 53, type: !116)
!1311 = !DILocalVariable(name: "c", scope: !1312, file: !391, line: 60, type: !116)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !391, line: 59, column: 5)
!1313 = distinct !DILexicalBlock(scope: !1299, file: !391, line: 58, column: 7)
!1314 = !DILocalVariable(name: "authors", scope: !1315, file: !391, line: 71, type: !1319)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !391, line: 70, column: 15)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !391, line: 64, column: 13)
!1317 = distinct !DILexicalBlock(scope: !1318, file: !391, line: 62, column: 9)
!1318 = distinct !DILexicalBlock(scope: !1312, file: !391, line: 61, column: 11)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !347, line: 52, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !349, line: 12, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !391, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1322, file: !391, line: 71, baseType: !115, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1322, file: !391, line: 71, baseType: !115, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1322, file: !391, line: 71, baseType: !115, size: 64, offset: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1322, file: !391, line: 71, baseType: !116, size: 32, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1322, file: !391, line: 71, baseType: !116, size: 32, offset: 224)
!1329 = distinct !DIAssignID()
!1330 = !DILocation(line: 0, scope: !1315)
!1331 = !DILocation(line: 0, scope: !1299)
!1332 = !DILocation(line: 53, column: 22, scope: !1299)
!1333 = !DILocation(line: 56, column: 10, scope: !1299)
!1334 = !DILocation(line: 58, column: 12, scope: !1313)
!1335 = !DILocation(line: 58, column: 7, scope: !1299)
!1336 = !DILocation(line: 60, column: 15, scope: !1312)
!1337 = !DILocation(line: 0, scope: !1312)
!1338 = !DILocation(line: 61, column: 11, scope: !1312)
!1339 = !DILocation(line: 66, column: 15, scope: !1316)
!1340 = !DILocation(line: 67, column: 15, scope: !1316)
!1341 = !DILocation(line: 71, column: 17, scope: !1315)
!1342 = !DILocation(line: 72, column: 17, scope: !1315)
!1343 = !DILocation(line: 73, column: 33, scope: !1315)
!1344 = !DILocation(line: 73, column: 17, scope: !1315)
!1345 = !DILocation(line: 74, column: 17, scope: !1315)
!1346 = !DILocation(line: 85, column: 10, scope: !1299)
!1347 = !DILocation(line: 89, column: 10, scope: !1299)
!1348 = !DILocation(line: 90, column: 1, scope: !1299)
!1349 = !DISubprogram(name: "getopt_long", scope: !406, file: !406, line: 66, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!116, !116, !1352, !80, !1354, !411}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1355 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !391, file: !391, line: 98, type: !1356, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !394, retainedNodes: !1358)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{null, !116, !972, !80, !80, !80, !239, !1302, null}
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369}
!1359 = !DILocalVariable(name: "argc", arg: 1, scope: !1355, file: !391, line: 98, type: !116)
!1360 = !DILocalVariable(name: "argv", arg: 2, scope: !1355, file: !391, line: 99, type: !972)
!1361 = !DILocalVariable(name: "command_name", arg: 3, scope: !1355, file: !391, line: 100, type: !80)
!1362 = !DILocalVariable(name: "package", arg: 4, scope: !1355, file: !391, line: 101, type: !80)
!1363 = !DILocalVariable(name: "version", arg: 5, scope: !1355, file: !391, line: 102, type: !80)
!1364 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1355, file: !391, line: 103, type: !239)
!1365 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1355, file: !391, line: 104, type: !1302)
!1366 = !DILocalVariable(name: "saved_opterr", scope: !1355, file: !391, line: 107, type: !116)
!1367 = !DILocalVariable(name: "optstring", scope: !1355, file: !391, line: 112, type: !80)
!1368 = !DILocalVariable(name: "c", scope: !1355, file: !391, line: 114, type: !116)
!1369 = !DILocalVariable(name: "authors", scope: !1370, file: !391, line: 125, type: !1319)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !391, line: 124, column: 11)
!1371 = distinct !DILexicalBlock(scope: !1372, file: !391, line: 118, column: 9)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !391, line: 116, column: 5)
!1373 = distinct !DILexicalBlock(scope: !1355, file: !391, line: 115, column: 7)
!1374 = distinct !DIAssignID()
!1375 = !DILocation(line: 0, scope: !1370)
!1376 = !DILocation(line: 0, scope: !1355)
!1377 = !DILocation(line: 107, column: 22, scope: !1355)
!1378 = !DILocation(line: 110, column: 10, scope: !1355)
!1379 = !DILocation(line: 112, column: 27, scope: !1355)
!1380 = !DILocation(line: 114, column: 11, scope: !1355)
!1381 = !DILocation(line: 115, column: 7, scope: !1355)
!1382 = !DILocation(line: 125, column: 13, scope: !1370)
!1383 = !DILocation(line: 126, column: 13, scope: !1370)
!1384 = !DILocation(line: 127, column: 29, scope: !1370)
!1385 = !DILocation(line: 127, column: 13, scope: !1370)
!1386 = !DILocation(line: 128, column: 13, scope: !1370)
!1387 = !DILocation(line: 132, column: 26, scope: !1371)
!1388 = !DILocation(line: 133, column: 11, scope: !1371)
!1389 = !DILocation(line: 0, scope: !1371)
!1390 = !DILocation(line: 138, column: 10, scope: !1355)
!1391 = !DILocation(line: 139, column: 1, scope: !1355)
!1392 = distinct !DISubprogram(name: "set_program_name", scope: !416, file: !416, line: 37, type: !773, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1393)
!1393 = !{!1394, !1395, !1396}
!1394 = !DILocalVariable(name: "argv0", arg: 1, scope: !1392, file: !416, line: 37, type: !80)
!1395 = !DILocalVariable(name: "slash", scope: !1392, file: !416, line: 44, type: !80)
!1396 = !DILocalVariable(name: "base", scope: !1392, file: !416, line: 45, type: !80)
!1397 = !DILocation(line: 0, scope: !1392)
!1398 = !DILocation(line: 44, column: 23, scope: !1392)
!1399 = !DILocation(line: 45, column: 22, scope: !1392)
!1400 = !DILocation(line: 46, column: 17, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1392, file: !416, line: 46, column: 7)
!1402 = !DILocation(line: 46, column: 9, scope: !1401)
!1403 = !DILocation(line: 46, column: 25, scope: !1401)
!1404 = !DILocation(line: 46, column: 40, scope: !1401)
!1405 = !DILocalVariable(name: "__s1", arg: 1, scope: !1406, file: !835, line: 974, type: !967)
!1406 = distinct !DISubprogram(name: "memeq", scope: !835, file: !835, line: 974, type: !1407, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1409)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!239, !967, !967, !118}
!1409 = !{!1405, !1410, !1411}
!1410 = !DILocalVariable(name: "__s2", arg: 2, scope: !1406, file: !835, line: 974, type: !967)
!1411 = !DILocalVariable(name: "__n", arg: 3, scope: !1406, file: !835, line: 974, type: !118)
!1412 = !DILocation(line: 0, scope: !1406, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 46, column: 28, scope: !1401)
!1414 = !DILocation(line: 976, column: 11, scope: !1406, inlinedAt: !1413)
!1415 = !DILocation(line: 976, column: 10, scope: !1406, inlinedAt: !1413)
!1416 = !DILocation(line: 46, column: 7, scope: !1392)
!1417 = !DILocation(line: 49, column: 11, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !416, line: 49, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1401, file: !416, line: 47, column: 5)
!1420 = !DILocation(line: 49, column: 36, scope: !1418)
!1421 = !DILocation(line: 49, column: 11, scope: !1419)
!1422 = !DILocation(line: 65, column: 16, scope: !1392)
!1423 = !DILocation(line: 71, column: 27, scope: !1392)
!1424 = !DILocation(line: 74, column: 33, scope: !1392)
!1425 = !DILocation(line: 76, column: 1, scope: !1392)
!1426 = !DISubprogram(name: "strrchr", scope: !939, file: !939, line: 273, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1427 = distinct !DIAssignID()
!1428 = !DILocation(line: 0, scope: !425)
!1429 = distinct !DIAssignID()
!1430 = !DILocation(line: 40, column: 29, scope: !425)
!1431 = !DILocation(line: 41, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !425, file: !426, line: 41, column: 7)
!1433 = !DILocation(line: 41, column: 7, scope: !425)
!1434 = !DILocation(line: 47, column: 3, scope: !425)
!1435 = !DILocation(line: 48, column: 3, scope: !425)
!1436 = !DILocalVariable(name: "ps", arg: 1, scope: !1437, file: !1438, line: 1135, type: !1441)
!1437 = distinct !DISubprogram(name: "mbszero", scope: !1438, file: !1438, line: 1135, type: !1439, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1442)
!1438 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!1442 = !{!1436}
!1443 = !DILocation(line: 0, scope: !1437, inlinedAt: !1444)
!1444 = distinct !DILocation(line: 48, column: 18, scope: !425)
!1445 = !DILocalVariable(name: "__dest", arg: 1, scope: !1446, file: !1447, line: 57, type: !115)
!1446 = distinct !DISubprogram(name: "memset", scope: !1447, file: !1447, line: 57, type: !1448, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !1450)
!1447 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!115, !115, !116, !118}
!1450 = !{!1445, !1451, !1452}
!1451 = !DILocalVariable(name: "__ch", arg: 2, scope: !1446, file: !1447, line: 57, type: !116)
!1452 = !DILocalVariable(name: "__len", arg: 3, scope: !1446, file: !1447, line: 57, type: !118)
!1453 = !DILocation(line: 0, scope: !1446, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 1137, column: 3, scope: !1437, inlinedAt: !1444)
!1455 = !DILocation(line: 59, column: 10, scope: !1446, inlinedAt: !1454)
!1456 = !DILocation(line: 49, column: 7, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !425, file: !426, line: 49, column: 7)
!1458 = !DILocation(line: 49, column: 39, scope: !1457)
!1459 = !DILocation(line: 49, column: 44, scope: !1457)
!1460 = !DILocation(line: 54, column: 1, scope: !425)
!1461 = !DISubprogram(name: "mbrtoc32", scope: !437, file: !437, line: 57, type: !1462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!118, !1464, !813, !118, !1466}
!1464 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1441)
!1467 = distinct !DISubprogram(name: "clone_quoting_options", scope: !456, file: !456, line: 113, type: !1468, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1471)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!1470, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!1471 = !{!1472, !1473, !1474}
!1472 = !DILocalVariable(name: "o", arg: 1, scope: !1467, file: !456, line: 113, type: !1470)
!1473 = !DILocalVariable(name: "saved_errno", scope: !1467, file: !456, line: 115, type: !116)
!1474 = !DILocalVariable(name: "p", scope: !1467, file: !456, line: 116, type: !1470)
!1475 = !DILocation(line: 0, scope: !1467)
!1476 = !DILocation(line: 115, column: 21, scope: !1467)
!1477 = !DILocation(line: 116, column: 40, scope: !1467)
!1478 = !DILocation(line: 116, column: 31, scope: !1467)
!1479 = !DILocation(line: 118, column: 9, scope: !1467)
!1480 = !DILocation(line: 119, column: 3, scope: !1467)
!1481 = distinct !DISubprogram(name: "get_quoting_style", scope: !456, file: !456, line: 124, type: !1482, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1486)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!482, !1484}
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!1486 = !{!1487}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1481, file: !456, line: 124, type: !1484)
!1488 = !DILocation(line: 0, scope: !1481)
!1489 = !DILocation(line: 126, column: 11, scope: !1481)
!1490 = !DILocation(line: 126, column: 46, scope: !1481)
!1491 = !{!1492, !823, i64 0}
!1492 = !{!"quoting_options", !823, i64 0, !823, i64 4, !764, i64 8, !763, i64 40, !763, i64 48}
!1493 = !DILocation(line: 126, column: 3, scope: !1481)
!1494 = distinct !DISubprogram(name: "set_quoting_style", scope: !456, file: !456, line: 132, type: !1495, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1497)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !1470, !482}
!1497 = !{!1498, !1499}
!1498 = !DILocalVariable(name: "o", arg: 1, scope: !1494, file: !456, line: 132, type: !1470)
!1499 = !DILocalVariable(name: "s", arg: 2, scope: !1494, file: !456, line: 132, type: !482)
!1500 = !DILocation(line: 0, scope: !1494)
!1501 = !DILocation(line: 134, column: 4, scope: !1494)
!1502 = !DILocation(line: 134, column: 45, scope: !1494)
!1503 = !DILocation(line: 135, column: 1, scope: !1494)
!1504 = distinct !DISubprogram(name: "set_char_quoting", scope: !456, file: !456, line: 143, type: !1505, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!116, !1470, !4, !116}
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1514, !1515}
!1508 = !DILocalVariable(name: "o", arg: 1, scope: !1504, file: !456, line: 143, type: !1470)
!1509 = !DILocalVariable(name: "c", arg: 2, scope: !1504, file: !456, line: 143, type: !4)
!1510 = !DILocalVariable(name: "i", arg: 3, scope: !1504, file: !456, line: 143, type: !116)
!1511 = !DILocalVariable(name: "uc", scope: !1504, file: !456, line: 145, type: !121)
!1512 = !DILocalVariable(name: "p", scope: !1504, file: !456, line: 146, type: !1513)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1514 = !DILocalVariable(name: "shift", scope: !1504, file: !456, line: 148, type: !116)
!1515 = !DILocalVariable(name: "r", scope: !1504, file: !456, line: 149, type: !86)
!1516 = !DILocation(line: 0, scope: !1504)
!1517 = !DILocation(line: 147, column: 6, scope: !1504)
!1518 = !DILocation(line: 147, column: 41, scope: !1504)
!1519 = !DILocation(line: 147, column: 62, scope: !1504)
!1520 = !DILocation(line: 147, column: 57, scope: !1504)
!1521 = !DILocation(line: 148, column: 15, scope: !1504)
!1522 = !DILocation(line: 149, column: 21, scope: !1504)
!1523 = !DILocation(line: 149, column: 24, scope: !1504)
!1524 = !DILocation(line: 149, column: 34, scope: !1504)
!1525 = !DILocation(line: 150, column: 19, scope: !1504)
!1526 = !DILocation(line: 150, column: 24, scope: !1504)
!1527 = !DILocation(line: 150, column: 6, scope: !1504)
!1528 = !DILocation(line: 151, column: 3, scope: !1504)
!1529 = distinct !DISubprogram(name: "set_quoting_flags", scope: !456, file: !456, line: 159, type: !1530, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!116, !1470, !116}
!1532 = !{!1533, !1534, !1535}
!1533 = !DILocalVariable(name: "o", arg: 1, scope: !1529, file: !456, line: 159, type: !1470)
!1534 = !DILocalVariable(name: "i", arg: 2, scope: !1529, file: !456, line: 159, type: !116)
!1535 = !DILocalVariable(name: "r", scope: !1529, file: !456, line: 163, type: !116)
!1536 = !DILocation(line: 0, scope: !1529)
!1537 = !DILocation(line: 161, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1529, file: !456, line: 161, column: 7)
!1539 = !DILocation(line: 161, column: 7, scope: !1529)
!1540 = !DILocation(line: 163, column: 14, scope: !1529)
!1541 = !{!1492, !823, i64 4}
!1542 = !DILocation(line: 164, column: 12, scope: !1529)
!1543 = !DILocation(line: 165, column: 3, scope: !1529)
!1544 = distinct !DISubprogram(name: "set_custom_quoting", scope: !456, file: !456, line: 169, type: !1545, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1470, !80, !80}
!1547 = !{!1548, !1549, !1550}
!1548 = !DILocalVariable(name: "o", arg: 1, scope: !1544, file: !456, line: 169, type: !1470)
!1549 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1544, file: !456, line: 170, type: !80)
!1550 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1544, file: !456, line: 170, type: !80)
!1551 = !DILocation(line: 0, scope: !1544)
!1552 = !DILocation(line: 172, column: 8, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1544, file: !456, line: 172, column: 7)
!1554 = !DILocation(line: 172, column: 7, scope: !1544)
!1555 = !DILocation(line: 174, column: 12, scope: !1544)
!1556 = !DILocation(line: 175, column: 8, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1544, file: !456, line: 175, column: 7)
!1558 = !DILocation(line: 175, column: 19, scope: !1557)
!1559 = !DILocation(line: 176, column: 5, scope: !1557)
!1560 = !DILocation(line: 177, column: 6, scope: !1544)
!1561 = !DILocation(line: 177, column: 17, scope: !1544)
!1562 = !{!1492, !763, i64 40}
!1563 = !DILocation(line: 178, column: 6, scope: !1544)
!1564 = !DILocation(line: 178, column: 18, scope: !1544)
!1565 = !{!1492, !763, i64 48}
!1566 = !DILocation(line: 179, column: 1, scope: !1544)
!1567 = !DISubprogram(name: "abort", scope: !943, file: !943, line: 598, type: !387, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1568 = distinct !DISubprogram(name: "quotearg_buffer", scope: !456, file: !456, line: 774, type: !1569, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!118, !260, !118, !80, !118, !1484}
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579}
!1572 = !DILocalVariable(name: "buffer", arg: 1, scope: !1568, file: !456, line: 774, type: !260)
!1573 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1568, file: !456, line: 774, type: !118)
!1574 = !DILocalVariable(name: "arg", arg: 3, scope: !1568, file: !456, line: 775, type: !80)
!1575 = !DILocalVariable(name: "argsize", arg: 4, scope: !1568, file: !456, line: 775, type: !118)
!1576 = !DILocalVariable(name: "o", arg: 5, scope: !1568, file: !456, line: 776, type: !1484)
!1577 = !DILocalVariable(name: "p", scope: !1568, file: !456, line: 778, type: !1484)
!1578 = !DILocalVariable(name: "saved_errno", scope: !1568, file: !456, line: 779, type: !116)
!1579 = !DILocalVariable(name: "r", scope: !1568, file: !456, line: 780, type: !118)
!1580 = !DILocation(line: 0, scope: !1568)
!1581 = !DILocation(line: 778, column: 37, scope: !1568)
!1582 = !DILocation(line: 779, column: 21, scope: !1568)
!1583 = !DILocation(line: 781, column: 43, scope: !1568)
!1584 = !DILocation(line: 781, column: 53, scope: !1568)
!1585 = !DILocation(line: 781, column: 63, scope: !1568)
!1586 = !DILocation(line: 782, column: 43, scope: !1568)
!1587 = !DILocation(line: 782, column: 58, scope: !1568)
!1588 = !DILocation(line: 780, column: 14, scope: !1568)
!1589 = !DILocation(line: 783, column: 9, scope: !1568)
!1590 = !DILocation(line: 784, column: 3, scope: !1568)
!1591 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !456, file: !456, line: 251, type: !1592, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1596)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!118, !260, !118, !80, !118, !482, !116, !1594, !80, !80}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1622, !1624, !1627, !1628, !1629, !1630, !1633, !1634, !1636, !1637, !1640, !1644, !1645, !1653, !1656, !1657, !1658}
!1597 = !DILocalVariable(name: "buffer", arg: 1, scope: !1591, file: !456, line: 251, type: !260)
!1598 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1591, file: !456, line: 251, type: !118)
!1599 = !DILocalVariable(name: "arg", arg: 3, scope: !1591, file: !456, line: 252, type: !80)
!1600 = !DILocalVariable(name: "argsize", arg: 4, scope: !1591, file: !456, line: 252, type: !118)
!1601 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1591, file: !456, line: 253, type: !482)
!1602 = !DILocalVariable(name: "flags", arg: 6, scope: !1591, file: !456, line: 253, type: !116)
!1603 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1591, file: !456, line: 254, type: !1594)
!1604 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1591, file: !456, line: 255, type: !80)
!1605 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1591, file: !456, line: 256, type: !80)
!1606 = !DILocalVariable(name: "unibyte_locale", scope: !1591, file: !456, line: 258, type: !239)
!1607 = !DILocalVariable(name: "len", scope: !1591, file: !456, line: 260, type: !118)
!1608 = !DILocalVariable(name: "orig_buffersize", scope: !1591, file: !456, line: 261, type: !118)
!1609 = !DILocalVariable(name: "quote_string", scope: !1591, file: !456, line: 262, type: !80)
!1610 = !DILocalVariable(name: "quote_string_len", scope: !1591, file: !456, line: 263, type: !118)
!1611 = !DILocalVariable(name: "backslash_escapes", scope: !1591, file: !456, line: 264, type: !239)
!1612 = !DILocalVariable(name: "elide_outer_quotes", scope: !1591, file: !456, line: 265, type: !239)
!1613 = !DILocalVariable(name: "encountered_single_quote", scope: !1591, file: !456, line: 266, type: !239)
!1614 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1591, file: !456, line: 267, type: !239)
!1615 = !DILabel(scope: !1591, name: "process_input", file: !456, line: 308)
!1616 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1591, file: !456, line: 309, type: !239)
!1617 = !DILocalVariable(name: "lq", scope: !1618, file: !456, line: 361, type: !80)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !456, line: 361, column: 11)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !456, line: 360, column: 13)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !456, line: 333, column: 7)
!1621 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 312, column: 5)
!1622 = !DILocalVariable(name: "i", scope: !1623, file: !456, line: 395, type: !118)
!1623 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 395, column: 3)
!1624 = !DILocalVariable(name: "is_right_quote", scope: !1625, file: !456, line: 397, type: !239)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !456, line: 396, column: 5)
!1626 = distinct !DILexicalBlock(scope: !1623, file: !456, line: 395, column: 3)
!1627 = !DILocalVariable(name: "escaping", scope: !1625, file: !456, line: 398, type: !239)
!1628 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1625, file: !456, line: 399, type: !239)
!1629 = !DILocalVariable(name: "c", scope: !1625, file: !456, line: 417, type: !121)
!1630 = !DILabel(scope: !1631, name: "c_and_shell_escape", file: !456, line: 502)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 478, column: 9)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 419, column: 9)
!1633 = !DILabel(scope: !1631, name: "c_escape", file: !456, line: 507)
!1634 = !DILocalVariable(name: "m", scope: !1635, file: !456, line: 598, type: !118)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 596, column: 11)
!1636 = !DILocalVariable(name: "printable", scope: !1635, file: !456, line: 600, type: !239)
!1637 = !DILocalVariable(name: "mbs", scope: !1638, file: !456, line: 609, type: !531)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !456, line: 608, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !456, line: 602, column: 17)
!1640 = !DILocalVariable(name: "w", scope: !1641, file: !456, line: 618, type: !436)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !456, line: 617, column: 19)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !456, line: 616, column: 17)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !456, line: 616, column: 17)
!1644 = !DILocalVariable(name: "bytes", scope: !1641, file: !456, line: 619, type: !118)
!1645 = !DILocalVariable(name: "j", scope: !1646, file: !456, line: 648, type: !118)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !456, line: 648, column: 29)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !456, line: 647, column: 27)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !456, line: 645, column: 29)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !456, line: 636, column: 23)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !456, line: 628, column: 30)
!1651 = distinct !DILexicalBlock(scope: !1652, file: !456, line: 623, column: 30)
!1652 = distinct !DILexicalBlock(scope: !1641, file: !456, line: 621, column: 25)
!1653 = !DILocalVariable(name: "ilim", scope: !1654, file: !456, line: 674, type: !118)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !456, line: 671, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1635, file: !456, line: 670, column: 17)
!1656 = !DILabel(scope: !1625, name: "store_escape", file: !456, line: 709)
!1657 = !DILabel(scope: !1625, name: "store_c", file: !456, line: 712)
!1658 = !DILabel(scope: !1591, name: "force_outer_quoting_style", file: !456, line: 753)
!1659 = distinct !DIAssignID()
!1660 = distinct !DIAssignID()
!1661 = distinct !DIAssignID()
!1662 = distinct !DIAssignID()
!1663 = distinct !DIAssignID()
!1664 = !DILocation(line: 0, scope: !1638)
!1665 = distinct !DIAssignID()
!1666 = !DILocation(line: 0, scope: !1641)
!1667 = !DILocation(line: 0, scope: !1591)
!1668 = !DILocation(line: 258, column: 25, scope: !1591)
!1669 = !DILocation(line: 258, column: 36, scope: !1591)
!1670 = !DILocation(line: 267, column: 3, scope: !1591)
!1671 = !DILocation(line: 261, column: 10, scope: !1591)
!1672 = !DILocation(line: 262, column: 15, scope: !1591)
!1673 = !DILocation(line: 263, column: 10, scope: !1591)
!1674 = !DILocation(line: 308, column: 2, scope: !1591)
!1675 = !DILocation(line: 311, column: 3, scope: !1591)
!1676 = !DILocation(line: 318, column: 11, scope: !1621)
!1677 = !DILocation(line: 319, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1679, file: !456, line: 319, column: 9)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !456, line: 319, column: 9)
!1680 = distinct !DILexicalBlock(scope: !1621, file: !456, line: 318, column: 11)
!1681 = !DILocation(line: 319, column: 9, scope: !1679)
!1682 = !DILocation(line: 0, scope: !522, inlinedAt: !1683)
!1683 = distinct !DILocation(line: 357, column: 26, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !456, line: 335, column: 11)
!1685 = distinct !DILexicalBlock(scope: !1620, file: !456, line: 334, column: 13)
!1686 = !DILocation(line: 199, column: 29, scope: !522, inlinedAt: !1683)
!1687 = !DILocation(line: 201, column: 19, scope: !1688, inlinedAt: !1683)
!1688 = distinct !DILexicalBlock(scope: !522, file: !456, line: 201, column: 7)
!1689 = !DILocation(line: 201, column: 7, scope: !522, inlinedAt: !1683)
!1690 = !DILocation(line: 229, column: 3, scope: !522, inlinedAt: !1683)
!1691 = !DILocation(line: 230, column: 3, scope: !522, inlinedAt: !1683)
!1692 = !DILocalVariable(name: "ps", arg: 1, scope: !1693, file: !1438, line: 1135, type: !1696)
!1693 = distinct !DISubprogram(name: "mbszero", scope: !1438, file: !1438, line: 1135, type: !1694, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1697)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !1696}
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1697 = !{!1692}
!1698 = !DILocation(line: 0, scope: !1693, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 230, column: 18, scope: !522, inlinedAt: !1683)
!1700 = !DILocalVariable(name: "__dest", arg: 1, scope: !1701, file: !1447, line: 57, type: !115)
!1701 = distinct !DISubprogram(name: "memset", scope: !1447, file: !1447, line: 57, type: !1448, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1702)
!1702 = !{!1700, !1703, !1704}
!1703 = !DILocalVariable(name: "__ch", arg: 2, scope: !1701, file: !1447, line: 57, type: !116)
!1704 = !DILocalVariable(name: "__len", arg: 3, scope: !1701, file: !1447, line: 57, type: !118)
!1705 = !DILocation(line: 0, scope: !1701, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 1137, column: 3, scope: !1693, inlinedAt: !1699)
!1707 = !DILocation(line: 59, column: 10, scope: !1701, inlinedAt: !1706)
!1708 = !DILocation(line: 231, column: 7, scope: !1709, inlinedAt: !1683)
!1709 = distinct !DILexicalBlock(scope: !522, file: !456, line: 231, column: 7)
!1710 = !DILocation(line: 231, column: 40, scope: !1709, inlinedAt: !1683)
!1711 = !DILocation(line: 231, column: 45, scope: !1709, inlinedAt: !1683)
!1712 = !DILocation(line: 235, column: 1, scope: !522, inlinedAt: !1683)
!1713 = !DILocation(line: 0, scope: !522, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 358, column: 27, scope: !1684)
!1715 = !DILocation(line: 199, column: 29, scope: !522, inlinedAt: !1714)
!1716 = !DILocation(line: 201, column: 19, scope: !1688, inlinedAt: !1714)
!1717 = !DILocation(line: 201, column: 7, scope: !522, inlinedAt: !1714)
!1718 = !DILocation(line: 229, column: 3, scope: !522, inlinedAt: !1714)
!1719 = !DILocation(line: 230, column: 3, scope: !522, inlinedAt: !1714)
!1720 = !DILocation(line: 0, scope: !1693, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 230, column: 18, scope: !522, inlinedAt: !1714)
!1722 = !DILocation(line: 0, scope: !1701, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 1137, column: 3, scope: !1693, inlinedAt: !1721)
!1724 = !DILocation(line: 59, column: 10, scope: !1701, inlinedAt: !1723)
!1725 = !DILocation(line: 231, column: 7, scope: !1709, inlinedAt: !1714)
!1726 = !DILocation(line: 231, column: 40, scope: !1709, inlinedAt: !1714)
!1727 = !DILocation(line: 231, column: 45, scope: !1709, inlinedAt: !1714)
!1728 = !DILocation(line: 235, column: 1, scope: !522, inlinedAt: !1714)
!1729 = !DILocation(line: 360, column: 13, scope: !1620)
!1730 = !DILocation(line: 0, scope: !1618)
!1731 = !DILocation(line: 361, column: 45, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1618, file: !456, line: 361, column: 11)
!1733 = !DILocation(line: 361, column: 11, scope: !1618)
!1734 = !DILocation(line: 362, column: 13, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !456, line: 362, column: 13)
!1736 = distinct !DILexicalBlock(scope: !1732, file: !456, line: 362, column: 13)
!1737 = !DILocation(line: 362, column: 13, scope: !1736)
!1738 = !DILocation(line: 361, column: 52, scope: !1732)
!1739 = distinct !{!1739, !1733, !1740, !869}
!1740 = !DILocation(line: 362, column: 13, scope: !1618)
!1741 = !DILocation(line: 365, column: 28, scope: !1620)
!1742 = !DILocation(line: 260, column: 10, scope: !1591)
!1743 = !DILocation(line: 367, column: 7, scope: !1621)
!1744 = !DILocation(line: 373, column: 7, scope: !1621)
!1745 = !DILocation(line: 381, column: 11, scope: !1621)
!1746 = !DILocation(line: 376, column: 11, scope: !1621)
!1747 = !DILocation(line: 382, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !456, line: 382, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !456, line: 382, column: 9)
!1750 = distinct !DILexicalBlock(scope: !1621, file: !456, line: 381, column: 11)
!1751 = !DILocation(line: 382, column: 9, scope: !1749)
!1752 = !DILocation(line: 389, column: 7, scope: !1621)
!1753 = !DILocation(line: 392, column: 7, scope: !1621)
!1754 = !DILocation(line: 0, scope: !1623)
!1755 = !DILocation(line: 395, column: 8, scope: !1623)
!1756 = !DILocation(line: 395, scope: !1623)
!1757 = !DILocation(line: 395, column: 34, scope: !1626)
!1758 = !DILocation(line: 395, column: 26, scope: !1626)
!1759 = !DILocation(line: 395, column: 48, scope: !1626)
!1760 = !DILocation(line: 395, column: 55, scope: !1626)
!1761 = !DILocation(line: 395, column: 3, scope: !1623)
!1762 = !DILocation(line: 395, column: 67, scope: !1626)
!1763 = !DILocation(line: 0, scope: !1625)
!1764 = !DILocation(line: 402, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1625, file: !456, line: 401, column: 11)
!1766 = !DILocation(line: 404, column: 17, scope: !1765)
!1767 = !DILocation(line: 405, column: 39, scope: !1765)
!1768 = !DILocation(line: 409, column: 32, scope: !1765)
!1769 = !DILocation(line: 405, column: 19, scope: !1765)
!1770 = !DILocation(line: 405, column: 15, scope: !1765)
!1771 = !DILocation(line: 410, column: 11, scope: !1765)
!1772 = !DILocation(line: 410, column: 25, scope: !1765)
!1773 = !DILocalVariable(name: "__s1", arg: 1, scope: !1774, file: !835, line: 974, type: !967)
!1774 = distinct !DISubprogram(name: "memeq", scope: !835, file: !835, line: 974, type: !1407, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1775)
!1775 = !{!1773, !1776, !1777}
!1776 = !DILocalVariable(name: "__s2", arg: 2, scope: !1774, file: !835, line: 974, type: !967)
!1777 = !DILocalVariable(name: "__n", arg: 3, scope: !1774, file: !835, line: 974, type: !118)
!1778 = !DILocation(line: 0, scope: !1774, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 410, column: 14, scope: !1765)
!1780 = !DILocation(line: 976, column: 11, scope: !1774, inlinedAt: !1779)
!1781 = !DILocation(line: 976, column: 10, scope: !1774, inlinedAt: !1779)
!1782 = !DILocation(line: 401, column: 11, scope: !1625)
!1783 = !DILocation(line: 417, column: 25, scope: !1625)
!1784 = !DILocation(line: 418, column: 7, scope: !1625)
!1785 = !DILocation(line: 421, column: 15, scope: !1632)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !456, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !456, line: 422, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 421, column: 15)
!1790 = !DILocation(line: 423, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !456, line: 423, column: 15)
!1792 = !DILocation(line: 423, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !456, line: 423, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !456, line: 423, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !456, line: 423, column: 15)
!1796 = !DILocation(line: 423, column: 15, scope: !1794)
!1797 = !DILocation(line: 423, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !456, line: 423, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !456, line: 423, column: 15)
!1800 = !DILocation(line: 423, column: 15, scope: !1799)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !456, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1795, file: !456, line: 423, column: 15)
!1804 = !DILocation(line: 423, column: 15, scope: !1803)
!1805 = !DILocation(line: 423, column: 15, scope: !1795)
!1806 = !DILocation(line: 423, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !456, line: 423, column: 15)
!1808 = distinct !DILexicalBlock(scope: !1787, file: !456, line: 423, column: 15)
!1809 = !DILocation(line: 423, column: 15, scope: !1808)
!1810 = !DILocation(line: 431, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1788, file: !456, line: 430, column: 19)
!1812 = !DILocation(line: 431, column: 24, scope: !1811)
!1813 = !DILocation(line: 431, column: 28, scope: !1811)
!1814 = !DILocation(line: 431, column: 38, scope: !1811)
!1815 = !DILocation(line: 431, column: 48, scope: !1811)
!1816 = !DILocation(line: 431, column: 59, scope: !1811)
!1817 = !DILocation(line: 433, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !456, line: 433, column: 19)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !456, line: 433, column: 19)
!1820 = distinct !DILexicalBlock(scope: !1811, file: !456, line: 432, column: 17)
!1821 = !DILocation(line: 433, column: 19, scope: !1819)
!1822 = !DILocation(line: 434, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !456, line: 434, column: 19)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !456, line: 434, column: 19)
!1825 = !DILocation(line: 434, column: 19, scope: !1824)
!1826 = !DILocation(line: 435, column: 17, scope: !1820)
!1827 = !DILocation(line: 442, column: 20, scope: !1789)
!1828 = !DILocation(line: 447, column: 11, scope: !1632)
!1829 = !DILocation(line: 450, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 448, column: 13)
!1831 = !DILocation(line: 456, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1830, file: !456, line: 455, column: 19)
!1833 = !DILocation(line: 456, column: 24, scope: !1832)
!1834 = !DILocation(line: 456, column: 28, scope: !1832)
!1835 = !DILocation(line: 456, column: 38, scope: !1832)
!1836 = !DILocation(line: 456, column: 41, scope: !1832)
!1837 = !DILocation(line: 456, column: 52, scope: !1832)
!1838 = !DILocation(line: 455, column: 19, scope: !1830)
!1839 = !DILocation(line: 457, column: 25, scope: !1832)
!1840 = !DILocation(line: 457, column: 17, scope: !1832)
!1841 = !DILocation(line: 464, column: 25, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1832, file: !456, line: 458, column: 19)
!1843 = !DILocation(line: 468, column: 21, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !456, line: 468, column: 21)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !456, line: 468, column: 21)
!1846 = !DILocation(line: 468, column: 21, scope: !1845)
!1847 = !DILocation(line: 469, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !456, line: 469, column: 21)
!1849 = distinct !DILexicalBlock(scope: !1842, file: !456, line: 469, column: 21)
!1850 = !DILocation(line: 469, column: 21, scope: !1849)
!1851 = !DILocation(line: 470, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !456, line: 470, column: 21)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !456, line: 470, column: 21)
!1854 = !DILocation(line: 470, column: 21, scope: !1853)
!1855 = !DILocation(line: 471, column: 21, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !456, line: 471, column: 21)
!1857 = distinct !DILexicalBlock(scope: !1842, file: !456, line: 471, column: 21)
!1858 = !DILocation(line: 471, column: 21, scope: !1857)
!1859 = !DILocation(line: 472, column: 21, scope: !1842)
!1860 = !DILocation(line: 482, column: 33, scope: !1631)
!1861 = !DILocation(line: 483, column: 33, scope: !1631)
!1862 = !DILocation(line: 485, column: 33, scope: !1631)
!1863 = !DILocation(line: 486, column: 33, scope: !1631)
!1864 = !DILocation(line: 487, column: 33, scope: !1631)
!1865 = !DILocation(line: 490, column: 17, scope: !1631)
!1866 = !DILocation(line: 492, column: 21, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !456, line: 491, column: 15)
!1868 = distinct !DILexicalBlock(scope: !1631, file: !456, line: 490, column: 17)
!1869 = !DILocation(line: 499, column: 35, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1631, file: !456, line: 499, column: 17)
!1871 = !DILocation(line: 0, scope: !1631)
!1872 = !DILocation(line: 502, column: 11, scope: !1631)
!1873 = !DILocation(line: 504, column: 17, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1631, file: !456, line: 503, column: 17)
!1875 = !DILocation(line: 507, column: 11, scope: !1631)
!1876 = !DILocation(line: 508, column: 17, scope: !1631)
!1877 = !DILocation(line: 517, column: 15, scope: !1632)
!1878 = !DILocation(line: 517, column: 40, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 517, column: 15)
!1880 = !DILocation(line: 517, column: 47, scope: !1879)
!1881 = !DILocation(line: 517, column: 18, scope: !1879)
!1882 = !DILocation(line: 521, column: 17, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 521, column: 15)
!1884 = !DILocation(line: 521, column: 15, scope: !1632)
!1885 = !DILocation(line: 525, column: 11, scope: !1632)
!1886 = !DILocation(line: 537, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 536, column: 15)
!1888 = !DILocation(line: 536, column: 15, scope: !1632)
!1889 = !DILocation(line: 544, column: 15, scope: !1632)
!1890 = !DILocation(line: 546, column: 19, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !456, line: 545, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1632, file: !456, line: 544, column: 15)
!1893 = !DILocation(line: 549, column: 19, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1891, file: !456, line: 549, column: 19)
!1895 = !DILocation(line: 549, column: 30, scope: !1894)
!1896 = !DILocation(line: 558, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !456, line: 558, column: 15)
!1898 = distinct !DILexicalBlock(scope: !1891, file: !456, line: 558, column: 15)
!1899 = !DILocation(line: 558, column: 15, scope: !1898)
!1900 = !DILocation(line: 559, column: 15, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !456, line: 559, column: 15)
!1902 = distinct !DILexicalBlock(scope: !1891, file: !456, line: 559, column: 15)
!1903 = !DILocation(line: 559, column: 15, scope: !1902)
!1904 = !DILocation(line: 560, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !456, line: 560, column: 15)
!1906 = distinct !DILexicalBlock(scope: !1891, file: !456, line: 560, column: 15)
!1907 = !DILocation(line: 560, column: 15, scope: !1906)
!1908 = !DILocation(line: 562, column: 13, scope: !1891)
!1909 = !DILocation(line: 602, column: 17, scope: !1635)
!1910 = !DILocation(line: 0, scope: !1635)
!1911 = !DILocation(line: 605, column: 29, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1639, file: !456, line: 603, column: 15)
!1913 = !DILocation(line: 605, column: 41, scope: !1912)
!1914 = !DILocation(line: 606, column: 15, scope: !1912)
!1915 = !DILocation(line: 609, column: 17, scope: !1638)
!1916 = !DILocation(line: 0, scope: !1693, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 609, column: 32, scope: !1638)
!1918 = !DILocation(line: 0, scope: !1701, inlinedAt: !1919)
!1919 = distinct !DILocation(line: 1137, column: 3, scope: !1693, inlinedAt: !1917)
!1920 = !DILocation(line: 59, column: 10, scope: !1701, inlinedAt: !1919)
!1921 = !DILocation(line: 613, column: 29, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1638, file: !456, line: 613, column: 21)
!1923 = !DILocation(line: 613, column: 21, scope: !1638)
!1924 = !DILocation(line: 614, column: 29, scope: !1922)
!1925 = !DILocation(line: 614, column: 19, scope: !1922)
!1926 = !DILocation(line: 618, column: 21, scope: !1641)
!1927 = !DILocation(line: 620, column: 54, scope: !1641)
!1928 = !DILocation(line: 619, column: 36, scope: !1641)
!1929 = !DILocation(line: 621, column: 25, scope: !1641)
!1930 = !DILocation(line: 631, column: 38, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1650, file: !456, line: 629, column: 23)
!1932 = !DILocation(line: 631, column: 48, scope: !1931)
!1933 = !DILocation(line: 631, column: 25, scope: !1931)
!1934 = !DILocation(line: 626, column: 25, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1651, file: !456, line: 624, column: 23)
!1936 = !DILocation(line: 631, column: 51, scope: !1931)
!1937 = !DILocation(line: 632, column: 28, scope: !1931)
!1938 = !DILocation(line: 631, column: 34, scope: !1931)
!1939 = distinct !{!1939, !1933, !1937, !869}
!1940 = !DILocation(line: 0, scope: !1646)
!1941 = !DILocation(line: 646, column: 29, scope: !1648)
!1942 = !DILocation(line: 648, column: 29, scope: !1646)
!1943 = !DILocation(line: 649, column: 39, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1646, file: !456, line: 648, column: 29)
!1945 = !DILocation(line: 649, column: 31, scope: !1944)
!1946 = !DILocation(line: 648, column: 60, scope: !1944)
!1947 = !DILocation(line: 648, column: 50, scope: !1944)
!1948 = distinct !{!1948, !1942, !1949, !869}
!1949 = !DILocation(line: 654, column: 33, scope: !1646)
!1950 = !DILocation(line: 657, column: 43, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1649, file: !456, line: 657, column: 29)
!1952 = !DILocalVariable(name: "wc", arg: 1, scope: !1953, file: !1954, line: 865, type: !1957)
!1953 = distinct !DISubprogram(name: "c32isprint", scope: !1954, file: !1954, line: 865, type: !1955, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !1959)
!1954 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!116, !1957}
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1958, line: 20, baseType: !86)
!1958 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1959 = !{!1952}
!1960 = !DILocation(line: 0, scope: !1953, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 657, column: 31, scope: !1951)
!1962 = !DILocation(line: 871, column: 10, scope: !1953, inlinedAt: !1961)
!1963 = !DILocation(line: 657, column: 31, scope: !1951)
!1964 = !DILocation(line: 664, column: 23, scope: !1641)
!1965 = !DILocation(line: 665, column: 19, scope: !1642)
!1966 = !DILocation(line: 666, column: 15, scope: !1639)
!1967 = !DILocation(line: 753, column: 2, scope: !1591)
!1968 = !DILocation(line: 756, column: 51, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 756, column: 7)
!1970 = !DILocation(line: 0, scope: !1639)
!1971 = !DILocation(line: 670, column: 19, scope: !1655)
!1972 = !DILocation(line: 670, column: 23, scope: !1655)
!1973 = !DILocation(line: 674, column: 33, scope: !1654)
!1974 = !DILocation(line: 0, scope: !1654)
!1975 = !DILocation(line: 676, column: 17, scope: !1654)
!1976 = !DILocation(line: 678, column: 43, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !456, line: 678, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !456, line: 677, column: 19)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !456, line: 676, column: 17)
!1980 = distinct !DILexicalBlock(scope: !1654, file: !456, line: 676, column: 17)
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
!2050 = !DILocation(line: 409, column: 30, scope: !1765)
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
!2108 = distinct !{!2108, !1761, !2109, !869}
!2109 = !DILocation(line: 718, column: 5, scope: !1623)
!2110 = !DILocation(line: 720, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 720, column: 7)
!2112 = !DILocation(line: 720, column: 16, scope: !2111)
!2113 = !DILocation(line: 728, column: 51, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 728, column: 7)
!2115 = !DILocation(line: 731, column: 11, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2114, file: !456, line: 730, column: 5)
!2117 = !DILocation(line: 732, column: 16, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2116, file: !456, line: 731, column: 11)
!2119 = !DILocation(line: 732, column: 9, scope: !2118)
!2120 = !DILocation(line: 736, column: 18, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !456, line: 736, column: 16)
!2122 = !DILocation(line: 736, column: 29, scope: !2121)
!2123 = !DILocation(line: 745, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 745, column: 7)
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
!2135 = distinct !{!2135, !2129, !2136, !869}
!2136 = !DILocation(line: 747, column: 7, scope: !2128)
!2137 = !DILocation(line: 749, column: 11, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1591, file: !456, line: 749, column: 7)
!2139 = !DILocation(line: 749, column: 7, scope: !1591)
!2140 = !DILocation(line: 750, column: 5, scope: !2138)
!2141 = !DILocation(line: 750, column: 17, scope: !2138)
!2142 = !DILocation(line: 756, column: 21, scope: !1969)
!2143 = !DILocation(line: 760, column: 42, scope: !1591)
!2144 = !DILocation(line: 758, column: 10, scope: !1591)
!2145 = !DILocation(line: 758, column: 3, scope: !1591)
!2146 = !DILocation(line: 762, column: 1, scope: !1591)
!2147 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !943, file: !943, line: 98, type: !2148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!118}
!2150 = !DISubprogram(name: "strlen", scope: !939, file: !939, line: 407, type: !2151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!120, !80}
!2153 = !DISubprogram(name: "iswprint", scope: !2154, file: !2154, line: 120, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2154 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2155 = distinct !DISubprogram(name: "quotearg_alloc", scope: !456, file: !456, line: 788, type: !2156, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2158)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!260, !80, !118, !1484}
!2158 = !{!2159, !2160, !2161}
!2159 = !DILocalVariable(name: "arg", arg: 1, scope: !2155, file: !456, line: 788, type: !80)
!2160 = !DILocalVariable(name: "argsize", arg: 2, scope: !2155, file: !456, line: 788, type: !118)
!2161 = !DILocalVariable(name: "o", arg: 3, scope: !2155, file: !456, line: 789, type: !1484)
!2162 = !DILocation(line: 0, scope: !2155)
!2163 = !DILocalVariable(name: "arg", arg: 1, scope: !2164, file: !456, line: 801, type: !80)
!2164 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !456, file: !456, line: 801, type: !2165, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2167)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!260, !80, !118, !696, !1484}
!2167 = !{!2163, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175}
!2168 = !DILocalVariable(name: "argsize", arg: 2, scope: !2164, file: !456, line: 801, type: !118)
!2169 = !DILocalVariable(name: "size", arg: 3, scope: !2164, file: !456, line: 801, type: !696)
!2170 = !DILocalVariable(name: "o", arg: 4, scope: !2164, file: !456, line: 802, type: !1484)
!2171 = !DILocalVariable(name: "p", scope: !2164, file: !456, line: 804, type: !1484)
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
!2216 = !{!1207, !1207, i64 0}
!2217 = !DILocation(line: 818, column: 5, scope: !2215)
!2218 = !DILocation(line: 819, column: 3, scope: !2164)
!2219 = distinct !DISubprogram(name: "quotearg_free", scope: !456, file: !456, line: 837, type: !387, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2220)
!2220 = !{!2221, !2222}
!2221 = !DILocalVariable(name: "sv", scope: !2219, file: !456, line: 839, type: !545)
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
!2232 = !{!2233, !763, i64 8}
!2233 = !{!"slotvec", !1207, i64 0, !763, i64 8}
!2234 = !DILocation(line: 842, column: 17, scope: !2231)
!2235 = !DILocation(line: 842, column: 7, scope: !2219)
!2236 = !DILocation(line: 841, column: 17, scope: !2228)
!2237 = !DILocation(line: 841, column: 5, scope: !2228)
!2238 = !DILocation(line: 840, column: 32, scope: !2228)
!2239 = distinct !{!2239, !2229, !2240, !869}
!2240 = !DILocation(line: 841, column: 20, scope: !2223)
!2241 = !DILocation(line: 844, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2231, file: !456, line: 843, column: 5)
!2243 = !DILocation(line: 845, column: 21, scope: !2242)
!2244 = !{!2233, !1207, i64 0}
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
!2256 = !DISubprogram(name: "free", scope: !1438, file: !1438, line: 786, type: !2257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !115}
!2259 = distinct !DISubprogram(name: "quotearg_n", scope: !456, file: !456, line: 919, type: !936, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2260)
!2260 = !{!2261, !2262}
!2261 = !DILocalVariable(name: "n", arg: 1, scope: !2259, file: !456, line: 919, type: !116)
!2262 = !DILocalVariable(name: "arg", arg: 2, scope: !2259, file: !456, line: 919, type: !80)
!2263 = !DILocation(line: 0, scope: !2259)
!2264 = !DILocation(line: 921, column: 10, scope: !2259)
!2265 = !DILocation(line: 921, column: 3, scope: !2259)
!2266 = distinct !DISubprogram(name: "quotearg_n_options", scope: !456, file: !456, line: 866, type: !2267, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!260, !116, !80, !118, !1484}
!2269 = !{!2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2280, !2281, !2283, !2284, !2285}
!2270 = !DILocalVariable(name: "n", arg: 1, scope: !2266, file: !456, line: 866, type: !116)
!2271 = !DILocalVariable(name: "arg", arg: 2, scope: !2266, file: !456, line: 866, type: !80)
!2272 = !DILocalVariable(name: "argsize", arg: 3, scope: !2266, file: !456, line: 866, type: !118)
!2273 = !DILocalVariable(name: "options", arg: 4, scope: !2266, file: !456, line: 867, type: !1484)
!2274 = !DILocalVariable(name: "saved_errno", scope: !2266, file: !456, line: 869, type: !116)
!2275 = !DILocalVariable(name: "sv", scope: !2266, file: !456, line: 871, type: !545)
!2276 = !DILocalVariable(name: "nslots_max", scope: !2266, file: !456, line: 873, type: !116)
!2277 = !DILocalVariable(name: "preallocated", scope: !2278, file: !456, line: 879, type: !239)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !456, line: 878, column: 5)
!2279 = distinct !DILexicalBlock(scope: !2266, file: !456, line: 877, column: 7)
!2280 = !DILocalVariable(name: "new_nslots", scope: !2278, file: !456, line: 880, type: !709)
!2281 = !DILocalVariable(name: "size", scope: !2282, file: !456, line: 891, type: !118)
!2282 = distinct !DILexicalBlock(scope: !2266, file: !456, line: 890, column: 3)
!2283 = !DILocalVariable(name: "val", scope: !2282, file: !456, line: 892, type: !260)
!2284 = !DILocalVariable(name: "flags", scope: !2282, file: !456, line: 894, type: !116)
!2285 = !DILocalVariable(name: "qsize", scope: !2282, file: !456, line: 895, type: !118)
!2286 = distinct !DIAssignID()
!2287 = !DILocation(line: 0, scope: !2278)
!2288 = !DILocation(line: 0, scope: !2266)
!2289 = !DILocation(line: 869, column: 21, scope: !2266)
!2290 = !DILocation(line: 871, column: 24, scope: !2266)
!2291 = !DILocation(line: 874, column: 17, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2266, file: !456, line: 874, column: 7)
!2293 = !DILocation(line: 875, column: 5, scope: !2292)
!2294 = !DILocation(line: 877, column: 7, scope: !2279)
!2295 = !DILocation(line: 877, column: 14, scope: !2279)
!2296 = !DILocation(line: 877, column: 7, scope: !2266)
!2297 = !DILocation(line: 879, column: 31, scope: !2278)
!2298 = !DILocation(line: 880, column: 7, scope: !2278)
!2299 = !DILocation(line: 880, column: 26, scope: !2278)
!2300 = !DILocation(line: 880, column: 13, scope: !2278)
!2301 = distinct !DIAssignID()
!2302 = !DILocation(line: 882, column: 31, scope: !2278)
!2303 = !DILocation(line: 883, column: 33, scope: !2278)
!2304 = !DILocation(line: 883, column: 42, scope: !2278)
!2305 = !DILocation(line: 883, column: 31, scope: !2278)
!2306 = !DILocation(line: 882, column: 22, scope: !2278)
!2307 = !DILocation(line: 882, column: 15, scope: !2278)
!2308 = !DILocation(line: 884, column: 11, scope: !2278)
!2309 = !DILocation(line: 885, column: 15, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2278, file: !456, line: 884, column: 11)
!2311 = !{i64 0, i64 8, !2216, i64 8, i64 8, !762}
!2312 = !DILocation(line: 885, column: 9, scope: !2310)
!2313 = !DILocation(line: 886, column: 20, scope: !2278)
!2314 = !DILocation(line: 886, column: 18, scope: !2278)
!2315 = !DILocation(line: 886, column: 32, scope: !2278)
!2316 = !DILocation(line: 886, column: 43, scope: !2278)
!2317 = !DILocation(line: 886, column: 53, scope: !2278)
!2318 = !DILocation(line: 0, scope: !1701, inlinedAt: !2319)
!2319 = distinct !DILocation(line: 886, column: 7, scope: !2278)
!2320 = !DILocation(line: 59, column: 10, scope: !1701, inlinedAt: !2319)
!2321 = !DILocation(line: 887, column: 16, scope: !2278)
!2322 = !DILocation(line: 887, column: 14, scope: !2278)
!2323 = !DILocation(line: 888, column: 5, scope: !2279)
!2324 = !DILocation(line: 888, column: 5, scope: !2278)
!2325 = !DILocation(line: 891, column: 19, scope: !2282)
!2326 = !DILocation(line: 891, column: 25, scope: !2282)
!2327 = !DILocation(line: 0, scope: !2282)
!2328 = !DILocation(line: 892, column: 23, scope: !2282)
!2329 = !DILocation(line: 894, column: 26, scope: !2282)
!2330 = !DILocation(line: 894, column: 32, scope: !2282)
!2331 = !DILocation(line: 896, column: 55, scope: !2282)
!2332 = !DILocation(line: 897, column: 55, scope: !2282)
!2333 = !DILocation(line: 898, column: 55, scope: !2282)
!2334 = !DILocation(line: 899, column: 55, scope: !2282)
!2335 = !DILocation(line: 895, column: 20, scope: !2282)
!2336 = !DILocation(line: 901, column: 14, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2282, file: !456, line: 901, column: 9)
!2338 = !DILocation(line: 901, column: 9, scope: !2282)
!2339 = !DILocation(line: 903, column: 35, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2337, file: !456, line: 902, column: 7)
!2341 = !DILocation(line: 903, column: 20, scope: !2340)
!2342 = !DILocation(line: 904, column: 17, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2340, file: !456, line: 904, column: 13)
!2344 = !DILocation(line: 904, column: 13, scope: !2340)
!2345 = !DILocation(line: 905, column: 11, scope: !2343)
!2346 = !DILocation(line: 906, column: 27, scope: !2340)
!2347 = !DILocation(line: 906, column: 19, scope: !2340)
!2348 = !DILocation(line: 907, column: 69, scope: !2340)
!2349 = !DILocation(line: 909, column: 44, scope: !2340)
!2350 = !DILocation(line: 910, column: 44, scope: !2340)
!2351 = !DILocation(line: 907, column: 9, scope: !2340)
!2352 = !DILocation(line: 911, column: 7, scope: !2340)
!2353 = !DILocation(line: 913, column: 11, scope: !2282)
!2354 = !DILocation(line: 914, column: 5, scope: !2282)
!2355 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !456, file: !456, line: 925, type: !2356, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!260, !116, !80, !118}
!2358 = !{!2359, !2360, !2361}
!2359 = !DILocalVariable(name: "n", arg: 1, scope: !2355, file: !456, line: 925, type: !116)
!2360 = !DILocalVariable(name: "arg", arg: 2, scope: !2355, file: !456, line: 925, type: !80)
!2361 = !DILocalVariable(name: "argsize", arg: 3, scope: !2355, file: !456, line: 925, type: !118)
!2362 = !DILocation(line: 0, scope: !2355)
!2363 = !DILocation(line: 927, column: 10, scope: !2355)
!2364 = !DILocation(line: 927, column: 3, scope: !2355)
!2365 = distinct !DISubprogram(name: "quotearg", scope: !456, file: !456, line: 931, type: !945, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2366)
!2366 = !{!2367}
!2367 = !DILocalVariable(name: "arg", arg: 1, scope: !2365, file: !456, line: 931, type: !80)
!2368 = !DILocation(line: 0, scope: !2365)
!2369 = !DILocation(line: 0, scope: !2259, inlinedAt: !2370)
!2370 = distinct !DILocation(line: 933, column: 10, scope: !2365)
!2371 = !DILocation(line: 921, column: 10, scope: !2259, inlinedAt: !2370)
!2372 = !DILocation(line: 933, column: 3, scope: !2365)
!2373 = distinct !DISubprogram(name: "quotearg_mem", scope: !456, file: !456, line: 937, type: !2374, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2376)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!260, !80, !118}
!2376 = !{!2377, !2378}
!2377 = !DILocalVariable(name: "arg", arg: 1, scope: !2373, file: !456, line: 937, type: !80)
!2378 = !DILocalVariable(name: "argsize", arg: 2, scope: !2373, file: !456, line: 937, type: !118)
!2379 = !DILocation(line: 0, scope: !2373)
!2380 = !DILocation(line: 0, scope: !2355, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 939, column: 10, scope: !2373)
!2382 = !DILocation(line: 927, column: 10, scope: !2355, inlinedAt: !2381)
!2383 = !DILocation(line: 939, column: 3, scope: !2373)
!2384 = distinct !DISubprogram(name: "quotearg_n_style", scope: !456, file: !456, line: 943, type: !2385, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!260, !116, !482, !80}
!2387 = !{!2388, !2389, !2390, !2391}
!2388 = !DILocalVariable(name: "n", arg: 1, scope: !2384, file: !456, line: 943, type: !116)
!2389 = !DILocalVariable(name: "s", arg: 2, scope: !2384, file: !456, line: 943, type: !482)
!2390 = !DILocalVariable(name: "arg", arg: 3, scope: !2384, file: !456, line: 943, type: !80)
!2391 = !DILocalVariable(name: "o", scope: !2384, file: !456, line: 945, type: !1485)
!2392 = distinct !DIAssignID()
!2393 = !DILocation(line: 0, scope: !2384)
!2394 = !DILocation(line: 945, column: 3, scope: !2384)
!2395 = !{!2396}
!2396 = distinct !{!2396, !2397, !"quoting_options_from_style: argument 0"}
!2397 = distinct !{!2397, !"quoting_options_from_style"}
!2398 = !DILocation(line: 945, column: 36, scope: !2384)
!2399 = !DILocalVariable(name: "style", arg: 1, scope: !2400, file: !456, line: 183, type: !482)
!2400 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !456, file: !456, line: 183, type: !2401, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!497, !482}
!2403 = !{!2399, !2404}
!2404 = !DILocalVariable(name: "o", scope: !2400, file: !456, line: 185, type: !497)
!2405 = !DILocation(line: 0, scope: !2400, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 945, column: 36, scope: !2384)
!2407 = !DILocation(line: 185, column: 26, scope: !2400, inlinedAt: !2406)
!2408 = distinct !DIAssignID()
!2409 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2406)
!2410 = distinct !DILexicalBlock(scope: !2400, file: !456, line: 186, column: 7)
!2411 = !DILocation(line: 186, column: 7, scope: !2400, inlinedAt: !2406)
!2412 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2406)
!2413 = !DILocation(line: 188, column: 11, scope: !2400, inlinedAt: !2406)
!2414 = distinct !DIAssignID()
!2415 = !DILocation(line: 946, column: 10, scope: !2384)
!2416 = !DILocation(line: 947, column: 1, scope: !2384)
!2417 = !DILocation(line: 946, column: 3, scope: !2384)
!2418 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !456, file: !456, line: 950, type: !2419, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!260, !116, !482, !80, !118}
!2421 = !{!2422, !2423, !2424, !2425, !2426}
!2422 = !DILocalVariable(name: "n", arg: 1, scope: !2418, file: !456, line: 950, type: !116)
!2423 = !DILocalVariable(name: "s", arg: 2, scope: !2418, file: !456, line: 950, type: !482)
!2424 = !DILocalVariable(name: "arg", arg: 3, scope: !2418, file: !456, line: 951, type: !80)
!2425 = !DILocalVariable(name: "argsize", arg: 4, scope: !2418, file: !456, line: 951, type: !118)
!2426 = !DILocalVariable(name: "o", scope: !2418, file: !456, line: 953, type: !1485)
!2427 = distinct !DIAssignID()
!2428 = !DILocation(line: 0, scope: !2418)
!2429 = !DILocation(line: 953, column: 3, scope: !2418)
!2430 = !{!2431}
!2431 = distinct !{!2431, !2432, !"quoting_options_from_style: argument 0"}
!2432 = distinct !{!2432, !"quoting_options_from_style"}
!2433 = !DILocation(line: 953, column: 36, scope: !2418)
!2434 = !DILocation(line: 0, scope: !2400, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 953, column: 36, scope: !2418)
!2436 = !DILocation(line: 185, column: 26, scope: !2400, inlinedAt: !2435)
!2437 = distinct !DIAssignID()
!2438 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2435)
!2439 = !DILocation(line: 186, column: 7, scope: !2400, inlinedAt: !2435)
!2440 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2435)
!2441 = !DILocation(line: 188, column: 11, scope: !2400, inlinedAt: !2435)
!2442 = distinct !DIAssignID()
!2443 = !DILocation(line: 954, column: 10, scope: !2418)
!2444 = !DILocation(line: 955, column: 1, scope: !2418)
!2445 = !DILocation(line: 954, column: 3, scope: !2418)
!2446 = distinct !DISubprogram(name: "quotearg_style", scope: !456, file: !456, line: 958, type: !2447, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2449)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!260, !482, !80}
!2449 = !{!2450, !2451}
!2450 = !DILocalVariable(name: "s", arg: 1, scope: !2446, file: !456, line: 958, type: !482)
!2451 = !DILocalVariable(name: "arg", arg: 2, scope: !2446, file: !456, line: 958, type: !80)
!2452 = distinct !DIAssignID()
!2453 = !DILocation(line: 0, scope: !2446)
!2454 = !DILocation(line: 0, scope: !2384, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 960, column: 10, scope: !2446)
!2456 = !DILocation(line: 945, column: 3, scope: !2384, inlinedAt: !2455)
!2457 = !{!2458}
!2458 = distinct !{!2458, !2459, !"quoting_options_from_style: argument 0"}
!2459 = distinct !{!2459, !"quoting_options_from_style"}
!2460 = !DILocation(line: 945, column: 36, scope: !2384, inlinedAt: !2455)
!2461 = !DILocation(line: 0, scope: !2400, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 945, column: 36, scope: !2384, inlinedAt: !2455)
!2463 = !DILocation(line: 185, column: 26, scope: !2400, inlinedAt: !2462)
!2464 = distinct !DIAssignID()
!2465 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2462)
!2466 = !DILocation(line: 186, column: 7, scope: !2400, inlinedAt: !2462)
!2467 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2462)
!2468 = !DILocation(line: 188, column: 11, scope: !2400, inlinedAt: !2462)
!2469 = distinct !DIAssignID()
!2470 = !DILocation(line: 946, column: 10, scope: !2384, inlinedAt: !2455)
!2471 = !DILocation(line: 947, column: 1, scope: !2384, inlinedAt: !2455)
!2472 = !DILocation(line: 960, column: 3, scope: !2446)
!2473 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !456, file: !456, line: 964, type: !2474, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2476)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!260, !482, !80, !118}
!2476 = !{!2477, !2478, !2479}
!2477 = !DILocalVariable(name: "s", arg: 1, scope: !2473, file: !456, line: 964, type: !482)
!2478 = !DILocalVariable(name: "arg", arg: 2, scope: !2473, file: !456, line: 964, type: !80)
!2479 = !DILocalVariable(name: "argsize", arg: 3, scope: !2473, file: !456, line: 964, type: !118)
!2480 = distinct !DIAssignID()
!2481 = !DILocation(line: 0, scope: !2473)
!2482 = !DILocation(line: 0, scope: !2418, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 966, column: 10, scope: !2473)
!2484 = !DILocation(line: 953, column: 3, scope: !2418, inlinedAt: !2483)
!2485 = !{!2486}
!2486 = distinct !{!2486, !2487, !"quoting_options_from_style: argument 0"}
!2487 = distinct !{!2487, !"quoting_options_from_style"}
!2488 = !DILocation(line: 953, column: 36, scope: !2418, inlinedAt: !2483)
!2489 = !DILocation(line: 0, scope: !2400, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 953, column: 36, scope: !2418, inlinedAt: !2483)
!2491 = !DILocation(line: 185, column: 26, scope: !2400, inlinedAt: !2490)
!2492 = distinct !DIAssignID()
!2493 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2490)
!2494 = !DILocation(line: 186, column: 7, scope: !2400, inlinedAt: !2490)
!2495 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2490)
!2496 = !DILocation(line: 188, column: 11, scope: !2400, inlinedAt: !2490)
!2497 = distinct !DIAssignID()
!2498 = !DILocation(line: 954, column: 10, scope: !2418, inlinedAt: !2483)
!2499 = !DILocation(line: 955, column: 1, scope: !2418, inlinedAt: !2483)
!2500 = !DILocation(line: 966, column: 3, scope: !2473)
!2501 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !456, file: !456, line: 970, type: !2502, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!260, !80, !118, !4}
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !456, line: 970, type: !80)
!2506 = !DILocalVariable(name: "argsize", arg: 2, scope: !2501, file: !456, line: 970, type: !118)
!2507 = !DILocalVariable(name: "ch", arg: 3, scope: !2501, file: !456, line: 970, type: !4)
!2508 = !DILocalVariable(name: "options", scope: !2501, file: !456, line: 972, type: !497)
!2509 = distinct !DIAssignID()
!2510 = !DILocation(line: 0, scope: !2501)
!2511 = !DILocation(line: 972, column: 3, scope: !2501)
!2512 = !DILocation(line: 973, column: 13, scope: !2501)
!2513 = !{i64 0, i64 4, !822, i64 4, i64 4, !822, i64 8, i64 32, !831, i64 40, i64 8, !762, i64 48, i64 8, !762}
!2514 = distinct !DIAssignID()
!2515 = !DILocation(line: 0, scope: !1504, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 974, column: 3, scope: !2501)
!2517 = !DILocation(line: 147, column: 41, scope: !1504, inlinedAt: !2516)
!2518 = !DILocation(line: 147, column: 62, scope: !1504, inlinedAt: !2516)
!2519 = !DILocation(line: 147, column: 57, scope: !1504, inlinedAt: !2516)
!2520 = !DILocation(line: 148, column: 15, scope: !1504, inlinedAt: !2516)
!2521 = !DILocation(line: 149, column: 21, scope: !1504, inlinedAt: !2516)
!2522 = !DILocation(line: 149, column: 24, scope: !1504, inlinedAt: !2516)
!2523 = !DILocation(line: 150, column: 19, scope: !1504, inlinedAt: !2516)
!2524 = !DILocation(line: 150, column: 24, scope: !1504, inlinedAt: !2516)
!2525 = !DILocation(line: 150, column: 6, scope: !1504, inlinedAt: !2516)
!2526 = !DILocation(line: 975, column: 10, scope: !2501)
!2527 = !DILocation(line: 976, column: 1, scope: !2501)
!2528 = !DILocation(line: 975, column: 3, scope: !2501)
!2529 = distinct !DISubprogram(name: "quotearg_char", scope: !456, file: !456, line: 979, type: !2530, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!260, !80, !4}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !456, line: 979, type: !80)
!2534 = !DILocalVariable(name: "ch", arg: 2, scope: !2529, file: !456, line: 979, type: !4)
!2535 = distinct !DIAssignID()
!2536 = !DILocation(line: 0, scope: !2529)
!2537 = !DILocation(line: 0, scope: !2501, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 981, column: 10, scope: !2529)
!2539 = !DILocation(line: 972, column: 3, scope: !2501, inlinedAt: !2538)
!2540 = !DILocation(line: 973, column: 13, scope: !2501, inlinedAt: !2538)
!2541 = distinct !DIAssignID()
!2542 = !DILocation(line: 0, scope: !1504, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 974, column: 3, scope: !2501, inlinedAt: !2538)
!2544 = !DILocation(line: 147, column: 41, scope: !1504, inlinedAt: !2543)
!2545 = !DILocation(line: 147, column: 62, scope: !1504, inlinedAt: !2543)
!2546 = !DILocation(line: 147, column: 57, scope: !1504, inlinedAt: !2543)
!2547 = !DILocation(line: 148, column: 15, scope: !1504, inlinedAt: !2543)
!2548 = !DILocation(line: 149, column: 21, scope: !1504, inlinedAt: !2543)
!2549 = !DILocation(line: 149, column: 24, scope: !1504, inlinedAt: !2543)
!2550 = !DILocation(line: 150, column: 19, scope: !1504, inlinedAt: !2543)
!2551 = !DILocation(line: 150, column: 24, scope: !1504, inlinedAt: !2543)
!2552 = !DILocation(line: 150, column: 6, scope: !1504, inlinedAt: !2543)
!2553 = !DILocation(line: 975, column: 10, scope: !2501, inlinedAt: !2538)
!2554 = !DILocation(line: 976, column: 1, scope: !2501, inlinedAt: !2538)
!2555 = !DILocation(line: 981, column: 3, scope: !2529)
!2556 = distinct !DISubprogram(name: "quotearg_colon", scope: !456, file: !456, line: 985, type: !945, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2557)
!2557 = !{!2558}
!2558 = !DILocalVariable(name: "arg", arg: 1, scope: !2556, file: !456, line: 985, type: !80)
!2559 = distinct !DIAssignID()
!2560 = !DILocation(line: 0, scope: !2556)
!2561 = !DILocation(line: 0, scope: !2529, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 987, column: 10, scope: !2556)
!2563 = !DILocation(line: 0, scope: !2501, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 981, column: 10, scope: !2529, inlinedAt: !2562)
!2565 = !DILocation(line: 972, column: 3, scope: !2501, inlinedAt: !2564)
!2566 = !DILocation(line: 973, column: 13, scope: !2501, inlinedAt: !2564)
!2567 = distinct !DIAssignID()
!2568 = !DILocation(line: 0, scope: !1504, inlinedAt: !2569)
!2569 = distinct !DILocation(line: 974, column: 3, scope: !2501, inlinedAt: !2564)
!2570 = !DILocation(line: 147, column: 57, scope: !1504, inlinedAt: !2569)
!2571 = !DILocation(line: 149, column: 21, scope: !1504, inlinedAt: !2569)
!2572 = !DILocation(line: 150, column: 6, scope: !1504, inlinedAt: !2569)
!2573 = !DILocation(line: 975, column: 10, scope: !2501, inlinedAt: !2564)
!2574 = !DILocation(line: 976, column: 1, scope: !2501, inlinedAt: !2564)
!2575 = !DILocation(line: 987, column: 3, scope: !2556)
!2576 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !456, file: !456, line: 991, type: !2374, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2577)
!2577 = !{!2578, !2579}
!2578 = !DILocalVariable(name: "arg", arg: 1, scope: !2576, file: !456, line: 991, type: !80)
!2579 = !DILocalVariable(name: "argsize", arg: 2, scope: !2576, file: !456, line: 991, type: !118)
!2580 = distinct !DIAssignID()
!2581 = !DILocation(line: 0, scope: !2576)
!2582 = !DILocation(line: 0, scope: !2501, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 993, column: 10, scope: !2576)
!2584 = !DILocation(line: 972, column: 3, scope: !2501, inlinedAt: !2583)
!2585 = !DILocation(line: 973, column: 13, scope: !2501, inlinedAt: !2583)
!2586 = distinct !DIAssignID()
!2587 = !DILocation(line: 0, scope: !1504, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 974, column: 3, scope: !2501, inlinedAt: !2583)
!2589 = !DILocation(line: 147, column: 57, scope: !1504, inlinedAt: !2588)
!2590 = !DILocation(line: 149, column: 21, scope: !1504, inlinedAt: !2588)
!2591 = !DILocation(line: 150, column: 6, scope: !1504, inlinedAt: !2588)
!2592 = !DILocation(line: 975, column: 10, scope: !2501, inlinedAt: !2583)
!2593 = !DILocation(line: 976, column: 1, scope: !2501, inlinedAt: !2583)
!2594 = !DILocation(line: 993, column: 3, scope: !2576)
!2595 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !456, file: !456, line: 997, type: !2385, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2596)
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2595, file: !456, line: 997, type: !116)
!2598 = !DILocalVariable(name: "s", arg: 2, scope: !2595, file: !456, line: 997, type: !482)
!2599 = !DILocalVariable(name: "arg", arg: 3, scope: !2595, file: !456, line: 997, type: !80)
!2600 = !DILocalVariable(name: "options", scope: !2595, file: !456, line: 999, type: !497)
!2601 = distinct !DIAssignID()
!2602 = !DILocation(line: 0, scope: !2595)
!2603 = !DILocation(line: 185, column: 26, scope: !2400, inlinedAt: !2604)
!2604 = distinct !DILocation(line: 1000, column: 13, scope: !2595)
!2605 = !DILocation(line: 999, column: 3, scope: !2595)
!2606 = !DILocation(line: 0, scope: !2400, inlinedAt: !2604)
!2607 = !DILocation(line: 186, column: 13, scope: !2410, inlinedAt: !2604)
!2608 = !DILocation(line: 186, column: 7, scope: !2400, inlinedAt: !2604)
!2609 = !DILocation(line: 187, column: 5, scope: !2410, inlinedAt: !2604)
!2610 = !{!2611}
!2611 = distinct !{!2611, !2612, !"quoting_options_from_style: argument 0"}
!2612 = distinct !{!2612, !"quoting_options_from_style"}
!2613 = !DILocation(line: 1000, column: 13, scope: !2595)
!2614 = distinct !DIAssignID()
!2615 = distinct !DIAssignID()
!2616 = !DILocation(line: 0, scope: !1504, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1001, column: 3, scope: !2595)
!2618 = !DILocation(line: 147, column: 57, scope: !1504, inlinedAt: !2617)
!2619 = !DILocation(line: 149, column: 21, scope: !1504, inlinedAt: !2617)
!2620 = !DILocation(line: 150, column: 6, scope: !1504, inlinedAt: !2617)
!2621 = distinct !DIAssignID()
!2622 = !DILocation(line: 1002, column: 10, scope: !2595)
!2623 = !DILocation(line: 1003, column: 1, scope: !2595)
!2624 = !DILocation(line: 1002, column: 3, scope: !2595)
!2625 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !456, file: !456, line: 1006, type: !2626, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2628)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!260, !116, !80, !80, !80}
!2628 = !{!2629, !2630, !2631, !2632}
!2629 = !DILocalVariable(name: "n", arg: 1, scope: !2625, file: !456, line: 1006, type: !116)
!2630 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2625, file: !456, line: 1006, type: !80)
!2631 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2625, file: !456, line: 1007, type: !80)
!2632 = !DILocalVariable(name: "arg", arg: 4, scope: !2625, file: !456, line: 1007, type: !80)
!2633 = distinct !DIAssignID()
!2634 = !DILocation(line: 0, scope: !2625)
!2635 = !DILocalVariable(name: "o", scope: !2636, file: !456, line: 1018, type: !497)
!2636 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !456, file: !456, line: 1014, type: !2637, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!260, !116, !80, !80, !80, !118}
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2635}
!2640 = !DILocalVariable(name: "n", arg: 1, scope: !2636, file: !456, line: 1014, type: !116)
!2641 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2636, file: !456, line: 1014, type: !80)
!2642 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2636, file: !456, line: 1015, type: !80)
!2643 = !DILocalVariable(name: "arg", arg: 4, scope: !2636, file: !456, line: 1016, type: !80)
!2644 = !DILocalVariable(name: "argsize", arg: 5, scope: !2636, file: !456, line: 1016, type: !118)
!2645 = !DILocation(line: 0, scope: !2636, inlinedAt: !2646)
!2646 = distinct !DILocation(line: 1009, column: 10, scope: !2625)
!2647 = !DILocation(line: 1018, column: 3, scope: !2636, inlinedAt: !2646)
!2648 = !DILocation(line: 1018, column: 30, scope: !2636, inlinedAt: !2646)
!2649 = distinct !DIAssignID()
!2650 = distinct !DIAssignID()
!2651 = !DILocation(line: 0, scope: !1544, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1019, column: 3, scope: !2636, inlinedAt: !2646)
!2653 = !DILocation(line: 174, column: 12, scope: !1544, inlinedAt: !2652)
!2654 = distinct !DIAssignID()
!2655 = !DILocation(line: 175, column: 8, scope: !1557, inlinedAt: !2652)
!2656 = !DILocation(line: 175, column: 19, scope: !1557, inlinedAt: !2652)
!2657 = !DILocation(line: 176, column: 5, scope: !1557, inlinedAt: !2652)
!2658 = !DILocation(line: 177, column: 6, scope: !1544, inlinedAt: !2652)
!2659 = !DILocation(line: 177, column: 17, scope: !1544, inlinedAt: !2652)
!2660 = distinct !DIAssignID()
!2661 = !DILocation(line: 178, column: 6, scope: !1544, inlinedAt: !2652)
!2662 = !DILocation(line: 178, column: 18, scope: !1544, inlinedAt: !2652)
!2663 = distinct !DIAssignID()
!2664 = !DILocation(line: 1020, column: 10, scope: !2636, inlinedAt: !2646)
!2665 = !DILocation(line: 1021, column: 1, scope: !2636, inlinedAt: !2646)
!2666 = !DILocation(line: 1009, column: 3, scope: !2625)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 0, scope: !2636)
!2669 = !DILocation(line: 1018, column: 3, scope: !2636)
!2670 = !DILocation(line: 1018, column: 30, scope: !2636)
!2671 = distinct !DIAssignID()
!2672 = distinct !DIAssignID()
!2673 = !DILocation(line: 0, scope: !1544, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 1019, column: 3, scope: !2636)
!2675 = !DILocation(line: 174, column: 12, scope: !1544, inlinedAt: !2674)
!2676 = distinct !DIAssignID()
!2677 = !DILocation(line: 175, column: 8, scope: !1557, inlinedAt: !2674)
!2678 = !DILocation(line: 175, column: 19, scope: !1557, inlinedAt: !2674)
!2679 = !DILocation(line: 176, column: 5, scope: !1557, inlinedAt: !2674)
!2680 = !DILocation(line: 177, column: 6, scope: !1544, inlinedAt: !2674)
!2681 = !DILocation(line: 177, column: 17, scope: !1544, inlinedAt: !2674)
!2682 = distinct !DIAssignID()
!2683 = !DILocation(line: 178, column: 6, scope: !1544, inlinedAt: !2674)
!2684 = !DILocation(line: 178, column: 18, scope: !1544, inlinedAt: !2674)
!2685 = distinct !DIAssignID()
!2686 = !DILocation(line: 1020, column: 10, scope: !2636)
!2687 = !DILocation(line: 1021, column: 1, scope: !2636)
!2688 = !DILocation(line: 1020, column: 3, scope: !2636)
!2689 = distinct !DISubprogram(name: "quotearg_custom", scope: !456, file: !456, line: 1024, type: !2690, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!260, !80, !80, !80}
!2692 = !{!2693, !2694, !2695}
!2693 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2689, file: !456, line: 1024, type: !80)
!2694 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2689, file: !456, line: 1024, type: !80)
!2695 = !DILocalVariable(name: "arg", arg: 3, scope: !2689, file: !456, line: 1025, type: !80)
!2696 = distinct !DIAssignID()
!2697 = !DILocation(line: 0, scope: !2689)
!2698 = !DILocation(line: 0, scope: !2625, inlinedAt: !2699)
!2699 = distinct !DILocation(line: 1027, column: 10, scope: !2689)
!2700 = !DILocation(line: 0, scope: !2636, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 1009, column: 10, scope: !2625, inlinedAt: !2699)
!2702 = !DILocation(line: 1018, column: 3, scope: !2636, inlinedAt: !2701)
!2703 = !DILocation(line: 1018, column: 30, scope: !2636, inlinedAt: !2701)
!2704 = distinct !DIAssignID()
!2705 = distinct !DIAssignID()
!2706 = !DILocation(line: 0, scope: !1544, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1019, column: 3, scope: !2636, inlinedAt: !2701)
!2708 = !DILocation(line: 174, column: 12, scope: !1544, inlinedAt: !2707)
!2709 = distinct !DIAssignID()
!2710 = !DILocation(line: 175, column: 8, scope: !1557, inlinedAt: !2707)
!2711 = !DILocation(line: 175, column: 19, scope: !1557, inlinedAt: !2707)
!2712 = !DILocation(line: 176, column: 5, scope: !1557, inlinedAt: !2707)
!2713 = !DILocation(line: 177, column: 6, scope: !1544, inlinedAt: !2707)
!2714 = !DILocation(line: 177, column: 17, scope: !1544, inlinedAt: !2707)
!2715 = distinct !DIAssignID()
!2716 = !DILocation(line: 178, column: 6, scope: !1544, inlinedAt: !2707)
!2717 = !DILocation(line: 178, column: 18, scope: !1544, inlinedAt: !2707)
!2718 = distinct !DIAssignID()
!2719 = !DILocation(line: 1020, column: 10, scope: !2636, inlinedAt: !2701)
!2720 = !DILocation(line: 1021, column: 1, scope: !2636, inlinedAt: !2701)
!2721 = !DILocation(line: 1027, column: 3, scope: !2689)
!2722 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !456, file: !456, line: 1031, type: !2723, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!260, !80, !80, !80, !118}
!2725 = !{!2726, !2727, !2728, !2729}
!2726 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2722, file: !456, line: 1031, type: !80)
!2727 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2722, file: !456, line: 1031, type: !80)
!2728 = !DILocalVariable(name: "arg", arg: 3, scope: !2722, file: !456, line: 1032, type: !80)
!2729 = !DILocalVariable(name: "argsize", arg: 4, scope: !2722, file: !456, line: 1032, type: !118)
!2730 = distinct !DIAssignID()
!2731 = !DILocation(line: 0, scope: !2722)
!2732 = !DILocation(line: 0, scope: !2636, inlinedAt: !2733)
!2733 = distinct !DILocation(line: 1034, column: 10, scope: !2722)
!2734 = !DILocation(line: 1018, column: 3, scope: !2636, inlinedAt: !2733)
!2735 = !DILocation(line: 1018, column: 30, scope: !2636, inlinedAt: !2733)
!2736 = distinct !DIAssignID()
!2737 = distinct !DIAssignID()
!2738 = !DILocation(line: 0, scope: !1544, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1019, column: 3, scope: !2636, inlinedAt: !2733)
!2740 = !DILocation(line: 174, column: 12, scope: !1544, inlinedAt: !2739)
!2741 = distinct !DIAssignID()
!2742 = !DILocation(line: 175, column: 8, scope: !1557, inlinedAt: !2739)
!2743 = !DILocation(line: 175, column: 19, scope: !1557, inlinedAt: !2739)
!2744 = !DILocation(line: 176, column: 5, scope: !1557, inlinedAt: !2739)
!2745 = !DILocation(line: 177, column: 6, scope: !1544, inlinedAt: !2739)
!2746 = !DILocation(line: 177, column: 17, scope: !1544, inlinedAt: !2739)
!2747 = distinct !DIAssignID()
!2748 = !DILocation(line: 178, column: 6, scope: !1544, inlinedAt: !2739)
!2749 = !DILocation(line: 178, column: 18, scope: !1544, inlinedAt: !2739)
!2750 = distinct !DIAssignID()
!2751 = !DILocation(line: 1020, column: 10, scope: !2636, inlinedAt: !2733)
!2752 = !DILocation(line: 1021, column: 1, scope: !2636, inlinedAt: !2733)
!2753 = !DILocation(line: 1034, column: 3, scope: !2722)
!2754 = distinct !DISubprogram(name: "quote_n_mem", scope: !456, file: !456, line: 1049, type: !2755, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!80, !116, !80, !118}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !456, line: 1049, type: !116)
!2759 = !DILocalVariable(name: "arg", arg: 2, scope: !2754, file: !456, line: 1049, type: !80)
!2760 = !DILocalVariable(name: "argsize", arg: 3, scope: !2754, file: !456, line: 1049, type: !118)
!2761 = !DILocation(line: 0, scope: !2754)
!2762 = !DILocation(line: 1051, column: 10, scope: !2754)
!2763 = !DILocation(line: 1051, column: 3, scope: !2754)
!2764 = distinct !DISubprogram(name: "quote_mem", scope: !456, file: !456, line: 1055, type: !2765, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!80, !80, !118}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !456, line: 1055, type: !80)
!2769 = !DILocalVariable(name: "argsize", arg: 2, scope: !2764, file: !456, line: 1055, type: !118)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 0, scope: !2754, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1057, column: 10, scope: !2764)
!2773 = !DILocation(line: 1051, column: 10, scope: !2754, inlinedAt: !2772)
!2774 = !DILocation(line: 1057, column: 3, scope: !2764)
!2775 = distinct !DISubprogram(name: "quote_n", scope: !456, file: !456, line: 1061, type: !2776, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!80, !116, !80}
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !456, line: 1061, type: !116)
!2780 = !DILocalVariable(name: "arg", arg: 2, scope: !2775, file: !456, line: 1061, type: !80)
!2781 = !DILocation(line: 0, scope: !2775)
!2782 = !DILocation(line: 0, scope: !2754, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1063, column: 10, scope: !2775)
!2784 = !DILocation(line: 1051, column: 10, scope: !2754, inlinedAt: !2783)
!2785 = !DILocation(line: 1063, column: 3, scope: !2775)
!2786 = distinct !DISubprogram(name: "quote", scope: !456, file: !456, line: 1067, type: !2787, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!80, !80}
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "arg", arg: 1, scope: !2786, file: !456, line: 1067, type: !80)
!2791 = !DILocation(line: 0, scope: !2786)
!2792 = !DILocation(line: 0, scope: !2775, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1069, column: 10, scope: !2786)
!2794 = !DILocation(line: 0, scope: !2754, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1063, column: 10, scope: !2775, inlinedAt: !2793)
!2796 = !DILocation(line: 1051, column: 10, scope: !2754, inlinedAt: !2795)
!2797 = !DILocation(line: 1069, column: 3, scope: !2786)
!2798 = distinct !DISubprogram(name: "version_etc_arn", scope: !560, file: !560, line: 61, type: !2799, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !2836)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2801, !80, !80, !80, !2835, !118}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2803, file: !256, line: 51, baseType: !116, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2803, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2803, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2803, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2803, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2803, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2803, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2803, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2803, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2803, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2803, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2803, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2803, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2803, file: !256, line: 70, baseType: !2819, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2803, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2803, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2803, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2803, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2803, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2803, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2803, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2803, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2803, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2803, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2803, file: !256, line: 93, baseType: !2819, size: 64, offset: 1344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2803, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2803, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2803, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2803, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842}
!2837 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !560, line: 61, type: !2801)
!2838 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !560, line: 62, type: !80)
!2839 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !560, line: 62, type: !80)
!2840 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !560, line: 63, type: !80)
!2841 = !DILocalVariable(name: "authors", arg: 5, scope: !2798, file: !560, line: 64, type: !2835)
!2842 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2798, file: !560, line: 64, type: !118)
!2843 = !DILocation(line: 0, scope: !2798)
!2844 = !DILocation(line: 66, column: 7, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2798, file: !560, line: 66, column: 7)
!2846 = !DILocation(line: 66, column: 7, scope: !2798)
!2847 = !DILocation(line: 67, column: 5, scope: !2845)
!2848 = !DILocation(line: 69, column: 5, scope: !2845)
!2849 = !DILocation(line: 83, column: 3, scope: !2798)
!2850 = !DILocation(line: 85, column: 3, scope: !2798)
!2851 = !DILocation(line: 88, column: 3, scope: !2798)
!2852 = !DILocation(line: 95, column: 3, scope: !2798)
!2853 = !DILocation(line: 97, column: 3, scope: !2798)
!2854 = !DILocation(line: 105, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2798, file: !560, line: 98, column: 5)
!2856 = !DILocation(line: 106, column: 7, scope: !2855)
!2857 = !DILocation(line: 109, column: 7, scope: !2855)
!2858 = !DILocation(line: 110, column: 7, scope: !2855)
!2859 = !DILocation(line: 113, column: 7, scope: !2855)
!2860 = !DILocation(line: 115, column: 7, scope: !2855)
!2861 = !DILocation(line: 120, column: 7, scope: !2855)
!2862 = !DILocation(line: 122, column: 7, scope: !2855)
!2863 = !DILocation(line: 127, column: 7, scope: !2855)
!2864 = !DILocation(line: 129, column: 7, scope: !2855)
!2865 = !DILocation(line: 134, column: 7, scope: !2855)
!2866 = !DILocation(line: 137, column: 7, scope: !2855)
!2867 = !DILocation(line: 142, column: 7, scope: !2855)
!2868 = !DILocation(line: 145, column: 7, scope: !2855)
!2869 = !DILocation(line: 150, column: 7, scope: !2855)
!2870 = !DILocation(line: 154, column: 7, scope: !2855)
!2871 = !DILocation(line: 159, column: 7, scope: !2855)
!2872 = !DILocation(line: 163, column: 7, scope: !2855)
!2873 = !DILocation(line: 170, column: 7, scope: !2855)
!2874 = !DILocation(line: 174, column: 7, scope: !2855)
!2875 = !DILocation(line: 176, column: 1, scope: !2798)
!2876 = distinct !DISubprogram(name: "version_etc_ar", scope: !560, file: !560, line: 183, type: !2877, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2801, !80, !80, !80, !2835}
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885}
!2880 = !DILocalVariable(name: "stream", arg: 1, scope: !2876, file: !560, line: 183, type: !2801)
!2881 = !DILocalVariable(name: "command_name", arg: 2, scope: !2876, file: !560, line: 184, type: !80)
!2882 = !DILocalVariable(name: "package", arg: 3, scope: !2876, file: !560, line: 184, type: !80)
!2883 = !DILocalVariable(name: "version", arg: 4, scope: !2876, file: !560, line: 185, type: !80)
!2884 = !DILocalVariable(name: "authors", arg: 5, scope: !2876, file: !560, line: 185, type: !2835)
!2885 = !DILocalVariable(name: "n_authors", scope: !2876, file: !560, line: 187, type: !118)
!2886 = !DILocation(line: 0, scope: !2876)
!2887 = !DILocation(line: 189, column: 8, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2876, file: !560, line: 189, column: 3)
!2889 = !DILocation(line: 189, scope: !2888)
!2890 = !DILocation(line: 189, column: 23, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !560, line: 189, column: 3)
!2892 = !DILocation(line: 189, column: 3, scope: !2888)
!2893 = !DILocation(line: 189, column: 52, scope: !2891)
!2894 = distinct !{!2894, !2892, !2895, !869}
!2895 = !DILocation(line: 190, column: 5, scope: !2888)
!2896 = !DILocation(line: 191, column: 3, scope: !2876)
!2897 = !DILocation(line: 192, column: 1, scope: !2876)
!2898 = distinct !DISubprogram(name: "version_etc_va", scope: !560, file: !560, line: 199, type: !2899, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !2911)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2801, !80, !80, !80, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !347, line: 52, baseType: !2902)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !349, line: 12, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !560, baseType: !2904)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2904, file: !560, line: 192, baseType: !115, size: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2904, file: !560, line: 192, baseType: !115, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2904, file: !560, line: 192, baseType: !115, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2904, file: !560, line: 192, baseType: !116, size: 32, offset: 192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2904, file: !560, line: 192, baseType: !116, size: 32, offset: 224)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918}
!2912 = !DILocalVariable(name: "stream", arg: 1, scope: !2898, file: !560, line: 199, type: !2801)
!2913 = !DILocalVariable(name: "command_name", arg: 2, scope: !2898, file: !560, line: 200, type: !80)
!2914 = !DILocalVariable(name: "package", arg: 3, scope: !2898, file: !560, line: 200, type: !80)
!2915 = !DILocalVariable(name: "version", arg: 4, scope: !2898, file: !560, line: 201, type: !80)
!2916 = !DILocalVariable(name: "authors", arg: 5, scope: !2898, file: !560, line: 201, type: !2901)
!2917 = !DILocalVariable(name: "n_authors", scope: !2898, file: !560, line: 203, type: !118)
!2918 = !DILocalVariable(name: "authtab", scope: !2898, file: !560, line: 204, type: !2919)
!2919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!2920 = distinct !DIAssignID()
!2921 = !DILocation(line: 0, scope: !2898)
!2922 = !DILocation(line: 204, column: 3, scope: !2898)
!2923 = !DILocation(line: 208, column: 35, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2925, file: !560, line: 206, column: 3)
!2925 = distinct !DILexicalBlock(scope: !2898, file: !560, line: 206, column: 3)
!2926 = !DILocation(line: 208, column: 33, scope: !2924)
!2927 = !DILocation(line: 208, column: 67, scope: !2924)
!2928 = !DILocation(line: 206, column: 3, scope: !2925)
!2929 = !DILocation(line: 208, column: 14, scope: !2924)
!2930 = !DILocation(line: 0, scope: !2925)
!2931 = !DILocation(line: 211, column: 3, scope: !2898)
!2932 = !DILocation(line: 213, column: 1, scope: !2898)
!2933 = distinct !DISubprogram(name: "version_etc", scope: !560, file: !560, line: 230, type: !2934, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{null, !2801, !80, !80, !80, null}
!2936 = !{!2937, !2938, !2939, !2940, !2941}
!2937 = !DILocalVariable(name: "stream", arg: 1, scope: !2933, file: !560, line: 230, type: !2801)
!2938 = !DILocalVariable(name: "command_name", arg: 2, scope: !2933, file: !560, line: 231, type: !80)
!2939 = !DILocalVariable(name: "package", arg: 3, scope: !2933, file: !560, line: 231, type: !80)
!2940 = !DILocalVariable(name: "version", arg: 4, scope: !2933, file: !560, line: 232, type: !80)
!2941 = !DILocalVariable(name: "authors", scope: !2933, file: !560, line: 234, type: !2901)
!2942 = distinct !DIAssignID()
!2943 = !DILocation(line: 0, scope: !2933)
!2944 = !DILocation(line: 234, column: 3, scope: !2933)
!2945 = !DILocation(line: 235, column: 3, scope: !2933)
!2946 = !DILocation(line: 236, column: 3, scope: !2933)
!2947 = !DILocation(line: 237, column: 3, scope: !2933)
!2948 = !DILocation(line: 238, column: 1, scope: !2933)
!2949 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !560, file: !560, line: 241, type: !387, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !683)
!2950 = !DILocation(line: 243, column: 3, scope: !2949)
!2951 = !DILocation(line: 248, column: 3, scope: !2949)
!2952 = !DILocation(line: 254, column: 3, scope: !2949)
!2953 = !DILocation(line: 259, column: 3, scope: !2949)
!2954 = !DILocation(line: 261, column: 1, scope: !2949)
!2955 = distinct !DISubprogram(name: "xnrealloc", scope: !2956, file: !2956, line: 147, type: !2957, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2959)
!2956 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!115, !115, !118, !118}
!2959 = !{!2960, !2961, !2962}
!2960 = !DILocalVariable(name: "p", arg: 1, scope: !2955, file: !2956, line: 147, type: !115)
!2961 = !DILocalVariable(name: "n", arg: 2, scope: !2955, file: !2956, line: 147, type: !118)
!2962 = !DILocalVariable(name: "s", arg: 3, scope: !2955, file: !2956, line: 147, type: !118)
!2963 = !DILocation(line: 0, scope: !2955)
!2964 = !DILocalVariable(name: "p", arg: 1, scope: !2965, file: !690, line: 83, type: !115)
!2965 = distinct !DISubprogram(name: "xreallocarray", scope: !690, file: !690, line: 83, type: !2957, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2966)
!2966 = !{!2964, !2967, !2968}
!2967 = !DILocalVariable(name: "n", arg: 2, scope: !2965, file: !690, line: 83, type: !118)
!2968 = !DILocalVariable(name: "s", arg: 3, scope: !2965, file: !690, line: 83, type: !118)
!2969 = !DILocation(line: 0, scope: !2965, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 149, column: 10, scope: !2955)
!2971 = !DILocation(line: 85, column: 25, scope: !2965, inlinedAt: !2970)
!2972 = !DILocalVariable(name: "p", arg: 1, scope: !2973, file: !690, line: 37, type: !115)
!2973 = distinct !DISubprogram(name: "check_nonnull", scope: !690, file: !690, line: 37, type: !2974, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!115, !115}
!2976 = !{!2972}
!2977 = !DILocation(line: 0, scope: !2973, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 85, column: 10, scope: !2965, inlinedAt: !2970)
!2979 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !2978)
!2980 = distinct !DILexicalBlock(scope: !2973, file: !690, line: 39, column: 7)
!2981 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !2978)
!2982 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !2978)
!2983 = !DILocation(line: 149, column: 3, scope: !2955)
!2984 = !DILocation(line: 0, scope: !2965)
!2985 = !DILocation(line: 85, column: 25, scope: !2965)
!2986 = !DILocation(line: 0, scope: !2973, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 85, column: 10, scope: !2965)
!2988 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !2987)
!2989 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !2987)
!2990 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !2987)
!2991 = !DILocation(line: 85, column: 3, scope: !2965)
!2992 = distinct !DISubprogram(name: "xmalloc", scope: !690, file: !690, line: 47, type: !2993, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!115, !118}
!2995 = !{!2996}
!2996 = !DILocalVariable(name: "s", arg: 1, scope: !2992, file: !690, line: 47, type: !118)
!2997 = !DILocation(line: 0, scope: !2992)
!2998 = !DILocation(line: 49, column: 25, scope: !2992)
!2999 = !DILocation(line: 0, scope: !2973, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 49, column: 10, scope: !2992)
!3001 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3000)
!3002 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3000)
!3003 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3000)
!3004 = !DILocation(line: 49, column: 3, scope: !2992)
!3005 = !DISubprogram(name: "malloc", scope: !943, file: !943, line: 540, type: !2993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3006 = distinct !DISubprogram(name: "ximalloc", scope: !690, file: !690, line: 53, type: !3007, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3009)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!115, !709}
!3009 = !{!3010}
!3010 = !DILocalVariable(name: "s", arg: 1, scope: !3006, file: !690, line: 53, type: !709)
!3011 = !DILocation(line: 0, scope: !3006)
!3012 = !DILocalVariable(name: "s", arg: 1, scope: !3013, file: !3014, line: 55, type: !709)
!3013 = distinct !DISubprogram(name: "imalloc", scope: !3014, file: !3014, line: 55, type: !3007, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3015)
!3014 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3015 = !{!3012}
!3016 = !DILocation(line: 0, scope: !3013, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 55, column: 25, scope: !3006)
!3018 = !DILocation(line: 57, column: 26, scope: !3013, inlinedAt: !3017)
!3019 = !DILocation(line: 0, scope: !2973, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 55, column: 10, scope: !3006)
!3021 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3020)
!3022 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3020)
!3023 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3020)
!3024 = !DILocation(line: 55, column: 3, scope: !3006)
!3025 = distinct !DISubprogram(name: "xcharalloc", scope: !690, file: !690, line: 59, type: !3026, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!260, !118}
!3028 = !{!3029}
!3029 = !DILocalVariable(name: "n", arg: 1, scope: !3025, file: !690, line: 59, type: !118)
!3030 = !DILocation(line: 0, scope: !3025)
!3031 = !DILocation(line: 0, scope: !2992, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 61, column: 10, scope: !3025)
!3033 = !DILocation(line: 49, column: 25, scope: !2992, inlinedAt: !3032)
!3034 = !DILocation(line: 0, scope: !2973, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 49, column: 10, scope: !2992, inlinedAt: !3032)
!3036 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3035)
!3037 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3035)
!3038 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3035)
!3039 = !DILocation(line: 61, column: 3, scope: !3025)
!3040 = distinct !DISubprogram(name: "xrealloc", scope: !690, file: !690, line: 68, type: !3041, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!115, !115, !118}
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3040, file: !690, line: 68, type: !115)
!3045 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !690, line: 68, type: !118)
!3046 = !DILocation(line: 0, scope: !3040)
!3047 = !DILocalVariable(name: "ptr", arg: 1, scope: !3048, file: !3049, line: 2057, type: !115)
!3048 = distinct !DISubprogram(name: "rpl_realloc", scope: !3049, file: !3049, line: 2057, type: !3041, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3050)
!3049 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3050 = !{!3047, !3051}
!3051 = !DILocalVariable(name: "size", arg: 2, scope: !3048, file: !3049, line: 2057, type: !118)
!3052 = !DILocation(line: 0, scope: !3048, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 70, column: 25, scope: !3040)
!3054 = !DILocation(line: 2059, column: 24, scope: !3048, inlinedAt: !3053)
!3055 = !DILocation(line: 2059, column: 10, scope: !3048, inlinedAt: !3053)
!3056 = !DILocation(line: 0, scope: !2973, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 70, column: 10, scope: !3040)
!3058 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3057)
!3059 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3057)
!3060 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3057)
!3061 = !DILocation(line: 70, column: 3, scope: !3040)
!3062 = !DISubprogram(name: "realloc", scope: !943, file: !943, line: 551, type: !3041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3063 = distinct !DISubprogram(name: "xirealloc", scope: !690, file: !690, line: 74, type: !3064, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!115, !115, !709}
!3066 = !{!3067, !3068}
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !690, line: 74, type: !115)
!3068 = !DILocalVariable(name: "s", arg: 2, scope: !3063, file: !690, line: 74, type: !709)
!3069 = !DILocation(line: 0, scope: !3063)
!3070 = !DILocalVariable(name: "p", arg: 1, scope: !3071, file: !3014, line: 66, type: !115)
!3071 = distinct !DISubprogram(name: "irealloc", scope: !3014, file: !3014, line: 66, type: !3064, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3072)
!3072 = !{!3070, !3073}
!3073 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !3014, line: 66, type: !709)
!3074 = !DILocation(line: 0, scope: !3071, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 76, column: 25, scope: !3063)
!3076 = !DILocation(line: 0, scope: !3048, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 68, column: 26, scope: !3071, inlinedAt: !3075)
!3078 = !DILocation(line: 2059, column: 24, scope: !3048, inlinedAt: !3077)
!3079 = !DILocation(line: 2059, column: 10, scope: !3048, inlinedAt: !3077)
!3080 = !DILocation(line: 0, scope: !2973, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 76, column: 10, scope: !3063)
!3082 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3081)
!3083 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3081)
!3084 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3081)
!3085 = !DILocation(line: 76, column: 3, scope: !3063)
!3086 = distinct !DISubprogram(name: "xireallocarray", scope: !690, file: !690, line: 89, type: !3087, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!115, !115, !709, !709}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !690, line: 89, type: !115)
!3091 = !DILocalVariable(name: "n", arg: 2, scope: !3086, file: !690, line: 89, type: !709)
!3092 = !DILocalVariable(name: "s", arg: 3, scope: !3086, file: !690, line: 89, type: !709)
!3093 = !DILocation(line: 0, scope: !3086)
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3095, file: !3014, line: 98, type: !115)
!3095 = distinct !DISubprogram(name: "ireallocarray", scope: !3014, file: !3014, line: 98, type: !3087, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3096)
!3096 = !{!3094, !3097, !3098}
!3097 = !DILocalVariable(name: "n", arg: 2, scope: !3095, file: !3014, line: 98, type: !709)
!3098 = !DILocalVariable(name: "s", arg: 3, scope: !3095, file: !3014, line: 98, type: !709)
!3099 = !DILocation(line: 0, scope: !3095, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 91, column: 25, scope: !3086)
!3101 = !DILocation(line: 101, column: 13, scope: !3095, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !2973, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 91, column: 10, scope: !3086)
!3104 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3103)
!3105 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3103)
!3106 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3103)
!3107 = !DILocation(line: 91, column: 3, scope: !3086)
!3108 = distinct !DISubprogram(name: "xnmalloc", scope: !690, file: !690, line: 98, type: !3109, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!115, !118, !118}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !690, line: 98, type: !118)
!3113 = !DILocalVariable(name: "s", arg: 2, scope: !3108, file: !690, line: 98, type: !118)
!3114 = !DILocation(line: 0, scope: !3108)
!3115 = !DILocation(line: 0, scope: !2965, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 100, column: 10, scope: !3108)
!3117 = !DILocation(line: 85, column: 25, scope: !2965, inlinedAt: !3116)
!3118 = !DILocation(line: 0, scope: !2973, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 85, column: 10, scope: !2965, inlinedAt: !3116)
!3120 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3119)
!3121 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3119)
!3122 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3119)
!3123 = !DILocation(line: 100, column: 3, scope: !3108)
!3124 = distinct !DISubprogram(name: "xinmalloc", scope: !690, file: !690, line: 104, type: !3125, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!115, !709, !709}
!3127 = !{!3128, !3129}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !690, line: 104, type: !709)
!3129 = !DILocalVariable(name: "s", arg: 2, scope: !3124, file: !690, line: 104, type: !709)
!3130 = !DILocation(line: 0, scope: !3124)
!3131 = !DILocation(line: 0, scope: !3086, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 106, column: 10, scope: !3124)
!3133 = !DILocation(line: 0, scope: !3095, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 91, column: 25, scope: !3086, inlinedAt: !3132)
!3135 = !DILocation(line: 101, column: 13, scope: !3095, inlinedAt: !3134)
!3136 = !DILocation(line: 0, scope: !2973, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 91, column: 10, scope: !3086, inlinedAt: !3132)
!3138 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3137)
!3139 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3137)
!3140 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3137)
!3141 = !DILocation(line: 106, column: 3, scope: !3124)
!3142 = distinct !DISubprogram(name: "x2realloc", scope: !690, file: !690, line: 116, type: !3143, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!115, !115, !696}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "p", arg: 1, scope: !3142, file: !690, line: 116, type: !115)
!3147 = !DILocalVariable(name: "ps", arg: 2, scope: !3142, file: !690, line: 116, type: !696)
!3148 = !DILocation(line: 0, scope: !3142)
!3149 = !DILocation(line: 0, scope: !693, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 118, column: 10, scope: !3142)
!3151 = !DILocation(line: 178, column: 14, scope: !693, inlinedAt: !3150)
!3152 = !DILocation(line: 180, column: 9, scope: !3153, inlinedAt: !3150)
!3153 = distinct !DILexicalBlock(scope: !693, file: !690, line: 180, column: 7)
!3154 = !DILocation(line: 180, column: 7, scope: !693, inlinedAt: !3150)
!3155 = !DILocation(line: 182, column: 13, scope: !3156, inlinedAt: !3150)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !690, line: 182, column: 11)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !690, line: 181, column: 5)
!3158 = !DILocation(line: 182, column: 11, scope: !3157, inlinedAt: !3150)
!3159 = !DILocation(line: 197, column: 11, scope: !3160, inlinedAt: !3150)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !690, line: 197, column: 11)
!3161 = distinct !DILexicalBlock(scope: !3153, file: !690, line: 195, column: 5)
!3162 = !DILocation(line: 197, column: 11, scope: !3161, inlinedAt: !3150)
!3163 = !DILocation(line: 198, column: 9, scope: !3160, inlinedAt: !3150)
!3164 = !DILocation(line: 0, scope: !2965, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 201, column: 7, scope: !693, inlinedAt: !3150)
!3166 = !DILocation(line: 85, column: 25, scope: !2965, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !2973, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 85, column: 10, scope: !2965, inlinedAt: !3165)
!3169 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3168)
!3170 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3168)
!3171 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3168)
!3172 = !DILocation(line: 202, column: 7, scope: !693, inlinedAt: !3150)
!3173 = !DILocation(line: 118, column: 3, scope: !3142)
!3174 = !DILocation(line: 0, scope: !693)
!3175 = !DILocation(line: 178, column: 14, scope: !693)
!3176 = !DILocation(line: 180, column: 9, scope: !3153)
!3177 = !DILocation(line: 180, column: 7, scope: !693)
!3178 = !DILocation(line: 182, column: 13, scope: !3156)
!3179 = !DILocation(line: 182, column: 11, scope: !3157)
!3180 = !DILocation(line: 190, column: 30, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3156, file: !690, line: 183, column: 9)
!3182 = !DILocation(line: 191, column: 16, scope: !3181)
!3183 = !DILocation(line: 191, column: 13, scope: !3181)
!3184 = !DILocation(line: 192, column: 9, scope: !3181)
!3185 = !DILocation(line: 197, column: 11, scope: !3160)
!3186 = !DILocation(line: 197, column: 11, scope: !3161)
!3187 = !DILocation(line: 198, column: 9, scope: !3160)
!3188 = !DILocation(line: 0, scope: !2965, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 201, column: 7, scope: !693)
!3190 = !DILocation(line: 85, column: 25, scope: !2965, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !2973, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 85, column: 10, scope: !2965, inlinedAt: !3189)
!3193 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3192)
!3196 = !DILocation(line: 202, column: 7, scope: !693)
!3197 = !DILocation(line: 203, column: 3, scope: !693)
!3198 = !DILocation(line: 0, scope: !705)
!3199 = !DILocation(line: 230, column: 14, scope: !705)
!3200 = !DILocation(line: 238, column: 7, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !705, file: !690, line: 238, column: 7)
!3202 = !DILocation(line: 238, column: 7, scope: !705)
!3203 = !DILocation(line: 240, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !705, file: !690, line: 240, column: 7)
!3205 = !DILocation(line: 240, column: 18, scope: !3204)
!3206 = !DILocation(line: 253, column: 8, scope: !705)
!3207 = !DILocation(line: 256, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !705, file: !690, line: 256, column: 7)
!3209 = !DILocation(line: 256, column: 7, scope: !705)
!3210 = !DILocation(line: 258, column: 27, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !690, line: 257, column: 5)
!3212 = !DILocation(line: 259, column: 32, scope: !3211)
!3213 = !DILocation(line: 260, column: 5, scope: !3211)
!3214 = !DILocation(line: 262, column: 9, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !705, file: !690, line: 262, column: 7)
!3216 = !DILocation(line: 262, column: 7, scope: !705)
!3217 = !DILocation(line: 263, column: 9, scope: !3215)
!3218 = !DILocation(line: 263, column: 5, scope: !3215)
!3219 = !DILocation(line: 264, column: 9, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !705, file: !690, line: 264, column: 7)
!3221 = !DILocation(line: 264, column: 14, scope: !3220)
!3222 = !DILocation(line: 265, column: 7, scope: !3220)
!3223 = !DILocation(line: 265, column: 11, scope: !3220)
!3224 = !DILocation(line: 266, column: 11, scope: !3220)
!3225 = !DILocation(line: 267, column: 14, scope: !3220)
!3226 = !DILocation(line: 264, column: 7, scope: !705)
!3227 = !DILocation(line: 268, column: 5, scope: !3220)
!3228 = !DILocation(line: 0, scope: !3040, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 269, column: 8, scope: !705)
!3230 = !DILocation(line: 0, scope: !3048, inlinedAt: !3231)
!3231 = distinct !DILocation(line: 70, column: 25, scope: !3040, inlinedAt: !3229)
!3232 = !DILocation(line: 2059, column: 24, scope: !3048, inlinedAt: !3231)
!3233 = !DILocation(line: 2059, column: 10, scope: !3048, inlinedAt: !3231)
!3234 = !DILocation(line: 0, scope: !2973, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 70, column: 10, scope: !3040, inlinedAt: !3229)
!3236 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3235)
!3237 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3235)
!3238 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3235)
!3239 = !DILocation(line: 270, column: 7, scope: !705)
!3240 = !DILocation(line: 271, column: 3, scope: !705)
!3241 = distinct !DISubprogram(name: "xzalloc", scope: !690, file: !690, line: 279, type: !2993, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3242)
!3242 = !{!3243}
!3243 = !DILocalVariable(name: "s", arg: 1, scope: !3241, file: !690, line: 279, type: !118)
!3244 = !DILocation(line: 0, scope: !3241)
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !690, line: 294, type: !118)
!3246 = distinct !DISubprogram(name: "xcalloc", scope: !690, file: !690, line: 294, type: !3109, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3247)
!3247 = !{!3245, !3248}
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !690, line: 294, type: !118)
!3249 = !DILocation(line: 0, scope: !3246, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 281, column: 10, scope: !3241)
!3251 = !DILocation(line: 296, column: 25, scope: !3246, inlinedAt: !3250)
!3252 = !DILocation(line: 0, scope: !2973, inlinedAt: !3253)
!3253 = distinct !DILocation(line: 296, column: 10, scope: !3246, inlinedAt: !3250)
!3254 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3253)
!3255 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3253)
!3256 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3253)
!3257 = !DILocation(line: 281, column: 3, scope: !3241)
!3258 = !DISubprogram(name: "calloc", scope: !943, file: !943, line: 543, type: !3109, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3259 = !DILocation(line: 0, scope: !3246)
!3260 = !DILocation(line: 296, column: 25, scope: !3246)
!3261 = !DILocation(line: 0, scope: !2973, inlinedAt: !3262)
!3262 = distinct !DILocation(line: 296, column: 10, scope: !3246)
!3263 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3262)
!3264 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3262)
!3265 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3262)
!3266 = !DILocation(line: 296, column: 3, scope: !3246)
!3267 = distinct !DISubprogram(name: "xizalloc", scope: !690, file: !690, line: 285, type: !3007, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3268)
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "s", arg: 1, scope: !3267, file: !690, line: 285, type: !709)
!3270 = !DILocation(line: 0, scope: !3267)
!3271 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !690, line: 300, type: !709)
!3272 = distinct !DISubprogram(name: "xicalloc", scope: !690, file: !690, line: 300, type: !3125, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3273)
!3273 = !{!3271, !3274}
!3274 = !DILocalVariable(name: "s", arg: 2, scope: !3272, file: !690, line: 300, type: !709)
!3275 = !DILocation(line: 0, scope: !3272, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 287, column: 10, scope: !3267)
!3277 = !DILocalVariable(name: "n", arg: 1, scope: !3278, file: !3014, line: 77, type: !709)
!3278 = distinct !DISubprogram(name: "icalloc", scope: !3014, file: !3014, line: 77, type: !3125, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3279)
!3279 = !{!3277, !3280}
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3278, file: !3014, line: 77, type: !709)
!3281 = !DILocation(line: 0, scope: !3278, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 302, column: 25, scope: !3272, inlinedAt: !3276)
!3283 = !DILocation(line: 91, column: 10, scope: !3278, inlinedAt: !3282)
!3284 = !DILocation(line: 0, scope: !2973, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 302, column: 10, scope: !3272, inlinedAt: !3276)
!3286 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3285)
!3287 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3285)
!3288 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3285)
!3289 = !DILocation(line: 287, column: 3, scope: !3267)
!3290 = !DILocation(line: 0, scope: !3272)
!3291 = !DILocation(line: 0, scope: !3278, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 302, column: 25, scope: !3272)
!3293 = !DILocation(line: 91, column: 10, scope: !3278, inlinedAt: !3292)
!3294 = !DILocation(line: 0, scope: !2973, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 302, column: 10, scope: !3272)
!3296 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3295)
!3297 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3295)
!3298 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3295)
!3299 = !DILocation(line: 302, column: 3, scope: !3272)
!3300 = distinct !DISubprogram(name: "xmemdup", scope: !690, file: !690, line: 310, type: !3301, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3303)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!115, !967, !118}
!3303 = !{!3304, !3305}
!3304 = !DILocalVariable(name: "p", arg: 1, scope: !3300, file: !690, line: 310, type: !967)
!3305 = !DILocalVariable(name: "s", arg: 2, scope: !3300, file: !690, line: 310, type: !118)
!3306 = !DILocation(line: 0, scope: !3300)
!3307 = !DILocation(line: 0, scope: !2992, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 312, column: 18, scope: !3300)
!3309 = !DILocation(line: 49, column: 25, scope: !2992, inlinedAt: !3308)
!3310 = !DILocation(line: 0, scope: !2973, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 49, column: 10, scope: !2992, inlinedAt: !3308)
!3312 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3311)
!3313 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3311)
!3314 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3311)
!3315 = !DILocalVariable(name: "__dest", arg: 1, scope: !3316, file: !1447, line: 26, type: !3319)
!3316 = distinct !DISubprogram(name: "memcpy", scope: !1447, file: !1447, line: 26, type: !3317, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3320)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!115, !3319, !966, !118}
!3319 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!3320 = !{!3315, !3321, !3322}
!3321 = !DILocalVariable(name: "__src", arg: 2, scope: !3316, file: !1447, line: 26, type: !966)
!3322 = !DILocalVariable(name: "__len", arg: 3, scope: !3316, file: !1447, line: 26, type: !118)
!3323 = !DILocation(line: 0, scope: !3316, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 312, column: 10, scope: !3300)
!3325 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3324)
!3326 = !DILocation(line: 312, column: 3, scope: !3300)
!3327 = distinct !DISubprogram(name: "ximemdup", scope: !690, file: !690, line: 316, type: !3328, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!115, !967, !709}
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "p", arg: 1, scope: !3327, file: !690, line: 316, type: !967)
!3332 = !DILocalVariable(name: "s", arg: 2, scope: !3327, file: !690, line: 316, type: !709)
!3333 = !DILocation(line: 0, scope: !3327)
!3334 = !DILocation(line: 0, scope: !3006, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 318, column: 18, scope: !3327)
!3336 = !DILocation(line: 0, scope: !3013, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 55, column: 25, scope: !3006, inlinedAt: !3335)
!3338 = !DILocation(line: 57, column: 26, scope: !3013, inlinedAt: !3337)
!3339 = !DILocation(line: 0, scope: !2973, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 55, column: 10, scope: !3006, inlinedAt: !3335)
!3341 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3340)
!3342 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3340)
!3343 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3340)
!3344 = !DILocation(line: 0, scope: !3316, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 318, column: 10, scope: !3327)
!3346 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3345)
!3347 = !DILocation(line: 318, column: 3, scope: !3327)
!3348 = distinct !DISubprogram(name: "ximemdup0", scope: !690, file: !690, line: 325, type: !3349, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!260, !967, !709}
!3351 = !{!3352, !3353, !3354}
!3352 = !DILocalVariable(name: "p", arg: 1, scope: !3348, file: !690, line: 325, type: !967)
!3353 = !DILocalVariable(name: "s", arg: 2, scope: !3348, file: !690, line: 325, type: !709)
!3354 = !DILocalVariable(name: "result", scope: !3348, file: !690, line: 327, type: !260)
!3355 = !DILocation(line: 0, scope: !3348)
!3356 = !DILocation(line: 327, column: 30, scope: !3348)
!3357 = !DILocation(line: 0, scope: !3006, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 327, column: 18, scope: !3348)
!3359 = !DILocation(line: 0, scope: !3013, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 55, column: 25, scope: !3006, inlinedAt: !3358)
!3361 = !DILocation(line: 57, column: 26, scope: !3013, inlinedAt: !3360)
!3362 = !DILocation(line: 0, scope: !2973, inlinedAt: !3363)
!3363 = distinct !DILocation(line: 55, column: 10, scope: !3006, inlinedAt: !3358)
!3364 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3363)
!3365 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3363)
!3366 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3363)
!3367 = !DILocation(line: 328, column: 3, scope: !3348)
!3368 = !DILocation(line: 328, column: 13, scope: !3348)
!3369 = !DILocation(line: 0, scope: !3316, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 329, column: 10, scope: !3348)
!3371 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3370)
!3372 = !DILocation(line: 329, column: 3, scope: !3348)
!3373 = distinct !DISubprogram(name: "xstrdup", scope: !690, file: !690, line: 335, type: !945, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !689, retainedNodes: !3374)
!3374 = !{!3375}
!3375 = !DILocalVariable(name: "string", arg: 1, scope: !3373, file: !690, line: 335, type: !80)
!3376 = !DILocation(line: 0, scope: !3373)
!3377 = !DILocation(line: 337, column: 27, scope: !3373)
!3378 = !DILocation(line: 337, column: 43, scope: !3373)
!3379 = !DILocation(line: 0, scope: !3300, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 337, column: 10, scope: !3373)
!3381 = !DILocation(line: 0, scope: !2992, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 312, column: 18, scope: !3300, inlinedAt: !3380)
!3383 = !DILocation(line: 49, column: 25, scope: !2992, inlinedAt: !3382)
!3384 = !DILocation(line: 0, scope: !2973, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 49, column: 10, scope: !2992, inlinedAt: !3382)
!3386 = !DILocation(line: 39, column: 8, scope: !2980, inlinedAt: !3385)
!3387 = !DILocation(line: 39, column: 7, scope: !2973, inlinedAt: !3385)
!3388 = !DILocation(line: 40, column: 5, scope: !2980, inlinedAt: !3385)
!3389 = !DILocation(line: 0, scope: !3316, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 312, column: 10, scope: !3300, inlinedAt: !3380)
!3391 = !DILocation(line: 29, column: 10, scope: !3316, inlinedAt: !3390)
!3392 = !DILocation(line: 337, column: 3, scope: !3373)
!3393 = distinct !DISubprogram(name: "xalloc_die", scope: !653, file: !653, line: 32, type: !387, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !3394)
!3394 = !{!3395}
!3395 = !DILocalVariable(name: "__errstatus", scope: !3396, file: !653, line: 34, type: !3397)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !653, line: 34, column: 3)
!3397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3398 = !DILocation(line: 34, column: 3, scope: !3396)
!3399 = !DILocation(line: 0, scope: !3396)
!3400 = !DILocation(line: 40, column: 3, scope: !3393)
!3401 = distinct !DISubprogram(name: "close_stream", scope: !727, file: !727, line: 55, type: !3402, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3438)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!116, !3404}
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3406)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3407)
!3407 = !{!3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3406, file: !256, line: 51, baseType: !116, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3406, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3406, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3406, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3406, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3406, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3406, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3406, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3406, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3406, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3406, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3406, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3406, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3406, file: !256, line: 70, baseType: !3422, size: 64, offset: 832)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3406, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3406, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3406, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3406, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3406, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3406, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3406, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3406, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3406, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3406, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3406, file: !256, line: 93, baseType: !3422, size: 64, offset: 1344)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3406, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3406, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3406, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3406, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3438 = !{!3439, !3440, !3442, !3443}
!3439 = !DILocalVariable(name: "stream", arg: 1, scope: !3401, file: !727, line: 55, type: !3404)
!3440 = !DILocalVariable(name: "some_pending", scope: !3401, file: !727, line: 57, type: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!3442 = !DILocalVariable(name: "prev_fail", scope: !3401, file: !727, line: 58, type: !3441)
!3443 = !DILocalVariable(name: "fclose_fail", scope: !3401, file: !727, line: 59, type: !3441)
!3444 = !DILocation(line: 0, scope: !3401)
!3445 = !DILocation(line: 57, column: 30, scope: !3401)
!3446 = !DILocalVariable(name: "__stream", arg: 1, scope: !3447, file: !1197, line: 135, type: !3404)
!3447 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1197, file: !1197, line: 135, type: !3402, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !3448)
!3448 = !{!3446}
!3449 = !DILocation(line: 0, scope: !3447, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 58, column: 27, scope: !3401)
!3451 = !DILocation(line: 137, column: 10, scope: !3447, inlinedAt: !3450)
!3452 = !{!1206, !823, i64 0}
!3453 = !DILocation(line: 58, column: 43, scope: !3401)
!3454 = !DILocation(line: 59, column: 29, scope: !3401)
!3455 = !DILocation(line: 59, column: 45, scope: !3401)
!3456 = !DILocation(line: 69, column: 17, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3401, file: !727, line: 69, column: 7)
!3458 = !DILocation(line: 57, column: 50, scope: !3401)
!3459 = !DILocation(line: 69, column: 33, scope: !3457)
!3460 = !DILocation(line: 69, column: 53, scope: !3457)
!3461 = !DILocation(line: 69, column: 59, scope: !3457)
!3462 = !DILocation(line: 69, column: 7, scope: !3401)
!3463 = !DILocation(line: 71, column: 11, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3457, file: !727, line: 70, column: 5)
!3465 = !DILocation(line: 72, column: 9, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3464, file: !727, line: 71, column: 11)
!3467 = !DILocation(line: 72, column: 15, scope: !3466)
!3468 = !DILocation(line: 77, column: 1, scope: !3401)
!3469 = !DISubprogram(name: "__fpending", scope: !3470, file: !3470, line: 75, type: !3471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3470 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!118, !3404}
!3473 = distinct !DISubprogram(name: "rpl_fclose", scope: !729, file: !729, line: 58, type: !3474, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3510)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!116, !3476}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3478)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3478, file: !256, line: 51, baseType: !116, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3478, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3478, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3478, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3478, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3478, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3478, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3478, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3478, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3478, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3478, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3478, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3478, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3478, file: !256, line: 70, baseType: !3494, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3478, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3478, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3478, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3478, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3478, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3478, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3478, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3478, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3478, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3478, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3478, file: !256, line: 93, baseType: !3494, size: 64, offset: 1344)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3478, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3478, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3478, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3478, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3510 = !{!3511, !3512, !3513, !3514}
!3511 = !DILocalVariable(name: "fp", arg: 1, scope: !3473, file: !729, line: 58, type: !3476)
!3512 = !DILocalVariable(name: "saved_errno", scope: !3473, file: !729, line: 60, type: !116)
!3513 = !DILocalVariable(name: "fd", scope: !3473, file: !729, line: 63, type: !116)
!3514 = !DILocalVariable(name: "result", scope: !3473, file: !729, line: 74, type: !116)
!3515 = !DILocation(line: 0, scope: !3473)
!3516 = !DILocation(line: 63, column: 12, scope: !3473)
!3517 = !DILocation(line: 64, column: 10, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3473, file: !729, line: 64, column: 7)
!3519 = !DILocation(line: 64, column: 7, scope: !3473)
!3520 = !DILocation(line: 65, column: 12, scope: !3518)
!3521 = !DILocation(line: 65, column: 5, scope: !3518)
!3522 = !DILocation(line: 70, column: 9, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3473, file: !729, line: 70, column: 7)
!3524 = !DILocation(line: 70, column: 23, scope: !3523)
!3525 = !DILocation(line: 70, column: 33, scope: !3523)
!3526 = !DILocation(line: 70, column: 26, scope: !3523)
!3527 = !DILocation(line: 70, column: 59, scope: !3523)
!3528 = !DILocation(line: 71, column: 7, scope: !3523)
!3529 = !DILocation(line: 71, column: 10, scope: !3523)
!3530 = !DILocation(line: 70, column: 7, scope: !3473)
!3531 = !DILocation(line: 100, column: 12, scope: !3473)
!3532 = !DILocation(line: 105, column: 7, scope: !3473)
!3533 = !DILocation(line: 72, column: 19, scope: !3523)
!3534 = !DILocation(line: 105, column: 19, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3473, file: !729, line: 105, column: 7)
!3536 = !DILocation(line: 107, column: 13, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3535, file: !729, line: 106, column: 5)
!3538 = !DILocation(line: 109, column: 5, scope: !3537)
!3539 = !DILocation(line: 112, column: 1, scope: !3473)
!3540 = !DISubprogram(name: "fileno", scope: !347, file: !347, line: 809, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3541 = !DISubprogram(name: "fclose", scope: !347, file: !347, line: 178, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3542 = !DISubprogram(name: "__freading", scope: !3470, file: !3470, line: 51, type: !3474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3543 = !DISubprogram(name: "lseek", scope: !1020, file: !1020, line: 339, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!279, !116, !279, !116}
!3546 = distinct !DISubprogram(name: "rpl_fflush", scope: !731, file: !731, line: 130, type: !3547, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3583)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!116, !3549}
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3551)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3551, file: !256, line: 51, baseType: !116, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3551, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3551, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3551, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3551, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3551, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3551, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3551, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3551, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3551, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3551, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3551, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3551, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3551, file: !256, line: 70, baseType: !3567, size: 64, offset: 832)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3551, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3551, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3551, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3551, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3551, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3551, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3551, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3551, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3551, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3551, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3551, file: !256, line: 93, baseType: !3567, size: 64, offset: 1344)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3551, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3551, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3551, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3551, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3583 = !{!3584}
!3584 = !DILocalVariable(name: "stream", arg: 1, scope: !3546, file: !731, line: 130, type: !3549)
!3585 = !DILocation(line: 0, scope: !3546)
!3586 = !DILocation(line: 151, column: 14, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3546, file: !731, line: 151, column: 7)
!3588 = !DILocation(line: 151, column: 22, scope: !3587)
!3589 = !DILocation(line: 151, column: 27, scope: !3587)
!3590 = !DILocation(line: 151, column: 7, scope: !3546)
!3591 = !DILocation(line: 152, column: 12, scope: !3587)
!3592 = !DILocation(line: 152, column: 5, scope: !3587)
!3593 = !DILocalVariable(name: "fp", arg: 1, scope: !3594, file: !731, line: 42, type: !3549)
!3594 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !731, file: !731, line: 42, type: !3595, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{null, !3549}
!3597 = !{!3593}
!3598 = !DILocation(line: 0, scope: !3594, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 157, column: 3, scope: !3546)
!3600 = !DILocation(line: 44, column: 12, scope: !3601, inlinedAt: !3599)
!3601 = distinct !DILexicalBlock(scope: !3594, file: !731, line: 44, column: 7)
!3602 = !DILocation(line: 44, column: 19, scope: !3601, inlinedAt: !3599)
!3603 = !DILocation(line: 44, column: 7, scope: !3594, inlinedAt: !3599)
!3604 = !DILocation(line: 46, column: 5, scope: !3601, inlinedAt: !3599)
!3605 = !DILocation(line: 159, column: 10, scope: !3546)
!3606 = !DILocation(line: 159, column: 3, scope: !3546)
!3607 = !DILocation(line: 236, column: 1, scope: !3546)
!3608 = !DISubprogram(name: "fflush", scope: !347, file: !347, line: 230, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3609 = distinct !DISubprogram(name: "rpl_fseeko", scope: !733, file: !733, line: 28, type: !3610, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3647)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!116, !3612, !3646, !116}
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3614)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3614, file: !256, line: 51, baseType: !116, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3614, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3614, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3614, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3614, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3614, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3614, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3614, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3614, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3614, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3614, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3614, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3614, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3614, file: !256, line: 70, baseType: !3630, size: 64, offset: 832)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3614, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3614, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3614, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3614, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3614, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3614, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3614, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3614, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3614, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3614, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3614, file: !256, line: 93, baseType: !3630, size: 64, offset: 1344)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3614, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3614, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3614, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3614, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !347, line: 63, baseType: !279)
!3647 = !{!3648, !3649, !3650, !3651}
!3648 = !DILocalVariable(name: "fp", arg: 1, scope: !3609, file: !733, line: 28, type: !3612)
!3649 = !DILocalVariable(name: "offset", arg: 2, scope: !3609, file: !733, line: 28, type: !3646)
!3650 = !DILocalVariable(name: "whence", arg: 3, scope: !3609, file: !733, line: 28, type: !116)
!3651 = !DILocalVariable(name: "pos", scope: !3652, file: !733, line: 123, type: !3646)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !733, line: 119, column: 5)
!3653 = distinct !DILexicalBlock(scope: !3609, file: !733, line: 55, column: 7)
!3654 = !DILocation(line: 0, scope: !3609)
!3655 = !DILocation(line: 55, column: 12, scope: !3653)
!3656 = !{!1206, !763, i64 16}
!3657 = !DILocation(line: 55, column: 33, scope: !3653)
!3658 = !{!1206, !763, i64 8}
!3659 = !DILocation(line: 55, column: 25, scope: !3653)
!3660 = !DILocation(line: 56, column: 7, scope: !3653)
!3661 = !DILocation(line: 56, column: 15, scope: !3653)
!3662 = !DILocation(line: 56, column: 37, scope: !3653)
!3663 = !{!1206, !763, i64 32}
!3664 = !DILocation(line: 56, column: 29, scope: !3653)
!3665 = !DILocation(line: 57, column: 7, scope: !3653)
!3666 = !DILocation(line: 57, column: 15, scope: !3653)
!3667 = !{!1206, !763, i64 72}
!3668 = !DILocation(line: 57, column: 29, scope: !3653)
!3669 = !DILocation(line: 55, column: 7, scope: !3609)
!3670 = !DILocation(line: 123, column: 26, scope: !3652)
!3671 = !DILocation(line: 123, column: 19, scope: !3652)
!3672 = !DILocation(line: 0, scope: !3652)
!3673 = !DILocation(line: 124, column: 15, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3652, file: !733, line: 124, column: 11)
!3675 = !DILocation(line: 124, column: 11, scope: !3652)
!3676 = !DILocation(line: 135, column: 19, scope: !3652)
!3677 = !DILocation(line: 136, column: 12, scope: !3652)
!3678 = !DILocation(line: 136, column: 20, scope: !3652)
!3679 = !{!1206, !1207, i64 144}
!3680 = !DILocation(line: 167, column: 7, scope: !3652)
!3681 = !DILocation(line: 169, column: 10, scope: !3609)
!3682 = !DILocation(line: 169, column: 3, scope: !3609)
!3683 = !DILocation(line: 170, column: 1, scope: !3609)
!3684 = !DISubprogram(name: "fseeko", scope: !347, file: !347, line: 736, type: !3685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!116, !3612, !279, !116}
!3687 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !660, file: !660, line: 100, type: !3688, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3691)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!118, !1465, !80, !118, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!3691 = !{!3692, !3693, !3694, !3695, !3696}
!3692 = !DILocalVariable(name: "pwc", arg: 1, scope: !3687, file: !660, line: 100, type: !1465)
!3693 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !660, line: 100, type: !80)
!3694 = !DILocalVariable(name: "n", arg: 3, scope: !3687, file: !660, line: 100, type: !118)
!3695 = !DILocalVariable(name: "ps", arg: 4, scope: !3687, file: !660, line: 100, type: !3690)
!3696 = !DILocalVariable(name: "ret", scope: !3687, file: !660, line: 130, type: !118)
!3697 = !DILocation(line: 0, scope: !3687)
!3698 = !DILocation(line: 105, column: 9, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3687, file: !660, line: 105, column: 7)
!3700 = !DILocation(line: 105, column: 7, scope: !3687)
!3701 = !DILocation(line: 117, column: 10, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3687, file: !660, line: 117, column: 7)
!3703 = !DILocation(line: 117, column: 7, scope: !3687)
!3704 = !DILocation(line: 130, column: 16, scope: !3687)
!3705 = !DILocation(line: 135, column: 11, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3687, file: !660, line: 135, column: 7)
!3707 = !DILocation(line: 135, column: 25, scope: !3706)
!3708 = !DILocation(line: 135, column: 30, scope: !3706)
!3709 = !DILocation(line: 135, column: 7, scope: !3687)
!3710 = !DILocalVariable(name: "ps", arg: 1, scope: !3711, file: !1438, line: 1135, type: !3690)
!3711 = distinct !DISubprogram(name: "mbszero", scope: !1438, file: !1438, line: 1135, type: !3712, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{null, !3690}
!3714 = !{!3710}
!3715 = !DILocation(line: 0, scope: !3711, inlinedAt: !3716)
!3716 = distinct !DILocation(line: 137, column: 5, scope: !3706)
!3717 = !DILocalVariable(name: "__dest", arg: 1, scope: !3718, file: !1447, line: 57, type: !115)
!3718 = distinct !DISubprogram(name: "memset", scope: !1447, file: !1447, line: 57, type: !1448, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !663, retainedNodes: !3719)
!3719 = !{!3717, !3720, !3721}
!3720 = !DILocalVariable(name: "__ch", arg: 2, scope: !3718, file: !1447, line: 57, type: !116)
!3721 = !DILocalVariable(name: "__len", arg: 3, scope: !3718, file: !1447, line: 57, type: !118)
!3722 = !DILocation(line: 0, scope: !3718, inlinedAt: !3723)
!3723 = distinct !DILocation(line: 1137, column: 3, scope: !3711, inlinedAt: !3716)
!3724 = !DILocation(line: 59, column: 10, scope: !3718, inlinedAt: !3723)
!3725 = !DILocation(line: 137, column: 5, scope: !3706)
!3726 = !DILocation(line: 138, column: 11, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3687, file: !660, line: 138, column: 7)
!3728 = !DILocation(line: 138, column: 7, scope: !3687)
!3729 = !DILocation(line: 139, column: 5, scope: !3727)
!3730 = !DILocation(line: 143, column: 26, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3687, file: !660, line: 143, column: 7)
!3732 = !DILocation(line: 143, column: 41, scope: !3731)
!3733 = !DILocation(line: 143, column: 7, scope: !3687)
!3734 = !DILocation(line: 145, column: 15, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3736, file: !660, line: 145, column: 11)
!3736 = distinct !DILexicalBlock(scope: !3731, file: !660, line: 144, column: 5)
!3737 = !DILocation(line: 145, column: 11, scope: !3736)
!3738 = !DILocation(line: 146, column: 32, scope: !3735)
!3739 = !DILocation(line: 146, column: 16, scope: !3735)
!3740 = !DILocation(line: 146, column: 14, scope: !3735)
!3741 = !DILocation(line: 146, column: 9, scope: !3735)
!3742 = !DILocation(line: 286, column: 1, scope: !3687)
!3743 = !DISubprogram(name: "mbsinit", scope: !3744, file: !3744, line: 293, type: !3745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3744 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!116, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!3749 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !735, file: !735, line: 27, type: !2957, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3750)
!3750 = !{!3751, !3752, !3753, !3754}
!3751 = !DILocalVariable(name: "ptr", arg: 1, scope: !3749, file: !735, line: 27, type: !115)
!3752 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3749, file: !735, line: 27, type: !118)
!3753 = !DILocalVariable(name: "size", arg: 3, scope: !3749, file: !735, line: 27, type: !118)
!3754 = !DILocalVariable(name: "nbytes", scope: !3749, file: !735, line: 29, type: !118)
!3755 = !DILocation(line: 0, scope: !3749)
!3756 = !DILocation(line: 30, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3749, file: !735, line: 30, column: 7)
!3758 = !DILocation(line: 30, column: 7, scope: !3749)
!3759 = !DILocation(line: 32, column: 7, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3757, file: !735, line: 31, column: 5)
!3761 = !DILocation(line: 32, column: 13, scope: !3760)
!3762 = !DILocation(line: 33, column: 7, scope: !3760)
!3763 = !DILocalVariable(name: "ptr", arg: 1, scope: !3764, file: !3049, line: 2057, type: !115)
!3764 = distinct !DISubprogram(name: "rpl_realloc", scope: !3049, file: !3049, line: 2057, type: !3041, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3765)
!3765 = !{!3763, !3766}
!3766 = !DILocalVariable(name: "size", arg: 2, scope: !3764, file: !3049, line: 2057, type: !118)
!3767 = !DILocation(line: 0, scope: !3764, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 37, column: 10, scope: !3749)
!3769 = !DILocation(line: 2059, column: 24, scope: !3764, inlinedAt: !3768)
!3770 = !DILocation(line: 2059, column: 10, scope: !3764, inlinedAt: !3768)
!3771 = !DILocation(line: 37, column: 3, scope: !3749)
!3772 = !DILocation(line: 38, column: 1, scope: !3749)
!3773 = distinct !DISubprogram(name: "hard_locale", scope: !678, file: !678, line: 28, type: !3774, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3776)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!239, !116}
!3776 = !{!3777, !3778}
!3777 = !DILocalVariable(name: "category", arg: 1, scope: !3773, file: !678, line: 28, type: !116)
!3778 = !DILocalVariable(name: "locale", scope: !3773, file: !678, line: 30, type: !3779)
!3779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3780)
!3780 = !{!3781}
!3781 = !DISubrange(count: 257)
!3782 = distinct !DIAssignID()
!3783 = !DILocation(line: 0, scope: !3773)
!3784 = !DILocation(line: 30, column: 3, scope: !3773)
!3785 = !DILocation(line: 32, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3773, file: !678, line: 32, column: 7)
!3787 = !DILocation(line: 32, column: 7, scope: !3773)
!3788 = !DILocalVariable(name: "__s1", arg: 1, scope: !3789, file: !835, line: 1359, type: !80)
!3789 = distinct !DISubprogram(name: "streq", scope: !835, file: !835, line: 1359, type: !836, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3790)
!3790 = !{!3788, !3791}
!3791 = !DILocalVariable(name: "__s2", arg: 2, scope: !3789, file: !835, line: 1359, type: !80)
!3792 = !DILocation(line: 0, scope: !3789, inlinedAt: !3793)
!3793 = distinct !DILocation(line: 35, column: 9, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3773, file: !678, line: 35, column: 7)
!3795 = !DILocation(line: 1361, column: 11, scope: !3789, inlinedAt: !3793)
!3796 = !DILocation(line: 1361, column: 10, scope: !3789, inlinedAt: !3793)
!3797 = !DILocation(line: 35, column: 29, scope: !3794)
!3798 = !DILocation(line: 0, scope: !3789, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 35, column: 32, scope: !3794)
!3800 = !DILocation(line: 1361, column: 11, scope: !3789, inlinedAt: !3799)
!3801 = !DILocation(line: 1361, column: 10, scope: !3789, inlinedAt: !3799)
!3802 = !DILocation(line: 35, column: 7, scope: !3773)
!3803 = !DILocation(line: 46, column: 3, scope: !3773)
!3804 = !DILocation(line: 47, column: 1, scope: !3773)
!3805 = distinct !DISubprogram(name: "setlocale_null_r", scope: !739, file: !739, line: 154, type: !3806, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!116, !116, !260, !118}
!3808 = !{!3809, !3810, !3811}
!3809 = !DILocalVariable(name: "category", arg: 1, scope: !3805, file: !739, line: 154, type: !116)
!3810 = !DILocalVariable(name: "buf", arg: 2, scope: !3805, file: !739, line: 154, type: !260)
!3811 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3805, file: !739, line: 154, type: !118)
!3812 = !DILocation(line: 0, scope: !3805)
!3813 = !DILocation(line: 159, column: 10, scope: !3805)
!3814 = !DILocation(line: 159, column: 3, scope: !3805)
!3815 = distinct !DISubprogram(name: "setlocale_null", scope: !739, file: !739, line: 186, type: !3816, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !738, retainedNodes: !3818)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!80, !116}
!3818 = !{!3819}
!3819 = !DILocalVariable(name: "category", arg: 1, scope: !3815, file: !739, line: 186, type: !116)
!3820 = !DILocation(line: 0, scope: !3815)
!3821 = !DILocation(line: 189, column: 10, scope: !3815)
!3822 = !DILocation(line: 189, column: 3, scope: !3815)
!3823 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !741, file: !741, line: 35, type: !3816, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3824)
!3824 = !{!3825, !3826}
!3825 = !DILocalVariable(name: "category", arg: 1, scope: !3823, file: !741, line: 35, type: !116)
!3826 = !DILocalVariable(name: "result", scope: !3823, file: !741, line: 37, type: !80)
!3827 = !DILocation(line: 0, scope: !3823)
!3828 = !DILocation(line: 37, column: 24, scope: !3823)
!3829 = !DILocation(line: 62, column: 3, scope: !3823)
!3830 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !741, file: !741, line: 66, type: !3806, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3831)
!3831 = !{!3832, !3833, !3834, !3835, !3836}
!3832 = !DILocalVariable(name: "category", arg: 1, scope: !3830, file: !741, line: 66, type: !116)
!3833 = !DILocalVariable(name: "buf", arg: 2, scope: !3830, file: !741, line: 66, type: !260)
!3834 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3830, file: !741, line: 66, type: !118)
!3835 = !DILocalVariable(name: "result", scope: !3830, file: !741, line: 111, type: !80)
!3836 = !DILocalVariable(name: "length", scope: !3837, file: !741, line: 125, type: !118)
!3837 = distinct !DILexicalBlock(scope: !3838, file: !741, line: 124, column: 5)
!3838 = distinct !DILexicalBlock(scope: !3830, file: !741, line: 113, column: 7)
!3839 = !DILocation(line: 0, scope: !3830)
!3840 = !DILocation(line: 0, scope: !3823, inlinedAt: !3841)
!3841 = distinct !DILocation(line: 111, column: 24, scope: !3830)
!3842 = !DILocation(line: 37, column: 24, scope: !3823, inlinedAt: !3841)
!3843 = !DILocation(line: 113, column: 14, scope: !3838)
!3844 = !DILocation(line: 113, column: 7, scope: !3830)
!3845 = !DILocation(line: 116, column: 19, scope: !3846)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !741, line: 116, column: 11)
!3847 = distinct !DILexicalBlock(scope: !3838, file: !741, line: 114, column: 5)
!3848 = !DILocation(line: 116, column: 11, scope: !3847)
!3849 = !DILocation(line: 120, column: 16, scope: !3846)
!3850 = !DILocation(line: 120, column: 9, scope: !3846)
!3851 = !DILocation(line: 125, column: 23, scope: !3837)
!3852 = !DILocation(line: 0, scope: !3837)
!3853 = !DILocation(line: 126, column: 18, scope: !3854)
!3854 = distinct !DILexicalBlock(scope: !3837, file: !741, line: 126, column: 11)
!3855 = !DILocation(line: 126, column: 11, scope: !3837)
!3856 = !DILocation(line: 128, column: 39, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3854, file: !741, line: 127, column: 9)
!3858 = !DILocalVariable(name: "__dest", arg: 1, scope: !3859, file: !1447, line: 26, type: !3319)
!3859 = distinct !DISubprogram(name: "memcpy", scope: !1447, file: !1447, line: 26, type: !3317, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !740, retainedNodes: !3860)
!3860 = !{!3858, !3861, !3862}
!3861 = !DILocalVariable(name: "__src", arg: 2, scope: !3859, file: !1447, line: 26, type: !966)
!3862 = !DILocalVariable(name: "__len", arg: 3, scope: !3859, file: !1447, line: 26, type: !118)
!3863 = !DILocation(line: 0, scope: !3859, inlinedAt: !3864)
!3864 = distinct !DILocation(line: 128, column: 11, scope: !3857)
!3865 = !DILocation(line: 29, column: 10, scope: !3859, inlinedAt: !3864)
!3866 = !DILocation(line: 129, column: 11, scope: !3857)
!3867 = !DILocation(line: 133, column: 23, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3869, file: !741, line: 133, column: 15)
!3869 = distinct !DILexicalBlock(scope: !3854, file: !741, line: 132, column: 9)
!3870 = !DILocation(line: 133, column: 15, scope: !3869)
!3871 = !DILocation(line: 138, column: 44, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3868, file: !741, line: 134, column: 13)
!3873 = !DILocation(line: 0, scope: !3859, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 138, column: 15, scope: !3872)
!3875 = !DILocation(line: 29, column: 10, scope: !3859, inlinedAt: !3874)
!3876 = !DILocation(line: 139, column: 15, scope: !3872)
!3877 = !DILocation(line: 139, column: 32, scope: !3872)
!3878 = !DILocation(line: 140, column: 13, scope: !3872)
!3879 = !DILocation(line: 0, scope: !3838)
!3880 = !DILocation(line: 145, column: 1, scope: !3830)
