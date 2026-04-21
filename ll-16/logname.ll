; ModuleID = 'src/logname.bc'
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
@.str.1 = private unnamed_addr constant [20 x i8] c"Usage: %s [OPTION]\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [31 x i8] c"Print the user's login name.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [8 x i8] c"logname\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [14 x i8] c"no login name\00", align 1, !dbg !62
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !64
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !99
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !104
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !106
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !111
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !151
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !153
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !155
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !157
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !162
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !167
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !172
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !174
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !176
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !178
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !189
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !191
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !196
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !201
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !206
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !287
@Version = dso_local local_unnamed_addr global ptr @.str.17, align 8, !dbg !290
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !294
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !307
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !299
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !301
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !303
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !305
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !309
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !315
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !317
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !342
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !344
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !346
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !348
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !350
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !354
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !356
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !361
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !366
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !369
@optind = external local_unnamed_addr global i32, align 4
@.str.1.45 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !373
@.str.2.41 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !375
@.str.3.42 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !377
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !389
@.str.50 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !395
@.str.1.51 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !397
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !399
@.str.54 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !430
@.str.1.55 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !433
@.str.2.56 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !435
@.str.3.57 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !440
@.str.4.58 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !442
@.str.5.59 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !444
@.str.6.60 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !446
@.str.7.61 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !448
@.str.8.62 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !450
@.str.9.63 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !452
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.54, ptr @.str.1.55, ptr @.str.2.56, ptr @.str.3.57, ptr @.str.4.58, ptr @.str.5.59, ptr @.str.6.60, ptr @.str.7.61, ptr @.str.8.62, ptr @.str.9.63, ptr null], align 8, !dbg !454
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !479
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !493
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !531
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !538
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !495
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !540
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !483
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !500
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !502
@.str.12.67 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !504
@.str.13.65 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !506
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !508
@.str.72 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !546
@.str.1.73 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !549
@.str.2.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !551
@.str.3.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !553
@.str.4.76 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !555
@.str.5.77 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !557
@.str.6.78 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !562
@.str.7.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !567
@.str.8.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !569
@.str.9.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !574
@.str.10.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !579
@.str.11.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !584
@.str.12.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !589
@.str.13.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !591
@.str.14.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !596
@.str.15.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !601
@.str.16.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !606
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.93 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !611
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !613
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !615
@.str.20.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !617
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !619
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !621
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !623
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !628
@exit_failure = dso_local global i32 1, align 4, !dbg !636
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !642
@.str.1.105 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !645
@.str.2.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !647
@.str.118 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !649
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !652
@.str.123 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !667
@.str.1.124 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !670

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
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !811
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !812, !tbaa !813
  %3 = icmp eq i32 %2, -1, !dbg !815
  br i1 %3, label %4, label %16, !dbg !816

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #36, !dbg !817
  call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !818
  %6 = icmp eq ptr %5, null, !dbg !819
  br i1 %6, label %14, label %7, !dbg !820

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !821, !tbaa !822
  %9 = icmp eq i8 %8, 0, !dbg !821
  br i1 %9, label %14, label %10, !dbg !823

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !824, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !830, metadata !DIExpression()), !dbg !831
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #37, !dbg !833
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
  %20 = load ptr, ptr @stdout, align 8, !dbg !840, !tbaa !753
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !840
  br label %122, !dbg !842

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !811
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #37, !dbg !843
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !844
  call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !811
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !845
  call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !811
  %26 = icmp eq ptr %25, null, !dbg !846
  br i1 %26, label %54, label %27, !dbg !847

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !848
  br i1 %28, label %54, label %29, !dbg !849

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !850
  %30 = icmp ult ptr %24, %25, !dbg !851
  br i1 %30, label %31, label %52, !dbg !852

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !811
  %33 = load ptr, ptr %32, align 8, !tbaa !753
  br label %34, !dbg !852

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !850
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !853
  call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !850
  %38 = load i8, ptr %35, align 1, !dbg !853, !tbaa !822
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !853
  %41 = load i16, ptr %40, align 2, !dbg !853, !tbaa !854
  %42 = freeze i16 %41, !dbg !856
  %43 = lshr i16 %42, 13, !dbg !856
  %44 = and i16 %43, 1, !dbg !856
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !857
  call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !850
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

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !811
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %55, metadata !220, metadata !DIExpression()), !dbg !811
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.16) #37, !dbg !864
  call void @llvm.dbg.value(metadata i64 %57, metadata !226, metadata !DIExpression()), !dbg !811
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !865
  call void @llvm.dbg.value(metadata ptr %58, metadata !227, metadata !DIExpression()), !dbg !811
  br label %59, !dbg !866

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !811
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !811
  call void @llvm.dbg.value(metadata ptr %60, metadata !227, metadata !DIExpression()), !dbg !811
  %62 = load i8, ptr %60, align 1, !dbg !867, !tbaa !822
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !868

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !869
  %65 = load i8, ptr %64, align 1, !dbg !872, !tbaa !822
  %66 = icmp ne i8 %65, 45, !dbg !873
  %67 = select i1 %66, i1 %61, i1 false, !dbg !874
  br label %68, !dbg !874

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !811
  %70 = tail call ptr @__ctype_b_loc() #39, !dbg !875
  %71 = load ptr, ptr %70, align 8, !dbg !875, !tbaa !753
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !875
  %74 = load i16, ptr %73, align 2, !dbg !875, !tbaa !854
  %75 = and i16 %74, 8192, !dbg !875
  %76 = icmp eq i16 %75, 0, !dbg !875
  br i1 %76, label %90, label %77, !dbg !877

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !878
  br i1 %78, label %92, label %79, !dbg !881

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !882
  %81 = load i8, ptr %80, align 1, !dbg !882, !tbaa !822
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !882
  %84 = load i16, ptr %83, align 2, !dbg !882, !tbaa !854
  %85 = and i16 %84, 8192, !dbg !882
  %86 = icmp eq i16 %85, 0, !dbg !882
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !883
  br i1 %89, label %90, label %92, !dbg !883

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !884
  call void @llvm.dbg.value(metadata ptr %91, metadata !227, metadata !DIExpression()), !dbg !811
  br label %59, !dbg !866, !llvm.loop !885

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !887
  %94 = load ptr, ptr @stdout, align 8, !dbg !887, !tbaa !753
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !282, metadata !DIExpression()), !dbg !811
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #37, !dbg !908
  %97 = icmp eq i32 %96, 0, !dbg !908
  br i1 %97, label %101, label %98, !dbg !910

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #37, !dbg !911
  %100 = icmp eq i32 %99, 0, !dbg !911
  br i1 %100, label %101, label %104, !dbg !912

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !913
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #36, !dbg !913
  br label %107, !dbg !915

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !916
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #36, !dbg !916
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !753
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %108), !dbg !918
  %110 = load ptr, ptr @stdout, align 8, !dbg !919, !tbaa !753
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %110), !dbg !919
  %112 = ptrtoint ptr %60 to i64, !dbg !920
  %113 = sub i64 %112, %93, !dbg !920
  %114 = load ptr, ptr @stdout, align 8, !dbg !920, !tbaa !753
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !920
  %116 = load ptr, ptr @stdout, align 8, !dbg !921, !tbaa !753
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %116), !dbg !921
  %118 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !753
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %118), !dbg !922
  %120 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !753
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !923
  br label %122, !dbg !924

122:                                              ; preds = %107, %19
  ret void, !dbg !924
}

; Function Attrs: nounwind
declare !dbg !925 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !929 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !933 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !935 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !938 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !941 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !944 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !947 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !953 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !954 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !960 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !965, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr %1, metadata !966, metadata !DIExpression()), !dbg !968
  %3 = load ptr, ptr %1, align 8, !dbg !969, !tbaa !753
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !970
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !971
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !972
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !973
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !974
  %8 = load ptr, ptr @Version, align 8, !dbg !975, !tbaa !753
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !976
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !977
  %10 = load i32, ptr @optind, align 4, !dbg !978, !tbaa !813
  %11 = icmp slt i32 %10, %0, !dbg !980
  br i1 %11, label %12, label %19, !dbg !981

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !982
  %14 = load i32, ptr @optind, align 4, !dbg !982, !tbaa !813
  %15 = sext i32 %14 to i64, !dbg !982
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !982
  %17 = load ptr, ptr %16, align 8, !dbg !982, !tbaa !753
  %18 = tail call ptr @quote(ptr noundef %17) #36, !dbg !982
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #36, !dbg !982
  tail call void @usage(i32 noundef 1) #40, !dbg !984
  unreachable, !dbg !984

19:                                               ; preds = %2
  %20 = tail call ptr @getlogin() #36, !dbg !985
  call void @llvm.dbg.value(metadata ptr %20, metadata !967, metadata !DIExpression()), !dbg !968
  %21 = icmp eq ptr %20, null, !dbg !986
  br i1 %21, label %22, label %24, !dbg !988

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !989
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %23) #36, !dbg !989
  unreachable, !dbg !989

24:                                               ; preds = %19
  %25 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %20), !dbg !990
  ret i32 0, !dbg !991
}

; Function Attrs: nounwind
declare !dbg !992 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !995 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !996 i32 @atexit(ptr noundef) local_unnamed_addr #2

declare !dbg !999 ptr @getlogin() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1002 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1005 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1007, metadata !DIExpression()), !dbg !1008
  store ptr %0, ptr @file_name, align 8, !dbg !1009, !tbaa !753
  ret void, !dbg !1010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1011 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1015, metadata !DIExpression()), !dbg !1016
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1017, !tbaa !1018
  ret void, !dbg !1020
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1021 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1026, !tbaa !753
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1027
  %3 = icmp eq i32 %2, 0, !dbg !1028
  br i1 %3, label %22, label %4, !dbg !1029

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1030, !tbaa !1018, !range !1031, !noundef !798
  %6 = icmp eq i8 %5, 0, !dbg !1030
  br i1 %6, label %11, label %7, !dbg !1032

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1033
  %9 = load i32, ptr %8, align 4, !dbg !1033, !tbaa !813
  %10 = icmp eq i32 %9, 32, !dbg !1034
  br i1 %10, label %22, label %11, !dbg !1035

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #36, !dbg !1036
  call void @llvm.dbg.value(metadata ptr %12, metadata !1023, metadata !DIExpression()), !dbg !1037
  %13 = load ptr, ptr @file_name, align 8, !dbg !1038, !tbaa !753
  %14 = icmp eq ptr %13, null, !dbg !1038
  %15 = tail call ptr @__errno_location() #39, !dbg !1040
  %16 = load i32, ptr %15, align 4, !dbg !1040, !tbaa !813
  br i1 %14, label %19, label %17, !dbg !1041

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1042
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #36, !dbg !1042
  br label %20, !dbg !1042

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #36, !dbg !1043
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1044, !tbaa !813
  tail call void @_exit(i32 noundef %21) #38, !dbg !1045
  unreachable, !dbg !1045

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1046, !tbaa !753
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1048
  %25 = icmp eq i32 %24, 0, !dbg !1049
  br i1 %25, label %28, label %26, !dbg !1050

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1051, !tbaa !813
  tail call void @_exit(i32 noundef %27) #38, !dbg !1052
  unreachable, !dbg !1052

28:                                               ; preds = %22
  ret void, !dbg !1053
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1054 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1058 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1059 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1063, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i32 %1, metadata !1064, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata ptr %2, metadata !1065, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1066, metadata !DIExpression()), !dbg !1068
  tail call fastcc void @flush_stdout(), !dbg !1069
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1070, !tbaa !753
  %7 = icmp eq ptr %6, null, !dbg !1070
  br i1 %7, label %9, label %8, !dbg !1072

8:                                                ; preds = %4
  tail call void %6() #36, !dbg !1073
  br label %13, !dbg !1073

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1074, !tbaa !753
  %11 = tail call ptr @getprogname() #37, !dbg !1074
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %11) #36, !dbg !1074
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1076, !tbaa.struct !1077
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1076
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1076
  ret void, !dbg !1078
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1079 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 1, metadata !1083, metadata !DIExpression()), !dbg !1088
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1091
  %2 = icmp slt i32 %1, 0, !dbg !1092
  br i1 %2, label %6, label %3, !dbg !1093

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1094, !tbaa !753
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1094
  br label %6, !dbg !1094

6:                                                ; preds = %3, %0
  ret void, !dbg !1095
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1096 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1098, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i32 %1, metadata !1099, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr %2, metadata !1100, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1101, metadata !DIExpression()), !dbg !1103
  %7 = load ptr, ptr @stderr, align 8, !dbg !1104, !tbaa !753
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1105, !noalias !1149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1153
  call void @llvm.dbg.value(metadata ptr %7, metadata !1145, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %2, metadata !1146, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1147, metadata !DIExpression()), !dbg !1155
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #36, !dbg !1105
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1105, !noalias !1149
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1156, !tbaa !813
  %10 = add i32 %9, 1, !dbg !1156
  store i32 %10, ptr @error_message_count, align 4, !dbg !1156, !tbaa !813
  %11 = icmp eq i32 %1, 0, !dbg !1157
  br i1 %11, label %21, label %12, !dbg !1159

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1160, metadata !DIExpression()), !dbg !1168
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1164, metadata !DIExpression()), !dbg !1171
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %13, metadata !1163, metadata !DIExpression()), !dbg !1168
  %14 = icmp eq ptr %13, null, !dbg !1173
  br i1 %14, label %15, label %17, !dbg !1175

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #36, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %16, metadata !1163, metadata !DIExpression()), !dbg !1168
  br label %17, !dbg !1177

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1168
  call void @llvm.dbg.value(metadata ptr %18, metadata !1163, metadata !DIExpression()), !dbg !1168
  %19 = load ptr, ptr @stderr, align 8, !dbg !1178, !tbaa !753
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %18) #36, !dbg !1178
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1179
  br label %21, !dbg !1180

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1181, !tbaa !753
  call void @llvm.dbg.value(metadata i32 10, metadata !1182, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %22, metadata !1188, metadata !DIExpression()), !dbg !1189
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1191
  %24 = load ptr, ptr %23, align 8, !dbg !1191, !tbaa !1192
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1191
  %26 = load ptr, ptr %25, align 8, !dbg !1191, !tbaa !1195
  %27 = icmp ult ptr %24, %26, !dbg !1191
  br i1 %27, label %30, label %28, !dbg !1191, !prof !1196

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #36, !dbg !1191
  br label %32, !dbg !1191

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1191
  store ptr %31, ptr %23, align 8, !dbg !1191, !tbaa !1192
  store i8 10, ptr %24, align 1, !dbg !1191, !tbaa !822
  br label %32, !dbg !1191

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1197, !tbaa !753
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #36, !dbg !1197
  %35 = icmp eq i32 %0, 0, !dbg !1198
  br i1 %35, label %37, label %36, !dbg !1200

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #38, !dbg !1201
  unreachable, !dbg !1201

37:                                               ; preds = %32
  ret void, !dbg !1202
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1203 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1206 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1209 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1212 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1215 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1219 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1223, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata i32 %1, metadata !1224, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr %2, metadata !1225, metadata !DIExpression()), !dbg !1227
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1226, metadata !DIExpression()), !dbg !1229
  call void @llvm.va_start(ptr nonnull %4), !dbg !1230
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !1231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1231, !tbaa.struct !1077
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #41, !dbg !1231
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !1231
  call void @llvm.va_end(ptr nonnull %4), !dbg !1232
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #36, !dbg !1233
  ret void, !dbg !1233
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !319 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !336, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %1, metadata !337, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr %2, metadata !338, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i32 %3, metadata !339, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata ptr %4, metadata !340, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %5, metadata !341, metadata !DIExpression()), !dbg !1235
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1236, !tbaa !813
  %9 = icmp eq i32 %8, 0, !dbg !1236
  br i1 %9, label %24, label %10, !dbg !1238

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1239, !tbaa !813
  %12 = icmp eq i32 %11, %3, !dbg !1242
  br i1 %12, label %13, label %23, !dbg !1243

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1244, !tbaa !753
  %15 = icmp eq ptr %14, %2, !dbg !1245
  br i1 %15, label %37, label %16, !dbg !1246

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1247
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1248
  br i1 %19, label %20, label %23, !dbg !1248

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1249
  %22 = icmp eq i32 %21, 0, !dbg !1250
  br i1 %22, label %37, label %23, !dbg !1251

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1252, !tbaa !753
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1253, !tbaa !813
  br label %24, !dbg !1254

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1255
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1256, !tbaa !753
  %26 = icmp eq ptr %25, null, !dbg !1256
  br i1 %26, label %28, label %27, !dbg !1258

27:                                               ; preds = %24
  tail call void %25() #36, !dbg !1259
  br label %32, !dbg !1259

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1260, !tbaa !753
  %30 = tail call ptr @getprogname() #37, !dbg !1260
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %30) #36, !dbg !1260
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1262, !tbaa !753
  %34 = icmp eq ptr %2, null, !dbg !1262
  %35 = select i1 %34, ptr @.str.3.31, ptr @.str.2.32, !dbg !1262
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #36, !dbg !1262
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1263, !tbaa.struct !1077
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1263
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1263
  br label %37, !dbg !1264

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1264
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1265 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1269, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i32 %1, metadata !1270, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata ptr %2, metadata !1271, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata i32 %3, metadata !1272, metadata !DIExpression()), !dbg !1275
  call void @llvm.dbg.value(metadata ptr %4, metadata !1273, metadata !DIExpression()), !dbg !1275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1274, metadata !DIExpression()), !dbg !1277
  call void @llvm.va_start(ptr nonnull %6), !dbg !1278
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1279, !tbaa.struct !1077
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #41, !dbg !1279
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #36, !dbg !1279
  call void @llvm.va_end(ptr nonnull %6), !dbg !1280
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !1281
  ret void, !dbg !1281
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1282 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1285, !tbaa !753
  ret ptr %1, !dbg !1286
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1287 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1292, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %1, metadata !1293, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %2, metadata !1294, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %3, metadata !1295, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %4, metadata !1296, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %5, metadata !1297, metadata !DIExpression()), !dbg !1318
  %9 = load i32, ptr @opterr, align 4, !dbg !1319, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %9, metadata !1298, metadata !DIExpression()), !dbg !1318
  store i32 0, ptr @opterr, align 4, !dbg !1320, !tbaa !813
  %10 = icmp eq i32 %0, 2, !dbg !1321
  br i1 %10, label %11, label %16, !dbg !1322

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1323
  call void @llvm.dbg.value(metadata i32 %12, metadata !1299, metadata !DIExpression()), !dbg !1324
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1325

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #36, !dbg !1326
  br label %16, !dbg !1327

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #36, !dbg !1328
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1302, metadata !DIExpression()), !dbg !1329
  call void @llvm.va_start(ptr nonnull %7), !dbg !1330
  %15 = load ptr, ptr @stdout, align 8, !dbg !1331, !tbaa !753
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1332, !tbaa.struct !1077
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #36, !dbg !1332
  call void @exit(i32 noundef 0) #38, !dbg !1333
  unreachable, !dbg !1333

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1334, !tbaa !813
  store i32 0, ptr @optind, align 4, !dbg !1335, !tbaa !813
  ret void, !dbg !1336
}

; Function Attrs: nounwind
declare !dbg !1337 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1343 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1347, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr %1, metadata !1348, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr %2, metadata !1349, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr %3, metadata !1350, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata ptr %4, metadata !1351, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.value(metadata i1 %5, metadata !1352, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  call void @llvm.dbg.value(metadata ptr %6, metadata !1353, metadata !DIExpression()), !dbg !1362
  %10 = load i32, ptr @opterr, align 4, !dbg !1363, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %10, metadata !1354, metadata !DIExpression()), !dbg !1362
  store i32 1, ptr @opterr, align 4, !dbg !1364, !tbaa !813
  %11 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1365
  call void @llvm.dbg.value(metadata ptr %11, metadata !1355, metadata !DIExpression()), !dbg !1362
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1366
  call void @llvm.dbg.value(metadata i32 %12, metadata !1356, metadata !DIExpression()), !dbg !1362
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1367

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #36, !dbg !1368
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1357, metadata !DIExpression()), !dbg !1369
  call void @llvm.va_start(ptr nonnull %8), !dbg !1370
  %14 = load ptr, ptr @stdout, align 8, !dbg !1371, !tbaa !753
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #36, !dbg !1372
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1372, !tbaa.struct !1077
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #36, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #36, !dbg !1372
  call void @exit(i32 noundef 0) #38, !dbg !1373
  unreachable, !dbg !1373

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1374, !tbaa !813
  br label %17, !dbg !1375

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #36, !dbg !1376
  br label %19, !dbg !1377

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1377, !tbaa !813
  ret void, !dbg !1378
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1379 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1381, metadata !DIExpression()), !dbg !1384
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #37, !dbg !1385
  call void @llvm.dbg.value(metadata ptr %2, metadata !1382, metadata !DIExpression()), !dbg !1384
  %3 = icmp eq ptr %2, null, !dbg !1386
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1386
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1386
  call void @llvm.dbg.value(metadata ptr %5, metadata !1383, metadata !DIExpression()), !dbg !1384
  %6 = ptrtoint ptr %5 to i64, !dbg !1387
  %7 = ptrtoint ptr %0 to i64, !dbg !1387
  %8 = sub i64 %6, %7, !dbg !1387
  %9 = icmp sgt i64 %8, 6, !dbg !1389
  br i1 %9, label %10, label %19, !dbg !1390

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1391
  call void @llvm.dbg.value(metadata ptr %11, metadata !1392, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1397, metadata !DIExpression()), !dbg !1399
  call void @llvm.dbg.value(metadata i64 7, metadata !1398, metadata !DIExpression()), !dbg !1399
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1401
  %13 = icmp eq i32 %12, 0, !dbg !1402
  br i1 %13, label %14, label %19, !dbg !1403

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1381, metadata !DIExpression()), !dbg !1384
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #37, !dbg !1404
  %16 = icmp eq i32 %15, 0, !dbg !1407
  %17 = select i1 %16, i64 3, i64 0, !dbg !1408
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1408
  br label %19, !dbg !1408

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1384
  call void @llvm.dbg.value(metadata ptr %21, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata ptr %20, metadata !1381, metadata !DIExpression()), !dbg !1384
  store ptr %20, ptr @program_name, align 8, !dbg !1409, !tbaa !753
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1410, !tbaa !753
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1411, !tbaa !753
  ret void, !dbg !1412
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1413 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !401 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata ptr %1, metadata !409, metadata !DIExpression()), !dbg !1414
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #36, !dbg !1415
  call void @llvm.dbg.value(metadata ptr %5, metadata !410, metadata !DIExpression()), !dbg !1414
  %6 = icmp eq ptr %5, %0, !dbg !1416
  br i1 %6, label %7, label %14, !dbg !1418

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36, !dbg !1419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36, !dbg !1420
  call void @llvm.dbg.declare(metadata ptr %4, metadata !416, metadata !DIExpression()), !dbg !1421
  call void @llvm.dbg.value(metadata ptr %4, metadata !1422, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.value(metadata ptr %4, metadata !1431, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i32 0, metadata !1437, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.value(metadata i64 8, metadata !1438, metadata !DIExpression()), !dbg !1439
  store i64 0, ptr %4, align 8, !dbg !1441
  call void @llvm.dbg.value(metadata ptr %3, metadata !411, metadata !DIExpression(DW_OP_deref)), !dbg !1414
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #36, !dbg !1442
  %9 = icmp eq i64 %8, 2, !dbg !1444
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !411, metadata !DIExpression()), !dbg !1414
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1445
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1414
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36, !dbg !1446
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36, !dbg !1446
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1414
  ret ptr %15, !dbg !1446
}

; Function Attrs: nounwind
declare !dbg !1447 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1453 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1458, metadata !DIExpression()), !dbg !1461
  %2 = tail call ptr @__errno_location() #39, !dbg !1462
  %3 = load i32, ptr %2, align 4, !dbg !1462, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %3, metadata !1459, metadata !DIExpression()), !dbg !1461
  %4 = icmp eq ptr %0, null, !dbg !1463
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1463
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1464
  call void @llvm.dbg.value(metadata ptr %6, metadata !1460, metadata !DIExpression()), !dbg !1461
  store i32 %3, ptr %2, align 4, !dbg !1465, !tbaa !813
  ret ptr %6, !dbg !1466
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1467 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1473, metadata !DIExpression()), !dbg !1474
  %2 = icmp eq ptr %0, null, !dbg !1475
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1475
  %4 = load i32, ptr %3, align 8, !dbg !1476, !tbaa !1477
  ret i32 %4, !dbg !1479
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1480 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1484, metadata !DIExpression()), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %1, metadata !1485, metadata !DIExpression()), !dbg !1486
  %3 = icmp eq ptr %0, null, !dbg !1487
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1487
  store i32 %1, ptr %4, align 8, !dbg !1488, !tbaa !1477
  ret void, !dbg !1489
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1490 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1494, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %1, metadata !1495, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %2, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()), !dbg !1502
  %4 = icmp eq ptr %0, null, !dbg !1503
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1503
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1504
  %7 = lshr i8 %1, 5, !dbg !1505
  %8 = zext i8 %7 to i64, !dbg !1505
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1506
  call void @llvm.dbg.value(metadata ptr %9, metadata !1498, metadata !DIExpression()), !dbg !1502
  %10 = and i8 %1, 31, !dbg !1507
  %11 = zext i8 %10 to i32, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %11, metadata !1500, metadata !DIExpression()), !dbg !1502
  %12 = load i32, ptr %9, align 4, !dbg !1508, !tbaa !813
  %13 = lshr i32 %12, %11, !dbg !1509
  %14 = and i32 %13, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i32 %14, metadata !1501, metadata !DIExpression()), !dbg !1502
  %15 = xor i32 %13, %2, !dbg !1511
  %16 = and i32 %15, 1, !dbg !1511
  %17 = shl nuw i32 %16, %11, !dbg !1512
  %18 = xor i32 %17, %12, !dbg !1513
  store i32 %18, ptr %9, align 4, !dbg !1513, !tbaa !813
  ret i32 %14, !dbg !1514
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1515 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1519, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i32 %1, metadata !1520, metadata !DIExpression()), !dbg !1522
  %3 = icmp eq ptr %0, null, !dbg !1523
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1525
  call void @llvm.dbg.value(metadata ptr %4, metadata !1519, metadata !DIExpression()), !dbg !1522
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1526
  %6 = load i32, ptr %5, align 4, !dbg !1526, !tbaa !1527
  call void @llvm.dbg.value(metadata i32 %6, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 %1, ptr %5, align 4, !dbg !1528, !tbaa !1527
  ret i32 %6, !dbg !1529
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1534, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %1, metadata !1535, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata ptr %2, metadata !1536, metadata !DIExpression()), !dbg !1537
  %4 = icmp eq ptr %0, null, !dbg !1538
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %5, metadata !1534, metadata !DIExpression()), !dbg !1537
  store i32 10, ptr %5, align 8, !dbg !1541, !tbaa !1477
  %6 = icmp ne ptr %1, null, !dbg !1542
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1544
  br i1 %8, label %10, label %9, !dbg !1544

9:                                                ; preds = %3
  tail call void @abort() #38, !dbg !1545
  unreachable, !dbg !1545

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1546
  store ptr %1, ptr %11, align 8, !dbg !1547, !tbaa !1548
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1549
  store ptr %2, ptr %12, align 8, !dbg !1550, !tbaa !1551
  ret void, !dbg !1552
}

; Function Attrs: noreturn nounwind
declare !dbg !1553 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1554 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1558, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %1, metadata !1559, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata ptr %2, metadata !1560, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata i64 %3, metadata !1561, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata ptr %4, metadata !1562, metadata !DIExpression()), !dbg !1566
  %6 = icmp eq ptr %4, null, !dbg !1567
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1567
  call void @llvm.dbg.value(metadata ptr %7, metadata !1563, metadata !DIExpression()), !dbg !1566
  %8 = tail call ptr @__errno_location() #39, !dbg !1568
  %9 = load i32, ptr %8, align 4, !dbg !1568, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %9, metadata !1564, metadata !DIExpression()), !dbg !1566
  %10 = load i32, ptr %7, align 8, !dbg !1569, !tbaa !1477
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1570
  %12 = load i32, ptr %11, align 4, !dbg !1570, !tbaa !1527
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1571
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1572
  %15 = load ptr, ptr %14, align 8, !dbg !1572, !tbaa !1548
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1573
  %17 = load ptr, ptr %16, align 8, !dbg !1573, !tbaa !1551
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1574
  call void @llvm.dbg.value(metadata i64 %18, metadata !1565, metadata !DIExpression()), !dbg !1566
  store i32 %9, ptr %8, align 4, !dbg !1575, !tbaa !813
  ret i64 %18, !dbg !1576
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1577 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1583, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %1, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %2, metadata !1585, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %3, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %4, metadata !1587, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %5, metadata !1588, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %6, metadata !1589, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %7, metadata !1590, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %8, metadata !1591, metadata !DIExpression()), !dbg !1645
  %16 = tail call i64 @__ctype_get_mb_cur_max() #36, !dbg !1646
  %17 = icmp eq i64 %16, 1, !dbg !1647
  call void @llvm.dbg.value(metadata i1 %17, metadata !1592, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1645
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr null, metadata !1595, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 0, metadata !1596, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %5, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1645
  %18 = and i32 %5, 2, !dbg !1648
  %19 = icmp ne i32 %18, 0, !dbg !1648
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1648

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !1649
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !1650
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !1651
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %34, metadata !1596, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %33, metadata !1595, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %32, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %31, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %30, metadata !1591, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %29, metadata !1590, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %28, metadata !1587, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.label(metadata !1638), !dbg !1652
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1645
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
  ], !dbg !1653

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 5, metadata !1587, metadata !DIExpression()), !dbg !1645
  br label %102, !dbg !1654

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 5, metadata !1587, metadata !DIExpression()), !dbg !1645
  br i1 %36, label %102, label %42, !dbg !1654

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1655
  br i1 %43, label %102, label %44, !dbg !1659

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1655, !tbaa !822
  br label %102, !dbg !1655

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !514, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i32 %28, metadata !515, metadata !DIExpression()), !dbg !1660
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #36, !dbg !1664
  call void @llvm.dbg.value(metadata ptr %46, metadata !516, metadata !DIExpression()), !dbg !1660
  %47 = icmp eq ptr %46, @.str.11.64, !dbg !1665
  br i1 %47, label %48, label %57, !dbg !1667

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1668
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1669
  call void @llvm.dbg.declare(metadata ptr %13, metadata !518, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata ptr %13, metadata !1671, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata ptr %13, metadata !1679, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i32 0, metadata !1682, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 8, metadata !1683, metadata !DIExpression()), !dbg !1684
  store i64 0, ptr %13, align 8, !dbg !1686
  call void @llvm.dbg.value(metadata ptr %12, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !1660
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1687
  %50 = icmp eq i64 %49, 3, !dbg !1689
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !517, metadata !DIExpression()), !dbg !1660
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1690
  %54 = icmp eq i32 %28, 9, !dbg !1690
  %55 = select i1 %54, ptr @.str.10.66, ptr @.str.12.67, !dbg !1690
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1691
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1691
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1660
  call void @llvm.dbg.value(metadata ptr %58, metadata !1590, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !514, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 %28, metadata !515, metadata !DIExpression()), !dbg !1692
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #36, !dbg !1694
  call void @llvm.dbg.value(metadata ptr %59, metadata !516, metadata !DIExpression()), !dbg !1692
  %60 = icmp eq ptr %59, @.str.12.67, !dbg !1695
  br i1 %60, label %61, label %70, !dbg !1696

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1697
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1698
  call void @llvm.dbg.declare(metadata ptr %11, metadata !518, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata ptr %11, metadata !1671, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata ptr %11, metadata !1679, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 0, metadata !1682, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 8, metadata !1683, metadata !DIExpression()), !dbg !1702
  store i64 0, ptr %11, align 8, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %10, metadata !517, metadata !DIExpression(DW_OP_deref)), !dbg !1692
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1705
  %63 = icmp eq i64 %62, 3, !dbg !1706
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !517, metadata !DIExpression()), !dbg !1692
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1707
  %67 = icmp eq i32 %28, 9, !dbg !1707
  %68 = select i1 %67, ptr @.str.10.66, ptr @.str.12.67, !dbg !1707
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1707
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1708
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1708
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !1591, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %71, metadata !1590, metadata !DIExpression()), !dbg !1645
  br i1 %36, label %88, label %73, !dbg !1709

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !1602, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1645
  %74 = load i8, ptr %71, align 1, !dbg !1711, !tbaa !822
  %75 = icmp eq i8 %74, 0, !dbg !1713
  br i1 %75, label %88, label %76, !dbg !1713

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !1602, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i64 %79, metadata !1593, metadata !DIExpression()), !dbg !1645
  %80 = icmp ult i64 %79, %39, !dbg !1714
  br i1 %80, label %81, label %83, !dbg !1717

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1714
  store i8 %77, ptr %82, align 1, !dbg !1714, !tbaa !822
  br label %83, !dbg !1714

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1717
  call void @llvm.dbg.value(metadata i64 %84, metadata !1593, metadata !DIExpression()), !dbg !1645
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %85, metadata !1602, metadata !DIExpression()), !dbg !1710
  %86 = load i8, ptr %85, align 1, !dbg !1711, !tbaa !822
  %87 = icmp eq i8 %86, 0, !dbg !1713
  br i1 %87, label %88, label %76, !dbg !1713, !llvm.loop !1719

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !1721
  call void @llvm.dbg.value(metadata i64 %89, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %72, metadata !1595, metadata !DIExpression()), !dbg !1645
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #37, !dbg !1722
  call void @llvm.dbg.value(metadata i64 %90, metadata !1596, metadata !DIExpression()), !dbg !1645
  br label %102, !dbg !1723

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1645
  br label %93, !dbg !1724

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1645
  br i1 %36, label %102, label %96, !dbg !1725

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 2, metadata !1587, metadata !DIExpression()), !dbg !1645
  br label %102, !dbg !1726

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 2, metadata !1587, metadata !DIExpression()), !dbg !1645
  br i1 %36, label %102, label %96, !dbg !1726

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !1727
  br i1 %98, label %102, label %99, !dbg !1731

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !1727, !tbaa !822
  br label %102, !dbg !1727

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1645
  br label %102, !dbg !1732

101:                                              ; preds = %27
  call void @abort() #38, !dbg !1733
  unreachable, !dbg !1733

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !1721
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.66, %42 ], [ @.str.10.66, %44 ], [ @.str.10.66, %41 ], [ %33, %27 ], [ @.str.12.67, %96 ], [ @.str.12.67, %99 ], [ @.str.12.67, %95 ], [ @.str.10.66, %40 ], [ @.str.12.67, %93 ], [ @.str.12.67, %92 ], !dbg !1645
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !1645
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %108, metadata !1596, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %107, metadata !1595, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %106, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %105, metadata !1591, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata ptr %104, metadata !1590, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %103, metadata !1587, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 0, metadata !1607, metadata !DIExpression()), !dbg !1734
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
  br label %122, !dbg !1735

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !1721
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !1649
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !1736
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %129, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %125, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %123, metadata !1586, metadata !DIExpression()), !dbg !1645
  %131 = icmp eq i64 %123, -1, !dbg !1737
  br i1 %131, label %132, label %136, !dbg !1738

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1739
  %134 = load i8, ptr %133, align 1, !dbg !1739, !tbaa !822
  %135 = icmp eq i8 %134, 0, !dbg !1740
  br i1 %135, label %579, label %138, !dbg !1741

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !1742
  br i1 %137, label %579, label %138, !dbg !1741

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1743
  br i1 %114, label %139, label %152, !dbg !1744

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !1746
  %141 = select i1 %131, i1 %115, i1 false, !dbg !1747
  br i1 %141, label %142, label %144, !dbg !1747

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %143, metadata !1586, metadata !DIExpression()), !dbg !1645
  br label %144, !dbg !1749

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !1749
  call void @llvm.dbg.value(metadata i64 %145, metadata !1586, metadata !DIExpression()), !dbg !1645
  %146 = icmp ugt i64 %140, %145, !dbg !1750
  br i1 %146, label %152, label %147, !dbg !1751

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1752
  call void @llvm.dbg.value(metadata ptr %148, metadata !1753, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata ptr %107, metadata !1756, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i64 %108, metadata !1757, metadata !DIExpression()), !dbg !1758
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !1760
  %150 = icmp eq i32 %149, 0, !dbg !1761
  %151 = and i1 %150, %110, !dbg !1762
  br i1 %151, label %630, label %152, !dbg !1762

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %153, metadata !1586, metadata !DIExpression()), !dbg !1645
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !1763
  %156 = load i8, ptr %155, align 1, !dbg !1763, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %156, metadata !1614, metadata !DIExpression()), !dbg !1743
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
  ], !dbg !1764

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !1765

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !1766

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1743
  %160 = select i1 %111, i1 true, i1 %128, !dbg !1770
  br i1 %160, label %177, label %161, !dbg !1770

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !1772
  br i1 %162, label %163, label %165, !dbg !1776

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1772
  store i8 39, ptr %164, align 1, !dbg !1772, !tbaa !822
  br label %165, !dbg !1772

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !1776
  call void @llvm.dbg.value(metadata i64 %166, metadata !1593, metadata !DIExpression()), !dbg !1645
  %167 = icmp ult i64 %166, %130, !dbg !1777
  br i1 %167, label %168, label %170, !dbg !1780

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !1777
  store i8 36, ptr %169, align 1, !dbg !1777, !tbaa !822
  br label %170, !dbg !1777

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %171, metadata !1593, metadata !DIExpression()), !dbg !1645
  %172 = icmp ult i64 %171, %130, !dbg !1781
  br i1 %172, label %173, label %175, !dbg !1784

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !1781
  store i8 39, ptr %174, align 1, !dbg !1781, !tbaa !822
  br label %175, !dbg !1781

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %176, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1645
  br label %177, !dbg !1785

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !1645
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %178, metadata !1593, metadata !DIExpression()), !dbg !1645
  %180 = icmp ult i64 %178, %130, !dbg !1786
  br i1 %180, label %181, label %183, !dbg !1789

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !1786
  store i8 92, ptr %182, align 1, !dbg !1786, !tbaa !822
  br label %183, !dbg !1786

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %184, metadata !1593, metadata !DIExpression()), !dbg !1645
  br i1 %111, label %185, label %482, !dbg !1790

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !1792
  %187 = icmp ult i64 %186, %153, !dbg !1793
  br i1 %187, label %188, label %439, !dbg !1794

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !1795
  %190 = load i8, ptr %189, align 1, !dbg !1795, !tbaa !822
  %191 = add i8 %190, -48, !dbg !1796
  %192 = icmp ult i8 %191, 10, !dbg !1796
  br i1 %192, label %193, label %439, !dbg !1796

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !1797
  br i1 %194, label %195, label %197, !dbg !1801

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !1797
  store i8 48, ptr %196, align 1, !dbg !1797, !tbaa !822
  br label %197, !dbg !1797

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !1801
  call void @llvm.dbg.value(metadata i64 %198, metadata !1593, metadata !DIExpression()), !dbg !1645
  %199 = icmp ult i64 %198, %130, !dbg !1802
  br i1 %199, label %200, label %202, !dbg !1805

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !1802
  store i8 48, ptr %201, align 1, !dbg !1802, !tbaa !822
  br label %202, !dbg !1802

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %203, metadata !1593, metadata !DIExpression()), !dbg !1645
  br label %439, !dbg !1806

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !1807

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !1808

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !1809

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !1811

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !1813
  %210 = icmp ult i64 %209, %153, !dbg !1814
  br i1 %210, label %211, label %439, !dbg !1815

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !1816
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !1817
  %214 = load i8, ptr %213, align 1, !dbg !1817, !tbaa !822
  %215 = icmp eq i8 %214, 63, !dbg !1818
  br i1 %215, label %216, label %439, !dbg !1819

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !1820
  %218 = load i8, ptr %217, align 1, !dbg !1820, !tbaa !822
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
  ], !dbg !1821

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !1822

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %209, metadata !1607, metadata !DIExpression()), !dbg !1734
  %221 = icmp ult i64 %124, %130, !dbg !1824
  br i1 %221, label %222, label %224, !dbg !1827

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1824
  store i8 63, ptr %223, align 1, !dbg !1824, !tbaa !822
  br label %224, !dbg !1824

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !1827
  call void @llvm.dbg.value(metadata i64 %225, metadata !1593, metadata !DIExpression()), !dbg !1645
  %226 = icmp ult i64 %225, %130, !dbg !1828
  br i1 %226, label %227, label %229, !dbg !1831

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !1828
  store i8 34, ptr %228, align 1, !dbg !1828, !tbaa !822
  br label %229, !dbg !1828

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !1831
  call void @llvm.dbg.value(metadata i64 %230, metadata !1593, metadata !DIExpression()), !dbg !1645
  %231 = icmp ult i64 %230, %130, !dbg !1832
  br i1 %231, label %232, label %234, !dbg !1835

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !1832
  store i8 34, ptr %233, align 1, !dbg !1832, !tbaa !822
  br label %234, !dbg !1832

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %235, metadata !1593, metadata !DIExpression()), !dbg !1645
  %236 = icmp ult i64 %235, %130, !dbg !1836
  br i1 %236, label %237, label %239, !dbg !1839

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !1836
  store i8 63, ptr %238, align 1, !dbg !1836, !tbaa !822
  br label %239, !dbg !1836

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %240, metadata !1593, metadata !DIExpression()), !dbg !1645
  br label %439, !dbg !1840

241:                                              ; preds = %152
  br label %251, !dbg !1841

242:                                              ; preds = %152
  br label %251, !dbg !1842

243:                                              ; preds = %152
  br label %249, !dbg !1843

244:                                              ; preds = %152
  br label %249, !dbg !1844

245:                                              ; preds = %152
  br label %251, !dbg !1845

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !1846

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !1847

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !1850

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !1852
  call void @llvm.dbg.label(metadata !1639), !dbg !1853
  br i1 %119, label %621, label %251, !dbg !1854

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !1852
  call void @llvm.dbg.label(metadata !1641), !dbg !1856
  br i1 %109, label %493, label %450, !dbg !1857

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !1858

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !1859, !tbaa !822
  %256 = icmp eq i8 %255, 0, !dbg !1861
  br i1 %256, label %257, label %439, !dbg !1862

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !1863
  br i1 %258, label %259, label %439, !dbg !1865

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1743
  br label %260, !dbg !1866

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1743
  br i1 %116, label %262, label %439, !dbg !1867

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !1869

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1743
  br i1 %116, label %264, label %439, !dbg !1870

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !1871

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !1874
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !1876
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !1876
  %270 = select i1 %268, i64 %130, i64 0, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %270, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %269, metadata !1594, metadata !DIExpression()), !dbg !1645
  %271 = icmp ult i64 %124, %270, !dbg !1877
  br i1 %271, label %272, label %274, !dbg !1880

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !1877
  store i8 39, ptr %273, align 1, !dbg !1877, !tbaa !822
  br label %274, !dbg !1877

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %275, metadata !1593, metadata !DIExpression()), !dbg !1645
  %276 = icmp ult i64 %275, %270, !dbg !1881
  br i1 %276, label %277, label %279, !dbg !1884

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !1881
  store i8 92, ptr %278, align 1, !dbg !1881, !tbaa !822
  br label %279, !dbg !1881

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !1884
  call void @llvm.dbg.value(metadata i64 %280, metadata !1593, metadata !DIExpression()), !dbg !1645
  %281 = icmp ult i64 %280, %270, !dbg !1885
  br i1 %281, label %282, label %284, !dbg !1888

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !1885
  store i8 39, ptr %283, align 1, !dbg !1885, !tbaa !822
  br label %284, !dbg !1885

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !1888
  call void @llvm.dbg.value(metadata i64 %285, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1645
  br label %439, !dbg !1889

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !1890

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !1615, metadata !DIExpression()), !dbg !1891
  %288 = tail call ptr @__ctype_b_loc() #39, !dbg !1892
  %289 = load ptr, ptr %288, align 8, !dbg !1892, !tbaa !753
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !1892
  %292 = load i16, ptr %291, align 2, !dbg !1892, !tbaa !854
  %293 = and i16 %292, 16384, !dbg !1892
  %294 = icmp ne i16 %293, 0, !dbg !1894
  call void @llvm.dbg.value(metadata i1 %294, metadata !1618, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1891
  br label %337, !dbg !1895

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1619, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata ptr %14, metadata !1671, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata ptr %14, metadata !1679, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i32 0, metadata !1682, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i64 8, metadata !1683, metadata !DIExpression()), !dbg !1900
  store i64 0, ptr %14, align 8, !dbg !1902
  call void @llvm.dbg.value(metadata i64 0, metadata !1615, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i8 1, metadata !1618, metadata !DIExpression()), !dbg !1891
  %296 = icmp eq i64 %153, -1, !dbg !1903
  br i1 %296, label %297, label %299, !dbg !1905

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %298, metadata !1586, metadata !DIExpression()), !dbg !1645
  br label %299, !dbg !1907

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !1743
  call void @llvm.dbg.value(metadata i64 %300, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1908
  %301 = sub i64 %300, %129, !dbg !1909
  call void @llvm.dbg.value(metadata ptr %15, metadata !1622, metadata !DIExpression(DW_OP_deref)), !dbg !1910
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #36, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %302, metadata !1626, metadata !DIExpression()), !dbg !1910
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !1912

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !1615, metadata !DIExpression()), !dbg !1891
  %304 = icmp ugt i64 %300, %129, !dbg !1913
  br i1 %304, label %306, label %332, !dbg !1915

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1891
  br label %332, !dbg !1916

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !1615, metadata !DIExpression()), !dbg !1891
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !1918
  %310 = load i8, ptr %309, align 1, !dbg !1918, !tbaa !822
  %311 = icmp eq i8 %310, 0, !dbg !1915
  br i1 %311, label %332, label %312, !dbg !1919

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %313, metadata !1615, metadata !DIExpression()), !dbg !1891
  %314 = add i64 %313, %129, !dbg !1921
  %315 = icmp eq i64 %313, %301, !dbg !1913
  br i1 %315, label %332, label %306, !dbg !1915, !llvm.loop !1922

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !1923
  %319 = and i1 %318, %110, !dbg !1923
  call void @llvm.dbg.value(metadata i64 1, metadata !1627, metadata !DIExpression()), !dbg !1924
  br i1 %319, label %320, label %328, !dbg !1923

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1627, metadata !DIExpression()), !dbg !1924
  %322 = add i64 %321, %129, !dbg !1925
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !1927
  %324 = load i8, ptr %323, align 1, !dbg !1927, !tbaa !822
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !1928

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %326, metadata !1627, metadata !DIExpression()), !dbg !1924
  %327 = icmp eq i64 %326, %302, !dbg !1930
  br i1 %327, label %328, label %320, !dbg !1931, !llvm.loop !1932

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !1934, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %329, metadata !1622, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i32 %329, metadata !1936, metadata !DIExpression()), !dbg !1944
  %330 = call i32 @iswprint(i32 noundef %329) #36, !dbg !1946
  %331 = icmp ne i32 %330, 0, !dbg !1947
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %302, metadata !1615, metadata !DIExpression()), !dbg !1891
  br label %332, !dbg !1948

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %333, metadata !1615, metadata !DIExpression()), !dbg !1891
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1950
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 0, metadata !1615, metadata !DIExpression()), !dbg !1891
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1949
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1950
  call void @llvm.dbg.label(metadata !1644), !dbg !1951
  %336 = select i1 %109, i32 4, i32 2, !dbg !1952
  br label %626, !dbg !1952

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !1743
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !1954
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1618, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %339, metadata !1615, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 %338, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i1 %340, metadata !1613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1743
  %341 = icmp ult i64 %339, 2, !dbg !1955
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !1956
  br i1 %343, label %439, label %344, !dbg !1956

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %345, metadata !1635, metadata !DIExpression()), !dbg !1958
  br label %346, !dbg !1959

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !1645
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !1734
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !1960
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !1743
  call void @llvm.dbg.value(metadata i8 %352, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %351, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %349, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %347, metadata !1593, metadata !DIExpression()), !dbg !1645
  br i1 %342, label %397, label %353, !dbg !1961

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !1966

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1743
  %355 = select i1 %111, i1 true, i1 %348, !dbg !1969
  br i1 %355, label %372, label %356, !dbg !1969

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !1971
  br i1 %357, label %358, label %360, !dbg !1975

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !1971
  store i8 39, ptr %359, align 1, !dbg !1971, !tbaa !822
  br label %360, !dbg !1971

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %361, metadata !1593, metadata !DIExpression()), !dbg !1645
  %362 = icmp ult i64 %361, %130, !dbg !1976
  br i1 %362, label %363, label %365, !dbg !1979

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !1976
  store i8 36, ptr %364, align 1, !dbg !1976, !tbaa !822
  br label %365, !dbg !1976

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !1979
  call void @llvm.dbg.value(metadata i64 %366, metadata !1593, metadata !DIExpression()), !dbg !1645
  %367 = icmp ult i64 %366, %130, !dbg !1980
  br i1 %367, label %368, label %370, !dbg !1983

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !1980
  store i8 39, ptr %369, align 1, !dbg !1980, !tbaa !822
  br label %370, !dbg !1980

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !1983
  call void @llvm.dbg.value(metadata i64 %371, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1645
  br label %372, !dbg !1984

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !1645
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %373, metadata !1593, metadata !DIExpression()), !dbg !1645
  %375 = icmp ult i64 %373, %130, !dbg !1985
  br i1 %375, label %376, label %378, !dbg !1988

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !1985
  store i8 92, ptr %377, align 1, !dbg !1985, !tbaa !822
  br label %378, !dbg !1985

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !1988
  call void @llvm.dbg.value(metadata i64 %379, metadata !1593, metadata !DIExpression()), !dbg !1645
  %380 = icmp ult i64 %379, %130, !dbg !1989
  br i1 %380, label %381, label %385, !dbg !1992

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !1989
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !1989
  store i8 %383, ptr %384, align 1, !dbg !1989, !tbaa !822
  br label %385, !dbg !1989

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !1992
  call void @llvm.dbg.value(metadata i64 %386, metadata !1593, metadata !DIExpression()), !dbg !1645
  %387 = icmp ult i64 %386, %130, !dbg !1993
  br i1 %387, label %388, label %393, !dbg !1996

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !1993
  %391 = or i8 %390, 48, !dbg !1993
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1993
  store i8 %391, ptr %392, align 1, !dbg !1993, !tbaa !822
  br label %393, !dbg !1993

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !1996
  call void @llvm.dbg.value(metadata i64 %394, metadata !1593, metadata !DIExpression()), !dbg !1645
  %395 = and i8 %352, 7, !dbg !1997
  %396 = or i8 %395, 48, !dbg !1998
  call void @llvm.dbg.value(metadata i8 %396, metadata !1614, metadata !DIExpression()), !dbg !1743
  br label %404, !dbg !1999

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2000

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2001
  br i1 %399, label %400, label %402, !dbg !2006

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2001
  store i8 92, ptr %401, align 1, !dbg !2001, !tbaa !822
  br label %402, !dbg !2001

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %403, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1743
  br label %404, !dbg !2007

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !1645
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !1743
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !1743
  call void @llvm.dbg.value(metadata i8 %409, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %408, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %405, metadata !1593, metadata !DIExpression()), !dbg !1645
  %410 = add i64 %349, 1, !dbg !2008
  %411 = icmp ugt i64 %345, %410, !dbg !2010
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2011

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2012
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2012
  br i1 %415, label %416, label %427, !dbg !2012

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2015
  br i1 %417, label %418, label %420, !dbg !2019

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2015
  store i8 39, ptr %419, align 1, !dbg !2015, !tbaa !822
  br label %420, !dbg !2015

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %421, metadata !1593, metadata !DIExpression()), !dbg !1645
  %422 = icmp ult i64 %421, %130, !dbg !2020
  br i1 %422, label %423, label %425, !dbg !2023

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2020
  store i8 39, ptr %424, align 1, !dbg !2020, !tbaa !822
  br label %425, !dbg !2020

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2023
  call void @llvm.dbg.value(metadata i64 %426, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1645
  br label %427, !dbg !2024

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2025
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %428, metadata !1593, metadata !DIExpression()), !dbg !1645
  %430 = icmp ult i64 %428, %130, !dbg !2026
  br i1 %430, label %431, label %433, !dbg !2029

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2026
  store i8 %409, ptr %432, align 1, !dbg !2026, !tbaa !822
  br label %433, !dbg !2026

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %434, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %410, metadata !1607, metadata !DIExpression()), !dbg !1734
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2030
  %436 = load i8, ptr %435, align 1, !dbg !2030, !tbaa !822
  call void @llvm.dbg.value(metadata i8 %436, metadata !1614, metadata !DIExpression()), !dbg !1743
  br label %346, !dbg !2031, !llvm.loop !2032

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i1 %340, metadata !1613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1743
  call void @llvm.dbg.value(metadata i8 %408, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %349, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %405, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %338, metadata !1586, metadata !DIExpression()), !dbg !1645
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2035
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !1645
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !1649
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !1734
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !1743
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 %448, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %445, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %442, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %441, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %440, metadata !1586, metadata !DIExpression()), !dbg !1645
  br i1 %112, label %461, label %450, !dbg !2036

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
  br i1 %121, label %462, label %482, !dbg !2038

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2039

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
  %473 = lshr i8 %464, 5, !dbg !2040
  %474 = zext i8 %473 to i64, !dbg !2040
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2041
  %476 = load i32, ptr %475, align 4, !dbg !2041, !tbaa !813
  %477 = and i8 %464, 31, !dbg !2042
  %478 = zext i8 %477 to i32, !dbg !2042
  %479 = shl nuw i32 1, %478, !dbg !2043
  %480 = and i32 %476, %479, !dbg !2043
  %481 = icmp eq i32 %480, 0, !dbg !2043
  br i1 %481, label %482, label %493, !dbg !2044

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
  br i1 %154, label %493, label %529, !dbg !2045

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2035
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !1645
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !1649
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2046
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !1743
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 %501, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %499, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %496, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %495, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %494, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.label(metadata !1642), !dbg !2047
  br i1 %110, label %621, label %503, !dbg !2048

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1743
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2050
  br i1 %504, label %521, label %505, !dbg !2050

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2052
  br i1 %506, label %507, label %509, !dbg !2056

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2052
  store i8 39, ptr %508, align 1, !dbg !2052, !tbaa !822
  br label %509, !dbg !2052

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %510, metadata !1593, metadata !DIExpression()), !dbg !1645
  %511 = icmp ult i64 %510, %502, !dbg !2057
  br i1 %511, label %512, label %514, !dbg !2060

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2057
  store i8 36, ptr %513, align 1, !dbg !2057, !tbaa !822
  br label %514, !dbg !2057

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2060
  call void @llvm.dbg.value(metadata i64 %515, metadata !1593, metadata !DIExpression()), !dbg !1645
  %516 = icmp ult i64 %515, %502, !dbg !2061
  br i1 %516, label %517, label %519, !dbg !2064

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2061
  store i8 39, ptr %518, align 1, !dbg !2061, !tbaa !822
  br label %519, !dbg !2061

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %520, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1645
  br label %521, !dbg !2065

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !1743
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %522, metadata !1593, metadata !DIExpression()), !dbg !1645
  %524 = icmp ult i64 %522, %502, !dbg !2066
  br i1 %524, label %525, label %527, !dbg !2069

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2066
  store i8 92, ptr %526, align 1, !dbg !2066, !tbaa !822
  br label %527, !dbg !2066

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %502, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 %501, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %499, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %496, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %528, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %494, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.label(metadata !1643), !dbg !2070
  br label %553, !dbg !2071

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2035
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !1645
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !1649
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2046
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2074
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 %538, metadata !1614, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.value(metadata i64 %535, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %532, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %531, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %530, metadata !1586, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.label(metadata !1643), !dbg !2070
  %540 = xor i1 %534, true, !dbg !2071
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2071
  br i1 %541, label %553, label %542, !dbg !2071

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2075
  br i1 %543, label %544, label %546, !dbg !2079

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2075
  store i8 39, ptr %545, align 1, !dbg !2075, !tbaa !822
  br label %546, !dbg !2075

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %547, metadata !1593, metadata !DIExpression()), !dbg !1645
  %548 = icmp ult i64 %547, %539, !dbg !2080
  br i1 %548, label %549, label %551, !dbg !2083

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2080
  store i8 39, ptr %550, align 1, !dbg !2080, !tbaa !822
  br label %551, !dbg !2080

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %552, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1645
  br label %553, !dbg !2084

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !1743
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %561, metadata !1593, metadata !DIExpression()), !dbg !1645
  %563 = icmp ult i64 %561, %554, !dbg !2085
  br i1 %563, label %564, label %566, !dbg !2088

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2085
  store i8 %555, ptr %565, align 1, !dbg !2085, !tbaa !822
  br label %566, !dbg !2085

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %567, metadata !1593, metadata !DIExpression()), !dbg !1645
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2089
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1645
  br label %569, !dbg !2090

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2035
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !1645
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !1649
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2046
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %576, metadata !1607, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %572, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %571, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %570, metadata !1586, metadata !DIExpression()), !dbg !1645
  %578 = add i64 %576, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %578, metadata !1607, metadata !DIExpression()), !dbg !1734
  br label %122, !dbg !2092, !llvm.loop !2093

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !1584, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %125, metadata !1594, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %123, metadata !1586, metadata !DIExpression()), !dbg !1645
  %580 = icmp ne i64 %124, 0, !dbg !2095
  %581 = xor i1 %110, true, !dbg !2097
  %582 = or i1 %580, %581, !dbg !2097
  %583 = or i1 %582, %111, !dbg !2097
  br i1 %583, label %584, label %621, !dbg !2097

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2098
  %586 = xor i1 %126, true, !dbg !2098
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2098
  br i1 %587, label %595, label %588, !dbg !2098

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2100

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2102
  br label %636, !dbg !2104

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2105
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2107
  br i1 %594, label %27, label %595, !dbg !2107

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2108
  %598 = or i1 %597, %596, !dbg !2110
  br i1 %598, label %614, label %599, !dbg !2110

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !1595, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1645
  %600 = load i8, ptr %107, align 1, !dbg !2111, !tbaa !822
  %601 = icmp eq i8 %600, 0, !dbg !2114
  br i1 %601, label %614, label %602, !dbg !2114

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !1595, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i64 %605, metadata !1593, metadata !DIExpression()), !dbg !1645
  %606 = icmp ult i64 %605, %130, !dbg !2115
  br i1 %606, label %607, label %609, !dbg !2118

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2115
  store i8 %603, ptr %608, align 1, !dbg !2115, !tbaa !822
  br label %609, !dbg !2115

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2118
  call void @llvm.dbg.value(metadata i64 %610, metadata !1593, metadata !DIExpression()), !dbg !1645
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2119
  call void @llvm.dbg.value(metadata ptr %611, metadata !1595, metadata !DIExpression()), !dbg !1645
  %612 = load i8, ptr %611, align 1, !dbg !2111, !tbaa !822
  %613 = icmp eq i8 %612, 0, !dbg !2114
  br i1 %613, label %614, label %602, !dbg !2114, !llvm.loop !2120

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !1721
  call void @llvm.dbg.value(metadata i64 %615, metadata !1593, metadata !DIExpression()), !dbg !1645
  %616 = icmp ult i64 %615, %130, !dbg !2122
  br i1 %616, label %617, label %636, !dbg !2124

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2125
  store i8 0, ptr %618, align 1, !dbg !2126, !tbaa !822
  br label %636, !dbg !2125

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !1644), !dbg !1951
  %620 = icmp eq i32 %103, 2, !dbg !2127
  br i1 %620, label %626, label %630, !dbg !1952

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !1644), !dbg !1951
  %624 = icmp eq i32 %103, 2, !dbg !2127
  %625 = select i1 %109, i32 4, i32 2, !dbg !1952
  br i1 %624, label %626, label %630, !dbg !1952

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !1952

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !1587, metadata !DIExpression()), !dbg !1645
  %634 = and i32 %5, -3, !dbg !2128
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2129
  br label %636, !dbg !2130

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2131
}

; Function Attrs: nounwind
declare !dbg !2132 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2135 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2138 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2140 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata ptr %2, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata ptr %0, metadata !2148, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr null, metadata !2154, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %2, metadata !2155, metadata !DIExpression()), !dbg !2161
  %4 = icmp eq ptr %2, null, !dbg !2163
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %5, metadata !2156, metadata !DIExpression()), !dbg !2161
  %6 = tail call ptr @__errno_location() #39, !dbg !2164
  %7 = load i32, ptr %6, align 4, !dbg !2164, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2157, metadata !DIExpression()), !dbg !2161
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2165
  %9 = load i32, ptr %8, align 4, !dbg !2165, !tbaa !1527
  %10 = or i32 %9, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %10, metadata !2158, metadata !DIExpression()), !dbg !2161
  %11 = load i32, ptr %5, align 8, !dbg !2167, !tbaa !1477
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2168
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2169
  %14 = load ptr, ptr %13, align 8, !dbg !2169, !tbaa !1548
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2170
  %16 = load ptr, ptr %15, align 8, !dbg !2170, !tbaa !1551
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2171
  %18 = add i64 %17, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %18, metadata !2159, metadata !DIExpression()), !dbg !2161
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %19, metadata !2160, metadata !DIExpression()), !dbg !2161
  %20 = load i32, ptr %5, align 8, !dbg !2174, !tbaa !1477
  %21 = load ptr, ptr %13, align 8, !dbg !2175, !tbaa !1548
  %22 = load ptr, ptr %15, align 8, !dbg !2176, !tbaa !1551
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2177
  store i32 %7, ptr %6, align 4, !dbg !2178, !tbaa !813
  ret ptr %19, !dbg !2179
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2149 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2148, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr %2, metadata !2154, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata ptr %3, metadata !2155, metadata !DIExpression()), !dbg !2180
  %5 = icmp eq ptr %3, null, !dbg !2181
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2181
  call void @llvm.dbg.value(metadata ptr %6, metadata !2156, metadata !DIExpression()), !dbg !2180
  %7 = tail call ptr @__errno_location() #39, !dbg !2182
  %8 = load i32, ptr %7, align 4, !dbg !2182, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %8, metadata !2157, metadata !DIExpression()), !dbg !2180
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2183
  %10 = load i32, ptr %9, align 4, !dbg !2183, !tbaa !1527
  %11 = icmp eq ptr %2, null, !dbg !2184
  %12 = zext i1 %11 to i32, !dbg !2184
  %13 = or i32 %10, %12, !dbg !2185
  call void @llvm.dbg.value(metadata i32 %13, metadata !2158, metadata !DIExpression()), !dbg !2180
  %14 = load i32, ptr %6, align 8, !dbg !2186, !tbaa !1477
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2187
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2188
  %17 = load ptr, ptr %16, align 8, !dbg !2188, !tbaa !1548
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2189
  %19 = load ptr, ptr %18, align 8, !dbg !2189, !tbaa !1551
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2190
  %21 = add i64 %20, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %21, metadata !2159, metadata !DIExpression()), !dbg !2180
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2192
  call void @llvm.dbg.value(metadata ptr %22, metadata !2160, metadata !DIExpression()), !dbg !2180
  %23 = load i32, ptr %6, align 8, !dbg !2193, !tbaa !1477
  %24 = load ptr, ptr %16, align 8, !dbg !2194, !tbaa !1548
  %25 = load ptr, ptr %18, align 8, !dbg !2195, !tbaa !1551
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2196
  store i32 %8, ptr %7, align 4, !dbg !2197, !tbaa !813
  br i1 %11, label %28, label %27, !dbg !2198

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2199, !tbaa !2201
  br label %28, !dbg !2202

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2203
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2204 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2209, !tbaa !753
  call void @llvm.dbg.value(metadata ptr %1, metadata !2206, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 1, metadata !2207, metadata !DIExpression()), !dbg !2211
  %2 = load i32, ptr @nslots, align 4, !tbaa !813
  call void @llvm.dbg.value(metadata i32 1, metadata !2207, metadata !DIExpression()), !dbg !2211
  %3 = icmp sgt i32 %2, 1, !dbg !2212
  br i1 %3, label %4, label %6, !dbg !2214

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2212
  br label %10, !dbg !2214

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2215
  %8 = load ptr, ptr %7, align 8, !dbg !2215, !tbaa !2217
  %9 = icmp eq ptr %8, @slot0, !dbg !2219
  br i1 %9, label %17, label %16, !dbg !2220

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2207, metadata !DIExpression()), !dbg !2211
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2221
  %13 = load ptr, ptr %12, align 8, !dbg !2221, !tbaa !2217
  tail call void @free(ptr noundef %13) #36, !dbg !2222
  %14 = add nuw nsw i64 %11, 1, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %14, metadata !2207, metadata !DIExpression()), !dbg !2211
  %15 = icmp eq i64 %14, %5, !dbg !2212
  br i1 %15, label %6, label %10, !dbg !2214, !llvm.loop !2224

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2226
  store i64 256, ptr @slotvec0, align 8, !dbg !2228, !tbaa !2229
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2230, !tbaa !2217
  br label %17, !dbg !2231

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2232
  br i1 %18, label %20, label %19, !dbg !2234

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2235
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2237, !tbaa !753
  br label %20, !dbg !2238

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2239, !tbaa !813
  ret void, !dbg !2240
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2241 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2244 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2246, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata ptr %1, metadata !2247, metadata !DIExpression()), !dbg !2248
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2249
  ret ptr %3, !dbg !2250
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2251 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata ptr %1, metadata !2256, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i64 %2, metadata !2257, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata ptr %3, metadata !2258, metadata !DIExpression()), !dbg !2271
  %6 = tail call ptr @__errno_location() #39, !dbg !2272
  %7 = load i32, ptr %6, align 4, !dbg !2272, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2259, metadata !DIExpression()), !dbg !2271
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2273, !tbaa !753
  call void @llvm.dbg.value(metadata ptr %8, metadata !2260, metadata !DIExpression()), !dbg !2271
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2261, metadata !DIExpression()), !dbg !2271
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2274
  br i1 %9, label %10, label %11, !dbg !2274

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2276
  unreachable, !dbg !2276

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2277, !tbaa !813
  %13 = icmp sgt i32 %12, %0, !dbg !2278
  br i1 %13, label %32, label %14, !dbg !2279

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2280
  call void @llvm.dbg.value(metadata i1 %15, metadata !2262, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2281
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2282
  %16 = sext i32 %12 to i64, !dbg !2283
  call void @llvm.dbg.value(metadata i64 %16, metadata !2265, metadata !DIExpression()), !dbg !2281
  store i64 %16, ptr %5, align 8, !dbg !2284, !tbaa !2201
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2285
  %18 = add nuw nsw i32 %0, 1, !dbg !2286
  %19 = sub i32 %18, %12, !dbg !2287
  %20 = sext i32 %19 to i64, !dbg !2288
  call void @llvm.dbg.value(metadata ptr %5, metadata !2265, metadata !DIExpression(DW_OP_deref)), !dbg !2281
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2289
  call void @llvm.dbg.value(metadata ptr %21, metadata !2260, metadata !DIExpression()), !dbg !2271
  store ptr %21, ptr @slotvec, align 8, !dbg !2290, !tbaa !753
  br i1 %15, label %22, label %23, !dbg !2291

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2292, !tbaa.struct !2294
  br label %23, !dbg !2295

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2296, !tbaa !813
  %25 = sext i32 %24 to i64, !dbg !2297
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2297
  %27 = load i64, ptr %5, align 8, !dbg !2298, !tbaa !2201
  call void @llvm.dbg.value(metadata i64 %27, metadata !2265, metadata !DIExpression()), !dbg !2281
  %28 = sub nsw i64 %27, %25, !dbg !2299
  %29 = shl i64 %28, 4, !dbg !2300
  call void @llvm.dbg.value(metadata ptr %26, metadata !1679, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i32 0, metadata !1682, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.value(metadata i64 %29, metadata !1683, metadata !DIExpression()), !dbg !2301
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2303
  %30 = load i64, ptr %5, align 8, !dbg !2304, !tbaa !2201
  call void @llvm.dbg.value(metadata i64 %30, metadata !2265, metadata !DIExpression()), !dbg !2281
  %31 = trunc i64 %30 to i32, !dbg !2304
  store i32 %31, ptr @nslots, align 4, !dbg !2305, !tbaa !813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2306
  br label %32, !dbg !2307

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2271
  call void @llvm.dbg.value(metadata ptr %33, metadata !2260, metadata !DIExpression()), !dbg !2271
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2308
  %36 = load i64, ptr %35, align 8, !dbg !2309, !tbaa !2229
  call void @llvm.dbg.value(metadata i64 %36, metadata !2266, metadata !DIExpression()), !dbg !2310
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2311
  %38 = load ptr, ptr %37, align 8, !dbg !2311, !tbaa !2217
  call void @llvm.dbg.value(metadata ptr %38, metadata !2268, metadata !DIExpression()), !dbg !2310
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2312
  %40 = load i32, ptr %39, align 4, !dbg !2312, !tbaa !1527
  %41 = or i32 %40, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %41, metadata !2269, metadata !DIExpression()), !dbg !2310
  %42 = load i32, ptr %3, align 8, !dbg !2314, !tbaa !1477
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2315
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2316
  %45 = load ptr, ptr %44, align 8, !dbg !2316, !tbaa !1548
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2317
  %47 = load ptr, ptr %46, align 8, !dbg !2317, !tbaa !1551
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2318
  call void @llvm.dbg.value(metadata i64 %48, metadata !2270, metadata !DIExpression()), !dbg !2310
  %49 = icmp ugt i64 %36, %48, !dbg !2319
  br i1 %49, label %60, label %50, !dbg !2321

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %51, metadata !2266, metadata !DIExpression()), !dbg !2310
  store i64 %51, ptr %35, align 8, !dbg !2324, !tbaa !2229
  %52 = icmp eq ptr %38, @slot0, !dbg !2325
  br i1 %52, label %54, label %53, !dbg !2327

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2328
  br label %54, !dbg !2328

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %55, metadata !2268, metadata !DIExpression()), !dbg !2310
  store ptr %55, ptr %37, align 8, !dbg !2330, !tbaa !2217
  %56 = load i32, ptr %3, align 8, !dbg !2331, !tbaa !1477
  %57 = load ptr, ptr %44, align 8, !dbg !2332, !tbaa !1548
  %58 = load ptr, ptr %46, align 8, !dbg !2333, !tbaa !1551
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2334
  br label %60, !dbg !2335

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2310
  call void @llvm.dbg.value(metadata ptr %61, metadata !2268, metadata !DIExpression()), !dbg !2310
  store i32 %7, ptr %6, align 4, !dbg !2336, !tbaa !813
  ret ptr %61, !dbg !2337
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2338 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2342, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata ptr %1, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata i64 %2, metadata !2344, metadata !DIExpression()), !dbg !2345
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2346
  ret ptr %4, !dbg !2347
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2348 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata ptr %0, metadata !2247, metadata !DIExpression()), !dbg !2352
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2354
  ret ptr %2, !dbg !2355
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2356 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2360, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i64 %1, metadata !2361, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 0, metadata !2342, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata ptr %0, metadata !2343, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %1, metadata !2344, metadata !DIExpression()), !dbg !2363
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2365
  ret ptr %3, !dbg !2366
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2367 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2371, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1, metadata !2372, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata ptr %2, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2374, metadata !DIExpression()), !dbg !2377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2378), !dbg !2381
  call void @llvm.dbg.value(metadata i32 %1, metadata !2382, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2390, !alias.scope !2378
  %5 = icmp eq i32 %1, 10, !dbg !2391
  br i1 %5, label %6, label %7, !dbg !2393

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2394, !noalias !2378
  unreachable, !dbg !2394

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2395, !tbaa !1477, !alias.scope !2378
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2396
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2397
  ret ptr %8, !dbg !2398
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2399 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2403, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata ptr %2, metadata !2405, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i64 %3, metadata !2406, metadata !DIExpression()), !dbg !2408
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2409
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2407, metadata !DIExpression()), !dbg !2410
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411), !dbg !2414
  call void @llvm.dbg.value(metadata i32 %1, metadata !2382, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2387, metadata !DIExpression()), !dbg !2417
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2417, !alias.scope !2411
  %6 = icmp eq i32 %1, 10, !dbg !2418
  br i1 %6, label %7, label %8, !dbg !2419

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2420, !noalias !2411
  unreachable, !dbg !2420

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2421, !tbaa !1477, !alias.scope !2411
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2422
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2423
  ret ptr %9, !dbg !2424
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2425 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata ptr %1, metadata !2430, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 0, metadata !2371, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i32 %0, metadata !2372, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata ptr %1, metadata !2373, metadata !DIExpression()), !dbg !2432
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2374, metadata !DIExpression()), !dbg !2435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2387, metadata !DIExpression()), !dbg !2442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2442, !alias.scope !2436
  %4 = icmp eq i32 %0, 10, !dbg !2443
  br i1 %4, label %5, label %6, !dbg !2444

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2445, !noalias !2436
  unreachable, !dbg !2445

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2446, !tbaa !1477, !alias.scope !2436
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2447
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2448
  ret ptr %7, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2450 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata ptr %1, metadata !2455, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i64 %2, metadata !2456, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata ptr %1, metadata !2405, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.value(metadata i64 %2, metadata !2406, metadata !DIExpression()), !dbg !2458
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2460
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2407, metadata !DIExpression()), !dbg !2461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462), !dbg !2465
  call void @llvm.dbg.value(metadata i32 %0, metadata !2382, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2387, metadata !DIExpression()), !dbg !2468
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2468, !alias.scope !2462
  %5 = icmp eq i32 %0, 10, !dbg !2469
  br i1 %5, label %6, label %7, !dbg !2470

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2471, !noalias !2462
  unreachable, !dbg !2471

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2472, !tbaa !1477, !alias.scope !2462
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2473
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2474
  ret ptr %8, !dbg !2475
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2476 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %2, metadata !2482, metadata !DIExpression()), !dbg !2484
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2485
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2483, metadata !DIExpression()), !dbg !2486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2487, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 %2, metadata !1495, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.value(metadata i8 %2, metadata !1497, metadata !DIExpression()), !dbg !2489
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2491
  %6 = lshr i8 %2, 5, !dbg !2492
  %7 = zext i8 %6 to i64, !dbg !2492
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2493
  call void @llvm.dbg.value(metadata ptr %8, metadata !1498, metadata !DIExpression()), !dbg !2489
  %9 = and i8 %2, 31, !dbg !2494
  %10 = zext i8 %9 to i32, !dbg !2494
  call void @llvm.dbg.value(metadata i32 %10, metadata !1500, metadata !DIExpression()), !dbg !2489
  %11 = load i32, ptr %8, align 4, !dbg !2495, !tbaa !813
  %12 = lshr i32 %11, %10, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %12, metadata !1501, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2489
  %13 = and i32 %12, 1, !dbg !2497
  %14 = xor i32 %13, 1, !dbg !2497
  %15 = shl nuw i32 %14, %10, !dbg !2498
  %16 = xor i32 %15, %11, !dbg !2499
  store i32 %16, ptr %8, align 4, !dbg !2499, !tbaa !813
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2500
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2501
  ret ptr %17, !dbg !2502
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2503 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %1, metadata !2508, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 -1, metadata !2481, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 %1, metadata !2482, metadata !DIExpression()), !dbg !2510
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2483, metadata !DIExpression()), !dbg !2513
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2514, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %3, metadata !1494, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 %1, metadata !1495, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 %1, metadata !1497, metadata !DIExpression()), !dbg !2515
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2517
  %5 = lshr i8 %1, 5, !dbg !2518
  %6 = zext i8 %5 to i64, !dbg !2518
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2519
  call void @llvm.dbg.value(metadata ptr %7, metadata !1498, metadata !DIExpression()), !dbg !2515
  %8 = and i8 %1, 31, !dbg !2520
  %9 = zext i8 %8 to i32, !dbg !2520
  call void @llvm.dbg.value(metadata i32 %9, metadata !1500, metadata !DIExpression()), !dbg !2515
  %10 = load i32, ptr %7, align 4, !dbg !2521, !tbaa !813
  %11 = lshr i32 %10, %9, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %11, metadata !1501, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2515
  %12 = and i32 %11, 1, !dbg !2523
  %13 = xor i32 %12, 1, !dbg !2523
  %14 = shl nuw i32 %13, %9, !dbg !2524
  %15 = xor i32 %14, %10, !dbg !2525
  store i32 %15, ptr %7, align 4, !dbg !2525, !tbaa !813
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2526
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2527
  ret ptr %16, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2529 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2531, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata ptr %0, metadata !2507, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 58, metadata !2508, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 -1, metadata !2481, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2483, metadata !DIExpression()), !dbg !2538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2539, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %2, metadata !1494, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 58, metadata !1495, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2540
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2542
  call void @llvm.dbg.value(metadata ptr %3, metadata !1498, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 26, metadata !1500, metadata !DIExpression()), !dbg !2540
  %4 = load i32, ptr %3, align 4, !dbg !2543, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %4, metadata !1501, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2540
  %5 = or i32 %4, 67108864, !dbg !2544
  store i32 %5, ptr %3, align 4, !dbg !2544, !tbaa !813
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2545
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2546
  ret ptr %6, !dbg !2547
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2548 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2550, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i64 %1, metadata !2551, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata ptr %0, metadata !2480, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i64 %1, metadata !2481, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 58, metadata !2482, metadata !DIExpression()), !dbg !2553
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2555
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2483, metadata !DIExpression()), !dbg !2556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2557, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %3, metadata !1494, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !1495, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2558
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2560
  call void @llvm.dbg.value(metadata ptr %4, metadata !1498, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 26, metadata !1500, metadata !DIExpression()), !dbg !2558
  %5 = load i32, ptr %4, align 4, !dbg !2561, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %5, metadata !1501, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2558
  %6 = or i32 %5, 67108864, !dbg !2562
  store i32 %6, ptr %4, align 4, !dbg !2562, !tbaa !813
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2563
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2564
  ret ptr %7, !dbg !2565
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2566 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2387, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2572
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata i32 %1, metadata !2569, metadata !DIExpression()), !dbg !2574
  call void @llvm.dbg.value(metadata ptr %2, metadata !2570, metadata !DIExpression()), !dbg !2574
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2571, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 %1, metadata !2382, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2577
  %5 = icmp eq i32 %1, 10, !dbg !2578
  br i1 %5, label %6, label %7, !dbg !2579

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2580, !noalias !2581
  unreachable, !dbg !2580

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2387, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2577
  store i32 %1, ptr %4, align 8, !dbg !2584, !tbaa.struct !2488
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2584
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2584
  call void @llvm.dbg.value(metadata ptr %4, metadata !1494, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !1495, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 1, metadata !1496, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !1497, metadata !DIExpression()), !dbg !2585
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2587
  call void @llvm.dbg.value(metadata ptr %9, metadata !1498, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 26, metadata !1500, metadata !DIExpression()), !dbg !2585
  %10 = load i32, ptr %9, align 4, !dbg !2588, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %10, metadata !1501, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2585
  %11 = or i32 %10, 67108864, !dbg !2589
  store i32 %11, ptr %9, align 4, !dbg !2589, !tbaa !813
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2590
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2591
  ret ptr %12, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2593 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %1, metadata !2598, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata ptr %3, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %1, metadata !2607, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata ptr %3, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i64 -1, metadata !2610, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2614
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2611, metadata !DIExpression()), !dbg !2615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2616, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %5, metadata !1534, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata ptr %1, metadata !1535, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata ptr %2, metadata !1536, metadata !DIExpression()), !dbg !2617
  call void @llvm.dbg.value(metadata ptr %5, metadata !1534, metadata !DIExpression()), !dbg !2617
  store i32 10, ptr %5, align 8, !dbg !2619, !tbaa !1477
  %6 = icmp ne ptr %1, null, !dbg !2620
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2621
  br i1 %8, label %10, label %9, !dbg !2621

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2622
  unreachable, !dbg !2622

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2623
  store ptr %1, ptr %11, align 8, !dbg !2624, !tbaa !1548
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2625
  store ptr %2, ptr %12, align 8, !dbg !2626, !tbaa !1551
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2627
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2628
  ret ptr %13, !dbg !2629
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2603 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2602, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %1, metadata !2607, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %2, metadata !2608, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %3, metadata !2609, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 %4, metadata !2610, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2631
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2611, metadata !DIExpression()), !dbg !2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2633, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %6, metadata !1534, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %1, metadata !1535, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %2, metadata !1536, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.value(metadata ptr %6, metadata !1534, metadata !DIExpression()), !dbg !2634
  store i32 10, ptr %6, align 8, !dbg !2636, !tbaa !1477
  %7 = icmp ne ptr %1, null, !dbg !2637
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2638
  br i1 %9, label %11, label %10, !dbg !2638

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2639
  unreachable, !dbg !2639

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2640
  store ptr %1, ptr %12, align 8, !dbg !2641, !tbaa !1548
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2642
  store ptr %2, ptr %13, align 8, !dbg !2643, !tbaa !1551
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2644
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2645
  ret ptr %14, !dbg !2646
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2647 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2651, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %1, metadata !2652, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata ptr %2, metadata !2653, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.value(metadata i32 0, metadata !2597, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %0, metadata !2598, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %1, metadata !2599, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %2, metadata !2600, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %0, metadata !2607, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2657
  call void @llvm.dbg.value(metadata i64 -1, metadata !2610, metadata !DIExpression()), !dbg !2657
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2659
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2611, metadata !DIExpression()), !dbg !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2661, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %4, metadata !1534, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %0, metadata !1535, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %1, metadata !1536, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata ptr %4, metadata !1534, metadata !DIExpression()), !dbg !2662
  store i32 10, ptr %4, align 8, !dbg !2664, !tbaa !1477
  %5 = icmp ne ptr %0, null, !dbg !2665
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2666
  br i1 %7, label %9, label %8, !dbg !2666

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2667
  unreachable, !dbg !2667

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2668
  store ptr %0, ptr %10, align 8, !dbg !2669, !tbaa !1548
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2670
  store ptr %1, ptr %11, align 8, !dbg !2671, !tbaa !1551
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2672
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2673
  ret ptr %12, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2675 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2679, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %1, metadata !2680, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %2, metadata !2681, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i64 %3, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i32 0, metadata !2602, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %0, metadata !2607, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %1, metadata !2608, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata ptr %2, metadata !2609, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i64 %3, metadata !2610, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2611, metadata !DIExpression()), !dbg !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2688, !tbaa.struct !2488
  call void @llvm.dbg.value(metadata ptr %5, metadata !1534, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %0, metadata !1535, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %1, metadata !1536, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.value(metadata ptr %5, metadata !1534, metadata !DIExpression()), !dbg !2689
  store i32 10, ptr %5, align 8, !dbg !2691, !tbaa !1477
  %6 = icmp ne ptr %0, null, !dbg !2692
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2693
  br i1 %8, label %10, label %9, !dbg !2693

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2694
  unreachable, !dbg !2694

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2695
  store ptr %0, ptr %11, align 8, !dbg !2696, !tbaa !1548
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2697
  store ptr %1, ptr %12, align 8, !dbg !2698, !tbaa !1551
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2699
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2700
  ret ptr %13, !dbg !2701
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2702 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2706, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %2, metadata !2708, metadata !DIExpression()), !dbg !2709
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2710
  ret ptr %4, !dbg !2711
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2712 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2716, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i64 %1, metadata !2717, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i64 %1, metadata !2708, metadata !DIExpression()), !dbg !2719
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2721
  ret ptr %3, !dbg !2722
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2723 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2727, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata ptr %1, metadata !2728, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %0, metadata !2706, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata ptr %1, metadata !2707, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i64 -1, metadata !2708, metadata !DIExpression()), !dbg !2730
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2732
  ret ptr %3, !dbg !2733
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2734 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 0, metadata !2727, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %0, metadata !2728, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2706, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i64 -1, metadata !2708, metadata !DIExpression()), !dbg !2742
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2744
  ret ptr %2, !dbg !2745
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2746 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2785, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %1, metadata !2786, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %2, metadata !2787, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %3, metadata !2788, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata ptr %4, metadata !2789, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i64 %5, metadata !2790, metadata !DIExpression()), !dbg !2791
  %7 = icmp eq ptr %1, null, !dbg !2792
  br i1 %7, label %10, label %8, !dbg !2794

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2795
  br label %12, !dbg !2795

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #36, !dbg !2796
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #36, !dbg !2797
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2797
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2798
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #36, !dbg !2799
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #36, !dbg !2799
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2800
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
  ], !dbg !2801

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #36, !dbg !2802
  %21 = load ptr, ptr %4, align 8, !dbg !2802, !tbaa !753
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2802
  br label %147, !dbg !2804

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #36, !dbg !2805
  %25 = load ptr, ptr %4, align 8, !dbg !2805, !tbaa !753
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2805
  %27 = load ptr, ptr %26, align 8, !dbg !2805, !tbaa !753
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2805
  br label %147, !dbg !2806

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #36, !dbg !2807
  %31 = load ptr, ptr %4, align 8, !dbg !2807, !tbaa !753
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2807
  %33 = load ptr, ptr %32, align 8, !dbg !2807, !tbaa !753
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2807
  %35 = load ptr, ptr %34, align 8, !dbg !2807, !tbaa !753
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2807
  br label %147, !dbg !2808

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #36, !dbg !2809
  %39 = load ptr, ptr %4, align 8, !dbg !2809, !tbaa !753
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2809
  %41 = load ptr, ptr %40, align 8, !dbg !2809, !tbaa !753
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2809
  %43 = load ptr, ptr %42, align 8, !dbg !2809, !tbaa !753
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2809
  %45 = load ptr, ptr %44, align 8, !dbg !2809, !tbaa !753
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2809
  br label %147, !dbg !2810

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #36, !dbg !2811
  %49 = load ptr, ptr %4, align 8, !dbg !2811, !tbaa !753
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2811
  %51 = load ptr, ptr %50, align 8, !dbg !2811, !tbaa !753
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2811
  %53 = load ptr, ptr %52, align 8, !dbg !2811, !tbaa !753
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2811
  %55 = load ptr, ptr %54, align 8, !dbg !2811, !tbaa !753
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2811
  %57 = load ptr, ptr %56, align 8, !dbg !2811, !tbaa !753
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2811
  br label %147, !dbg !2812

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #36, !dbg !2813
  %61 = load ptr, ptr %4, align 8, !dbg !2813, !tbaa !753
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2813
  %63 = load ptr, ptr %62, align 8, !dbg !2813, !tbaa !753
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2813
  %65 = load ptr, ptr %64, align 8, !dbg !2813, !tbaa !753
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2813
  %67 = load ptr, ptr %66, align 8, !dbg !2813, !tbaa !753
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2813
  %69 = load ptr, ptr %68, align 8, !dbg !2813, !tbaa !753
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2813
  %71 = load ptr, ptr %70, align 8, !dbg !2813, !tbaa !753
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2813
  br label %147, !dbg !2814

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #36, !dbg !2815
  %75 = load ptr, ptr %4, align 8, !dbg !2815, !tbaa !753
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2815
  %77 = load ptr, ptr %76, align 8, !dbg !2815, !tbaa !753
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2815
  %79 = load ptr, ptr %78, align 8, !dbg !2815, !tbaa !753
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2815
  %81 = load ptr, ptr %80, align 8, !dbg !2815, !tbaa !753
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2815
  %83 = load ptr, ptr %82, align 8, !dbg !2815, !tbaa !753
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2815
  %85 = load ptr, ptr %84, align 8, !dbg !2815, !tbaa !753
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2815
  %87 = load ptr, ptr %86, align 8, !dbg !2815, !tbaa !753
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2815
  br label %147, !dbg !2816

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #36, !dbg !2817
  %91 = load ptr, ptr %4, align 8, !dbg !2817, !tbaa !753
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2817
  %93 = load ptr, ptr %92, align 8, !dbg !2817, !tbaa !753
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2817
  %95 = load ptr, ptr %94, align 8, !dbg !2817, !tbaa !753
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2817
  %97 = load ptr, ptr %96, align 8, !dbg !2817, !tbaa !753
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2817
  %99 = load ptr, ptr %98, align 8, !dbg !2817, !tbaa !753
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2817
  %101 = load ptr, ptr %100, align 8, !dbg !2817, !tbaa !753
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2817
  %103 = load ptr, ptr %102, align 8, !dbg !2817, !tbaa !753
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2817
  %105 = load ptr, ptr %104, align 8, !dbg !2817, !tbaa !753
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2817
  br label %147, !dbg !2818

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #36, !dbg !2819
  %109 = load ptr, ptr %4, align 8, !dbg !2819, !tbaa !753
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2819
  %111 = load ptr, ptr %110, align 8, !dbg !2819, !tbaa !753
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2819
  %113 = load ptr, ptr %112, align 8, !dbg !2819, !tbaa !753
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2819
  %115 = load ptr, ptr %114, align 8, !dbg !2819, !tbaa !753
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2819
  %117 = load ptr, ptr %116, align 8, !dbg !2819, !tbaa !753
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2819
  %119 = load ptr, ptr %118, align 8, !dbg !2819, !tbaa !753
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2819
  %121 = load ptr, ptr %120, align 8, !dbg !2819, !tbaa !753
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2819
  %123 = load ptr, ptr %122, align 8, !dbg !2819, !tbaa !753
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2819
  %125 = load ptr, ptr %124, align 8, !dbg !2819, !tbaa !753
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2819
  br label %147, !dbg !2820

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #36, !dbg !2821
  %129 = load ptr, ptr %4, align 8, !dbg !2821, !tbaa !753
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2821
  %131 = load ptr, ptr %130, align 8, !dbg !2821, !tbaa !753
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2821
  %133 = load ptr, ptr %132, align 8, !dbg !2821, !tbaa !753
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2821
  %135 = load ptr, ptr %134, align 8, !dbg !2821, !tbaa !753
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2821
  %137 = load ptr, ptr %136, align 8, !dbg !2821, !tbaa !753
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2821
  %139 = load ptr, ptr %138, align 8, !dbg !2821, !tbaa !753
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2821
  %141 = load ptr, ptr %140, align 8, !dbg !2821, !tbaa !753
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2821
  %143 = load ptr, ptr %142, align 8, !dbg !2821, !tbaa !753
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2821
  %145 = load ptr, ptr %144, align 8, !dbg !2821, !tbaa !753
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2821
  br label %147, !dbg !2822

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2824 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %1, metadata !2829, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %2, metadata !2830, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %3, metadata !2831, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata ptr %4, metadata !2832, metadata !DIExpression()), !dbg !2834
  call void @llvm.dbg.value(metadata i64 0, metadata !2833, metadata !DIExpression()), !dbg !2834
  br label %6, !dbg !2835

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2837
  call void @llvm.dbg.value(metadata i64 %7, metadata !2833, metadata !DIExpression()), !dbg !2834
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2838
  %9 = load ptr, ptr %8, align 8, !dbg !2838, !tbaa !753
  %10 = icmp eq ptr %9, null, !dbg !2840
  %11 = add i64 %7, 1, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %11, metadata !2833, metadata !DIExpression()), !dbg !2834
  br i1 %10, label %12, label %6, !dbg !2840, !llvm.loop !2842

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2844
  ret void, !dbg !2845
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2846 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %1, metadata !2862, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %2, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata ptr %3, metadata !2864, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2865, metadata !DIExpression()), !dbg !2870
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2871
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2867, metadata !DIExpression()), !dbg !2872
  call void @llvm.dbg.value(metadata i64 0, metadata !2866, metadata !DIExpression()), !dbg !2869
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2866, metadata !DIExpression()), !dbg !2869
  %10 = icmp sgt i32 %9, -1, !dbg !2873
  br i1 %10, label %18, label %11, !dbg !2873

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2873
  store i32 %12, ptr %7, align 8, !dbg !2873
  %13 = icmp ult i32 %9, -7, !dbg !2873
  br i1 %13, label %14, label %18, !dbg !2873

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2873
  %16 = sext i32 %9 to i64, !dbg !2873
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2873
  br label %22, !dbg !2873

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2873
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2873
  store ptr %21, ptr %4, align 8, !dbg !2873
  br label %22, !dbg !2873

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2873
  %25 = load ptr, ptr %24, align 8, !dbg !2873
  store ptr %25, ptr %6, align 8, !dbg !2876, !tbaa !753
  %26 = icmp eq ptr %25, null, !dbg !2877
  br i1 %26, label %197, label %27, !dbg !2878

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 1, metadata !2866, metadata !DIExpression()), !dbg !2869
  %28 = icmp sgt i32 %23, -1, !dbg !2873
  br i1 %28, label %36, label %29, !dbg !2873

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2873
  store i32 %30, ptr %7, align 8, !dbg !2873
  %31 = icmp ult i32 %23, -7, !dbg !2873
  br i1 %31, label %32, label %36, !dbg !2873

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2873
  %34 = sext i32 %23 to i64, !dbg !2873
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2873
  br label %40, !dbg !2873

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2873
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2873
  store ptr %39, ptr %4, align 8, !dbg !2873
  br label %40, !dbg !2873

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2873
  %43 = load ptr, ptr %42, align 8, !dbg !2873
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2879
  store ptr %43, ptr %44, align 8, !dbg !2876, !tbaa !753
  %45 = icmp eq ptr %43, null, !dbg !2877
  br i1 %45, label %197, label %46, !dbg !2878

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 2, metadata !2866, metadata !DIExpression()), !dbg !2869
  %47 = icmp sgt i32 %41, -1, !dbg !2873
  br i1 %47, label %55, label %48, !dbg !2873

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2873
  store i32 %49, ptr %7, align 8, !dbg !2873
  %50 = icmp ult i32 %41, -7, !dbg !2873
  br i1 %50, label %51, label %55, !dbg !2873

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2873
  %53 = sext i32 %41 to i64, !dbg !2873
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2873
  br label %59, !dbg !2873

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2873
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2873
  store ptr %58, ptr %4, align 8, !dbg !2873
  br label %59, !dbg !2873

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2873
  %62 = load ptr, ptr %61, align 8, !dbg !2873
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2879
  store ptr %62, ptr %63, align 8, !dbg !2876, !tbaa !753
  %64 = icmp eq ptr %62, null, !dbg !2877
  br i1 %64, label %197, label %65, !dbg !2878

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 3, metadata !2866, metadata !DIExpression()), !dbg !2869
  %66 = icmp sgt i32 %60, -1, !dbg !2873
  br i1 %66, label %74, label %67, !dbg !2873

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2873
  store i32 %68, ptr %7, align 8, !dbg !2873
  %69 = icmp ult i32 %60, -7, !dbg !2873
  br i1 %69, label %70, label %74, !dbg !2873

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2873
  %72 = sext i32 %60 to i64, !dbg !2873
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2873
  br label %78, !dbg !2873

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2873
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2873
  store ptr %77, ptr %4, align 8, !dbg !2873
  br label %78, !dbg !2873

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2873
  %81 = load ptr, ptr %80, align 8, !dbg !2873
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2879
  store ptr %81, ptr %82, align 8, !dbg !2876, !tbaa !753
  %83 = icmp eq ptr %81, null, !dbg !2877
  br i1 %83, label %197, label %84, !dbg !2878

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 4, metadata !2866, metadata !DIExpression()), !dbg !2869
  %85 = icmp sgt i32 %79, -1, !dbg !2873
  br i1 %85, label %93, label %86, !dbg !2873

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2873
  store i32 %87, ptr %7, align 8, !dbg !2873
  %88 = icmp ult i32 %79, -7, !dbg !2873
  br i1 %88, label %89, label %93, !dbg !2873

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2873
  %91 = sext i32 %79 to i64, !dbg !2873
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2873
  br label %97, !dbg !2873

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2873
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2873
  store ptr %96, ptr %4, align 8, !dbg !2873
  br label %97, !dbg !2873

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2873
  %100 = load ptr, ptr %99, align 8, !dbg !2873
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2879
  store ptr %100, ptr %101, align 8, !dbg !2876, !tbaa !753
  %102 = icmp eq ptr %100, null, !dbg !2877
  br i1 %102, label %197, label %103, !dbg !2878

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 5, metadata !2866, metadata !DIExpression()), !dbg !2869
  %104 = icmp sgt i32 %98, -1, !dbg !2873
  br i1 %104, label %112, label %105, !dbg !2873

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2873
  store i32 %106, ptr %7, align 8, !dbg !2873
  %107 = icmp ult i32 %98, -7, !dbg !2873
  br i1 %107, label %108, label %112, !dbg !2873

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2873
  %110 = sext i32 %98 to i64, !dbg !2873
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2873
  br label %116, !dbg !2873

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2873
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2873
  store ptr %115, ptr %4, align 8, !dbg !2873
  br label %116, !dbg !2873

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2873
  %119 = load ptr, ptr %118, align 8, !dbg !2873
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2879
  store ptr %119, ptr %120, align 8, !dbg !2876, !tbaa !753
  %121 = icmp eq ptr %119, null, !dbg !2877
  br i1 %121, label %197, label %122, !dbg !2878

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 6, metadata !2866, metadata !DIExpression()), !dbg !2869
  %123 = icmp sgt i32 %117, -1, !dbg !2873
  br i1 %123, label %131, label %124, !dbg !2873

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2873
  store i32 %125, ptr %7, align 8, !dbg !2873
  %126 = icmp ult i32 %117, -7, !dbg !2873
  br i1 %126, label %127, label %131, !dbg !2873

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2873
  %129 = sext i32 %117 to i64, !dbg !2873
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2873
  br label %135, !dbg !2873

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2873
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2873
  store ptr %134, ptr %4, align 8, !dbg !2873
  br label %135, !dbg !2873

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2873
  %138 = load ptr, ptr %137, align 8, !dbg !2873
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2879
  store ptr %138, ptr %139, align 8, !dbg !2876, !tbaa !753
  %140 = icmp eq ptr %138, null, !dbg !2877
  br i1 %140, label %197, label %141, !dbg !2878

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 7, metadata !2866, metadata !DIExpression()), !dbg !2869
  %142 = icmp sgt i32 %136, -1, !dbg !2873
  br i1 %142, label %150, label %143, !dbg !2873

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2873
  store i32 %144, ptr %7, align 8, !dbg !2873
  %145 = icmp ult i32 %136, -7, !dbg !2873
  br i1 %145, label %146, label %150, !dbg !2873

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2873
  %148 = sext i32 %136 to i64, !dbg !2873
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2873
  br label %154, !dbg !2873

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2873
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2873
  store ptr %153, ptr %4, align 8, !dbg !2873
  br label %154, !dbg !2873

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2873
  %157 = load ptr, ptr %156, align 8, !dbg !2873
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2879
  store ptr %157, ptr %158, align 8, !dbg !2876, !tbaa !753
  %159 = icmp eq ptr %157, null, !dbg !2877
  br i1 %159, label %197, label %160, !dbg !2878

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 8, metadata !2866, metadata !DIExpression()), !dbg !2869
  %161 = icmp sgt i32 %155, -1, !dbg !2873
  br i1 %161, label %169, label %162, !dbg !2873

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2873
  store i32 %163, ptr %7, align 8, !dbg !2873
  %164 = icmp ult i32 %155, -7, !dbg !2873
  br i1 %164, label %165, label %169, !dbg !2873

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2873
  %167 = sext i32 %155 to i64, !dbg !2873
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2873
  br label %173, !dbg !2873

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2873
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2873
  store ptr %172, ptr %4, align 8, !dbg !2873
  br label %173, !dbg !2873

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2873
  %176 = load ptr, ptr %175, align 8, !dbg !2873
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2879
  store ptr %176, ptr %177, align 8, !dbg !2876, !tbaa !753
  %178 = icmp eq ptr %176, null, !dbg !2877
  br i1 %178, label %197, label %179, !dbg !2878

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 9, metadata !2866, metadata !DIExpression()), !dbg !2869
  %180 = icmp sgt i32 %174, -1, !dbg !2873
  br i1 %180, label %188, label %181, !dbg !2873

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2873
  store i32 %182, ptr %7, align 8, !dbg !2873
  %183 = icmp ult i32 %174, -7, !dbg !2873
  br i1 %183, label %184, label %188, !dbg !2873

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2873
  %186 = sext i32 %174 to i64, !dbg !2873
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2873
  br label %191, !dbg !2873

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2873
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2873
  store ptr %190, ptr %4, align 8, !dbg !2873
  br label %191, !dbg !2873

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2873
  %193 = load ptr, ptr %192, align 8, !dbg !2873
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2879
  store ptr %193, ptr %194, align 8, !dbg !2876, !tbaa !753
  %195 = icmp eq ptr %193, null, !dbg !2877
  %196 = select i1 %195, i64 9, i64 10, !dbg !2878
  br label %197, !dbg !2878

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2880
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2881
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2882
  ret void, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2883 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2887, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %1, metadata !2888, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %2, metadata !2889, metadata !DIExpression()), !dbg !2892
  call void @llvm.dbg.value(metadata ptr %3, metadata !2890, metadata !DIExpression()), !dbg !2892
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #36, !dbg !2893
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2891, metadata !DIExpression()), !dbg !2894
  call void @llvm.va_start(ptr nonnull %5), !dbg !2895
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #36, !dbg !2896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2896, !tbaa.struct !1077
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2896
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #36, !dbg !2896
  call void @llvm.va_end(ptr nonnull %5), !dbg !2897
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #36, !dbg !2898
  ret void, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2899 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2900, !tbaa !753
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2900
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #36, !dbg !2901
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #36, !dbg !2901
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #36, !dbg !2902
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #36, !dbg !2902
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #36, !dbg !2903
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2903
  ret void, !dbg !2904
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2905 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2910, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %1, metadata !2911, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64 %2, metadata !2912, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %1, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 %2, metadata !2918, metadata !DIExpression()), !dbg !2919
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2921
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !2927
  %5 = icmp eq ptr %4, null, !dbg !2929
  br i1 %5, label %6, label %7, !dbg !2931

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2932
  unreachable, !dbg !2932

7:                                                ; preds = %3
  ret ptr %4, !dbg !2933
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %1, metadata !2917, metadata !DIExpression()), !dbg !2934
  call void @llvm.dbg.value(metadata i64 %2, metadata !2918, metadata !DIExpression()), !dbg !2934
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2935
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !2936
  %5 = icmp eq ptr %4, null, !dbg !2938
  br i1 %5, label %6, label %7, !dbg !2939

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2940
  unreachable, !dbg !2940

7:                                                ; preds = %3
  ret ptr %4, !dbg !2941
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2942 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2946, metadata !DIExpression()), !dbg !2947
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2949
  %3 = icmp eq ptr %2, null, !dbg !2951
  br i1 %3, label %4, label %5, !dbg !2952

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2953
  unreachable, !dbg !2953

5:                                                ; preds = %1
  ret ptr %2, !dbg !2954
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2955 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2956 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !2966
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2968
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2969
  %3 = icmp eq ptr %2, null, !dbg !2971
  br i1 %3, label %4, label %5, !dbg !2972

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2973
  unreachable, !dbg !2973

5:                                                ; preds = %1
  ret ptr %2, !dbg !2974
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2975 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i64 %0, metadata !2946, metadata !DIExpression()), !dbg !2981
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !2984
  %3 = icmp eq ptr %2, null, !dbg !2986
  br i1 %3, label %4, label %5, !dbg !2987

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2988
  unreachable, !dbg !2988

5:                                                ; preds = %1
  ret ptr %2, !dbg !2989
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2990 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3002
  %3 = icmp eq i64 %1, 0, !dbg !3004
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3004
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3005
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !3006
  %6 = icmp eq ptr %5, null, !dbg !3008
  br i1 %6, label %7, label %8, !dbg !3009

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3010
  unreachable, !dbg !3010

8:                                                ; preds = %2
  ret ptr %5, !dbg !3011
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3012 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3013 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata ptr %0, metadata !3020, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.value(metadata i64 %1, metadata !3001, metadata !DIExpression()), !dbg !3026
  %3 = icmp eq i64 %1, 0, !dbg !3028
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3028
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3029
  call void @llvm.dbg.value(metadata ptr %5, metadata !2922, metadata !DIExpression()), !dbg !3030
  %6 = icmp eq ptr %5, null, !dbg !3032
  br i1 %6, label %7, label %8, !dbg !3033

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3034
  unreachable, !dbg !3034

8:                                                ; preds = %2
  ret ptr %5, !dbg !3035
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3036 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %2, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata ptr %0, metadata !3044, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3047, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %2, metadata !3048, metadata !DIExpression()), !dbg !3049
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3051
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !3052
  %5 = icmp eq ptr %4, null, !dbg !3054
  br i1 %5, label %6, label %7, !dbg !3055

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3056
  unreachable, !dbg !3056

7:                                                ; preds = %3
  ret ptr %4, !dbg !3057
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3058 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3062, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata i64 %1, metadata !3063, metadata !DIExpression()), !dbg !3064
  call void @llvm.dbg.value(metadata ptr null, metadata !2914, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %0, metadata !2917, metadata !DIExpression()), !dbg !3065
  call void @llvm.dbg.value(metadata i64 %1, metadata !2918, metadata !DIExpression()), !dbg !3065
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3067
  call void @llvm.dbg.value(metadata ptr %3, metadata !2922, metadata !DIExpression()), !dbg !3068
  %4 = icmp eq ptr %3, null, !dbg !3070
  br i1 %4, label %5, label %6, !dbg !3071

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3072
  unreachable, !dbg !3072

6:                                                ; preds = %2
  ret ptr %3, !dbg !3073
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3074 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3078, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata ptr null, metadata !3040, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %0, metadata !3041, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3081
  call void @llvm.dbg.value(metadata ptr null, metadata !3044, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %0, metadata !3047, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3083
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3085
  call void @llvm.dbg.value(metadata ptr %3, metadata !2922, metadata !DIExpression()), !dbg !3086
  %4 = icmp eq ptr %3, null, !dbg !3088
  br i1 %4, label %5, label %6, !dbg !3089

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3090
  unreachable, !dbg !3090

6:                                                ; preds = %2
  ret ptr %3, !dbg !3091
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3092 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3096, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %1, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.value(metadata ptr %0, metadata !690, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %1, metadata !691, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 1, metadata !692, metadata !DIExpression()), !dbg !3099
  %3 = load i64, ptr %1, align 8, !dbg !3101, !tbaa !2201
  call void @llvm.dbg.value(metadata i64 %3, metadata !693, metadata !DIExpression()), !dbg !3099
  %4 = icmp eq ptr %0, null, !dbg !3102
  br i1 %4, label %5, label %8, !dbg !3104

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3105
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3108
  br label %15, !dbg !3108

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3109
  %10 = add nuw i64 %9, 1, !dbg !3109
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3109
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3109
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %13, metadata !693, metadata !DIExpression()), !dbg !3099
  br i1 %12, label %14, label %15, !dbg !3112

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3113
  unreachable, !dbg !3113

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3099
  call void @llvm.dbg.value(metadata i64 %16, metadata !693, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %16, metadata !2917, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 1, metadata !2918, metadata !DIExpression()), !dbg !3114
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3116
  call void @llvm.dbg.value(metadata ptr %17, metadata !2922, metadata !DIExpression()), !dbg !3117
  %18 = icmp eq ptr %17, null, !dbg !3119
  br i1 %18, label %19, label %20, !dbg !3120

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3121
  unreachable, !dbg !3121

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !690, metadata !DIExpression()), !dbg !3099
  store i64 %16, ptr %1, align 8, !dbg !3122, !tbaa !2201
  ret ptr %17, !dbg !3123
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !685 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !690, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %1, metadata !691, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %2, metadata !692, metadata !DIExpression()), !dbg !3124
  %4 = load i64, ptr %1, align 8, !dbg !3125, !tbaa !2201
  call void @llvm.dbg.value(metadata i64 %4, metadata !693, metadata !DIExpression()), !dbg !3124
  %5 = icmp eq ptr %0, null, !dbg !3126
  br i1 %5, label %6, label %13, !dbg !3127

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3128
  br i1 %7, label %8, label %20, !dbg !3129

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3130
  call void @llvm.dbg.value(metadata i64 %9, metadata !693, metadata !DIExpression()), !dbg !3124
  %10 = icmp ugt i64 %2, 128, !dbg !3132
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %12, metadata !693, metadata !DIExpression()), !dbg !3124
  br label %20, !dbg !3134

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3135
  %15 = add nuw i64 %14, 1, !dbg !3135
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3135
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3135
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3135
  call void @llvm.dbg.value(metadata i64 %18, metadata !693, metadata !DIExpression()), !dbg !3124
  br i1 %17, label %19, label %20, !dbg !3136

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3137
  unreachable, !dbg !3137

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3124
  call void @llvm.dbg.value(metadata i64 %21, metadata !693, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %0, metadata !2914, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %21, metadata !2917, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %2, metadata !2918, metadata !DIExpression()), !dbg !3138
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3140
  call void @llvm.dbg.value(metadata ptr %22, metadata !2922, metadata !DIExpression()), !dbg !3141
  %23 = icmp eq ptr %22, null, !dbg !3143
  br i1 %23, label %24, label %25, !dbg !3144

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3145
  unreachable, !dbg !3145

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !690, metadata !DIExpression()), !dbg !3124
  store i64 %21, ptr %1, align 8, !dbg !3146, !tbaa !2201
  ret ptr %22, !dbg !3147
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !697 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !705, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %1, metadata !706, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %4, metadata !709, metadata !DIExpression()), !dbg !3148
  %6 = load i64, ptr %1, align 8, !dbg !3149, !tbaa !2201
  call void @llvm.dbg.value(metadata i64 %6, metadata !710, metadata !DIExpression()), !dbg !3148
  %7 = ashr i64 %6, 1, !dbg !3150
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3150
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3150
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3150
  call void @llvm.dbg.value(metadata i64 %10, metadata !711, metadata !DIExpression()), !dbg !3148
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %11, metadata !711, metadata !DIExpression()), !dbg !3148
  %12 = icmp sgt i64 %3, -1, !dbg !3153
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3155
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %15, metadata !711, metadata !DIExpression()), !dbg !3148
  %16 = icmp slt i64 %4, 0, !dbg !3156
  br i1 %16, label %17, label %30, !dbg !3156

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3156
  br i1 %18, label %19, label %24, !dbg !3156

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3156
  %21 = udiv i64 9223372036854775807, %20, !dbg !3156
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3156
  br i1 %23, label %46, label %43, !dbg !3156

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3156
  br i1 %25, label %43, label %26, !dbg !3156

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3156
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3156
  %29 = icmp ult i64 %28, %15, !dbg !3156
  br i1 %29, label %46, label %43, !dbg !3156

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3156
  br i1 %31, label %43, label %32, !dbg !3156

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3156
  br i1 %33, label %34, label %40, !dbg !3156

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3156
  br i1 %35, label %43, label %36, !dbg !3156

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3156
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3156
  %39 = icmp ult i64 %38, %4, !dbg !3156
  br i1 %39, label %46, label %43, !dbg !3156

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3156
  br i1 %42, label %46, label %43, !dbg !3156

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3148
  %44 = mul i64 %15, %4, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %44, metadata !712, metadata !DIExpression()), !dbg !3148
  %45 = icmp slt i64 %44, 128, !dbg !3156
  br i1 %45, label %46, label %52, !dbg !3156

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !713, metadata !DIExpression()), !dbg !3148
  %48 = sdiv i64 %47, %4, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %48, metadata !711, metadata !DIExpression()), !dbg !3148
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %51, metadata !712, metadata !DIExpression()), !dbg !3148
  br label %52, !dbg !3161

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3148
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3148
  call void @llvm.dbg.value(metadata i64 %54, metadata !712, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %53, metadata !711, metadata !DIExpression()), !dbg !3148
  %55 = icmp eq ptr %0, null, !dbg !3162
  br i1 %55, label %56, label %57, !dbg !3164

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3165, !tbaa !2201
  br label %57, !dbg !3166

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3167
  %59 = icmp slt i64 %58, %2, !dbg !3169
  br i1 %59, label %60, label %97, !dbg !3170

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3171
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3171
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3171
  call void @llvm.dbg.value(metadata i64 %63, metadata !711, metadata !DIExpression()), !dbg !3148
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3172
  br i1 %66, label %96, label %67, !dbg !3172

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3173

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3173
  br i1 %69, label %70, label %75, !dbg !3173

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3173
  %72 = udiv i64 9223372036854775807, %71, !dbg !3173
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3173
  br i1 %74, label %96, label %94, !dbg !3173

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3173
  br i1 %76, label %94, label %77, !dbg !3173

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3173
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3173
  %80 = icmp ult i64 %79, %63, !dbg !3173
  br i1 %80, label %96, label %94, !dbg !3173

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3173
  br i1 %82, label %94, label %83, !dbg !3173

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3173
  br i1 %84, label %85, label %91, !dbg !3173

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3173
  br i1 %86, label %94, label %87, !dbg !3173

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3173
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3173
  %90 = icmp ult i64 %89, %4, !dbg !3173
  br i1 %90, label %96, label %94, !dbg !3173

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3173
  br i1 %93, label %96, label %94, !dbg !3173

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3148
  %95 = mul i64 %63, %4, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %95, metadata !712, metadata !DIExpression()), !dbg !3148
  br label %97, !dbg !3174

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #38, !dbg !3175
  unreachable, !dbg !3175

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3148
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3148
  call void @llvm.dbg.value(metadata i64 %99, metadata !712, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64 %98, metadata !711, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata ptr %0, metadata !2994, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %99, metadata !2995, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata ptr %0, metadata !2997, metadata !DIExpression()), !dbg !3178
  call void @llvm.dbg.value(metadata i64 %99, metadata !3001, metadata !DIExpression()), !dbg !3178
  %100 = icmp eq i64 %99, 0, !dbg !3180
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3180
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #42, !dbg !3181
  call void @llvm.dbg.value(metadata ptr %102, metadata !2922, metadata !DIExpression()), !dbg !3182
  %103 = icmp eq ptr %102, null, !dbg !3184
  br i1 %103, label %104, label %105, !dbg !3185

104:                                              ; preds = %97
  tail call void @xalloc_die() #38, !dbg !3186
  unreachable, !dbg !3186

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !705, metadata !DIExpression()), !dbg !3148
  store i64 %98, ptr %1, align 8, !dbg !3187, !tbaa !2201
  ret ptr %102, !dbg !3188
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3189 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3191, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i64 %0, metadata !3193, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 1, metadata !3196, metadata !DIExpression()), !dbg !3197
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !3200
  %3 = icmp eq ptr %2, null, !dbg !3202
  br i1 %3, label %4, label %5, !dbg !3203

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3204
  unreachable, !dbg !3204

5:                                                ; preds = %1
  ret ptr %2, !dbg !3205
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3206 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3194 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3193, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata i64 %1, metadata !3196, metadata !DIExpression()), !dbg !3207
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3208
  call void @llvm.dbg.value(metadata ptr %3, metadata !2922, metadata !DIExpression()), !dbg !3209
  %4 = icmp eq ptr %3, null, !dbg !3211
  br i1 %4, label %5, label %6, !dbg !3212

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3213
  unreachable, !dbg !3213

6:                                                ; preds = %2
  ret ptr %3, !dbg !3214
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3215 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 1, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 1, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 1, metadata !3228, metadata !DIExpression()), !dbg !3229
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3231
  call void @llvm.dbg.value(metadata ptr %2, metadata !2922, metadata !DIExpression()), !dbg !3232
  %3 = icmp eq ptr %2, null, !dbg !3234
  br i1 %3, label %4, label %5, !dbg !3235

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3236
  unreachable, !dbg !3236

5:                                                ; preds = %1
  ret ptr %2, !dbg !3237
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3220 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3225, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3228, metadata !DIExpression()), !dbg !3239
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3241
  call void @llvm.dbg.value(metadata ptr %3, metadata !2922, metadata !DIExpression()), !dbg !3242
  %4 = icmp eq ptr %3, null, !dbg !3244
  br i1 %4, label %5, label %6, !dbg !3245

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3246
  unreachable, !dbg !3246

6:                                                ; preds = %2
  ret ptr %3, !dbg !3247
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3248 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !3255
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %3, metadata !2922, metadata !DIExpression()), !dbg !3258
  %4 = icmp eq ptr %3, null, !dbg !3260
  br i1 %4, label %5, label %6, !dbg !3261

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3262
  unreachable, !dbg !3262

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3263, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3271
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3273
  ret ptr %3, !dbg !3274
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3275 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !2960, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i64 %1, metadata !2962, metadata !DIExpression()), !dbg !3284
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3286
  call void @llvm.dbg.value(metadata ptr %3, metadata !2922, metadata !DIExpression()), !dbg !3287
  %4 = icmp eq ptr %3, null, !dbg !3289
  br i1 %4, label %5, label %6, !dbg !3290

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3291
  unreachable, !dbg !3291

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3263, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3294
  ret ptr %3, !dbg !3295
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3296 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3300, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i64 %1, metadata !3301, metadata !DIExpression()), !dbg !3303
  %3 = add nsw i64 %1, 1, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !2960, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %3, metadata !2962, metadata !DIExpression()), !dbg !3307
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !3310
  %5 = icmp eq ptr %4, null, !dbg !3312
  br i1 %5, label %6, label %7, !dbg !3313

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3314
  unreachable, !dbg !3314

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3302, metadata !DIExpression()), !dbg !3303
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3315
  store i8 0, ptr %8, align 1, !dbg !3316, !tbaa !822
  call void @llvm.dbg.value(metadata ptr %4, metadata !3263, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3317
  call void @llvm.dbg.value(metadata i64 %1, metadata !3270, metadata !DIExpression()), !dbg !3317
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3319
  ret ptr %4, !dbg !3320
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3321 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3323, metadata !DIExpression()), !dbg !3324
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3325
  %3 = add i64 %2, 1, !dbg !3326
  call void @llvm.dbg.value(metadata ptr %0, metadata !3252, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %3, metadata !3253, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.value(metadata i64 %3, metadata !2946, metadata !DIExpression()), !dbg !3329
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3331
  call void @llvm.dbg.value(metadata ptr %4, metadata !2922, metadata !DIExpression()), !dbg !3332
  %5 = icmp eq ptr %4, null, !dbg !3334
  br i1 %5, label %6, label %7, !dbg !3335

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3336
  unreachable, !dbg !3336

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3263, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata ptr %0, metadata !3269, metadata !DIExpression()), !dbg !3337
  call void @llvm.dbg.value(metadata i64 %3, metadata !3270, metadata !DIExpression()), !dbg !3337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3339
  ret ptr %4, !dbg !3340
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3341 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3346, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %1, metadata !3343, metadata !DIExpression()), !dbg !3347
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #36, !dbg !3346
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #36, !dbg !3346
  %3 = icmp eq i32 %1, 0, !dbg !3346
  tail call void @llvm.assume(i1 %3), !dbg !3346
  tail call void @abort() #38, !dbg !3348
  unreachable, !dbg !3348
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3349 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3387, metadata !DIExpression()), !dbg !3392
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3393
  call void @llvm.dbg.value(metadata i1 poison, metadata !3388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3392
  call void @llvm.dbg.value(metadata ptr %0, metadata !3394, metadata !DIExpression()), !dbg !3397
  %3 = load i32, ptr %0, align 8, !dbg !3399, !tbaa !3400
  %4 = and i32 %3, 32, !dbg !3401
  %5 = icmp eq i32 %4, 0, !dbg !3401
  call void @llvm.dbg.value(metadata i1 %5, metadata !3390, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3392
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3402
  %7 = icmp eq i32 %6, 0, !dbg !3403
  call void @llvm.dbg.value(metadata i1 %7, metadata !3391, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3392
  br i1 %5, label %8, label %18, !dbg !3404

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3406
  call void @llvm.dbg.value(metadata i1 %9, metadata !3388, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3392
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3407
  %11 = xor i1 %7, true, !dbg !3407
  %12 = sext i1 %11 to i32, !dbg !3407
  br i1 %10, label %21, label %13, !dbg !3407

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3408
  %15 = load i32, ptr %14, align 4, !dbg !3408, !tbaa !813
  %16 = icmp ne i32 %15, 9, !dbg !3409
  %17 = sext i1 %16 to i32, !dbg !3410
  br label %21, !dbg !3410

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3411

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3413
  store i32 0, ptr %20, align 4, !dbg !3415, !tbaa !813
  br label %21, !dbg !3413

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3392
  ret i32 %22, !dbg !3416
}

; Function Attrs: nounwind
declare !dbg !3417 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3421 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3459, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()), !dbg !3463
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3464
  call void @llvm.dbg.value(metadata i32 %2, metadata !3461, metadata !DIExpression()), !dbg !3463
  %3 = icmp slt i32 %2, 0, !dbg !3465
  br i1 %3, label %4, label %6, !dbg !3467

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3468
  br label %24, !dbg !3469

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3470
  %8 = icmp eq i32 %7, 0, !dbg !3470
  br i1 %8, label %13, label %9, !dbg !3472

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3473
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3474
  %12 = icmp eq i64 %11, -1, !dbg !3475
  br i1 %12, label %16, label %13, !dbg !3476

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3477
  %15 = icmp eq i32 %14, 0, !dbg !3477
  br i1 %15, label %16, label %18, !dbg !3478

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3463
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3479
  call void @llvm.dbg.value(metadata i32 %17, metadata !3462, metadata !DIExpression()), !dbg !3463
  br label %24, !dbg !3480

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3481
  %20 = load i32, ptr %19, align 4, !dbg !3481, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %20, metadata !3460, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i32 0, metadata !3462, metadata !DIExpression()), !dbg !3463
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3479
  call void @llvm.dbg.value(metadata i32 %21, metadata !3462, metadata !DIExpression()), !dbg !3463
  %22 = icmp eq i32 %20, 0, !dbg !3482
  br i1 %22, label %24, label %23, !dbg !3480

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3484, !tbaa !813
  call void @llvm.dbg.value(metadata i32 -1, metadata !3462, metadata !DIExpression()), !dbg !3463
  br label %24, !dbg !3486

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3463
  ret i32 %25, !dbg !3487
}

; Function Attrs: nofree nounwind
declare !dbg !3488 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3489 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3490 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3491 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3532, metadata !DIExpression()), !dbg !3533
  %2 = icmp eq ptr %0, null, !dbg !3534
  br i1 %2, label %6, label %3, !dbg !3536

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3537
  %5 = icmp eq i32 %4, 0, !dbg !3537
  br i1 %5, label %6, label %8, !dbg !3538

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3539
  br label %16, !dbg !3540

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3541, metadata !DIExpression()), !dbg !3546
  %9 = load i32, ptr %0, align 8, !dbg !3548, !tbaa !3400
  %10 = and i32 %9, 256, !dbg !3550
  %11 = icmp eq i32 %10, 0, !dbg !3550
  br i1 %11, label %14, label %12, !dbg !3551

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3552
  br label %14, !dbg !3552

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3553
  br label %16, !dbg !3554

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3533
  ret i32 %17, !dbg !3555
}

; Function Attrs: nofree nounwind
declare !dbg !3556 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3557 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3596, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i64 %1, metadata !3597, metadata !DIExpression()), !dbg !3602
  call void @llvm.dbg.value(metadata i32 %2, metadata !3598, metadata !DIExpression()), !dbg !3602
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3603
  %5 = load ptr, ptr %4, align 8, !dbg !3603, !tbaa !3604
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3605
  %7 = load ptr, ptr %6, align 8, !dbg !3605, !tbaa !3606
  %8 = icmp eq ptr %5, %7, !dbg !3607
  br i1 %8, label %9, label %27, !dbg !3608

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3609
  %11 = load ptr, ptr %10, align 8, !dbg !3609, !tbaa !1192
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3610
  %13 = load ptr, ptr %12, align 8, !dbg !3610, !tbaa !3611
  %14 = icmp eq ptr %11, %13, !dbg !3612
  br i1 %14, label %15, label %27, !dbg !3613

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3614
  %17 = load ptr, ptr %16, align 8, !dbg !3614, !tbaa !3615
  %18 = icmp eq ptr %17, null, !dbg !3616
  br i1 %18, label %19, label %27, !dbg !3617

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3618
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %21, metadata !3599, metadata !DIExpression()), !dbg !3620
  %22 = icmp eq i64 %21, -1, !dbg !3621
  br i1 %22, label %29, label %23, !dbg !3623

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3624, !tbaa !3400
  %25 = and i32 %24, -17, !dbg !3624
  store i32 %25, ptr %0, align 8, !dbg !3624, !tbaa !3400
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3625
  store i64 %21, ptr %26, align 8, !dbg !3626, !tbaa !3627
  br label %29, !dbg !3628

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3629
  br label %29, !dbg !3630

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3602
  ret i32 %30, !dbg !3631
}

; Function Attrs: nofree nounwind
declare !dbg !3632 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3635 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3640, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %1, metadata !3641, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata i64 %2, metadata !3642, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %3, metadata !3643, metadata !DIExpression()), !dbg !3645
  %5 = icmp eq ptr %1, null, !dbg !3646
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3648
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3648
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3648
  call void @llvm.dbg.value(metadata i64 %8, metadata !3642, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %7, metadata !3641, metadata !DIExpression()), !dbg !3645
  call void @llvm.dbg.value(metadata ptr %6, metadata !3640, metadata !DIExpression()), !dbg !3645
  %9 = icmp eq ptr %3, null, !dbg !3649
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3651
  call void @llvm.dbg.value(metadata ptr %10, metadata !3643, metadata !DIExpression()), !dbg !3645
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3652
  call void @llvm.dbg.value(metadata i64 %11, metadata !3644, metadata !DIExpression()), !dbg !3645
  %12 = icmp ult i64 %11, -3, !dbg !3653
  br i1 %12, label %13, label %17, !dbg !3655

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3656
  %15 = icmp eq i32 %14, 0, !dbg !3656
  br i1 %15, label %16, label %29, !dbg !3657

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3658, metadata !DIExpression()), !dbg !3663
  call void @llvm.dbg.value(metadata ptr %10, metadata !3665, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i32 0, metadata !3668, metadata !DIExpression()), !dbg !3670
  call void @llvm.dbg.value(metadata i64 8, metadata !3669, metadata !DIExpression()), !dbg !3670
  store i64 0, ptr %10, align 1, !dbg !3672
  br label %29, !dbg !3673

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3674
  br i1 %18, label %19, label %20, !dbg !3676

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3677
  unreachable, !dbg !3677

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3678

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #36, !dbg !3680
  br i1 %23, label %29, label %24, !dbg !3681

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3682
  br i1 %25, label %29, label %26, !dbg !3685

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3686, !tbaa !822
  %28 = zext i8 %27 to i32, !dbg !3687
  store i32 %28, ptr %6, align 4, !dbg !3688, !tbaa !813
  br label %29, !dbg !3689

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3645
  ret i64 %30, !dbg !3690
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3691 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3697 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3699, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %1, metadata !3700, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata i64 %2, metadata !3701, metadata !DIExpression()), !dbg !3703
  %4 = icmp eq i64 %2, 0, !dbg !3704
  br i1 %4, label %8, label %5, !dbg !3704

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3704
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3704
  br i1 %7, label %13, label %8, !dbg !3704

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3702, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3703
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3702, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3703
  %9 = mul i64 %2, %1, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %9, metadata !3702, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.value(metadata ptr %0, metadata !3706, metadata !DIExpression()), !dbg !3710
  call void @llvm.dbg.value(metadata i64 %9, metadata !3709, metadata !DIExpression()), !dbg !3710
  %10 = icmp eq i64 %9, 0, !dbg !3712
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3712
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3713
  br label %15, !dbg !3714

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3702, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3703
  %14 = tail call ptr @__errno_location() #39, !dbg !3715
  store i32 12, ptr %14, align 4, !dbg !3717, !tbaa !813
  br label %15, !dbg !3718

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3703
  ret ptr %16, !dbg !3719
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3720 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3724, metadata !DIExpression()), !dbg !3729
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3730
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3725, metadata !DIExpression()), !dbg !3731
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3732
  %4 = icmp eq i32 %3, 0, !dbg !3732
  br i1 %4, label %5, label %12, !dbg !3734

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3735, metadata !DIExpression()), !dbg !3739
  call void @llvm.dbg.value(metadata ptr @.str.123, metadata !3738, metadata !DIExpression()), !dbg !3739
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.123, i64 2), !dbg !3742
  %7 = icmp eq i32 %6, 0, !dbg !3743
  br i1 %7, label %11, label %8, !dbg !3744

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3735, metadata !DIExpression()), !dbg !3745
  call void @llvm.dbg.value(metadata ptr @.str.1.124, metadata !3738, metadata !DIExpression()), !dbg !3745
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.124, i64 6), !dbg !3747
  %10 = icmp eq i32 %9, 0, !dbg !3748
  br i1 %10, label %11, label %12, !dbg !3749

11:                                               ; preds = %8, %5
  br label %12, !dbg !3750

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3729
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3751
  ret i1 %13, !dbg !3751
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3756, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata ptr %1, metadata !3757, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i64 %2, metadata !3758, metadata !DIExpression()), !dbg !3759
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3760
  ret i32 %4, !dbg !3761
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3762 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3766, metadata !DIExpression()), !dbg !3767
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3768
  ret ptr %2, !dbg !3769
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3770 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3774
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3775
  call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3774
  ret ptr %2, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3779, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata ptr %1, metadata !3780, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i64 %2, metadata !3781, metadata !DIExpression()), !dbg !3786
  call void @llvm.dbg.value(metadata i32 %0, metadata !3772, metadata !DIExpression()), !dbg !3787
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3789
  call void @llvm.dbg.value(metadata ptr %4, metadata !3773, metadata !DIExpression()), !dbg !3787
  call void @llvm.dbg.value(metadata ptr %4, metadata !3782, metadata !DIExpression()), !dbg !3786
  %5 = icmp eq ptr %4, null, !dbg !3790
  br i1 %5, label %6, label %9, !dbg !3791

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3792
  br i1 %7, label %19, label %8, !dbg !3795

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3796, !tbaa !822
  br label %19, !dbg !3797

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3798
  call void @llvm.dbg.value(metadata i64 %10, metadata !3783, metadata !DIExpression()), !dbg !3799
  %11 = icmp ult i64 %10, %2, !dbg !3800
  br i1 %11, label %12, label %14, !dbg !3802

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3803
  call void @llvm.dbg.value(metadata ptr %1, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata ptr %4, metadata !3808, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %13, metadata !3809, metadata !DIExpression()), !dbg !3810
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3812
  br label %19, !dbg !3813

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3814
  br i1 %15, label %19, label %16, !dbg !3817

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3818
  call void @llvm.dbg.value(metadata ptr %1, metadata !3805, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata ptr %4, metadata !3808, metadata !DIExpression()), !dbg !3820
  call void @llvm.dbg.value(metadata i64 %17, metadata !3809, metadata !DIExpression()), !dbg !3820
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3822
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3823
  store i8 0, ptr %18, align 1, !dbg !3824, !tbaa !822
  br label %19, !dbg !3825

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3826
  ret i32 %20, !dbg !3827
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

!llvm.dbg.cu = !{!72, !292, !296, !311, !638, !672, !371, !391, !405, !456, !674, !630, !681, !715, !717, !719, !721, !723, !654, !725, !728, !730, !732}
!llvm.ident = !{!734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734, !734}
!llvm.module.flags = !{!735, !736, !737, !738, !739, !740, !741}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 34, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/logname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "be0652542a48a595035eed51530c903c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 20)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 38, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 31)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 8)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 42, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 43, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 60, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 14)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 16)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 17)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !49, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !66, file: !67, line: 575, type: !92, isLocal: true, isDefinition: true)
!66 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !68, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !211)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DISubroutineType(cc: DW_CC_nocall, types: !69)
!69 = !{null, !70, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !90, globals: !98, splitDebugInlining: false, nameTableKind: None)
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
!90 = !{!70, !91, !92, !93, !94, !97}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 46, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!96 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!97 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !99, !104, !106, !111, !116, !121, !123, !125, !130, !132, !134, !136, !141, !143, !145, !147, !149, !151, !153, !155, !157, !162, !167, !172, !174, !176, !178, !180, !182, !187, !189, !191, !196, !201, !206}
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 5)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !101, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 4)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 6)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 2)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !101, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !108, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 3)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !101, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !113, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !113, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 7)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !19, isLocal: true, isDefinition: true)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !39, isLocal: true, isDefinition: true)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !39, isLocal: true, isDefinition: true)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !39, isLocal: true, isDefinition: true)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !39, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !138, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !39, isLocal: true, isDefinition: true)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !59, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 40)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 15)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 61)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !127, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !101, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !101, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !19, isLocal: true, isDefinition: true)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !54, isLocal: true, isDefinition: true)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 22)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !164, isLocal: true, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !108, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 71)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 27)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 51)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 12)
!211 = !{!212, !213, !214, !217, !219, !220, !221, !225, !226, !227, !228, !230, !281, !282, !283, !285, !286}
!212 = !DILocalVariable(name: "program", arg: 1, scope: !66, file: !67, line: 573, type: !70)
!213 = !DILocalVariable(name: "option", arg: 2, scope: !66, file: !67, line: 573, type: !70)
!214 = !DILocalVariable(name: "term", scope: !215, file: !67, line: 585, type: !70)
!215 = distinct !DILexicalBlock(scope: !216, file: !67, line: 582, column: 5)
!216 = distinct !DILexicalBlock(scope: !66, file: !67, line: 581, column: 7)
!217 = !DILocalVariable(name: "double_space", scope: !66, file: !67, line: 594, type: !218)
!218 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!219 = !DILocalVariable(name: "first_word", scope: !66, file: !67, line: 595, type: !70)
!220 = !DILocalVariable(name: "option_text", scope: !66, file: !67, line: 596, type: !70)
!221 = !DILocalVariable(name: "s", scope: !222, file: !67, line: 608, type: !70)
!222 = distinct !DILexicalBlock(scope: !223, file: !67, line: 605, column: 5)
!223 = distinct !DILexicalBlock(scope: !224, file: !67, line: 604, column: 12)
!224 = distinct !DILexicalBlock(scope: !66, file: !67, line: 597, column: 7)
!225 = !DILocalVariable(name: "spaces", scope: !222, file: !67, line: 609, type: !94)
!226 = !DILocalVariable(name: "anchor_len", scope: !66, file: !67, line: 620, type: !94)
!227 = !DILocalVariable(name: "desc_text", scope: !66, file: !67, line: 625, type: !70)
!228 = !DILocalVariable(name: "__ptr", scope: !229, file: !67, line: 644, type: !70)
!229 = distinct !DILexicalBlock(scope: !66, file: !67, line: 644, column: 3)
!230 = !DILocalVariable(name: "__stream", scope: !229, file: !67, line: 644, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !234)
!233 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !236)
!235 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!236 = !{!237, !238, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !255, !256, !257, !261, !262, !264, !265, !268, !270, !273, !276, !277, !278, !279, !280}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !234, file: !235, line: 51, baseType: !92, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !234, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !234, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !234, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !234, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !234, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !234, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !234, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !234, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !234, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !234, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !234, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !234, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !235, line: 36, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !234, file: !235, line: 70, baseType: !254, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !234, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !234, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !234, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !259, line: 152, baseType: !260)
!259 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !234, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !234, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!263 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !234, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !234, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !235, line: 43, baseType: null)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !234, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !259, line: 153, baseType: !260)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !234, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !235, line: 37, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !234, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !235, line: 38, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !234, file: !235, line: 93, baseType: !254, size: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !234, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !234, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !234, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !234, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!281 = !DILocalVariable(name: "__cnt", scope: !229, file: !67, line: 644, type: !94)
!282 = !DILocalVariable(name: "url_program", scope: !66, file: !67, line: 648, type: !70)
!283 = !DILocalVariable(name: "__ptr", scope: !284, file: !67, line: 686, type: !70)
!284 = distinct !DILexicalBlock(scope: !66, file: !67, line: 686, column: 3)
!285 = !DILocalVariable(name: "__stream", scope: !284, file: !67, line: 686, type: !231)
!286 = !DILocalVariable(name: "__cnt", scope: !284, file: !67, line: 686, type: !94)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !289, line: 3, type: !164, isLocal: true, isDefinition: true)
!289 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "Version", scope: !292, file: !289, line: 3, type: !70, isLocal: false, isDefinition: true)
!292 = distinct !DICompileUnit(language: DW_LANG_C11, file: !289, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !293, splitDebugInlining: false, nameTableKind: None)
!293 = !{!287, !290}
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "file_name", scope: !296, file: !297, line: 45, type: !70, isLocal: true, isDefinition: true)
!296 = distinct !DICompileUnit(language: DW_LANG_C11, file: !297, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !298, splitDebugInlining: false, nameTableKind: None)
!297 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!298 = !{!299, !301, !303, !305, !294, !307}
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !297, line: 121, type: !138, isLocal: true, isDefinition: true)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !297, line: 121, type: !208, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !297, line: 123, type: !138, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !297, line: 126, type: !127, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !296, file: !297, line: 55, type: !218, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !311, file: !312, line: 66, type: !363, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C11, file: !312, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !313, globals: !314, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!313 = !{!91, !97}
!314 = !{!315, !317, !342, !344, !346, !348, !309, !350, !352, !354, !356, !361}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !312, line: 272, type: !101, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "old_file_name", scope: !319, file: !312, line: 304, type: !70, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "verror_at_line", scope: !312, file: !312, line: 298, type: !320, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !335)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !92, !92, !70, !76, !70, !322}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 52, baseType: !324)
!323 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 14, baseType: !326)
!325 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !327, baseType: !328)
!327 = !DIFile(filename: "lib/error.c", directory: "/src")
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !329)
!329 = !{!330, !331, !332, !333, !334}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !328, file: !327, baseType: !91, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !328, file: !327, baseType: !91, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !328, file: !327, baseType: !91, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !328, file: !327, baseType: !92, size: 32, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !328, file: !327, baseType: !92, size: 32, offset: 224)
!335 = !{!336, !337, !338, !339, !340, !341}
!336 = !DILocalVariable(name: "status", arg: 1, scope: !319, file: !312, line: 298, type: !92)
!337 = !DILocalVariable(name: "errnum", arg: 2, scope: !319, file: !312, line: 298, type: !92)
!338 = !DILocalVariable(name: "file_name", arg: 3, scope: !319, file: !312, line: 298, type: !70)
!339 = !DILocalVariable(name: "line_number", arg: 4, scope: !319, file: !312, line: 298, type: !76)
!340 = !DILocalVariable(name: "message", arg: 5, scope: !319, file: !312, line: 298, type: !70)
!341 = !DILocalVariable(name: "args", arg: 6, scope: !319, file: !312, line: 298, type: !322)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "old_line_number", scope: !319, file: !312, line: 305, type: !76, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !312, line: 338, type: !108, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !19, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !118, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "error_message_count", scope: !311, file: !312, line: 69, type: !76, isLocal: false, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !311, file: !312, line: 295, type: !92, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !138, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 21)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !312, line: 214, type: !101, isLocal: true, isDefinition: true)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{null}
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !368, line: 60, type: !118, isLocal: true, isDefinition: true)
!368 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "long_options", scope: !371, file: !368, line: 34, type: !379, isLocal: true, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C11, file: !368, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !372, splitDebugInlining: false, nameTableKind: None)
!372 = !{!366, !373, !375, !377, !369}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !368, line: 112, type: !34, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !368, line: 36, type: !101, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !368, line: 37, type: !19, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 768, elements: !128)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !382, line: 50, size: 256, elements: !383)
!382 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!383 = !{!384, !385, !386, !388}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !382, line: 52, baseType: !70, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !381, file: !382, line: 55, baseType: !92, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !381, file: !382, line: 56, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !381, file: !382, line: 57, baseType: !92, size: 32, offset: 192)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "program_name", scope: !391, file: !392, line: 31, type: !70, isLocal: false, isDefinition: true)
!391 = distinct !DICompileUnit(language: DW_LANG_C11, file: !392, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !393, globals: !394, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!393 = !{!239}
!394 = !{!389, !395, !397}
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !392, line: 46, type: !19, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !392, line: 49, type: !108, isLocal: true, isDefinition: true)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "utf07FF", scope: !401, file: !402, line: 46, type: !429, isLocal: true, isDefinition: true)
!401 = distinct !DISubprogram(name: "proper_name_lite", scope: !402, file: !402, line: 38, type: !403, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !407)
!402 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!403 = !DISubroutineType(types: !404)
!404 = !{!70, !70, !70}
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !402, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !406, splitDebugInlining: false, nameTableKind: None)
!406 = !{!399}
!407 = !{!408, !409, !410, !411, !416}
!408 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !401, file: !402, line: 38, type: !70)
!409 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !401, file: !402, line: 38, type: !70)
!410 = !DILocalVariable(name: "translation", scope: !401, file: !402, line: 40, type: !70)
!411 = !DILocalVariable(name: "w", scope: !401, file: !402, line: 47, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !413, line: 37, baseType: !414)
!413 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !76)
!416 = !DILocalVariable(name: "mbs", scope: !401, file: !402, line: 48, type: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !418, line: 6, baseType: !419)
!418 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !420, line: 21, baseType: !421)
!420 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 13, size: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !421, file: !420, line: 15, baseType: !92, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !421, file: !420, line: 20, baseType: !425, size: 32, offset: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !421, file: !420, line: 16, size: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !425, file: !420, line: 18, baseType: !76, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !425, file: !420, line: 19, baseType: !108, size: 32)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !119)
!430 = !DIGlobalVariableExpression(var: !431, expr: !DIExpression())
!431 = distinct !DIGlobalVariable(scope: null, file: !432, line: 78, type: !19, isLocal: true, isDefinition: true)
!432 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !432, line: 79, type: !113, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(scope: null, file: !432, line: 80, type: !437, isLocal: true, isDefinition: true)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 13)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !432, line: 81, type: !437, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !432, line: 82, type: !9, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !432, line: 83, type: !118, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !432, line: 84, type: !19, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !432, line: 85, type: !138, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !432, line: 86, type: !138, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !432, line: 87, type: !19, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !456, file: !432, line: 76, type: !542, isLocal: false, isDefinition: true)
!456 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !457, retainedTypes: !477, globals: !478, splitDebugInlining: false, nameTableKind: None)
!457 = !{!458, !472, !74}
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !459, line: 42, baseType: !76, size: 32, elements: !460)
!459 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!461 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!462 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!463 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!464 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!465 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!466 = !DIEnumerator(name: "c_quoting_style", value: 5)
!467 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!468 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!469 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!470 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!471 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!472 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !459, line: 254, baseType: !76, size: 32, elements: !473)
!473 = !{!474, !475, !476}
!474 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!475 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!476 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!477 = !{!92, !93, !94}
!478 = !{!430, !433, !435, !440, !442, !444, !446, !448, !450, !452, !454, !479, !483, !493, !495, !500, !502, !504, !506, !508, !531, !538, !540}
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !456, file: !432, line: 92, type: !481, isLocal: false, isDefinition: true)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 320, elements: !40)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !456, file: !432, line: 1040, type: !485, isLocal: false, isDefinition: true)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !432, line: 56, size: 448, elements: !486)
!486 = !{!487, !488, !489, !491, !492}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !485, file: !432, line: 59, baseType: !458, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !485, file: !432, line: 62, baseType: !92, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !485, file: !432, line: 66, baseType: !490, size: 256, offset: 64)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !20)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !485, file: !432, line: 69, baseType: !70, size: 64, offset: 320)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !485, file: !432, line: 72, baseType: !70, size: 64, offset: 384)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !456, file: !432, line: 107, type: !485, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "slot0", scope: !456, file: !432, line: 831, type: !497, isLocal: true, isDefinition: true)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 256)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !432, line: 321, type: !118, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !432, line: 357, type: !118, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !432, line: 358, type: !118, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !432, line: 199, type: !138, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(name: "quote", scope: !510, file: !432, line: 228, type: !529, isLocal: true, isDefinition: true)
!510 = distinct !DISubprogram(name: "gettext_quote", scope: !432, file: !432, line: 197, type: !511, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{!70, !70, !458}
!513 = !{!514, !515, !516, !517, !518}
!514 = !DILocalVariable(name: "msgid", arg: 1, scope: !510, file: !432, line: 197, type: !70)
!515 = !DILocalVariable(name: "s", arg: 2, scope: !510, file: !432, line: 197, type: !458)
!516 = !DILocalVariable(name: "translation", scope: !510, file: !432, line: 199, type: !70)
!517 = !DILocalVariable(name: "w", scope: !510, file: !432, line: 229, type: !412)
!518 = !DILocalVariable(name: "mbs", scope: !510, file: !432, line: 230, type: !519)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !418, line: 6, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !420, line: 21, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 13, size: 64, elements: !522)
!522 = !{!523, !524}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !521, file: !420, line: 15, baseType: !92, size: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !521, file: !420, line: 20, baseType: !525, size: 32, offset: 32)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !420, line: 16, size: 32, elements: !526)
!526 = !{!527, !528}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !525, file: !420, line: 18, baseType: !76, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !525, file: !420, line: 19, baseType: !108, size: 32)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !530)
!530 = !{!120, !110}
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "slotvec", scope: !456, file: !432, line: 834, type: !533, isLocal: true, isDefinition: true)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !432, line: 823, size: 128, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !534, file: !432, line: 825, baseType: !94, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !534, file: !432, line: 826, baseType: !239, size: 64, offset: 64)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(name: "nslots", scope: !456, file: !432, line: 832, type: !92, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "slotvec0", scope: !456, file: !432, line: 833, type: !534, isLocal: true, isDefinition: true)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !543, size: 704, elements: !544)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!544 = !{!545}
!545 = !DISubrange(count: 11)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !548, line: 67, type: !208, isLocal: true, isDefinition: true)
!548 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !548, line: 69, type: !138, isLocal: true, isDefinition: true)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !138, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !548, line: 83, type: !108, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !548, line: 85, type: !118, isLocal: true, isDefinition: true)
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
!568 = distinct !DIGlobalVariable(scope: null, file: !548, line: 105, type: !54, isLocal: true, isDefinition: true)
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
!590 = distinct !DIGlobalVariable(scope: null, file: !548, line: 134, type: !159, isLocal: true, isDefinition: true)
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
!612 = distinct !DIGlobalVariable(scope: null, file: !548, line: 248, type: !9, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !548, line: 248, type: !184, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !9, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !49, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !548, line: 254, type: !159, isLocal: true, isDefinition: true)
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
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 47)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "exit_failure", scope: !638, file: !639, line: 24, type: !641, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !640, splitDebugInlining: false, nameTableKind: None)
!639 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!640 = !{!636}
!641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !92)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !127, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !138, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !644, line: 34, type: !59, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !651, line: 108, type: !34, isLocal: true, isDefinition: true)
!651 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(name: "internal_state", scope: !654, file: !651, line: 97, type: !657, isLocal: true, isDefinition: true)
!654 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !655, globals: !656, splitDebugInlining: false, nameTableKind: None)
!655 = !{!91, !94, !97}
!656 = !{!649, !652}
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !418, line: 6, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !420, line: 21, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !420, line: 13, size: 64, elements: !660)
!660 = !{!661, !662}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !659, file: !420, line: 15, baseType: !92, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !659, file: !420, line: 20, baseType: !663, size: 32, offset: 32)
!663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !659, file: !420, line: 16, size: 32, elements: !664)
!664 = !{!665, !666}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !663, file: !420, line: 18, baseType: !76, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !663, file: !420, line: 19, baseType: !108, size: 32)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !669, line: 35, type: !118, isLocal: true, isDefinition: true)
!669 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !669, line: 35, type: !113, isLocal: true, isDefinition: true)
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !675, retainedTypes: !679, globals: !680, splitDebugInlining: false, nameTableKind: None)
!675 = !{!676}
!676 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 40, baseType: !76, size: 32, elements: !677)
!677 = !{!678}
!678 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!679 = !{!91}
!680 = !{!546, !549, !551, !553, !555, !557, !562, !567, !569, !574, !579, !584, !589, !591, !596, !601, !606, !611, !613, !615, !617, !619, !621, !623}
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !683, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!683 = !{!684, !696}
!684 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !685, file: !682, line: 188, baseType: !76, size: 32, elements: !694)
!685 = distinct !DISubprogram(name: "x2nrealloc", scope: !682, file: !682, line: 176, type: !686, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !689)
!686 = !DISubroutineType(types: !687)
!687 = !{!91, !91, !688, !94}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(name: "p", arg: 1, scope: !685, file: !682, line: 176, type: !91)
!691 = !DILocalVariable(name: "pn", arg: 2, scope: !685, file: !682, line: 176, type: !688)
!692 = !DILocalVariable(name: "s", arg: 3, scope: !685, file: !682, line: 176, type: !94)
!693 = !DILocalVariable(name: "n", scope: !685, file: !682, line: 178, type: !94)
!694 = !{!695}
!695 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!696 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !697, file: !682, line: 228, baseType: !76, size: 32, elements: !694)
!697 = distinct !DISubprogram(name: "xpalloc", scope: !682, file: !682, line: 223, type: !698, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !704)
!698 = !DISubroutineType(types: !699)
!699 = !{!91, !91, !700, !701, !703, !701}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !702, line: 130, baseType: !703)
!702 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !95, line: 35, baseType: !260)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713}
!705 = !DILocalVariable(name: "pa", arg: 1, scope: !697, file: !682, line: 223, type: !91)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !697, file: !682, line: 223, type: !700)
!707 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !697, file: !682, line: 223, type: !701)
!708 = !DILocalVariable(name: "n_max", arg: 4, scope: !697, file: !682, line: 223, type: !703)
!709 = !DILocalVariable(name: "s", arg: 5, scope: !697, file: !682, line: 223, type: !701)
!710 = !DILocalVariable(name: "n0", scope: !697, file: !682, line: 230, type: !701)
!711 = !DILocalVariable(name: "n", scope: !697, file: !682, line: 237, type: !701)
!712 = !DILocalVariable(name: "nbytes", scope: !697, file: !682, line: 248, type: !701)
!713 = !DILocalVariable(name: "adjusted_nbytes", scope: !697, file: !682, line: 252, type: !701)
!714 = !{!239, !91, !218, !260, !96}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !716, splitDebugInlining: false, nameTableKind: None)
!716 = !{!642, !645, !647}
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !679, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !679, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !727, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!727 = !{!218, !96, !91}
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !729, splitDebugInlining: false, nameTableKind: None)
!729 = !{!667, !670}
!730 = distinct !DICompileUnit(language: DW_LANG_C11, file: !731, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!731 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !679, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!734 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!735 = !{i32 7, !"Dwarf Version", i32 5}
!736 = !{i32 2, !"Debug Info Version", i32 3}
!737 = !{i32 1, !"wchar_size", i32 4}
!738 = !{i32 8, !"PIC Level", i32 2}
!739 = !{i32 7, !"PIE Level", i32 2}
!740 = !{i32 7, !"uwtable", i32 2}
!741 = !{i32 7, !"frame-pointer", i32 1}
!742 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 31, type: !743, scopeLine: 32, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{null, !92}
!745 = !{!746}
!746 = !DILocalVariable(name: "status", arg: 1, scope: !742, file: !2, line: 31, type: !92)
!747 = !DILocation(line: 0, scope: !742)
!748 = !DILocation(line: 33, column: 14, scope: !749)
!749 = distinct !DILexicalBlock(scope: !742, file: !2, line: 33, column: 7)
!750 = !DILocation(line: 33, column: 7, scope: !742)
!751 = !DILocation(line: 34, column: 5, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !2, line: 34, column: 5)
!753 = !{!754, !754, i64 0}
!754 = !{!"any pointer", !755, i64 0}
!755 = !{!"omnipotent char", !756, i64 0}
!756 = !{!"Simple C/C++ TBAA"}
!757 = !DILocation(line: 37, column: 7, scope: !758)
!758 = distinct !DILexicalBlock(scope: !749, file: !2, line: 36, column: 5)
!759 = !DILocation(line: 38, column: 7, scope: !758)
!760 = !DILocation(line: 42, column: 7, scope: !758)
!761 = !DILocation(line: 43, column: 7, scope: !758)
!762 = !DILocalVariable(name: "program", arg: 1, scope: !763, file: !67, line: 836, type: !70)
!763 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !764, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !766)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !70}
!766 = !{!762, !767, !774, !775, !777, !778}
!767 = !DILocalVariable(name: "infomap", scope: !763, file: !67, line: 838, type: !768)
!768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 896, elements: !139)
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
!780 = distinct !DILocation(line: 44, column: 7, scope: !758)
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
!793 = !DILocation(line: 46, column: 3, scope: !742)
!794 = !DISubprogram(name: "dcgettext", scope: !795, file: !795, line: 51, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!795 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!796 = !DISubroutineType(types: !797)
!797 = !{!239, !70, !70, !92}
!798 = !{}
!799 = !DISubprogram(name: "__fprintf_chk", scope: !800, file: !800, line: 93, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!800 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!801 = !DISubroutineType(types: !802)
!802 = !{!92, !803, !92, !804, null}
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!805 = !DISubprogram(name: "__printf_chk", scope: !800, file: !800, line: 95, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!806 = !DISubroutineType(types: !807)
!807 = !{!92, !92, !804, null}
!808 = !DISubprogram(name: "fputs_unlocked", scope: !323, file: !323, line: 691, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!809 = !DISubroutineType(types: !810)
!810 = !{!92, !804, !803}
!811 = !DILocation(line: 0, scope: !66)
!812 = !DILocation(line: 581, column: 7, scope: !216)
!813 = !{!814, !814, i64 0}
!814 = !{!"int", !755, i64 0}
!815 = !DILocation(line: 581, column: 19, scope: !216)
!816 = !DILocation(line: 581, column: 7, scope: !66)
!817 = !DILocation(line: 585, column: 26, scope: !215)
!818 = !DILocation(line: 0, scope: !215)
!819 = !DILocation(line: 586, column: 23, scope: !215)
!820 = !DILocation(line: 586, column: 28, scope: !215)
!821 = !DILocation(line: 586, column: 32, scope: !215)
!822 = !{!755, !755, i64 0}
!823 = !DILocation(line: 586, column: 38, scope: !215)
!824 = !DILocalVariable(name: "__s1", arg: 1, scope: !825, file: !826, line: 1359, type: !70)
!825 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !829)
!826 = !DIFile(filename: "./lib/string.h", directory: "/src")
!827 = !DISubroutineType(types: !828)
!828 = !{!218, !70, !70}
!829 = !{!824, !830}
!830 = !DILocalVariable(name: "__s2", arg: 2, scope: !825, file: !826, line: 1359, type: !70)
!831 = !DILocation(line: 0, scope: !825, inlinedAt: !832)
!832 = distinct !DILocation(line: 586, column: 41, scope: !215)
!833 = !DILocation(line: 1361, column: 11, scope: !825, inlinedAt: !832)
!834 = !DILocation(line: 1361, column: 10, scope: !825, inlinedAt: !832)
!835 = !DILocation(line: 586, column: 19, scope: !215)
!836 = !DILocation(line: 587, column: 5, scope: !215)
!837 = !DILocation(line: 588, column: 7, scope: !838)
!838 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!839 = !DILocation(line: 588, column: 7, scope: !66)
!840 = !DILocation(line: 590, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !67, line: 589, column: 5)
!842 = !DILocation(line: 591, column: 7, scope: !841)
!843 = !DILocation(line: 595, column: 37, scope: !66)
!844 = !DILocation(line: 595, column: 35, scope: !66)
!845 = !DILocation(line: 596, column: 29, scope: !66)
!846 = !DILocation(line: 597, column: 8, scope: !224)
!847 = !DILocation(line: 597, column: 7, scope: !66)
!848 = !DILocation(line: 604, column: 24, scope: !223)
!849 = !DILocation(line: 604, column: 12, scope: !224)
!850 = !DILocation(line: 0, scope: !222)
!851 = !DILocation(line: 610, column: 16, scope: !222)
!852 = !DILocation(line: 610, column: 7, scope: !222)
!853 = !DILocation(line: 611, column: 21, scope: !222)
!854 = !{!855, !855, i64 0}
!855 = !{!"short", !755, i64 0}
!856 = !DILocation(line: 611, column: 19, scope: !222)
!857 = !DILocation(line: 611, column: 16, scope: !222)
!858 = !DILocation(line: 610, column: 30, scope: !222)
!859 = distinct !{!859, !852, !853, !860}
!860 = !{!"llvm.loop.mustprogress"}
!861 = !DILocation(line: 612, column: 18, scope: !862)
!862 = distinct !DILexicalBlock(scope: !222, file: !67, line: 612, column: 11)
!863 = !DILocation(line: 612, column: 11, scope: !222)
!864 = !DILocation(line: 620, column: 23, scope: !66)
!865 = !DILocation(line: 625, column: 39, scope: !66)
!866 = !DILocation(line: 626, column: 3, scope: !66)
!867 = !DILocation(line: 626, column: 10, scope: !66)
!868 = !DILocation(line: 626, column: 21, scope: !66)
!869 = !DILocation(line: 628, column: 44, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !67, line: 628, column: 11)
!871 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!872 = !DILocation(line: 628, column: 32, scope: !870)
!873 = !DILocation(line: 628, column: 49, scope: !870)
!874 = !DILocation(line: 628, column: 11, scope: !871)
!875 = !DILocation(line: 630, column: 11, scope: !876)
!876 = distinct !DILexicalBlock(scope: !871, file: !67, line: 630, column: 11)
!877 = !DILocation(line: 630, column: 11, scope: !871)
!878 = !DILocation(line: 632, column: 26, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !67, line: 632, column: 15)
!880 = distinct !DILexicalBlock(scope: !876, file: !67, line: 631, column: 9)
!881 = !DILocation(line: 632, column: 34, scope: !879)
!882 = !DILocation(line: 632, column: 37, scope: !879)
!883 = !DILocation(line: 632, column: 15, scope: !880)
!884 = !DILocation(line: 640, column: 16, scope: !871)
!885 = distinct !{!885, !866, !886, !860}
!886 = !DILocation(line: 641, column: 5, scope: !66)
!887 = !DILocation(line: 644, column: 3, scope: !66)
!888 = !DILocation(line: 0, scope: !825, inlinedAt: !889)
!889 = distinct !DILocation(line: 648, column: 31, scope: !66)
!890 = !DILocation(line: 0, scope: !825, inlinedAt: !891)
!891 = distinct !DILocation(line: 649, column: 31, scope: !66)
!892 = !DILocation(line: 0, scope: !825, inlinedAt: !893)
!893 = distinct !DILocation(line: 650, column: 31, scope: !66)
!894 = !DILocation(line: 0, scope: !825, inlinedAt: !895)
!895 = distinct !DILocation(line: 651, column: 31, scope: !66)
!896 = !DILocation(line: 0, scope: !825, inlinedAt: !897)
!897 = distinct !DILocation(line: 652, column: 31, scope: !66)
!898 = !DILocation(line: 0, scope: !825, inlinedAt: !899)
!899 = distinct !DILocation(line: 653, column: 31, scope: !66)
!900 = !DILocation(line: 0, scope: !825, inlinedAt: !901)
!901 = distinct !DILocation(line: 654, column: 31, scope: !66)
!902 = !DILocation(line: 0, scope: !825, inlinedAt: !903)
!903 = distinct !DILocation(line: 655, column: 31, scope: !66)
!904 = !DILocation(line: 0, scope: !825, inlinedAt: !905)
!905 = distinct !DILocation(line: 656, column: 31, scope: !66)
!906 = !DILocation(line: 0, scope: !825, inlinedAt: !907)
!907 = distinct !DILocation(line: 657, column: 31, scope: !66)
!908 = !DILocation(line: 663, column: 7, scope: !909)
!909 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!910 = !DILocation(line: 664, column: 7, scope: !909)
!911 = !DILocation(line: 664, column: 10, scope: !909)
!912 = !DILocation(line: 663, column: 7, scope: !66)
!913 = !DILocation(line: 669, column: 7, scope: !914)
!914 = distinct !DILexicalBlock(scope: !909, file: !67, line: 665, column: 5)
!915 = !DILocation(line: 671, column: 5, scope: !914)
!916 = !DILocation(line: 676, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !909, file: !67, line: 673, column: 5)
!918 = !DILocation(line: 679, column: 3, scope: !66)
!919 = !DILocation(line: 683, column: 3, scope: !66)
!920 = !DILocation(line: 686, column: 3, scope: !66)
!921 = !DILocation(line: 688, column: 3, scope: !66)
!922 = !DILocation(line: 691, column: 3, scope: !66)
!923 = !DILocation(line: 695, column: 3, scope: !66)
!924 = !DILocation(line: 696, column: 1, scope: !66)
!925 = !DISubprogram(name: "setlocale", scope: !926, file: !926, line: 122, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!926 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!927 = !DISubroutineType(types: !928)
!928 = !{!239, !92, !70}
!929 = !DISubprogram(name: "strncmp", scope: !930, file: !930, line: 159, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!930 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!931 = !DISubroutineType(types: !932)
!932 = !{!92, !70, !70, !94}
!933 = !DISubprogram(name: "exit", scope: !934, file: !934, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!934 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!935 = !DISubprogram(name: "getenv", scope: !934, file: !934, line: 641, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!936 = !DISubroutineType(types: !937)
!937 = !{!239, !70}
!938 = !DISubprogram(name: "strcmp", scope: !930, file: !930, line: 156, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!939 = !DISubroutineType(types: !940)
!940 = !{!92, !70, !70}
!941 = !DISubprogram(name: "strspn", scope: !930, file: !930, line: 297, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!942 = !DISubroutineType(types: !943)
!943 = !{!96, !70, !70}
!944 = !DISubprogram(name: "strchr", scope: !930, file: !930, line: 246, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!945 = !DISubroutineType(types: !946)
!946 = !{!239, !70, !92}
!947 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!948 = !DISubroutineType(types: !949)
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!953 = !DISubprogram(name: "strcspn", scope: !930, file: !930, line: 293, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!954 = !DISubprogram(name: "fwrite_unlocked", scope: !323, file: !323, line: 704, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!955 = !DISubroutineType(types: !956)
!956 = !{!94, !957, !94, !94, !803}
!957 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!960 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 50, type: !961, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !964)
!961 = !DISubroutineType(types: !962)
!962 = !{!92, !92, !963}
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!964 = !{!965, !966, !967}
!965 = !DILocalVariable(name: "argc", arg: 1, scope: !960, file: !2, line: 50, type: !92)
!966 = !DILocalVariable(name: "argv", arg: 2, scope: !960, file: !2, line: 50, type: !963)
!967 = !DILocalVariable(name: "cp", scope: !960, file: !2, line: 72, type: !70)
!968 = !DILocation(line: 0, scope: !960)
!969 = !DILocation(line: 53, column: 21, scope: !960)
!970 = !DILocation(line: 53, column: 3, scope: !960)
!971 = !DILocation(line: 54, column: 3, scope: !960)
!972 = !DILocation(line: 55, column: 3, scope: !960)
!973 = !DILocation(line: 56, column: 3, scope: !960)
!974 = !DILocation(line: 58, column: 3, scope: !960)
!975 = !DILocation(line: 61, column: 36, scope: !960)
!976 = !DILocation(line: 61, column: 58, scope: !960)
!977 = !DILocation(line: 60, column: 3, scope: !960)
!978 = !DILocation(line: 64, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !960, file: !2, line: 64, column: 7)
!980 = !DILocation(line: 64, column: 14, scope: !979)
!981 = !DILocation(line: 64, column: 7, scope: !960)
!982 = !DILocation(line: 66, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !979, file: !2, line: 65, column: 5)
!984 = !DILocation(line: 67, column: 7, scope: !983)
!985 = !DILocation(line: 72, column: 20, scope: !960)
!986 = !DILocation(line: 73, column: 9, scope: !987)
!987 = distinct !DILexicalBlock(scope: !960, file: !2, line: 73, column: 7)
!988 = !DILocation(line: 73, column: 7, scope: !960)
!989 = !DILocation(line: 74, column: 5, scope: !987)
!990 = !DILocation(line: 76, column: 3, scope: !960)
!991 = !DILocation(line: 77, column: 3, scope: !960)
!992 = !DISubprogram(name: "bindtextdomain", scope: !795, file: !795, line: 86, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!993 = !DISubroutineType(types: !994)
!994 = !{!239, !70, !70}
!995 = !DISubprogram(name: "textdomain", scope: !795, file: !795, line: 82, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!996 = !DISubprogram(name: "atexit", scope: !934, file: !934, line: 602, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!997 = !DISubroutineType(types: !998)
!998 = !{!92, !363}
!999 = !DISubprogram(name: "getlogin", scope: !1000, file: !1000, line: 881, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1000 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1001 = !DISubroutineType(types: !393)
!1002 = !DISubprogram(name: "puts", scope: !323, file: !323, line: 661, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!92, !70}
!1005 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !297, file: !297, line: 50, type: !764, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1006)
!1006 = !{!1007}
!1007 = !DILocalVariable(name: "file", arg: 1, scope: !1005, file: !297, line: 50, type: !70)
!1008 = !DILocation(line: 0, scope: !1005)
!1009 = !DILocation(line: 52, column: 13, scope: !1005)
!1010 = !DILocation(line: 53, column: 1, scope: !1005)
!1011 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !297, file: !297, line: 87, type: !1012, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1014)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !218}
!1014 = !{!1015}
!1015 = !DILocalVariable(name: "ignore", arg: 1, scope: !1011, file: !297, line: 87, type: !218)
!1016 = !DILocation(line: 0, scope: !1011)
!1017 = !DILocation(line: 89, column: 16, scope: !1011)
!1018 = !{!1019, !1019, i64 0}
!1019 = !{!"_Bool", !755, i64 0}
!1020 = !DILocation(line: 90, column: 1, scope: !1011)
!1021 = distinct !DISubprogram(name: "close_stdout", scope: !297, file: !297, line: 116, type: !364, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1022)
!1022 = !{!1023}
!1023 = !DILocalVariable(name: "write_error", scope: !1024, file: !297, line: 121, type: !70)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !297, line: 120, column: 5)
!1025 = distinct !DILexicalBlock(scope: !1021, file: !297, line: 118, column: 7)
!1026 = !DILocation(line: 118, column: 21, scope: !1025)
!1027 = !DILocation(line: 118, column: 7, scope: !1025)
!1028 = !DILocation(line: 118, column: 29, scope: !1025)
!1029 = !DILocation(line: 119, column: 7, scope: !1025)
!1030 = !DILocation(line: 119, column: 12, scope: !1025)
!1031 = !{i8 0, i8 2}
!1032 = !DILocation(line: 119, column: 25, scope: !1025)
!1033 = !DILocation(line: 119, column: 28, scope: !1025)
!1034 = !DILocation(line: 119, column: 34, scope: !1025)
!1035 = !DILocation(line: 118, column: 7, scope: !1021)
!1036 = !DILocation(line: 121, column: 33, scope: !1024)
!1037 = !DILocation(line: 0, scope: !1024)
!1038 = !DILocation(line: 122, column: 11, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1024, file: !297, line: 122, column: 11)
!1040 = !DILocation(line: 0, scope: !1039)
!1041 = !DILocation(line: 122, column: 11, scope: !1024)
!1042 = !DILocation(line: 123, column: 9, scope: !1039)
!1043 = !DILocation(line: 126, column: 9, scope: !1039)
!1044 = !DILocation(line: 128, column: 14, scope: !1024)
!1045 = !DILocation(line: 128, column: 7, scope: !1024)
!1046 = !DILocation(line: 133, column: 42, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1021, file: !297, line: 133, column: 7)
!1048 = !DILocation(line: 133, column: 28, scope: !1047)
!1049 = !DILocation(line: 133, column: 50, scope: !1047)
!1050 = !DILocation(line: 133, column: 7, scope: !1021)
!1051 = !DILocation(line: 134, column: 12, scope: !1047)
!1052 = !DILocation(line: 134, column: 5, scope: !1047)
!1053 = !DILocation(line: 135, column: 1, scope: !1021)
!1054 = !DISubprogram(name: "__errno_location", scope: !1055, file: !1055, line: 37, type: !1056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1055 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!387}
!1058 = !DISubprogram(name: "_exit", scope: !1000, file: !1000, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1059 = distinct !DISubprogram(name: "verror", scope: !312, file: !312, line: 251, type: !1060, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1062)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{null, !92, !92, !70, !322}
!1062 = !{!1063, !1064, !1065, !1066}
!1063 = !DILocalVariable(name: "status", arg: 1, scope: !1059, file: !312, line: 251, type: !92)
!1064 = !DILocalVariable(name: "errnum", arg: 2, scope: !1059, file: !312, line: 251, type: !92)
!1065 = !DILocalVariable(name: "message", arg: 3, scope: !1059, file: !312, line: 251, type: !70)
!1066 = !DILocalVariable(name: "args", arg: 4, scope: !1059, file: !312, line: 251, type: !322)
!1067 = !DILocation(line: 0, scope: !1059)
!1068 = !DILocation(line: 251, column: 1, scope: !1059)
!1069 = !DILocation(line: 261, column: 3, scope: !1059)
!1070 = !DILocation(line: 265, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1059, file: !312, line: 265, column: 7)
!1072 = !DILocation(line: 265, column: 7, scope: !1059)
!1073 = !DILocation(line: 266, column: 5, scope: !1071)
!1074 = !DILocation(line: 272, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !312, line: 268, column: 5)
!1076 = !DILocation(line: 276, column: 3, scope: !1059)
!1077 = !{i64 0, i64 8, !753, i64 8, i64 8, !753, i64 16, i64 8, !753, i64 24, i64 4, !813, i64 28, i64 4, !813}
!1078 = !DILocation(line: 282, column: 1, scope: !1059)
!1079 = distinct !DISubprogram(name: "flush_stdout", scope: !312, file: !312, line: 163, type: !364, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1080)
!1080 = !{!1081}
!1081 = !DILocalVariable(name: "stdout_fd", scope: !1079, file: !312, line: 166, type: !92)
!1082 = !DILocation(line: 0, scope: !1079)
!1083 = !DILocalVariable(name: "fd", arg: 1, scope: !1084, file: !312, line: 145, type: !92)
!1084 = distinct !DISubprogram(name: "is_open", scope: !312, file: !312, line: 145, type: !1085, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1087)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!92, !92}
!1087 = !{!1083}
!1088 = !DILocation(line: 0, scope: !1084, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 182, column: 25, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1079, file: !312, line: 182, column: 7)
!1091 = !DILocation(line: 157, column: 15, scope: !1084, inlinedAt: !1089)
!1092 = !DILocation(line: 157, column: 12, scope: !1084, inlinedAt: !1089)
!1093 = !DILocation(line: 182, column: 7, scope: !1079)
!1094 = !DILocation(line: 184, column: 5, scope: !1090)
!1095 = !DILocation(line: 185, column: 1, scope: !1079)
!1096 = distinct !DISubprogram(name: "error_tail", scope: !312, file: !312, line: 219, type: !1060, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1097)
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DILocalVariable(name: "status", arg: 1, scope: !1096, file: !312, line: 219, type: !92)
!1099 = !DILocalVariable(name: "errnum", arg: 2, scope: !1096, file: !312, line: 219, type: !92)
!1100 = !DILocalVariable(name: "message", arg: 3, scope: !1096, file: !312, line: 219, type: !70)
!1101 = !DILocalVariable(name: "args", arg: 4, scope: !1096, file: !312, line: 219, type: !322)
!1102 = !DILocation(line: 0, scope: !1096)
!1103 = !DILocation(line: 219, column: 1, scope: !1096)
!1104 = !DILocation(line: 229, column: 13, scope: !1096)
!1105 = !DILocation(line: 135, column: 10, scope: !1106, inlinedAt: !1148)
!1106 = distinct !DISubprogram(name: "vfprintf", scope: !800, file: !800, line: 132, type: !1107, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1144)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!92, !1109, !804, !324}
!1109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1110)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1125, !1126, !1127, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1112, file: !235, line: 51, baseType: !92, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1112, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1112, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1112, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1112, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1112, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1112, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1112, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1112, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1112, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1112, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1112, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1112, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1112, file: !235, line: 70, baseType: !1128, size: 64, offset: 832)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1112, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1112, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1112, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1112, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1112, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1112, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1112, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1112, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1112, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1112, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1112, file: !235, line: 93, baseType: !1128, size: 64, offset: 1344)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1112, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1112, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1112, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1112, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!1144 = !{!1145, !1146, !1147}
!1145 = !DILocalVariable(name: "__stream", arg: 1, scope: !1106, file: !800, line: 132, type: !1109)
!1146 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1106, file: !800, line: 133, type: !804)
!1147 = !DILocalVariable(name: "__ap", arg: 3, scope: !1106, file: !800, line: 133, type: !324)
!1148 = distinct !DILocation(line: 229, column: 3, scope: !1096)
!1149 = !{!1150, !1152}
!1150 = distinct !{!1150, !1151, !"vfprintf.inline: argument 0"}
!1151 = distinct !{!1151, !"vfprintf.inline"}
!1152 = distinct !{!1152, !1151, !"vfprintf.inline: argument 1"}
!1153 = !DILocation(line: 229, column: 3, scope: !1096)
!1154 = !DILocation(line: 0, scope: !1106, inlinedAt: !1148)
!1155 = !DILocation(line: 133, column: 49, scope: !1106, inlinedAt: !1148)
!1156 = !DILocation(line: 232, column: 3, scope: !1096)
!1157 = !DILocation(line: 233, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1096, file: !312, line: 233, column: 7)
!1159 = !DILocation(line: 233, column: 7, scope: !1096)
!1160 = !DILocalVariable(name: "errnum", arg: 1, scope: !1161, file: !312, line: 188, type: !92)
!1161 = distinct !DISubprogram(name: "print_errno_message", scope: !312, file: !312, line: 188, type: !743, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1162)
!1162 = !{!1160, !1163, !1164}
!1163 = !DILocalVariable(name: "s", scope: !1161, file: !312, line: 190, type: !70)
!1164 = !DILocalVariable(name: "errbuf", scope: !1161, file: !312, line: 193, type: !1165)
!1165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1166)
!1166 = !{!1167}
!1167 = !DISubrange(count: 1024)
!1168 = !DILocation(line: 0, scope: !1161, inlinedAt: !1169)
!1169 = distinct !DILocation(line: 234, column: 5, scope: !1158)
!1170 = !DILocation(line: 193, column: 3, scope: !1161, inlinedAt: !1169)
!1171 = !DILocation(line: 193, column: 8, scope: !1161, inlinedAt: !1169)
!1172 = !DILocation(line: 195, column: 7, scope: !1161, inlinedAt: !1169)
!1173 = !DILocation(line: 207, column: 9, scope: !1174, inlinedAt: !1169)
!1174 = distinct !DILexicalBlock(scope: !1161, file: !312, line: 207, column: 7)
!1175 = !DILocation(line: 207, column: 7, scope: !1161, inlinedAt: !1169)
!1176 = !DILocation(line: 208, column: 9, scope: !1174, inlinedAt: !1169)
!1177 = !DILocation(line: 208, column: 5, scope: !1174, inlinedAt: !1169)
!1178 = !DILocation(line: 214, column: 3, scope: !1161, inlinedAt: !1169)
!1179 = !DILocation(line: 216, column: 1, scope: !1161, inlinedAt: !1169)
!1180 = !DILocation(line: 234, column: 5, scope: !1158)
!1181 = !DILocation(line: 238, column: 3, scope: !1096)
!1182 = !DILocalVariable(name: "__c", arg: 1, scope: !1183, file: !1184, line: 101, type: !92)
!1183 = distinct !DISubprogram(name: "putc_unlocked", scope: !1184, file: !1184, line: 101, type: !1185, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1187)
!1184 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!92, !92, !1110}
!1187 = !{!1182, !1188}
!1188 = !DILocalVariable(name: "__stream", arg: 2, scope: !1183, file: !1184, line: 101, type: !1110)
!1189 = !DILocation(line: 0, scope: !1183, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 238, column: 3, scope: !1096)
!1191 = !DILocation(line: 103, column: 10, scope: !1183, inlinedAt: !1190)
!1192 = !{!1193, !754, i64 40}
!1193 = !{!"_IO_FILE", !814, i64 0, !754, i64 8, !754, i64 16, !754, i64 24, !754, i64 32, !754, i64 40, !754, i64 48, !754, i64 56, !754, i64 64, !754, i64 72, !754, i64 80, !754, i64 88, !754, i64 96, !754, i64 104, !814, i64 112, !814, i64 116, !1194, i64 120, !855, i64 128, !755, i64 130, !755, i64 131, !754, i64 136, !1194, i64 144, !754, i64 152, !754, i64 160, !754, i64 168, !754, i64 176, !1194, i64 184, !814, i64 192, !755, i64 196}
!1194 = !{!"long", !755, i64 0}
!1195 = !{!1193, !754, i64 48}
!1196 = !{!"branch_weights", i32 2000, i32 1}
!1197 = !DILocation(line: 240, column: 3, scope: !1096)
!1198 = !DILocation(line: 241, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1096, file: !312, line: 241, column: 7)
!1200 = !DILocation(line: 241, column: 7, scope: !1096)
!1201 = !DILocation(line: 242, column: 5, scope: !1199)
!1202 = !DILocation(line: 243, column: 1, scope: !1096)
!1203 = !DISubprogram(name: "__vfprintf_chk", scope: !800, file: !800, line: 96, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!92, !1109, !92, !804, !324}
!1206 = !DISubprogram(name: "strerror_r", scope: !930, file: !930, line: 444, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!239, !92, !239, !94}
!1209 = !DISubprogram(name: "__overflow", scope: !323, file: !323, line: 886, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!92, !1110, !92}
!1212 = !DISubprogram(name: "fflush_unlocked", scope: !323, file: !323, line: 239, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!92, !1110}
!1215 = !DISubprogram(name: "fcntl", scope: !1216, file: !1216, line: 149, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1216 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!92, !92, !92, null}
!1219 = distinct !DISubprogram(name: "error", scope: !312, file: !312, line: 285, type: !1220, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !92, !92, !70, null}
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DILocalVariable(name: "status", arg: 1, scope: !1219, file: !312, line: 285, type: !92)
!1224 = !DILocalVariable(name: "errnum", arg: 2, scope: !1219, file: !312, line: 285, type: !92)
!1225 = !DILocalVariable(name: "message", arg: 3, scope: !1219, file: !312, line: 285, type: !70)
!1226 = !DILocalVariable(name: "ap", scope: !1219, file: !312, line: 287, type: !322)
!1227 = !DILocation(line: 0, scope: !1219)
!1228 = !DILocation(line: 287, column: 3, scope: !1219)
!1229 = !DILocation(line: 287, column: 11, scope: !1219)
!1230 = !DILocation(line: 288, column: 3, scope: !1219)
!1231 = !DILocation(line: 289, column: 3, scope: !1219)
!1232 = !DILocation(line: 290, column: 3, scope: !1219)
!1233 = !DILocation(line: 291, column: 1, scope: !1219)
!1234 = !DILocation(line: 0, scope: !319)
!1235 = !DILocation(line: 298, column: 1, scope: !319)
!1236 = !DILocation(line: 302, column: 7, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !319, file: !312, line: 302, column: 7)
!1238 = !DILocation(line: 302, column: 7, scope: !319)
!1239 = !DILocation(line: 307, column: 11, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !312, line: 307, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !312, line: 303, column: 5)
!1242 = !DILocation(line: 307, column: 27, scope: !1240)
!1243 = !DILocation(line: 308, column: 11, scope: !1240)
!1244 = !DILocation(line: 308, column: 28, scope: !1240)
!1245 = !DILocation(line: 308, column: 25, scope: !1240)
!1246 = !DILocation(line: 309, column: 15, scope: !1240)
!1247 = !DILocation(line: 309, column: 33, scope: !1240)
!1248 = !DILocation(line: 310, column: 19, scope: !1240)
!1249 = !DILocation(line: 311, column: 22, scope: !1240)
!1250 = !DILocation(line: 311, column: 56, scope: !1240)
!1251 = !DILocation(line: 307, column: 11, scope: !1241)
!1252 = !DILocation(line: 316, column: 21, scope: !1241)
!1253 = !DILocation(line: 317, column: 23, scope: !1241)
!1254 = !DILocation(line: 318, column: 5, scope: !1241)
!1255 = !DILocation(line: 327, column: 3, scope: !319)
!1256 = !DILocation(line: 331, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !319, file: !312, line: 331, column: 7)
!1258 = !DILocation(line: 331, column: 7, scope: !319)
!1259 = !DILocation(line: 332, column: 5, scope: !1257)
!1260 = !DILocation(line: 338, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !312, line: 334, column: 5)
!1262 = !DILocation(line: 346, column: 3, scope: !319)
!1263 = !DILocation(line: 350, column: 3, scope: !319)
!1264 = !DILocation(line: 356, column: 1, scope: !319)
!1265 = distinct !DISubprogram(name: "error_at_line", scope: !312, file: !312, line: 359, type: !1266, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1268)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !92, !92, !70, !76, !70, null}
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274}
!1269 = !DILocalVariable(name: "status", arg: 1, scope: !1265, file: !312, line: 359, type: !92)
!1270 = !DILocalVariable(name: "errnum", arg: 2, scope: !1265, file: !312, line: 359, type: !92)
!1271 = !DILocalVariable(name: "file_name", arg: 3, scope: !1265, file: !312, line: 359, type: !70)
!1272 = !DILocalVariable(name: "line_number", arg: 4, scope: !1265, file: !312, line: 360, type: !76)
!1273 = !DILocalVariable(name: "message", arg: 5, scope: !1265, file: !312, line: 360, type: !70)
!1274 = !DILocalVariable(name: "ap", scope: !1265, file: !312, line: 362, type: !322)
!1275 = !DILocation(line: 0, scope: !1265)
!1276 = !DILocation(line: 362, column: 3, scope: !1265)
!1277 = !DILocation(line: 362, column: 11, scope: !1265)
!1278 = !DILocation(line: 363, column: 3, scope: !1265)
!1279 = !DILocation(line: 364, column: 3, scope: !1265)
!1280 = !DILocation(line: 366, column: 3, scope: !1265)
!1281 = !DILocation(line: 367, column: 1, scope: !1265)
!1282 = distinct !DISubprogram(name: "getprogname", scope: !673, file: !673, line: 54, type: !1283, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !798)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!70}
!1285 = !DILocation(line: 58, column: 10, scope: !1282)
!1286 = !DILocation(line: 58, column: 3, scope: !1282)
!1287 = distinct !DISubprogram(name: "parse_long_options", scope: !368, file: !368, line: 45, type: !1288, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1291)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !92, !963, !70, !70, !70, !1290, null}
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1302}
!1292 = !DILocalVariable(name: "argc", arg: 1, scope: !1287, file: !368, line: 45, type: !92)
!1293 = !DILocalVariable(name: "argv", arg: 2, scope: !1287, file: !368, line: 46, type: !963)
!1294 = !DILocalVariable(name: "command_name", arg: 3, scope: !1287, file: !368, line: 47, type: !70)
!1295 = !DILocalVariable(name: "package", arg: 4, scope: !1287, file: !368, line: 48, type: !70)
!1296 = !DILocalVariable(name: "version", arg: 5, scope: !1287, file: !368, line: 49, type: !70)
!1297 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1287, file: !368, line: 50, type: !1290)
!1298 = !DILocalVariable(name: "saved_opterr", scope: !1287, file: !368, line: 53, type: !92)
!1299 = !DILocalVariable(name: "c", scope: !1300, file: !368, line: 60, type: !92)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !368, line: 59, column: 5)
!1301 = distinct !DILexicalBlock(scope: !1287, file: !368, line: 58, column: 7)
!1302 = !DILocalVariable(name: "authors", scope: !1303, file: !368, line: 71, type: !1307)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !368, line: 70, column: 15)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !368, line: 64, column: 13)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !368, line: 62, column: 9)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !368, line: 61, column: 11)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 52, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 14, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1310, baseType: !1311)
!1310 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1311, file: !1310, line: 71, baseType: !91, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1311, file: !1310, line: 71, baseType: !91, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1311, file: !1310, line: 71, baseType: !91, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1311, file: !1310, line: 71, baseType: !92, size: 32, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1311, file: !1310, line: 71, baseType: !92, size: 32, offset: 224)
!1318 = !DILocation(line: 0, scope: !1287)
!1319 = !DILocation(line: 53, column: 22, scope: !1287)
!1320 = !DILocation(line: 56, column: 10, scope: !1287)
!1321 = !DILocation(line: 58, column: 12, scope: !1301)
!1322 = !DILocation(line: 58, column: 7, scope: !1287)
!1323 = !DILocation(line: 60, column: 15, scope: !1300)
!1324 = !DILocation(line: 0, scope: !1300)
!1325 = !DILocation(line: 61, column: 11, scope: !1300)
!1326 = !DILocation(line: 66, column: 15, scope: !1304)
!1327 = !DILocation(line: 67, column: 15, scope: !1304)
!1328 = !DILocation(line: 71, column: 17, scope: !1303)
!1329 = !DILocation(line: 71, column: 25, scope: !1303)
!1330 = !DILocation(line: 72, column: 17, scope: !1303)
!1331 = !DILocation(line: 73, column: 33, scope: !1303)
!1332 = !DILocation(line: 73, column: 17, scope: !1303)
!1333 = !DILocation(line: 74, column: 17, scope: !1303)
!1334 = !DILocation(line: 85, column: 10, scope: !1287)
!1335 = !DILocation(line: 89, column: 10, scope: !1287)
!1336 = !DILocation(line: 90, column: 1, scope: !1287)
!1337 = !DISubprogram(name: "getopt_long", scope: !382, file: !382, line: 66, type: !1338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!92, !92, !1340, !70, !1342, !387}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1343 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !368, file: !368, line: 98, type: !1344, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !1346)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{null, !92, !963, !70, !70, !70, !218, !1290, null}
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357}
!1347 = !DILocalVariable(name: "argc", arg: 1, scope: !1343, file: !368, line: 98, type: !92)
!1348 = !DILocalVariable(name: "argv", arg: 2, scope: !1343, file: !368, line: 99, type: !963)
!1349 = !DILocalVariable(name: "command_name", arg: 3, scope: !1343, file: !368, line: 100, type: !70)
!1350 = !DILocalVariable(name: "package", arg: 4, scope: !1343, file: !368, line: 101, type: !70)
!1351 = !DILocalVariable(name: "version", arg: 5, scope: !1343, file: !368, line: 102, type: !70)
!1352 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1343, file: !368, line: 103, type: !218)
!1353 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1343, file: !368, line: 104, type: !1290)
!1354 = !DILocalVariable(name: "saved_opterr", scope: !1343, file: !368, line: 107, type: !92)
!1355 = !DILocalVariable(name: "optstring", scope: !1343, file: !368, line: 112, type: !70)
!1356 = !DILocalVariable(name: "c", scope: !1343, file: !368, line: 114, type: !92)
!1357 = !DILocalVariable(name: "authors", scope: !1358, file: !368, line: 125, type: !1307)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !368, line: 124, column: 11)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !368, line: 118, column: 9)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !368, line: 116, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1343, file: !368, line: 115, column: 7)
!1362 = !DILocation(line: 0, scope: !1343)
!1363 = !DILocation(line: 107, column: 22, scope: !1343)
!1364 = !DILocation(line: 110, column: 10, scope: !1343)
!1365 = !DILocation(line: 112, column: 27, scope: !1343)
!1366 = !DILocation(line: 114, column: 11, scope: !1343)
!1367 = !DILocation(line: 115, column: 7, scope: !1343)
!1368 = !DILocation(line: 125, column: 13, scope: !1358)
!1369 = !DILocation(line: 125, column: 21, scope: !1358)
!1370 = !DILocation(line: 126, column: 13, scope: !1358)
!1371 = !DILocation(line: 127, column: 29, scope: !1358)
!1372 = !DILocation(line: 127, column: 13, scope: !1358)
!1373 = !DILocation(line: 128, column: 13, scope: !1358)
!1374 = !DILocation(line: 132, column: 26, scope: !1359)
!1375 = !DILocation(line: 133, column: 11, scope: !1359)
!1376 = !DILocation(line: 0, scope: !1359)
!1377 = !DILocation(line: 138, column: 10, scope: !1343)
!1378 = !DILocation(line: 139, column: 1, scope: !1343)
!1379 = distinct !DISubprogram(name: "set_program_name", scope: !392, file: !392, line: 37, type: !764, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1380)
!1380 = !{!1381, !1382, !1383}
!1381 = !DILocalVariable(name: "argv0", arg: 1, scope: !1379, file: !392, line: 37, type: !70)
!1382 = !DILocalVariable(name: "slash", scope: !1379, file: !392, line: 44, type: !70)
!1383 = !DILocalVariable(name: "base", scope: !1379, file: !392, line: 45, type: !70)
!1384 = !DILocation(line: 0, scope: !1379)
!1385 = !DILocation(line: 44, column: 23, scope: !1379)
!1386 = !DILocation(line: 45, column: 22, scope: !1379)
!1387 = !DILocation(line: 46, column: 17, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1379, file: !392, line: 46, column: 7)
!1389 = !DILocation(line: 46, column: 9, scope: !1388)
!1390 = !DILocation(line: 46, column: 25, scope: !1388)
!1391 = !DILocation(line: 46, column: 40, scope: !1388)
!1392 = !DILocalVariable(name: "__s1", arg: 1, scope: !1393, file: !826, line: 974, type: !958)
!1393 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1394, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1396)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!218, !958, !958, !94}
!1396 = !{!1392, !1397, !1398}
!1397 = !DILocalVariable(name: "__s2", arg: 2, scope: !1393, file: !826, line: 974, type: !958)
!1398 = !DILocalVariable(name: "__n", arg: 3, scope: !1393, file: !826, line: 974, type: !94)
!1399 = !DILocation(line: 0, scope: !1393, inlinedAt: !1400)
!1400 = distinct !DILocation(line: 46, column: 28, scope: !1388)
!1401 = !DILocation(line: 976, column: 11, scope: !1393, inlinedAt: !1400)
!1402 = !DILocation(line: 976, column: 10, scope: !1393, inlinedAt: !1400)
!1403 = !DILocation(line: 46, column: 7, scope: !1379)
!1404 = !DILocation(line: 49, column: 11, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !392, line: 49, column: 11)
!1406 = distinct !DILexicalBlock(scope: !1388, file: !392, line: 47, column: 5)
!1407 = !DILocation(line: 49, column: 36, scope: !1405)
!1408 = !DILocation(line: 49, column: 11, scope: !1406)
!1409 = !DILocation(line: 65, column: 16, scope: !1379)
!1410 = !DILocation(line: 71, column: 27, scope: !1379)
!1411 = !DILocation(line: 74, column: 33, scope: !1379)
!1412 = !DILocation(line: 76, column: 1, scope: !1379)
!1413 = !DISubprogram(name: "strrchr", scope: !930, file: !930, line: 273, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1414 = !DILocation(line: 0, scope: !401)
!1415 = !DILocation(line: 40, column: 29, scope: !401)
!1416 = !DILocation(line: 41, column: 19, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !401, file: !402, line: 41, column: 7)
!1418 = !DILocation(line: 41, column: 7, scope: !401)
!1419 = !DILocation(line: 47, column: 3, scope: !401)
!1420 = !DILocation(line: 48, column: 3, scope: !401)
!1421 = !DILocation(line: 48, column: 13, scope: !401)
!1422 = !DILocalVariable(name: "ps", arg: 1, scope: !1423, file: !1424, line: 1135, type: !1427)
!1423 = distinct !DISubprogram(name: "mbszero", scope: !1424, file: !1424, line: 1135, type: !1425, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1428)
!1424 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1425 = !DISubroutineType(types: !1426)
!1426 = !{null, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1428 = !{!1422}
!1429 = !DILocation(line: 0, scope: !1423, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 48, column: 18, scope: !401)
!1431 = !DILocalVariable(name: "__dest", arg: 1, scope: !1432, file: !1433, line: 57, type: !91)
!1432 = distinct !DISubprogram(name: "memset", scope: !1433, file: !1433, line: 57, type: !1434, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1436)
!1433 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!91, !91, !92, !94}
!1436 = !{!1431, !1437, !1438}
!1437 = !DILocalVariable(name: "__ch", arg: 2, scope: !1432, file: !1433, line: 57, type: !92)
!1438 = !DILocalVariable(name: "__len", arg: 3, scope: !1432, file: !1433, line: 57, type: !94)
!1439 = !DILocation(line: 0, scope: !1432, inlinedAt: !1440)
!1440 = distinct !DILocation(line: 1137, column: 3, scope: !1423, inlinedAt: !1430)
!1441 = !DILocation(line: 59, column: 10, scope: !1432, inlinedAt: !1440)
!1442 = !DILocation(line: 49, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !401, file: !402, line: 49, column: 7)
!1444 = !DILocation(line: 49, column: 39, scope: !1443)
!1445 = !DILocation(line: 49, column: 44, scope: !1443)
!1446 = !DILocation(line: 54, column: 1, scope: !401)
!1447 = !DISubprogram(name: "mbrtoc32", scope: !413, file: !413, line: 57, type: !1448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!94, !1450, !804, !94, !1452}
!1450 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1427)
!1453 = distinct !DISubprogram(name: "clone_quoting_options", scope: !432, file: !432, line: 113, type: !1454, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1457)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1456, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1457 = !{!1458, !1459, !1460}
!1458 = !DILocalVariable(name: "o", arg: 1, scope: !1453, file: !432, line: 113, type: !1456)
!1459 = !DILocalVariable(name: "saved_errno", scope: !1453, file: !432, line: 115, type: !92)
!1460 = !DILocalVariable(name: "p", scope: !1453, file: !432, line: 116, type: !1456)
!1461 = !DILocation(line: 0, scope: !1453)
!1462 = !DILocation(line: 115, column: 21, scope: !1453)
!1463 = !DILocation(line: 116, column: 40, scope: !1453)
!1464 = !DILocation(line: 116, column: 31, scope: !1453)
!1465 = !DILocation(line: 118, column: 9, scope: !1453)
!1466 = !DILocation(line: 119, column: 3, scope: !1453)
!1467 = distinct !DISubprogram(name: "get_quoting_style", scope: !432, file: !432, line: 124, type: !1468, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1472)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!458, !1470}
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!1472 = !{!1473}
!1473 = !DILocalVariable(name: "o", arg: 1, scope: !1467, file: !432, line: 124, type: !1470)
!1474 = !DILocation(line: 0, scope: !1467)
!1475 = !DILocation(line: 126, column: 11, scope: !1467)
!1476 = !DILocation(line: 126, column: 46, scope: !1467)
!1477 = !{!1478, !755, i64 0}
!1478 = !{!"quoting_options", !755, i64 0, !814, i64 4, !755, i64 8, !754, i64 40, !754, i64 48}
!1479 = !DILocation(line: 126, column: 3, scope: !1467)
!1480 = distinct !DISubprogram(name: "set_quoting_style", scope: !432, file: !432, line: 132, type: !1481, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1456, !458}
!1483 = !{!1484, !1485}
!1484 = !DILocalVariable(name: "o", arg: 1, scope: !1480, file: !432, line: 132, type: !1456)
!1485 = !DILocalVariable(name: "s", arg: 2, scope: !1480, file: !432, line: 132, type: !458)
!1486 = !DILocation(line: 0, scope: !1480)
!1487 = !DILocation(line: 134, column: 4, scope: !1480)
!1488 = !DILocation(line: 134, column: 45, scope: !1480)
!1489 = !DILocation(line: 135, column: 1, scope: !1480)
!1490 = distinct !DISubprogram(name: "set_char_quoting", scope: !432, file: !432, line: 143, type: !1491, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!92, !1456, !4, !92}
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1500, !1501}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1490, file: !432, line: 143, type: !1456)
!1495 = !DILocalVariable(name: "c", arg: 2, scope: !1490, file: !432, line: 143, type: !4)
!1496 = !DILocalVariable(name: "i", arg: 3, scope: !1490, file: !432, line: 143, type: !92)
!1497 = !DILocalVariable(name: "uc", scope: !1490, file: !432, line: 145, type: !97)
!1498 = !DILocalVariable(name: "p", scope: !1490, file: !432, line: 146, type: !1499)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1500 = !DILocalVariable(name: "shift", scope: !1490, file: !432, line: 148, type: !92)
!1501 = !DILocalVariable(name: "r", scope: !1490, file: !432, line: 149, type: !76)
!1502 = !DILocation(line: 0, scope: !1490)
!1503 = !DILocation(line: 147, column: 6, scope: !1490)
!1504 = !DILocation(line: 147, column: 41, scope: !1490)
!1505 = !DILocation(line: 147, column: 62, scope: !1490)
!1506 = !DILocation(line: 147, column: 57, scope: !1490)
!1507 = !DILocation(line: 148, column: 15, scope: !1490)
!1508 = !DILocation(line: 149, column: 21, scope: !1490)
!1509 = !DILocation(line: 149, column: 24, scope: !1490)
!1510 = !DILocation(line: 149, column: 34, scope: !1490)
!1511 = !DILocation(line: 150, column: 19, scope: !1490)
!1512 = !DILocation(line: 150, column: 24, scope: !1490)
!1513 = !DILocation(line: 150, column: 6, scope: !1490)
!1514 = !DILocation(line: 151, column: 3, scope: !1490)
!1515 = distinct !DISubprogram(name: "set_quoting_flags", scope: !432, file: !432, line: 159, type: !1516, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1518)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!92, !1456, !92}
!1518 = !{!1519, !1520, !1521}
!1519 = !DILocalVariable(name: "o", arg: 1, scope: !1515, file: !432, line: 159, type: !1456)
!1520 = !DILocalVariable(name: "i", arg: 2, scope: !1515, file: !432, line: 159, type: !92)
!1521 = !DILocalVariable(name: "r", scope: !1515, file: !432, line: 163, type: !92)
!1522 = !DILocation(line: 0, scope: !1515)
!1523 = !DILocation(line: 161, column: 8, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !432, line: 161, column: 7)
!1525 = !DILocation(line: 161, column: 7, scope: !1515)
!1526 = !DILocation(line: 163, column: 14, scope: !1515)
!1527 = !{!1478, !814, i64 4}
!1528 = !DILocation(line: 164, column: 12, scope: !1515)
!1529 = !DILocation(line: 165, column: 3, scope: !1515)
!1530 = distinct !DISubprogram(name: "set_custom_quoting", scope: !432, file: !432, line: 169, type: !1531, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !1456, !70, !70}
!1533 = !{!1534, !1535, !1536}
!1534 = !DILocalVariable(name: "o", arg: 1, scope: !1530, file: !432, line: 169, type: !1456)
!1535 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1530, file: !432, line: 170, type: !70)
!1536 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1530, file: !432, line: 170, type: !70)
!1537 = !DILocation(line: 0, scope: !1530)
!1538 = !DILocation(line: 172, column: 8, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1530, file: !432, line: 172, column: 7)
!1540 = !DILocation(line: 172, column: 7, scope: !1530)
!1541 = !DILocation(line: 174, column: 12, scope: !1530)
!1542 = !DILocation(line: 175, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1530, file: !432, line: 175, column: 7)
!1544 = !DILocation(line: 175, column: 19, scope: !1543)
!1545 = !DILocation(line: 176, column: 5, scope: !1543)
!1546 = !DILocation(line: 177, column: 6, scope: !1530)
!1547 = !DILocation(line: 177, column: 17, scope: !1530)
!1548 = !{!1478, !754, i64 40}
!1549 = !DILocation(line: 178, column: 6, scope: !1530)
!1550 = !DILocation(line: 178, column: 18, scope: !1530)
!1551 = !{!1478, !754, i64 48}
!1552 = !DILocation(line: 179, column: 1, scope: !1530)
!1553 = !DISubprogram(name: "abort", scope: !934, file: !934, line: 598, type: !364, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !798)
!1554 = distinct !DISubprogram(name: "quotearg_buffer", scope: !432, file: !432, line: 774, type: !1555, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!94, !239, !94, !70, !94, !1470}
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565}
!1558 = !DILocalVariable(name: "buffer", arg: 1, scope: !1554, file: !432, line: 774, type: !239)
!1559 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1554, file: !432, line: 774, type: !94)
!1560 = !DILocalVariable(name: "arg", arg: 3, scope: !1554, file: !432, line: 775, type: !70)
!1561 = !DILocalVariable(name: "argsize", arg: 4, scope: !1554, file: !432, line: 775, type: !94)
!1562 = !DILocalVariable(name: "o", arg: 5, scope: !1554, file: !432, line: 776, type: !1470)
!1563 = !DILocalVariable(name: "p", scope: !1554, file: !432, line: 778, type: !1470)
!1564 = !DILocalVariable(name: "saved_errno", scope: !1554, file: !432, line: 779, type: !92)
!1565 = !DILocalVariable(name: "r", scope: !1554, file: !432, line: 780, type: !94)
!1566 = !DILocation(line: 0, scope: !1554)
!1567 = !DILocation(line: 778, column: 37, scope: !1554)
!1568 = !DILocation(line: 779, column: 21, scope: !1554)
!1569 = !DILocation(line: 781, column: 43, scope: !1554)
!1570 = !DILocation(line: 781, column: 53, scope: !1554)
!1571 = !DILocation(line: 781, column: 63, scope: !1554)
!1572 = !DILocation(line: 782, column: 43, scope: !1554)
!1573 = !DILocation(line: 782, column: 58, scope: !1554)
!1574 = !DILocation(line: 780, column: 14, scope: !1554)
!1575 = !DILocation(line: 783, column: 9, scope: !1554)
!1576 = !DILocation(line: 784, column: 3, scope: !1554)
!1577 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !432, file: !432, line: 251, type: !1578, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1582)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!94, !239, !94, !70, !94, !458, !92, !1580, !70, !70}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1582 = !{!1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1607, !1609, !1612, !1613, !1614, !1615, !1618, !1619, !1622, !1626, !1627, !1635, !1638, !1639, !1641, !1642, !1643, !1644}
!1583 = !DILocalVariable(name: "buffer", arg: 1, scope: !1577, file: !432, line: 251, type: !239)
!1584 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1577, file: !432, line: 251, type: !94)
!1585 = !DILocalVariable(name: "arg", arg: 3, scope: !1577, file: !432, line: 252, type: !70)
!1586 = !DILocalVariable(name: "argsize", arg: 4, scope: !1577, file: !432, line: 252, type: !94)
!1587 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1577, file: !432, line: 253, type: !458)
!1588 = !DILocalVariable(name: "flags", arg: 6, scope: !1577, file: !432, line: 253, type: !92)
!1589 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1577, file: !432, line: 254, type: !1580)
!1590 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1577, file: !432, line: 255, type: !70)
!1591 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1577, file: !432, line: 256, type: !70)
!1592 = !DILocalVariable(name: "unibyte_locale", scope: !1577, file: !432, line: 258, type: !218)
!1593 = !DILocalVariable(name: "len", scope: !1577, file: !432, line: 260, type: !94)
!1594 = !DILocalVariable(name: "orig_buffersize", scope: !1577, file: !432, line: 261, type: !94)
!1595 = !DILocalVariable(name: "quote_string", scope: !1577, file: !432, line: 262, type: !70)
!1596 = !DILocalVariable(name: "quote_string_len", scope: !1577, file: !432, line: 263, type: !94)
!1597 = !DILocalVariable(name: "backslash_escapes", scope: !1577, file: !432, line: 264, type: !218)
!1598 = !DILocalVariable(name: "elide_outer_quotes", scope: !1577, file: !432, line: 265, type: !218)
!1599 = !DILocalVariable(name: "encountered_single_quote", scope: !1577, file: !432, line: 266, type: !218)
!1600 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1577, file: !432, line: 267, type: !218)
!1601 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1577, file: !432, line: 309, type: !218)
!1602 = !DILocalVariable(name: "lq", scope: !1603, file: !432, line: 361, type: !70)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !432, line: 361, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !432, line: 360, column: 13)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !432, line: 333, column: 7)
!1606 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 312, column: 5)
!1607 = !DILocalVariable(name: "i", scope: !1608, file: !432, line: 395, type: !94)
!1608 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 395, column: 3)
!1609 = !DILocalVariable(name: "is_right_quote", scope: !1610, file: !432, line: 397, type: !218)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !432, line: 396, column: 5)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !432, line: 395, column: 3)
!1612 = !DILocalVariable(name: "escaping", scope: !1610, file: !432, line: 398, type: !218)
!1613 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1610, file: !432, line: 399, type: !218)
!1614 = !DILocalVariable(name: "c", scope: !1610, file: !432, line: 417, type: !97)
!1615 = !DILocalVariable(name: "m", scope: !1616, file: !432, line: 598, type: !94)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 596, column: 11)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 419, column: 9)
!1618 = !DILocalVariable(name: "printable", scope: !1616, file: !432, line: 600, type: !218)
!1619 = !DILocalVariable(name: "mbs", scope: !1620, file: !432, line: 609, type: !519)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !432, line: 608, column: 15)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !432, line: 602, column: 17)
!1622 = !DILocalVariable(name: "w", scope: !1623, file: !432, line: 618, type: !412)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !432, line: 617, column: 19)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !432, line: 616, column: 17)
!1625 = distinct !DILexicalBlock(scope: !1620, file: !432, line: 616, column: 17)
!1626 = !DILocalVariable(name: "bytes", scope: !1623, file: !432, line: 619, type: !94)
!1627 = !DILocalVariable(name: "j", scope: !1628, file: !432, line: 648, type: !94)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !432, line: 648, column: 29)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !432, line: 647, column: 27)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !432, line: 645, column: 29)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !432, line: 636, column: 23)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !432, line: 628, column: 30)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !432, line: 623, column: 30)
!1634 = distinct !DILexicalBlock(scope: !1623, file: !432, line: 621, column: 25)
!1635 = !DILocalVariable(name: "ilim", scope: !1636, file: !432, line: 674, type: !94)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !432, line: 671, column: 15)
!1637 = distinct !DILexicalBlock(scope: !1616, file: !432, line: 670, column: 17)
!1638 = !DILabel(scope: !1577, name: "process_input", file: !432, line: 308)
!1639 = !DILabel(scope: !1640, name: "c_and_shell_escape", file: !432, line: 502)
!1640 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 478, column: 9)
!1641 = !DILabel(scope: !1640, name: "c_escape", file: !432, line: 507)
!1642 = !DILabel(scope: !1610, name: "store_escape", file: !432, line: 709)
!1643 = !DILabel(scope: !1610, name: "store_c", file: !432, line: 712)
!1644 = !DILabel(scope: !1577, name: "force_outer_quoting_style", file: !432, line: 753)
!1645 = !DILocation(line: 0, scope: !1577)
!1646 = !DILocation(line: 258, column: 25, scope: !1577)
!1647 = !DILocation(line: 258, column: 36, scope: !1577)
!1648 = !DILocation(line: 267, column: 3, scope: !1577)
!1649 = !DILocation(line: 261, column: 10, scope: !1577)
!1650 = !DILocation(line: 262, column: 15, scope: !1577)
!1651 = !DILocation(line: 263, column: 10, scope: !1577)
!1652 = !DILocation(line: 308, column: 2, scope: !1577)
!1653 = !DILocation(line: 311, column: 3, scope: !1577)
!1654 = !DILocation(line: 318, column: 11, scope: !1606)
!1655 = !DILocation(line: 319, column: 9, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !432, line: 319, column: 9)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !432, line: 319, column: 9)
!1658 = distinct !DILexicalBlock(scope: !1606, file: !432, line: 318, column: 11)
!1659 = !DILocation(line: 319, column: 9, scope: !1657)
!1660 = !DILocation(line: 0, scope: !510, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 357, column: 26, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !432, line: 335, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1605, file: !432, line: 334, column: 13)
!1664 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1661)
!1665 = !DILocation(line: 201, column: 19, scope: !1666, inlinedAt: !1661)
!1666 = distinct !DILexicalBlock(scope: !510, file: !432, line: 201, column: 7)
!1667 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1661)
!1668 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1661)
!1669 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1661)
!1670 = !DILocation(line: 230, column: 13, scope: !510, inlinedAt: !1661)
!1671 = !DILocalVariable(name: "ps", arg: 1, scope: !1672, file: !1424, line: 1135, type: !1675)
!1672 = distinct !DISubprogram(name: "mbszero", scope: !1424, file: !1424, line: 1135, type: !1673, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1676)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1676 = !{!1671}
!1677 = !DILocation(line: 0, scope: !1672, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1661)
!1679 = !DILocalVariable(name: "__dest", arg: 1, scope: !1680, file: !1433, line: 57, type: !91)
!1680 = distinct !DISubprogram(name: "memset", scope: !1433, file: !1433, line: 57, type: !1434, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1681)
!1681 = !{!1679, !1682, !1683}
!1682 = !DILocalVariable(name: "__ch", arg: 2, scope: !1680, file: !1433, line: 57, type: !92)
!1683 = !DILocalVariable(name: "__len", arg: 3, scope: !1680, file: !1433, line: 57, type: !94)
!1684 = !DILocation(line: 0, scope: !1680, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 1137, column: 3, scope: !1672, inlinedAt: !1678)
!1686 = !DILocation(line: 59, column: 10, scope: !1680, inlinedAt: !1685)
!1687 = !DILocation(line: 231, column: 7, scope: !1688, inlinedAt: !1661)
!1688 = distinct !DILexicalBlock(scope: !510, file: !432, line: 231, column: 7)
!1689 = !DILocation(line: 231, column: 40, scope: !1688, inlinedAt: !1661)
!1690 = !DILocation(line: 231, column: 45, scope: !1688, inlinedAt: !1661)
!1691 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1661)
!1692 = !DILocation(line: 0, scope: !510, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 358, column: 27, scope: !1662)
!1694 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1693)
!1695 = !DILocation(line: 201, column: 19, scope: !1666, inlinedAt: !1693)
!1696 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1693)
!1697 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1693)
!1698 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1693)
!1699 = !DILocation(line: 230, column: 13, scope: !510, inlinedAt: !1693)
!1700 = !DILocation(line: 0, scope: !1672, inlinedAt: !1701)
!1701 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1693)
!1702 = !DILocation(line: 0, scope: !1680, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 1137, column: 3, scope: !1672, inlinedAt: !1701)
!1704 = !DILocation(line: 59, column: 10, scope: !1680, inlinedAt: !1703)
!1705 = !DILocation(line: 231, column: 7, scope: !1688, inlinedAt: !1693)
!1706 = !DILocation(line: 231, column: 40, scope: !1688, inlinedAt: !1693)
!1707 = !DILocation(line: 231, column: 45, scope: !1688, inlinedAt: !1693)
!1708 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1693)
!1709 = !DILocation(line: 360, column: 13, scope: !1605)
!1710 = !DILocation(line: 0, scope: !1603)
!1711 = !DILocation(line: 361, column: 45, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1603, file: !432, line: 361, column: 11)
!1713 = !DILocation(line: 361, column: 11, scope: !1603)
!1714 = !DILocation(line: 362, column: 13, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !432, line: 362, column: 13)
!1716 = distinct !DILexicalBlock(scope: !1712, file: !432, line: 362, column: 13)
!1717 = !DILocation(line: 362, column: 13, scope: !1716)
!1718 = !DILocation(line: 361, column: 52, scope: !1712)
!1719 = distinct !{!1719, !1713, !1720, !860}
!1720 = !DILocation(line: 362, column: 13, scope: !1603)
!1721 = !DILocation(line: 260, column: 10, scope: !1577)
!1722 = !DILocation(line: 365, column: 28, scope: !1605)
!1723 = !DILocation(line: 367, column: 7, scope: !1606)
!1724 = !DILocation(line: 370, column: 7, scope: !1606)
!1725 = !DILocation(line: 376, column: 11, scope: !1606)
!1726 = !DILocation(line: 381, column: 11, scope: !1606)
!1727 = !DILocation(line: 382, column: 9, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !432, line: 382, column: 9)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !432, line: 382, column: 9)
!1730 = distinct !DILexicalBlock(scope: !1606, file: !432, line: 381, column: 11)
!1731 = !DILocation(line: 382, column: 9, scope: !1729)
!1732 = !DILocation(line: 389, column: 7, scope: !1606)
!1733 = !DILocation(line: 392, column: 7, scope: !1606)
!1734 = !DILocation(line: 0, scope: !1608)
!1735 = !DILocation(line: 395, column: 8, scope: !1608)
!1736 = !DILocation(line: 395, scope: !1608)
!1737 = !DILocation(line: 395, column: 34, scope: !1611)
!1738 = !DILocation(line: 395, column: 26, scope: !1611)
!1739 = !DILocation(line: 395, column: 48, scope: !1611)
!1740 = !DILocation(line: 395, column: 55, scope: !1611)
!1741 = !DILocation(line: 395, column: 3, scope: !1608)
!1742 = !DILocation(line: 395, column: 67, scope: !1611)
!1743 = !DILocation(line: 0, scope: !1610)
!1744 = !DILocation(line: 402, column: 11, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 401, column: 11)
!1746 = !DILocation(line: 404, column: 17, scope: !1745)
!1747 = !DILocation(line: 405, column: 39, scope: !1745)
!1748 = !DILocation(line: 409, column: 32, scope: !1745)
!1749 = !DILocation(line: 405, column: 19, scope: !1745)
!1750 = !DILocation(line: 405, column: 15, scope: !1745)
!1751 = !DILocation(line: 410, column: 11, scope: !1745)
!1752 = !DILocation(line: 410, column: 25, scope: !1745)
!1753 = !DILocalVariable(name: "__s1", arg: 1, scope: !1754, file: !826, line: 974, type: !958)
!1754 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1394, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1755)
!1755 = !{!1753, !1756, !1757}
!1756 = !DILocalVariable(name: "__s2", arg: 2, scope: !1754, file: !826, line: 974, type: !958)
!1757 = !DILocalVariable(name: "__n", arg: 3, scope: !1754, file: !826, line: 974, type: !94)
!1758 = !DILocation(line: 0, scope: !1754, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 410, column: 14, scope: !1745)
!1760 = !DILocation(line: 976, column: 11, scope: !1754, inlinedAt: !1759)
!1761 = !DILocation(line: 976, column: 10, scope: !1754, inlinedAt: !1759)
!1762 = !DILocation(line: 401, column: 11, scope: !1610)
!1763 = !DILocation(line: 417, column: 25, scope: !1610)
!1764 = !DILocation(line: 418, column: 7, scope: !1610)
!1765 = !DILocation(line: 421, column: 15, scope: !1617)
!1766 = !DILocation(line: 423, column: 15, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1768, file: !432, line: 423, column: 15)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !432, line: 422, column: 13)
!1769 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 421, column: 15)
!1770 = !DILocation(line: 423, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1767, file: !432, line: 423, column: 15)
!1772 = !DILocation(line: 423, column: 15, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !432, line: 423, column: 15)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !432, line: 423, column: 15)
!1775 = distinct !DILexicalBlock(scope: !1771, file: !432, line: 423, column: 15)
!1776 = !DILocation(line: 423, column: 15, scope: !1774)
!1777 = !DILocation(line: 423, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !432, line: 423, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1775, file: !432, line: 423, column: 15)
!1780 = !DILocation(line: 423, column: 15, scope: !1779)
!1781 = !DILocation(line: 423, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !432, line: 423, column: 15)
!1783 = distinct !DILexicalBlock(scope: !1775, file: !432, line: 423, column: 15)
!1784 = !DILocation(line: 423, column: 15, scope: !1783)
!1785 = !DILocation(line: 423, column: 15, scope: !1775)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !432, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1767, file: !432, line: 423, column: 15)
!1789 = !DILocation(line: 423, column: 15, scope: !1788)
!1790 = !DILocation(line: 431, column: 19, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1768, file: !432, line: 430, column: 19)
!1792 = !DILocation(line: 431, column: 24, scope: !1791)
!1793 = !DILocation(line: 431, column: 28, scope: !1791)
!1794 = !DILocation(line: 431, column: 38, scope: !1791)
!1795 = !DILocation(line: 431, column: 48, scope: !1791)
!1796 = !DILocation(line: 431, column: 59, scope: !1791)
!1797 = !DILocation(line: 433, column: 19, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !432, line: 433, column: 19)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !432, line: 433, column: 19)
!1800 = distinct !DILexicalBlock(scope: !1791, file: !432, line: 432, column: 17)
!1801 = !DILocation(line: 433, column: 19, scope: !1799)
!1802 = !DILocation(line: 434, column: 19, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !432, line: 434, column: 19)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !432, line: 434, column: 19)
!1805 = !DILocation(line: 434, column: 19, scope: !1804)
!1806 = !DILocation(line: 435, column: 17, scope: !1800)
!1807 = !DILocation(line: 442, column: 20, scope: !1769)
!1808 = !DILocation(line: 447, column: 11, scope: !1617)
!1809 = !DILocation(line: 450, column: 19, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 448, column: 13)
!1811 = !DILocation(line: 456, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1810, file: !432, line: 455, column: 19)
!1813 = !DILocation(line: 456, column: 24, scope: !1812)
!1814 = !DILocation(line: 456, column: 28, scope: !1812)
!1815 = !DILocation(line: 456, column: 38, scope: !1812)
!1816 = !DILocation(line: 456, column: 47, scope: !1812)
!1817 = !DILocation(line: 456, column: 41, scope: !1812)
!1818 = !DILocation(line: 456, column: 52, scope: !1812)
!1819 = !DILocation(line: 455, column: 19, scope: !1810)
!1820 = !DILocation(line: 457, column: 25, scope: !1812)
!1821 = !DILocation(line: 457, column: 17, scope: !1812)
!1822 = !DILocation(line: 464, column: 25, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1812, file: !432, line: 458, column: 19)
!1824 = !DILocation(line: 468, column: 21, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !432, line: 468, column: 21)
!1826 = distinct !DILexicalBlock(scope: !1823, file: !432, line: 468, column: 21)
!1827 = !DILocation(line: 468, column: 21, scope: !1826)
!1828 = !DILocation(line: 469, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !432, line: 469, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1823, file: !432, line: 469, column: 21)
!1831 = !DILocation(line: 469, column: 21, scope: !1830)
!1832 = !DILocation(line: 470, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !432, line: 470, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !432, line: 470, column: 21)
!1835 = !DILocation(line: 470, column: 21, scope: !1834)
!1836 = !DILocation(line: 471, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !432, line: 471, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1823, file: !432, line: 471, column: 21)
!1839 = !DILocation(line: 471, column: 21, scope: !1838)
!1840 = !DILocation(line: 472, column: 21, scope: !1823)
!1841 = !DILocation(line: 482, column: 33, scope: !1640)
!1842 = !DILocation(line: 483, column: 33, scope: !1640)
!1843 = !DILocation(line: 485, column: 33, scope: !1640)
!1844 = !DILocation(line: 486, column: 33, scope: !1640)
!1845 = !DILocation(line: 487, column: 33, scope: !1640)
!1846 = !DILocation(line: 490, column: 17, scope: !1640)
!1847 = !DILocation(line: 492, column: 21, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !432, line: 491, column: 15)
!1849 = distinct !DILexicalBlock(scope: !1640, file: !432, line: 490, column: 17)
!1850 = !DILocation(line: 499, column: 35, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1640, file: !432, line: 499, column: 17)
!1852 = !DILocation(line: 0, scope: !1640)
!1853 = !DILocation(line: 502, column: 11, scope: !1640)
!1854 = !DILocation(line: 504, column: 17, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1640, file: !432, line: 503, column: 17)
!1856 = !DILocation(line: 507, column: 11, scope: !1640)
!1857 = !DILocation(line: 508, column: 17, scope: !1640)
!1858 = !DILocation(line: 517, column: 15, scope: !1617)
!1859 = !DILocation(line: 517, column: 40, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 517, column: 15)
!1861 = !DILocation(line: 517, column: 47, scope: !1860)
!1862 = !DILocation(line: 517, column: 18, scope: !1860)
!1863 = !DILocation(line: 521, column: 17, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 521, column: 15)
!1865 = !DILocation(line: 521, column: 15, scope: !1617)
!1866 = !DILocation(line: 525, column: 11, scope: !1617)
!1867 = !DILocation(line: 537, column: 15, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 536, column: 15)
!1869 = !DILocation(line: 536, column: 15, scope: !1617)
!1870 = !DILocation(line: 544, column: 15, scope: !1617)
!1871 = !DILocation(line: 546, column: 19, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !432, line: 545, column: 13)
!1873 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 544, column: 15)
!1874 = !DILocation(line: 549, column: 19, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !432, line: 549, column: 19)
!1876 = !DILocation(line: 549, column: 30, scope: !1875)
!1877 = !DILocation(line: 558, column: 15, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !432, line: 558, column: 15)
!1879 = distinct !DILexicalBlock(scope: !1872, file: !432, line: 558, column: 15)
!1880 = !DILocation(line: 558, column: 15, scope: !1879)
!1881 = !DILocation(line: 559, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !432, line: 559, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1872, file: !432, line: 559, column: 15)
!1884 = !DILocation(line: 559, column: 15, scope: !1883)
!1885 = !DILocation(line: 560, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !432, line: 560, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1872, file: !432, line: 560, column: 15)
!1888 = !DILocation(line: 560, column: 15, scope: !1887)
!1889 = !DILocation(line: 562, column: 13, scope: !1872)
!1890 = !DILocation(line: 602, column: 17, scope: !1616)
!1891 = !DILocation(line: 0, scope: !1616)
!1892 = !DILocation(line: 605, column: 29, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1621, file: !432, line: 603, column: 15)
!1894 = !DILocation(line: 605, column: 41, scope: !1893)
!1895 = !DILocation(line: 606, column: 15, scope: !1893)
!1896 = !DILocation(line: 609, column: 17, scope: !1620)
!1897 = !DILocation(line: 609, column: 27, scope: !1620)
!1898 = !DILocation(line: 0, scope: !1672, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 609, column: 32, scope: !1620)
!1900 = !DILocation(line: 0, scope: !1680, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 1137, column: 3, scope: !1672, inlinedAt: !1899)
!1902 = !DILocation(line: 59, column: 10, scope: !1680, inlinedAt: !1901)
!1903 = !DILocation(line: 613, column: 29, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1620, file: !432, line: 613, column: 21)
!1905 = !DILocation(line: 613, column: 21, scope: !1620)
!1906 = !DILocation(line: 614, column: 29, scope: !1904)
!1907 = !DILocation(line: 614, column: 19, scope: !1904)
!1908 = !DILocation(line: 618, column: 21, scope: !1623)
!1909 = !DILocation(line: 620, column: 54, scope: !1623)
!1910 = !DILocation(line: 0, scope: !1623)
!1911 = !DILocation(line: 619, column: 36, scope: !1623)
!1912 = !DILocation(line: 621, column: 25, scope: !1623)
!1913 = !DILocation(line: 631, column: 38, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1632, file: !432, line: 629, column: 23)
!1915 = !DILocation(line: 631, column: 48, scope: !1914)
!1916 = !DILocation(line: 626, column: 25, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1633, file: !432, line: 624, column: 23)
!1918 = !DILocation(line: 631, column: 51, scope: !1914)
!1919 = !DILocation(line: 631, column: 25, scope: !1914)
!1920 = !DILocation(line: 632, column: 28, scope: !1914)
!1921 = !DILocation(line: 631, column: 34, scope: !1914)
!1922 = distinct !{!1922, !1919, !1920, !860}
!1923 = !DILocation(line: 646, column: 29, scope: !1630)
!1924 = !DILocation(line: 0, scope: !1628)
!1925 = !DILocation(line: 649, column: 49, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1628, file: !432, line: 648, column: 29)
!1927 = !DILocation(line: 649, column: 39, scope: !1926)
!1928 = !DILocation(line: 649, column: 31, scope: !1926)
!1929 = !DILocation(line: 648, column: 60, scope: !1926)
!1930 = !DILocation(line: 648, column: 50, scope: !1926)
!1931 = !DILocation(line: 648, column: 29, scope: !1628)
!1932 = distinct !{!1932, !1931, !1933, !860}
!1933 = !DILocation(line: 654, column: 33, scope: !1628)
!1934 = !DILocation(line: 657, column: 43, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1631, file: !432, line: 657, column: 29)
!1936 = !DILocalVariable(name: "wc", arg: 1, scope: !1937, file: !1938, line: 865, type: !1941)
!1937 = distinct !DISubprogram(name: "c32isprint", scope: !1938, file: !1938, line: 865, type: !1939, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1943)
!1938 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!92, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1942, line: 20, baseType: !76)
!1942 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1943 = !{!1936}
!1944 = !DILocation(line: 0, scope: !1937, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 657, column: 31, scope: !1935)
!1946 = !DILocation(line: 871, column: 10, scope: !1937, inlinedAt: !1945)
!1947 = !DILocation(line: 657, column: 31, scope: !1935)
!1948 = !DILocation(line: 664, column: 23, scope: !1623)
!1949 = !DILocation(line: 665, column: 19, scope: !1624)
!1950 = !DILocation(line: 666, column: 15, scope: !1621)
!1951 = !DILocation(line: 753, column: 2, scope: !1577)
!1952 = !DILocation(line: 756, column: 51, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 756, column: 7)
!1954 = !DILocation(line: 0, scope: !1621)
!1955 = !DILocation(line: 670, column: 19, scope: !1637)
!1956 = !DILocation(line: 670, column: 23, scope: !1637)
!1957 = !DILocation(line: 674, column: 33, scope: !1636)
!1958 = !DILocation(line: 0, scope: !1636)
!1959 = !DILocation(line: 676, column: 17, scope: !1636)
!1960 = !DILocation(line: 398, column: 12, scope: !1610)
!1961 = !DILocation(line: 678, column: 43, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !432, line: 678, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !432, line: 677, column: 19)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !432, line: 676, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1636, file: !432, line: 676, column: 17)
!1966 = !DILocation(line: 680, column: 25, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !432, line: 680, column: 25)
!1968 = distinct !DILexicalBlock(scope: !1962, file: !432, line: 679, column: 23)
!1969 = !DILocation(line: 680, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !432, line: 680, column: 25)
!1971 = !DILocation(line: 680, column: 25, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !432, line: 680, column: 25)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !432, line: 680, column: 25)
!1974 = distinct !DILexicalBlock(scope: !1970, file: !432, line: 680, column: 25)
!1975 = !DILocation(line: 680, column: 25, scope: !1973)
!1976 = !DILocation(line: 680, column: 25, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !432, line: 680, column: 25)
!1978 = distinct !DILexicalBlock(scope: !1974, file: !432, line: 680, column: 25)
!1979 = !DILocation(line: 680, column: 25, scope: !1978)
!1980 = !DILocation(line: 680, column: 25, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !432, line: 680, column: 25)
!1982 = distinct !DILexicalBlock(scope: !1974, file: !432, line: 680, column: 25)
!1983 = !DILocation(line: 680, column: 25, scope: !1982)
!1984 = !DILocation(line: 680, column: 25, scope: !1974)
!1985 = !DILocation(line: 680, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !432, line: 680, column: 25)
!1987 = distinct !DILexicalBlock(scope: !1967, file: !432, line: 680, column: 25)
!1988 = !DILocation(line: 680, column: 25, scope: !1987)
!1989 = !DILocation(line: 681, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !432, line: 681, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1968, file: !432, line: 681, column: 25)
!1992 = !DILocation(line: 681, column: 25, scope: !1991)
!1993 = !DILocation(line: 682, column: 25, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1995, file: !432, line: 682, column: 25)
!1995 = distinct !DILexicalBlock(scope: !1968, file: !432, line: 682, column: 25)
!1996 = !DILocation(line: 682, column: 25, scope: !1995)
!1997 = !DILocation(line: 683, column: 38, scope: !1968)
!1998 = !DILocation(line: 683, column: 33, scope: !1968)
!1999 = !DILocation(line: 684, column: 23, scope: !1968)
!2000 = !DILocation(line: 685, column: 30, scope: !1962)
!2001 = !DILocation(line: 687, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !432, line: 687, column: 25)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !432, line: 687, column: 25)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !432, line: 686, column: 23)
!2005 = distinct !DILexicalBlock(scope: !1962, file: !432, line: 685, column: 30)
!2006 = !DILocation(line: 687, column: 25, scope: !2003)
!2007 = !DILocation(line: 689, column: 23, scope: !2004)
!2008 = !DILocation(line: 690, column: 35, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1963, file: !432, line: 690, column: 25)
!2010 = !DILocation(line: 690, column: 30, scope: !2009)
!2011 = !DILocation(line: 690, column: 25, scope: !1963)
!2012 = !DILocation(line: 692, column: 21, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !432, line: 692, column: 21)
!2014 = distinct !DILexicalBlock(scope: !1963, file: !432, line: 692, column: 21)
!2015 = !DILocation(line: 692, column: 21, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !432, line: 692, column: 21)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !432, line: 692, column: 21)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !432, line: 692, column: 21)
!2019 = !DILocation(line: 692, column: 21, scope: !2017)
!2020 = !DILocation(line: 692, column: 21, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !432, line: 692, column: 21)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !432, line: 692, column: 21)
!2023 = !DILocation(line: 692, column: 21, scope: !2022)
!2024 = !DILocation(line: 692, column: 21, scope: !2018)
!2025 = !DILocation(line: 0, scope: !1963)
!2026 = !DILocation(line: 693, column: 21, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2028, file: !432, line: 693, column: 21)
!2028 = distinct !DILexicalBlock(scope: !1963, file: !432, line: 693, column: 21)
!2029 = !DILocation(line: 693, column: 21, scope: !2028)
!2030 = !DILocation(line: 694, column: 25, scope: !1963)
!2031 = !DILocation(line: 676, column: 17, scope: !1964)
!2032 = distinct !{!2032, !2033, !2034}
!2033 = !DILocation(line: 676, column: 17, scope: !1965)
!2034 = !DILocation(line: 695, column: 19, scope: !1965)
!2035 = !DILocation(line: 409, column: 30, scope: !1745)
!2036 = !DILocation(line: 702, column: 34, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 702, column: 11)
!2038 = !DILocation(line: 704, column: 14, scope: !2037)
!2039 = !DILocation(line: 705, column: 14, scope: !2037)
!2040 = !DILocation(line: 705, column: 35, scope: !2037)
!2041 = !DILocation(line: 705, column: 17, scope: !2037)
!2042 = !DILocation(line: 705, column: 47, scope: !2037)
!2043 = !DILocation(line: 705, column: 65, scope: !2037)
!2044 = !DILocation(line: 706, column: 11, scope: !2037)
!2045 = !DILocation(line: 702, column: 11, scope: !1610)
!2046 = !DILocation(line: 395, column: 15, scope: !1608)
!2047 = !DILocation(line: 709, column: 5, scope: !1610)
!2048 = !DILocation(line: 710, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 710, column: 7)
!2050 = !DILocation(line: 710, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2049, file: !432, line: 710, column: 7)
!2052 = !DILocation(line: 710, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !432, line: 710, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !432, line: 710, column: 7)
!2055 = distinct !DILexicalBlock(scope: !2051, file: !432, line: 710, column: 7)
!2056 = !DILocation(line: 710, column: 7, scope: !2054)
!2057 = !DILocation(line: 710, column: 7, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2059, file: !432, line: 710, column: 7)
!2059 = distinct !DILexicalBlock(scope: !2055, file: !432, line: 710, column: 7)
!2060 = !DILocation(line: 710, column: 7, scope: !2059)
!2061 = !DILocation(line: 710, column: 7, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !432, line: 710, column: 7)
!2063 = distinct !DILexicalBlock(scope: !2055, file: !432, line: 710, column: 7)
!2064 = !DILocation(line: 710, column: 7, scope: !2063)
!2065 = !DILocation(line: 710, column: 7, scope: !2055)
!2066 = !DILocation(line: 710, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2068, file: !432, line: 710, column: 7)
!2068 = distinct !DILexicalBlock(scope: !2049, file: !432, line: 710, column: 7)
!2069 = !DILocation(line: 710, column: 7, scope: !2068)
!2070 = !DILocation(line: 712, column: 5, scope: !1610)
!2071 = !DILocation(line: 713, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !432, line: 713, column: 7)
!2073 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 713, column: 7)
!2074 = !DILocation(line: 417, column: 21, scope: !1610)
!2075 = !DILocation(line: 713, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !432, line: 713, column: 7)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !432, line: 713, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2072, file: !432, line: 713, column: 7)
!2079 = !DILocation(line: 713, column: 7, scope: !2077)
!2080 = !DILocation(line: 713, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !432, line: 713, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2078, file: !432, line: 713, column: 7)
!2083 = !DILocation(line: 713, column: 7, scope: !2082)
!2084 = !DILocation(line: 713, column: 7, scope: !2078)
!2085 = !DILocation(line: 714, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !432, line: 714, column: 7)
!2087 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 714, column: 7)
!2088 = !DILocation(line: 714, column: 7, scope: !2087)
!2089 = !DILocation(line: 716, column: 11, scope: !1610)
!2090 = !DILocation(line: 718, column: 5, scope: !1611)
!2091 = !DILocation(line: 395, column: 82, scope: !1611)
!2092 = !DILocation(line: 395, column: 3, scope: !1611)
!2093 = distinct !{!2093, !1741, !2094, !860}
!2094 = !DILocation(line: 718, column: 5, scope: !1608)
!2095 = !DILocation(line: 720, column: 11, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 720, column: 7)
!2097 = !DILocation(line: 720, column: 16, scope: !2096)
!2098 = !DILocation(line: 728, column: 51, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 728, column: 7)
!2100 = !DILocation(line: 731, column: 11, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !432, line: 730, column: 5)
!2102 = !DILocation(line: 732, column: 16, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2101, file: !432, line: 731, column: 11)
!2104 = !DILocation(line: 732, column: 9, scope: !2103)
!2105 = !DILocation(line: 736, column: 18, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !432, line: 736, column: 16)
!2107 = !DILocation(line: 736, column: 29, scope: !2106)
!2108 = !DILocation(line: 745, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 745, column: 7)
!2110 = !DILocation(line: 745, column: 20, scope: !2109)
!2111 = !DILocation(line: 746, column: 12, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !432, line: 746, column: 5)
!2113 = distinct !DILexicalBlock(scope: !2109, file: !432, line: 746, column: 5)
!2114 = !DILocation(line: 746, column: 5, scope: !2113)
!2115 = !DILocation(line: 747, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !432, line: 747, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2112, file: !432, line: 747, column: 7)
!2118 = !DILocation(line: 747, column: 7, scope: !2117)
!2119 = !DILocation(line: 746, column: 39, scope: !2112)
!2120 = distinct !{!2120, !2114, !2121, !860}
!2121 = !DILocation(line: 747, column: 7, scope: !2113)
!2122 = !DILocation(line: 749, column: 11, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1577, file: !432, line: 749, column: 7)
!2124 = !DILocation(line: 749, column: 7, scope: !1577)
!2125 = !DILocation(line: 750, column: 5, scope: !2123)
!2126 = !DILocation(line: 750, column: 17, scope: !2123)
!2127 = !DILocation(line: 756, column: 21, scope: !1953)
!2128 = !DILocation(line: 760, column: 42, scope: !1577)
!2129 = !DILocation(line: 758, column: 10, scope: !1577)
!2130 = !DILocation(line: 758, column: 3, scope: !1577)
!2131 = !DILocation(line: 762, column: 1, scope: !1577)
!2132 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !934, file: !934, line: 98, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!94}
!2135 = !DISubprogram(name: "strlen", scope: !930, file: !930, line: 407, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!96, !70}
!2138 = !DISubprogram(name: "iswprint", scope: !2139, file: !2139, line: 120, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2139 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2140 = distinct !DISubprogram(name: "quotearg_alloc", scope: !432, file: !432, line: 788, type: !2141, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!239, !70, !94, !1470}
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "arg", arg: 1, scope: !2140, file: !432, line: 788, type: !70)
!2145 = !DILocalVariable(name: "argsize", arg: 2, scope: !2140, file: !432, line: 788, type: !94)
!2146 = !DILocalVariable(name: "o", arg: 3, scope: !2140, file: !432, line: 789, type: !1470)
!2147 = !DILocation(line: 0, scope: !2140)
!2148 = !DILocalVariable(name: "arg", arg: 1, scope: !2149, file: !432, line: 801, type: !70)
!2149 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !432, file: !432, line: 801, type: !2150, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!239, !70, !94, !688, !1470}
!2152 = !{!2148, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2153 = !DILocalVariable(name: "argsize", arg: 2, scope: !2149, file: !432, line: 801, type: !94)
!2154 = !DILocalVariable(name: "size", arg: 3, scope: !2149, file: !432, line: 801, type: !688)
!2155 = !DILocalVariable(name: "o", arg: 4, scope: !2149, file: !432, line: 802, type: !1470)
!2156 = !DILocalVariable(name: "p", scope: !2149, file: !432, line: 804, type: !1470)
!2157 = !DILocalVariable(name: "saved_errno", scope: !2149, file: !432, line: 805, type: !92)
!2158 = !DILocalVariable(name: "flags", scope: !2149, file: !432, line: 807, type: !92)
!2159 = !DILocalVariable(name: "bufsize", scope: !2149, file: !432, line: 808, type: !94)
!2160 = !DILocalVariable(name: "buf", scope: !2149, file: !432, line: 812, type: !239)
!2161 = !DILocation(line: 0, scope: !2149, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 791, column: 10, scope: !2140)
!2163 = !DILocation(line: 804, column: 37, scope: !2149, inlinedAt: !2162)
!2164 = !DILocation(line: 805, column: 21, scope: !2149, inlinedAt: !2162)
!2165 = !DILocation(line: 807, column: 18, scope: !2149, inlinedAt: !2162)
!2166 = !DILocation(line: 807, column: 24, scope: !2149, inlinedAt: !2162)
!2167 = !DILocation(line: 808, column: 72, scope: !2149, inlinedAt: !2162)
!2168 = !DILocation(line: 809, column: 56, scope: !2149, inlinedAt: !2162)
!2169 = !DILocation(line: 810, column: 49, scope: !2149, inlinedAt: !2162)
!2170 = !DILocation(line: 811, column: 49, scope: !2149, inlinedAt: !2162)
!2171 = !DILocation(line: 808, column: 20, scope: !2149, inlinedAt: !2162)
!2172 = !DILocation(line: 811, column: 62, scope: !2149, inlinedAt: !2162)
!2173 = !DILocation(line: 812, column: 15, scope: !2149, inlinedAt: !2162)
!2174 = !DILocation(line: 813, column: 60, scope: !2149, inlinedAt: !2162)
!2175 = !DILocation(line: 815, column: 32, scope: !2149, inlinedAt: !2162)
!2176 = !DILocation(line: 815, column: 47, scope: !2149, inlinedAt: !2162)
!2177 = !DILocation(line: 813, column: 3, scope: !2149, inlinedAt: !2162)
!2178 = !DILocation(line: 816, column: 9, scope: !2149, inlinedAt: !2162)
!2179 = !DILocation(line: 791, column: 3, scope: !2140)
!2180 = !DILocation(line: 0, scope: !2149)
!2181 = !DILocation(line: 804, column: 37, scope: !2149)
!2182 = !DILocation(line: 805, column: 21, scope: !2149)
!2183 = !DILocation(line: 807, column: 18, scope: !2149)
!2184 = !DILocation(line: 807, column: 27, scope: !2149)
!2185 = !DILocation(line: 807, column: 24, scope: !2149)
!2186 = !DILocation(line: 808, column: 72, scope: !2149)
!2187 = !DILocation(line: 809, column: 56, scope: !2149)
!2188 = !DILocation(line: 810, column: 49, scope: !2149)
!2189 = !DILocation(line: 811, column: 49, scope: !2149)
!2190 = !DILocation(line: 808, column: 20, scope: !2149)
!2191 = !DILocation(line: 811, column: 62, scope: !2149)
!2192 = !DILocation(line: 812, column: 15, scope: !2149)
!2193 = !DILocation(line: 813, column: 60, scope: !2149)
!2194 = !DILocation(line: 815, column: 32, scope: !2149)
!2195 = !DILocation(line: 815, column: 47, scope: !2149)
!2196 = !DILocation(line: 813, column: 3, scope: !2149)
!2197 = !DILocation(line: 816, column: 9, scope: !2149)
!2198 = !DILocation(line: 817, column: 7, scope: !2149)
!2199 = !DILocation(line: 818, column: 11, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2149, file: !432, line: 817, column: 7)
!2201 = !{!1194, !1194, i64 0}
!2202 = !DILocation(line: 818, column: 5, scope: !2200)
!2203 = !DILocation(line: 819, column: 3, scope: !2149)
!2204 = distinct !DISubprogram(name: "quotearg_free", scope: !432, file: !432, line: 837, type: !364, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2205)
!2205 = !{!2206, !2207}
!2206 = !DILocalVariable(name: "sv", scope: !2204, file: !432, line: 839, type: !533)
!2207 = !DILocalVariable(name: "i", scope: !2208, file: !432, line: 840, type: !92)
!2208 = distinct !DILexicalBlock(scope: !2204, file: !432, line: 840, column: 3)
!2209 = !DILocation(line: 839, column: 24, scope: !2204)
!2210 = !DILocation(line: 0, scope: !2204)
!2211 = !DILocation(line: 0, scope: !2208)
!2212 = !DILocation(line: 840, column: 21, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2208, file: !432, line: 840, column: 3)
!2214 = !DILocation(line: 840, column: 3, scope: !2208)
!2215 = !DILocation(line: 842, column: 13, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2204, file: !432, line: 842, column: 7)
!2217 = !{!2218, !754, i64 8}
!2218 = !{!"slotvec", !1194, i64 0, !754, i64 8}
!2219 = !DILocation(line: 842, column: 17, scope: !2216)
!2220 = !DILocation(line: 842, column: 7, scope: !2204)
!2221 = !DILocation(line: 841, column: 17, scope: !2213)
!2222 = !DILocation(line: 841, column: 5, scope: !2213)
!2223 = !DILocation(line: 840, column: 32, scope: !2213)
!2224 = distinct !{!2224, !2214, !2225, !860}
!2225 = !DILocation(line: 841, column: 20, scope: !2208)
!2226 = !DILocation(line: 844, column: 7, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2216, file: !432, line: 843, column: 5)
!2228 = !DILocation(line: 845, column: 21, scope: !2227)
!2229 = !{!2218, !1194, i64 0}
!2230 = !DILocation(line: 846, column: 20, scope: !2227)
!2231 = !DILocation(line: 847, column: 5, scope: !2227)
!2232 = !DILocation(line: 848, column: 10, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2204, file: !432, line: 848, column: 7)
!2234 = !DILocation(line: 848, column: 7, scope: !2204)
!2235 = !DILocation(line: 850, column: 7, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !432, line: 849, column: 5)
!2237 = !DILocation(line: 851, column: 15, scope: !2236)
!2238 = !DILocation(line: 852, column: 5, scope: !2236)
!2239 = !DILocation(line: 853, column: 10, scope: !2204)
!2240 = !DILocation(line: 854, column: 1, scope: !2204)
!2241 = !DISubprogram(name: "free", scope: !1424, file: !1424, line: 786, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !91}
!2244 = distinct !DISubprogram(name: "quotearg_n", scope: !432, file: !432, line: 919, type: !927, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2245)
!2245 = !{!2246, !2247}
!2246 = !DILocalVariable(name: "n", arg: 1, scope: !2244, file: !432, line: 919, type: !92)
!2247 = !DILocalVariable(name: "arg", arg: 2, scope: !2244, file: !432, line: 919, type: !70)
!2248 = !DILocation(line: 0, scope: !2244)
!2249 = !DILocation(line: 921, column: 10, scope: !2244)
!2250 = !DILocation(line: 921, column: 3, scope: !2244)
!2251 = distinct !DISubprogram(name: "quotearg_n_options", scope: !432, file: !432, line: 866, type: !2252, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2254)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!239, !92, !70, !94, !1470}
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2265, !2266, !2268, !2269, !2270}
!2255 = !DILocalVariable(name: "n", arg: 1, scope: !2251, file: !432, line: 866, type: !92)
!2256 = !DILocalVariable(name: "arg", arg: 2, scope: !2251, file: !432, line: 866, type: !70)
!2257 = !DILocalVariable(name: "argsize", arg: 3, scope: !2251, file: !432, line: 866, type: !94)
!2258 = !DILocalVariable(name: "options", arg: 4, scope: !2251, file: !432, line: 867, type: !1470)
!2259 = !DILocalVariable(name: "saved_errno", scope: !2251, file: !432, line: 869, type: !92)
!2260 = !DILocalVariable(name: "sv", scope: !2251, file: !432, line: 871, type: !533)
!2261 = !DILocalVariable(name: "nslots_max", scope: !2251, file: !432, line: 873, type: !92)
!2262 = !DILocalVariable(name: "preallocated", scope: !2263, file: !432, line: 879, type: !218)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !432, line: 878, column: 5)
!2264 = distinct !DILexicalBlock(scope: !2251, file: !432, line: 877, column: 7)
!2265 = !DILocalVariable(name: "new_nslots", scope: !2263, file: !432, line: 880, type: !701)
!2266 = !DILocalVariable(name: "size", scope: !2267, file: !432, line: 891, type: !94)
!2267 = distinct !DILexicalBlock(scope: !2251, file: !432, line: 890, column: 3)
!2268 = !DILocalVariable(name: "val", scope: !2267, file: !432, line: 892, type: !239)
!2269 = !DILocalVariable(name: "flags", scope: !2267, file: !432, line: 894, type: !92)
!2270 = !DILocalVariable(name: "qsize", scope: !2267, file: !432, line: 895, type: !94)
!2271 = !DILocation(line: 0, scope: !2251)
!2272 = !DILocation(line: 869, column: 21, scope: !2251)
!2273 = !DILocation(line: 871, column: 24, scope: !2251)
!2274 = !DILocation(line: 874, column: 17, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2251, file: !432, line: 874, column: 7)
!2276 = !DILocation(line: 875, column: 5, scope: !2275)
!2277 = !DILocation(line: 877, column: 7, scope: !2264)
!2278 = !DILocation(line: 877, column: 14, scope: !2264)
!2279 = !DILocation(line: 877, column: 7, scope: !2251)
!2280 = !DILocation(line: 879, column: 31, scope: !2263)
!2281 = !DILocation(line: 0, scope: !2263)
!2282 = !DILocation(line: 880, column: 7, scope: !2263)
!2283 = !DILocation(line: 880, column: 26, scope: !2263)
!2284 = !DILocation(line: 880, column: 13, scope: !2263)
!2285 = !DILocation(line: 882, column: 31, scope: !2263)
!2286 = !DILocation(line: 883, column: 33, scope: !2263)
!2287 = !DILocation(line: 883, column: 42, scope: !2263)
!2288 = !DILocation(line: 883, column: 31, scope: !2263)
!2289 = !DILocation(line: 882, column: 22, scope: !2263)
!2290 = !DILocation(line: 882, column: 15, scope: !2263)
!2291 = !DILocation(line: 884, column: 11, scope: !2263)
!2292 = !DILocation(line: 885, column: 15, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2263, file: !432, line: 884, column: 11)
!2294 = !{i64 0, i64 8, !2201, i64 8, i64 8, !753}
!2295 = !DILocation(line: 885, column: 9, scope: !2293)
!2296 = !DILocation(line: 886, column: 20, scope: !2263)
!2297 = !DILocation(line: 886, column: 18, scope: !2263)
!2298 = !DILocation(line: 886, column: 32, scope: !2263)
!2299 = !DILocation(line: 886, column: 43, scope: !2263)
!2300 = !DILocation(line: 886, column: 53, scope: !2263)
!2301 = !DILocation(line: 0, scope: !1680, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 886, column: 7, scope: !2263)
!2303 = !DILocation(line: 59, column: 10, scope: !1680, inlinedAt: !2302)
!2304 = !DILocation(line: 887, column: 16, scope: !2263)
!2305 = !DILocation(line: 887, column: 14, scope: !2263)
!2306 = !DILocation(line: 888, column: 5, scope: !2264)
!2307 = !DILocation(line: 888, column: 5, scope: !2263)
!2308 = !DILocation(line: 891, column: 19, scope: !2267)
!2309 = !DILocation(line: 891, column: 25, scope: !2267)
!2310 = !DILocation(line: 0, scope: !2267)
!2311 = !DILocation(line: 892, column: 23, scope: !2267)
!2312 = !DILocation(line: 894, column: 26, scope: !2267)
!2313 = !DILocation(line: 894, column: 32, scope: !2267)
!2314 = !DILocation(line: 896, column: 55, scope: !2267)
!2315 = !DILocation(line: 897, column: 55, scope: !2267)
!2316 = !DILocation(line: 898, column: 55, scope: !2267)
!2317 = !DILocation(line: 899, column: 55, scope: !2267)
!2318 = !DILocation(line: 895, column: 20, scope: !2267)
!2319 = !DILocation(line: 901, column: 14, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2267, file: !432, line: 901, column: 9)
!2321 = !DILocation(line: 901, column: 9, scope: !2267)
!2322 = !DILocation(line: 903, column: 35, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2320, file: !432, line: 902, column: 7)
!2324 = !DILocation(line: 903, column: 20, scope: !2323)
!2325 = !DILocation(line: 904, column: 17, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !432, line: 904, column: 13)
!2327 = !DILocation(line: 904, column: 13, scope: !2323)
!2328 = !DILocation(line: 905, column: 11, scope: !2326)
!2329 = !DILocation(line: 906, column: 27, scope: !2323)
!2330 = !DILocation(line: 906, column: 19, scope: !2323)
!2331 = !DILocation(line: 907, column: 69, scope: !2323)
!2332 = !DILocation(line: 909, column: 44, scope: !2323)
!2333 = !DILocation(line: 910, column: 44, scope: !2323)
!2334 = !DILocation(line: 907, column: 9, scope: !2323)
!2335 = !DILocation(line: 911, column: 7, scope: !2323)
!2336 = !DILocation(line: 913, column: 11, scope: !2267)
!2337 = !DILocation(line: 914, column: 5, scope: !2267)
!2338 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !432, file: !432, line: 925, type: !2339, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2341)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!239, !92, !70, !94}
!2341 = !{!2342, !2343, !2344}
!2342 = !DILocalVariable(name: "n", arg: 1, scope: !2338, file: !432, line: 925, type: !92)
!2343 = !DILocalVariable(name: "arg", arg: 2, scope: !2338, file: !432, line: 925, type: !70)
!2344 = !DILocalVariable(name: "argsize", arg: 3, scope: !2338, file: !432, line: 925, type: !94)
!2345 = !DILocation(line: 0, scope: !2338)
!2346 = !DILocation(line: 927, column: 10, scope: !2338)
!2347 = !DILocation(line: 927, column: 3, scope: !2338)
!2348 = distinct !DISubprogram(name: "quotearg", scope: !432, file: !432, line: 931, type: !936, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2349)
!2349 = !{!2350}
!2350 = !DILocalVariable(name: "arg", arg: 1, scope: !2348, file: !432, line: 931, type: !70)
!2351 = !DILocation(line: 0, scope: !2348)
!2352 = !DILocation(line: 0, scope: !2244, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 933, column: 10, scope: !2348)
!2354 = !DILocation(line: 921, column: 10, scope: !2244, inlinedAt: !2353)
!2355 = !DILocation(line: 933, column: 3, scope: !2348)
!2356 = distinct !DISubprogram(name: "quotearg_mem", scope: !432, file: !432, line: 937, type: !2357, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2359)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!239, !70, !94}
!2359 = !{!2360, !2361}
!2360 = !DILocalVariable(name: "arg", arg: 1, scope: !2356, file: !432, line: 937, type: !70)
!2361 = !DILocalVariable(name: "argsize", arg: 2, scope: !2356, file: !432, line: 937, type: !94)
!2362 = !DILocation(line: 0, scope: !2356)
!2363 = !DILocation(line: 0, scope: !2338, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 939, column: 10, scope: !2356)
!2365 = !DILocation(line: 927, column: 10, scope: !2338, inlinedAt: !2364)
!2366 = !DILocation(line: 939, column: 3, scope: !2356)
!2367 = distinct !DISubprogram(name: "quotearg_n_style", scope: !432, file: !432, line: 943, type: !2368, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2370)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!239, !92, !458, !70}
!2370 = !{!2371, !2372, !2373, !2374}
!2371 = !DILocalVariable(name: "n", arg: 1, scope: !2367, file: !432, line: 943, type: !92)
!2372 = !DILocalVariable(name: "s", arg: 2, scope: !2367, file: !432, line: 943, type: !458)
!2373 = !DILocalVariable(name: "arg", arg: 3, scope: !2367, file: !432, line: 943, type: !70)
!2374 = !DILocalVariable(name: "o", scope: !2367, file: !432, line: 945, type: !1471)
!2375 = !DILocation(line: 0, scope: !2367)
!2376 = !DILocation(line: 945, column: 3, scope: !2367)
!2377 = !DILocation(line: 945, column: 32, scope: !2367)
!2378 = !{!2379}
!2379 = distinct !{!2379, !2380, !"quoting_options_from_style: argument 0"}
!2380 = distinct !{!2380, !"quoting_options_from_style"}
!2381 = !DILocation(line: 945, column: 36, scope: !2367)
!2382 = !DILocalVariable(name: "style", arg: 1, scope: !2383, file: !432, line: 183, type: !458)
!2383 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !432, file: !432, line: 183, type: !2384, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!485, !458}
!2386 = !{!2382, !2387}
!2387 = !DILocalVariable(name: "o", scope: !2383, file: !432, line: 185, type: !485)
!2388 = !DILocation(line: 0, scope: !2383, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 945, column: 36, scope: !2367)
!2390 = !DILocation(line: 185, column: 26, scope: !2383, inlinedAt: !2389)
!2391 = !DILocation(line: 186, column: 13, scope: !2392, inlinedAt: !2389)
!2392 = distinct !DILexicalBlock(scope: !2383, file: !432, line: 186, column: 7)
!2393 = !DILocation(line: 186, column: 7, scope: !2383, inlinedAt: !2389)
!2394 = !DILocation(line: 187, column: 5, scope: !2392, inlinedAt: !2389)
!2395 = !DILocation(line: 188, column: 11, scope: !2383, inlinedAt: !2389)
!2396 = !DILocation(line: 946, column: 10, scope: !2367)
!2397 = !DILocation(line: 947, column: 1, scope: !2367)
!2398 = !DILocation(line: 946, column: 3, scope: !2367)
!2399 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !432, file: !432, line: 950, type: !2400, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!239, !92, !458, !70, !94}
!2402 = !{!2403, !2404, !2405, !2406, !2407}
!2403 = !DILocalVariable(name: "n", arg: 1, scope: !2399, file: !432, line: 950, type: !92)
!2404 = !DILocalVariable(name: "s", arg: 2, scope: !2399, file: !432, line: 950, type: !458)
!2405 = !DILocalVariable(name: "arg", arg: 3, scope: !2399, file: !432, line: 951, type: !70)
!2406 = !DILocalVariable(name: "argsize", arg: 4, scope: !2399, file: !432, line: 951, type: !94)
!2407 = !DILocalVariable(name: "o", scope: !2399, file: !432, line: 953, type: !1471)
!2408 = !DILocation(line: 0, scope: !2399)
!2409 = !DILocation(line: 953, column: 3, scope: !2399)
!2410 = !DILocation(line: 953, column: 32, scope: !2399)
!2411 = !{!2412}
!2412 = distinct !{!2412, !2413, !"quoting_options_from_style: argument 0"}
!2413 = distinct !{!2413, !"quoting_options_from_style"}
!2414 = !DILocation(line: 953, column: 36, scope: !2399)
!2415 = !DILocation(line: 0, scope: !2383, inlinedAt: !2416)
!2416 = distinct !DILocation(line: 953, column: 36, scope: !2399)
!2417 = !DILocation(line: 185, column: 26, scope: !2383, inlinedAt: !2416)
!2418 = !DILocation(line: 186, column: 13, scope: !2392, inlinedAt: !2416)
!2419 = !DILocation(line: 186, column: 7, scope: !2383, inlinedAt: !2416)
!2420 = !DILocation(line: 187, column: 5, scope: !2392, inlinedAt: !2416)
!2421 = !DILocation(line: 188, column: 11, scope: !2383, inlinedAt: !2416)
!2422 = !DILocation(line: 954, column: 10, scope: !2399)
!2423 = !DILocation(line: 955, column: 1, scope: !2399)
!2424 = !DILocation(line: 954, column: 3, scope: !2399)
!2425 = distinct !DISubprogram(name: "quotearg_style", scope: !432, file: !432, line: 958, type: !2426, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!239, !458, !70}
!2428 = !{!2429, !2430}
!2429 = !DILocalVariable(name: "s", arg: 1, scope: !2425, file: !432, line: 958, type: !458)
!2430 = !DILocalVariable(name: "arg", arg: 2, scope: !2425, file: !432, line: 958, type: !70)
!2431 = !DILocation(line: 0, scope: !2425)
!2432 = !DILocation(line: 0, scope: !2367, inlinedAt: !2433)
!2433 = distinct !DILocation(line: 960, column: 10, scope: !2425)
!2434 = !DILocation(line: 945, column: 3, scope: !2367, inlinedAt: !2433)
!2435 = !DILocation(line: 945, column: 32, scope: !2367, inlinedAt: !2433)
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"quoting_options_from_style: argument 0"}
!2438 = distinct !{!2438, !"quoting_options_from_style"}
!2439 = !DILocation(line: 945, column: 36, scope: !2367, inlinedAt: !2433)
!2440 = !DILocation(line: 0, scope: !2383, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 945, column: 36, scope: !2367, inlinedAt: !2433)
!2442 = !DILocation(line: 185, column: 26, scope: !2383, inlinedAt: !2441)
!2443 = !DILocation(line: 186, column: 13, scope: !2392, inlinedAt: !2441)
!2444 = !DILocation(line: 186, column: 7, scope: !2383, inlinedAt: !2441)
!2445 = !DILocation(line: 187, column: 5, scope: !2392, inlinedAt: !2441)
!2446 = !DILocation(line: 188, column: 11, scope: !2383, inlinedAt: !2441)
!2447 = !DILocation(line: 946, column: 10, scope: !2367, inlinedAt: !2433)
!2448 = !DILocation(line: 947, column: 1, scope: !2367, inlinedAt: !2433)
!2449 = !DILocation(line: 960, column: 3, scope: !2425)
!2450 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !432, file: !432, line: 964, type: !2451, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!239, !458, !70, !94}
!2453 = !{!2454, !2455, !2456}
!2454 = !DILocalVariable(name: "s", arg: 1, scope: !2450, file: !432, line: 964, type: !458)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !432, line: 964, type: !70)
!2456 = !DILocalVariable(name: "argsize", arg: 3, scope: !2450, file: !432, line: 964, type: !94)
!2457 = !DILocation(line: 0, scope: !2450)
!2458 = !DILocation(line: 0, scope: !2399, inlinedAt: !2459)
!2459 = distinct !DILocation(line: 966, column: 10, scope: !2450)
!2460 = !DILocation(line: 953, column: 3, scope: !2399, inlinedAt: !2459)
!2461 = !DILocation(line: 953, column: 32, scope: !2399, inlinedAt: !2459)
!2462 = !{!2463}
!2463 = distinct !{!2463, !2464, !"quoting_options_from_style: argument 0"}
!2464 = distinct !{!2464, !"quoting_options_from_style"}
!2465 = !DILocation(line: 953, column: 36, scope: !2399, inlinedAt: !2459)
!2466 = !DILocation(line: 0, scope: !2383, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 953, column: 36, scope: !2399, inlinedAt: !2459)
!2468 = !DILocation(line: 185, column: 26, scope: !2383, inlinedAt: !2467)
!2469 = !DILocation(line: 186, column: 13, scope: !2392, inlinedAt: !2467)
!2470 = !DILocation(line: 186, column: 7, scope: !2383, inlinedAt: !2467)
!2471 = !DILocation(line: 187, column: 5, scope: !2392, inlinedAt: !2467)
!2472 = !DILocation(line: 188, column: 11, scope: !2383, inlinedAt: !2467)
!2473 = !DILocation(line: 954, column: 10, scope: !2399, inlinedAt: !2459)
!2474 = !DILocation(line: 955, column: 1, scope: !2399, inlinedAt: !2459)
!2475 = !DILocation(line: 966, column: 3, scope: !2450)
!2476 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !432, file: !432, line: 970, type: !2477, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!239, !70, !94, !4}
!2479 = !{!2480, !2481, !2482, !2483}
!2480 = !DILocalVariable(name: "arg", arg: 1, scope: !2476, file: !432, line: 970, type: !70)
!2481 = !DILocalVariable(name: "argsize", arg: 2, scope: !2476, file: !432, line: 970, type: !94)
!2482 = !DILocalVariable(name: "ch", arg: 3, scope: !2476, file: !432, line: 970, type: !4)
!2483 = !DILocalVariable(name: "options", scope: !2476, file: !432, line: 972, type: !485)
!2484 = !DILocation(line: 0, scope: !2476)
!2485 = !DILocation(line: 972, column: 3, scope: !2476)
!2486 = !DILocation(line: 972, column: 26, scope: !2476)
!2487 = !DILocation(line: 973, column: 13, scope: !2476)
!2488 = !{i64 0, i64 4, !822, i64 4, i64 4, !813, i64 8, i64 32, !822, i64 40, i64 8, !753, i64 48, i64 8, !753}
!2489 = !DILocation(line: 0, scope: !1490, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 974, column: 3, scope: !2476)
!2491 = !DILocation(line: 147, column: 41, scope: !1490, inlinedAt: !2490)
!2492 = !DILocation(line: 147, column: 62, scope: !1490, inlinedAt: !2490)
!2493 = !DILocation(line: 147, column: 57, scope: !1490, inlinedAt: !2490)
!2494 = !DILocation(line: 148, column: 15, scope: !1490, inlinedAt: !2490)
!2495 = !DILocation(line: 149, column: 21, scope: !1490, inlinedAt: !2490)
!2496 = !DILocation(line: 149, column: 24, scope: !1490, inlinedAt: !2490)
!2497 = !DILocation(line: 150, column: 19, scope: !1490, inlinedAt: !2490)
!2498 = !DILocation(line: 150, column: 24, scope: !1490, inlinedAt: !2490)
!2499 = !DILocation(line: 150, column: 6, scope: !1490, inlinedAt: !2490)
!2500 = !DILocation(line: 975, column: 10, scope: !2476)
!2501 = !DILocation(line: 976, column: 1, scope: !2476)
!2502 = !DILocation(line: 975, column: 3, scope: !2476)
!2503 = distinct !DISubprogram(name: "quotearg_char", scope: !432, file: !432, line: 979, type: !2504, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!239, !70, !4}
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "arg", arg: 1, scope: !2503, file: !432, line: 979, type: !70)
!2508 = !DILocalVariable(name: "ch", arg: 2, scope: !2503, file: !432, line: 979, type: !4)
!2509 = !DILocation(line: 0, scope: !2503)
!2510 = !DILocation(line: 0, scope: !2476, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 981, column: 10, scope: !2503)
!2512 = !DILocation(line: 972, column: 3, scope: !2476, inlinedAt: !2511)
!2513 = !DILocation(line: 972, column: 26, scope: !2476, inlinedAt: !2511)
!2514 = !DILocation(line: 973, column: 13, scope: !2476, inlinedAt: !2511)
!2515 = !DILocation(line: 0, scope: !1490, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 974, column: 3, scope: !2476, inlinedAt: !2511)
!2517 = !DILocation(line: 147, column: 41, scope: !1490, inlinedAt: !2516)
!2518 = !DILocation(line: 147, column: 62, scope: !1490, inlinedAt: !2516)
!2519 = !DILocation(line: 147, column: 57, scope: !1490, inlinedAt: !2516)
!2520 = !DILocation(line: 148, column: 15, scope: !1490, inlinedAt: !2516)
!2521 = !DILocation(line: 149, column: 21, scope: !1490, inlinedAt: !2516)
!2522 = !DILocation(line: 149, column: 24, scope: !1490, inlinedAt: !2516)
!2523 = !DILocation(line: 150, column: 19, scope: !1490, inlinedAt: !2516)
!2524 = !DILocation(line: 150, column: 24, scope: !1490, inlinedAt: !2516)
!2525 = !DILocation(line: 150, column: 6, scope: !1490, inlinedAt: !2516)
!2526 = !DILocation(line: 975, column: 10, scope: !2476, inlinedAt: !2511)
!2527 = !DILocation(line: 976, column: 1, scope: !2476, inlinedAt: !2511)
!2528 = !DILocation(line: 981, column: 3, scope: !2503)
!2529 = distinct !DISubprogram(name: "quotearg_colon", scope: !432, file: !432, line: 985, type: !936, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2530)
!2530 = !{!2531}
!2531 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !432, line: 985, type: !70)
!2532 = !DILocation(line: 0, scope: !2529)
!2533 = !DILocation(line: 0, scope: !2503, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 987, column: 10, scope: !2529)
!2535 = !DILocation(line: 0, scope: !2476, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 981, column: 10, scope: !2503, inlinedAt: !2534)
!2537 = !DILocation(line: 972, column: 3, scope: !2476, inlinedAt: !2536)
!2538 = !DILocation(line: 972, column: 26, scope: !2476, inlinedAt: !2536)
!2539 = !DILocation(line: 973, column: 13, scope: !2476, inlinedAt: !2536)
!2540 = !DILocation(line: 0, scope: !1490, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 974, column: 3, scope: !2476, inlinedAt: !2536)
!2542 = !DILocation(line: 147, column: 57, scope: !1490, inlinedAt: !2541)
!2543 = !DILocation(line: 149, column: 21, scope: !1490, inlinedAt: !2541)
!2544 = !DILocation(line: 150, column: 6, scope: !1490, inlinedAt: !2541)
!2545 = !DILocation(line: 975, column: 10, scope: !2476, inlinedAt: !2536)
!2546 = !DILocation(line: 976, column: 1, scope: !2476, inlinedAt: !2536)
!2547 = !DILocation(line: 987, column: 3, scope: !2529)
!2548 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !432, file: !432, line: 991, type: !2357, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2549)
!2549 = !{!2550, !2551}
!2550 = !DILocalVariable(name: "arg", arg: 1, scope: !2548, file: !432, line: 991, type: !70)
!2551 = !DILocalVariable(name: "argsize", arg: 2, scope: !2548, file: !432, line: 991, type: !94)
!2552 = !DILocation(line: 0, scope: !2548)
!2553 = !DILocation(line: 0, scope: !2476, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 993, column: 10, scope: !2548)
!2555 = !DILocation(line: 972, column: 3, scope: !2476, inlinedAt: !2554)
!2556 = !DILocation(line: 972, column: 26, scope: !2476, inlinedAt: !2554)
!2557 = !DILocation(line: 973, column: 13, scope: !2476, inlinedAt: !2554)
!2558 = !DILocation(line: 0, scope: !1490, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 974, column: 3, scope: !2476, inlinedAt: !2554)
!2560 = !DILocation(line: 147, column: 57, scope: !1490, inlinedAt: !2559)
!2561 = !DILocation(line: 149, column: 21, scope: !1490, inlinedAt: !2559)
!2562 = !DILocation(line: 150, column: 6, scope: !1490, inlinedAt: !2559)
!2563 = !DILocation(line: 975, column: 10, scope: !2476, inlinedAt: !2554)
!2564 = !DILocation(line: 976, column: 1, scope: !2476, inlinedAt: !2554)
!2565 = !DILocation(line: 993, column: 3, scope: !2548)
!2566 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !432, file: !432, line: 997, type: !2368, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2567)
!2567 = !{!2568, !2569, !2570, !2571}
!2568 = !DILocalVariable(name: "n", arg: 1, scope: !2566, file: !432, line: 997, type: !92)
!2569 = !DILocalVariable(name: "s", arg: 2, scope: !2566, file: !432, line: 997, type: !458)
!2570 = !DILocalVariable(name: "arg", arg: 3, scope: !2566, file: !432, line: 997, type: !70)
!2571 = !DILocalVariable(name: "options", scope: !2566, file: !432, line: 999, type: !485)
!2572 = !DILocation(line: 185, column: 26, scope: !2383, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 1000, column: 13, scope: !2566)
!2574 = !DILocation(line: 0, scope: !2566)
!2575 = !DILocation(line: 999, column: 3, scope: !2566)
!2576 = !DILocation(line: 999, column: 26, scope: !2566)
!2577 = !DILocation(line: 0, scope: !2383, inlinedAt: !2573)
!2578 = !DILocation(line: 186, column: 13, scope: !2392, inlinedAt: !2573)
!2579 = !DILocation(line: 186, column: 7, scope: !2383, inlinedAt: !2573)
!2580 = !DILocation(line: 187, column: 5, scope: !2392, inlinedAt: !2573)
!2581 = !{!2582}
!2582 = distinct !{!2582, !2583, !"quoting_options_from_style: argument 0"}
!2583 = distinct !{!2583, !"quoting_options_from_style"}
!2584 = !DILocation(line: 1000, column: 13, scope: !2566)
!2585 = !DILocation(line: 0, scope: !1490, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1001, column: 3, scope: !2566)
!2587 = !DILocation(line: 147, column: 57, scope: !1490, inlinedAt: !2586)
!2588 = !DILocation(line: 149, column: 21, scope: !1490, inlinedAt: !2586)
!2589 = !DILocation(line: 150, column: 6, scope: !1490, inlinedAt: !2586)
!2590 = !DILocation(line: 1002, column: 10, scope: !2566)
!2591 = !DILocation(line: 1003, column: 1, scope: !2566)
!2592 = !DILocation(line: 1002, column: 3, scope: !2566)
!2593 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !432, file: !432, line: 1006, type: !2594, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!239, !92, !70, !70, !70}
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DILocalVariable(name: "n", arg: 1, scope: !2593, file: !432, line: 1006, type: !92)
!2598 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2593, file: !432, line: 1006, type: !70)
!2599 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2593, file: !432, line: 1007, type: !70)
!2600 = !DILocalVariable(name: "arg", arg: 4, scope: !2593, file: !432, line: 1007, type: !70)
!2601 = !DILocation(line: 0, scope: !2593)
!2602 = !DILocalVariable(name: "n", arg: 1, scope: !2603, file: !432, line: 1014, type: !92)
!2603 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !432, file: !432, line: 1014, type: !2604, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!239, !92, !70, !70, !70, !94}
!2606 = !{!2602, !2607, !2608, !2609, !2610, !2611}
!2607 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2603, file: !432, line: 1014, type: !70)
!2608 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2603, file: !432, line: 1015, type: !70)
!2609 = !DILocalVariable(name: "arg", arg: 4, scope: !2603, file: !432, line: 1016, type: !70)
!2610 = !DILocalVariable(name: "argsize", arg: 5, scope: !2603, file: !432, line: 1016, type: !94)
!2611 = !DILocalVariable(name: "o", scope: !2603, file: !432, line: 1018, type: !485)
!2612 = !DILocation(line: 0, scope: !2603, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 1009, column: 10, scope: !2593)
!2614 = !DILocation(line: 1018, column: 3, scope: !2603, inlinedAt: !2613)
!2615 = !DILocation(line: 1018, column: 26, scope: !2603, inlinedAt: !2613)
!2616 = !DILocation(line: 1018, column: 30, scope: !2603, inlinedAt: !2613)
!2617 = !DILocation(line: 0, scope: !1530, inlinedAt: !2618)
!2618 = distinct !DILocation(line: 1019, column: 3, scope: !2603, inlinedAt: !2613)
!2619 = !DILocation(line: 174, column: 12, scope: !1530, inlinedAt: !2618)
!2620 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2618)
!2621 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2618)
!2622 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2618)
!2623 = !DILocation(line: 177, column: 6, scope: !1530, inlinedAt: !2618)
!2624 = !DILocation(line: 177, column: 17, scope: !1530, inlinedAt: !2618)
!2625 = !DILocation(line: 178, column: 6, scope: !1530, inlinedAt: !2618)
!2626 = !DILocation(line: 178, column: 18, scope: !1530, inlinedAt: !2618)
!2627 = !DILocation(line: 1020, column: 10, scope: !2603, inlinedAt: !2613)
!2628 = !DILocation(line: 1021, column: 1, scope: !2603, inlinedAt: !2613)
!2629 = !DILocation(line: 1009, column: 3, scope: !2593)
!2630 = !DILocation(line: 0, scope: !2603)
!2631 = !DILocation(line: 1018, column: 3, scope: !2603)
!2632 = !DILocation(line: 1018, column: 26, scope: !2603)
!2633 = !DILocation(line: 1018, column: 30, scope: !2603)
!2634 = !DILocation(line: 0, scope: !1530, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 1019, column: 3, scope: !2603)
!2636 = !DILocation(line: 174, column: 12, scope: !1530, inlinedAt: !2635)
!2637 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2635)
!2638 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2635)
!2639 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2635)
!2640 = !DILocation(line: 177, column: 6, scope: !1530, inlinedAt: !2635)
!2641 = !DILocation(line: 177, column: 17, scope: !1530, inlinedAt: !2635)
!2642 = !DILocation(line: 178, column: 6, scope: !1530, inlinedAt: !2635)
!2643 = !DILocation(line: 178, column: 18, scope: !1530, inlinedAt: !2635)
!2644 = !DILocation(line: 1020, column: 10, scope: !2603)
!2645 = !DILocation(line: 1021, column: 1, scope: !2603)
!2646 = !DILocation(line: 1020, column: 3, scope: !2603)
!2647 = distinct !DISubprogram(name: "quotearg_custom", scope: !432, file: !432, line: 1024, type: !2648, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2650)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!239, !70, !70, !70}
!2650 = !{!2651, !2652, !2653}
!2651 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2647, file: !432, line: 1024, type: !70)
!2652 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2647, file: !432, line: 1024, type: !70)
!2653 = !DILocalVariable(name: "arg", arg: 3, scope: !2647, file: !432, line: 1025, type: !70)
!2654 = !DILocation(line: 0, scope: !2647)
!2655 = !DILocation(line: 0, scope: !2593, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 1027, column: 10, scope: !2647)
!2657 = !DILocation(line: 0, scope: !2603, inlinedAt: !2658)
!2658 = distinct !DILocation(line: 1009, column: 10, scope: !2593, inlinedAt: !2656)
!2659 = !DILocation(line: 1018, column: 3, scope: !2603, inlinedAt: !2658)
!2660 = !DILocation(line: 1018, column: 26, scope: !2603, inlinedAt: !2658)
!2661 = !DILocation(line: 1018, column: 30, scope: !2603, inlinedAt: !2658)
!2662 = !DILocation(line: 0, scope: !1530, inlinedAt: !2663)
!2663 = distinct !DILocation(line: 1019, column: 3, scope: !2603, inlinedAt: !2658)
!2664 = !DILocation(line: 174, column: 12, scope: !1530, inlinedAt: !2663)
!2665 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2663)
!2666 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2663)
!2667 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2663)
!2668 = !DILocation(line: 177, column: 6, scope: !1530, inlinedAt: !2663)
!2669 = !DILocation(line: 177, column: 17, scope: !1530, inlinedAt: !2663)
!2670 = !DILocation(line: 178, column: 6, scope: !1530, inlinedAt: !2663)
!2671 = !DILocation(line: 178, column: 18, scope: !1530, inlinedAt: !2663)
!2672 = !DILocation(line: 1020, column: 10, scope: !2603, inlinedAt: !2658)
!2673 = !DILocation(line: 1021, column: 1, scope: !2603, inlinedAt: !2658)
!2674 = !DILocation(line: 1027, column: 3, scope: !2647)
!2675 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !432, file: !432, line: 1031, type: !2676, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!239, !70, !70, !70, !94}
!2678 = !{!2679, !2680, !2681, !2682}
!2679 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2675, file: !432, line: 1031, type: !70)
!2680 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2675, file: !432, line: 1031, type: !70)
!2681 = !DILocalVariable(name: "arg", arg: 3, scope: !2675, file: !432, line: 1032, type: !70)
!2682 = !DILocalVariable(name: "argsize", arg: 4, scope: !2675, file: !432, line: 1032, type: !94)
!2683 = !DILocation(line: 0, scope: !2675)
!2684 = !DILocation(line: 0, scope: !2603, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1034, column: 10, scope: !2675)
!2686 = !DILocation(line: 1018, column: 3, scope: !2603, inlinedAt: !2685)
!2687 = !DILocation(line: 1018, column: 26, scope: !2603, inlinedAt: !2685)
!2688 = !DILocation(line: 1018, column: 30, scope: !2603, inlinedAt: !2685)
!2689 = !DILocation(line: 0, scope: !1530, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1019, column: 3, scope: !2603, inlinedAt: !2685)
!2691 = !DILocation(line: 174, column: 12, scope: !1530, inlinedAt: !2690)
!2692 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2690)
!2693 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2690)
!2694 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2690)
!2695 = !DILocation(line: 177, column: 6, scope: !1530, inlinedAt: !2690)
!2696 = !DILocation(line: 177, column: 17, scope: !1530, inlinedAt: !2690)
!2697 = !DILocation(line: 178, column: 6, scope: !1530, inlinedAt: !2690)
!2698 = !DILocation(line: 178, column: 18, scope: !1530, inlinedAt: !2690)
!2699 = !DILocation(line: 1020, column: 10, scope: !2603, inlinedAt: !2685)
!2700 = !DILocation(line: 1021, column: 1, scope: !2603, inlinedAt: !2685)
!2701 = !DILocation(line: 1034, column: 3, scope: !2675)
!2702 = distinct !DISubprogram(name: "quote_n_mem", scope: !432, file: !432, line: 1049, type: !2703, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2705)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!70, !92, !70, !94}
!2705 = !{!2706, !2707, !2708}
!2706 = !DILocalVariable(name: "n", arg: 1, scope: !2702, file: !432, line: 1049, type: !92)
!2707 = !DILocalVariable(name: "arg", arg: 2, scope: !2702, file: !432, line: 1049, type: !70)
!2708 = !DILocalVariable(name: "argsize", arg: 3, scope: !2702, file: !432, line: 1049, type: !94)
!2709 = !DILocation(line: 0, scope: !2702)
!2710 = !DILocation(line: 1051, column: 10, scope: !2702)
!2711 = !DILocation(line: 1051, column: 3, scope: !2702)
!2712 = distinct !DISubprogram(name: "quote_mem", scope: !432, file: !432, line: 1055, type: !2713, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2715)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!70, !70, !94}
!2715 = !{!2716, !2717}
!2716 = !DILocalVariable(name: "arg", arg: 1, scope: !2712, file: !432, line: 1055, type: !70)
!2717 = !DILocalVariable(name: "argsize", arg: 2, scope: !2712, file: !432, line: 1055, type: !94)
!2718 = !DILocation(line: 0, scope: !2712)
!2719 = !DILocation(line: 0, scope: !2702, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1057, column: 10, scope: !2712)
!2721 = !DILocation(line: 1051, column: 10, scope: !2702, inlinedAt: !2720)
!2722 = !DILocation(line: 1057, column: 3, scope: !2712)
!2723 = distinct !DISubprogram(name: "quote_n", scope: !432, file: !432, line: 1061, type: !2724, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2726)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!70, !92, !70}
!2726 = !{!2727, !2728}
!2727 = !DILocalVariable(name: "n", arg: 1, scope: !2723, file: !432, line: 1061, type: !92)
!2728 = !DILocalVariable(name: "arg", arg: 2, scope: !2723, file: !432, line: 1061, type: !70)
!2729 = !DILocation(line: 0, scope: !2723)
!2730 = !DILocation(line: 0, scope: !2702, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1063, column: 10, scope: !2723)
!2732 = !DILocation(line: 1051, column: 10, scope: !2702, inlinedAt: !2731)
!2733 = !DILocation(line: 1063, column: 3, scope: !2723)
!2734 = distinct !DISubprogram(name: "quote", scope: !432, file: !432, line: 1067, type: !2735, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!70, !70}
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "arg", arg: 1, scope: !2734, file: !432, line: 1067, type: !70)
!2739 = !DILocation(line: 0, scope: !2734)
!2740 = !DILocation(line: 0, scope: !2723, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1069, column: 10, scope: !2734)
!2742 = !DILocation(line: 0, scope: !2702, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 1063, column: 10, scope: !2723, inlinedAt: !2741)
!2744 = !DILocation(line: 1051, column: 10, scope: !2702, inlinedAt: !2743)
!2745 = !DILocation(line: 1069, column: 3, scope: !2734)
!2746 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 61, type: !2747, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2784)
!2747 = !DISubroutineType(types: !2748)
!2748 = !{null, !2749, !70, !70, !70, !2783, !94}
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2751)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2751, file: !235, line: 51, baseType: !92, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2751, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2751, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2751, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2751, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2751, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2751, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2751, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2751, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2751, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2751, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2751, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2751, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2751, file: !235, line: 70, baseType: !2767, size: 64, offset: 832)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2751, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2751, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2751, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2751, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2751, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2751, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2751, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2751, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2751, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2751, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2751, file: !235, line: 93, baseType: !2767, size: 64, offset: 1344)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2751, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2751, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2751, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2751, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2784 = !{!2785, !2786, !2787, !2788, !2789, !2790}
!2785 = !DILocalVariable(name: "stream", arg: 1, scope: !2746, file: !548, line: 61, type: !2749)
!2786 = !DILocalVariable(name: "command_name", arg: 2, scope: !2746, file: !548, line: 62, type: !70)
!2787 = !DILocalVariable(name: "package", arg: 3, scope: !2746, file: !548, line: 62, type: !70)
!2788 = !DILocalVariable(name: "version", arg: 4, scope: !2746, file: !548, line: 63, type: !70)
!2789 = !DILocalVariable(name: "authors", arg: 5, scope: !2746, file: !548, line: 64, type: !2783)
!2790 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2746, file: !548, line: 64, type: !94)
!2791 = !DILocation(line: 0, scope: !2746)
!2792 = !DILocation(line: 66, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2746, file: !548, line: 66, column: 7)
!2794 = !DILocation(line: 66, column: 7, scope: !2746)
!2795 = !DILocation(line: 67, column: 5, scope: !2793)
!2796 = !DILocation(line: 69, column: 5, scope: !2793)
!2797 = !DILocation(line: 83, column: 3, scope: !2746)
!2798 = !DILocation(line: 85, column: 3, scope: !2746)
!2799 = !DILocation(line: 88, column: 3, scope: !2746)
!2800 = !DILocation(line: 95, column: 3, scope: !2746)
!2801 = !DILocation(line: 97, column: 3, scope: !2746)
!2802 = !DILocation(line: 105, column: 7, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2746, file: !548, line: 98, column: 5)
!2804 = !DILocation(line: 106, column: 7, scope: !2803)
!2805 = !DILocation(line: 109, column: 7, scope: !2803)
!2806 = !DILocation(line: 110, column: 7, scope: !2803)
!2807 = !DILocation(line: 113, column: 7, scope: !2803)
!2808 = !DILocation(line: 115, column: 7, scope: !2803)
!2809 = !DILocation(line: 120, column: 7, scope: !2803)
!2810 = !DILocation(line: 122, column: 7, scope: !2803)
!2811 = !DILocation(line: 127, column: 7, scope: !2803)
!2812 = !DILocation(line: 129, column: 7, scope: !2803)
!2813 = !DILocation(line: 134, column: 7, scope: !2803)
!2814 = !DILocation(line: 137, column: 7, scope: !2803)
!2815 = !DILocation(line: 142, column: 7, scope: !2803)
!2816 = !DILocation(line: 145, column: 7, scope: !2803)
!2817 = !DILocation(line: 150, column: 7, scope: !2803)
!2818 = !DILocation(line: 154, column: 7, scope: !2803)
!2819 = !DILocation(line: 159, column: 7, scope: !2803)
!2820 = !DILocation(line: 163, column: 7, scope: !2803)
!2821 = !DILocation(line: 170, column: 7, scope: !2803)
!2822 = !DILocation(line: 174, column: 7, scope: !2803)
!2823 = !DILocation(line: 176, column: 1, scope: !2746)
!2824 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 183, type: !2825, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2827)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2749, !70, !70, !70, !2783}
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833}
!2828 = !DILocalVariable(name: "stream", arg: 1, scope: !2824, file: !548, line: 183, type: !2749)
!2829 = !DILocalVariable(name: "command_name", arg: 2, scope: !2824, file: !548, line: 184, type: !70)
!2830 = !DILocalVariable(name: "package", arg: 3, scope: !2824, file: !548, line: 184, type: !70)
!2831 = !DILocalVariable(name: "version", arg: 4, scope: !2824, file: !548, line: 185, type: !70)
!2832 = !DILocalVariable(name: "authors", arg: 5, scope: !2824, file: !548, line: 185, type: !2783)
!2833 = !DILocalVariable(name: "n_authors", scope: !2824, file: !548, line: 187, type: !94)
!2834 = !DILocation(line: 0, scope: !2824)
!2835 = !DILocation(line: 189, column: 8, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2824, file: !548, line: 189, column: 3)
!2837 = !DILocation(line: 189, scope: !2836)
!2838 = !DILocation(line: 189, column: 23, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2836, file: !548, line: 189, column: 3)
!2840 = !DILocation(line: 189, column: 3, scope: !2836)
!2841 = !DILocation(line: 189, column: 52, scope: !2839)
!2842 = distinct !{!2842, !2840, !2843, !860}
!2843 = !DILocation(line: 190, column: 5, scope: !2836)
!2844 = !DILocation(line: 191, column: 3, scope: !2824)
!2845 = !DILocation(line: 192, column: 1, scope: !2824)
!2846 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 199, type: !2847, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2860)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{null, !2749, !70, !70, !70, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 52, baseType: !2850)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 14, baseType: !2851)
!2851 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2852, baseType: !2853)
!2852 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2854)
!2854 = !{!2855, !2856, !2857, !2858, !2859}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2853, file: !2852, line: 192, baseType: !91, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2853, file: !2852, line: 192, baseType: !91, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2853, file: !2852, line: 192, baseType: !91, size: 64, offset: 128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2853, file: !2852, line: 192, baseType: !92, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2853, file: !2852, line: 192, baseType: !92, size: 32, offset: 224)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867}
!2861 = !DILocalVariable(name: "stream", arg: 1, scope: !2846, file: !548, line: 199, type: !2749)
!2862 = !DILocalVariable(name: "command_name", arg: 2, scope: !2846, file: !548, line: 200, type: !70)
!2863 = !DILocalVariable(name: "package", arg: 3, scope: !2846, file: !548, line: 200, type: !70)
!2864 = !DILocalVariable(name: "version", arg: 4, scope: !2846, file: !548, line: 201, type: !70)
!2865 = !DILocalVariable(name: "authors", arg: 5, scope: !2846, file: !548, line: 201, type: !2849)
!2866 = !DILocalVariable(name: "n_authors", scope: !2846, file: !548, line: 203, type: !94)
!2867 = !DILocalVariable(name: "authtab", scope: !2846, file: !548, line: 204, type: !2868)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2869 = !DILocation(line: 0, scope: !2846)
!2870 = !DILocation(line: 201, column: 46, scope: !2846)
!2871 = !DILocation(line: 204, column: 3, scope: !2846)
!2872 = !DILocation(line: 204, column: 15, scope: !2846)
!2873 = !DILocation(line: 208, column: 35, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !548, line: 206, column: 3)
!2875 = distinct !DILexicalBlock(scope: !2846, file: !548, line: 206, column: 3)
!2876 = !DILocation(line: 208, column: 33, scope: !2874)
!2877 = !DILocation(line: 208, column: 67, scope: !2874)
!2878 = !DILocation(line: 206, column: 3, scope: !2875)
!2879 = !DILocation(line: 208, column: 14, scope: !2874)
!2880 = !DILocation(line: 0, scope: !2875)
!2881 = !DILocation(line: 211, column: 3, scope: !2846)
!2882 = !DILocation(line: 213, column: 1, scope: !2846)
!2883 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 230, type: !2884, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2886)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2749, !70, !70, !70, null}
!2886 = !{!2887, !2888, !2889, !2890, !2891}
!2887 = !DILocalVariable(name: "stream", arg: 1, scope: !2883, file: !548, line: 230, type: !2749)
!2888 = !DILocalVariable(name: "command_name", arg: 2, scope: !2883, file: !548, line: 231, type: !70)
!2889 = !DILocalVariable(name: "package", arg: 3, scope: !2883, file: !548, line: 231, type: !70)
!2890 = !DILocalVariable(name: "version", arg: 4, scope: !2883, file: !548, line: 232, type: !70)
!2891 = !DILocalVariable(name: "authors", scope: !2883, file: !548, line: 234, type: !2849)
!2892 = !DILocation(line: 0, scope: !2883)
!2893 = !DILocation(line: 234, column: 3, scope: !2883)
!2894 = !DILocation(line: 234, column: 11, scope: !2883)
!2895 = !DILocation(line: 235, column: 3, scope: !2883)
!2896 = !DILocation(line: 236, column: 3, scope: !2883)
!2897 = !DILocation(line: 237, column: 3, scope: !2883)
!2898 = !DILocation(line: 238, column: 1, scope: !2883)
!2899 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 241, type: !364, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !798)
!2900 = !DILocation(line: 243, column: 3, scope: !2899)
!2901 = !DILocation(line: 248, column: 3, scope: !2899)
!2902 = !DILocation(line: 254, column: 3, scope: !2899)
!2903 = !DILocation(line: 259, column: 3, scope: !2899)
!2904 = !DILocation(line: 261, column: 1, scope: !2899)
!2905 = distinct !DISubprogram(name: "xnrealloc", scope: !2906, file: !2906, line: 147, type: !2907, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2909)
!2906 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!91, !91, !94, !94}
!2909 = !{!2910, !2911, !2912}
!2910 = !DILocalVariable(name: "p", arg: 1, scope: !2905, file: !2906, line: 147, type: !91)
!2911 = !DILocalVariable(name: "n", arg: 2, scope: !2905, file: !2906, line: 147, type: !94)
!2912 = !DILocalVariable(name: "s", arg: 3, scope: !2905, file: !2906, line: 147, type: !94)
!2913 = !DILocation(line: 0, scope: !2905)
!2914 = !DILocalVariable(name: "p", arg: 1, scope: !2915, file: !682, line: 83, type: !91)
!2915 = distinct !DISubprogram(name: "xreallocarray", scope: !682, file: !682, line: 83, type: !2907, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2916)
!2916 = !{!2914, !2917, !2918}
!2917 = !DILocalVariable(name: "n", arg: 2, scope: !2915, file: !682, line: 83, type: !94)
!2918 = !DILocalVariable(name: "s", arg: 3, scope: !2915, file: !682, line: 83, type: !94)
!2919 = !DILocation(line: 0, scope: !2915, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 149, column: 10, scope: !2905)
!2921 = !DILocation(line: 85, column: 25, scope: !2915, inlinedAt: !2920)
!2922 = !DILocalVariable(name: "p", arg: 1, scope: !2923, file: !682, line: 37, type: !91)
!2923 = distinct !DISubprogram(name: "check_nonnull", scope: !682, file: !682, line: 37, type: !2924, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2926)
!2924 = !DISubroutineType(types: !2925)
!2925 = !{!91, !91}
!2926 = !{!2922}
!2927 = !DILocation(line: 0, scope: !2923, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 85, column: 10, scope: !2915, inlinedAt: !2920)
!2929 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !2928)
!2930 = distinct !DILexicalBlock(scope: !2923, file: !682, line: 39, column: 7)
!2931 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !2928)
!2932 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !2928)
!2933 = !DILocation(line: 149, column: 3, scope: !2905)
!2934 = !DILocation(line: 0, scope: !2915)
!2935 = !DILocation(line: 85, column: 25, scope: !2915)
!2936 = !DILocation(line: 0, scope: !2923, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 85, column: 10, scope: !2915)
!2938 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !2937)
!2939 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !2937)
!2940 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !2937)
!2941 = !DILocation(line: 85, column: 3, scope: !2915)
!2942 = distinct !DISubprogram(name: "xmalloc", scope: !682, file: !682, line: 47, type: !2943, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2945)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!91, !94}
!2945 = !{!2946}
!2946 = !DILocalVariable(name: "s", arg: 1, scope: !2942, file: !682, line: 47, type: !94)
!2947 = !DILocation(line: 0, scope: !2942)
!2948 = !DILocation(line: 49, column: 25, scope: !2942)
!2949 = !DILocation(line: 0, scope: !2923, inlinedAt: !2950)
!2950 = distinct !DILocation(line: 49, column: 10, scope: !2942)
!2951 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !2950)
!2952 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !2950)
!2953 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !2950)
!2954 = !DILocation(line: 49, column: 3, scope: !2942)
!2955 = !DISubprogram(name: "malloc", scope: !934, file: !934, line: 540, type: !2943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!2956 = distinct !DISubprogram(name: "ximalloc", scope: !682, file: !682, line: 53, type: !2957, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!91, !701}
!2959 = !{!2960}
!2960 = !DILocalVariable(name: "s", arg: 1, scope: !2956, file: !682, line: 53, type: !701)
!2961 = !DILocation(line: 0, scope: !2956)
!2962 = !DILocalVariable(name: "s", arg: 1, scope: !2963, file: !2964, line: 55, type: !701)
!2963 = distinct !DISubprogram(name: "imalloc", scope: !2964, file: !2964, line: 55, type: !2957, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2965)
!2964 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2965 = !{!2962}
!2966 = !DILocation(line: 0, scope: !2963, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 55, column: 25, scope: !2956)
!2968 = !DILocation(line: 57, column: 26, scope: !2963, inlinedAt: !2967)
!2969 = !DILocation(line: 0, scope: !2923, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 55, column: 10, scope: !2956)
!2971 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !2970)
!2972 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !2970)
!2973 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !2970)
!2974 = !DILocation(line: 55, column: 3, scope: !2956)
!2975 = distinct !DISubprogram(name: "xcharalloc", scope: !682, file: !682, line: 59, type: !2976, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!239, !94}
!2978 = !{!2979}
!2979 = !DILocalVariable(name: "n", arg: 1, scope: !2975, file: !682, line: 59, type: !94)
!2980 = !DILocation(line: 0, scope: !2975)
!2981 = !DILocation(line: 0, scope: !2942, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 61, column: 10, scope: !2975)
!2983 = !DILocation(line: 49, column: 25, scope: !2942, inlinedAt: !2982)
!2984 = !DILocation(line: 0, scope: !2923, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 49, column: 10, scope: !2942, inlinedAt: !2982)
!2986 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !2985)
!2987 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !2985)
!2988 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !2985)
!2989 = !DILocation(line: 61, column: 3, scope: !2975)
!2990 = distinct !DISubprogram(name: "xrealloc", scope: !682, file: !682, line: 68, type: !2991, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2993)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!91, !91, !94}
!2993 = !{!2994, !2995}
!2994 = !DILocalVariable(name: "p", arg: 1, scope: !2990, file: !682, line: 68, type: !91)
!2995 = !DILocalVariable(name: "s", arg: 2, scope: !2990, file: !682, line: 68, type: !94)
!2996 = !DILocation(line: 0, scope: !2990)
!2997 = !DILocalVariable(name: "ptr", arg: 1, scope: !2998, file: !2999, line: 2057, type: !91)
!2998 = distinct !DISubprogram(name: "rpl_realloc", scope: !2999, file: !2999, line: 2057, type: !2991, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3000)
!2999 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3000 = !{!2997, !3001}
!3001 = !DILocalVariable(name: "size", arg: 2, scope: !2998, file: !2999, line: 2057, type: !94)
!3002 = !DILocation(line: 0, scope: !2998, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 70, column: 25, scope: !2990)
!3004 = !DILocation(line: 2059, column: 24, scope: !2998, inlinedAt: !3003)
!3005 = !DILocation(line: 2059, column: 10, scope: !2998, inlinedAt: !3003)
!3006 = !DILocation(line: 0, scope: !2923, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 70, column: 10, scope: !2990)
!3008 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3007)
!3009 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3007)
!3010 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3007)
!3011 = !DILocation(line: 70, column: 3, scope: !2990)
!3012 = !DISubprogram(name: "realloc", scope: !934, file: !934, line: 551, type: !2991, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3013 = distinct !DISubprogram(name: "xirealloc", scope: !682, file: !682, line: 74, type: !3014, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3016)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!91, !91, !701}
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "p", arg: 1, scope: !3013, file: !682, line: 74, type: !91)
!3018 = !DILocalVariable(name: "s", arg: 2, scope: !3013, file: !682, line: 74, type: !701)
!3019 = !DILocation(line: 0, scope: !3013)
!3020 = !DILocalVariable(name: "p", arg: 1, scope: !3021, file: !2964, line: 66, type: !91)
!3021 = distinct !DISubprogram(name: "irealloc", scope: !2964, file: !2964, line: 66, type: !3014, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3022)
!3022 = !{!3020, !3023}
!3023 = !DILocalVariable(name: "s", arg: 2, scope: !3021, file: !2964, line: 66, type: !701)
!3024 = !DILocation(line: 0, scope: !3021, inlinedAt: !3025)
!3025 = distinct !DILocation(line: 76, column: 25, scope: !3013)
!3026 = !DILocation(line: 0, scope: !2998, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 68, column: 26, scope: !3021, inlinedAt: !3025)
!3028 = !DILocation(line: 2059, column: 24, scope: !2998, inlinedAt: !3027)
!3029 = !DILocation(line: 2059, column: 10, scope: !2998, inlinedAt: !3027)
!3030 = !DILocation(line: 0, scope: !2923, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 76, column: 10, scope: !3013)
!3032 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3031)
!3033 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3031)
!3034 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3031)
!3035 = !DILocation(line: 76, column: 3, scope: !3013)
!3036 = distinct !DISubprogram(name: "xireallocarray", scope: !682, file: !682, line: 89, type: !3037, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!91, !91, !701, !701}
!3039 = !{!3040, !3041, !3042}
!3040 = !DILocalVariable(name: "p", arg: 1, scope: !3036, file: !682, line: 89, type: !91)
!3041 = !DILocalVariable(name: "n", arg: 2, scope: !3036, file: !682, line: 89, type: !701)
!3042 = !DILocalVariable(name: "s", arg: 3, scope: !3036, file: !682, line: 89, type: !701)
!3043 = !DILocation(line: 0, scope: !3036)
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3045, file: !2964, line: 98, type: !91)
!3045 = distinct !DISubprogram(name: "ireallocarray", scope: !2964, file: !2964, line: 98, type: !3037, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3046)
!3046 = !{!3044, !3047, !3048}
!3047 = !DILocalVariable(name: "n", arg: 2, scope: !3045, file: !2964, line: 98, type: !701)
!3048 = !DILocalVariable(name: "s", arg: 3, scope: !3045, file: !2964, line: 98, type: !701)
!3049 = !DILocation(line: 0, scope: !3045, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 91, column: 25, scope: !3036)
!3051 = !DILocation(line: 101, column: 13, scope: !3045, inlinedAt: !3050)
!3052 = !DILocation(line: 0, scope: !2923, inlinedAt: !3053)
!3053 = distinct !DILocation(line: 91, column: 10, scope: !3036)
!3054 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3053)
!3055 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3053)
!3056 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3053)
!3057 = !DILocation(line: 91, column: 3, scope: !3036)
!3058 = distinct !DISubprogram(name: "xnmalloc", scope: !682, file: !682, line: 98, type: !3059, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3061)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!91, !94, !94}
!3061 = !{!3062, !3063}
!3062 = !DILocalVariable(name: "n", arg: 1, scope: !3058, file: !682, line: 98, type: !94)
!3063 = !DILocalVariable(name: "s", arg: 2, scope: !3058, file: !682, line: 98, type: !94)
!3064 = !DILocation(line: 0, scope: !3058)
!3065 = !DILocation(line: 0, scope: !2915, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 100, column: 10, scope: !3058)
!3067 = !DILocation(line: 85, column: 25, scope: !2915, inlinedAt: !3066)
!3068 = !DILocation(line: 0, scope: !2923, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 85, column: 10, scope: !2915, inlinedAt: !3066)
!3070 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3069)
!3071 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3069)
!3072 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3069)
!3073 = !DILocation(line: 100, column: 3, scope: !3058)
!3074 = distinct !DISubprogram(name: "xinmalloc", scope: !682, file: !682, line: 104, type: !3075, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!91, !701, !701}
!3077 = !{!3078, !3079}
!3078 = !DILocalVariable(name: "n", arg: 1, scope: !3074, file: !682, line: 104, type: !701)
!3079 = !DILocalVariable(name: "s", arg: 2, scope: !3074, file: !682, line: 104, type: !701)
!3080 = !DILocation(line: 0, scope: !3074)
!3081 = !DILocation(line: 0, scope: !3036, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 106, column: 10, scope: !3074)
!3083 = !DILocation(line: 0, scope: !3045, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 91, column: 25, scope: !3036, inlinedAt: !3082)
!3085 = !DILocation(line: 101, column: 13, scope: !3045, inlinedAt: !3084)
!3086 = !DILocation(line: 0, scope: !2923, inlinedAt: !3087)
!3087 = distinct !DILocation(line: 91, column: 10, scope: !3036, inlinedAt: !3082)
!3088 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3087)
!3089 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3087)
!3090 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3087)
!3091 = !DILocation(line: 106, column: 3, scope: !3074)
!3092 = distinct !DISubprogram(name: "x2realloc", scope: !682, file: !682, line: 116, type: !3093, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3095)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!91, !91, !688}
!3095 = !{!3096, !3097}
!3096 = !DILocalVariable(name: "p", arg: 1, scope: !3092, file: !682, line: 116, type: !91)
!3097 = !DILocalVariable(name: "ps", arg: 2, scope: !3092, file: !682, line: 116, type: !688)
!3098 = !DILocation(line: 0, scope: !3092)
!3099 = !DILocation(line: 0, scope: !685, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 118, column: 10, scope: !3092)
!3101 = !DILocation(line: 178, column: 14, scope: !685, inlinedAt: !3100)
!3102 = !DILocation(line: 180, column: 9, scope: !3103, inlinedAt: !3100)
!3103 = distinct !DILexicalBlock(scope: !685, file: !682, line: 180, column: 7)
!3104 = !DILocation(line: 180, column: 7, scope: !685, inlinedAt: !3100)
!3105 = !DILocation(line: 182, column: 13, scope: !3106, inlinedAt: !3100)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !682, line: 182, column: 11)
!3107 = distinct !DILexicalBlock(scope: !3103, file: !682, line: 181, column: 5)
!3108 = !DILocation(line: 182, column: 11, scope: !3107, inlinedAt: !3100)
!3109 = !DILocation(line: 197, column: 11, scope: !3110, inlinedAt: !3100)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !682, line: 197, column: 11)
!3111 = distinct !DILexicalBlock(scope: !3103, file: !682, line: 195, column: 5)
!3112 = !DILocation(line: 197, column: 11, scope: !3111, inlinedAt: !3100)
!3113 = !DILocation(line: 198, column: 9, scope: !3110, inlinedAt: !3100)
!3114 = !DILocation(line: 0, scope: !2915, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 201, column: 7, scope: !685, inlinedAt: !3100)
!3116 = !DILocation(line: 85, column: 25, scope: !2915, inlinedAt: !3115)
!3117 = !DILocation(line: 0, scope: !2923, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 85, column: 10, scope: !2915, inlinedAt: !3115)
!3119 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3118)
!3120 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3118)
!3121 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3118)
!3122 = !DILocation(line: 202, column: 7, scope: !685, inlinedAt: !3100)
!3123 = !DILocation(line: 118, column: 3, scope: !3092)
!3124 = !DILocation(line: 0, scope: !685)
!3125 = !DILocation(line: 178, column: 14, scope: !685)
!3126 = !DILocation(line: 180, column: 9, scope: !3103)
!3127 = !DILocation(line: 180, column: 7, scope: !685)
!3128 = !DILocation(line: 182, column: 13, scope: !3106)
!3129 = !DILocation(line: 182, column: 11, scope: !3107)
!3130 = !DILocation(line: 190, column: 30, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3106, file: !682, line: 183, column: 9)
!3132 = !DILocation(line: 191, column: 16, scope: !3131)
!3133 = !DILocation(line: 191, column: 13, scope: !3131)
!3134 = !DILocation(line: 192, column: 9, scope: !3131)
!3135 = !DILocation(line: 197, column: 11, scope: !3110)
!3136 = !DILocation(line: 197, column: 11, scope: !3111)
!3137 = !DILocation(line: 198, column: 9, scope: !3110)
!3138 = !DILocation(line: 0, scope: !2915, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 201, column: 7, scope: !685)
!3140 = !DILocation(line: 85, column: 25, scope: !2915, inlinedAt: !3139)
!3141 = !DILocation(line: 0, scope: !2923, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 85, column: 10, scope: !2915, inlinedAt: !3139)
!3143 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3142)
!3144 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3142)
!3145 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3142)
!3146 = !DILocation(line: 202, column: 7, scope: !685)
!3147 = !DILocation(line: 203, column: 3, scope: !685)
!3148 = !DILocation(line: 0, scope: !697)
!3149 = !DILocation(line: 230, column: 14, scope: !697)
!3150 = !DILocation(line: 238, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !697, file: !682, line: 238, column: 7)
!3152 = !DILocation(line: 238, column: 7, scope: !697)
!3153 = !DILocation(line: 240, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !697, file: !682, line: 240, column: 7)
!3155 = !DILocation(line: 240, column: 18, scope: !3154)
!3156 = !DILocation(line: 253, column: 8, scope: !697)
!3157 = !DILocation(line: 258, column: 27, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3159, file: !682, line: 257, column: 5)
!3159 = distinct !DILexicalBlock(scope: !697, file: !682, line: 256, column: 7)
!3160 = !DILocation(line: 259, column: 32, scope: !3158)
!3161 = !DILocation(line: 260, column: 5, scope: !3158)
!3162 = !DILocation(line: 262, column: 9, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !697, file: !682, line: 262, column: 7)
!3164 = !DILocation(line: 262, column: 7, scope: !697)
!3165 = !DILocation(line: 263, column: 9, scope: !3163)
!3166 = !DILocation(line: 263, column: 5, scope: !3163)
!3167 = !DILocation(line: 264, column: 9, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !697, file: !682, line: 264, column: 7)
!3169 = !DILocation(line: 264, column: 14, scope: !3168)
!3170 = !DILocation(line: 265, column: 7, scope: !3168)
!3171 = !DILocation(line: 265, column: 11, scope: !3168)
!3172 = !DILocation(line: 266, column: 11, scope: !3168)
!3173 = !DILocation(line: 267, column: 14, scope: !3168)
!3174 = !DILocation(line: 264, column: 7, scope: !697)
!3175 = !DILocation(line: 268, column: 5, scope: !3168)
!3176 = !DILocation(line: 0, scope: !2990, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 269, column: 8, scope: !697)
!3178 = !DILocation(line: 0, scope: !2998, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 70, column: 25, scope: !2990, inlinedAt: !3177)
!3180 = !DILocation(line: 2059, column: 24, scope: !2998, inlinedAt: !3179)
!3181 = !DILocation(line: 2059, column: 10, scope: !2998, inlinedAt: !3179)
!3182 = !DILocation(line: 0, scope: !2923, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 70, column: 10, scope: !2990, inlinedAt: !3177)
!3184 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3183)
!3185 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3183)
!3186 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3183)
!3187 = !DILocation(line: 270, column: 7, scope: !697)
!3188 = !DILocation(line: 271, column: 3, scope: !697)
!3189 = distinct !DISubprogram(name: "xzalloc", scope: !682, file: !682, line: 279, type: !2943, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3190)
!3190 = !{!3191}
!3191 = !DILocalVariable(name: "s", arg: 1, scope: !3189, file: !682, line: 279, type: !94)
!3192 = !DILocation(line: 0, scope: !3189)
!3193 = !DILocalVariable(name: "n", arg: 1, scope: !3194, file: !682, line: 294, type: !94)
!3194 = distinct !DISubprogram(name: "xcalloc", scope: !682, file: !682, line: 294, type: !3059, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3195)
!3195 = !{!3193, !3196}
!3196 = !DILocalVariable(name: "s", arg: 2, scope: !3194, file: !682, line: 294, type: !94)
!3197 = !DILocation(line: 0, scope: !3194, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 281, column: 10, scope: !3189)
!3199 = !DILocation(line: 296, column: 25, scope: !3194, inlinedAt: !3198)
!3200 = !DILocation(line: 0, scope: !2923, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 296, column: 10, scope: !3194, inlinedAt: !3198)
!3202 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3201)
!3203 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3201)
!3204 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3201)
!3205 = !DILocation(line: 281, column: 3, scope: !3189)
!3206 = !DISubprogram(name: "calloc", scope: !934, file: !934, line: 543, type: !3059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3207 = !DILocation(line: 0, scope: !3194)
!3208 = !DILocation(line: 296, column: 25, scope: !3194)
!3209 = !DILocation(line: 0, scope: !2923, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 296, column: 10, scope: !3194)
!3211 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3210)
!3212 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3210)
!3213 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3210)
!3214 = !DILocation(line: 296, column: 3, scope: !3194)
!3215 = distinct !DISubprogram(name: "xizalloc", scope: !682, file: !682, line: 285, type: !2957, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3216)
!3216 = !{!3217}
!3217 = !DILocalVariable(name: "s", arg: 1, scope: !3215, file: !682, line: 285, type: !701)
!3218 = !DILocation(line: 0, scope: !3215)
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !682, line: 300, type: !701)
!3220 = distinct !DISubprogram(name: "xicalloc", scope: !682, file: !682, line: 300, type: !3075, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3221)
!3221 = !{!3219, !3222}
!3222 = !DILocalVariable(name: "s", arg: 2, scope: !3220, file: !682, line: 300, type: !701)
!3223 = !DILocation(line: 0, scope: !3220, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 287, column: 10, scope: !3215)
!3225 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !2964, line: 77, type: !701)
!3226 = distinct !DISubprogram(name: "icalloc", scope: !2964, file: !2964, line: 77, type: !3075, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3227)
!3227 = !{!3225, !3228}
!3228 = !DILocalVariable(name: "s", arg: 2, scope: !3226, file: !2964, line: 77, type: !701)
!3229 = !DILocation(line: 0, scope: !3226, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 302, column: 25, scope: !3220, inlinedAt: !3224)
!3231 = !DILocation(line: 91, column: 10, scope: !3226, inlinedAt: !3230)
!3232 = !DILocation(line: 0, scope: !2923, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 302, column: 10, scope: !3220, inlinedAt: !3224)
!3234 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3233)
!3235 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3233)
!3236 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3233)
!3237 = !DILocation(line: 287, column: 3, scope: !3215)
!3238 = !DILocation(line: 0, scope: !3220)
!3239 = !DILocation(line: 0, scope: !3226, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 302, column: 25, scope: !3220)
!3241 = !DILocation(line: 91, column: 10, scope: !3226, inlinedAt: !3240)
!3242 = !DILocation(line: 0, scope: !2923, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 302, column: 10, scope: !3220)
!3244 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3243)
!3245 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3243)
!3246 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3243)
!3247 = !DILocation(line: 302, column: 3, scope: !3220)
!3248 = distinct !DISubprogram(name: "xmemdup", scope: !682, file: !682, line: 310, type: !3249, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!91, !958, !94}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "p", arg: 1, scope: !3248, file: !682, line: 310, type: !958)
!3253 = !DILocalVariable(name: "s", arg: 2, scope: !3248, file: !682, line: 310, type: !94)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 0, scope: !2942, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 312, column: 18, scope: !3248)
!3257 = !DILocation(line: 49, column: 25, scope: !2942, inlinedAt: !3256)
!3258 = !DILocation(line: 0, scope: !2923, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 49, column: 10, scope: !2942, inlinedAt: !3256)
!3260 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3259)
!3261 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3259)
!3262 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3259)
!3263 = !DILocalVariable(name: "__dest", arg: 1, scope: !3264, file: !1433, line: 26, type: !3267)
!3264 = distinct !DISubprogram(name: "memcpy", scope: !1433, file: !1433, line: 26, type: !3265, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3268)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!91, !3267, !957, !94}
!3267 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3268 = !{!3263, !3269, !3270}
!3269 = !DILocalVariable(name: "__src", arg: 2, scope: !3264, file: !1433, line: 26, type: !957)
!3270 = !DILocalVariable(name: "__len", arg: 3, scope: !3264, file: !1433, line: 26, type: !94)
!3271 = !DILocation(line: 0, scope: !3264, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 312, column: 10, scope: !3248)
!3273 = !DILocation(line: 29, column: 10, scope: !3264, inlinedAt: !3272)
!3274 = !DILocation(line: 312, column: 3, scope: !3248)
!3275 = distinct !DISubprogram(name: "ximemdup", scope: !682, file: !682, line: 316, type: !3276, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!91, !958, !701}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !682, line: 316, type: !958)
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !682, line: 316, type: !701)
!3281 = !DILocation(line: 0, scope: !3275)
!3282 = !DILocation(line: 0, scope: !2956, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 318, column: 18, scope: !3275)
!3284 = !DILocation(line: 0, scope: !2963, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 55, column: 25, scope: !2956, inlinedAt: !3283)
!3286 = !DILocation(line: 57, column: 26, scope: !2963, inlinedAt: !3285)
!3287 = !DILocation(line: 0, scope: !2923, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 55, column: 10, scope: !2956, inlinedAt: !3283)
!3289 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3288)
!3290 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3288)
!3291 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3288)
!3292 = !DILocation(line: 0, scope: !3264, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 318, column: 10, scope: !3275)
!3294 = !DILocation(line: 29, column: 10, scope: !3264, inlinedAt: !3293)
!3295 = !DILocation(line: 318, column: 3, scope: !3275)
!3296 = distinct !DISubprogram(name: "ximemdup0", scope: !682, file: !682, line: 325, type: !3297, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3299)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!239, !958, !701}
!3299 = !{!3300, !3301, !3302}
!3300 = !DILocalVariable(name: "p", arg: 1, scope: !3296, file: !682, line: 325, type: !958)
!3301 = !DILocalVariable(name: "s", arg: 2, scope: !3296, file: !682, line: 325, type: !701)
!3302 = !DILocalVariable(name: "result", scope: !3296, file: !682, line: 327, type: !239)
!3303 = !DILocation(line: 0, scope: !3296)
!3304 = !DILocation(line: 327, column: 30, scope: !3296)
!3305 = !DILocation(line: 0, scope: !2956, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 327, column: 18, scope: !3296)
!3307 = !DILocation(line: 0, scope: !2963, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 55, column: 25, scope: !2956, inlinedAt: !3306)
!3309 = !DILocation(line: 57, column: 26, scope: !2963, inlinedAt: !3308)
!3310 = !DILocation(line: 0, scope: !2923, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 55, column: 10, scope: !2956, inlinedAt: !3306)
!3312 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3311)
!3313 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3311)
!3314 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3311)
!3315 = !DILocation(line: 328, column: 3, scope: !3296)
!3316 = !DILocation(line: 328, column: 13, scope: !3296)
!3317 = !DILocation(line: 0, scope: !3264, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 329, column: 10, scope: !3296)
!3319 = !DILocation(line: 29, column: 10, scope: !3264, inlinedAt: !3318)
!3320 = !DILocation(line: 329, column: 3, scope: !3296)
!3321 = distinct !DISubprogram(name: "xstrdup", scope: !682, file: !682, line: 335, type: !936, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3322)
!3322 = !{!3323}
!3323 = !DILocalVariable(name: "string", arg: 1, scope: !3321, file: !682, line: 335, type: !70)
!3324 = !DILocation(line: 0, scope: !3321)
!3325 = !DILocation(line: 337, column: 27, scope: !3321)
!3326 = !DILocation(line: 337, column: 43, scope: !3321)
!3327 = !DILocation(line: 0, scope: !3248, inlinedAt: !3328)
!3328 = distinct !DILocation(line: 337, column: 10, scope: !3321)
!3329 = !DILocation(line: 0, scope: !2942, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 312, column: 18, scope: !3248, inlinedAt: !3328)
!3331 = !DILocation(line: 49, column: 25, scope: !2942, inlinedAt: !3330)
!3332 = !DILocation(line: 0, scope: !2923, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 49, column: 10, scope: !2942, inlinedAt: !3330)
!3334 = !DILocation(line: 39, column: 8, scope: !2930, inlinedAt: !3333)
!3335 = !DILocation(line: 39, column: 7, scope: !2923, inlinedAt: !3333)
!3336 = !DILocation(line: 40, column: 5, scope: !2930, inlinedAt: !3333)
!3337 = !DILocation(line: 0, scope: !3264, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 312, column: 10, scope: !3248, inlinedAt: !3328)
!3339 = !DILocation(line: 29, column: 10, scope: !3264, inlinedAt: !3338)
!3340 = !DILocation(line: 337, column: 3, scope: !3321)
!3341 = distinct !DISubprogram(name: "xalloc_die", scope: !644, file: !644, line: 32, type: !364, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3342)
!3342 = !{!3343}
!3343 = !DILocalVariable(name: "__errstatus", scope: !3344, file: !644, line: 34, type: !3345)
!3344 = distinct !DILexicalBlock(scope: !3341, file: !644, line: 34, column: 3)
!3345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3346 = !DILocation(line: 34, column: 3, scope: !3344)
!3347 = !DILocation(line: 0, scope: !3344)
!3348 = !DILocation(line: 40, column: 3, scope: !3341)
!3349 = distinct !DISubprogram(name: "close_stream", scope: !718, file: !718, line: 55, type: !3350, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3386)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!92, !3352}
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3354)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3355)
!3355 = !{!3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3354, file: !235, line: 51, baseType: !92, size: 32)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3354, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3354, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3354, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3354, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3354, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3354, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3354, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3354, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3354, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3354, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3354, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3354, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3354, file: !235, line: 70, baseType: !3370, size: 64, offset: 832)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3354, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3354, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3354, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3354, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3354, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3354, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3354, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3354, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3354, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3354, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3354, file: !235, line: 93, baseType: !3370, size: 64, offset: 1344)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3354, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3354, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3354, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3354, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3386 = !{!3387, !3388, !3390, !3391}
!3387 = !DILocalVariable(name: "stream", arg: 1, scope: !3349, file: !718, line: 55, type: !3352)
!3388 = !DILocalVariable(name: "some_pending", scope: !3349, file: !718, line: 57, type: !3389)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3390 = !DILocalVariable(name: "prev_fail", scope: !3349, file: !718, line: 58, type: !3389)
!3391 = !DILocalVariable(name: "fclose_fail", scope: !3349, file: !718, line: 59, type: !3389)
!3392 = !DILocation(line: 0, scope: !3349)
!3393 = !DILocation(line: 57, column: 30, scope: !3349)
!3394 = !DILocalVariable(name: "__stream", arg: 1, scope: !3395, file: !1184, line: 135, type: !3352)
!3395 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1184, file: !1184, line: 135, type: !3350, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3396)
!3396 = !{!3394}
!3397 = !DILocation(line: 0, scope: !3395, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 58, column: 27, scope: !3349)
!3399 = !DILocation(line: 137, column: 10, scope: !3395, inlinedAt: !3398)
!3400 = !{!1193, !814, i64 0}
!3401 = !DILocation(line: 58, column: 43, scope: !3349)
!3402 = !DILocation(line: 59, column: 29, scope: !3349)
!3403 = !DILocation(line: 59, column: 45, scope: !3349)
!3404 = !DILocation(line: 69, column: 17, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3349, file: !718, line: 69, column: 7)
!3406 = !DILocation(line: 57, column: 50, scope: !3349)
!3407 = !DILocation(line: 69, column: 33, scope: !3405)
!3408 = !DILocation(line: 69, column: 53, scope: !3405)
!3409 = !DILocation(line: 69, column: 59, scope: !3405)
!3410 = !DILocation(line: 69, column: 7, scope: !3349)
!3411 = !DILocation(line: 71, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3405, file: !718, line: 70, column: 5)
!3413 = !DILocation(line: 72, column: 9, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3412, file: !718, line: 71, column: 11)
!3415 = !DILocation(line: 72, column: 15, scope: !3414)
!3416 = !DILocation(line: 77, column: 1, scope: !3349)
!3417 = !DISubprogram(name: "__fpending", scope: !3418, file: !3418, line: 75, type: !3419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3418 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!94, !3352}
!3421 = distinct !DISubprogram(name: "rpl_fclose", scope: !720, file: !720, line: 58, type: !3422, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3458)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!92, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3427)
!3427 = !{!3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3426, file: !235, line: 51, baseType: !92, size: 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3426, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3426, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3426, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3426, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3426, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3426, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3426, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3426, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3426, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3426, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3426, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3426, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3426, file: !235, line: 70, baseType: !3442, size: 64, offset: 832)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3426, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3426, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3426, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3426, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3426, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3426, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3426, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3426, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3426, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3426, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3426, file: !235, line: 93, baseType: !3442, size: 64, offset: 1344)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3426, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3426, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3426, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3426, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3458 = !{!3459, !3460, !3461, !3462}
!3459 = !DILocalVariable(name: "fp", arg: 1, scope: !3421, file: !720, line: 58, type: !3424)
!3460 = !DILocalVariable(name: "saved_errno", scope: !3421, file: !720, line: 60, type: !92)
!3461 = !DILocalVariable(name: "fd", scope: !3421, file: !720, line: 63, type: !92)
!3462 = !DILocalVariable(name: "result", scope: !3421, file: !720, line: 74, type: !92)
!3463 = !DILocation(line: 0, scope: !3421)
!3464 = !DILocation(line: 63, column: 12, scope: !3421)
!3465 = !DILocation(line: 64, column: 10, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3421, file: !720, line: 64, column: 7)
!3467 = !DILocation(line: 64, column: 7, scope: !3421)
!3468 = !DILocation(line: 65, column: 12, scope: !3466)
!3469 = !DILocation(line: 65, column: 5, scope: !3466)
!3470 = !DILocation(line: 70, column: 9, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3421, file: !720, line: 70, column: 7)
!3472 = !DILocation(line: 70, column: 23, scope: !3471)
!3473 = !DILocation(line: 70, column: 33, scope: !3471)
!3474 = !DILocation(line: 70, column: 26, scope: !3471)
!3475 = !DILocation(line: 70, column: 59, scope: !3471)
!3476 = !DILocation(line: 71, column: 7, scope: !3471)
!3477 = !DILocation(line: 71, column: 10, scope: !3471)
!3478 = !DILocation(line: 70, column: 7, scope: !3421)
!3479 = !DILocation(line: 100, column: 12, scope: !3421)
!3480 = !DILocation(line: 105, column: 7, scope: !3421)
!3481 = !DILocation(line: 72, column: 19, scope: !3471)
!3482 = !DILocation(line: 105, column: 19, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3421, file: !720, line: 105, column: 7)
!3484 = !DILocation(line: 107, column: 13, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3483, file: !720, line: 106, column: 5)
!3486 = !DILocation(line: 109, column: 5, scope: !3485)
!3487 = !DILocation(line: 112, column: 1, scope: !3421)
!3488 = !DISubprogram(name: "fileno", scope: !323, file: !323, line: 809, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3489 = !DISubprogram(name: "fclose", scope: !323, file: !323, line: 178, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3490 = !DISubprogram(name: "__freading", scope: !3418, file: !3418, line: 51, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3491 = !DISubprogram(name: "lseek", scope: !1000, file: !1000, line: 339, type: !3492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!258, !92, !258, !92}
!3494 = distinct !DISubprogram(name: "rpl_fflush", scope: !722, file: !722, line: 130, type: !3495, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3531)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{!92, !3497}
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3499, file: !235, line: 51, baseType: !92, size: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3499, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3499, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3499, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3499, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3499, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3499, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3499, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3499, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3499, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3499, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3499, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3499, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3499, file: !235, line: 70, baseType: !3515, size: 64, offset: 832)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3499, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3499, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3499, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3499, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3499, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3499, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3499, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3499, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3499, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3499, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3499, file: !235, line: 93, baseType: !3515, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3499, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3499, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3499, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3499, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3531 = !{!3532}
!3532 = !DILocalVariable(name: "stream", arg: 1, scope: !3494, file: !722, line: 130, type: !3497)
!3533 = !DILocation(line: 0, scope: !3494)
!3534 = !DILocation(line: 151, column: 14, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3494, file: !722, line: 151, column: 7)
!3536 = !DILocation(line: 151, column: 22, scope: !3535)
!3537 = !DILocation(line: 151, column: 27, scope: !3535)
!3538 = !DILocation(line: 151, column: 7, scope: !3494)
!3539 = !DILocation(line: 152, column: 12, scope: !3535)
!3540 = !DILocation(line: 152, column: 5, scope: !3535)
!3541 = !DILocalVariable(name: "fp", arg: 1, scope: !3542, file: !722, line: 42, type: !3497)
!3542 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !722, file: !722, line: 42, type: !3543, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3545)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{null, !3497}
!3545 = !{!3541}
!3546 = !DILocation(line: 0, scope: !3542, inlinedAt: !3547)
!3547 = distinct !DILocation(line: 157, column: 3, scope: !3494)
!3548 = !DILocation(line: 44, column: 12, scope: !3549, inlinedAt: !3547)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !722, line: 44, column: 7)
!3550 = !DILocation(line: 44, column: 19, scope: !3549, inlinedAt: !3547)
!3551 = !DILocation(line: 44, column: 7, scope: !3542, inlinedAt: !3547)
!3552 = !DILocation(line: 46, column: 5, scope: !3549, inlinedAt: !3547)
!3553 = !DILocation(line: 159, column: 10, scope: !3494)
!3554 = !DILocation(line: 159, column: 3, scope: !3494)
!3555 = !DILocation(line: 236, column: 1, scope: !3494)
!3556 = !DISubprogram(name: "fflush", scope: !323, file: !323, line: 230, type: !3495, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3557 = distinct !DISubprogram(name: "rpl_fseeko", scope: !724, file: !724, line: 28, type: !3558, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3595)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!92, !3560, !3594, !92}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3562)
!3562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3563)
!3563 = !{!3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3562, file: !235, line: 51, baseType: !92, size: 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3562, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3562, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3562, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3562, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3562, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3562, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3562, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3562, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3562, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3562, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3562, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3562, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3562, file: !235, line: 70, baseType: !3578, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3562, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3562, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3562, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3562, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3562, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3562, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3562, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3562, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3562, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3562, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3562, file: !235, line: 93, baseType: !3578, size: 64, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3562, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3562, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3562, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3562, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3594 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !323, line: 63, baseType: !258)
!3595 = !{!3596, !3597, !3598, !3599}
!3596 = !DILocalVariable(name: "fp", arg: 1, scope: !3557, file: !724, line: 28, type: !3560)
!3597 = !DILocalVariable(name: "offset", arg: 2, scope: !3557, file: !724, line: 28, type: !3594)
!3598 = !DILocalVariable(name: "whence", arg: 3, scope: !3557, file: !724, line: 28, type: !92)
!3599 = !DILocalVariable(name: "pos", scope: !3600, file: !724, line: 123, type: !3594)
!3600 = distinct !DILexicalBlock(scope: !3601, file: !724, line: 119, column: 5)
!3601 = distinct !DILexicalBlock(scope: !3557, file: !724, line: 55, column: 7)
!3602 = !DILocation(line: 0, scope: !3557)
!3603 = !DILocation(line: 55, column: 12, scope: !3601)
!3604 = !{!1193, !754, i64 16}
!3605 = !DILocation(line: 55, column: 33, scope: !3601)
!3606 = !{!1193, !754, i64 8}
!3607 = !DILocation(line: 55, column: 25, scope: !3601)
!3608 = !DILocation(line: 56, column: 7, scope: !3601)
!3609 = !DILocation(line: 56, column: 15, scope: !3601)
!3610 = !DILocation(line: 56, column: 37, scope: !3601)
!3611 = !{!1193, !754, i64 32}
!3612 = !DILocation(line: 56, column: 29, scope: !3601)
!3613 = !DILocation(line: 57, column: 7, scope: !3601)
!3614 = !DILocation(line: 57, column: 15, scope: !3601)
!3615 = !{!1193, !754, i64 72}
!3616 = !DILocation(line: 57, column: 29, scope: !3601)
!3617 = !DILocation(line: 55, column: 7, scope: !3557)
!3618 = !DILocation(line: 123, column: 26, scope: !3600)
!3619 = !DILocation(line: 123, column: 19, scope: !3600)
!3620 = !DILocation(line: 0, scope: !3600)
!3621 = !DILocation(line: 124, column: 15, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3600, file: !724, line: 124, column: 11)
!3623 = !DILocation(line: 124, column: 11, scope: !3600)
!3624 = !DILocation(line: 135, column: 19, scope: !3600)
!3625 = !DILocation(line: 136, column: 12, scope: !3600)
!3626 = !DILocation(line: 136, column: 20, scope: !3600)
!3627 = !{!1193, !1194, i64 144}
!3628 = !DILocation(line: 167, column: 7, scope: !3600)
!3629 = !DILocation(line: 169, column: 10, scope: !3557)
!3630 = !DILocation(line: 169, column: 3, scope: !3557)
!3631 = !DILocation(line: 170, column: 1, scope: !3557)
!3632 = !DISubprogram(name: "fseeko", scope: !323, file: !323, line: 736, type: !3633, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!92, !3560, !258, !92}
!3635 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !651, file: !651, line: 100, type: !3636, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3639)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!94, !1451, !70, !94, !3638}
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3639 = !{!3640, !3641, !3642, !3643, !3644}
!3640 = !DILocalVariable(name: "pwc", arg: 1, scope: !3635, file: !651, line: 100, type: !1451)
!3641 = !DILocalVariable(name: "s", arg: 2, scope: !3635, file: !651, line: 100, type: !70)
!3642 = !DILocalVariable(name: "n", arg: 3, scope: !3635, file: !651, line: 100, type: !94)
!3643 = !DILocalVariable(name: "ps", arg: 4, scope: !3635, file: !651, line: 100, type: !3638)
!3644 = !DILocalVariable(name: "ret", scope: !3635, file: !651, line: 130, type: !94)
!3645 = !DILocation(line: 0, scope: !3635)
!3646 = !DILocation(line: 105, column: 9, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3635, file: !651, line: 105, column: 7)
!3648 = !DILocation(line: 105, column: 7, scope: !3635)
!3649 = !DILocation(line: 117, column: 10, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3635, file: !651, line: 117, column: 7)
!3651 = !DILocation(line: 117, column: 7, scope: !3635)
!3652 = !DILocation(line: 130, column: 16, scope: !3635)
!3653 = !DILocation(line: 135, column: 11, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3635, file: !651, line: 135, column: 7)
!3655 = !DILocation(line: 135, column: 25, scope: !3654)
!3656 = !DILocation(line: 135, column: 30, scope: !3654)
!3657 = !DILocation(line: 135, column: 7, scope: !3635)
!3658 = !DILocalVariable(name: "ps", arg: 1, scope: !3659, file: !1424, line: 1135, type: !3638)
!3659 = distinct !DISubprogram(name: "mbszero", scope: !1424, file: !1424, line: 1135, type: !3660, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3662)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !3638}
!3662 = !{!3658}
!3663 = !DILocation(line: 0, scope: !3659, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 137, column: 5, scope: !3654)
!3665 = !DILocalVariable(name: "__dest", arg: 1, scope: !3666, file: !1433, line: 57, type: !91)
!3666 = distinct !DISubprogram(name: "memset", scope: !1433, file: !1433, line: 57, type: !1434, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3667)
!3667 = !{!3665, !3668, !3669}
!3668 = !DILocalVariable(name: "__ch", arg: 2, scope: !3666, file: !1433, line: 57, type: !92)
!3669 = !DILocalVariable(name: "__len", arg: 3, scope: !3666, file: !1433, line: 57, type: !94)
!3670 = !DILocation(line: 0, scope: !3666, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 1137, column: 3, scope: !3659, inlinedAt: !3664)
!3672 = !DILocation(line: 59, column: 10, scope: !3666, inlinedAt: !3671)
!3673 = !DILocation(line: 137, column: 5, scope: !3654)
!3674 = !DILocation(line: 138, column: 11, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3635, file: !651, line: 138, column: 7)
!3676 = !DILocation(line: 138, column: 7, scope: !3635)
!3677 = !DILocation(line: 139, column: 5, scope: !3675)
!3678 = !DILocation(line: 143, column: 26, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3635, file: !651, line: 143, column: 7)
!3680 = !DILocation(line: 143, column: 41, scope: !3679)
!3681 = !DILocation(line: 143, column: 7, scope: !3635)
!3682 = !DILocation(line: 145, column: 15, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !651, line: 145, column: 11)
!3684 = distinct !DILexicalBlock(scope: !3679, file: !651, line: 144, column: 5)
!3685 = !DILocation(line: 145, column: 11, scope: !3684)
!3686 = !DILocation(line: 146, column: 32, scope: !3683)
!3687 = !DILocation(line: 146, column: 16, scope: !3683)
!3688 = !DILocation(line: 146, column: 14, scope: !3683)
!3689 = !DILocation(line: 146, column: 9, scope: !3683)
!3690 = !DILocation(line: 286, column: 1, scope: !3635)
!3691 = !DISubprogram(name: "mbsinit", scope: !3692, file: !3692, line: 293, type: !3693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !798)
!3692 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!92, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!3697 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !726, file: !726, line: 27, type: !2907, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3698)
!3698 = !{!3699, !3700, !3701, !3702}
!3699 = !DILocalVariable(name: "ptr", arg: 1, scope: !3697, file: !726, line: 27, type: !91)
!3700 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3697, file: !726, line: 27, type: !94)
!3701 = !DILocalVariable(name: "size", arg: 3, scope: !3697, file: !726, line: 27, type: !94)
!3702 = !DILocalVariable(name: "nbytes", scope: !3697, file: !726, line: 29, type: !94)
!3703 = !DILocation(line: 0, scope: !3697)
!3704 = !DILocation(line: 30, column: 7, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3697, file: !726, line: 30, column: 7)
!3706 = !DILocalVariable(name: "ptr", arg: 1, scope: !3707, file: !2999, line: 2057, type: !91)
!3707 = distinct !DISubprogram(name: "rpl_realloc", scope: !2999, file: !2999, line: 2057, type: !2991, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3708)
!3708 = !{!3706, !3709}
!3709 = !DILocalVariable(name: "size", arg: 2, scope: !3707, file: !2999, line: 2057, type: !94)
!3710 = !DILocation(line: 0, scope: !3707, inlinedAt: !3711)
!3711 = distinct !DILocation(line: 37, column: 10, scope: !3697)
!3712 = !DILocation(line: 2059, column: 24, scope: !3707, inlinedAt: !3711)
!3713 = !DILocation(line: 2059, column: 10, scope: !3707, inlinedAt: !3711)
!3714 = !DILocation(line: 37, column: 3, scope: !3697)
!3715 = !DILocation(line: 32, column: 7, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3705, file: !726, line: 31, column: 5)
!3717 = !DILocation(line: 32, column: 13, scope: !3716)
!3718 = !DILocation(line: 33, column: 7, scope: !3716)
!3719 = !DILocation(line: 38, column: 1, scope: !3697)
!3720 = distinct !DISubprogram(name: "hard_locale", scope: !669, file: !669, line: 28, type: !3721, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3723)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!218, !92}
!3723 = !{!3724, !3725}
!3724 = !DILocalVariable(name: "category", arg: 1, scope: !3720, file: !669, line: 28, type: !92)
!3725 = !DILocalVariable(name: "locale", scope: !3720, file: !669, line: 30, type: !3726)
!3726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3727)
!3727 = !{!3728}
!3728 = !DISubrange(count: 257)
!3729 = !DILocation(line: 0, scope: !3720)
!3730 = !DILocation(line: 30, column: 3, scope: !3720)
!3731 = !DILocation(line: 30, column: 8, scope: !3720)
!3732 = !DILocation(line: 32, column: 7, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3720, file: !669, line: 32, column: 7)
!3734 = !DILocation(line: 32, column: 7, scope: !3720)
!3735 = !DILocalVariable(name: "__s1", arg: 1, scope: !3736, file: !826, line: 1359, type: !70)
!3736 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3737)
!3737 = !{!3735, !3738}
!3738 = !DILocalVariable(name: "__s2", arg: 2, scope: !3736, file: !826, line: 1359, type: !70)
!3739 = !DILocation(line: 0, scope: !3736, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 35, column: 9, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3720, file: !669, line: 35, column: 7)
!3742 = !DILocation(line: 1361, column: 11, scope: !3736, inlinedAt: !3740)
!3743 = !DILocation(line: 1361, column: 10, scope: !3736, inlinedAt: !3740)
!3744 = !DILocation(line: 35, column: 29, scope: !3741)
!3745 = !DILocation(line: 0, scope: !3736, inlinedAt: !3746)
!3746 = distinct !DILocation(line: 35, column: 32, scope: !3741)
!3747 = !DILocation(line: 1361, column: 11, scope: !3736, inlinedAt: !3746)
!3748 = !DILocation(line: 1361, column: 10, scope: !3736, inlinedAt: !3746)
!3749 = !DILocation(line: 35, column: 7, scope: !3720)
!3750 = !DILocation(line: 46, column: 3, scope: !3720)
!3751 = !DILocation(line: 47, column: 1, scope: !3720)
!3752 = distinct !DISubprogram(name: "setlocale_null_r", scope: !731, file: !731, line: 154, type: !3753, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3755)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!92, !92, !239, !94}
!3755 = !{!3756, !3757, !3758}
!3756 = !DILocalVariable(name: "category", arg: 1, scope: !3752, file: !731, line: 154, type: !92)
!3757 = !DILocalVariable(name: "buf", arg: 2, scope: !3752, file: !731, line: 154, type: !239)
!3758 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3752, file: !731, line: 154, type: !94)
!3759 = !DILocation(line: 0, scope: !3752)
!3760 = !DILocation(line: 159, column: 10, scope: !3752)
!3761 = !DILocation(line: 159, column: 3, scope: !3752)
!3762 = distinct !DISubprogram(name: "setlocale_null", scope: !731, file: !731, line: 186, type: !3763, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !730, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!70, !92}
!3765 = !{!3766}
!3766 = !DILocalVariable(name: "category", arg: 1, scope: !3762, file: !731, line: 186, type: !92)
!3767 = !DILocation(line: 0, scope: !3762)
!3768 = !DILocation(line: 189, column: 10, scope: !3762)
!3769 = !DILocation(line: 189, column: 3, scope: !3762)
!3770 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !733, file: !733, line: 35, type: !3763, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3771)
!3771 = !{!3772, !3773}
!3772 = !DILocalVariable(name: "category", arg: 1, scope: !3770, file: !733, line: 35, type: !92)
!3773 = !DILocalVariable(name: "result", scope: !3770, file: !733, line: 37, type: !70)
!3774 = !DILocation(line: 0, scope: !3770)
!3775 = !DILocation(line: 37, column: 24, scope: !3770)
!3776 = !DILocation(line: 62, column: 3, scope: !3770)
!3777 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !733, file: !733, line: 66, type: !3753, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3778)
!3778 = !{!3779, !3780, !3781, !3782, !3783}
!3779 = !DILocalVariable(name: "category", arg: 1, scope: !3777, file: !733, line: 66, type: !92)
!3780 = !DILocalVariable(name: "buf", arg: 2, scope: !3777, file: !733, line: 66, type: !239)
!3781 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3777, file: !733, line: 66, type: !94)
!3782 = !DILocalVariable(name: "result", scope: !3777, file: !733, line: 111, type: !70)
!3783 = !DILocalVariable(name: "length", scope: !3784, file: !733, line: 125, type: !94)
!3784 = distinct !DILexicalBlock(scope: !3785, file: !733, line: 124, column: 5)
!3785 = distinct !DILexicalBlock(scope: !3777, file: !733, line: 113, column: 7)
!3786 = !DILocation(line: 0, scope: !3777)
!3787 = !DILocation(line: 0, scope: !3770, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 111, column: 24, scope: !3777)
!3789 = !DILocation(line: 37, column: 24, scope: !3770, inlinedAt: !3788)
!3790 = !DILocation(line: 113, column: 14, scope: !3785)
!3791 = !DILocation(line: 113, column: 7, scope: !3777)
!3792 = !DILocation(line: 116, column: 19, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3794, file: !733, line: 116, column: 11)
!3794 = distinct !DILexicalBlock(scope: !3785, file: !733, line: 114, column: 5)
!3795 = !DILocation(line: 116, column: 11, scope: !3794)
!3796 = !DILocation(line: 120, column: 16, scope: !3793)
!3797 = !DILocation(line: 120, column: 9, scope: !3793)
!3798 = !DILocation(line: 125, column: 23, scope: !3784)
!3799 = !DILocation(line: 0, scope: !3784)
!3800 = !DILocation(line: 126, column: 18, scope: !3801)
!3801 = distinct !DILexicalBlock(scope: !3784, file: !733, line: 126, column: 11)
!3802 = !DILocation(line: 126, column: 11, scope: !3784)
!3803 = !DILocation(line: 128, column: 39, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3801, file: !733, line: 127, column: 9)
!3805 = !DILocalVariable(name: "__dest", arg: 1, scope: !3806, file: !1433, line: 26, type: !3267)
!3806 = distinct !DISubprogram(name: "memcpy", scope: !1433, file: !1433, line: 26, type: !3265, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3807)
!3807 = !{!3805, !3808, !3809}
!3808 = !DILocalVariable(name: "__src", arg: 2, scope: !3806, file: !1433, line: 26, type: !957)
!3809 = !DILocalVariable(name: "__len", arg: 3, scope: !3806, file: !1433, line: 26, type: !94)
!3810 = !DILocation(line: 0, scope: !3806, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 128, column: 11, scope: !3804)
!3812 = !DILocation(line: 29, column: 10, scope: !3806, inlinedAt: !3811)
!3813 = !DILocation(line: 129, column: 11, scope: !3804)
!3814 = !DILocation(line: 133, column: 23, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3816, file: !733, line: 133, column: 15)
!3816 = distinct !DILexicalBlock(scope: !3801, file: !733, line: 132, column: 9)
!3817 = !DILocation(line: 133, column: 15, scope: !3816)
!3818 = !DILocation(line: 138, column: 44, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3815, file: !733, line: 134, column: 13)
!3820 = !DILocation(line: 0, scope: !3806, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 138, column: 15, scope: !3819)
!3822 = !DILocation(line: 29, column: 10, scope: !3806, inlinedAt: !3821)
!3823 = !DILocation(line: 139, column: 15, scope: !3819)
!3824 = !DILocation(line: 139, column: 32, scope: !3819)
!3825 = !DILocation(line: 140, column: 13, scope: !3819)
!3826 = !DILocation(line: 0, scope: !3785)
!3827 = !DILocation(line: 145, column: 1, scope: !3777)
