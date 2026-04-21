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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !351
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !317
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !341
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !343
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !345
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !347
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !349
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !353
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !355
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !360
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !365
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.41, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.42, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !368
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
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !746, metadata !DIExpression()), !dbg !747
  %2 = icmp eq i32 %0, 0, !dbg !748
  br i1 %2, label %8, label %3, !dbg !750

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !751, !tbaa !753
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !751
  %6 = load ptr, ptr @program_name, align 8, !dbg !751, !tbaa !753
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !751
  br label %31, !dbg !751

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !757
  %10 = load ptr, ptr @program_name, align 8, !dbg !757, !tbaa !753
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !757
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !759
  %13 = load ptr, ptr @stdout, align 8, !dbg !759, !tbaa !753
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !759
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !760
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !760
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !761
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !761
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !762, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata !781, metadata !775, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr poison, metadata !774, metadata !DIExpression()), !dbg !779
  tail call void @emit_bug_reporting_address() #37, !dbg !782
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !783
  call void @llvm.dbg.value(metadata ptr %17, metadata !777, metadata !DIExpression()), !dbg !779
  %18 = icmp eq ptr %17, null, !dbg !784
  br i1 %18, label %26, label %19, !dbg !786

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #38, !dbg !787
  %21 = icmp eq i32 %20, 0, !dbg !787
  br i1 %21, label %26, label %22, !dbg !788

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #37, !dbg !789
  %24 = load ptr, ptr @stdout, align 8, !dbg !789, !tbaa !753
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !789
  br label %26, !dbg !791

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !774, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !778, metadata !DIExpression()), !dbg !779
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !792
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #37, !dbg !792
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !793
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #37, !dbg !793
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !794
  unreachable, !dbg !794
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !795 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !799 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !805 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !808 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !212, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !213, metadata !DIExpression()), !dbg !811
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !812, !tbaa !813
  %3 = icmp eq i32 %2, -1, !dbg !815
  br i1 %3, label %4, label %16, !dbg !816

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #37, !dbg !817
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !214, metadata !DIExpression()), !dbg !818
  %6 = icmp eq ptr %5, null, !dbg !819
  br i1 %6, label %14, label %7, !dbg !820

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !821, !tbaa !822
  %9 = icmp eq i8 %8, 0, !dbg !821
  br i1 %9, label %14, label %10, !dbg !823

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !824, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !830, metadata !DIExpression()), !dbg !831
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #38, !dbg !833
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
  br label %121, !dbg !842

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !217, metadata !DIExpression()), !dbg !811
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #38, !dbg !843
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !844
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !219, metadata !DIExpression()), !dbg !811
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !845
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !220, metadata !DIExpression()), !dbg !811
  %26 = icmp eq ptr %25, null, !dbg !846
  br i1 %26, label %53, label %27, !dbg !847

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !848
  br i1 %28, label %53, label %29, !dbg !849

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !221, metadata !DIExpression()), !dbg !850
  tail call void @llvm.dbg.value(metadata i64 0, metadata !225, metadata !DIExpression()), !dbg !850
  %30 = icmp ult ptr %24, %25, !dbg !851
  br i1 %30, label %31, label %53, !dbg !852

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !811
  %33 = load ptr, ptr %32, align 8, !tbaa !753
  br label %34, !dbg !852

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !221, metadata !DIExpression()), !dbg !850
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !225, metadata !DIExpression()), !dbg !850
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !853
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !221, metadata !DIExpression()), !dbg !850
  %38 = load i8, ptr %35, align 1, !dbg !853, !tbaa !822
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !853
  %41 = load i16, ptr %40, align 2, !dbg !853, !tbaa !854
  %42 = freeze i16 %41, !dbg !856
  %43 = lshr i16 %42, 13, !dbg !856
  %44 = and i16 %43, 1, !dbg !856
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !857
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !225, metadata !DIExpression()), !dbg !850
  %47 = icmp ult ptr %37, %25, !dbg !851
  %48 = icmp ult i64 %46, 2, !dbg !858
  %49 = select i1 %47, i1 %48, i1 false, !dbg !858
  br i1 %49, label %34, label %50, !dbg !852, !llvm.loop !859

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !857
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !861
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !863
  br label %53, !dbg !863

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !811
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !220, metadata !DIExpression()), !dbg !811
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.16) #38, !dbg !864
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !226, metadata !DIExpression()), !dbg !811
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !865
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !227, metadata !DIExpression()), !dbg !811
  br label %58, !dbg !866

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !811
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !811
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !227, metadata !DIExpression()), !dbg !811
  %61 = load i8, ptr %59, align 1, !dbg !867, !tbaa !822
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !868

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !869
  %64 = load i8, ptr %63, align 1, !dbg !872, !tbaa !822
  %65 = icmp ne i8 %64, 45, !dbg !873
  %66 = select i1 %65, i1 %60, i1 false, !dbg !874
  br label %67, !dbg !874

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !217, metadata !DIExpression()), !dbg !811
  %69 = tail call ptr @__ctype_b_loc() #40, !dbg !875
  %70 = load ptr, ptr %69, align 8, !dbg !875, !tbaa !753
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !875
  %73 = load i16, ptr %72, align 2, !dbg !875, !tbaa !854
  %74 = and i16 %73, 8192, !dbg !875
  %75 = icmp eq i16 %74, 0, !dbg !875
  br i1 %75, label %89, label %76, !dbg !877

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !878
  br i1 %77, label %91, label %78, !dbg !881

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !882
  %80 = load i8, ptr %79, align 1, !dbg !882, !tbaa !822
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !882
  %83 = load i16, ptr %82, align 2, !dbg !882, !tbaa !854
  %84 = and i16 %83, 8192, !dbg !882
  %85 = icmp eq i16 %84, 0, !dbg !882
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !883
  br i1 %88, label %89, label %91, !dbg !883

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !884
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !227, metadata !DIExpression()), !dbg !811
  br label %58, !dbg !866, !llvm.loop !885

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !811
  %92 = ptrtoint ptr %24 to i64, !dbg !887
  %93 = load ptr, ptr @stdout, align 8, !dbg !887, !tbaa !753
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !887
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !888
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !890
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !824, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata !781, metadata !830, metadata !DIExpression()), !dbg !906
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !282, metadata !DIExpression()), !dbg !811
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #38, !dbg !908
  %96 = icmp eq i32 %95, 0, !dbg !908
  br i1 %96, label %100, label %97, !dbg !910

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #38, !dbg !911
  %99 = icmp eq i32 %98, 0, !dbg !911
  br i1 %99, label %100, label %103, !dbg !912

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !913
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #37, !dbg !913
  br label %106, !dbg !915

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !916
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #37, !dbg !916
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !918, !tbaa !753
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %107), !dbg !918
  %109 = load ptr, ptr @stdout, align 8, !dbg !919, !tbaa !753
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %109), !dbg !919
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !920
  %112 = sub i64 %111, %92, !dbg !920
  %113 = load ptr, ptr @stdout, align 8, !dbg !920, !tbaa !753
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !920
  %115 = load ptr, ptr @stdout, align 8, !dbg !921, !tbaa !753
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %115), !dbg !921
  %117 = load ptr, ptr @stdout, align 8, !dbg !922, !tbaa !753
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %117), !dbg !922
  %119 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !753
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !923
  br label %121, !dbg !924

121:                                              ; preds = %106, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !960 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !965, metadata !DIExpression()), !dbg !968
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !966, metadata !DIExpression()), !dbg !968
  %3 = load ptr, ptr %1, align 8, !dbg !969, !tbaa !753
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !970
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !971
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !972
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !973
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !974
  %8 = load ptr, ptr @Version, align 8, !dbg !975, !tbaa !753
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !976
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !977
  %10 = load i32, ptr @optind, align 4, !dbg !978, !tbaa !813
  %11 = icmp slt i32 %10, %0, !dbg !980
  br i1 %11, label %12, label %19, !dbg !981

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !982
  %14 = load i32, ptr @optind, align 4, !dbg !982, !tbaa !813
  %15 = sext i32 %14 to i64, !dbg !982
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !982
  %17 = load ptr, ptr %16, align 8, !dbg !982, !tbaa !753
  %18 = tail call ptr @quote(ptr noundef %17) #37, !dbg !982
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13, ptr noundef %18) #37, !dbg !982
  tail call void @usage(i32 noundef 1) #41, !dbg !984
  unreachable, !dbg !984

19:                                               ; preds = %2
  %20 = tail call ptr @getlogin() #37, !dbg !985
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !967, metadata !DIExpression()), !dbg !968
  %21 = icmp eq ptr %20, null, !dbg !986
  br i1 %21, label %22, label %24, !dbg !988

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !989
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %23) #37, !dbg !989
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
declare !dbg !1003 noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #11 !dbg !1006 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1008, metadata !DIExpression()), !dbg !1009
  store ptr %0, ptr @file_name, align 8, !dbg !1010, !tbaa !753
  ret void, !dbg !1011
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #11 !dbg !1012 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1016, metadata !DIExpression()), !dbg !1017
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1018, !tbaa !1019
  ret void, !dbg !1021
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1022 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1027, !tbaa !753
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1028
  %3 = icmp eq i32 %2, 0, !dbg !1029
  br i1 %3, label %22, label %4, !dbg !1030

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1031, !tbaa !1019, !range !1032, !noundef !781
  %6 = icmp eq i8 %5, 0, !dbg !1031
  br i1 %6, label %11, label %7, !dbg !1033

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1034
  %9 = load i32, ptr %8, align 4, !dbg !1034, !tbaa !813
  %10 = icmp eq i32 %9, 32, !dbg !1035
  br i1 %10, label %22, label %11, !dbg !1036

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #37, !dbg !1037
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1024, metadata !DIExpression()), !dbg !1038
  %13 = load ptr, ptr @file_name, align 8, !dbg !1039, !tbaa !753
  %14 = icmp eq ptr %13, null, !dbg !1039
  %15 = tail call ptr @__errno_location() #40, !dbg !1041
  %16 = load i32, ptr %15, align 4, !dbg !1041, !tbaa !813
  br i1 %14, label %19, label %17, !dbg !1042

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1043
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #37, !dbg !1043
  br label %20, !dbg !1043

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #37, !dbg !1044
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1045, !tbaa !813
  tail call void @_exit(i32 noundef %21) #39, !dbg !1046
  unreachable, !dbg !1046

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1047, !tbaa !753
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1049
  %25 = icmp eq i32 %24, 0, !dbg !1050
  br i1 %25, label %28, label %26, !dbg !1051

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1052, !tbaa !813
  tail call void @_exit(i32 noundef %27) #39, !dbg !1053
  unreachable, !dbg !1053

28:                                               ; preds = %22
  ret void, !dbg !1054
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1055 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: noreturn
declare !dbg !1059 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #13 !dbg !1060 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1064, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1065, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1066, metadata !DIExpression()), !dbg !1068
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1067, metadata !DIExpression(DW_OP_deref)), !dbg !1068
  tail call fastcc void @flush_stdout(), !dbg !1069
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1070, !tbaa !753
  %7 = icmp eq ptr %6, null, !dbg !1070
  br i1 %7, label %9, label %8, !dbg !1072

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1073
  br label %13, !dbg !1073

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1074, !tbaa !753
  %11 = tail call ptr @getprogname() #38, !dbg !1074
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %11) #37, !dbg !1074
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1076, !tbaa.struct !1077
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1076
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1076
  ret void, !dbg !1078
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1079 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1081, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 1, metadata !1083, metadata !DIExpression()), !dbg !1088
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1091
  %2 = icmp slt i32 %1, 0, !dbg !1092
  br i1 %2, label %6, label %3, !dbg !1093

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1094, !tbaa !753
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1094
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
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1102
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1098, metadata !DIExpression()), !dbg !1103
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1099, metadata !DIExpression()), !dbg !1103
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1100, metadata !DIExpression()), !dbg !1103
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1101, metadata !DIExpression(DW_OP_deref)), !dbg !1103
  %7 = load ptr, ptr @stderr, align 8, !dbg !1104, !tbaa !753
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1105, !noalias !1149
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1153
  call void @llvm.dbg.value(metadata ptr %7, metadata !1145, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %2, metadata !1146, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr poison, metadata !1147, metadata !DIExpression(DW_OP_deref)), !dbg !1154
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !1105
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1105, !noalias !1149
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1155, !tbaa !813
  %10 = add i32 %9, 1, !dbg !1155
  store i32 %10, ptr @error_message_count, align 4, !dbg !1155, !tbaa !813
  %11 = icmp eq i32 %1, 0, !dbg !1156
  br i1 %11, label %21, label %12, !dbg !1158

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1159, metadata !DIExpression(), metadata !1102, metadata ptr %5, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %1, metadata !1162, metadata !DIExpression()), !dbg !1167
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1169
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1170
  call void @llvm.dbg.value(metadata ptr %13, metadata !1163, metadata !DIExpression()), !dbg !1167
  %14 = icmp eq ptr %13, null, !dbg !1171
  br i1 %14, label %15, label %17, !dbg !1173

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #37, !dbg !1174
  call void @llvm.dbg.value(metadata ptr %16, metadata !1163, metadata !DIExpression()), !dbg !1167
  br label %17, !dbg !1175

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1167
  call void @llvm.dbg.value(metadata ptr %18, metadata !1163, metadata !DIExpression()), !dbg !1167
  %19 = load ptr, ptr @stderr, align 8, !dbg !1176, !tbaa !753
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %18) #37, !dbg !1176
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1177
  br label %21, !dbg !1178

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1179, !tbaa !753
  call void @llvm.dbg.value(metadata i32 10, metadata !1180, metadata !DIExpression()), !dbg !1187
  call void @llvm.dbg.value(metadata ptr %22, metadata !1186, metadata !DIExpression()), !dbg !1187
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1189
  %24 = load ptr, ptr %23, align 8, !dbg !1189, !tbaa !1190
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1189
  %26 = load ptr, ptr %25, align 8, !dbg !1189, !tbaa !1193
  %27 = icmp ult ptr %24, %26, !dbg !1189
  br i1 %27, label %30, label %28, !dbg !1189, !prof !1194

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !1189
  br label %32, !dbg !1189

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1189
  store ptr %31, ptr %23, align 8, !dbg !1189, !tbaa !1190
  store i8 10, ptr %24, align 1, !dbg !1189, !tbaa !822
  br label %32, !dbg !1189

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1195, !tbaa !753
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !1195
  %35 = icmp eq i32 %0, 0, !dbg !1196
  br i1 %35, label %37, label %36, !dbg !1198

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !1199
  unreachable, !dbg !1199

37:                                               ; preds = %32
  ret void, !dbg !1200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1201 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1204 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1207 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1210 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1213 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1217 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1225
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1224, metadata !DIExpression(), metadata !1225, metadata ptr %4, metadata !DIExpression()), !dbg !1226
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1221, metadata !DIExpression()), !dbg !1226
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1222, metadata !DIExpression()), !dbg !1226
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1223, metadata !DIExpression()), !dbg !1226
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !1227
  call void @llvm.va_start(ptr nonnull %4), !dbg !1228
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !1229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1229, !tbaa.struct !1077
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #42, !dbg !1229
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !1229
  call void @llvm.va_end(ptr nonnull %4), !dbg !1230
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !1231
  ret void, !dbg !1231
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #13 !dbg !319 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !335, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !336, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !337, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !338, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !339, metadata !DIExpression()), !dbg !1232
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !340, metadata !DIExpression(DW_OP_deref)), !dbg !1232
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1233, !tbaa !813
  %9 = icmp eq i32 %8, 0, !dbg !1233
  br i1 %9, label %24, label %10, !dbg !1235

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1236, !tbaa !813
  %12 = icmp eq i32 %11, %3, !dbg !1239
  br i1 %12, label %13, label %23, !dbg !1240

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1241, !tbaa !753
  %15 = icmp eq ptr %14, %2, !dbg !1242
  br i1 %15, label %37, label %16, !dbg !1243

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1244
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1245
  br i1 %19, label %20, label %23, !dbg !1245

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1246
  %22 = icmp eq i32 %21, 0, !dbg !1247
  br i1 %22, label %37, label %23, !dbg !1248

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1249, !tbaa !753
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1250, !tbaa !813
  br label %24, !dbg !1251

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1252
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1253, !tbaa !753
  %26 = icmp eq ptr %25, null, !dbg !1253
  br i1 %26, label %28, label %27, !dbg !1255

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1256
  br label %32, !dbg !1256

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1257, !tbaa !753
  %30 = tail call ptr @getprogname() #38, !dbg !1257
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %30) #37, !dbg !1257
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1259, !tbaa !753
  %34 = icmp eq ptr %2, null, !dbg !1259
  %35 = select i1 %34, ptr @.str.3.31, ptr @.str.2.32, !dbg !1259
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !1259
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1260
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1260, !tbaa.struct !1077
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1260
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1260
  br label %37, !dbg !1261

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1261
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1262 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1272
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1271, metadata !DIExpression(), metadata !1272, metadata ptr %6, metadata !DIExpression()), !dbg !1273
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1266, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1267, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1268, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1269, metadata !DIExpression()), !dbg !1273
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1270, metadata !DIExpression()), !dbg !1273
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !1274
  call void @llvm.va_start(ptr nonnull %6), !dbg !1275
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1276, !tbaa.struct !1077
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #42, !dbg !1276
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !1276
  call void @llvm.va_end(ptr nonnull %6), !dbg !1277
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !1278
  ret void, !dbg !1278
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #17 !dbg !1279 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1282, !tbaa !753
  ret ptr %1, !dbg !1283
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1284 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1314
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1299, metadata !DIExpression(), metadata !1314, metadata ptr %7, metadata !DIExpression()), !dbg !1315
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1289, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1290, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1291, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1292, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1293, metadata !DIExpression()), !dbg !1316
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1294, metadata !DIExpression()), !dbg !1316
  %9 = load i32, ptr @opterr, align 4, !dbg !1317, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1295, metadata !DIExpression()), !dbg !1316
  store i32 0, ptr @opterr, align 4, !dbg !1318, !tbaa !813
  %10 = icmp eq i32 %0, 2, !dbg !1319
  br i1 %10, label %11, label %16, !dbg !1320

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1321
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1296, metadata !DIExpression()), !dbg !1322
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1323

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #37, !dbg !1324
  br label %16, !dbg !1325

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !1326
  call void @llvm.va_start(ptr nonnull %7), !dbg !1327
  %15 = load ptr, ptr @stdout, align 8, !dbg !1328, !tbaa !753
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1329, !tbaa.struct !1077
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1329
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #37, !dbg !1329
  call void @exit(i32 noundef 0) #39, !dbg !1330
  unreachable, !dbg !1330

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1331, !tbaa !813
  store i32 0, ptr @optind, align 4, !dbg !1332, !tbaa !813
  ret void, !dbg !1333
}

; Function Attrs: nounwind
declare !dbg !1334 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1340 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1359
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1354, metadata !DIExpression(), metadata !1359, metadata ptr %8, metadata !DIExpression()), !dbg !1360
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1344, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1345, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1346, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1347, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1348, metadata !DIExpression()), !dbg !1361
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1349, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1361
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1350, metadata !DIExpression()), !dbg !1361
  %10 = load i32, ptr @opterr, align 4, !dbg !1362, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1351, metadata !DIExpression()), !dbg !1361
  store i32 1, ptr @opterr, align 4, !dbg !1363, !tbaa !813
  %11 = select i1 %5, ptr @.str.1.45, ptr @.str.40, !dbg !1364
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1352, metadata !DIExpression()), !dbg !1361
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1365
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1353, metadata !DIExpression()), !dbg !1361
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1366

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #37, !dbg !1367
  call void @llvm.va_start(ptr nonnull %8), !dbg !1368
  %14 = load ptr, ptr @stdout, align 8, !dbg !1369, !tbaa !753
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #37, !dbg !1370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1370, !tbaa.struct !1077
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #37, !dbg !1370
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #37, !dbg !1370
  call void @exit(i32 noundef 0) #39, !dbg !1371
  unreachable, !dbg !1371

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1372, !tbaa !813
  br label %17, !dbg !1373

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #37, !dbg !1374
  br label %19, !dbg !1375

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1375, !tbaa !813
  ret void, !dbg !1376
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #18 !dbg !1377 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1379, metadata !DIExpression()), !dbg !1382
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1383
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1380, metadata !DIExpression()), !dbg !1382
  %3 = icmp eq ptr %2, null, !dbg !1384
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1384
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1384
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1381, metadata !DIExpression()), !dbg !1382
  %6 = ptrtoint ptr %5 to i64, !dbg !1385
  %7 = ptrtoint ptr %0 to i64, !dbg !1385
  %8 = sub i64 %6, %7, !dbg !1385
  %9 = icmp sgt i64 %8, 6, !dbg !1387
  br i1 %9, label %10, label %19, !dbg !1388

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1389
  call void @llvm.dbg.value(metadata ptr %11, metadata !1390, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata ptr @.str.50, metadata !1395, metadata !DIExpression()), !dbg !1397
  call void @llvm.dbg.value(metadata i64 7, metadata !1396, metadata !DIExpression()), !dbg !1397
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.50, i64 7), !dbg !1399
  %13 = icmp eq i32 %12, 0, !dbg !1400
  br i1 %13, label %14, label %19, !dbg !1401

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1379, metadata !DIExpression()), !dbg !1382
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.51, i64 noundef 3) #38, !dbg !1402
  %16 = icmp eq i32 %15, 0, !dbg !1405
  %17 = select i1 %16, i64 3, i64 0, !dbg !1406
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1406
  br label %19, !dbg !1406

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1382
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1381, metadata !DIExpression()), !dbg !1382
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1379, metadata !DIExpression()), !dbg !1382
  store ptr %20, ptr @program_name, align 8, !dbg !1407, !tbaa !753
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1408, !tbaa !753
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1409, !tbaa !753
  ret void, !dbg !1410
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1411 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !401 {
  %3 = alloca i32, align 4, !DIAssignID !1412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !411, metadata !DIExpression(), metadata !1412, metadata ptr %3, metadata !DIExpression()), !dbg !1413
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1414
  call void @llvm.dbg.assign(metadata i1 undef, metadata !416, metadata !DIExpression(), metadata !1414, metadata ptr %4, metadata !DIExpression()), !dbg !1413
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !408, metadata !DIExpression()), !dbg !1413
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !409, metadata !DIExpression()), !dbg !1413
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1415
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !410, metadata !DIExpression()), !dbg !1413
  %6 = icmp eq ptr %5, %0, !dbg !1416
  br i1 %6, label %7, label %14, !dbg !1418

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1419
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1420
  call void @llvm.dbg.value(metadata ptr %4, metadata !1421, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata ptr %4, metadata !1430, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 0, metadata !1436, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 8, metadata !1437, metadata !DIExpression()), !dbg !1438
  store i64 0, ptr %4, align 8, !dbg !1440
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1441
  %9 = icmp eq i64 %8, 2, !dbg !1443
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1444
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1413
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1445
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1445
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1413
  ret ptr %15, !dbg !1445
}

; Function Attrs: nounwind
declare !dbg !1446 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1452 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1457, metadata !DIExpression()), !dbg !1460
  %2 = tail call ptr @__errno_location() #40, !dbg !1461
  %3 = load i32, ptr %2, align 4, !dbg !1461, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1458, metadata !DIExpression()), !dbg !1460
  %4 = icmp eq ptr %0, null, !dbg !1462
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1462
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1463
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1459, metadata !DIExpression()), !dbg !1460
  store i32 %3, ptr %2, align 4, !dbg !1464, !tbaa !813
  ret ptr %6, !dbg !1465
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #20 !dbg !1466 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1472, metadata !DIExpression()), !dbg !1473
  %2 = icmp eq ptr %0, null, !dbg !1474
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1474
  %4 = load i32, ptr %3, align 8, !dbg !1475, !tbaa !1476
  ret i32 %4, !dbg !1478
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1479 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1483, metadata !DIExpression()), !dbg !1485
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1484, metadata !DIExpression()), !dbg !1485
  %3 = icmp eq ptr %0, null, !dbg !1486
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1486
  store i32 %1, ptr %4, align 8, !dbg !1487, !tbaa !1476
  ret void, !dbg !1488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !1489 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1493, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1494, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1495, metadata !DIExpression()), !dbg !1501
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1496, metadata !DIExpression()), !dbg !1501
  %4 = icmp eq ptr %0, null, !dbg !1502
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1502
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1503
  %7 = lshr i8 %1, 5, !dbg !1504
  %8 = zext nneg i8 %7 to i64, !dbg !1504
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1505
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1497, metadata !DIExpression()), !dbg !1501
  %10 = and i8 %1, 31, !dbg !1506
  %11 = zext nneg i8 %10 to i32, !dbg !1506
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1499, metadata !DIExpression()), !dbg !1501
  %12 = load i32, ptr %9, align 4, !dbg !1507, !tbaa !813
  %13 = lshr i32 %12, %11, !dbg !1508
  %14 = and i32 %13, 1, !dbg !1509
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1500, metadata !DIExpression()), !dbg !1501
  %15 = xor i32 %13, %2, !dbg !1510
  %16 = and i32 %15, 1, !dbg !1510
  %17 = shl nuw i32 %16, %11, !dbg !1511
  %18 = xor i32 %17, %12, !dbg !1512
  store i32 %18, ptr %9, align 4, !dbg !1512, !tbaa !813
  ret i32 %14, !dbg !1513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !1514 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1518, metadata !DIExpression()), !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1519, metadata !DIExpression()), !dbg !1521
  %3 = icmp eq ptr %0, null, !dbg !1522
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1524
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1518, metadata !DIExpression()), !dbg !1521
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1525
  %6 = load i32, ptr %5, align 4, !dbg !1525, !tbaa !1526
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i32 %1, ptr %5, align 4, !dbg !1527, !tbaa !1526
  ret i32 %6, !dbg !1528
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1529 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1533, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1534, metadata !DIExpression()), !dbg !1536
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1535, metadata !DIExpression()), !dbg !1536
  %4 = icmp eq ptr %0, null, !dbg !1537
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1539
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1533, metadata !DIExpression()), !dbg !1536
  store i32 10, ptr %5, align 8, !dbg !1540, !tbaa !1476
  %6 = icmp ne ptr %1, null, !dbg !1541
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1543
  br i1 %8, label %10, label %9, !dbg !1543

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1544
  unreachable, !dbg !1544

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1545
  store ptr %1, ptr %11, align 8, !dbg !1546, !tbaa !1547
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1548
  store ptr %2, ptr %12, align 8, !dbg !1549, !tbaa !1550
  ret void, !dbg !1551
}

; Function Attrs: noreturn nounwind
declare !dbg !1552 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1553 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1557, metadata !DIExpression()), !dbg !1565
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1558, metadata !DIExpression()), !dbg !1565
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1559, metadata !DIExpression()), !dbg !1565
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1560, metadata !DIExpression()), !dbg !1565
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1561, metadata !DIExpression()), !dbg !1565
  %6 = icmp eq ptr %4, null, !dbg !1566
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1566
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1562, metadata !DIExpression()), !dbg !1565
  %8 = tail call ptr @__errno_location() #40, !dbg !1567
  %9 = load i32, ptr %8, align 4, !dbg !1567, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1563, metadata !DIExpression()), !dbg !1565
  %10 = load i32, ptr %7, align 8, !dbg !1568, !tbaa !1476
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1569
  %12 = load i32, ptr %11, align 4, !dbg !1569, !tbaa !1526
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1570
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1571
  %15 = load ptr, ptr %14, align 8, !dbg !1571, !tbaa !1547
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1572
  %17 = load ptr, ptr %16, align 8, !dbg !1572, !tbaa !1550
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1573
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i32 %9, ptr %8, align 4, !dbg !1574, !tbaa !813
  ret i64 %18, !dbg !1575
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1576 {
  %10 = alloca i32, align 4, !DIAssignID !1644
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1645
  %12 = alloca i32, align 4, !DIAssignID !1646
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1647
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1648
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1622, metadata !DIExpression(), metadata !1648, metadata ptr %14, metadata !DIExpression()), !dbg !1649
  %15 = alloca i32, align 4, !DIAssignID !1650
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1625, metadata !DIExpression(), metadata !1650, metadata ptr %15, metadata !DIExpression()), !dbg !1651
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1582, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1584, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1585, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1586, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1587, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1588, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1589, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1590, metadata !DIExpression()), !dbg !1652
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1653
  %17 = icmp eq i64 %16, 1, !dbg !1654
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1594, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1597, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1652
  %18 = and i32 %5, 2, !dbg !1655
  %19 = icmp ne i32 %18, 0, !dbg !1655
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !1655

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !1656
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !1657
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !1658
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !1595, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !1594, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !1585, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1590, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !1589, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !1586, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.label(metadata !1600), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1652
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
  ], !dbg !1660

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1652
  br label %101, !dbg !1661

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1652
  br i1 %36, label %101, label %42, !dbg !1661

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !1662
  br i1 %43, label %101, label %44, !dbg !1666

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !1662, !tbaa !822
  br label %101, !dbg !1662

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !1646, metadata ptr %12, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !1647, metadata ptr %13, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata ptr @.str.11.64, metadata !514, metadata !DIExpression()), !dbg !1667
  call void @llvm.dbg.value(metadata i32 %28, metadata !515, metadata !DIExpression()), !dbg !1667
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.11.64, i32 noundef 5) #37, !dbg !1671
  call void @llvm.dbg.value(metadata ptr %46, metadata !516, metadata !DIExpression()), !dbg !1667
  %47 = icmp eq ptr %46, @.str.11.64, !dbg !1672
  br i1 %47, label %48, label %57, !dbg !1674

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1675
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1676
  call void @llvm.dbg.value(metadata ptr %13, metadata !1677, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata ptr %13, metadata !1685, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i64 8, metadata !1689, metadata !DIExpression()), !dbg !1690
  store i64 0, ptr %13, align 8, !dbg !1692
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1693
  %50 = icmp eq i64 %49, 3, !dbg !1695
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !1696
  %54 = icmp eq i32 %28, 9, !dbg !1696
  %55 = select i1 %54, ptr @.str.10.66, ptr @.str.12.67, !dbg !1696
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !1696
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1697
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !1667
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !1589, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !517, metadata !DIExpression(), metadata !1644, metadata ptr %10, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.assign(metadata i1 undef, metadata !518, metadata !DIExpression(), metadata !1645, metadata ptr %11, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata ptr @.str.12.67, metadata !514, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %28, metadata !515, metadata !DIExpression()), !dbg !1698
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.65, ptr noundef nonnull @.str.12.67, i32 noundef 5) #37, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %59, metadata !516, metadata !DIExpression()), !dbg !1698
  %60 = icmp eq ptr %59, @.str.12.67, !dbg !1701
  br i1 %60, label %61, label %70, !dbg !1702

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1703
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1704
  call void @llvm.dbg.value(metadata ptr %11, metadata !1677, metadata !DIExpression()), !dbg !1705
  call void @llvm.dbg.value(metadata ptr %11, metadata !1685, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i64 8, metadata !1689, metadata !DIExpression()), !dbg !1707
  store i64 0, ptr %11, align 8, !dbg !1709
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1710
  %63 = icmp eq i64 %62, 3, !dbg !1711
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !1712
  %67 = icmp eq i32 %28, 9, !dbg !1712
  %68 = select i1 %67, ptr @.str.10.66, ptr @.str.12.67, !dbg !1712
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !1712
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1713
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1713
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1590, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1589, metadata !DIExpression()), !dbg !1652
  br i1 %36, label %88, label %73, !dbg !1714

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !1602, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1652
  %74 = load i8, ptr %71, align 1, !dbg !1716, !tbaa !822
  %75 = icmp eq i8 %74, 0, !dbg !1718
  br i1 %75, label %88, label %.preheader11, !dbg !1718

.preheader11:                                     ; preds = %73
  br label %76, !dbg !1718

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !1602, metadata !DIExpression()), !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !1592, metadata !DIExpression()), !dbg !1652
  %80 = icmp ult i64 %79, %39, !dbg !1719
  br i1 %80, label %81, label %83, !dbg !1722

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !1719
  store i8 %77, ptr %82, align 1, !dbg !1719, !tbaa !822
  br label %83, !dbg !1719

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !1722
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1592, metadata !DIExpression()), !dbg !1652
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !1723
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !1602, metadata !DIExpression()), !dbg !1715
  %86 = load i8, ptr %85, align 1, !dbg !1716, !tbaa !822
  %87 = icmp eq i8 %86, 0, !dbg !1718
  br i1 %87, label %.loopexit12, label %76, !dbg !1718, !llvm.loop !1724

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !1722
  br label %88, !dbg !1726

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !1727
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !1594, metadata !DIExpression()), !dbg !1652
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !1726
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !1595, metadata !DIExpression()), !dbg !1652
  br label %101, !dbg !1728

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1597, metadata !DIExpression()), !dbg !1652
  br label %101, !dbg !1729

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1652
  br label %101, !dbg !1730

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1652
  br i1 %36, label %101, label %95, !dbg !1731

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1652
  br i1 %36, label %101, label %95, !dbg !1730

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !1732
  br i1 %97, label %101, label %98, !dbg !1736

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !1732, !tbaa !822
  br label %101, !dbg !1732

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1652
  br label %101, !dbg !1737

100:                                              ; preds = %27
  call void @abort() #39, !dbg !1738
  unreachable, !dbg !1738

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !1727
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.66, %42 ], [ @.str.10.66, %44 ], [ @.str.10.66, %41 ], [ %33, %27 ], [ @.str.12.67, %95 ], [ @.str.12.67, %98 ], [ @.str.12.67, %94 ], [ @.str.10.66, %40 ], [ @.str.12.67, %91 ], [ @.str.12.67, %92 ], [ @.str.12.67, %93 ], !dbg !1652
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !1652
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1595, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !1594, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !1590, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !1589, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !1586, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1607, metadata !DIExpression()), !dbg !1739
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
  br label %121, !dbg !1740

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !1727
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !1656
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !1741
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !1585, metadata !DIExpression()), !dbg !1652
  %130 = icmp eq i64 %122, -1, !dbg !1742
  br i1 %130, label %131, label %135, !dbg !1743

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1744
  %133 = load i8, ptr %132, align 1, !dbg !1744, !tbaa !822
  %134 = icmp eq i8 %133, 0, !dbg !1745
  br i1 %134, label %573, label %137, !dbg !1746

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !1747
  br i1 %136, label %573, label %137, !dbg !1746

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1613, metadata !DIExpression()), !dbg !1748
  br i1 %113, label %138, label %151, !dbg !1749

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !1751
  %140 = select i1 %130, i1 %114, i1 false, !dbg !1752
  br i1 %140, label %141, label %143, !dbg !1752

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1753
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !1585, metadata !DIExpression()), !dbg !1652
  br label %143, !dbg !1754

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !1754
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !1585, metadata !DIExpression()), !dbg !1652
  %145 = icmp ugt i64 %139, %144, !dbg !1755
  br i1 %145, label %151, label %146, !dbg !1756

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1757
  call void @llvm.dbg.value(metadata ptr %147, metadata !1758, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata ptr %106, metadata !1761, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %107, metadata !1762, metadata !DIExpression()), !dbg !1763
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !1765
  %149 = icmp eq i32 %148, 0, !dbg !1766
  %150 = and i1 %149, %109, !dbg !1767
  br i1 %150, label %.loopexit7, label %151, !dbg !1767

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !1585, metadata !DIExpression()), !dbg !1652
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !1768
  %155 = load i8, ptr %154, align 1, !dbg !1768, !tbaa !822
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !1614, metadata !DIExpression()), !dbg !1748
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
  ], !dbg !1769

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !1770

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !1771

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1748
  %159 = select i1 %110, i1 true, i1 %127, !dbg !1775
  br i1 %159, label %176, label %160, !dbg !1775

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !1777
  br i1 %161, label %162, label %164, !dbg !1781

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1777
  store i8 39, ptr %163, align 1, !dbg !1777, !tbaa !822
  br label %164, !dbg !1777

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !1781
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !1592, metadata !DIExpression()), !dbg !1652
  %166 = icmp ult i64 %165, %129, !dbg !1782
  br i1 %166, label %167, label %169, !dbg !1785

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !1782
  store i8 36, ptr %168, align 1, !dbg !1782, !tbaa !822
  br label %169, !dbg !1782

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !1785
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !1592, metadata !DIExpression()), !dbg !1652
  %171 = icmp ult i64 %170, %129, !dbg !1786
  br i1 %171, label %172, label %174, !dbg !1789

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !1786
  store i8 39, ptr %173, align 1, !dbg !1786, !tbaa !822
  br label %174, !dbg !1786

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !1789
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1652
  br label %176, !dbg !1790

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !1652
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !1592, metadata !DIExpression()), !dbg !1652
  %179 = icmp ult i64 %177, %129, !dbg !1791
  br i1 %179, label %180, label %182, !dbg !1794

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !1791
  store i8 92, ptr %181, align 1, !dbg !1791, !tbaa !822
  br label %182, !dbg !1791

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !1592, metadata !DIExpression()), !dbg !1652
  br i1 %110, label %184, label %476, !dbg !1795

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !1797
  %186 = icmp ult i64 %185, %152, !dbg !1798
  br i1 %186, label %187, label %433, !dbg !1799

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !1800
  %189 = load i8, ptr %188, align 1, !dbg !1800, !tbaa !822
  %190 = add i8 %189, -48, !dbg !1801
  %191 = icmp ult i8 %190, 10, !dbg !1801
  br i1 %191, label %192, label %433, !dbg !1801

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !1802
  br i1 %193, label %194, label %196, !dbg !1806

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !1802
  store i8 48, ptr %195, align 1, !dbg !1802, !tbaa !822
  br label %196, !dbg !1802

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !1806
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1592, metadata !DIExpression()), !dbg !1652
  %198 = icmp ult i64 %197, %129, !dbg !1807
  br i1 %198, label %199, label %201, !dbg !1810

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !1807
  store i8 48, ptr %200, align 1, !dbg !1807, !tbaa !822
  br label %201, !dbg !1807

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !1810
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !1592, metadata !DIExpression()), !dbg !1652
  br label %433, !dbg !1811

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !1812

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !1813

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !1814

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !1816

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !1818
  %209 = icmp ult i64 %208, %152, !dbg !1819
  br i1 %209, label %210, label %433, !dbg !1820

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !1821
  %212 = load i8, ptr %211, align 1, !dbg !1821, !tbaa !822
  %213 = icmp eq i8 %212, 63, !dbg !1822
  br i1 %213, label %214, label %433, !dbg !1823

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !1824
  %216 = load i8, ptr %215, align 1, !dbg !1824, !tbaa !822
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
  ], !dbg !1825

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !1826

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !1607, metadata !DIExpression()), !dbg !1739
  %219 = icmp ult i64 %123, %129, !dbg !1828
  br i1 %219, label %220, label %222, !dbg !1831

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1828
  store i8 63, ptr %221, align 1, !dbg !1828, !tbaa !822
  br label %222, !dbg !1828

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !1831
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !1592, metadata !DIExpression()), !dbg !1652
  %224 = icmp ult i64 %223, %129, !dbg !1832
  br i1 %224, label %225, label %227, !dbg !1835

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !1832
  store i8 34, ptr %226, align 1, !dbg !1832, !tbaa !822
  br label %227, !dbg !1832

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !1835
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !1592, metadata !DIExpression()), !dbg !1652
  %229 = icmp ult i64 %228, %129, !dbg !1836
  br i1 %229, label %230, label %232, !dbg !1839

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !1836
  store i8 34, ptr %231, align 1, !dbg !1836, !tbaa !822
  br label %232, !dbg !1836

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !1839
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !1592, metadata !DIExpression()), !dbg !1652
  %234 = icmp ult i64 %233, %129, !dbg !1840
  br i1 %234, label %235, label %237, !dbg !1843

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !1840
  store i8 63, ptr %236, align 1, !dbg !1840, !tbaa !822
  br label %237, !dbg !1840

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !1592, metadata !DIExpression()), !dbg !1652
  br label %433, !dbg !1844

239:                                              ; preds = %151
  br label %249, !dbg !1845

240:                                              ; preds = %151
  br label %249, !dbg !1846

241:                                              ; preds = %151
  br label %247, !dbg !1847

242:                                              ; preds = %151
  br label %247, !dbg !1848

243:                                              ; preds = %151
  br label %249, !dbg !1849

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !1850

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !1851

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !1854

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !1856
  call void @llvm.dbg.label(metadata !1615), !dbg !1857
  br i1 %118, label %.loopexit8, label %249, !dbg !1858

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !1856
  call void @llvm.dbg.label(metadata !1618), !dbg !1860
  br i1 %108, label %487, label %444, !dbg !1861

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !1862

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !1863, !tbaa !822
  %254 = icmp eq i8 %253, 0, !dbg !1865
  br i1 %254, label %255, label %433, !dbg !1866

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !1867
  br i1 %256, label %257, label %433, !dbg !1869

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1748
  br label %258, !dbg !1870

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1748
  br i1 %115, label %260, label %433, !dbg !1871

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !1873

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1613, metadata !DIExpression()), !dbg !1748
  br i1 %115, label %262, label %433, !dbg !1874

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !1875

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !1878
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !1880
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !1880
  %268 = select i1 %266, i64 %129, i64 0, !dbg !1880
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !1593, metadata !DIExpression()), !dbg !1652
  %269 = icmp ult i64 %123, %268, !dbg !1881
  br i1 %269, label %270, label %272, !dbg !1884

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !1881
  store i8 39, ptr %271, align 1, !dbg !1881, !tbaa !822
  br label %272, !dbg !1881

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !1592, metadata !DIExpression()), !dbg !1652
  %274 = icmp ult i64 %273, %268, !dbg !1885
  br i1 %274, label %275, label %277, !dbg !1888

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !1885
  store i8 92, ptr %276, align 1, !dbg !1885, !tbaa !822
  br label %277, !dbg !1885

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !1888
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !1592, metadata !DIExpression()), !dbg !1652
  %279 = icmp ult i64 %278, %268, !dbg !1889
  br i1 %279, label %280, label %282, !dbg !1892

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !1889
  store i8 39, ptr %281, align 1, !dbg !1889, !tbaa !822
  br label %282, !dbg !1889

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !1892
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1652
  br label %433, !dbg !1893

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !1894

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1619, metadata !DIExpression()), !dbg !1895
  %286 = tail call ptr @__ctype_b_loc() #40, !dbg !1896
  %287 = load ptr, ptr %286, align 8, !dbg !1896, !tbaa !753
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !1896
  %290 = load i16, ptr %289, align 2, !dbg !1896, !tbaa !854
  %291 = and i16 %290, 16384, !dbg !1896
  %292 = icmp ne i16 %291, 0, !dbg !1898
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !1621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1895
  br label %334, !dbg !1899

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1900
  call void @llvm.dbg.value(metadata ptr %14, metadata !1677, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata ptr %14, metadata !1685, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 8, metadata !1689, metadata !DIExpression()), !dbg !1903
  store i64 0, ptr %14, align 8, !dbg !1905
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1619, metadata !DIExpression()), !dbg !1895
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1895
  %294 = icmp eq i64 %152, -1, !dbg !1906
  br i1 %294, label %295, label %297, !dbg !1908

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1909
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !1585, metadata !DIExpression()), !dbg !1652
  br label %297, !dbg !1910

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !1585, metadata !DIExpression()), !dbg !1652
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1911
  %299 = sub i64 %298, %128, !dbg !1912
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #37, !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1629, metadata !DIExpression()), !dbg !1651
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !1914

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1619, metadata !DIExpression()), !dbg !1895
  %302 = icmp ult i64 %128, %298, !dbg !1915
  br i1 %302, label %.preheader5, label %329, !dbg !1917

.preheader5:                                      ; preds = %301
  br label %304, !dbg !1918

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1895
  br label %329, !dbg !1919

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !1619, metadata !DIExpression()), !dbg !1895
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !1921
  %308 = load i8, ptr %307, align 1, !dbg !1921, !tbaa !822
  %309 = icmp eq i8 %308, 0, !dbg !1917
  br i1 %309, label %.loopexit6, label %310, !dbg !1918

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !1922
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !1619, metadata !DIExpression()), !dbg !1895
  %312 = add i64 %311, %128, !dbg !1923
  %313 = icmp eq i64 %311, %299, !dbg !1915
  br i1 %313, label %.loopexit6, label %304, !dbg !1917, !llvm.loop !1924

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1630, metadata !DIExpression()), !dbg !1925
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !1926
  %317 = and i1 %316, %109, !dbg !1926
  br i1 %317, label %.preheader3, label %325, !dbg !1926

.preheader3:                                      ; preds = %314
  br label %318, !dbg !1927

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !1630, metadata !DIExpression()), !dbg !1925
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !1928
  %321 = load i8, ptr %320, align 1, !dbg !1928, !tbaa !822
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !1930

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !1630, metadata !DIExpression()), !dbg !1925
  %324 = icmp eq i64 %323, %300, !dbg !1932
  br i1 %324, label %.loopexit4, label %318, !dbg !1927, !llvm.loop !1933

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !1935

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !1935, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %326, metadata !1937, metadata !DIExpression()), !dbg !1945
  %327 = call i32 @iswprint(i32 noundef %326) #37, !dbg !1947
  %328 = icmp ne i32 %327, 0, !dbg !1948
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1619, metadata !DIExpression()), !dbg !1895
  br label %329, !dbg !1949

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !1950

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !1619, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1950
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1951
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1619, metadata !DIExpression()), !dbg !1895
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1950
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1951
  call void @llvm.dbg.label(metadata !1643), !dbg !1952
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !1953
  br label %624, !dbg !1953

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !1748
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !1955
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1621, metadata !DIExpression()), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !1619, metadata !DIExpression()), !dbg !1895
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !1585, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !1613, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1748
  %338 = icmp ult i64 %336, 2, !dbg !1956
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !1957
  br i1 %340, label %433, label %341, !dbg !1957

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !1958
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !1638, metadata !DIExpression()), !dbg !1959
  br label %343, !dbg !1960

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !1652
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !1739
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !1592, metadata !DIExpression()), !dbg !1652
  br i1 %339, label %394, label %350, !dbg !1961

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !1966

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1748
  %352 = select i1 %110, i1 true, i1 %345, !dbg !1969
  br i1 %352, label %369, label %353, !dbg !1969

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !1971
  br i1 %354, label %355, label %357, !dbg !1975

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !1971
  store i8 39, ptr %356, align 1, !dbg !1971, !tbaa !822
  br label %357, !dbg !1971

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !1975
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1592, metadata !DIExpression()), !dbg !1652
  %359 = icmp ult i64 %358, %129, !dbg !1976
  br i1 %359, label %360, label %362, !dbg !1979

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !1976
  store i8 36, ptr %361, align 1, !dbg !1976, !tbaa !822
  br label %362, !dbg !1976

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !1979
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1592, metadata !DIExpression()), !dbg !1652
  %364 = icmp ult i64 %363, %129, !dbg !1980
  br i1 %364, label %365, label %367, !dbg !1983

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !1980
  store i8 39, ptr %366, align 1, !dbg !1980, !tbaa !822
  br label %367, !dbg !1980

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !1983
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1652
  br label %369, !dbg !1984

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !1652
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !1592, metadata !DIExpression()), !dbg !1652
  %372 = icmp ult i64 %370, %129, !dbg !1985
  br i1 %372, label %373, label %375, !dbg !1988

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !1985
  store i8 92, ptr %374, align 1, !dbg !1985, !tbaa !822
  br label %375, !dbg !1985

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !1988
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !1592, metadata !DIExpression()), !dbg !1652
  %377 = icmp ult i64 %376, %129, !dbg !1989
  br i1 %377, label %378, label %382, !dbg !1992

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !1989
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !1989
  store i8 %380, ptr %381, align 1, !dbg !1989, !tbaa !822
  br label %382, !dbg !1989

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !1992
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !1592, metadata !DIExpression()), !dbg !1652
  %384 = icmp ult i64 %383, %129, !dbg !1993
  br i1 %384, label %385, label %390, !dbg !1996

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !1993
  %388 = or disjoint i8 %387, 48, !dbg !1993
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !1993
  store i8 %388, ptr %389, align 1, !dbg !1993, !tbaa !822
  br label %390, !dbg !1993

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !1996
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1592, metadata !DIExpression()), !dbg !1652
  %392 = and i8 %349, 7, !dbg !1997
  %393 = or disjoint i8 %392, 48, !dbg !1998
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !1614, metadata !DIExpression()), !dbg !1748
  br label %401, !dbg !1999

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2000

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2001
  br i1 %396, label %397, label %399, !dbg !2006

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2001
  store i8 92, ptr %398, align 1, !dbg !2001, !tbaa !822
  br label %399, !dbg !2001

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2006
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1748
  br label %401, !dbg !2007

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !1652
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !1592, metadata !DIExpression()), !dbg !1652
  %407 = add i64 %346, 1, !dbg !2008
  %408 = icmp ugt i64 %342, %407, !dbg !2010
  br i1 %408, label %409, label %.loopexit2, !dbg !2011

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2012
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2012
  br i1 %411, label %423, label %412, !dbg !2012

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2015
  br i1 %413, label %414, label %416, !dbg !2019

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2015
  store i8 39, ptr %415, align 1, !dbg !2015, !tbaa !822
  br label %416, !dbg !2015

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2019
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !1592, metadata !DIExpression()), !dbg !1652
  %418 = icmp ult i64 %417, %129, !dbg !2020
  br i1 %418, label %419, label %421, !dbg !2023

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2020
  store i8 39, ptr %420, align 1, !dbg !2020, !tbaa !822
  br label %421, !dbg !2020

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1652
  br label %423, !dbg !2024

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2025
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !1592, metadata !DIExpression()), !dbg !1652
  %426 = icmp ult i64 %424, %129, !dbg !2026
  br i1 %426, label %427, label %429, !dbg !2029

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2026
  store i8 %406, ptr %428, align 1, !dbg !2026, !tbaa !822
  br label %429, !dbg !2026

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2029
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !1607, metadata !DIExpression()), !dbg !1739
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2030
  %432 = load i8, ptr %431, align 1, !dbg !2030, !tbaa !822
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !1614, metadata !DIExpression()), !dbg !1748
  br label %343, !dbg !2031, !llvm.loop !2032

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2035
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !1652
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !1656
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !1739
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !1748
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1609, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !1585, metadata !DIExpression()), !dbg !1652
  br i1 %111, label %455, label %444, !dbg !2036

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
  br i1 %120, label %456, label %476, !dbg !2038

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2039

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
  %467 = lshr i8 %458, 5, !dbg !2040
  %468 = zext nneg i8 %467 to i64, !dbg !2040
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2041
  %470 = load i32, ptr %469, align 4, !dbg !2041, !tbaa !813
  %471 = and i8 %458, 31, !dbg !2042
  %472 = zext nneg i8 %471 to i32, !dbg !2042
  %473 = shl nuw i32 1, %472, !dbg !2043
  %474 = and i32 %470, %473, !dbg !2043
  %475 = icmp eq i32 %474, 0, !dbg !2043
  br i1 %475, label %476, label %487, !dbg !2044

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
  br i1 %153, label %487, label %523, !dbg !2045

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2035
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !1652
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !1656
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2046
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !1748
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1585, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.label(metadata !1641), !dbg !2047
  br i1 %109, label %.loopexit8, label %497, !dbg !2048

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1748
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2050
  br i1 %498, label %515, label %499, !dbg !2050

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2052
  br i1 %500, label %501, label %503, !dbg !2056

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2052
  store i8 39, ptr %502, align 1, !dbg !2052, !tbaa !822
  br label %503, !dbg !2052

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2056
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !1592, metadata !DIExpression()), !dbg !1652
  %505 = icmp ult i64 %504, %496, !dbg !2057
  br i1 %505, label %506, label %508, !dbg !2060

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2057
  store i8 36, ptr %507, align 1, !dbg !2057, !tbaa !822
  br label %508, !dbg !2057

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2060
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !1592, metadata !DIExpression()), !dbg !1652
  %510 = icmp ult i64 %509, %496, !dbg !2061
  br i1 %510, label %511, label %513, !dbg !2064

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2061
  store i8 39, ptr %512, align 1, !dbg !2061, !tbaa !822
  br label %513, !dbg !2061

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2064
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1601, metadata !DIExpression()), !dbg !1652
  br label %515, !dbg !2065

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !1748
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !1592, metadata !DIExpression()), !dbg !1652
  %518 = icmp ult i64 %516, %496, !dbg !2066
  br i1 %518, label %519, label %521, !dbg !2069

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2066
  store i8 92, ptr %520, align 1, !dbg !2066, !tbaa !822
  br label %521, !dbg !2066

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2069
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !1585, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.label(metadata !1642), !dbg !2070
  br label %547, !dbg !2071

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !1652
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !1748
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !1739
  br label %523, !dbg !2071

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2035
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !1652
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !1656
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2046
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2074
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !1614, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1613, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1748
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !1585, metadata !DIExpression()), !dbg !1652
  call void @llvm.dbg.label(metadata !1642), !dbg !2070
  %534 = xor i1 %528, true, !dbg !2071
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2071
  br i1 %535, label %547, label %536, !dbg !2071

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2075
  br i1 %537, label %538, label %540, !dbg !2079

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2075
  store i8 39, ptr %539, align 1, !dbg !2075, !tbaa !822
  br label %540, !dbg !2075

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2079
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !1592, metadata !DIExpression()), !dbg !1652
  %542 = icmp ult i64 %541, %533, !dbg !2080
  br i1 %542, label %543, label %545, !dbg !2083

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2080
  store i8 39, ptr %544, align 1, !dbg !2080, !tbaa !822
  br label %545, !dbg !2080

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2083
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1601, metadata !DIExpression()), !dbg !1652
  br label %547, !dbg !2084

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !1748
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !1592, metadata !DIExpression()), !dbg !1652
  %557 = icmp ult i64 %555, %548, !dbg !2085
  br i1 %557, label %558, label %560, !dbg !2088

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2085
  store i8 %549, ptr %559, align 1, !dbg !2085, !tbaa !822
  br label %560, !dbg !2085

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2088
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1592, metadata !DIExpression()), !dbg !1652
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2089
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1652
  br label %563, !dbg !2090

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2035
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !1652
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !1656
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2046
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !1607, metadata !DIExpression()), !dbg !1739
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1601, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1585, metadata !DIExpression()), !dbg !1652
  %572 = add i64 %570, 1, !dbg !2091
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !1607, metadata !DIExpression()), !dbg !1739
  br label %121, !dbg !2092, !llvm.loop !2093

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !1727
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !1656
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !1583, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !1593, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !1592, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !1585, metadata !DIExpression()), !dbg !1652
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2095
  %575 = xor i1 %109, true, !dbg !2097
  %576 = or i1 %574, %575, !dbg !2097
  %577 = or i1 %576, %110, !dbg !2097
  br i1 %577, label %578, label %.loopexit13, !dbg !2097

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2098
  %580 = xor i1 %.lcssa38, true, !dbg !2098
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2098
  br i1 %581, label %589, label %582, !dbg !2098

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2100

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !1656
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2102
  br label %638, !dbg !2104

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2105
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2107
  br i1 %588, label %27, label %589, !dbg !2107

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !1652
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !1727
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2108
  %592 = or i1 %591, %590, !dbg !2110
  br i1 %592, label %608, label %593, !dbg !2110

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !1594, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !1592, metadata !DIExpression()), !dbg !1652
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2111, !tbaa !822
  %595 = icmp eq i8 %594, 0, !dbg !2114
  br i1 %595, label %608, label %.preheader, !dbg !2114

.preheader:                                       ; preds = %593
  br label %596, !dbg !2114

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !1594, metadata !DIExpression()), !dbg !1652
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1592, metadata !DIExpression()), !dbg !1652
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2115
  br i1 %600, label %601, label %603, !dbg !2118

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2115
  store i8 %597, ptr %602, align 1, !dbg !2115, !tbaa !822
  br label %603, !dbg !2115

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2118
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1592, metadata !DIExpression()), !dbg !1652
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2119
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !1594, metadata !DIExpression()), !dbg !1652
  %606 = load i8, ptr %605, align 1, !dbg !2111, !tbaa !822
  %607 = icmp eq i8 %606, 0, !dbg !2114
  br i1 %607, label %.loopexit, label %596, !dbg !2114, !llvm.loop !2120

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2118
  br label %608, !dbg !2122

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !1727
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1592, metadata !DIExpression()), !dbg !1652
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2122
  br i1 %610, label %611, label %638, !dbg !2124

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2125
  store i8 0, ptr %612, align 1, !dbg !2126, !tbaa !822
  br label %638, !dbg !2125

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !1643), !dbg !1952
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2127
  br i1 %614, label %624, label %630, !dbg !1953

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !1748
  br label %615, !dbg !2127

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2127

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2127

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !1643), !dbg !1952
  %622 = icmp eq i32 %616, 2, !dbg !2127
  %623 = select i1 %619, i32 4, i32 2, !dbg !1953
  br i1 %622, label %624, label %630, !dbg !1953

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !1953

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !1754
  br label %630, !dbg !2128

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !1586, metadata !DIExpression()), !dbg !1652
  %636 = and i32 %5, -3, !dbg !2128
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2129
  br label %638, !dbg !2130

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2131
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
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2140 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2144, metadata !DIExpression()), !dbg !2147
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2145, metadata !DIExpression()), !dbg !2147
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata ptr %0, metadata !2148, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr null, metadata !2154, metadata !DIExpression()), !dbg !2161
  call void @llvm.dbg.value(metadata ptr %2, metadata !2155, metadata !DIExpression()), !dbg !2161
  %4 = icmp eq ptr %2, null, !dbg !2163
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %5, metadata !2156, metadata !DIExpression()), !dbg !2161
  %6 = tail call ptr @__errno_location() #40, !dbg !2164
  %7 = load i32, ptr %6, align 4, !dbg !2164, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %7, metadata !2157, metadata !DIExpression()), !dbg !2161
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2165
  %9 = load i32, ptr %8, align 4, !dbg !2165, !tbaa !1526
  %10 = or i32 %9, 1, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %10, metadata !2158, metadata !DIExpression()), !dbg !2161
  %11 = load i32, ptr %5, align 8, !dbg !2167, !tbaa !1476
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2168
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2169
  %14 = load ptr, ptr %13, align 8, !dbg !2169, !tbaa !1547
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2170
  %16 = load ptr, ptr %15, align 8, !dbg !2170, !tbaa !1550
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2171
  %18 = add i64 %17, 1, !dbg !2172
  call void @llvm.dbg.value(metadata i64 %18, metadata !2159, metadata !DIExpression()), !dbg !2161
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2173
  call void @llvm.dbg.value(metadata ptr %19, metadata !2160, metadata !DIExpression()), !dbg !2161
  %20 = load i32, ptr %5, align 8, !dbg !2174, !tbaa !1476
  %21 = load ptr, ptr %13, align 8, !dbg !2175, !tbaa !1547
  %22 = load ptr, ptr %15, align 8, !dbg !2176, !tbaa !1550
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2177
  store i32 %7, ptr %6, align 4, !dbg !2178, !tbaa !813
  ret ptr %19, !dbg !2179
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2149 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2148, metadata !DIExpression()), !dbg !2180
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2180
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2154, metadata !DIExpression()), !dbg !2180
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2155, metadata !DIExpression()), !dbg !2180
  %5 = icmp eq ptr %3, null, !dbg !2181
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2181
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2156, metadata !DIExpression()), !dbg !2180
  %7 = tail call ptr @__errno_location() #40, !dbg !2182
  %8 = load i32, ptr %7, align 4, !dbg !2182, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2157, metadata !DIExpression()), !dbg !2180
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2183
  %10 = load i32, ptr %9, align 4, !dbg !2183, !tbaa !1526
  %11 = icmp eq ptr %2, null, !dbg !2184
  %12 = zext i1 %11 to i32, !dbg !2184
  %13 = or i32 %10, %12, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2158, metadata !DIExpression()), !dbg !2180
  %14 = load i32, ptr %6, align 8, !dbg !2186, !tbaa !1476
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2187
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2188
  %17 = load ptr, ptr %16, align 8, !dbg !2188, !tbaa !1547
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2189
  %19 = load ptr, ptr %18, align 8, !dbg !2189, !tbaa !1550
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2190
  %21 = add i64 %20, 1, !dbg !2191
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2159, metadata !DIExpression()), !dbg !2180
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2192
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2160, metadata !DIExpression()), !dbg !2180
  %23 = load i32, ptr %6, align 8, !dbg !2193, !tbaa !1476
  %24 = load ptr, ptr %16, align 8, !dbg !2194, !tbaa !1547
  %25 = load ptr, ptr %18, align 8, !dbg !2195, !tbaa !1550
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
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2206, metadata !DIExpression()), !dbg !2210
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2207, metadata !DIExpression()), !dbg !2211
  %2 = load i32, ptr @nslots, align 4, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2207, metadata !DIExpression()), !dbg !2211
  %3 = icmp sgt i32 %2, 1, !dbg !2212
  br i1 %3, label %4, label %6, !dbg !2214

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2212
  br label %10, !dbg !2214

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2215

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2215
  %8 = load ptr, ptr %7, align 8, !dbg !2215, !tbaa !2217
  %9 = icmp eq ptr %8, @slot0, !dbg !2219
  br i1 %9, label %17, label %16, !dbg !2220

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2207, metadata !DIExpression()), !dbg !2211
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2221
  %13 = load ptr, ptr %12, align 8, !dbg !2221, !tbaa !2217
  tail call void @free(ptr noundef %13) #37, !dbg !2222
  %14 = add nuw nsw i64 %11, 1, !dbg !2223
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2207, metadata !DIExpression()), !dbg !2211
  %15 = icmp eq i64 %14, %5, !dbg !2212
  br i1 %15, label %.loopexit, label %10, !dbg !2214, !llvm.loop !2224

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2226
  store i64 256, ptr @slotvec0, align 8, !dbg !2228, !tbaa !2229
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2230, !tbaa !2217
  br label %17, !dbg !2231

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2232
  br i1 %18, label %20, label %19, !dbg !2234

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2235
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2237, !tbaa !753
  br label %20, !dbg !2238

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2239, !tbaa !813
  ret void, !dbg !2240
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2241 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2244 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2246, metadata !DIExpression()), !dbg !2248
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2247, metadata !DIExpression()), !dbg !2248
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2249
  ret ptr %3, !dbg !2250
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2251 {
  %5 = alloca i64, align 8, !DIAssignID !2271
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2265, metadata !DIExpression(), metadata !2271, metadata ptr %5, metadata !DIExpression()), !dbg !2272
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2255, metadata !DIExpression()), !dbg !2273
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2256, metadata !DIExpression()), !dbg !2273
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2257, metadata !DIExpression()), !dbg !2273
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2258, metadata !DIExpression()), !dbg !2273
  %6 = tail call ptr @__errno_location() #40, !dbg !2274
  %7 = load i32, ptr %6, align 4, !dbg !2274, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2259, metadata !DIExpression()), !dbg !2273
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2275, !tbaa !753
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2260, metadata !DIExpression()), !dbg !2273
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2261, metadata !DIExpression()), !dbg !2273
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2276
  br i1 %9, label %10, label %11, !dbg !2276

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2278
  unreachable, !dbg !2278

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2279, !tbaa !813
  %13 = icmp sgt i32 %12, %0, !dbg !2280
  br i1 %13, label %32, label %14, !dbg !2281

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2282
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2262, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2272
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2283
  %16 = sext i32 %12 to i64, !dbg !2284
  store i64 %16, ptr %5, align 8, !dbg !2285, !tbaa !2201, !DIAssignID !2286
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2265, metadata !DIExpression(), metadata !2286, metadata ptr %5, metadata !DIExpression()), !dbg !2272
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2287
  %18 = add nuw nsw i32 %0, 1, !dbg !2288
  %19 = sub i32 %18, %12, !dbg !2289
  %20 = sext i32 %19 to i64, !dbg !2290
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2291
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2260, metadata !DIExpression()), !dbg !2273
  store ptr %21, ptr @slotvec, align 8, !dbg !2292, !tbaa !753
  br i1 %15, label %22, label %23, !dbg !2293

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2294, !tbaa.struct !2296
  br label %23, !dbg !2297

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2298, !tbaa !813
  %25 = sext i32 %24 to i64, !dbg !2299
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2299
  %27 = load i64, ptr %5, align 8, !dbg !2300, !tbaa !2201
  %28 = sub nsw i64 %27, %25, !dbg !2301
  %29 = shl i64 %28, 4, !dbg !2302
  call void @llvm.dbg.value(metadata ptr %26, metadata !1685, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i32 0, metadata !1688, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %29, metadata !1689, metadata !DIExpression()), !dbg !2303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2305
  %30 = load i64, ptr %5, align 8, !dbg !2306, !tbaa !2201
  %31 = trunc i64 %30 to i32, !dbg !2306
  store i32 %31, ptr @nslots, align 4, !dbg !2307, !tbaa !813
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2308
  br label %32, !dbg !2309

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2273
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2260, metadata !DIExpression()), !dbg !2273
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2310
  %36 = load i64, ptr %35, align 8, !dbg !2311, !tbaa !2229
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2266, metadata !DIExpression()), !dbg !2312
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2313
  %38 = load ptr, ptr %37, align 8, !dbg !2313, !tbaa !2217
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2268, metadata !DIExpression()), !dbg !2312
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2314
  %40 = load i32, ptr %39, align 4, !dbg !2314, !tbaa !1526
  %41 = or i32 %40, 1, !dbg !2315
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2269, metadata !DIExpression()), !dbg !2312
  %42 = load i32, ptr %3, align 8, !dbg !2316, !tbaa !1476
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2317
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2318
  %45 = load ptr, ptr %44, align 8, !dbg !2318, !tbaa !1547
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2319
  %47 = load ptr, ptr %46, align 8, !dbg !2319, !tbaa !1550
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2320
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2270, metadata !DIExpression()), !dbg !2312
  %49 = icmp ugt i64 %36, %48, !dbg !2321
  br i1 %49, label %60, label %50, !dbg !2323

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2324
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2266, metadata !DIExpression()), !dbg !2312
  store i64 %51, ptr %35, align 8, !dbg !2326, !tbaa !2229
  %52 = icmp eq ptr %38, @slot0, !dbg !2327
  br i1 %52, label %54, label %53, !dbg !2329

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2330
  br label %54, !dbg !2330

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2331
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2268, metadata !DIExpression()), !dbg !2312
  store ptr %55, ptr %37, align 8, !dbg !2332, !tbaa !2217
  %56 = load i32, ptr %3, align 8, !dbg !2333, !tbaa !1476
  %57 = load ptr, ptr %44, align 8, !dbg !2334, !tbaa !1547
  %58 = load ptr, ptr %46, align 8, !dbg !2335, !tbaa !1550
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2336
  br label %60, !dbg !2337

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2312
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2268, metadata !DIExpression()), !dbg !2312
  store i32 %7, ptr %6, align 4, !dbg !2338, !tbaa !813
  ret ptr %61, !dbg !2339
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2340 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2344, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2345, metadata !DIExpression()), !dbg !2347
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2346, metadata !DIExpression()), !dbg !2347
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2348
  ret ptr %4, !dbg !2349
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2350 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2352, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 0, metadata !2246, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata ptr %0, metadata !2247, metadata !DIExpression()), !dbg !2354
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2356
  ret ptr %2, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2358 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2362, metadata !DIExpression()), !dbg !2364
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 0, metadata !2344, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata ptr %0, metadata !2345, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i64 %1, metadata !2346, metadata !DIExpression()), !dbg !2365
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2367
  ret ptr %3, !dbg !2368
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2369 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2376, metadata !DIExpression(), metadata !2377, metadata ptr %4, metadata !DIExpression()), !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()), !dbg !2378
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2374, metadata !DIExpression()), !dbg !2378
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2375, metadata !DIExpression()), !dbg !2378
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2379
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2380), !dbg !2383
  call void @llvm.dbg.value(metadata i32 %1, metadata !2384, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2392, !alias.scope !2380, !DIAssignID !2393
  call void @llvm.dbg.assign(metadata i8 0, metadata !2376, metadata !DIExpression(), metadata !2393, metadata ptr %4, metadata !DIExpression()), !dbg !2378
  %5 = icmp eq i32 %1, 10, !dbg !2394
  br i1 %5, label %6, label %7, !dbg !2396

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2397, !noalias !2380
  unreachable, !dbg !2397

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2398, !tbaa !1476, !alias.scope !2380, !DIAssignID !2399
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2399, metadata ptr %4, metadata !DIExpression()), !dbg !2378
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2400
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2401
  ret ptr %8, !dbg !2402
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2403 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2412
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2411, metadata !DIExpression(), metadata !2412, metadata ptr %5, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2408, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2409, metadata !DIExpression()), !dbg !2413
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2410, metadata !DIExpression()), !dbg !2413
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2414
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2415), !dbg !2418
  call void @llvm.dbg.value(metadata i32 %1, metadata !2384, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2389, metadata !DIExpression()), !dbg !2421
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2421, !alias.scope !2415, !DIAssignID !2422
  call void @llvm.dbg.assign(metadata i8 0, metadata !2411, metadata !DIExpression(), metadata !2422, metadata ptr %5, metadata !DIExpression()), !dbg !2413
  %6 = icmp eq i32 %1, 10, !dbg !2423
  br i1 %6, label %7, label %8, !dbg !2424

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2425, !noalias !2415
  unreachable, !dbg !2425

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2426, !tbaa !1476, !alias.scope !2415, !DIAssignID !2427
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2411, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2427, metadata ptr %5, metadata !DIExpression()), !dbg !2413
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2428
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2429
  ret ptr %9, !dbg !2430
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2431 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2437
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2435, metadata !DIExpression()), !dbg !2438
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2436, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2376, metadata !DIExpression(), metadata !2437, metadata ptr %3, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 0, metadata !2373, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %0, metadata !2374, metadata !DIExpression()), !dbg !2439
  call void @llvm.dbg.value(metadata ptr %1, metadata !2375, metadata !DIExpression()), !dbg !2439
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2441
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442), !dbg !2445
  call void @llvm.dbg.value(metadata i32 %0, metadata !2384, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2389, metadata !DIExpression()), !dbg !2448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2448, !alias.scope !2442, !DIAssignID !2449
  call void @llvm.dbg.assign(metadata i8 0, metadata !2376, metadata !DIExpression(), metadata !2449, metadata ptr %3, metadata !DIExpression()), !dbg !2439
  %4 = icmp eq i32 %0, 10, !dbg !2450
  br i1 %4, label %5, label %6, !dbg !2451

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2452, !noalias !2442
  unreachable, !dbg !2452

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2453, !tbaa !1476, !alias.scope !2442, !DIAssignID !2454
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2454, metadata ptr %3, metadata !DIExpression()), !dbg !2439
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2455
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2456
  ret ptr %7, !dbg !2457
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2458 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2465
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2462, metadata !DIExpression()), !dbg !2466
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2463, metadata !DIExpression()), !dbg !2466
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2464, metadata !DIExpression()), !dbg !2466
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2411, metadata !DIExpression(), metadata !2465, metadata ptr %4, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 0, metadata !2407, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i32 %0, metadata !2408, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata ptr %1, metadata !2409, metadata !DIExpression()), !dbg !2467
  call void @llvm.dbg.value(metadata i64 %2, metadata !2410, metadata !DIExpression()), !dbg !2467
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2469
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470), !dbg !2473
  call void @llvm.dbg.value(metadata i32 %0, metadata !2384, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2389, metadata !DIExpression()), !dbg !2476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2476, !alias.scope !2470, !DIAssignID !2477
  call void @llvm.dbg.assign(metadata i8 0, metadata !2411, metadata !DIExpression(), metadata !2477, metadata ptr %4, metadata !DIExpression()), !dbg !2467
  %5 = icmp eq i32 %0, 10, !dbg !2478
  br i1 %5, label %6, label %7, !dbg !2479

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2480, !noalias !2470
  unreachable, !dbg !2480

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2481, !tbaa !1476, !alias.scope !2470, !DIAssignID !2482
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2411, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2482, metadata ptr %4, metadata !DIExpression()), !dbg !2467
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2483
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2484
  ret ptr %8, !dbg !2485
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !2486 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2494
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2494, metadata ptr %4, metadata !DIExpression()), !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2495
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2495
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2492, metadata !DIExpression()), !dbg !2495
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2497, !tbaa.struct !2498, !DIAssignID !2499
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2499, metadata ptr %4, metadata !DIExpression()), !dbg !2495
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1493, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1494, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2500
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1496, metadata !DIExpression()), !dbg !2500
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2502
  %6 = lshr i8 %2, 5, !dbg !2503
  %7 = zext nneg i8 %6 to i64, !dbg !2503
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2504
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1497, metadata !DIExpression()), !dbg !2500
  %9 = and i8 %2, 31, !dbg !2505
  %10 = zext nneg i8 %9 to i32, !dbg !2505
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1499, metadata !DIExpression()), !dbg !2500
  %11 = load i32, ptr %8, align 4, !dbg !2506, !tbaa !813
  %12 = lshr i32 %11, %10, !dbg !2507
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1500, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2500
  %13 = and i32 %12, 1, !dbg !2508
  %14 = xor i32 %13, 1, !dbg !2508
  %15 = shl nuw i32 %14, %10, !dbg !2509
  %16 = xor i32 %15, %11, !dbg !2510
  store i32 %16, ptr %8, align 4, !dbg !2510, !tbaa !813
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2511
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2512
  ret ptr %17, !dbg !2513
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !2514 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2520
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2520, metadata ptr %3, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i64 -1, metadata !2491, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8 %1, metadata !2492, metadata !DIExpression()), !dbg !2522
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2525, !tbaa.struct !2498, !DIAssignID !2526
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2526, metadata ptr %3, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata ptr %3, metadata !1493, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8 %1, metadata !1494, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8 %1, metadata !1496, metadata !DIExpression()), !dbg !2527
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2529
  %5 = lshr i8 %1, 5, !dbg !2530
  %6 = zext nneg i8 %5 to i64, !dbg !2530
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2531
  call void @llvm.dbg.value(metadata ptr %7, metadata !1497, metadata !DIExpression()), !dbg !2527
  %8 = and i8 %1, 31, !dbg !2532
  %9 = zext nneg i8 %8 to i32, !dbg !2532
  call void @llvm.dbg.value(metadata i32 %9, metadata !1499, metadata !DIExpression()), !dbg !2527
  %10 = load i32, ptr %7, align 4, !dbg !2533, !tbaa !813
  %11 = lshr i32 %10, %9, !dbg !2534
  call void @llvm.dbg.value(metadata i32 %11, metadata !1500, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2527
  %12 = and i32 %11, 1, !dbg !2535
  %13 = xor i32 %12, 1, !dbg !2535
  %14 = shl nuw i32 %13, %9, !dbg !2536
  %15 = xor i32 %14, %10, !dbg !2537
  store i32 %15, ptr %7, align 4, !dbg !2537, !tbaa !813
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2538
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2539
  ret ptr %16, !dbg !2540
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2541 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2544
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2543, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %0, metadata !2518, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i8 58, metadata !2519, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2544, metadata ptr %2, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i64 -1, metadata !2491, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !2548
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2551, !tbaa.struct !2498, !DIAssignID !2552
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2552, metadata ptr %2, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %2, metadata !1493, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 58, metadata !1494, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8 58, metadata !1496, metadata !DIExpression()), !dbg !2553
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2555
  call void @llvm.dbg.value(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i32 26, metadata !1499, metadata !DIExpression()), !dbg !2553
  %4 = load i32, ptr %3, align 4, !dbg !2556, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %4, metadata !1500, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2553
  %5 = or i32 %4, 67108864, !dbg !2557
  store i32 %5, ptr %3, align 4, !dbg !2557, !tbaa !813
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2558
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2559
  ret ptr %6, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2561 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2565
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2563, metadata !DIExpression()), !dbg !2566
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2565, metadata ptr %3, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %0, metadata !2490, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i64 %1, metadata !2491, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8 58, metadata !2492, metadata !DIExpression()), !dbg !2567
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2570, !tbaa.struct !2498, !DIAssignID !2571
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2493, metadata !DIExpression(), metadata !2571, metadata ptr %3, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata ptr %3, metadata !1493, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !1494, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !1496, metadata !DIExpression()), !dbg !2572
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2574
  call void @llvm.dbg.value(metadata ptr %4, metadata !1497, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i32 26, metadata !1499, metadata !DIExpression()), !dbg !2572
  %5 = load i32, ptr %4, align 4, !dbg !2575, !tbaa !813
  call void @llvm.dbg.value(metadata i32 %5, metadata !1500, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2572
  %6 = or i32 %5, 67108864, !dbg !2576
  store i32 %6, ptr %4, align 4, !dbg !2576, !tbaa !813
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2577
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2578
  ret ptr %7, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2580 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2586
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2585, metadata !DIExpression(), metadata !2586, metadata ptr %4, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2389, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2588
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2583, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2584, metadata !DIExpression()), !dbg !2587
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %1, metadata !2384, metadata !DIExpression()), !dbg !2591
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2591
  %5 = icmp eq i32 %1, 10, !dbg !2592
  br i1 %5, label %6, label %7, !dbg !2593

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2594, !noalias !2595
  unreachable, !dbg !2594

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2389, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2591
  store i32 %1, ptr %4, align 8, !dbg !2598, !tbaa.struct !2498, !DIAssignID !2599
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2598
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2585, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2599, metadata ptr %4, metadata !DIExpression()), !dbg !2587
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2585, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2600, metadata ptr %8, metadata !DIExpression()), !dbg !2587
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1493, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1494, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1496, metadata !DIExpression()), !dbg !2601
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1497, metadata !DIExpression()), !dbg !2601
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1499, metadata !DIExpression()), !dbg !2601
  %10 = load i32, ptr %9, align 4, !dbg !2604, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1500, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2601
  %11 = or i32 %10, 67108864, !dbg !2605
  store i32 %11, ptr %9, align 4, !dbg !2605, !tbaa !813, !DIAssignID !2606
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2585, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2606, metadata ptr %9, metadata !DIExpression()), !dbg !2587
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2607
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2608
  ret ptr %12, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2610 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2618
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2614, metadata !DIExpression()), !dbg !2619
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2615, metadata !DIExpression()), !dbg !2619
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2616, metadata !DIExpression()), !dbg !2619
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2617, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2618, metadata ptr %5, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i32 %0, metadata !2625, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %3, metadata !2628, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata i64 -1, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2633, !tbaa.struct !2498, !DIAssignID !2634
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2634, metadata ptr %5, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2635, metadata ptr undef, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.value(metadata ptr %5, metadata !1533, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %1, metadata !1534, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %2, metadata !1535, metadata !DIExpression()), !dbg !2636
  call void @llvm.dbg.value(metadata ptr %5, metadata !1533, metadata !DIExpression()), !dbg !2636
  store i32 10, ptr %5, align 8, !dbg !2638, !tbaa !1476, !DIAssignID !2639
  call void @llvm.dbg.assign(metadata i32 10, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2639, metadata ptr %5, metadata !DIExpression()), !dbg !2630
  %6 = icmp ne ptr %1, null, !dbg !2640
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2641
  br i1 %8, label %10, label %9, !dbg !2641

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2642
  unreachable, !dbg !2642

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2643
  store ptr %1, ptr %11, align 8, !dbg !2644, !tbaa !1547, !DIAssignID !2645
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2645, metadata ptr %11, metadata !DIExpression()), !dbg !2630
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2646
  store ptr %2, ptr %12, align 8, !dbg !2647, !tbaa !1550, !DIAssignID !2648
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2648, metadata ptr %12, metadata !DIExpression()), !dbg !2630
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2649
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2650
  ret ptr %13, !dbg !2651
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2621 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2652
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2652, metadata ptr %6, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2625, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2626, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2627, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2628, metadata !DIExpression()), !dbg !2653
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2629, metadata !DIExpression()), !dbg !2653
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2654
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2655, !tbaa.struct !2498, !DIAssignID !2656
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2656, metadata ptr %6, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2657, metadata ptr undef, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %6, metadata !1533, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %1, metadata !1534, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %2, metadata !1535, metadata !DIExpression()), !dbg !2658
  call void @llvm.dbg.value(metadata ptr %6, metadata !1533, metadata !DIExpression()), !dbg !2658
  store i32 10, ptr %6, align 8, !dbg !2660, !tbaa !1476, !DIAssignID !2661
  call void @llvm.dbg.assign(metadata i32 10, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2661, metadata ptr %6, metadata !DIExpression()), !dbg !2653
  %7 = icmp ne ptr %1, null, !dbg !2662
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2663
  br i1 %9, label %11, label %10, !dbg !2663

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2664
  unreachable, !dbg !2664

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2665
  store ptr %1, ptr %12, align 8, !dbg !2666, !tbaa !1547, !DIAssignID !2667
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2667, metadata ptr %12, metadata !DIExpression()), !dbg !2653
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2668
  store ptr %2, ptr %13, align 8, !dbg !2669, !tbaa !1550, !DIAssignID !2670
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2670, metadata ptr %13, metadata !DIExpression()), !dbg !2653
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2671
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2672
  ret ptr %14, !dbg !2673
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2674 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2681
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2678, metadata !DIExpression()), !dbg !2682
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2679, metadata !DIExpression()), !dbg !2682
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2680, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i32 0, metadata !2614, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %0, metadata !2615, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %1, metadata !2616, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata ptr %2, metadata !2617, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2681, metadata ptr %4, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %1, metadata !2627, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %2, metadata !2628, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i64 -1, metadata !2629, metadata !DIExpression()), !dbg !2685
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2688, !tbaa.struct !2498, !DIAssignID !2689
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2689, metadata ptr %4, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2690, metadata ptr undef, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata ptr %4, metadata !1533, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %0, metadata !1534, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %1, metadata !1535, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.value(metadata ptr %4, metadata !1533, metadata !DIExpression()), !dbg !2691
  store i32 10, ptr %4, align 8, !dbg !2693, !tbaa !1476, !DIAssignID !2694
  call void @llvm.dbg.assign(metadata i32 10, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2694, metadata ptr %4, metadata !DIExpression()), !dbg !2685
  %5 = icmp ne ptr %0, null, !dbg !2695
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2696
  br i1 %7, label %9, label %8, !dbg !2696

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2697
  unreachable, !dbg !2697

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2698
  store ptr %0, ptr %10, align 8, !dbg !2699, !tbaa !1547, !DIAssignID !2700
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2700, metadata ptr %10, metadata !DIExpression()), !dbg !2685
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2701
  store ptr %1, ptr %11, align 8, !dbg !2702, !tbaa !1550, !DIAssignID !2703
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2703, metadata ptr %11, metadata !DIExpression()), !dbg !2685
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2704
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2705
  ret ptr %12, !dbg !2706
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2707 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2715
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2711, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2712, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2713, metadata !DIExpression()), !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2715, metadata ptr %5, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 0, metadata !2625, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %0, metadata !2626, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %1, metadata !2627, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %2, metadata !2628, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %3, metadata !2629, metadata !DIExpression()), !dbg !2717
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2720, !tbaa.struct !2498, !DIAssignID !2721
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(), metadata !2721, metadata ptr %5, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2722, metadata ptr undef, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata ptr %5, metadata !1533, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %0, metadata !1534, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %1, metadata !1535, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.value(metadata ptr %5, metadata !1533, metadata !DIExpression()), !dbg !2723
  store i32 10, ptr %5, align 8, !dbg !2725, !tbaa !1476, !DIAssignID !2726
  call void @llvm.dbg.assign(metadata i32 10, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2726, metadata ptr %5, metadata !DIExpression()), !dbg !2717
  %6 = icmp ne ptr %0, null, !dbg !2727
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2728
  br i1 %8, label %10, label %9, !dbg !2728

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2729
  unreachable, !dbg !2729

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2730
  store ptr %0, ptr %11, align 8, !dbg !2731, !tbaa !1547, !DIAssignID !2732
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2732, metadata ptr %11, metadata !DIExpression()), !dbg !2717
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2733
  store ptr %1, ptr %12, align 8, !dbg !2734, !tbaa !1550, !DIAssignID !2735
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2620, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2735, metadata ptr %12, metadata !DIExpression()), !dbg !2717
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2736
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2737
  ret ptr %13, !dbg !2738
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2739 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2744, metadata !DIExpression()), !dbg !2746
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2745, metadata !DIExpression()), !dbg !2746
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2747
  ret ptr %4, !dbg !2748
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2749 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2753, metadata !DIExpression()), !dbg !2755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata i64 %1, metadata !2745, metadata !DIExpression()), !dbg !2756
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2758
  ret ptr %3, !dbg !2759
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2764, metadata !DIExpression()), !dbg !2766
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2765, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %0, metadata !2743, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %1, metadata !2744, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 -1, metadata !2745, metadata !DIExpression()), !dbg !2767
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2769
  ret ptr %3, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2771 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2775, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i32 0, metadata !2764, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata ptr %0, metadata !2765, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i32 0, metadata !2743, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %0, metadata !2744, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 -1, metadata !2745, metadata !DIExpression()), !dbg !2779
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2781
  ret ptr %2, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2783 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2822, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2823, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2824, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2825, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2826, metadata !DIExpression()), !dbg !2828
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2827, metadata !DIExpression()), !dbg !2828
  %7 = icmp eq ptr %1, null, !dbg !2829
  br i1 %7, label %10, label %8, !dbg !2831

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2832
  br label %12, !dbg !2832

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.73, ptr noundef %2, ptr noundef %3) #37, !dbg !2833
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.3.75, i32 noundef 5) #37, !dbg !2834
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2834
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %0), !dbg !2835
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.5.77, i32 noundef 5) #37, !dbg !2836
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.78) #37, !dbg !2836
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
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.7.79, i32 noundef 5) #37, !dbg !2839
  %21 = load ptr, ptr %4, align 8, !dbg !2839, !tbaa !753
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2839
  br label %147, !dbg !2841

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.8.80, i32 noundef 5) #37, !dbg !2842
  %25 = load ptr, ptr %4, align 8, !dbg !2842, !tbaa !753
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2842
  %27 = load ptr, ptr %26, align 8, !dbg !2842, !tbaa !753
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2842
  br label %147, !dbg !2843

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.9.81, i32 noundef 5) #37, !dbg !2844
  %31 = load ptr, ptr %4, align 8, !dbg !2844, !tbaa !753
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2844
  %33 = load ptr, ptr %32, align 8, !dbg !2844, !tbaa !753
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2844
  %35 = load ptr, ptr %34, align 8, !dbg !2844, !tbaa !753
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2844
  br label %147, !dbg !2845

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.10.82, i32 noundef 5) #37, !dbg !2846
  %39 = load ptr, ptr %4, align 8, !dbg !2846, !tbaa !753
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2846
  %41 = load ptr, ptr %40, align 8, !dbg !2846, !tbaa !753
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2846
  %43 = load ptr, ptr %42, align 8, !dbg !2846, !tbaa !753
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2846
  %45 = load ptr, ptr %44, align 8, !dbg !2846, !tbaa !753
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2846
  br label %147, !dbg !2847

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.11.83, i32 noundef 5) #37, !dbg !2848
  %49 = load ptr, ptr %4, align 8, !dbg !2848, !tbaa !753
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2848
  %51 = load ptr, ptr %50, align 8, !dbg !2848, !tbaa !753
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2848
  %53 = load ptr, ptr %52, align 8, !dbg !2848, !tbaa !753
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2848
  %55 = load ptr, ptr %54, align 8, !dbg !2848, !tbaa !753
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2848
  %57 = load ptr, ptr %56, align 8, !dbg !2848, !tbaa !753
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2848
  br label %147, !dbg !2849

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.12.84, i32 noundef 5) #37, !dbg !2850
  %61 = load ptr, ptr %4, align 8, !dbg !2850, !tbaa !753
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2850
  %63 = load ptr, ptr %62, align 8, !dbg !2850, !tbaa !753
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2850
  %65 = load ptr, ptr %64, align 8, !dbg !2850, !tbaa !753
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2850
  %67 = load ptr, ptr %66, align 8, !dbg !2850, !tbaa !753
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2850
  %69 = load ptr, ptr %68, align 8, !dbg !2850, !tbaa !753
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2850
  %71 = load ptr, ptr %70, align 8, !dbg !2850, !tbaa !753
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2850
  br label %147, !dbg !2851

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.13.85, i32 noundef 5) #37, !dbg !2852
  %75 = load ptr, ptr %4, align 8, !dbg !2852, !tbaa !753
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2852
  %77 = load ptr, ptr %76, align 8, !dbg !2852, !tbaa !753
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2852
  %79 = load ptr, ptr %78, align 8, !dbg !2852, !tbaa !753
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2852
  %81 = load ptr, ptr %80, align 8, !dbg !2852, !tbaa !753
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2852
  %83 = load ptr, ptr %82, align 8, !dbg !2852, !tbaa !753
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2852
  %85 = load ptr, ptr %84, align 8, !dbg !2852, !tbaa !753
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2852
  %87 = load ptr, ptr %86, align 8, !dbg !2852, !tbaa !753
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2852
  br label %147, !dbg !2853

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.14.86, i32 noundef 5) #37, !dbg !2854
  %91 = load ptr, ptr %4, align 8, !dbg !2854, !tbaa !753
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2854
  %93 = load ptr, ptr %92, align 8, !dbg !2854, !tbaa !753
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2854
  %95 = load ptr, ptr %94, align 8, !dbg !2854, !tbaa !753
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2854
  %97 = load ptr, ptr %96, align 8, !dbg !2854, !tbaa !753
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2854
  %99 = load ptr, ptr %98, align 8, !dbg !2854, !tbaa !753
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2854
  %101 = load ptr, ptr %100, align 8, !dbg !2854, !tbaa !753
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2854
  %103 = load ptr, ptr %102, align 8, !dbg !2854, !tbaa !753
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2854
  %105 = load ptr, ptr %104, align 8, !dbg !2854, !tbaa !753
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2854
  br label %147, !dbg !2855

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.15.87, i32 noundef 5) #37, !dbg !2856
  %109 = load ptr, ptr %4, align 8, !dbg !2856, !tbaa !753
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2856
  %111 = load ptr, ptr %110, align 8, !dbg !2856, !tbaa !753
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2856
  %113 = load ptr, ptr %112, align 8, !dbg !2856, !tbaa !753
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2856
  %115 = load ptr, ptr %114, align 8, !dbg !2856, !tbaa !753
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2856
  %117 = load ptr, ptr %116, align 8, !dbg !2856, !tbaa !753
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2856
  %119 = load ptr, ptr %118, align 8, !dbg !2856, !tbaa !753
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2856
  %121 = load ptr, ptr %120, align 8, !dbg !2856, !tbaa !753
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2856
  %123 = load ptr, ptr %122, align 8, !dbg !2856, !tbaa !753
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2856
  %125 = load ptr, ptr %124, align 8, !dbg !2856, !tbaa !753
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2856
  br label %147, !dbg !2857

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.16.88, i32 noundef 5) #37, !dbg !2858
  %129 = load ptr, ptr %4, align 8, !dbg !2858, !tbaa !753
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2858
  %131 = load ptr, ptr %130, align 8, !dbg !2858, !tbaa !753
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2858
  %133 = load ptr, ptr %132, align 8, !dbg !2858, !tbaa !753
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2858
  %135 = load ptr, ptr %134, align 8, !dbg !2858, !tbaa !753
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2858
  %137 = load ptr, ptr %136, align 8, !dbg !2858, !tbaa !753
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2858
  %139 = load ptr, ptr %138, align 8, !dbg !2858, !tbaa !753
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2858
  %141 = load ptr, ptr %140, align 8, !dbg !2858, !tbaa !753
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2858
  %143 = load ptr, ptr %142, align 8, !dbg !2858, !tbaa !753
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2858
  %145 = load ptr, ptr %144, align 8, !dbg !2858, !tbaa !753
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2858
  br label %147, !dbg !2859

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2860
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2861 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2865, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2866, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2867, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2868, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2869, metadata !DIExpression()), !dbg !2871
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2870, metadata !DIExpression()), !dbg !2871
  br label %6, !dbg !2872

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2874
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2870, metadata !DIExpression()), !dbg !2871
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2875
  %9 = load ptr, ptr %8, align 8, !dbg !2875, !tbaa !753
  %10 = icmp eq ptr %9, null, !dbg !2877
  %11 = add i64 %7, 1, !dbg !2878
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2870, metadata !DIExpression()), !dbg !2871
  br i1 %10, label %12, label %6, !dbg !2877, !llvm.loop !2879

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !2874
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !2881
  ret void, !dbg !2882
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2883 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !2905
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2903, metadata !DIExpression(), metadata !2905, metadata ptr %6, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2897, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2898, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2899, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2900, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2901, metadata !DIExpression(DW_OP_deref)), !dbg !2906
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2907
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !2906
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2902, metadata !DIExpression()), !dbg !2906
  %10 = icmp sgt i32 %9, -1, !dbg !2908
  br i1 %10, label %18, label %11, !dbg !2908

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !2908
  store i32 %12, ptr %7, align 8, !dbg !2908
  %13 = icmp ult i32 %9, -7, !dbg !2908
  br i1 %13, label %14, label %18, !dbg !2908

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !2908
  %16 = sext i32 %9 to i64, !dbg !2908
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !2908
  br label %22, !dbg !2908

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !2908
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !2908
  store ptr %21, ptr %4, align 8, !dbg !2908
  br label %22, !dbg !2908

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !2908
  %25 = load ptr, ptr %24, align 8, !dbg !2908
  store ptr %25, ptr %6, align 8, !dbg !2911, !tbaa !753
  %26 = icmp eq ptr %25, null, !dbg !2912
  br i1 %26, label %197, label %27, !dbg !2913

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2902, metadata !DIExpression()), !dbg !2906
  %28 = icmp sgt i32 %23, -1, !dbg !2908
  br i1 %28, label %36, label %29, !dbg !2908

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !2908
  store i32 %30, ptr %7, align 8, !dbg !2908
  %31 = icmp ult i32 %23, -7, !dbg !2908
  br i1 %31, label %32, label %36, !dbg !2908

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !2908
  %34 = sext i32 %23 to i64, !dbg !2908
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !2908
  br label %40, !dbg !2908

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !2908
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !2908
  store ptr %39, ptr %4, align 8, !dbg !2908
  br label %40, !dbg !2908

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !2908
  %43 = load ptr, ptr %42, align 8, !dbg !2908
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2914
  store ptr %43, ptr %44, align 8, !dbg !2911, !tbaa !753
  %45 = icmp eq ptr %43, null, !dbg !2912
  br i1 %45, label %197, label %46, !dbg !2913

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2902, metadata !DIExpression()), !dbg !2906
  %47 = icmp sgt i32 %41, -1, !dbg !2908
  br i1 %47, label %55, label %48, !dbg !2908

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !2908
  store i32 %49, ptr %7, align 8, !dbg !2908
  %50 = icmp ult i32 %41, -7, !dbg !2908
  br i1 %50, label %51, label %55, !dbg !2908

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !2908
  %53 = sext i32 %41 to i64, !dbg !2908
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !2908
  br label %59, !dbg !2908

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !2908
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !2908
  store ptr %58, ptr %4, align 8, !dbg !2908
  br label %59, !dbg !2908

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !2908
  %62 = load ptr, ptr %61, align 8, !dbg !2908
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2914
  store ptr %62, ptr %63, align 8, !dbg !2911, !tbaa !753
  %64 = icmp eq ptr %62, null, !dbg !2912
  br i1 %64, label %197, label %65, !dbg !2913

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2902, metadata !DIExpression()), !dbg !2906
  %66 = icmp sgt i32 %60, -1, !dbg !2908
  br i1 %66, label %74, label %67, !dbg !2908

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !2908
  store i32 %68, ptr %7, align 8, !dbg !2908
  %69 = icmp ult i32 %60, -7, !dbg !2908
  br i1 %69, label %70, label %74, !dbg !2908

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !2908
  %72 = sext i32 %60 to i64, !dbg !2908
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !2908
  br label %78, !dbg !2908

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !2908
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !2908
  store ptr %77, ptr %4, align 8, !dbg !2908
  br label %78, !dbg !2908

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !2908
  %81 = load ptr, ptr %80, align 8, !dbg !2908
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2914
  store ptr %81, ptr %82, align 8, !dbg !2911, !tbaa !753
  %83 = icmp eq ptr %81, null, !dbg !2912
  br i1 %83, label %197, label %84, !dbg !2913

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2902, metadata !DIExpression()), !dbg !2906
  %85 = icmp sgt i32 %79, -1, !dbg !2908
  br i1 %85, label %93, label %86, !dbg !2908

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !2908
  store i32 %87, ptr %7, align 8, !dbg !2908
  %88 = icmp ult i32 %79, -7, !dbg !2908
  br i1 %88, label %89, label %93, !dbg !2908

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !2908
  %91 = sext i32 %79 to i64, !dbg !2908
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !2908
  br label %97, !dbg !2908

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !2908
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !2908
  store ptr %96, ptr %4, align 8, !dbg !2908
  br label %97, !dbg !2908

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !2908
  %100 = load ptr, ptr %99, align 8, !dbg !2908
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2914
  store ptr %100, ptr %101, align 8, !dbg !2911, !tbaa !753
  %102 = icmp eq ptr %100, null, !dbg !2912
  br i1 %102, label %197, label %103, !dbg !2913

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2902, metadata !DIExpression()), !dbg !2906
  %104 = icmp sgt i32 %98, -1, !dbg !2908
  br i1 %104, label %112, label %105, !dbg !2908

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !2908
  store i32 %106, ptr %7, align 8, !dbg !2908
  %107 = icmp ult i32 %98, -7, !dbg !2908
  br i1 %107, label %108, label %112, !dbg !2908

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !2908
  %110 = sext i32 %98 to i64, !dbg !2908
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !2908
  br label %116, !dbg !2908

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !2908
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !2908
  store ptr %115, ptr %4, align 8, !dbg !2908
  br label %116, !dbg !2908

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !2908
  %119 = load ptr, ptr %118, align 8, !dbg !2908
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2914
  store ptr %119, ptr %120, align 8, !dbg !2911, !tbaa !753
  %121 = icmp eq ptr %119, null, !dbg !2912
  br i1 %121, label %197, label %122, !dbg !2913

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2902, metadata !DIExpression()), !dbg !2906
  %123 = icmp sgt i32 %117, -1, !dbg !2908
  br i1 %123, label %131, label %124, !dbg !2908

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !2908
  store i32 %125, ptr %7, align 8, !dbg !2908
  %126 = icmp ult i32 %117, -7, !dbg !2908
  br i1 %126, label %127, label %131, !dbg !2908

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !2908
  %129 = sext i32 %117 to i64, !dbg !2908
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !2908
  br label %135, !dbg !2908

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !2908
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !2908
  store ptr %134, ptr %4, align 8, !dbg !2908
  br label %135, !dbg !2908

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !2908
  %138 = load ptr, ptr %137, align 8, !dbg !2908
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2914
  store ptr %138, ptr %139, align 8, !dbg !2911, !tbaa !753
  %140 = icmp eq ptr %138, null, !dbg !2912
  br i1 %140, label %197, label %141, !dbg !2913

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2902, metadata !DIExpression()), !dbg !2906
  %142 = icmp sgt i32 %136, -1, !dbg !2908
  br i1 %142, label %150, label %143, !dbg !2908

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !2908
  store i32 %144, ptr %7, align 8, !dbg !2908
  %145 = icmp ult i32 %136, -7, !dbg !2908
  br i1 %145, label %146, label %150, !dbg !2908

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !2908
  %148 = sext i32 %136 to i64, !dbg !2908
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !2908
  br label %154, !dbg !2908

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !2908
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !2908
  store ptr %153, ptr %4, align 8, !dbg !2908
  br label %154, !dbg !2908

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !2908
  %157 = load ptr, ptr %156, align 8, !dbg !2908
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2914
  store ptr %157, ptr %158, align 8, !dbg !2911, !tbaa !753
  %159 = icmp eq ptr %157, null, !dbg !2912
  br i1 %159, label %197, label %160, !dbg !2913

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2902, metadata !DIExpression()), !dbg !2906
  %161 = icmp sgt i32 %155, -1, !dbg !2908
  br i1 %161, label %169, label %162, !dbg !2908

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !2908
  store i32 %163, ptr %7, align 8, !dbg !2908
  %164 = icmp ult i32 %155, -7, !dbg !2908
  br i1 %164, label %165, label %169, !dbg !2908

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !2908
  %167 = sext i32 %155 to i64, !dbg !2908
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !2908
  br label %173, !dbg !2908

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !2908
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !2908
  store ptr %172, ptr %4, align 8, !dbg !2908
  br label %173, !dbg !2908

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !2908
  %176 = load ptr, ptr %175, align 8, !dbg !2908
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2914
  store ptr %176, ptr %177, align 8, !dbg !2911, !tbaa !753
  %178 = icmp eq ptr %176, null, !dbg !2912
  br i1 %178, label %197, label %179, !dbg !2913

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2902, metadata !DIExpression()), !dbg !2906
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2902, metadata !DIExpression()), !dbg !2906
  %180 = icmp sgt i32 %174, -1, !dbg !2908
  br i1 %180, label %188, label %181, !dbg !2908

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !2908
  store i32 %182, ptr %7, align 8, !dbg !2908
  %183 = icmp ult i32 %174, -7, !dbg !2908
  br i1 %183, label %184, label %188, !dbg !2908

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !2908
  %186 = sext i32 %174 to i64, !dbg !2908
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !2908
  br label %191, !dbg !2908

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !2908
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !2908
  store ptr %190, ptr %4, align 8, !dbg !2908
  br label %191, !dbg !2908

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !2908
  %193 = load ptr, ptr %192, align 8, !dbg !2908
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2914
  store ptr %193, ptr %194, align 8, !dbg !2911, !tbaa !753
  %195 = icmp eq ptr %193, null, !dbg !2912
  %196 = select i1 %195, i64 9, i64 10, !dbg !2913
  br label %197, !dbg !2913

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !2915
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !2916
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2917
  ret void, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2918 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !2927
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2926, metadata !DIExpression(), metadata !2927, metadata ptr %5, metadata !DIExpression()), !dbg !2928
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2922, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2923, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2924, metadata !DIExpression()), !dbg !2928
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2929
  call void @llvm.va_start(ptr nonnull %5), !dbg !2930
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2931
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2931, !tbaa.struct !1077
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !2931
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2931
  call void @llvm.va_end(ptr nonnull %5), !dbg !2932
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2933
  ret void, !dbg !2933
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2934 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2935, !tbaa !753
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.76, ptr noundef %1), !dbg !2935
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.17.93, i32 noundef 5) #37, !dbg !2936
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #37, !dbg !2936
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2937
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.94, ptr noundef nonnull @.str.21) #37, !dbg !2937
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.74, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2938
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2938
  ret void, !dbg !2939
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2940 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2945, metadata !DIExpression()), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2947, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2954
  call void @llvm.dbg.value(metadata i64 %2, metadata !2953, metadata !DIExpression()), !dbg !2954
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2956
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !2962
  %5 = icmp eq ptr %4, null, !dbg !2964
  br i1 %5, label %6, label %7, !dbg !2966

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2967
  unreachable, !dbg !2967

7:                                                ; preds = %3
  ret ptr %4, !dbg !2968
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2952, metadata !DIExpression()), !dbg !2969
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2953, metadata !DIExpression()), !dbg !2969
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2970
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !2971
  %5 = icmp eq ptr %4, null, !dbg !2973
  br i1 %5, label %6, label %7, !dbg !2974

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2975
  unreachable, !dbg !2975

7:                                                ; preds = %3
  ret ptr %4, !dbg !2976
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2977 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()), !dbg !2982
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !2984
  %3 = icmp eq ptr %2, null, !dbg !2986
  br i1 %3, label %4, label %5, !dbg !2987

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !2988
  unreachable, !dbg !2988

5:                                                ; preds = %1
  ret ptr %2, !dbg !2989
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2990 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2991 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2995, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.value(metadata i64 %0, metadata !2997, metadata !DIExpression()), !dbg !3001
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3003
  call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !3004
  %3 = icmp eq ptr %2, null, !dbg !3006
  br i1 %3, label %4, label %5, !dbg !3007

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3008
  unreachable, !dbg !3008

5:                                                ; preds = %1
  ret ptr %2, !dbg !3009
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3010 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %0, metadata !2981, metadata !DIExpression()), !dbg !3016
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3018
  call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !3019
  %3 = icmp eq ptr %2, null, !dbg !3021
  br i1 %3, label %4, label %5, !dbg !3022

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3023
  unreachable, !dbg !3023

5:                                                ; preds = %1
  ret ptr %2, !dbg !3024
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3025 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3037
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3039
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3040
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !3041
  %5 = icmp eq ptr %4, null, !dbg !3043
  br i1 %5, label %6, label %7, !dbg !3044

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3045
  unreachable, !dbg !3045

7:                                                ; preds = %2
  ret ptr %4, !dbg !3046
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3047 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3048 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3052, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3053, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata ptr %0, metadata !3055, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3061
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3063
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !3065
  %5 = icmp eq ptr %4, null, !dbg !3067
  br i1 %5, label %6, label %7, !dbg !3068

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3069
  unreachable, !dbg !3069

7:                                                ; preds = %2
  ret ptr %4, !dbg !3070
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3071 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3075, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i64 %2, metadata !3083, metadata !DIExpression()), !dbg !3084
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3086
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !3087
  %5 = icmp eq ptr %4, null, !dbg !3089
  br i1 %5, label %6, label %7, !dbg !3090

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3091
  unreachable, !dbg !3091

7:                                                ; preds = %3
  ret ptr %4, !dbg !3092
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3093 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata ptr null, metadata !2949, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %0, metadata !2952, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.value(metadata i64 %1, metadata !2953, metadata !DIExpression()), !dbg !3100
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3102
  call void @llvm.dbg.value(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3103
  %4 = icmp eq ptr %3, null, !dbg !3105
  br i1 %4, label %5, label %6, !dbg !3106

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3107
  unreachable, !dbg !3107

6:                                                ; preds = %2
  ret ptr %3, !dbg !3108
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3109 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3113, metadata !DIExpression()), !dbg !3115
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3114, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata ptr null, metadata !3075, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %0, metadata !3076, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata i64 %1, metadata !3077, metadata !DIExpression()), !dbg !3116
  call void @llvm.dbg.value(metadata ptr null, metadata !3079, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %0, metadata !3082, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %1, metadata !3083, metadata !DIExpression()), !dbg !3118
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3120
  call void @llvm.dbg.value(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3121
  %4 = icmp eq ptr %3, null, !dbg !3123
  br i1 %4, label %5, label %6, !dbg !3124

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3125
  unreachable, !dbg !3125

6:                                                ; preds = %2
  ret ptr %3, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3127 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3133
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3132, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i64 1, metadata !691, metadata !DIExpression()), !dbg !3134
  %3 = load i64, ptr %1, align 8, !dbg !3136, !tbaa !2201
  call void @llvm.dbg.value(metadata i64 %3, metadata !692, metadata !DIExpression()), !dbg !3134
  %4 = icmp eq ptr %0, null, !dbg !3137
  br i1 %4, label %5, label %8, !dbg !3139

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3140
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3143
  br label %15, !dbg !3143

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3144
  %10 = add nuw i64 %9, 1, !dbg !3144
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3144
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3144
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3144
  call void @llvm.dbg.value(metadata i64 %13, metadata !692, metadata !DIExpression()), !dbg !3134
  br i1 %12, label %14, label %15, !dbg !3147

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3148
  unreachable, !dbg !3148

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3134
  call void @llvm.dbg.value(metadata i64 %16, metadata !692, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %16, metadata !2952, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 1, metadata !2953, metadata !DIExpression()), !dbg !3149
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3151
  call void @llvm.dbg.value(metadata ptr %17, metadata !2957, metadata !DIExpression()), !dbg !3152
  %18 = icmp eq ptr %17, null, !dbg !3154
  br i1 %18, label %19, label %20, !dbg !3155

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3156
  unreachable, !dbg !3156

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !689, metadata !DIExpression()), !dbg !3134
  store i64 %16, ptr %1, align 8, !dbg !3157, !tbaa !2201
  ret ptr %17, !dbg !3158
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !684 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3159
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !691, metadata !DIExpression()), !dbg !3159
  %4 = load i64, ptr %1, align 8, !dbg !3160, !tbaa !2201
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !692, metadata !DIExpression()), !dbg !3159
  %5 = icmp eq ptr %0, null, !dbg !3161
  br i1 %5, label %6, label %13, !dbg !3162

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3163
  br i1 %7, label %8, label %20, !dbg !3164

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3165
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !692, metadata !DIExpression()), !dbg !3159
  %10 = icmp ugt i64 %2, 128, !dbg !3167
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3168
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !692, metadata !DIExpression()), !dbg !3159
  br label %20, !dbg !3169

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3170
  %15 = add nuw i64 %14, 1, !dbg !3170
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3170
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3170
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3170
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !692, metadata !DIExpression()), !dbg !3159
  br i1 %17, label %19, label %20, !dbg !3171

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3172
  unreachable, !dbg !3172

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3159
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !692, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata ptr %0, metadata !2949, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %21, metadata !2952, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %2, metadata !2953, metadata !DIExpression()), !dbg !3173
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %22, metadata !2957, metadata !DIExpression()), !dbg !3176
  %23 = icmp eq ptr %22, null, !dbg !3178
  br i1 %23, label %24, label %25, !dbg !3179

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3180
  unreachable, !dbg !3180

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !689, metadata !DIExpression()), !dbg !3159
  store i64 %21, ptr %1, align 8, !dbg !3181, !tbaa !2201
  ret ptr %22, !dbg !3182
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !696 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !705, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !706, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !709, metadata !DIExpression()), !dbg !3183
  %6 = load i64, ptr %1, align 8, !dbg !3184, !tbaa !2201
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !710, metadata !DIExpression()), !dbg !3183
  %7 = ashr i64 %6, 1, !dbg !3185
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3185
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3185
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3185
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !711, metadata !DIExpression()), !dbg !3183
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3187
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !711, metadata !DIExpression()), !dbg !3183
  %12 = icmp sgt i64 %3, -1, !dbg !3188
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3190
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3190
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !711, metadata !DIExpression()), !dbg !3183
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3191
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3191
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !712, metadata !DIExpression()), !dbg !3183
  %18 = icmp slt i64 %17, 128, !dbg !3191
  %19 = select i1 %18, i64 128, i64 0, !dbg !3191
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3191
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !713, metadata !DIExpression()), !dbg !3183
  %21 = icmp eq i64 %20, 0, !dbg !3192
  br i1 %21, label %28, label %22, !dbg !3194

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3195
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !711, metadata !DIExpression()), !dbg !3183
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !712, metadata !DIExpression()), !dbg !3183
  br label %28, !dbg !3198

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3183
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !712, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !711, metadata !DIExpression()), !dbg !3183
  %31 = icmp eq ptr %0, null, !dbg !3199
  br i1 %31, label %32, label %33, !dbg !3201

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3202, !tbaa !2201
  br label %33, !dbg !3203

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3204
  %35 = icmp slt i64 %34, %2, !dbg !3206
  br i1 %35, label %36, label %48, !dbg !3207

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3208
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3208
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3208
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !711, metadata !DIExpression()), !dbg !3183
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3209
  br i1 %42, label %47, label %43, !dbg !3209

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3210
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3210
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3210
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !712, metadata !DIExpression()), !dbg !3183
  br i1 %45, label %47, label %48, !dbg !3211

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #39, !dbg !3212
  unreachable, !dbg !3212

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3183
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !712, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !711, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i64 %50, metadata !3030, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i64 %50, metadata !3036, metadata !DIExpression()), !dbg !3215
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3217
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #43, !dbg !3218
  call void @llvm.dbg.value(metadata ptr %52, metadata !2957, metadata !DIExpression()), !dbg !3219
  %53 = icmp eq ptr %52, null, !dbg !3221
  br i1 %53, label %54, label %55, !dbg !3222

54:                                               ; preds = %48
  tail call void @xalloc_die() #39, !dbg !3223
  unreachable, !dbg !3223

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !705, metadata !DIExpression()), !dbg !3183
  store i64 %49, ptr %1, align 8, !dbg !3224, !tbaa !2201
  ret ptr %52, !dbg !3225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3226 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 1, metadata !3233, metadata !DIExpression()), !dbg !3234
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3236
  call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !3237
  %3 = icmp eq ptr %2, null, !dbg !3239
  br i1 %3, label %4, label %5, !dbg !3240

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3241
  unreachable, !dbg !3241

5:                                                ; preds = %1
  ret ptr %2, !dbg !3242
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3243 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3231 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3230, metadata !DIExpression()), !dbg !3244
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3233, metadata !DIExpression()), !dbg !3244
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3245
  call void @llvm.dbg.value(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3246
  %4 = icmp eq ptr %3, null, !dbg !3248
  br i1 %4, label %5, label %6, !dbg !3249

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3250
  unreachable, !dbg !3250

6:                                                ; preds = %2
  ret ptr %3, !dbg !3251
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3252 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3254, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 1, metadata !3259, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 1, metadata !3265, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 1, metadata !3265, metadata !DIExpression()), !dbg !3266
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3268
  call void @llvm.dbg.value(metadata ptr %2, metadata !2957, metadata !DIExpression()), !dbg !3269
  %3 = icmp eq ptr %2, null, !dbg !3271
  br i1 %3, label %4, label %5, !dbg !3272

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3273
  unreachable, !dbg !3273

5:                                                ; preds = %1
  ret ptr %2, !dbg !3274
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3257 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3256, metadata !DIExpression()), !dbg !3275
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3259, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %0, metadata !3262, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.value(metadata i64 %1, metadata !3265, metadata !DIExpression()), !dbg !3276
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3278
  call void @llvm.dbg.value(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3279
  %4 = icmp eq ptr %3, null, !dbg !3281
  br i1 %4, label %5, label %6, !dbg !3282

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3283
  unreachable, !dbg !3283

6:                                                ; preds = %2
  ret ptr %3, !dbg !3284
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3285 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3291
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %1, metadata !2981, metadata !DIExpression()), !dbg !3292
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3295
  %4 = icmp eq ptr %3, null, !dbg !3297
  br i1 %4, label %5, label %6, !dbg !3298

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3299
  unreachable, !dbg !3299

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3300, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3310
  ret ptr %3, !dbg !3311
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3312 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3316, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !2997, metadata !DIExpression()), !dbg !3321
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3324
  %4 = icmp eq ptr %3, null, !dbg !3326
  br i1 %4, label %5, label %6, !dbg !3327

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3328
  unreachable, !dbg !3328

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3300, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3329
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3331
  ret ptr %3, !dbg !3332
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3333 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3337, metadata !DIExpression()), !dbg !3340
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3338, metadata !DIExpression()), !dbg !3340
  %3 = add nsw i64 %1, 1, !dbg !3341
  call void @llvm.dbg.value(metadata i64 %3, metadata !2995, metadata !DIExpression()), !dbg !3342
  call void @llvm.dbg.value(metadata i64 %3, metadata !2997, metadata !DIExpression()), !dbg !3344
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3346
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !3347
  %5 = icmp eq ptr %4, null, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3350

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3351
  unreachable, !dbg !3351

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3339, metadata !DIExpression()), !dbg !3340
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3352
  store i8 0, ptr %8, align 1, !dbg !3353, !tbaa !822
  call void @llvm.dbg.value(metadata ptr %4, metadata !3300, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3356
  ret ptr %4, !dbg !3357
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3358 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3360, metadata !DIExpression()), !dbg !3361
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3362
  %3 = add i64 %2, 1, !dbg !3363
  call void @llvm.dbg.value(metadata ptr %0, metadata !3289, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3290, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !2981, metadata !DIExpression()), !dbg !3366
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3368
  call void @llvm.dbg.value(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !3369
  %5 = icmp eq ptr %4, null, !dbg !3371
  br i1 %5, label %6, label %7, !dbg !3372

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3373
  unreachable, !dbg !3373

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3300, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata ptr %0, metadata !3306, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3307, metadata !DIExpression()), !dbg !3374
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3376
  ret ptr %4, !dbg !3377
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3378 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3383, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3380, metadata !DIExpression()), !dbg !3384
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.105, ptr noundef nonnull @.str.2.106, i32 noundef 5) #37, !dbg !3383
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.107, ptr noundef %2) #37, !dbg !3383
  %3 = icmp eq i32 %1, 0, !dbg !3383
  tail call void @llvm.assume(i1 %3), !dbg !3383
  tail call void @abort() #39, !dbg !3385
  unreachable, !dbg !3385
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3386 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3424, metadata !DIExpression()), !dbg !3429
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3430
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3425, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3431, metadata !DIExpression()), !dbg !3434
  %3 = load i32, ptr %0, align 8, !dbg !3436, !tbaa !3437
  %4 = and i32 %3, 32, !dbg !3438
  %5 = icmp eq i32 %4, 0, !dbg !3438
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3427, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3439
  %7 = icmp eq i32 %6, 0, !dbg !3440
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3428, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  br i1 %5, label %8, label %18, !dbg !3441

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3443
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3425, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3429
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3444
  %11 = xor i1 %7, true, !dbg !3444
  %12 = sext i1 %11 to i32, !dbg !3444
  br i1 %10, label %21, label %13, !dbg !3444

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3445
  %15 = load i32, ptr %14, align 4, !dbg !3445, !tbaa !813
  %16 = icmp ne i32 %15, 9, !dbg !3446
  %17 = sext i1 %16 to i32, !dbg !3447
  br label %21, !dbg !3447

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3448

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3450
  store i32 0, ptr %20, align 4, !dbg !3452, !tbaa !813
  br label %21, !dbg !3450

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3429
  ret i32 %22, !dbg !3453
}

; Function Attrs: nounwind
declare !dbg !3454 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3458 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3496, metadata !DIExpression()), !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3497, metadata !DIExpression()), !dbg !3500
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3501
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3498, metadata !DIExpression()), !dbg !3500
  %3 = icmp slt i32 %2, 0, !dbg !3502
  br i1 %3, label %4, label %6, !dbg !3504

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3505
  br label %24, !dbg !3506

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3507
  %8 = icmp eq i32 %7, 0, !dbg !3507
  br i1 %8, label %13, label %9, !dbg !3509

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3510
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3511
  %12 = icmp eq i64 %11, -1, !dbg !3512
  br i1 %12, label %16, label %13, !dbg !3513

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3514
  %15 = icmp eq i32 %14, 0, !dbg !3514
  br i1 %15, label %16, label %18, !dbg !3515

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3497, metadata !DIExpression()), !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3499, metadata !DIExpression()), !dbg !3500
  br label %24, !dbg !3517

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3518
  %20 = load i32, ptr %19, align 4, !dbg !3518, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3497, metadata !DIExpression()), !dbg !3500
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3516
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3499, metadata !DIExpression()), !dbg !3500
  %22 = icmp eq i32 %20, 0, !dbg !3519
  br i1 %22, label %24, label %23, !dbg !3517

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3521, !tbaa !813
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3499, metadata !DIExpression()), !dbg !3500
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
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3531 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3569, metadata !DIExpression()), !dbg !3570
  %2 = icmp eq ptr %0, null, !dbg !3571
  br i1 %2, label %6, label %3, !dbg !3573

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3574
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
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3589
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
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3594 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3633, metadata !DIExpression()), !dbg !3639
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3634, metadata !DIExpression()), !dbg !3639
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3635, metadata !DIExpression()), !dbg !3639
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3640
  %5 = load ptr, ptr %4, align 8, !dbg !3640, !tbaa !3641
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3642
  %7 = load ptr, ptr %6, align 8, !dbg !3642, !tbaa !3643
  %8 = icmp eq ptr %5, %7, !dbg !3644
  br i1 %8, label %9, label %27, !dbg !3645

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3646
  %11 = load ptr, ptr %10, align 8, !dbg !3646, !tbaa !1190
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
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3655
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3656
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3636, metadata !DIExpression()), !dbg !3657
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3682
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3678, metadata !DIExpression()), !dbg !3682
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3679, metadata !DIExpression()), !dbg !3682
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3680, metadata !DIExpression()), !dbg !3682
  %5 = icmp eq ptr %1, null, !dbg !3683
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3685
  %7 = select i1 %5, ptr @.str.118, ptr %1, !dbg !3685
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3685
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3679, metadata !DIExpression()), !dbg !3682
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3678, metadata !DIExpression()), !dbg !3682
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3677, metadata !DIExpression()), !dbg !3682
  %9 = icmp eq ptr %3, null, !dbg !3686
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3688
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3680, metadata !DIExpression()), !dbg !3682
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3689
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3681, metadata !DIExpression()), !dbg !3682
  %12 = icmp ult i64 %11, -3, !dbg !3690
  br i1 %12, label %13, label %17, !dbg !3692

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3693
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
  tail call void @abort() #39, !dbg !3714
  unreachable, !dbg !3714

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3715

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !3717
  br i1 %23, label %29, label %24, !dbg !3718

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3719
  br i1 %25, label %29, label %26, !dbg !3722

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3723, !tbaa !822
  %28 = zext i8 %27 to i32, !dbg !3724
  store i32 %28, ptr %6, align 4, !dbg !3725, !tbaa !813
  br label %29, !dbg !3726

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3682
  ret i64 %30, !dbg !3727
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3728 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3736, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3737, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3738, metadata !DIExpression()), !dbg !3740
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3741
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3739, metadata !DIExpression()), !dbg !3740
  br i1 %5, label %6, label %8, !dbg !3743

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3744
  store i32 12, ptr %7, align 4, !dbg !3746, !tbaa !813
  br label %12, !dbg !3747

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3741
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata ptr %0, metadata !3748, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.value(metadata i64 %9, metadata !3751, metadata !DIExpression()), !dbg !3752
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3754
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3755
  br label %12, !dbg !3756

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3740
  ret ptr %13, !dbg !3757
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3758 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !3767
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3763, metadata !DIExpression(), metadata !3767, metadata ptr %2, metadata !DIExpression()), !dbg !3768
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3762, metadata !DIExpression()), !dbg !3768
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3769
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3770
  %4 = icmp eq i32 %3, 0, !dbg !3770
  br i1 %4, label %5, label %12, !dbg !3772

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata ptr @.str.123, metadata !3776, metadata !DIExpression()), !dbg !3777
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.123, i64 2), !dbg !3780
  %7 = icmp eq i32 %6, 0, !dbg !3781
  br i1 %7, label %11, label %8, !dbg !3782

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3773, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata ptr @.str.1.124, metadata !3776, metadata !DIExpression()), !dbg !3783
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.124, i64 6), !dbg !3785
  %10 = icmp eq i32 %9, 0, !dbg !3786
  br i1 %10, label %11, label %12, !dbg !3787

11:                                               ; preds = %8, %5
  br label %12, !dbg !3788

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3768
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3789
  ret i1 %13, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3790 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3794, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3795, metadata !DIExpression()), !dbg !3797
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3796, metadata !DIExpression()), !dbg !3797
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3798
  ret i32 %4, !dbg !3799
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3800 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3804, metadata !DIExpression()), !dbg !3805
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3806
  ret ptr %2, !dbg !3807
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3808 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3810, metadata !DIExpression()), !dbg !3812
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3813
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3811, metadata !DIExpression()), !dbg !3812
  ret ptr %2, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3817, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3818, metadata !DIExpression()), !dbg !3824
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3819, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i32 %0, metadata !3810, metadata !DIExpression()), !dbg !3825
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3827
  call void @llvm.dbg.value(metadata ptr %4, metadata !3811, metadata !DIExpression()), !dbg !3825
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3820, metadata !DIExpression()), !dbg !3824
  %5 = icmp eq ptr %4, null, !dbg !3828
  br i1 %5, label %6, label %9, !dbg !3829

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3830
  br i1 %7, label %19, label %8, !dbg !3833

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3834, !tbaa !822
  br label %19, !dbg !3835

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3836
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3821, metadata !DIExpression()), !dbg !3837
  %11 = icmp ult i64 %10, %2, !dbg !3838
  br i1 %11, label %12, label %14, !dbg !3840

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3841
  call void @llvm.dbg.value(metadata ptr %1, metadata !3843, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata ptr %4, metadata !3846, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %13, metadata !3847, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3850
  br label %19, !dbg !3851

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3852
  br i1 %15, label %19, label %16, !dbg !3855

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %1, metadata !3843, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata ptr %4, metadata !3846, metadata !DIExpression()), !dbg !3858
  call void @llvm.dbg.value(metadata i64 %17, metadata !3847, metadata !DIExpression()), !dbg !3858
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3860
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3861
  store i8 0, ptr %18, align 1, !dbg !3862, !tbaa !822
  br label %19, !dbg !3863

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3864
  ret i32 %20, !dbg !3865
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

!llvm.dbg.cu = !{!72, !292, !296, !311, !638, !672, !370, !391, !405, !456, !674, !630, !680, !715, !717, !719, !721, !723, !654, !725, !727, !729, !731}
!llvm.ident = !{!733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733, !733}
!llvm.module.flags = !{!734, !735, !736, !737, !738, !739, !740, !741}

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
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/logname.o -MD -MP -MF src/.deps/logname.Tpo -c src/logname.c -o src/.logname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !90, globals: !98, splitDebugInlining: false, nameTableKind: None)
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
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !95, line: 18, baseType: !96)
!95 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
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
!292 = distinct !DICompileUnit(language: DW_LANG_C11, file: !289, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !293, splitDebugInlining: false, nameTableKind: None)
!293 = !{!287, !290}
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(name: "file_name", scope: !296, file: !297, line: 45, type: !70, isLocal: true, isDefinition: true)
!296 = distinct !DICompileUnit(language: DW_LANG_C11, file: !297, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !298, splitDebugInlining: false, nameTableKind: None)
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
!310 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !311, file: !312, line: 66, type: !362, isLocal: false, isDefinition: true)
!311 = distinct !DICompileUnit(language: DW_LANG_C11, file: !312, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !313, globals: !314, splitDebugInlining: false, nameTableKind: None)
!312 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!313 = !{!91, !97}
!314 = !{!315, !317, !341, !343, !345, !347, !309, !349, !351, !353, !355, !360}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(scope: null, file: !312, line: 272, type: !101, isLocal: true, isDefinition: true)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "old_file_name", scope: !319, file: !312, line: 304, type: !70, isLocal: true, isDefinition: true)
!319 = distinct !DISubprogram(name: "verror_at_line", scope: !312, file: !312, line: 298, type: !320, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !334)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !92, !92, !70, !76, !70, !322}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 52, baseType: !324)
!323 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 12, baseType: !326)
!325 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !312, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !328)
!328 = !{!329, !330, !331, !332, !333}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !327, file: !312, baseType: !91, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !327, file: !312, baseType: !91, size: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !327, file: !312, baseType: !91, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !327, file: !312, baseType: !92, size: 32, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !327, file: !312, baseType: !92, size: 32, offset: 224)
!334 = !{!335, !336, !337, !338, !339, !340}
!335 = !DILocalVariable(name: "status", arg: 1, scope: !319, file: !312, line: 298, type: !92)
!336 = !DILocalVariable(name: "errnum", arg: 2, scope: !319, file: !312, line: 298, type: !92)
!337 = !DILocalVariable(name: "file_name", arg: 3, scope: !319, file: !312, line: 298, type: !70)
!338 = !DILocalVariable(name: "line_number", arg: 4, scope: !319, file: !312, line: 298, type: !76)
!339 = !DILocalVariable(name: "message", arg: 5, scope: !319, file: !312, line: 298, type: !70)
!340 = !DILocalVariable(name: "args", arg: 6, scope: !319, file: !312, line: 298, type: !322)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "old_line_number", scope: !319, file: !312, line: 305, type: !76, isLocal: true, isDefinition: true)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !312, line: 338, type: !108, isLocal: true, isDefinition: true)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !19, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !312, line: 346, type: !118, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "error_message_count", scope: !311, file: !312, line: 69, type: !76, isLocal: false, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !311, file: !312, line: 295, type: !92, isLocal: false, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !138, isLocal: true, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !312, line: 208, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 21)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !312, line: 214, type: !101, isLocal: true, isDefinition: true)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null}
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !367, line: 60, type: !118, isLocal: true, isDefinition: true)
!367 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "long_options", scope: !370, file: !367, line: 34, type: !379, isLocal: true, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C11, file: !367, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, globals: !372, splitDebugInlining: false, nameTableKind: None)
!371 = !{!91}
!372 = !{!365, !373, !375, !377, !368}
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !367, line: 112, type: !34, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !367, line: 36, type: !101, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !367, line: 37, type: !19, isLocal: true, isDefinition: true)
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
!391 = distinct !DICompileUnit(language: DW_LANG_C11, file: !392, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !393, globals: !394, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!393 = !{!91, !239}
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
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !402, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !406, splitDebugInlining: false, nameTableKind: None)
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
!456 = distinct !DICompileUnit(language: DW_LANG_C11, file: !432, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !457, retainedTypes: !477, globals: !478, splitDebugInlining: false, nameTableKind: None)
!457 = !{!458, !472, !74}
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !459, line: 42, baseType: !76, size: 32, elements: !460)
!459 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!477 = !{!91, !92, !93, !94}
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
!630 = distinct !DICompileUnit(language: DW_LANG_C11, file: !631, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !632, splitDebugInlining: false, nameTableKind: None)
!631 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!632 = !{!628}
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !634)
!634 = !{!635}
!635 = !DISubrange(count: 47)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "exit_failure", scope: !638, file: !639, line: 24, type: !641, isLocal: false, isDefinition: true)
!638 = distinct !DICompileUnit(language: DW_LANG_C11, file: !639, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !640, splitDebugInlining: false, nameTableKind: None)
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
!654 = distinct !DICompileUnit(language: DW_LANG_C11, file: !651, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !655, globals: !656, splitDebugInlining: false, nameTableKind: None)
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
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !548, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !675, retainedTypes: !371, globals: !679, splitDebugInlining: false, nameTableKind: None)
!675 = !{!676}
!676 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !548, line: 40, baseType: !76, size: 32, elements: !677)
!677 = !{!678}
!678 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!679 = !{!546, !549, !551, !553, !555, !557, !562, !567, !569, !574, !579, !584, !589, !591, !596, !601, !606, !611, !613, !615, !617, !619, !621, !623}
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!682 = !{!683, !695}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !684, file: !681, line: 188, baseType: !76, size: 32, elements: !693)
!684 = distinct !DISubprogram(name: "x2nrealloc", scope: !681, file: !681, line: 176, type: !685, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !688)
!685 = !DISubroutineType(types: !686)
!686 = !{!91, !91, !687, !94}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!688 = !{!689, !690, !691, !692}
!689 = !DILocalVariable(name: "p", arg: 1, scope: !684, file: !681, line: 176, type: !91)
!690 = !DILocalVariable(name: "pn", arg: 2, scope: !684, file: !681, line: 176, type: !687)
!691 = !DILocalVariable(name: "s", arg: 3, scope: !684, file: !681, line: 176, type: !94)
!692 = !DILocalVariable(name: "n", scope: !684, file: !681, line: 178, type: !94)
!693 = !{!694}
!694 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!695 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !696, file: !681, line: 228, baseType: !76, size: 32, elements: !693)
!696 = distinct !DISubprogram(name: "xpalloc", scope: !681, file: !681, line: 223, type: !697, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !704)
!697 = !DISubroutineType(types: !698)
!698 = !{!91, !91, !699, !700, !702, !700}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !701, line: 130, baseType: !702)
!701 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !703, line: 18, baseType: !260)
!703 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713}
!705 = !DILocalVariable(name: "pa", arg: 1, scope: !696, file: !681, line: 223, type: !91)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !696, file: !681, line: 223, type: !699)
!707 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !696, file: !681, line: 223, type: !700)
!708 = !DILocalVariable(name: "n_max", arg: 4, scope: !696, file: !681, line: 223, type: !702)
!709 = !DILocalVariable(name: "s", arg: 5, scope: !696, file: !681, line: 223, type: !700)
!710 = !DILocalVariable(name: "n0", scope: !696, file: !681, line: 230, type: !700)
!711 = !DILocalVariable(name: "n", scope: !696, file: !681, line: 237, type: !700)
!712 = !DILocalVariable(name: "nbytes", scope: !696, file: !681, line: 248, type: !700)
!713 = !DILocalVariable(name: "adjusted_nbytes", scope: !696, file: !681, line: 252, type: !700)
!714 = !{!239, !91}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !716, splitDebugInlining: false, nameTableKind: None)
!716 = !{!642, !645, !647}
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !728, splitDebugInlining: false, nameTableKind: None)
!728 = !{!667, !670}
!729 = distinct !DICompileUnit(language: DW_LANG_C11, file: !730, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!730 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !371, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!733 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!734 = !{i32 7, !"Dwarf Version", i32 5}
!735 = !{i32 2, !"Debug Info Version", i32 3}
!736 = !{i32 1, !"wchar_size", i32 4}
!737 = !{i32 8, !"PIC Level", i32 2}
!738 = !{i32 7, !"PIE Level", i32 2}
!739 = !{i32 7, !"uwtable", i32 2}
!740 = !{i32 7, !"frame-pointer", i32 1}
!741 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!781 = !{}
!782 = !DILocation(line: 857, column: 3, scope: !763, inlinedAt: !780)
!783 = !DILocation(line: 861, column: 29, scope: !763, inlinedAt: !780)
!784 = !DILocation(line: 862, column: 7, scope: !785, inlinedAt: !780)
!785 = distinct !DILexicalBlock(scope: !763, file: !67, line: 862, column: 7)
!786 = !DILocation(line: 862, column: 19, scope: !785, inlinedAt: !780)
!787 = !DILocation(line: 862, column: 22, scope: !785, inlinedAt: !780)
!788 = !DILocation(line: 862, column: 7, scope: !763, inlinedAt: !780)
!789 = !DILocation(line: 868, column: 7, scope: !790, inlinedAt: !780)
!790 = distinct !DILexicalBlock(scope: !785, file: !67, line: 863, column: 5)
!791 = !DILocation(line: 870, column: 5, scope: !790, inlinedAt: !780)
!792 = !DILocation(line: 875, column: 3, scope: !763, inlinedAt: !780)
!793 = !DILocation(line: 877, column: 3, scope: !763, inlinedAt: !780)
!794 = !DILocation(line: 46, column: 3, scope: !742)
!795 = !DISubprogram(name: "dcgettext", scope: !796, file: !796, line: 51, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!796 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!797 = !DISubroutineType(types: !798)
!798 = !{!239, !70, !70, !92}
!799 = !DISubprogram(name: "__fprintf_chk", scope: !800, file: !800, line: 93, type: !801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!800 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!801 = !DISubroutineType(types: !802)
!802 = !{!92, !803, !92, !804, null}
!803 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !231)
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!805 = !DISubprogram(name: "__printf_chk", scope: !800, file: !800, line: 95, type: !806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!806 = !DISubroutineType(types: !807)
!807 = !{!92, !92, !804, null}
!808 = !DISubprogram(name: "fputs_unlocked", scope: !323, file: !323, line: 691, type: !809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!925 = !DISubprogram(name: "setlocale", scope: !926, file: !926, line: 122, type: !927, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!926 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!927 = !DISubroutineType(types: !928)
!928 = !{!239, !92, !70}
!929 = !DISubprogram(name: "strncmp", scope: !930, file: !930, line: 159, type: !931, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!930 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!931 = !DISubroutineType(types: !932)
!932 = !{!92, !70, !70, !94}
!933 = !DISubprogram(name: "exit", scope: !934, file: !934, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!934 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!935 = !DISubprogram(name: "getenv", scope: !934, file: !934, line: 641, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!936 = !DISubroutineType(types: !937)
!937 = !{!239, !70}
!938 = !DISubprogram(name: "strcmp", scope: !930, file: !930, line: 156, type: !939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!939 = !DISubroutineType(types: !940)
!940 = !{!92, !70, !70}
!941 = !DISubprogram(name: "strspn", scope: !930, file: !930, line: 297, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!942 = !DISubroutineType(types: !943)
!943 = !{!96, !70, !70}
!944 = !DISubprogram(name: "strchr", scope: !930, file: !930, line: 246, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{!239, !70, !92}
!947 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!948 = !DISubroutineType(types: !949)
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!953 = !DISubprogram(name: "strcspn", scope: !930, file: !930, line: 293, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = !DISubprogram(name: "fwrite_unlocked", scope: !323, file: !323, line: 704, type: !955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!992 = !DISubprogram(name: "bindtextdomain", scope: !796, file: !796, line: 86, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!993 = !DISubroutineType(types: !994)
!994 = !{!239, !70, !70}
!995 = !DISubprogram(name: "textdomain", scope: !796, file: !796, line: 82, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DISubprogram(name: "atexit", scope: !934, file: !934, line: 602, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!997 = !DISubroutineType(types: !998)
!998 = !{!92, !362}
!999 = !DISubprogram(name: "getlogin", scope: !1000, file: !1000, line: 881, type: !1001, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1000 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!239}
!1003 = !DISubprogram(name: "puts", scope: !323, file: !323, line: 661, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!92, !70}
!1006 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !297, file: !297, line: 50, type: !764, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1007)
!1007 = !{!1008}
!1008 = !DILocalVariable(name: "file", arg: 1, scope: !1006, file: !297, line: 50, type: !70)
!1009 = !DILocation(line: 0, scope: !1006)
!1010 = !DILocation(line: 52, column: 13, scope: !1006)
!1011 = !DILocation(line: 53, column: 1, scope: !1006)
!1012 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !297, file: !297, line: 87, type: !1013, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !218}
!1015 = !{!1016}
!1016 = !DILocalVariable(name: "ignore", arg: 1, scope: !1012, file: !297, line: 87, type: !218)
!1017 = !DILocation(line: 0, scope: !1012)
!1018 = !DILocation(line: 89, column: 16, scope: !1012)
!1019 = !{!1020, !1020, i64 0}
!1020 = !{!"_Bool", !755, i64 0}
!1021 = !DILocation(line: 90, column: 1, scope: !1012)
!1022 = distinct !DISubprogram(name: "close_stdout", scope: !297, file: !297, line: 116, type: !363, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !296, retainedNodes: !1023)
!1023 = !{!1024}
!1024 = !DILocalVariable(name: "write_error", scope: !1025, file: !297, line: 121, type: !70)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !297, line: 120, column: 5)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !297, line: 118, column: 7)
!1027 = !DILocation(line: 118, column: 21, scope: !1026)
!1028 = !DILocation(line: 118, column: 7, scope: !1026)
!1029 = !DILocation(line: 118, column: 29, scope: !1026)
!1030 = !DILocation(line: 119, column: 7, scope: !1026)
!1031 = !DILocation(line: 119, column: 12, scope: !1026)
!1032 = !{i8 0, i8 2}
!1033 = !DILocation(line: 119, column: 25, scope: !1026)
!1034 = !DILocation(line: 119, column: 28, scope: !1026)
!1035 = !DILocation(line: 119, column: 34, scope: !1026)
!1036 = !DILocation(line: 118, column: 7, scope: !1022)
!1037 = !DILocation(line: 121, column: 33, scope: !1025)
!1038 = !DILocation(line: 0, scope: !1025)
!1039 = !DILocation(line: 122, column: 11, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1025, file: !297, line: 122, column: 11)
!1041 = !DILocation(line: 0, scope: !1040)
!1042 = !DILocation(line: 122, column: 11, scope: !1025)
!1043 = !DILocation(line: 123, column: 9, scope: !1040)
!1044 = !DILocation(line: 126, column: 9, scope: !1040)
!1045 = !DILocation(line: 128, column: 14, scope: !1025)
!1046 = !DILocation(line: 128, column: 7, scope: !1025)
!1047 = !DILocation(line: 133, column: 42, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1022, file: !297, line: 133, column: 7)
!1049 = !DILocation(line: 133, column: 28, scope: !1048)
!1050 = !DILocation(line: 133, column: 50, scope: !1048)
!1051 = !DILocation(line: 133, column: 7, scope: !1022)
!1052 = !DILocation(line: 134, column: 12, scope: !1048)
!1053 = !DILocation(line: 134, column: 5, scope: !1048)
!1054 = !DILocation(line: 135, column: 1, scope: !1022)
!1055 = !DISubprogram(name: "__errno_location", scope: !1056, file: !1056, line: 37, type: !1057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1056 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!387}
!1059 = !DISubprogram(name: "_exit", scope: !1000, file: !1000, line: 624, type: !743, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1060 = distinct !DISubprogram(name: "verror", scope: !312, file: !312, line: 251, type: !1061, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1063)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{null, !92, !92, !70, !322}
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DILocalVariable(name: "status", arg: 1, scope: !1060, file: !312, line: 251, type: !92)
!1065 = !DILocalVariable(name: "errnum", arg: 2, scope: !1060, file: !312, line: 251, type: !92)
!1066 = !DILocalVariable(name: "message", arg: 3, scope: !1060, file: !312, line: 251, type: !70)
!1067 = !DILocalVariable(name: "args", arg: 4, scope: !1060, file: !312, line: 251, type: !322)
!1068 = !DILocation(line: 0, scope: !1060)
!1069 = !DILocation(line: 261, column: 3, scope: !1060)
!1070 = !DILocation(line: 265, column: 7, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1060, file: !312, line: 265, column: 7)
!1072 = !DILocation(line: 265, column: 7, scope: !1060)
!1073 = !DILocation(line: 266, column: 5, scope: !1071)
!1074 = !DILocation(line: 272, column: 7, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !312, line: 268, column: 5)
!1076 = !DILocation(line: 276, column: 3, scope: !1060)
!1077 = !{i64 0, i64 8, !753, i64 8, i64 8, !753, i64 16, i64 8, !753, i64 24, i64 4, !813, i64 28, i64 4, !813}
!1078 = !DILocation(line: 282, column: 1, scope: !1060)
!1079 = distinct !DISubprogram(name: "flush_stdout", scope: !312, file: !312, line: 163, type: !363, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1080)
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
!1096 = distinct !DISubprogram(name: "error_tail", scope: !312, file: !312, line: 219, type: !1061, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1097)
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DILocalVariable(name: "status", arg: 1, scope: !1096, file: !312, line: 219, type: !92)
!1099 = !DILocalVariable(name: "errnum", arg: 2, scope: !1096, file: !312, line: 219, type: !92)
!1100 = !DILocalVariable(name: "message", arg: 3, scope: !1096, file: !312, line: 219, type: !70)
!1101 = !DILocalVariable(name: "args", arg: 4, scope: !1096, file: !312, line: 219, type: !322)
!1102 = distinct !DIAssignID()
!1103 = !DILocation(line: 0, scope: !1096)
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
!1155 = !DILocation(line: 232, column: 3, scope: !1096)
!1156 = !DILocation(line: 233, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1096, file: !312, line: 233, column: 7)
!1158 = !DILocation(line: 233, column: 7, scope: !1096)
!1159 = !DILocalVariable(name: "errbuf", scope: !1160, file: !312, line: 193, type: !1164)
!1160 = distinct !DISubprogram(name: "print_errno_message", scope: !312, file: !312, line: 188, type: !743, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1161)
!1161 = !{!1162, !1163, !1159}
!1162 = !DILocalVariable(name: "errnum", arg: 1, scope: !1160, file: !312, line: 188, type: !92)
!1163 = !DILocalVariable(name: "s", scope: !1160, file: !312, line: 190, type: !70)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1165)
!1165 = !{!1166}
!1166 = !DISubrange(count: 1024)
!1167 = !DILocation(line: 0, scope: !1160, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 234, column: 5, scope: !1157)
!1169 = !DILocation(line: 193, column: 3, scope: !1160, inlinedAt: !1168)
!1170 = !DILocation(line: 195, column: 7, scope: !1160, inlinedAt: !1168)
!1171 = !DILocation(line: 207, column: 9, scope: !1172, inlinedAt: !1168)
!1172 = distinct !DILexicalBlock(scope: !1160, file: !312, line: 207, column: 7)
!1173 = !DILocation(line: 207, column: 7, scope: !1160, inlinedAt: !1168)
!1174 = !DILocation(line: 208, column: 9, scope: !1172, inlinedAt: !1168)
!1175 = !DILocation(line: 208, column: 5, scope: !1172, inlinedAt: !1168)
!1176 = !DILocation(line: 214, column: 3, scope: !1160, inlinedAt: !1168)
!1177 = !DILocation(line: 216, column: 1, scope: !1160, inlinedAt: !1168)
!1178 = !DILocation(line: 234, column: 5, scope: !1157)
!1179 = !DILocation(line: 238, column: 3, scope: !1096)
!1180 = !DILocalVariable(name: "__c", arg: 1, scope: !1181, file: !1182, line: 101, type: !92)
!1181 = distinct !DISubprogram(name: "putc_unlocked", scope: !1182, file: !1182, line: 101, type: !1183, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1185)
!1182 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!92, !92, !1110}
!1185 = !{!1180, !1186}
!1186 = !DILocalVariable(name: "__stream", arg: 2, scope: !1181, file: !1182, line: 101, type: !1110)
!1187 = !DILocation(line: 0, scope: !1181, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 238, column: 3, scope: !1096)
!1189 = !DILocation(line: 103, column: 10, scope: !1181, inlinedAt: !1188)
!1190 = !{!1191, !754, i64 40}
!1191 = !{!"_IO_FILE", !814, i64 0, !754, i64 8, !754, i64 16, !754, i64 24, !754, i64 32, !754, i64 40, !754, i64 48, !754, i64 56, !754, i64 64, !754, i64 72, !754, i64 80, !754, i64 88, !754, i64 96, !754, i64 104, !814, i64 112, !814, i64 116, !1192, i64 120, !855, i64 128, !755, i64 130, !755, i64 131, !754, i64 136, !1192, i64 144, !754, i64 152, !754, i64 160, !754, i64 168, !754, i64 176, !1192, i64 184, !814, i64 192, !755, i64 196}
!1192 = !{!"long", !755, i64 0}
!1193 = !{!1191, !754, i64 48}
!1194 = !{!"branch_weights", i32 2000, i32 1}
!1195 = !DILocation(line: 240, column: 3, scope: !1096)
!1196 = !DILocation(line: 241, column: 7, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1096, file: !312, line: 241, column: 7)
!1198 = !DILocation(line: 241, column: 7, scope: !1096)
!1199 = !DILocation(line: 242, column: 5, scope: !1197)
!1200 = !DILocation(line: 243, column: 1, scope: !1096)
!1201 = !DISubprogram(name: "__vfprintf_chk", scope: !800, file: !800, line: 96, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!92, !1109, !92, !804, !324}
!1204 = !DISubprogram(name: "strerror_r", scope: !930, file: !930, line: 444, type: !1205, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!239, !92, !239, !94}
!1207 = !DISubprogram(name: "__overflow", scope: !323, file: !323, line: 886, type: !1208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!92, !1110, !92}
!1210 = !DISubprogram(name: "fflush_unlocked", scope: !323, file: !323, line: 239, type: !1211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!92, !1110}
!1213 = !DISubprogram(name: "fcntl", scope: !1214, file: !1214, line: 149, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1214 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!92, !92, !92, null}
!1217 = distinct !DISubprogram(name: "error", scope: !312, file: !312, line: 285, type: !1218, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{null, !92, !92, !70, null}
!1220 = !{!1221, !1222, !1223, !1224}
!1221 = !DILocalVariable(name: "status", arg: 1, scope: !1217, file: !312, line: 285, type: !92)
!1222 = !DILocalVariable(name: "errnum", arg: 2, scope: !1217, file: !312, line: 285, type: !92)
!1223 = !DILocalVariable(name: "message", arg: 3, scope: !1217, file: !312, line: 285, type: !70)
!1224 = !DILocalVariable(name: "ap", scope: !1217, file: !312, line: 287, type: !322)
!1225 = distinct !DIAssignID()
!1226 = !DILocation(line: 0, scope: !1217)
!1227 = !DILocation(line: 287, column: 3, scope: !1217)
!1228 = !DILocation(line: 288, column: 3, scope: !1217)
!1229 = !DILocation(line: 289, column: 3, scope: !1217)
!1230 = !DILocation(line: 290, column: 3, scope: !1217)
!1231 = !DILocation(line: 291, column: 1, scope: !1217)
!1232 = !DILocation(line: 0, scope: !319)
!1233 = !DILocation(line: 302, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !319, file: !312, line: 302, column: 7)
!1235 = !DILocation(line: 302, column: 7, scope: !319)
!1236 = !DILocation(line: 307, column: 11, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !312, line: 307, column: 11)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !312, line: 303, column: 5)
!1239 = !DILocation(line: 307, column: 27, scope: !1237)
!1240 = !DILocation(line: 308, column: 11, scope: !1237)
!1241 = !DILocation(line: 308, column: 28, scope: !1237)
!1242 = !DILocation(line: 308, column: 25, scope: !1237)
!1243 = !DILocation(line: 309, column: 15, scope: !1237)
!1244 = !DILocation(line: 309, column: 33, scope: !1237)
!1245 = !DILocation(line: 310, column: 19, scope: !1237)
!1246 = !DILocation(line: 311, column: 22, scope: !1237)
!1247 = !DILocation(line: 311, column: 56, scope: !1237)
!1248 = !DILocation(line: 307, column: 11, scope: !1238)
!1249 = !DILocation(line: 316, column: 21, scope: !1238)
!1250 = !DILocation(line: 317, column: 23, scope: !1238)
!1251 = !DILocation(line: 318, column: 5, scope: !1238)
!1252 = !DILocation(line: 327, column: 3, scope: !319)
!1253 = !DILocation(line: 331, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !319, file: !312, line: 331, column: 7)
!1255 = !DILocation(line: 331, column: 7, scope: !319)
!1256 = !DILocation(line: 332, column: 5, scope: !1254)
!1257 = !DILocation(line: 338, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1254, file: !312, line: 334, column: 5)
!1259 = !DILocation(line: 346, column: 3, scope: !319)
!1260 = !DILocation(line: 350, column: 3, scope: !319)
!1261 = !DILocation(line: 356, column: 1, scope: !319)
!1262 = distinct !DISubprogram(name: "error_at_line", scope: !312, file: !312, line: 359, type: !1263, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !311, retainedNodes: !1265)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !92, !92, !70, !76, !70, null}
!1265 = !{!1266, !1267, !1268, !1269, !1270, !1271}
!1266 = !DILocalVariable(name: "status", arg: 1, scope: !1262, file: !312, line: 359, type: !92)
!1267 = !DILocalVariable(name: "errnum", arg: 2, scope: !1262, file: !312, line: 359, type: !92)
!1268 = !DILocalVariable(name: "file_name", arg: 3, scope: !1262, file: !312, line: 359, type: !70)
!1269 = !DILocalVariable(name: "line_number", arg: 4, scope: !1262, file: !312, line: 360, type: !76)
!1270 = !DILocalVariable(name: "message", arg: 5, scope: !1262, file: !312, line: 360, type: !70)
!1271 = !DILocalVariable(name: "ap", scope: !1262, file: !312, line: 362, type: !322)
!1272 = distinct !DIAssignID()
!1273 = !DILocation(line: 0, scope: !1262)
!1274 = !DILocation(line: 362, column: 3, scope: !1262)
!1275 = !DILocation(line: 363, column: 3, scope: !1262)
!1276 = !DILocation(line: 364, column: 3, scope: !1262)
!1277 = !DILocation(line: 366, column: 3, scope: !1262)
!1278 = !DILocation(line: 367, column: 1, scope: !1262)
!1279 = distinct !DISubprogram(name: "getprogname", scope: !673, file: !673, line: 54, type: !1280, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!70}
!1282 = !DILocation(line: 58, column: 10, scope: !1279)
!1283 = !DILocation(line: 58, column: 3, scope: !1279)
!1284 = distinct !DISubprogram(name: "parse_long_options", scope: !367, file: !367, line: 45, type: !1285, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1288)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{null, !92, !963, !70, !70, !70, !1287, null}
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1299}
!1289 = !DILocalVariable(name: "argc", arg: 1, scope: !1284, file: !367, line: 45, type: !92)
!1290 = !DILocalVariable(name: "argv", arg: 2, scope: !1284, file: !367, line: 46, type: !963)
!1291 = !DILocalVariable(name: "command_name", arg: 3, scope: !1284, file: !367, line: 47, type: !70)
!1292 = !DILocalVariable(name: "package", arg: 4, scope: !1284, file: !367, line: 48, type: !70)
!1293 = !DILocalVariable(name: "version", arg: 5, scope: !1284, file: !367, line: 49, type: !70)
!1294 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1284, file: !367, line: 50, type: !1287)
!1295 = !DILocalVariable(name: "saved_opterr", scope: !1284, file: !367, line: 53, type: !92)
!1296 = !DILocalVariable(name: "c", scope: !1297, file: !367, line: 60, type: !92)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !367, line: 59, column: 5)
!1298 = distinct !DILexicalBlock(scope: !1284, file: !367, line: 58, column: 7)
!1299 = !DILocalVariable(name: "authors", scope: !1300, file: !367, line: 71, type: !1304)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !367, line: 70, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !367, line: 64, column: 13)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !367, line: 62, column: 9)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !367, line: 61, column: 11)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 52, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 12, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !367, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1313}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1307, file: !367, line: 71, baseType: !91, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1307, file: !367, line: 71, baseType: !91, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1307, file: !367, line: 71, baseType: !91, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1307, file: !367, line: 71, baseType: !92, size: 32, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1307, file: !367, line: 71, baseType: !92, size: 32, offset: 224)
!1314 = distinct !DIAssignID()
!1315 = !DILocation(line: 0, scope: !1300)
!1316 = !DILocation(line: 0, scope: !1284)
!1317 = !DILocation(line: 53, column: 22, scope: !1284)
!1318 = !DILocation(line: 56, column: 10, scope: !1284)
!1319 = !DILocation(line: 58, column: 12, scope: !1298)
!1320 = !DILocation(line: 58, column: 7, scope: !1284)
!1321 = !DILocation(line: 60, column: 15, scope: !1297)
!1322 = !DILocation(line: 0, scope: !1297)
!1323 = !DILocation(line: 61, column: 11, scope: !1297)
!1324 = !DILocation(line: 66, column: 15, scope: !1301)
!1325 = !DILocation(line: 67, column: 15, scope: !1301)
!1326 = !DILocation(line: 71, column: 17, scope: !1300)
!1327 = !DILocation(line: 72, column: 17, scope: !1300)
!1328 = !DILocation(line: 73, column: 33, scope: !1300)
!1329 = !DILocation(line: 73, column: 17, scope: !1300)
!1330 = !DILocation(line: 74, column: 17, scope: !1300)
!1331 = !DILocation(line: 85, column: 10, scope: !1284)
!1332 = !DILocation(line: 89, column: 10, scope: !1284)
!1333 = !DILocation(line: 90, column: 1, scope: !1284)
!1334 = !DISubprogram(name: "getopt_long", scope: !382, file: !382, line: 66, type: !1335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!92, !92, !1337, !70, !1339, !387}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1340 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !367, file: !367, line: 98, type: !1341, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !370, retainedNodes: !1343)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !92, !963, !70, !70, !70, !218, !1287, null}
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1344 = !DILocalVariable(name: "argc", arg: 1, scope: !1340, file: !367, line: 98, type: !92)
!1345 = !DILocalVariable(name: "argv", arg: 2, scope: !1340, file: !367, line: 99, type: !963)
!1346 = !DILocalVariable(name: "command_name", arg: 3, scope: !1340, file: !367, line: 100, type: !70)
!1347 = !DILocalVariable(name: "package", arg: 4, scope: !1340, file: !367, line: 101, type: !70)
!1348 = !DILocalVariable(name: "version", arg: 5, scope: !1340, file: !367, line: 102, type: !70)
!1349 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1340, file: !367, line: 103, type: !218)
!1350 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1340, file: !367, line: 104, type: !1287)
!1351 = !DILocalVariable(name: "saved_opterr", scope: !1340, file: !367, line: 107, type: !92)
!1352 = !DILocalVariable(name: "optstring", scope: !1340, file: !367, line: 112, type: !70)
!1353 = !DILocalVariable(name: "c", scope: !1340, file: !367, line: 114, type: !92)
!1354 = !DILocalVariable(name: "authors", scope: !1355, file: !367, line: 125, type: !1304)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !367, line: 124, column: 11)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !367, line: 118, column: 9)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !367, line: 116, column: 5)
!1358 = distinct !DILexicalBlock(scope: !1340, file: !367, line: 115, column: 7)
!1359 = distinct !DIAssignID()
!1360 = !DILocation(line: 0, scope: !1355)
!1361 = !DILocation(line: 0, scope: !1340)
!1362 = !DILocation(line: 107, column: 22, scope: !1340)
!1363 = !DILocation(line: 110, column: 10, scope: !1340)
!1364 = !DILocation(line: 112, column: 27, scope: !1340)
!1365 = !DILocation(line: 114, column: 11, scope: !1340)
!1366 = !DILocation(line: 115, column: 7, scope: !1340)
!1367 = !DILocation(line: 125, column: 13, scope: !1355)
!1368 = !DILocation(line: 126, column: 13, scope: !1355)
!1369 = !DILocation(line: 127, column: 29, scope: !1355)
!1370 = !DILocation(line: 127, column: 13, scope: !1355)
!1371 = !DILocation(line: 128, column: 13, scope: !1355)
!1372 = !DILocation(line: 132, column: 26, scope: !1356)
!1373 = !DILocation(line: 133, column: 11, scope: !1356)
!1374 = !DILocation(line: 0, scope: !1356)
!1375 = !DILocation(line: 138, column: 10, scope: !1340)
!1376 = !DILocation(line: 139, column: 1, scope: !1340)
!1377 = distinct !DISubprogram(name: "set_program_name", scope: !392, file: !392, line: 37, type: !764, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DILocalVariable(name: "argv0", arg: 1, scope: !1377, file: !392, line: 37, type: !70)
!1380 = !DILocalVariable(name: "slash", scope: !1377, file: !392, line: 44, type: !70)
!1381 = !DILocalVariable(name: "base", scope: !1377, file: !392, line: 45, type: !70)
!1382 = !DILocation(line: 0, scope: !1377)
!1383 = !DILocation(line: 44, column: 23, scope: !1377)
!1384 = !DILocation(line: 45, column: 22, scope: !1377)
!1385 = !DILocation(line: 46, column: 17, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1377, file: !392, line: 46, column: 7)
!1387 = !DILocation(line: 46, column: 9, scope: !1386)
!1388 = !DILocation(line: 46, column: 25, scope: !1386)
!1389 = !DILocation(line: 46, column: 40, scope: !1386)
!1390 = !DILocalVariable(name: "__s1", arg: 1, scope: !1391, file: !826, line: 974, type: !958)
!1391 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1392, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!218, !958, !958, !94}
!1394 = !{!1390, !1395, !1396}
!1395 = !DILocalVariable(name: "__s2", arg: 2, scope: !1391, file: !826, line: 974, type: !958)
!1396 = !DILocalVariable(name: "__n", arg: 3, scope: !1391, file: !826, line: 974, type: !94)
!1397 = !DILocation(line: 0, scope: !1391, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 46, column: 28, scope: !1386)
!1399 = !DILocation(line: 976, column: 11, scope: !1391, inlinedAt: !1398)
!1400 = !DILocation(line: 976, column: 10, scope: !1391, inlinedAt: !1398)
!1401 = !DILocation(line: 46, column: 7, scope: !1377)
!1402 = !DILocation(line: 49, column: 11, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !392, line: 49, column: 11)
!1404 = distinct !DILexicalBlock(scope: !1386, file: !392, line: 47, column: 5)
!1405 = !DILocation(line: 49, column: 36, scope: !1403)
!1406 = !DILocation(line: 49, column: 11, scope: !1404)
!1407 = !DILocation(line: 65, column: 16, scope: !1377)
!1408 = !DILocation(line: 71, column: 27, scope: !1377)
!1409 = !DILocation(line: 74, column: 33, scope: !1377)
!1410 = !DILocation(line: 76, column: 1, scope: !1377)
!1411 = !DISubprogram(name: "strrchr", scope: !930, file: !930, line: 273, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1412 = distinct !DIAssignID()
!1413 = !DILocation(line: 0, scope: !401)
!1414 = distinct !DIAssignID()
!1415 = !DILocation(line: 40, column: 29, scope: !401)
!1416 = !DILocation(line: 41, column: 19, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !401, file: !402, line: 41, column: 7)
!1418 = !DILocation(line: 41, column: 7, scope: !401)
!1419 = !DILocation(line: 47, column: 3, scope: !401)
!1420 = !DILocation(line: 48, column: 3, scope: !401)
!1421 = !DILocalVariable(name: "ps", arg: 1, scope: !1422, file: !1423, line: 1135, type: !1426)
!1422 = distinct !DISubprogram(name: "mbszero", scope: !1423, file: !1423, line: 1135, type: !1424, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1427)
!1423 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !1426}
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1427 = !{!1421}
!1428 = !DILocation(line: 0, scope: !1422, inlinedAt: !1429)
!1429 = distinct !DILocation(line: 48, column: 18, scope: !401)
!1430 = !DILocalVariable(name: "__dest", arg: 1, scope: !1431, file: !1432, line: 57, type: !91)
!1431 = distinct !DISubprogram(name: "memset", scope: !1432, file: !1432, line: 57, type: !1433, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1435)
!1432 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!91, !91, !92, !94}
!1435 = !{!1430, !1436, !1437}
!1436 = !DILocalVariable(name: "__ch", arg: 2, scope: !1431, file: !1432, line: 57, type: !92)
!1437 = !DILocalVariable(name: "__len", arg: 3, scope: !1431, file: !1432, line: 57, type: !94)
!1438 = !DILocation(line: 0, scope: !1431, inlinedAt: !1439)
!1439 = distinct !DILocation(line: 1137, column: 3, scope: !1422, inlinedAt: !1429)
!1440 = !DILocation(line: 59, column: 10, scope: !1431, inlinedAt: !1439)
!1441 = !DILocation(line: 49, column: 7, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !401, file: !402, line: 49, column: 7)
!1443 = !DILocation(line: 49, column: 39, scope: !1442)
!1444 = !DILocation(line: 49, column: 44, scope: !1442)
!1445 = !DILocation(line: 54, column: 1, scope: !401)
!1446 = !DISubprogram(name: "mbrtoc32", scope: !413, file: !413, line: 57, type: !1447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!94, !1449, !804, !94, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1426)
!1452 = distinct !DISubprogram(name: "clone_quoting_options", scope: !432, file: !432, line: 113, type: !1453, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1456)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1455, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!1456 = !{!1457, !1458, !1459}
!1457 = !DILocalVariable(name: "o", arg: 1, scope: !1452, file: !432, line: 113, type: !1455)
!1458 = !DILocalVariable(name: "saved_errno", scope: !1452, file: !432, line: 115, type: !92)
!1459 = !DILocalVariable(name: "p", scope: !1452, file: !432, line: 116, type: !1455)
!1460 = !DILocation(line: 0, scope: !1452)
!1461 = !DILocation(line: 115, column: 21, scope: !1452)
!1462 = !DILocation(line: 116, column: 40, scope: !1452)
!1463 = !DILocation(line: 116, column: 31, scope: !1452)
!1464 = !DILocation(line: 118, column: 9, scope: !1452)
!1465 = !DILocation(line: 119, column: 3, scope: !1452)
!1466 = distinct !DISubprogram(name: "get_quoting_style", scope: !432, file: !432, line: 124, type: !1467, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1471)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!458, !1469}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!1471 = !{!1472}
!1472 = !DILocalVariable(name: "o", arg: 1, scope: !1466, file: !432, line: 124, type: !1469)
!1473 = !DILocation(line: 0, scope: !1466)
!1474 = !DILocation(line: 126, column: 11, scope: !1466)
!1475 = !DILocation(line: 126, column: 46, scope: !1466)
!1476 = !{!1477, !814, i64 0}
!1477 = !{!"quoting_options", !814, i64 0, !814, i64 4, !755, i64 8, !754, i64 40, !754, i64 48}
!1478 = !DILocation(line: 126, column: 3, scope: !1466)
!1479 = distinct !DISubprogram(name: "set_quoting_style", scope: !432, file: !432, line: 132, type: !1480, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1482)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{null, !1455, !458}
!1482 = !{!1483, !1484}
!1483 = !DILocalVariable(name: "o", arg: 1, scope: !1479, file: !432, line: 132, type: !1455)
!1484 = !DILocalVariable(name: "s", arg: 2, scope: !1479, file: !432, line: 132, type: !458)
!1485 = !DILocation(line: 0, scope: !1479)
!1486 = !DILocation(line: 134, column: 4, scope: !1479)
!1487 = !DILocation(line: 134, column: 45, scope: !1479)
!1488 = !DILocation(line: 135, column: 1, scope: !1479)
!1489 = distinct !DISubprogram(name: "set_char_quoting", scope: !432, file: !432, line: 143, type: !1490, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!92, !1455, !4, !92}
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1499, !1500}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !432, line: 143, type: !1455)
!1494 = !DILocalVariable(name: "c", arg: 2, scope: !1489, file: !432, line: 143, type: !4)
!1495 = !DILocalVariable(name: "i", arg: 3, scope: !1489, file: !432, line: 143, type: !92)
!1496 = !DILocalVariable(name: "uc", scope: !1489, file: !432, line: 145, type: !97)
!1497 = !DILocalVariable(name: "p", scope: !1489, file: !432, line: 146, type: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1499 = !DILocalVariable(name: "shift", scope: !1489, file: !432, line: 148, type: !92)
!1500 = !DILocalVariable(name: "r", scope: !1489, file: !432, line: 149, type: !76)
!1501 = !DILocation(line: 0, scope: !1489)
!1502 = !DILocation(line: 147, column: 6, scope: !1489)
!1503 = !DILocation(line: 147, column: 41, scope: !1489)
!1504 = !DILocation(line: 147, column: 62, scope: !1489)
!1505 = !DILocation(line: 147, column: 57, scope: !1489)
!1506 = !DILocation(line: 148, column: 15, scope: !1489)
!1507 = !DILocation(line: 149, column: 21, scope: !1489)
!1508 = !DILocation(line: 149, column: 24, scope: !1489)
!1509 = !DILocation(line: 149, column: 34, scope: !1489)
!1510 = !DILocation(line: 150, column: 19, scope: !1489)
!1511 = !DILocation(line: 150, column: 24, scope: !1489)
!1512 = !DILocation(line: 150, column: 6, scope: !1489)
!1513 = !DILocation(line: 151, column: 3, scope: !1489)
!1514 = distinct !DISubprogram(name: "set_quoting_flags", scope: !432, file: !432, line: 159, type: !1515, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!92, !1455, !92}
!1517 = !{!1518, !1519, !1520}
!1518 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !432, line: 159, type: !1455)
!1519 = !DILocalVariable(name: "i", arg: 2, scope: !1514, file: !432, line: 159, type: !92)
!1520 = !DILocalVariable(name: "r", scope: !1514, file: !432, line: 163, type: !92)
!1521 = !DILocation(line: 0, scope: !1514)
!1522 = !DILocation(line: 161, column: 8, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1514, file: !432, line: 161, column: 7)
!1524 = !DILocation(line: 161, column: 7, scope: !1514)
!1525 = !DILocation(line: 163, column: 14, scope: !1514)
!1526 = !{!1477, !814, i64 4}
!1527 = !DILocation(line: 164, column: 12, scope: !1514)
!1528 = !DILocation(line: 165, column: 3, scope: !1514)
!1529 = distinct !DISubprogram(name: "set_custom_quoting", scope: !432, file: !432, line: 169, type: !1530, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !1455, !70, !70}
!1532 = !{!1533, !1534, !1535}
!1533 = !DILocalVariable(name: "o", arg: 1, scope: !1529, file: !432, line: 169, type: !1455)
!1534 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1529, file: !432, line: 170, type: !70)
!1535 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1529, file: !432, line: 170, type: !70)
!1536 = !DILocation(line: 0, scope: !1529)
!1537 = !DILocation(line: 172, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1529, file: !432, line: 172, column: 7)
!1539 = !DILocation(line: 172, column: 7, scope: !1529)
!1540 = !DILocation(line: 174, column: 12, scope: !1529)
!1541 = !DILocation(line: 175, column: 8, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1529, file: !432, line: 175, column: 7)
!1543 = !DILocation(line: 175, column: 19, scope: !1542)
!1544 = !DILocation(line: 176, column: 5, scope: !1542)
!1545 = !DILocation(line: 177, column: 6, scope: !1529)
!1546 = !DILocation(line: 177, column: 17, scope: !1529)
!1547 = !{!1477, !754, i64 40}
!1548 = !DILocation(line: 178, column: 6, scope: !1529)
!1549 = !DILocation(line: 178, column: 18, scope: !1529)
!1550 = !{!1477, !754, i64 48}
!1551 = !DILocation(line: 179, column: 1, scope: !1529)
!1552 = !DISubprogram(name: "abort", scope: !934, file: !934, line: 598, type: !363, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1553 = distinct !DISubprogram(name: "quotearg_buffer", scope: !432, file: !432, line: 774, type: !1554, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!94, !239, !94, !70, !94, !1469}
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1557 = !DILocalVariable(name: "buffer", arg: 1, scope: !1553, file: !432, line: 774, type: !239)
!1558 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1553, file: !432, line: 774, type: !94)
!1559 = !DILocalVariable(name: "arg", arg: 3, scope: !1553, file: !432, line: 775, type: !70)
!1560 = !DILocalVariable(name: "argsize", arg: 4, scope: !1553, file: !432, line: 775, type: !94)
!1561 = !DILocalVariable(name: "o", arg: 5, scope: !1553, file: !432, line: 776, type: !1469)
!1562 = !DILocalVariable(name: "p", scope: !1553, file: !432, line: 778, type: !1469)
!1563 = !DILocalVariable(name: "saved_errno", scope: !1553, file: !432, line: 779, type: !92)
!1564 = !DILocalVariable(name: "r", scope: !1553, file: !432, line: 780, type: !94)
!1565 = !DILocation(line: 0, scope: !1553)
!1566 = !DILocation(line: 778, column: 37, scope: !1553)
!1567 = !DILocation(line: 779, column: 21, scope: !1553)
!1568 = !DILocation(line: 781, column: 43, scope: !1553)
!1569 = !DILocation(line: 781, column: 53, scope: !1553)
!1570 = !DILocation(line: 781, column: 63, scope: !1553)
!1571 = !DILocation(line: 782, column: 43, scope: !1553)
!1572 = !DILocation(line: 782, column: 58, scope: !1553)
!1573 = !DILocation(line: 780, column: 14, scope: !1553)
!1574 = !DILocation(line: 783, column: 9, scope: !1553)
!1575 = !DILocation(line: 784, column: 3, scope: !1553)
!1576 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !432, file: !432, line: 251, type: !1577, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1581)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!94, !239, !94, !70, !94, !458, !92, !1579, !70, !70}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1607, !1609, !1612, !1613, !1614, !1615, !1618, !1619, !1621, !1622, !1625, !1629, !1630, !1638, !1641, !1642, !1643}
!1582 = !DILocalVariable(name: "buffer", arg: 1, scope: !1576, file: !432, line: 251, type: !239)
!1583 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1576, file: !432, line: 251, type: !94)
!1584 = !DILocalVariable(name: "arg", arg: 3, scope: !1576, file: !432, line: 252, type: !70)
!1585 = !DILocalVariable(name: "argsize", arg: 4, scope: !1576, file: !432, line: 252, type: !94)
!1586 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1576, file: !432, line: 253, type: !458)
!1587 = !DILocalVariable(name: "flags", arg: 6, scope: !1576, file: !432, line: 253, type: !92)
!1588 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1576, file: !432, line: 254, type: !1579)
!1589 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1576, file: !432, line: 255, type: !70)
!1590 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1576, file: !432, line: 256, type: !70)
!1591 = !DILocalVariable(name: "unibyte_locale", scope: !1576, file: !432, line: 258, type: !218)
!1592 = !DILocalVariable(name: "len", scope: !1576, file: !432, line: 260, type: !94)
!1593 = !DILocalVariable(name: "orig_buffersize", scope: !1576, file: !432, line: 261, type: !94)
!1594 = !DILocalVariable(name: "quote_string", scope: !1576, file: !432, line: 262, type: !70)
!1595 = !DILocalVariable(name: "quote_string_len", scope: !1576, file: !432, line: 263, type: !94)
!1596 = !DILocalVariable(name: "backslash_escapes", scope: !1576, file: !432, line: 264, type: !218)
!1597 = !DILocalVariable(name: "elide_outer_quotes", scope: !1576, file: !432, line: 265, type: !218)
!1598 = !DILocalVariable(name: "encountered_single_quote", scope: !1576, file: !432, line: 266, type: !218)
!1599 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1576, file: !432, line: 267, type: !218)
!1600 = !DILabel(scope: !1576, name: "process_input", file: !432, line: 308)
!1601 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1576, file: !432, line: 309, type: !218)
!1602 = !DILocalVariable(name: "lq", scope: !1603, file: !432, line: 361, type: !70)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !432, line: 361, column: 11)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !432, line: 360, column: 13)
!1605 = distinct !DILexicalBlock(scope: !1606, file: !432, line: 333, column: 7)
!1606 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 312, column: 5)
!1607 = !DILocalVariable(name: "i", scope: !1608, file: !432, line: 395, type: !94)
!1608 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 395, column: 3)
!1609 = !DILocalVariable(name: "is_right_quote", scope: !1610, file: !432, line: 397, type: !218)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !432, line: 396, column: 5)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !432, line: 395, column: 3)
!1612 = !DILocalVariable(name: "escaping", scope: !1610, file: !432, line: 398, type: !218)
!1613 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1610, file: !432, line: 399, type: !218)
!1614 = !DILocalVariable(name: "c", scope: !1610, file: !432, line: 417, type: !97)
!1615 = !DILabel(scope: !1616, name: "c_and_shell_escape", file: !432, line: 502)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 478, column: 9)
!1617 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 419, column: 9)
!1618 = !DILabel(scope: !1616, name: "c_escape", file: !432, line: 507)
!1619 = !DILocalVariable(name: "m", scope: !1620, file: !432, line: 598, type: !94)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 596, column: 11)
!1621 = !DILocalVariable(name: "printable", scope: !1620, file: !432, line: 600, type: !218)
!1622 = !DILocalVariable(name: "mbs", scope: !1623, file: !432, line: 609, type: !519)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !432, line: 608, column: 15)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !432, line: 602, column: 17)
!1625 = !DILocalVariable(name: "w", scope: !1626, file: !432, line: 618, type: !412)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !432, line: 617, column: 19)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !432, line: 616, column: 17)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !432, line: 616, column: 17)
!1629 = !DILocalVariable(name: "bytes", scope: !1626, file: !432, line: 619, type: !94)
!1630 = !DILocalVariable(name: "j", scope: !1631, file: !432, line: 648, type: !94)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !432, line: 648, column: 29)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !432, line: 647, column: 27)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !432, line: 645, column: 29)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !432, line: 636, column: 23)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !432, line: 628, column: 30)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !432, line: 623, column: 30)
!1637 = distinct !DILexicalBlock(scope: !1626, file: !432, line: 621, column: 25)
!1638 = !DILocalVariable(name: "ilim", scope: !1639, file: !432, line: 674, type: !94)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !432, line: 671, column: 15)
!1640 = distinct !DILexicalBlock(scope: !1620, file: !432, line: 670, column: 17)
!1641 = !DILabel(scope: !1610, name: "store_escape", file: !432, line: 709)
!1642 = !DILabel(scope: !1610, name: "store_c", file: !432, line: 712)
!1643 = !DILabel(scope: !1576, name: "force_outer_quoting_style", file: !432, line: 753)
!1644 = distinct !DIAssignID()
!1645 = distinct !DIAssignID()
!1646 = distinct !DIAssignID()
!1647 = distinct !DIAssignID()
!1648 = distinct !DIAssignID()
!1649 = !DILocation(line: 0, scope: !1623)
!1650 = distinct !DIAssignID()
!1651 = !DILocation(line: 0, scope: !1626)
!1652 = !DILocation(line: 0, scope: !1576)
!1653 = !DILocation(line: 258, column: 25, scope: !1576)
!1654 = !DILocation(line: 258, column: 36, scope: !1576)
!1655 = !DILocation(line: 267, column: 3, scope: !1576)
!1656 = !DILocation(line: 261, column: 10, scope: !1576)
!1657 = !DILocation(line: 262, column: 15, scope: !1576)
!1658 = !DILocation(line: 263, column: 10, scope: !1576)
!1659 = !DILocation(line: 308, column: 2, scope: !1576)
!1660 = !DILocation(line: 311, column: 3, scope: !1576)
!1661 = !DILocation(line: 318, column: 11, scope: !1606)
!1662 = !DILocation(line: 319, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !432, line: 319, column: 9)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !432, line: 319, column: 9)
!1665 = distinct !DILexicalBlock(scope: !1606, file: !432, line: 318, column: 11)
!1666 = !DILocation(line: 319, column: 9, scope: !1664)
!1667 = !DILocation(line: 0, scope: !510, inlinedAt: !1668)
!1668 = distinct !DILocation(line: 357, column: 26, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !432, line: 335, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1605, file: !432, line: 334, column: 13)
!1671 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1668)
!1672 = !DILocation(line: 201, column: 19, scope: !1673, inlinedAt: !1668)
!1673 = distinct !DILexicalBlock(scope: !510, file: !432, line: 201, column: 7)
!1674 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1668)
!1675 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1668)
!1676 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1668)
!1677 = !DILocalVariable(name: "ps", arg: 1, scope: !1678, file: !1423, line: 1135, type: !1681)
!1678 = distinct !DISubprogram(name: "mbszero", scope: !1423, file: !1423, line: 1135, type: !1679, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1682)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{null, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!1682 = !{!1677}
!1683 = !DILocation(line: 0, scope: !1678, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1668)
!1685 = !DILocalVariable(name: "__dest", arg: 1, scope: !1686, file: !1432, line: 57, type: !91)
!1686 = distinct !DISubprogram(name: "memset", scope: !1432, file: !1432, line: 57, type: !1433, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1687)
!1687 = !{!1685, !1688, !1689}
!1688 = !DILocalVariable(name: "__ch", arg: 2, scope: !1686, file: !1432, line: 57, type: !92)
!1689 = !DILocalVariable(name: "__len", arg: 3, scope: !1686, file: !1432, line: 57, type: !94)
!1690 = !DILocation(line: 0, scope: !1686, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 1137, column: 3, scope: !1678, inlinedAt: !1684)
!1692 = !DILocation(line: 59, column: 10, scope: !1686, inlinedAt: !1691)
!1693 = !DILocation(line: 231, column: 7, scope: !1694, inlinedAt: !1668)
!1694 = distinct !DILexicalBlock(scope: !510, file: !432, line: 231, column: 7)
!1695 = !DILocation(line: 231, column: 40, scope: !1694, inlinedAt: !1668)
!1696 = !DILocation(line: 231, column: 45, scope: !1694, inlinedAt: !1668)
!1697 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1668)
!1698 = !DILocation(line: 0, scope: !510, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 358, column: 27, scope: !1669)
!1700 = !DILocation(line: 199, column: 29, scope: !510, inlinedAt: !1699)
!1701 = !DILocation(line: 201, column: 19, scope: !1673, inlinedAt: !1699)
!1702 = !DILocation(line: 201, column: 7, scope: !510, inlinedAt: !1699)
!1703 = !DILocation(line: 229, column: 3, scope: !510, inlinedAt: !1699)
!1704 = !DILocation(line: 230, column: 3, scope: !510, inlinedAt: !1699)
!1705 = !DILocation(line: 0, scope: !1678, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 230, column: 18, scope: !510, inlinedAt: !1699)
!1707 = !DILocation(line: 0, scope: !1686, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 1137, column: 3, scope: !1678, inlinedAt: !1706)
!1709 = !DILocation(line: 59, column: 10, scope: !1686, inlinedAt: !1708)
!1710 = !DILocation(line: 231, column: 7, scope: !1694, inlinedAt: !1699)
!1711 = !DILocation(line: 231, column: 40, scope: !1694, inlinedAt: !1699)
!1712 = !DILocation(line: 231, column: 45, scope: !1694, inlinedAt: !1699)
!1713 = !DILocation(line: 235, column: 1, scope: !510, inlinedAt: !1699)
!1714 = !DILocation(line: 360, column: 13, scope: !1605)
!1715 = !DILocation(line: 0, scope: !1603)
!1716 = !DILocation(line: 361, column: 45, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1603, file: !432, line: 361, column: 11)
!1718 = !DILocation(line: 361, column: 11, scope: !1603)
!1719 = !DILocation(line: 362, column: 13, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !432, line: 362, column: 13)
!1721 = distinct !DILexicalBlock(scope: !1717, file: !432, line: 362, column: 13)
!1722 = !DILocation(line: 362, column: 13, scope: !1721)
!1723 = !DILocation(line: 361, column: 52, scope: !1717)
!1724 = distinct !{!1724, !1718, !1725, !860}
!1725 = !DILocation(line: 362, column: 13, scope: !1603)
!1726 = !DILocation(line: 365, column: 28, scope: !1605)
!1727 = !DILocation(line: 260, column: 10, scope: !1576)
!1728 = !DILocation(line: 367, column: 7, scope: !1606)
!1729 = !DILocation(line: 373, column: 7, scope: !1606)
!1730 = !DILocation(line: 381, column: 11, scope: !1606)
!1731 = !DILocation(line: 376, column: 11, scope: !1606)
!1732 = !DILocation(line: 382, column: 9, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !432, line: 382, column: 9)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !432, line: 382, column: 9)
!1735 = distinct !DILexicalBlock(scope: !1606, file: !432, line: 381, column: 11)
!1736 = !DILocation(line: 382, column: 9, scope: !1734)
!1737 = !DILocation(line: 389, column: 7, scope: !1606)
!1738 = !DILocation(line: 392, column: 7, scope: !1606)
!1739 = !DILocation(line: 0, scope: !1608)
!1740 = !DILocation(line: 395, column: 8, scope: !1608)
!1741 = !DILocation(line: 395, scope: !1608)
!1742 = !DILocation(line: 395, column: 34, scope: !1611)
!1743 = !DILocation(line: 395, column: 26, scope: !1611)
!1744 = !DILocation(line: 395, column: 48, scope: !1611)
!1745 = !DILocation(line: 395, column: 55, scope: !1611)
!1746 = !DILocation(line: 395, column: 3, scope: !1608)
!1747 = !DILocation(line: 395, column: 67, scope: !1611)
!1748 = !DILocation(line: 0, scope: !1610)
!1749 = !DILocation(line: 402, column: 11, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1610, file: !432, line: 401, column: 11)
!1751 = !DILocation(line: 404, column: 17, scope: !1750)
!1752 = !DILocation(line: 405, column: 39, scope: !1750)
!1753 = !DILocation(line: 409, column: 32, scope: !1750)
!1754 = !DILocation(line: 405, column: 19, scope: !1750)
!1755 = !DILocation(line: 405, column: 15, scope: !1750)
!1756 = !DILocation(line: 410, column: 11, scope: !1750)
!1757 = !DILocation(line: 410, column: 25, scope: !1750)
!1758 = !DILocalVariable(name: "__s1", arg: 1, scope: !1759, file: !826, line: 974, type: !958)
!1759 = distinct !DISubprogram(name: "memeq", scope: !826, file: !826, line: 974, type: !1392, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1760)
!1760 = !{!1758, !1761, !1762}
!1761 = !DILocalVariable(name: "__s2", arg: 2, scope: !1759, file: !826, line: 974, type: !958)
!1762 = !DILocalVariable(name: "__n", arg: 3, scope: !1759, file: !826, line: 974, type: !94)
!1763 = !DILocation(line: 0, scope: !1759, inlinedAt: !1764)
!1764 = distinct !DILocation(line: 410, column: 14, scope: !1750)
!1765 = !DILocation(line: 976, column: 11, scope: !1759, inlinedAt: !1764)
!1766 = !DILocation(line: 976, column: 10, scope: !1759, inlinedAt: !1764)
!1767 = !DILocation(line: 401, column: 11, scope: !1610)
!1768 = !DILocation(line: 417, column: 25, scope: !1610)
!1769 = !DILocation(line: 418, column: 7, scope: !1610)
!1770 = !DILocation(line: 421, column: 15, scope: !1617)
!1771 = !DILocation(line: 423, column: 15, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !432, line: 423, column: 15)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !432, line: 422, column: 13)
!1774 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 421, column: 15)
!1775 = !DILocation(line: 423, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1772, file: !432, line: 423, column: 15)
!1777 = !DILocation(line: 423, column: 15, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !432, line: 423, column: 15)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !432, line: 423, column: 15)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !432, line: 423, column: 15)
!1781 = !DILocation(line: 423, column: 15, scope: !1779)
!1782 = !DILocation(line: 423, column: 15, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !432, line: 423, column: 15)
!1784 = distinct !DILexicalBlock(scope: !1780, file: !432, line: 423, column: 15)
!1785 = !DILocation(line: 423, column: 15, scope: !1784)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !432, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !432, line: 423, column: 15)
!1789 = !DILocation(line: 423, column: 15, scope: !1788)
!1790 = !DILocation(line: 423, column: 15, scope: !1780)
!1791 = !DILocation(line: 423, column: 15, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !432, line: 423, column: 15)
!1793 = distinct !DILexicalBlock(scope: !1772, file: !432, line: 423, column: 15)
!1794 = !DILocation(line: 423, column: 15, scope: !1793)
!1795 = !DILocation(line: 431, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1773, file: !432, line: 430, column: 19)
!1797 = !DILocation(line: 431, column: 24, scope: !1796)
!1798 = !DILocation(line: 431, column: 28, scope: !1796)
!1799 = !DILocation(line: 431, column: 38, scope: !1796)
!1800 = !DILocation(line: 431, column: 48, scope: !1796)
!1801 = !DILocation(line: 431, column: 59, scope: !1796)
!1802 = !DILocation(line: 433, column: 19, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !432, line: 433, column: 19)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !432, line: 433, column: 19)
!1805 = distinct !DILexicalBlock(scope: !1796, file: !432, line: 432, column: 17)
!1806 = !DILocation(line: 433, column: 19, scope: !1804)
!1807 = !DILocation(line: 434, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !432, line: 434, column: 19)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !432, line: 434, column: 19)
!1810 = !DILocation(line: 434, column: 19, scope: !1809)
!1811 = !DILocation(line: 435, column: 17, scope: !1805)
!1812 = !DILocation(line: 442, column: 20, scope: !1774)
!1813 = !DILocation(line: 447, column: 11, scope: !1617)
!1814 = !DILocation(line: 450, column: 19, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 448, column: 13)
!1816 = !DILocation(line: 456, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1815, file: !432, line: 455, column: 19)
!1818 = !DILocation(line: 456, column: 24, scope: !1817)
!1819 = !DILocation(line: 456, column: 28, scope: !1817)
!1820 = !DILocation(line: 456, column: 38, scope: !1817)
!1821 = !DILocation(line: 456, column: 41, scope: !1817)
!1822 = !DILocation(line: 456, column: 52, scope: !1817)
!1823 = !DILocation(line: 455, column: 19, scope: !1815)
!1824 = !DILocation(line: 457, column: 25, scope: !1817)
!1825 = !DILocation(line: 457, column: 17, scope: !1817)
!1826 = !DILocation(line: 464, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1817, file: !432, line: 458, column: 19)
!1828 = !DILocation(line: 468, column: 21, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !432, line: 468, column: 21)
!1830 = distinct !DILexicalBlock(scope: !1827, file: !432, line: 468, column: 21)
!1831 = !DILocation(line: 468, column: 21, scope: !1830)
!1832 = !DILocation(line: 469, column: 21, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !432, line: 469, column: 21)
!1834 = distinct !DILexicalBlock(scope: !1827, file: !432, line: 469, column: 21)
!1835 = !DILocation(line: 469, column: 21, scope: !1834)
!1836 = !DILocation(line: 470, column: 21, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !432, line: 470, column: 21)
!1838 = distinct !DILexicalBlock(scope: !1827, file: !432, line: 470, column: 21)
!1839 = !DILocation(line: 470, column: 21, scope: !1838)
!1840 = !DILocation(line: 471, column: 21, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !432, line: 471, column: 21)
!1842 = distinct !DILexicalBlock(scope: !1827, file: !432, line: 471, column: 21)
!1843 = !DILocation(line: 471, column: 21, scope: !1842)
!1844 = !DILocation(line: 472, column: 21, scope: !1827)
!1845 = !DILocation(line: 482, column: 33, scope: !1616)
!1846 = !DILocation(line: 483, column: 33, scope: !1616)
!1847 = !DILocation(line: 485, column: 33, scope: !1616)
!1848 = !DILocation(line: 486, column: 33, scope: !1616)
!1849 = !DILocation(line: 487, column: 33, scope: !1616)
!1850 = !DILocation(line: 490, column: 17, scope: !1616)
!1851 = !DILocation(line: 492, column: 21, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !432, line: 491, column: 15)
!1853 = distinct !DILexicalBlock(scope: !1616, file: !432, line: 490, column: 17)
!1854 = !DILocation(line: 499, column: 35, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1616, file: !432, line: 499, column: 17)
!1856 = !DILocation(line: 0, scope: !1616)
!1857 = !DILocation(line: 502, column: 11, scope: !1616)
!1858 = !DILocation(line: 504, column: 17, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1616, file: !432, line: 503, column: 17)
!1860 = !DILocation(line: 507, column: 11, scope: !1616)
!1861 = !DILocation(line: 508, column: 17, scope: !1616)
!1862 = !DILocation(line: 517, column: 15, scope: !1617)
!1863 = !DILocation(line: 517, column: 40, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 517, column: 15)
!1865 = !DILocation(line: 517, column: 47, scope: !1864)
!1866 = !DILocation(line: 517, column: 18, scope: !1864)
!1867 = !DILocation(line: 521, column: 17, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 521, column: 15)
!1869 = !DILocation(line: 521, column: 15, scope: !1617)
!1870 = !DILocation(line: 525, column: 11, scope: !1617)
!1871 = !DILocation(line: 537, column: 15, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 536, column: 15)
!1873 = !DILocation(line: 536, column: 15, scope: !1617)
!1874 = !DILocation(line: 544, column: 15, scope: !1617)
!1875 = !DILocation(line: 546, column: 19, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !432, line: 545, column: 13)
!1877 = distinct !DILexicalBlock(scope: !1617, file: !432, line: 544, column: 15)
!1878 = !DILocation(line: 549, column: 19, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1876, file: !432, line: 549, column: 19)
!1880 = !DILocation(line: 549, column: 30, scope: !1879)
!1881 = !DILocation(line: 558, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !432, line: 558, column: 15)
!1883 = distinct !DILexicalBlock(scope: !1876, file: !432, line: 558, column: 15)
!1884 = !DILocation(line: 558, column: 15, scope: !1883)
!1885 = !DILocation(line: 559, column: 15, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1887, file: !432, line: 559, column: 15)
!1887 = distinct !DILexicalBlock(scope: !1876, file: !432, line: 559, column: 15)
!1888 = !DILocation(line: 559, column: 15, scope: !1887)
!1889 = !DILocation(line: 560, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !432, line: 560, column: 15)
!1891 = distinct !DILexicalBlock(scope: !1876, file: !432, line: 560, column: 15)
!1892 = !DILocation(line: 560, column: 15, scope: !1891)
!1893 = !DILocation(line: 562, column: 13, scope: !1876)
!1894 = !DILocation(line: 602, column: 17, scope: !1620)
!1895 = !DILocation(line: 0, scope: !1620)
!1896 = !DILocation(line: 605, column: 29, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1624, file: !432, line: 603, column: 15)
!1898 = !DILocation(line: 605, column: 41, scope: !1897)
!1899 = !DILocation(line: 606, column: 15, scope: !1897)
!1900 = !DILocation(line: 609, column: 17, scope: !1623)
!1901 = !DILocation(line: 0, scope: !1678, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 609, column: 32, scope: !1623)
!1903 = !DILocation(line: 0, scope: !1686, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 1137, column: 3, scope: !1678, inlinedAt: !1902)
!1905 = !DILocation(line: 59, column: 10, scope: !1686, inlinedAt: !1904)
!1906 = !DILocation(line: 613, column: 29, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1623, file: !432, line: 613, column: 21)
!1908 = !DILocation(line: 613, column: 21, scope: !1623)
!1909 = !DILocation(line: 614, column: 29, scope: !1907)
!1910 = !DILocation(line: 614, column: 19, scope: !1907)
!1911 = !DILocation(line: 618, column: 21, scope: !1626)
!1912 = !DILocation(line: 620, column: 54, scope: !1626)
!1913 = !DILocation(line: 619, column: 36, scope: !1626)
!1914 = !DILocation(line: 621, column: 25, scope: !1626)
!1915 = !DILocation(line: 631, column: 38, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1635, file: !432, line: 629, column: 23)
!1917 = !DILocation(line: 631, column: 48, scope: !1916)
!1918 = !DILocation(line: 631, column: 25, scope: !1916)
!1919 = !DILocation(line: 626, column: 25, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1636, file: !432, line: 624, column: 23)
!1921 = !DILocation(line: 631, column: 51, scope: !1916)
!1922 = !DILocation(line: 632, column: 28, scope: !1916)
!1923 = !DILocation(line: 631, column: 34, scope: !1916)
!1924 = distinct !{!1924, !1918, !1922, !860}
!1925 = !DILocation(line: 0, scope: !1631)
!1926 = !DILocation(line: 646, column: 29, scope: !1633)
!1927 = !DILocation(line: 648, column: 29, scope: !1631)
!1928 = !DILocation(line: 649, column: 39, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1631, file: !432, line: 648, column: 29)
!1930 = !DILocation(line: 649, column: 31, scope: !1929)
!1931 = !DILocation(line: 648, column: 60, scope: !1929)
!1932 = !DILocation(line: 648, column: 50, scope: !1929)
!1933 = distinct !{!1933, !1927, !1934, !860}
!1934 = !DILocation(line: 654, column: 33, scope: !1631)
!1935 = !DILocation(line: 657, column: 43, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1634, file: !432, line: 657, column: 29)
!1937 = !DILocalVariable(name: "wc", arg: 1, scope: !1938, file: !1939, line: 865, type: !1942)
!1938 = distinct !DISubprogram(name: "c32isprint", scope: !1939, file: !1939, line: 865, type: !1940, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !1944)
!1939 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!92, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1943, line: 20, baseType: !76)
!1943 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1944 = !{!1937}
!1945 = !DILocation(line: 0, scope: !1938, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 657, column: 31, scope: !1936)
!1947 = !DILocation(line: 871, column: 10, scope: !1938, inlinedAt: !1946)
!1948 = !DILocation(line: 657, column: 31, scope: !1936)
!1949 = !DILocation(line: 664, column: 23, scope: !1626)
!1950 = !DILocation(line: 665, column: 19, scope: !1627)
!1951 = !DILocation(line: 666, column: 15, scope: !1624)
!1952 = !DILocation(line: 753, column: 2, scope: !1576)
!1953 = !DILocation(line: 756, column: 51, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 756, column: 7)
!1955 = !DILocation(line: 0, scope: !1624)
!1956 = !DILocation(line: 670, column: 19, scope: !1640)
!1957 = !DILocation(line: 670, column: 23, scope: !1640)
!1958 = !DILocation(line: 674, column: 33, scope: !1639)
!1959 = !DILocation(line: 0, scope: !1639)
!1960 = !DILocation(line: 676, column: 17, scope: !1639)
!1961 = !DILocation(line: 678, column: 43, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !432, line: 678, column: 25)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !432, line: 677, column: 19)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !432, line: 676, column: 17)
!1965 = distinct !DILexicalBlock(scope: !1639, file: !432, line: 676, column: 17)
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
!2035 = !DILocation(line: 409, column: 30, scope: !1750)
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
!2093 = distinct !{!2093, !1746, !2094, !860}
!2094 = !DILocation(line: 718, column: 5, scope: !1608)
!2095 = !DILocation(line: 720, column: 11, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 720, column: 7)
!2097 = !DILocation(line: 720, column: 16, scope: !2096)
!2098 = !DILocation(line: 728, column: 51, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 728, column: 7)
!2100 = !DILocation(line: 731, column: 11, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !432, line: 730, column: 5)
!2102 = !DILocation(line: 732, column: 16, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2101, file: !432, line: 731, column: 11)
!2104 = !DILocation(line: 732, column: 9, scope: !2103)
!2105 = !DILocation(line: 736, column: 18, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2103, file: !432, line: 736, column: 16)
!2107 = !DILocation(line: 736, column: 29, scope: !2106)
!2108 = !DILocation(line: 745, column: 7, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 745, column: 7)
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
!2123 = distinct !DILexicalBlock(scope: !1576, file: !432, line: 749, column: 7)
!2124 = !DILocation(line: 749, column: 7, scope: !1576)
!2125 = !DILocation(line: 750, column: 5, scope: !2123)
!2126 = !DILocation(line: 750, column: 17, scope: !2123)
!2127 = !DILocation(line: 756, column: 21, scope: !1954)
!2128 = !DILocation(line: 760, column: 42, scope: !1576)
!2129 = !DILocation(line: 758, column: 10, scope: !1576)
!2130 = !DILocation(line: 758, column: 3, scope: !1576)
!2131 = !DILocation(line: 762, column: 1, scope: !1576)
!2132 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !934, file: !934, line: 98, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!94}
!2135 = !DISubprogram(name: "strlen", scope: !930, file: !930, line: 407, type: !2136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!96, !70}
!2138 = !DISubprogram(name: "iswprint", scope: !2139, file: !2139, line: 120, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2139 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2140 = distinct !DISubprogram(name: "quotearg_alloc", scope: !432, file: !432, line: 788, type: !2141, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2143)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!239, !70, !94, !1469}
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "arg", arg: 1, scope: !2140, file: !432, line: 788, type: !70)
!2145 = !DILocalVariable(name: "argsize", arg: 2, scope: !2140, file: !432, line: 788, type: !94)
!2146 = !DILocalVariable(name: "o", arg: 3, scope: !2140, file: !432, line: 789, type: !1469)
!2147 = !DILocation(line: 0, scope: !2140)
!2148 = !DILocalVariable(name: "arg", arg: 1, scope: !2149, file: !432, line: 801, type: !70)
!2149 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !432, file: !432, line: 801, type: !2150, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!239, !70, !94, !687, !1469}
!2152 = !{!2148, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160}
!2153 = !DILocalVariable(name: "argsize", arg: 2, scope: !2149, file: !432, line: 801, type: !94)
!2154 = !DILocalVariable(name: "size", arg: 3, scope: !2149, file: !432, line: 801, type: !687)
!2155 = !DILocalVariable(name: "o", arg: 4, scope: !2149, file: !432, line: 802, type: !1469)
!2156 = !DILocalVariable(name: "p", scope: !2149, file: !432, line: 804, type: !1469)
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
!2201 = !{!1192, !1192, i64 0}
!2202 = !DILocation(line: 818, column: 5, scope: !2200)
!2203 = !DILocation(line: 819, column: 3, scope: !2149)
!2204 = distinct !DISubprogram(name: "quotearg_free", scope: !432, file: !432, line: 837, type: !363, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2205)
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
!2218 = !{!"slotvec", !1192, i64 0, !754, i64 8}
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
!2229 = !{!2218, !1192, i64 0}
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
!2241 = !DISubprogram(name: "free", scope: !1423, file: !1423, line: 786, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
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
!2253 = !{!239, !92, !70, !94, !1469}
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2265, !2266, !2268, !2269, !2270}
!2255 = !DILocalVariable(name: "n", arg: 1, scope: !2251, file: !432, line: 866, type: !92)
!2256 = !DILocalVariable(name: "arg", arg: 2, scope: !2251, file: !432, line: 866, type: !70)
!2257 = !DILocalVariable(name: "argsize", arg: 3, scope: !2251, file: !432, line: 866, type: !94)
!2258 = !DILocalVariable(name: "options", arg: 4, scope: !2251, file: !432, line: 867, type: !1469)
!2259 = !DILocalVariable(name: "saved_errno", scope: !2251, file: !432, line: 869, type: !92)
!2260 = !DILocalVariable(name: "sv", scope: !2251, file: !432, line: 871, type: !533)
!2261 = !DILocalVariable(name: "nslots_max", scope: !2251, file: !432, line: 873, type: !92)
!2262 = !DILocalVariable(name: "preallocated", scope: !2263, file: !432, line: 879, type: !218)
!2263 = distinct !DILexicalBlock(scope: !2264, file: !432, line: 878, column: 5)
!2264 = distinct !DILexicalBlock(scope: !2251, file: !432, line: 877, column: 7)
!2265 = !DILocalVariable(name: "new_nslots", scope: !2263, file: !432, line: 880, type: !700)
!2266 = !DILocalVariable(name: "size", scope: !2267, file: !432, line: 891, type: !94)
!2267 = distinct !DILexicalBlock(scope: !2251, file: !432, line: 890, column: 3)
!2268 = !DILocalVariable(name: "val", scope: !2267, file: !432, line: 892, type: !239)
!2269 = !DILocalVariable(name: "flags", scope: !2267, file: !432, line: 894, type: !92)
!2270 = !DILocalVariable(name: "qsize", scope: !2267, file: !432, line: 895, type: !94)
!2271 = distinct !DIAssignID()
!2272 = !DILocation(line: 0, scope: !2263)
!2273 = !DILocation(line: 0, scope: !2251)
!2274 = !DILocation(line: 869, column: 21, scope: !2251)
!2275 = !DILocation(line: 871, column: 24, scope: !2251)
!2276 = !DILocation(line: 874, column: 17, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2251, file: !432, line: 874, column: 7)
!2278 = !DILocation(line: 875, column: 5, scope: !2277)
!2279 = !DILocation(line: 877, column: 7, scope: !2264)
!2280 = !DILocation(line: 877, column: 14, scope: !2264)
!2281 = !DILocation(line: 877, column: 7, scope: !2251)
!2282 = !DILocation(line: 879, column: 31, scope: !2263)
!2283 = !DILocation(line: 880, column: 7, scope: !2263)
!2284 = !DILocation(line: 880, column: 26, scope: !2263)
!2285 = !DILocation(line: 880, column: 13, scope: !2263)
!2286 = distinct !DIAssignID()
!2287 = !DILocation(line: 882, column: 31, scope: !2263)
!2288 = !DILocation(line: 883, column: 33, scope: !2263)
!2289 = !DILocation(line: 883, column: 42, scope: !2263)
!2290 = !DILocation(line: 883, column: 31, scope: !2263)
!2291 = !DILocation(line: 882, column: 22, scope: !2263)
!2292 = !DILocation(line: 882, column: 15, scope: !2263)
!2293 = !DILocation(line: 884, column: 11, scope: !2263)
!2294 = !DILocation(line: 885, column: 15, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2263, file: !432, line: 884, column: 11)
!2296 = !{i64 0, i64 8, !2201, i64 8, i64 8, !753}
!2297 = !DILocation(line: 885, column: 9, scope: !2295)
!2298 = !DILocation(line: 886, column: 20, scope: !2263)
!2299 = !DILocation(line: 886, column: 18, scope: !2263)
!2300 = !DILocation(line: 886, column: 32, scope: !2263)
!2301 = !DILocation(line: 886, column: 43, scope: !2263)
!2302 = !DILocation(line: 886, column: 53, scope: !2263)
!2303 = !DILocation(line: 0, scope: !1686, inlinedAt: !2304)
!2304 = distinct !DILocation(line: 886, column: 7, scope: !2263)
!2305 = !DILocation(line: 59, column: 10, scope: !1686, inlinedAt: !2304)
!2306 = !DILocation(line: 887, column: 16, scope: !2263)
!2307 = !DILocation(line: 887, column: 14, scope: !2263)
!2308 = !DILocation(line: 888, column: 5, scope: !2264)
!2309 = !DILocation(line: 888, column: 5, scope: !2263)
!2310 = !DILocation(line: 891, column: 19, scope: !2267)
!2311 = !DILocation(line: 891, column: 25, scope: !2267)
!2312 = !DILocation(line: 0, scope: !2267)
!2313 = !DILocation(line: 892, column: 23, scope: !2267)
!2314 = !DILocation(line: 894, column: 26, scope: !2267)
!2315 = !DILocation(line: 894, column: 32, scope: !2267)
!2316 = !DILocation(line: 896, column: 55, scope: !2267)
!2317 = !DILocation(line: 897, column: 55, scope: !2267)
!2318 = !DILocation(line: 898, column: 55, scope: !2267)
!2319 = !DILocation(line: 899, column: 55, scope: !2267)
!2320 = !DILocation(line: 895, column: 20, scope: !2267)
!2321 = !DILocation(line: 901, column: 14, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2267, file: !432, line: 901, column: 9)
!2323 = !DILocation(line: 901, column: 9, scope: !2267)
!2324 = !DILocation(line: 903, column: 35, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !432, line: 902, column: 7)
!2326 = !DILocation(line: 903, column: 20, scope: !2325)
!2327 = !DILocation(line: 904, column: 17, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2325, file: !432, line: 904, column: 13)
!2329 = !DILocation(line: 904, column: 13, scope: !2325)
!2330 = !DILocation(line: 905, column: 11, scope: !2328)
!2331 = !DILocation(line: 906, column: 27, scope: !2325)
!2332 = !DILocation(line: 906, column: 19, scope: !2325)
!2333 = !DILocation(line: 907, column: 69, scope: !2325)
!2334 = !DILocation(line: 909, column: 44, scope: !2325)
!2335 = !DILocation(line: 910, column: 44, scope: !2325)
!2336 = !DILocation(line: 907, column: 9, scope: !2325)
!2337 = !DILocation(line: 911, column: 7, scope: !2325)
!2338 = !DILocation(line: 913, column: 11, scope: !2267)
!2339 = !DILocation(line: 914, column: 5, scope: !2267)
!2340 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !432, file: !432, line: 925, type: !2341, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2343)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!239, !92, !70, !94}
!2343 = !{!2344, !2345, !2346}
!2344 = !DILocalVariable(name: "n", arg: 1, scope: !2340, file: !432, line: 925, type: !92)
!2345 = !DILocalVariable(name: "arg", arg: 2, scope: !2340, file: !432, line: 925, type: !70)
!2346 = !DILocalVariable(name: "argsize", arg: 3, scope: !2340, file: !432, line: 925, type: !94)
!2347 = !DILocation(line: 0, scope: !2340)
!2348 = !DILocation(line: 927, column: 10, scope: !2340)
!2349 = !DILocation(line: 927, column: 3, scope: !2340)
!2350 = distinct !DISubprogram(name: "quotearg", scope: !432, file: !432, line: 931, type: !936, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2351)
!2351 = !{!2352}
!2352 = !DILocalVariable(name: "arg", arg: 1, scope: !2350, file: !432, line: 931, type: !70)
!2353 = !DILocation(line: 0, scope: !2350)
!2354 = !DILocation(line: 0, scope: !2244, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 933, column: 10, scope: !2350)
!2356 = !DILocation(line: 921, column: 10, scope: !2244, inlinedAt: !2355)
!2357 = !DILocation(line: 933, column: 3, scope: !2350)
!2358 = distinct !DISubprogram(name: "quotearg_mem", scope: !432, file: !432, line: 937, type: !2359, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!239, !70, !94}
!2361 = !{!2362, !2363}
!2362 = !DILocalVariable(name: "arg", arg: 1, scope: !2358, file: !432, line: 937, type: !70)
!2363 = !DILocalVariable(name: "argsize", arg: 2, scope: !2358, file: !432, line: 937, type: !94)
!2364 = !DILocation(line: 0, scope: !2358)
!2365 = !DILocation(line: 0, scope: !2340, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 939, column: 10, scope: !2358)
!2367 = !DILocation(line: 927, column: 10, scope: !2340, inlinedAt: !2366)
!2368 = !DILocation(line: 939, column: 3, scope: !2358)
!2369 = distinct !DISubprogram(name: "quotearg_n_style", scope: !432, file: !432, line: 943, type: !2370, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!239, !92, !458, !70}
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DILocalVariable(name: "n", arg: 1, scope: !2369, file: !432, line: 943, type: !92)
!2374 = !DILocalVariable(name: "s", arg: 2, scope: !2369, file: !432, line: 943, type: !458)
!2375 = !DILocalVariable(name: "arg", arg: 3, scope: !2369, file: !432, line: 943, type: !70)
!2376 = !DILocalVariable(name: "o", scope: !2369, file: !432, line: 945, type: !1470)
!2377 = distinct !DIAssignID()
!2378 = !DILocation(line: 0, scope: !2369)
!2379 = !DILocation(line: 945, column: 3, scope: !2369)
!2380 = !{!2381}
!2381 = distinct !{!2381, !2382, !"quoting_options_from_style: argument 0"}
!2382 = distinct !{!2382, !"quoting_options_from_style"}
!2383 = !DILocation(line: 945, column: 36, scope: !2369)
!2384 = !DILocalVariable(name: "style", arg: 1, scope: !2385, file: !432, line: 183, type: !458)
!2385 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !432, file: !432, line: 183, type: !2386, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!485, !458}
!2388 = !{!2384, !2389}
!2389 = !DILocalVariable(name: "o", scope: !2385, file: !432, line: 185, type: !485)
!2390 = !DILocation(line: 0, scope: !2385, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 945, column: 36, scope: !2369)
!2392 = !DILocation(line: 185, column: 26, scope: !2385, inlinedAt: !2391)
!2393 = distinct !DIAssignID()
!2394 = !DILocation(line: 186, column: 13, scope: !2395, inlinedAt: !2391)
!2395 = distinct !DILexicalBlock(scope: !2385, file: !432, line: 186, column: 7)
!2396 = !DILocation(line: 186, column: 7, scope: !2385, inlinedAt: !2391)
!2397 = !DILocation(line: 187, column: 5, scope: !2395, inlinedAt: !2391)
!2398 = !DILocation(line: 188, column: 11, scope: !2385, inlinedAt: !2391)
!2399 = distinct !DIAssignID()
!2400 = !DILocation(line: 946, column: 10, scope: !2369)
!2401 = !DILocation(line: 947, column: 1, scope: !2369)
!2402 = !DILocation(line: 946, column: 3, scope: !2369)
!2403 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !432, file: !432, line: 950, type: !2404, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2406)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!239, !92, !458, !70, !94}
!2406 = !{!2407, !2408, !2409, !2410, !2411}
!2407 = !DILocalVariable(name: "n", arg: 1, scope: !2403, file: !432, line: 950, type: !92)
!2408 = !DILocalVariable(name: "s", arg: 2, scope: !2403, file: !432, line: 950, type: !458)
!2409 = !DILocalVariable(name: "arg", arg: 3, scope: !2403, file: !432, line: 951, type: !70)
!2410 = !DILocalVariable(name: "argsize", arg: 4, scope: !2403, file: !432, line: 951, type: !94)
!2411 = !DILocalVariable(name: "o", scope: !2403, file: !432, line: 953, type: !1470)
!2412 = distinct !DIAssignID()
!2413 = !DILocation(line: 0, scope: !2403)
!2414 = !DILocation(line: 953, column: 3, scope: !2403)
!2415 = !{!2416}
!2416 = distinct !{!2416, !2417, !"quoting_options_from_style: argument 0"}
!2417 = distinct !{!2417, !"quoting_options_from_style"}
!2418 = !DILocation(line: 953, column: 36, scope: !2403)
!2419 = !DILocation(line: 0, scope: !2385, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 953, column: 36, scope: !2403)
!2421 = !DILocation(line: 185, column: 26, scope: !2385, inlinedAt: !2420)
!2422 = distinct !DIAssignID()
!2423 = !DILocation(line: 186, column: 13, scope: !2395, inlinedAt: !2420)
!2424 = !DILocation(line: 186, column: 7, scope: !2385, inlinedAt: !2420)
!2425 = !DILocation(line: 187, column: 5, scope: !2395, inlinedAt: !2420)
!2426 = !DILocation(line: 188, column: 11, scope: !2385, inlinedAt: !2420)
!2427 = distinct !DIAssignID()
!2428 = !DILocation(line: 954, column: 10, scope: !2403)
!2429 = !DILocation(line: 955, column: 1, scope: !2403)
!2430 = !DILocation(line: 954, column: 3, scope: !2403)
!2431 = distinct !DISubprogram(name: "quotearg_style", scope: !432, file: !432, line: 958, type: !2432, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2434)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!239, !458, !70}
!2434 = !{!2435, !2436}
!2435 = !DILocalVariable(name: "s", arg: 1, scope: !2431, file: !432, line: 958, type: !458)
!2436 = !DILocalVariable(name: "arg", arg: 2, scope: !2431, file: !432, line: 958, type: !70)
!2437 = distinct !DIAssignID()
!2438 = !DILocation(line: 0, scope: !2431)
!2439 = !DILocation(line: 0, scope: !2369, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 960, column: 10, scope: !2431)
!2441 = !DILocation(line: 945, column: 3, scope: !2369, inlinedAt: !2440)
!2442 = !{!2443}
!2443 = distinct !{!2443, !2444, !"quoting_options_from_style: argument 0"}
!2444 = distinct !{!2444, !"quoting_options_from_style"}
!2445 = !DILocation(line: 945, column: 36, scope: !2369, inlinedAt: !2440)
!2446 = !DILocation(line: 0, scope: !2385, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 945, column: 36, scope: !2369, inlinedAt: !2440)
!2448 = !DILocation(line: 185, column: 26, scope: !2385, inlinedAt: !2447)
!2449 = distinct !DIAssignID()
!2450 = !DILocation(line: 186, column: 13, scope: !2395, inlinedAt: !2447)
!2451 = !DILocation(line: 186, column: 7, scope: !2385, inlinedAt: !2447)
!2452 = !DILocation(line: 187, column: 5, scope: !2395, inlinedAt: !2447)
!2453 = !DILocation(line: 188, column: 11, scope: !2385, inlinedAt: !2447)
!2454 = distinct !DIAssignID()
!2455 = !DILocation(line: 946, column: 10, scope: !2369, inlinedAt: !2440)
!2456 = !DILocation(line: 947, column: 1, scope: !2369, inlinedAt: !2440)
!2457 = !DILocation(line: 960, column: 3, scope: !2431)
!2458 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !432, file: !432, line: 964, type: !2459, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!239, !458, !70, !94}
!2461 = !{!2462, !2463, !2464}
!2462 = !DILocalVariable(name: "s", arg: 1, scope: !2458, file: !432, line: 964, type: !458)
!2463 = !DILocalVariable(name: "arg", arg: 2, scope: !2458, file: !432, line: 964, type: !70)
!2464 = !DILocalVariable(name: "argsize", arg: 3, scope: !2458, file: !432, line: 964, type: !94)
!2465 = distinct !DIAssignID()
!2466 = !DILocation(line: 0, scope: !2458)
!2467 = !DILocation(line: 0, scope: !2403, inlinedAt: !2468)
!2468 = distinct !DILocation(line: 966, column: 10, scope: !2458)
!2469 = !DILocation(line: 953, column: 3, scope: !2403, inlinedAt: !2468)
!2470 = !{!2471}
!2471 = distinct !{!2471, !2472, !"quoting_options_from_style: argument 0"}
!2472 = distinct !{!2472, !"quoting_options_from_style"}
!2473 = !DILocation(line: 953, column: 36, scope: !2403, inlinedAt: !2468)
!2474 = !DILocation(line: 0, scope: !2385, inlinedAt: !2475)
!2475 = distinct !DILocation(line: 953, column: 36, scope: !2403, inlinedAt: !2468)
!2476 = !DILocation(line: 185, column: 26, scope: !2385, inlinedAt: !2475)
!2477 = distinct !DIAssignID()
!2478 = !DILocation(line: 186, column: 13, scope: !2395, inlinedAt: !2475)
!2479 = !DILocation(line: 186, column: 7, scope: !2385, inlinedAt: !2475)
!2480 = !DILocation(line: 187, column: 5, scope: !2395, inlinedAt: !2475)
!2481 = !DILocation(line: 188, column: 11, scope: !2385, inlinedAt: !2475)
!2482 = distinct !DIAssignID()
!2483 = !DILocation(line: 954, column: 10, scope: !2403, inlinedAt: !2468)
!2484 = !DILocation(line: 955, column: 1, scope: !2403, inlinedAt: !2468)
!2485 = !DILocation(line: 966, column: 3, scope: !2458)
!2486 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !432, file: !432, line: 970, type: !2487, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2489)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!239, !70, !94, !4}
!2489 = !{!2490, !2491, !2492, !2493}
!2490 = !DILocalVariable(name: "arg", arg: 1, scope: !2486, file: !432, line: 970, type: !70)
!2491 = !DILocalVariable(name: "argsize", arg: 2, scope: !2486, file: !432, line: 970, type: !94)
!2492 = !DILocalVariable(name: "ch", arg: 3, scope: !2486, file: !432, line: 970, type: !4)
!2493 = !DILocalVariable(name: "options", scope: !2486, file: !432, line: 972, type: !485)
!2494 = distinct !DIAssignID()
!2495 = !DILocation(line: 0, scope: !2486)
!2496 = !DILocation(line: 972, column: 3, scope: !2486)
!2497 = !DILocation(line: 973, column: 13, scope: !2486)
!2498 = !{i64 0, i64 4, !813, i64 4, i64 4, !813, i64 8, i64 32, !822, i64 40, i64 8, !753, i64 48, i64 8, !753}
!2499 = distinct !DIAssignID()
!2500 = !DILocation(line: 0, scope: !1489, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 974, column: 3, scope: !2486)
!2502 = !DILocation(line: 147, column: 41, scope: !1489, inlinedAt: !2501)
!2503 = !DILocation(line: 147, column: 62, scope: !1489, inlinedAt: !2501)
!2504 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2501)
!2505 = !DILocation(line: 148, column: 15, scope: !1489, inlinedAt: !2501)
!2506 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2501)
!2507 = !DILocation(line: 149, column: 24, scope: !1489, inlinedAt: !2501)
!2508 = !DILocation(line: 150, column: 19, scope: !1489, inlinedAt: !2501)
!2509 = !DILocation(line: 150, column: 24, scope: !1489, inlinedAt: !2501)
!2510 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2501)
!2511 = !DILocation(line: 975, column: 10, scope: !2486)
!2512 = !DILocation(line: 976, column: 1, scope: !2486)
!2513 = !DILocation(line: 975, column: 3, scope: !2486)
!2514 = distinct !DISubprogram(name: "quotearg_char", scope: !432, file: !432, line: 979, type: !2515, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2517)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!239, !70, !4}
!2517 = !{!2518, !2519}
!2518 = !DILocalVariable(name: "arg", arg: 1, scope: !2514, file: !432, line: 979, type: !70)
!2519 = !DILocalVariable(name: "ch", arg: 2, scope: !2514, file: !432, line: 979, type: !4)
!2520 = distinct !DIAssignID()
!2521 = !DILocation(line: 0, scope: !2514)
!2522 = !DILocation(line: 0, scope: !2486, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 981, column: 10, scope: !2514)
!2524 = !DILocation(line: 972, column: 3, scope: !2486, inlinedAt: !2523)
!2525 = !DILocation(line: 973, column: 13, scope: !2486, inlinedAt: !2523)
!2526 = distinct !DIAssignID()
!2527 = !DILocation(line: 0, scope: !1489, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 974, column: 3, scope: !2486, inlinedAt: !2523)
!2529 = !DILocation(line: 147, column: 41, scope: !1489, inlinedAt: !2528)
!2530 = !DILocation(line: 147, column: 62, scope: !1489, inlinedAt: !2528)
!2531 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2528)
!2532 = !DILocation(line: 148, column: 15, scope: !1489, inlinedAt: !2528)
!2533 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2528)
!2534 = !DILocation(line: 149, column: 24, scope: !1489, inlinedAt: !2528)
!2535 = !DILocation(line: 150, column: 19, scope: !1489, inlinedAt: !2528)
!2536 = !DILocation(line: 150, column: 24, scope: !1489, inlinedAt: !2528)
!2537 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2528)
!2538 = !DILocation(line: 975, column: 10, scope: !2486, inlinedAt: !2523)
!2539 = !DILocation(line: 976, column: 1, scope: !2486, inlinedAt: !2523)
!2540 = !DILocation(line: 981, column: 3, scope: !2514)
!2541 = distinct !DISubprogram(name: "quotearg_colon", scope: !432, file: !432, line: 985, type: !936, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2542)
!2542 = !{!2543}
!2543 = !DILocalVariable(name: "arg", arg: 1, scope: !2541, file: !432, line: 985, type: !70)
!2544 = distinct !DIAssignID()
!2545 = !DILocation(line: 0, scope: !2541)
!2546 = !DILocation(line: 0, scope: !2514, inlinedAt: !2547)
!2547 = distinct !DILocation(line: 987, column: 10, scope: !2541)
!2548 = !DILocation(line: 0, scope: !2486, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 981, column: 10, scope: !2514, inlinedAt: !2547)
!2550 = !DILocation(line: 972, column: 3, scope: !2486, inlinedAt: !2549)
!2551 = !DILocation(line: 973, column: 13, scope: !2486, inlinedAt: !2549)
!2552 = distinct !DIAssignID()
!2553 = !DILocation(line: 0, scope: !1489, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 974, column: 3, scope: !2486, inlinedAt: !2549)
!2555 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2554)
!2556 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2554)
!2557 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2554)
!2558 = !DILocation(line: 975, column: 10, scope: !2486, inlinedAt: !2549)
!2559 = !DILocation(line: 976, column: 1, scope: !2486, inlinedAt: !2549)
!2560 = !DILocation(line: 987, column: 3, scope: !2541)
!2561 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !432, file: !432, line: 991, type: !2359, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2562)
!2562 = !{!2563, !2564}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2561, file: !432, line: 991, type: !70)
!2564 = !DILocalVariable(name: "argsize", arg: 2, scope: !2561, file: !432, line: 991, type: !94)
!2565 = distinct !DIAssignID()
!2566 = !DILocation(line: 0, scope: !2561)
!2567 = !DILocation(line: 0, scope: !2486, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 993, column: 10, scope: !2561)
!2569 = !DILocation(line: 972, column: 3, scope: !2486, inlinedAt: !2568)
!2570 = !DILocation(line: 973, column: 13, scope: !2486, inlinedAt: !2568)
!2571 = distinct !DIAssignID()
!2572 = !DILocation(line: 0, scope: !1489, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 974, column: 3, scope: !2486, inlinedAt: !2568)
!2574 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2573)
!2575 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2573)
!2576 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2573)
!2577 = !DILocation(line: 975, column: 10, scope: !2486, inlinedAt: !2568)
!2578 = !DILocation(line: 976, column: 1, scope: !2486, inlinedAt: !2568)
!2579 = !DILocation(line: 993, column: 3, scope: !2561)
!2580 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !432, file: !432, line: 997, type: !2370, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2581)
!2581 = !{!2582, !2583, !2584, !2585}
!2582 = !DILocalVariable(name: "n", arg: 1, scope: !2580, file: !432, line: 997, type: !92)
!2583 = !DILocalVariable(name: "s", arg: 2, scope: !2580, file: !432, line: 997, type: !458)
!2584 = !DILocalVariable(name: "arg", arg: 3, scope: !2580, file: !432, line: 997, type: !70)
!2585 = !DILocalVariable(name: "options", scope: !2580, file: !432, line: 999, type: !485)
!2586 = distinct !DIAssignID()
!2587 = !DILocation(line: 0, scope: !2580)
!2588 = !DILocation(line: 185, column: 26, scope: !2385, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1000, column: 13, scope: !2580)
!2590 = !DILocation(line: 999, column: 3, scope: !2580)
!2591 = !DILocation(line: 0, scope: !2385, inlinedAt: !2589)
!2592 = !DILocation(line: 186, column: 13, scope: !2395, inlinedAt: !2589)
!2593 = !DILocation(line: 186, column: 7, scope: !2385, inlinedAt: !2589)
!2594 = !DILocation(line: 187, column: 5, scope: !2395, inlinedAt: !2589)
!2595 = !{!2596}
!2596 = distinct !{!2596, !2597, !"quoting_options_from_style: argument 0"}
!2597 = distinct !{!2597, !"quoting_options_from_style"}
!2598 = !DILocation(line: 1000, column: 13, scope: !2580)
!2599 = distinct !DIAssignID()
!2600 = distinct !DIAssignID()
!2601 = !DILocation(line: 0, scope: !1489, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1001, column: 3, scope: !2580)
!2603 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2602)
!2604 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2602)
!2605 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2602)
!2606 = distinct !DIAssignID()
!2607 = !DILocation(line: 1002, column: 10, scope: !2580)
!2608 = !DILocation(line: 1003, column: 1, scope: !2580)
!2609 = !DILocation(line: 1002, column: 3, scope: !2580)
!2610 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !432, file: !432, line: 1006, type: !2611, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2613)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!239, !92, !70, !70, !70}
!2613 = !{!2614, !2615, !2616, !2617}
!2614 = !DILocalVariable(name: "n", arg: 1, scope: !2610, file: !432, line: 1006, type: !92)
!2615 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2610, file: !432, line: 1006, type: !70)
!2616 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2610, file: !432, line: 1007, type: !70)
!2617 = !DILocalVariable(name: "arg", arg: 4, scope: !2610, file: !432, line: 1007, type: !70)
!2618 = distinct !DIAssignID()
!2619 = !DILocation(line: 0, scope: !2610)
!2620 = !DILocalVariable(name: "o", scope: !2621, file: !432, line: 1018, type: !485)
!2621 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !432, file: !432, line: 1014, type: !2622, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2624)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!239, !92, !70, !70, !70, !94}
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2620}
!2625 = !DILocalVariable(name: "n", arg: 1, scope: !2621, file: !432, line: 1014, type: !92)
!2626 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2621, file: !432, line: 1014, type: !70)
!2627 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2621, file: !432, line: 1015, type: !70)
!2628 = !DILocalVariable(name: "arg", arg: 4, scope: !2621, file: !432, line: 1016, type: !70)
!2629 = !DILocalVariable(name: "argsize", arg: 5, scope: !2621, file: !432, line: 1016, type: !94)
!2630 = !DILocation(line: 0, scope: !2621, inlinedAt: !2631)
!2631 = distinct !DILocation(line: 1009, column: 10, scope: !2610)
!2632 = !DILocation(line: 1018, column: 3, scope: !2621, inlinedAt: !2631)
!2633 = !DILocation(line: 1018, column: 30, scope: !2621, inlinedAt: !2631)
!2634 = distinct !DIAssignID()
!2635 = distinct !DIAssignID()
!2636 = !DILocation(line: 0, scope: !1529, inlinedAt: !2637)
!2637 = distinct !DILocation(line: 1019, column: 3, scope: !2621, inlinedAt: !2631)
!2638 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2637)
!2639 = distinct !DIAssignID()
!2640 = !DILocation(line: 175, column: 8, scope: !1542, inlinedAt: !2637)
!2641 = !DILocation(line: 175, column: 19, scope: !1542, inlinedAt: !2637)
!2642 = !DILocation(line: 176, column: 5, scope: !1542, inlinedAt: !2637)
!2643 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2637)
!2644 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2637)
!2645 = distinct !DIAssignID()
!2646 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2637)
!2647 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2637)
!2648 = distinct !DIAssignID()
!2649 = !DILocation(line: 1020, column: 10, scope: !2621, inlinedAt: !2631)
!2650 = !DILocation(line: 1021, column: 1, scope: !2621, inlinedAt: !2631)
!2651 = !DILocation(line: 1009, column: 3, scope: !2610)
!2652 = distinct !DIAssignID()
!2653 = !DILocation(line: 0, scope: !2621)
!2654 = !DILocation(line: 1018, column: 3, scope: !2621)
!2655 = !DILocation(line: 1018, column: 30, scope: !2621)
!2656 = distinct !DIAssignID()
!2657 = distinct !DIAssignID()
!2658 = !DILocation(line: 0, scope: !1529, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1019, column: 3, scope: !2621)
!2660 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2659)
!2661 = distinct !DIAssignID()
!2662 = !DILocation(line: 175, column: 8, scope: !1542, inlinedAt: !2659)
!2663 = !DILocation(line: 175, column: 19, scope: !1542, inlinedAt: !2659)
!2664 = !DILocation(line: 176, column: 5, scope: !1542, inlinedAt: !2659)
!2665 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2659)
!2666 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2659)
!2667 = distinct !DIAssignID()
!2668 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2659)
!2669 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2659)
!2670 = distinct !DIAssignID()
!2671 = !DILocation(line: 1020, column: 10, scope: !2621)
!2672 = !DILocation(line: 1021, column: 1, scope: !2621)
!2673 = !DILocation(line: 1020, column: 3, scope: !2621)
!2674 = distinct !DISubprogram(name: "quotearg_custom", scope: !432, file: !432, line: 1024, type: !2675, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!239, !70, !70, !70}
!2677 = !{!2678, !2679, !2680}
!2678 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2674, file: !432, line: 1024, type: !70)
!2679 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2674, file: !432, line: 1024, type: !70)
!2680 = !DILocalVariable(name: "arg", arg: 3, scope: !2674, file: !432, line: 1025, type: !70)
!2681 = distinct !DIAssignID()
!2682 = !DILocation(line: 0, scope: !2674)
!2683 = !DILocation(line: 0, scope: !2610, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1027, column: 10, scope: !2674)
!2685 = !DILocation(line: 0, scope: !2621, inlinedAt: !2686)
!2686 = distinct !DILocation(line: 1009, column: 10, scope: !2610, inlinedAt: !2684)
!2687 = !DILocation(line: 1018, column: 3, scope: !2621, inlinedAt: !2686)
!2688 = !DILocation(line: 1018, column: 30, scope: !2621, inlinedAt: !2686)
!2689 = distinct !DIAssignID()
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 0, scope: !1529, inlinedAt: !2692)
!2692 = distinct !DILocation(line: 1019, column: 3, scope: !2621, inlinedAt: !2686)
!2693 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2692)
!2694 = distinct !DIAssignID()
!2695 = !DILocation(line: 175, column: 8, scope: !1542, inlinedAt: !2692)
!2696 = !DILocation(line: 175, column: 19, scope: !1542, inlinedAt: !2692)
!2697 = !DILocation(line: 176, column: 5, scope: !1542, inlinedAt: !2692)
!2698 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2692)
!2699 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2692)
!2700 = distinct !DIAssignID()
!2701 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2692)
!2702 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2692)
!2703 = distinct !DIAssignID()
!2704 = !DILocation(line: 1020, column: 10, scope: !2621, inlinedAt: !2686)
!2705 = !DILocation(line: 1021, column: 1, scope: !2621, inlinedAt: !2686)
!2706 = !DILocation(line: 1027, column: 3, scope: !2674)
!2707 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !432, file: !432, line: 1031, type: !2708, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!239, !70, !70, !70, !94}
!2710 = !{!2711, !2712, !2713, !2714}
!2711 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2707, file: !432, line: 1031, type: !70)
!2712 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2707, file: !432, line: 1031, type: !70)
!2713 = !DILocalVariable(name: "arg", arg: 3, scope: !2707, file: !432, line: 1032, type: !70)
!2714 = !DILocalVariable(name: "argsize", arg: 4, scope: !2707, file: !432, line: 1032, type: !94)
!2715 = distinct !DIAssignID()
!2716 = !DILocation(line: 0, scope: !2707)
!2717 = !DILocation(line: 0, scope: !2621, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1034, column: 10, scope: !2707)
!2719 = !DILocation(line: 1018, column: 3, scope: !2621, inlinedAt: !2718)
!2720 = !DILocation(line: 1018, column: 30, scope: !2621, inlinedAt: !2718)
!2721 = distinct !DIAssignID()
!2722 = distinct !DIAssignID()
!2723 = !DILocation(line: 0, scope: !1529, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1019, column: 3, scope: !2621, inlinedAt: !2718)
!2725 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2724)
!2726 = distinct !DIAssignID()
!2727 = !DILocation(line: 175, column: 8, scope: !1542, inlinedAt: !2724)
!2728 = !DILocation(line: 175, column: 19, scope: !1542, inlinedAt: !2724)
!2729 = !DILocation(line: 176, column: 5, scope: !1542, inlinedAt: !2724)
!2730 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2724)
!2731 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2724)
!2732 = distinct !DIAssignID()
!2733 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2724)
!2734 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2724)
!2735 = distinct !DIAssignID()
!2736 = !DILocation(line: 1020, column: 10, scope: !2621, inlinedAt: !2718)
!2737 = !DILocation(line: 1021, column: 1, scope: !2621, inlinedAt: !2718)
!2738 = !DILocation(line: 1034, column: 3, scope: !2707)
!2739 = distinct !DISubprogram(name: "quote_n_mem", scope: !432, file: !432, line: 1049, type: !2740, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2742)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!70, !92, !70, !94}
!2742 = !{!2743, !2744, !2745}
!2743 = !DILocalVariable(name: "n", arg: 1, scope: !2739, file: !432, line: 1049, type: !92)
!2744 = !DILocalVariable(name: "arg", arg: 2, scope: !2739, file: !432, line: 1049, type: !70)
!2745 = !DILocalVariable(name: "argsize", arg: 3, scope: !2739, file: !432, line: 1049, type: !94)
!2746 = !DILocation(line: 0, scope: !2739)
!2747 = !DILocation(line: 1051, column: 10, scope: !2739)
!2748 = !DILocation(line: 1051, column: 3, scope: !2739)
!2749 = distinct !DISubprogram(name: "quote_mem", scope: !432, file: !432, line: 1055, type: !2750, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2752)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!70, !70, !94}
!2752 = !{!2753, !2754}
!2753 = !DILocalVariable(name: "arg", arg: 1, scope: !2749, file: !432, line: 1055, type: !70)
!2754 = !DILocalVariable(name: "argsize", arg: 2, scope: !2749, file: !432, line: 1055, type: !94)
!2755 = !DILocation(line: 0, scope: !2749)
!2756 = !DILocation(line: 0, scope: !2739, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 1057, column: 10, scope: !2749)
!2758 = !DILocation(line: 1051, column: 10, scope: !2739, inlinedAt: !2757)
!2759 = !DILocation(line: 1057, column: 3, scope: !2749)
!2760 = distinct !DISubprogram(name: "quote_n", scope: !432, file: !432, line: 1061, type: !2761, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2763)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!70, !92, !70}
!2763 = !{!2764, !2765}
!2764 = !DILocalVariable(name: "n", arg: 1, scope: !2760, file: !432, line: 1061, type: !92)
!2765 = !DILocalVariable(name: "arg", arg: 2, scope: !2760, file: !432, line: 1061, type: !70)
!2766 = !DILocation(line: 0, scope: !2760)
!2767 = !DILocation(line: 0, scope: !2739, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1063, column: 10, scope: !2760)
!2769 = !DILocation(line: 1051, column: 10, scope: !2739, inlinedAt: !2768)
!2770 = !DILocation(line: 1063, column: 3, scope: !2760)
!2771 = distinct !DISubprogram(name: "quote", scope: !432, file: !432, line: 1067, type: !2772, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!70, !70}
!2774 = !{!2775}
!2775 = !DILocalVariable(name: "arg", arg: 1, scope: !2771, file: !432, line: 1067, type: !70)
!2776 = !DILocation(line: 0, scope: !2771)
!2777 = !DILocation(line: 0, scope: !2760, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1069, column: 10, scope: !2771)
!2779 = !DILocation(line: 0, scope: !2739, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1063, column: 10, scope: !2760, inlinedAt: !2778)
!2781 = !DILocation(line: 1051, column: 10, scope: !2739, inlinedAt: !2780)
!2782 = !DILocation(line: 1069, column: 3, scope: !2771)
!2783 = distinct !DISubprogram(name: "version_etc_arn", scope: !548, file: !548, line: 61, type: !2784, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2821)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{null, !2786, !70, !70, !70, !2820, !94}
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !2788)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !2789)
!2789 = !{!2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2788, file: !235, line: 51, baseType: !92, size: 32)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2788, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2788, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2788, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2788, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2788, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2788, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2788, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2788, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2788, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2788, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2788, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2788, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2788, file: !235, line: 70, baseType: !2804, size: 64, offset: 832)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2788, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2788, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2788, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2788, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2788, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2788, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2788, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2788, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2788, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2788, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2788, file: !235, line: 93, baseType: !2804, size: 64, offset: 1344)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2788, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2788, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2788, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2788, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827}
!2822 = !DILocalVariable(name: "stream", arg: 1, scope: !2783, file: !548, line: 61, type: !2786)
!2823 = !DILocalVariable(name: "command_name", arg: 2, scope: !2783, file: !548, line: 62, type: !70)
!2824 = !DILocalVariable(name: "package", arg: 3, scope: !2783, file: !548, line: 62, type: !70)
!2825 = !DILocalVariable(name: "version", arg: 4, scope: !2783, file: !548, line: 63, type: !70)
!2826 = !DILocalVariable(name: "authors", arg: 5, scope: !2783, file: !548, line: 64, type: !2820)
!2827 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2783, file: !548, line: 64, type: !94)
!2828 = !DILocation(line: 0, scope: !2783)
!2829 = !DILocation(line: 66, column: 7, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2783, file: !548, line: 66, column: 7)
!2831 = !DILocation(line: 66, column: 7, scope: !2783)
!2832 = !DILocation(line: 67, column: 5, scope: !2830)
!2833 = !DILocation(line: 69, column: 5, scope: !2830)
!2834 = !DILocation(line: 83, column: 3, scope: !2783)
!2835 = !DILocation(line: 85, column: 3, scope: !2783)
!2836 = !DILocation(line: 88, column: 3, scope: !2783)
!2837 = !DILocation(line: 95, column: 3, scope: !2783)
!2838 = !DILocation(line: 97, column: 3, scope: !2783)
!2839 = !DILocation(line: 105, column: 7, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2783, file: !548, line: 98, column: 5)
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
!2861 = distinct !DISubprogram(name: "version_etc_ar", scope: !548, file: !548, line: 183, type: !2862, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !2786, !70, !70, !70, !2820}
!2864 = !{!2865, !2866, !2867, !2868, !2869, !2870}
!2865 = !DILocalVariable(name: "stream", arg: 1, scope: !2861, file: !548, line: 183, type: !2786)
!2866 = !DILocalVariable(name: "command_name", arg: 2, scope: !2861, file: !548, line: 184, type: !70)
!2867 = !DILocalVariable(name: "package", arg: 3, scope: !2861, file: !548, line: 184, type: !70)
!2868 = !DILocalVariable(name: "version", arg: 4, scope: !2861, file: !548, line: 185, type: !70)
!2869 = !DILocalVariable(name: "authors", arg: 5, scope: !2861, file: !548, line: 185, type: !2820)
!2870 = !DILocalVariable(name: "n_authors", scope: !2861, file: !548, line: 187, type: !94)
!2871 = !DILocation(line: 0, scope: !2861)
!2872 = !DILocation(line: 189, column: 8, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2861, file: !548, line: 189, column: 3)
!2874 = !DILocation(line: 189, scope: !2873)
!2875 = !DILocation(line: 189, column: 23, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2873, file: !548, line: 189, column: 3)
!2877 = !DILocation(line: 189, column: 3, scope: !2873)
!2878 = !DILocation(line: 189, column: 52, scope: !2876)
!2879 = distinct !{!2879, !2877, !2880, !860}
!2880 = !DILocation(line: 190, column: 5, scope: !2873)
!2881 = !DILocation(line: 191, column: 3, scope: !2861)
!2882 = !DILocation(line: 192, column: 1, scope: !2861)
!2883 = distinct !DISubprogram(name: "version_etc_va", scope: !548, file: !548, line: 199, type: !2884, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2896)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2786, !70, !70, !70, !2886}
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !323, line: 52, baseType: !2887)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !325, line: 12, baseType: !2888)
!2888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !548, baseType: !2889)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !2890)
!2890 = !{!2891, !2892, !2893, !2894, !2895}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2889, file: !548, line: 192, baseType: !91, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2889, file: !548, line: 192, baseType: !91, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2889, file: !548, line: 192, baseType: !91, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2889, file: !548, line: 192, baseType: !92, size: 32, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2889, file: !548, line: 192, baseType: !92, size: 32, offset: 224)
!2896 = !{!2897, !2898, !2899, !2900, !2901, !2902, !2903}
!2897 = !DILocalVariable(name: "stream", arg: 1, scope: !2883, file: !548, line: 199, type: !2786)
!2898 = !DILocalVariable(name: "command_name", arg: 2, scope: !2883, file: !548, line: 200, type: !70)
!2899 = !DILocalVariable(name: "package", arg: 3, scope: !2883, file: !548, line: 200, type: !70)
!2900 = !DILocalVariable(name: "version", arg: 4, scope: !2883, file: !548, line: 201, type: !70)
!2901 = !DILocalVariable(name: "authors", arg: 5, scope: !2883, file: !548, line: 201, type: !2886)
!2902 = !DILocalVariable(name: "n_authors", scope: !2883, file: !548, line: 203, type: !94)
!2903 = !DILocalVariable(name: "authtab", scope: !2883, file: !548, line: 204, type: !2904)
!2904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!2905 = distinct !DIAssignID()
!2906 = !DILocation(line: 0, scope: !2883)
!2907 = !DILocation(line: 204, column: 3, scope: !2883)
!2908 = !DILocation(line: 208, column: 35, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !548, line: 206, column: 3)
!2910 = distinct !DILexicalBlock(scope: !2883, file: !548, line: 206, column: 3)
!2911 = !DILocation(line: 208, column: 33, scope: !2909)
!2912 = !DILocation(line: 208, column: 67, scope: !2909)
!2913 = !DILocation(line: 206, column: 3, scope: !2910)
!2914 = !DILocation(line: 208, column: 14, scope: !2909)
!2915 = !DILocation(line: 0, scope: !2910)
!2916 = !DILocation(line: 211, column: 3, scope: !2883)
!2917 = !DILocation(line: 213, column: 1, scope: !2883)
!2918 = distinct !DISubprogram(name: "version_etc", scope: !548, file: !548, line: 230, type: !2919, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{null, !2786, !70, !70, !70, null}
!2921 = !{!2922, !2923, !2924, !2925, !2926}
!2922 = !DILocalVariable(name: "stream", arg: 1, scope: !2918, file: !548, line: 230, type: !2786)
!2923 = !DILocalVariable(name: "command_name", arg: 2, scope: !2918, file: !548, line: 231, type: !70)
!2924 = !DILocalVariable(name: "package", arg: 3, scope: !2918, file: !548, line: 231, type: !70)
!2925 = !DILocalVariable(name: "version", arg: 4, scope: !2918, file: !548, line: 232, type: !70)
!2926 = !DILocalVariable(name: "authors", scope: !2918, file: !548, line: 234, type: !2886)
!2927 = distinct !DIAssignID()
!2928 = !DILocation(line: 0, scope: !2918)
!2929 = !DILocation(line: 234, column: 3, scope: !2918)
!2930 = !DILocation(line: 235, column: 3, scope: !2918)
!2931 = !DILocation(line: 236, column: 3, scope: !2918)
!2932 = !DILocation(line: 237, column: 3, scope: !2918)
!2933 = !DILocation(line: 238, column: 1, scope: !2918)
!2934 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !548, file: !548, line: 241, type: !363, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674)
!2935 = !DILocation(line: 243, column: 3, scope: !2934)
!2936 = !DILocation(line: 248, column: 3, scope: !2934)
!2937 = !DILocation(line: 254, column: 3, scope: !2934)
!2938 = !DILocation(line: 259, column: 3, scope: !2934)
!2939 = !DILocation(line: 261, column: 1, scope: !2934)
!2940 = distinct !DISubprogram(name: "xnrealloc", scope: !2941, file: !2941, line: 147, type: !2942, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2944)
!2941 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!91, !91, !94, !94}
!2944 = !{!2945, !2946, !2947}
!2945 = !DILocalVariable(name: "p", arg: 1, scope: !2940, file: !2941, line: 147, type: !91)
!2946 = !DILocalVariable(name: "n", arg: 2, scope: !2940, file: !2941, line: 147, type: !94)
!2947 = !DILocalVariable(name: "s", arg: 3, scope: !2940, file: !2941, line: 147, type: !94)
!2948 = !DILocation(line: 0, scope: !2940)
!2949 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !681, line: 83, type: !91)
!2950 = distinct !DISubprogram(name: "xreallocarray", scope: !681, file: !681, line: 83, type: !2942, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2951)
!2951 = !{!2949, !2952, !2953}
!2952 = !DILocalVariable(name: "n", arg: 2, scope: !2950, file: !681, line: 83, type: !94)
!2953 = !DILocalVariable(name: "s", arg: 3, scope: !2950, file: !681, line: 83, type: !94)
!2954 = !DILocation(line: 0, scope: !2950, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 149, column: 10, scope: !2940)
!2956 = !DILocation(line: 85, column: 25, scope: !2950, inlinedAt: !2955)
!2957 = !DILocalVariable(name: "p", arg: 1, scope: !2958, file: !681, line: 37, type: !91)
!2958 = distinct !DISubprogram(name: "check_nonnull", scope: !681, file: !681, line: 37, type: !2959, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!91, !91}
!2961 = !{!2957}
!2962 = !DILocation(line: 0, scope: !2958, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 85, column: 10, scope: !2950, inlinedAt: !2955)
!2964 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !2963)
!2965 = distinct !DILexicalBlock(scope: !2958, file: !681, line: 39, column: 7)
!2966 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !2963)
!2967 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !2963)
!2968 = !DILocation(line: 149, column: 3, scope: !2940)
!2969 = !DILocation(line: 0, scope: !2950)
!2970 = !DILocation(line: 85, column: 25, scope: !2950)
!2971 = !DILocation(line: 0, scope: !2958, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 85, column: 10, scope: !2950)
!2973 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !2972)
!2974 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !2972)
!2975 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !2972)
!2976 = !DILocation(line: 85, column: 3, scope: !2950)
!2977 = distinct !DISubprogram(name: "xmalloc", scope: !681, file: !681, line: 47, type: !2978, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2980)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!91, !94}
!2980 = !{!2981}
!2981 = !DILocalVariable(name: "s", arg: 1, scope: !2977, file: !681, line: 47, type: !94)
!2982 = !DILocation(line: 0, scope: !2977)
!2983 = !DILocation(line: 49, column: 25, scope: !2977)
!2984 = !DILocation(line: 0, scope: !2958, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 49, column: 10, scope: !2977)
!2986 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !2985)
!2987 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !2985)
!2988 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !2985)
!2989 = !DILocation(line: 49, column: 3, scope: !2977)
!2990 = !DISubprogram(name: "malloc", scope: !934, file: !934, line: 540, type: !2978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2991 = distinct !DISubprogram(name: "ximalloc", scope: !681, file: !681, line: 53, type: !2992, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!91, !700}
!2994 = !{!2995}
!2995 = !DILocalVariable(name: "s", arg: 1, scope: !2991, file: !681, line: 53, type: !700)
!2996 = !DILocation(line: 0, scope: !2991)
!2997 = !DILocalVariable(name: "s", arg: 1, scope: !2998, file: !2999, line: 55, type: !700)
!2998 = distinct !DISubprogram(name: "imalloc", scope: !2999, file: !2999, line: 55, type: !2992, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3000)
!2999 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3000 = !{!2997}
!3001 = !DILocation(line: 0, scope: !2998, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 55, column: 25, scope: !2991)
!3003 = !DILocation(line: 57, column: 26, scope: !2998, inlinedAt: !3002)
!3004 = !DILocation(line: 0, scope: !2958, inlinedAt: !3005)
!3005 = distinct !DILocation(line: 55, column: 10, scope: !2991)
!3006 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3005)
!3007 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3005)
!3008 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3005)
!3009 = !DILocation(line: 55, column: 3, scope: !2991)
!3010 = distinct !DISubprogram(name: "xcharalloc", scope: !681, file: !681, line: 59, type: !3011, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3013)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!239, !94}
!3013 = !{!3014}
!3014 = !DILocalVariable(name: "n", arg: 1, scope: !3010, file: !681, line: 59, type: !94)
!3015 = !DILocation(line: 0, scope: !3010)
!3016 = !DILocation(line: 0, scope: !2977, inlinedAt: !3017)
!3017 = distinct !DILocation(line: 61, column: 10, scope: !3010)
!3018 = !DILocation(line: 49, column: 25, scope: !2977, inlinedAt: !3017)
!3019 = !DILocation(line: 0, scope: !2958, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 49, column: 10, scope: !2977, inlinedAt: !3017)
!3021 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3020)
!3022 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3020)
!3023 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3020)
!3024 = !DILocation(line: 61, column: 3, scope: !3010)
!3025 = distinct !DISubprogram(name: "xrealloc", scope: !681, file: !681, line: 68, type: !3026, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3028)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!91, !91, !94}
!3028 = !{!3029, !3030}
!3029 = !DILocalVariable(name: "p", arg: 1, scope: !3025, file: !681, line: 68, type: !91)
!3030 = !DILocalVariable(name: "s", arg: 2, scope: !3025, file: !681, line: 68, type: !94)
!3031 = !DILocation(line: 0, scope: !3025)
!3032 = !DILocalVariable(name: "ptr", arg: 1, scope: !3033, file: !3034, line: 2057, type: !91)
!3033 = distinct !DISubprogram(name: "rpl_realloc", scope: !3034, file: !3034, line: 2057, type: !3026, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3035)
!3034 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3035 = !{!3032, !3036}
!3036 = !DILocalVariable(name: "size", arg: 2, scope: !3033, file: !3034, line: 2057, type: !94)
!3037 = !DILocation(line: 0, scope: !3033, inlinedAt: !3038)
!3038 = distinct !DILocation(line: 70, column: 25, scope: !3025)
!3039 = !DILocation(line: 2059, column: 24, scope: !3033, inlinedAt: !3038)
!3040 = !DILocation(line: 2059, column: 10, scope: !3033, inlinedAt: !3038)
!3041 = !DILocation(line: 0, scope: !2958, inlinedAt: !3042)
!3042 = distinct !DILocation(line: 70, column: 10, scope: !3025)
!3043 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3042)
!3044 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3042)
!3045 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3042)
!3046 = !DILocation(line: 70, column: 3, scope: !3025)
!3047 = !DISubprogram(name: "realloc", scope: !934, file: !934, line: 551, type: !3026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3048 = distinct !DISubprogram(name: "xirealloc", scope: !681, file: !681, line: 74, type: !3049, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!91, !91, !700}
!3051 = !{!3052, !3053}
!3052 = !DILocalVariable(name: "p", arg: 1, scope: !3048, file: !681, line: 74, type: !91)
!3053 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !681, line: 74, type: !700)
!3054 = !DILocation(line: 0, scope: !3048)
!3055 = !DILocalVariable(name: "p", arg: 1, scope: !3056, file: !2999, line: 66, type: !91)
!3056 = distinct !DISubprogram(name: "irealloc", scope: !2999, file: !2999, line: 66, type: !3049, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3057)
!3057 = !{!3055, !3058}
!3058 = !DILocalVariable(name: "s", arg: 2, scope: !3056, file: !2999, line: 66, type: !700)
!3059 = !DILocation(line: 0, scope: !3056, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 76, column: 25, scope: !3048)
!3061 = !DILocation(line: 0, scope: !3033, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 68, column: 26, scope: !3056, inlinedAt: !3060)
!3063 = !DILocation(line: 2059, column: 24, scope: !3033, inlinedAt: !3062)
!3064 = !DILocation(line: 2059, column: 10, scope: !3033, inlinedAt: !3062)
!3065 = !DILocation(line: 0, scope: !2958, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 76, column: 10, scope: !3048)
!3067 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3066)
!3068 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3066)
!3069 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3066)
!3070 = !DILocation(line: 76, column: 3, scope: !3048)
!3071 = distinct !DISubprogram(name: "xireallocarray", scope: !681, file: !681, line: 89, type: !3072, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!91, !91, !700, !700}
!3074 = !{!3075, !3076, !3077}
!3075 = !DILocalVariable(name: "p", arg: 1, scope: !3071, file: !681, line: 89, type: !91)
!3076 = !DILocalVariable(name: "n", arg: 2, scope: !3071, file: !681, line: 89, type: !700)
!3077 = !DILocalVariable(name: "s", arg: 3, scope: !3071, file: !681, line: 89, type: !700)
!3078 = !DILocation(line: 0, scope: !3071)
!3079 = !DILocalVariable(name: "p", arg: 1, scope: !3080, file: !2999, line: 98, type: !91)
!3080 = distinct !DISubprogram(name: "ireallocarray", scope: !2999, file: !2999, line: 98, type: !3072, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3081)
!3081 = !{!3079, !3082, !3083}
!3082 = !DILocalVariable(name: "n", arg: 2, scope: !3080, file: !2999, line: 98, type: !700)
!3083 = !DILocalVariable(name: "s", arg: 3, scope: !3080, file: !2999, line: 98, type: !700)
!3084 = !DILocation(line: 0, scope: !3080, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 91, column: 25, scope: !3071)
!3086 = !DILocation(line: 101, column: 13, scope: !3080, inlinedAt: !3085)
!3087 = !DILocation(line: 0, scope: !2958, inlinedAt: !3088)
!3088 = distinct !DILocation(line: 91, column: 10, scope: !3071)
!3089 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3088)
!3090 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3088)
!3091 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3088)
!3092 = !DILocation(line: 91, column: 3, scope: !3071)
!3093 = distinct !DISubprogram(name: "xnmalloc", scope: !681, file: !681, line: 98, type: !3094, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3096)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!91, !94, !94}
!3096 = !{!3097, !3098}
!3097 = !DILocalVariable(name: "n", arg: 1, scope: !3093, file: !681, line: 98, type: !94)
!3098 = !DILocalVariable(name: "s", arg: 2, scope: !3093, file: !681, line: 98, type: !94)
!3099 = !DILocation(line: 0, scope: !3093)
!3100 = !DILocation(line: 0, scope: !2950, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 100, column: 10, scope: !3093)
!3102 = !DILocation(line: 85, column: 25, scope: !2950, inlinedAt: !3101)
!3103 = !DILocation(line: 0, scope: !2958, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 85, column: 10, scope: !2950, inlinedAt: !3101)
!3105 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3104)
!3106 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3104)
!3107 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3104)
!3108 = !DILocation(line: 100, column: 3, scope: !3093)
!3109 = distinct !DISubprogram(name: "xinmalloc", scope: !681, file: !681, line: 104, type: !3110, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3112)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!91, !700, !700}
!3112 = !{!3113, !3114}
!3113 = !DILocalVariable(name: "n", arg: 1, scope: !3109, file: !681, line: 104, type: !700)
!3114 = !DILocalVariable(name: "s", arg: 2, scope: !3109, file: !681, line: 104, type: !700)
!3115 = !DILocation(line: 0, scope: !3109)
!3116 = !DILocation(line: 0, scope: !3071, inlinedAt: !3117)
!3117 = distinct !DILocation(line: 106, column: 10, scope: !3109)
!3118 = !DILocation(line: 0, scope: !3080, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 91, column: 25, scope: !3071, inlinedAt: !3117)
!3120 = !DILocation(line: 101, column: 13, scope: !3080, inlinedAt: !3119)
!3121 = !DILocation(line: 0, scope: !2958, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 91, column: 10, scope: !3071, inlinedAt: !3117)
!3123 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3122)
!3124 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3122)
!3125 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3122)
!3126 = !DILocation(line: 106, column: 3, scope: !3109)
!3127 = distinct !DISubprogram(name: "x2realloc", scope: !681, file: !681, line: 116, type: !3128, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{!91, !91, !687}
!3130 = !{!3131, !3132}
!3131 = !DILocalVariable(name: "p", arg: 1, scope: !3127, file: !681, line: 116, type: !91)
!3132 = !DILocalVariable(name: "ps", arg: 2, scope: !3127, file: !681, line: 116, type: !687)
!3133 = !DILocation(line: 0, scope: !3127)
!3134 = !DILocation(line: 0, scope: !684, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 118, column: 10, scope: !3127)
!3136 = !DILocation(line: 178, column: 14, scope: !684, inlinedAt: !3135)
!3137 = !DILocation(line: 180, column: 9, scope: !3138, inlinedAt: !3135)
!3138 = distinct !DILexicalBlock(scope: !684, file: !681, line: 180, column: 7)
!3139 = !DILocation(line: 180, column: 7, scope: !684, inlinedAt: !3135)
!3140 = !DILocation(line: 182, column: 13, scope: !3141, inlinedAt: !3135)
!3141 = distinct !DILexicalBlock(scope: !3142, file: !681, line: 182, column: 11)
!3142 = distinct !DILexicalBlock(scope: !3138, file: !681, line: 181, column: 5)
!3143 = !DILocation(line: 182, column: 11, scope: !3142, inlinedAt: !3135)
!3144 = !DILocation(line: 197, column: 11, scope: !3145, inlinedAt: !3135)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !681, line: 197, column: 11)
!3146 = distinct !DILexicalBlock(scope: !3138, file: !681, line: 195, column: 5)
!3147 = !DILocation(line: 197, column: 11, scope: !3146, inlinedAt: !3135)
!3148 = !DILocation(line: 198, column: 9, scope: !3145, inlinedAt: !3135)
!3149 = !DILocation(line: 0, scope: !2950, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 201, column: 7, scope: !684, inlinedAt: !3135)
!3151 = !DILocation(line: 85, column: 25, scope: !2950, inlinedAt: !3150)
!3152 = !DILocation(line: 0, scope: !2958, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 85, column: 10, scope: !2950, inlinedAt: !3150)
!3154 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3153)
!3155 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3153)
!3156 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3153)
!3157 = !DILocation(line: 202, column: 7, scope: !684, inlinedAt: !3135)
!3158 = !DILocation(line: 118, column: 3, scope: !3127)
!3159 = !DILocation(line: 0, scope: !684)
!3160 = !DILocation(line: 178, column: 14, scope: !684)
!3161 = !DILocation(line: 180, column: 9, scope: !3138)
!3162 = !DILocation(line: 180, column: 7, scope: !684)
!3163 = !DILocation(line: 182, column: 13, scope: !3141)
!3164 = !DILocation(line: 182, column: 11, scope: !3142)
!3165 = !DILocation(line: 190, column: 30, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3141, file: !681, line: 183, column: 9)
!3167 = !DILocation(line: 191, column: 16, scope: !3166)
!3168 = !DILocation(line: 191, column: 13, scope: !3166)
!3169 = !DILocation(line: 192, column: 9, scope: !3166)
!3170 = !DILocation(line: 197, column: 11, scope: !3145)
!3171 = !DILocation(line: 197, column: 11, scope: !3146)
!3172 = !DILocation(line: 198, column: 9, scope: !3145)
!3173 = !DILocation(line: 0, scope: !2950, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 201, column: 7, scope: !684)
!3175 = !DILocation(line: 85, column: 25, scope: !2950, inlinedAt: !3174)
!3176 = !DILocation(line: 0, scope: !2958, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 85, column: 10, scope: !2950, inlinedAt: !3174)
!3178 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3177)
!3179 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3177)
!3180 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3177)
!3181 = !DILocation(line: 202, column: 7, scope: !684)
!3182 = !DILocation(line: 203, column: 3, scope: !684)
!3183 = !DILocation(line: 0, scope: !696)
!3184 = !DILocation(line: 230, column: 14, scope: !696)
!3185 = !DILocation(line: 238, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !696, file: !681, line: 238, column: 7)
!3187 = !DILocation(line: 238, column: 7, scope: !696)
!3188 = !DILocation(line: 240, column: 9, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !696, file: !681, line: 240, column: 7)
!3190 = !DILocation(line: 240, column: 18, scope: !3189)
!3191 = !DILocation(line: 253, column: 8, scope: !696)
!3192 = !DILocation(line: 256, column: 7, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !696, file: !681, line: 256, column: 7)
!3194 = !DILocation(line: 256, column: 7, scope: !696)
!3195 = !DILocation(line: 258, column: 27, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !681, line: 257, column: 5)
!3197 = !DILocation(line: 259, column: 32, scope: !3196)
!3198 = !DILocation(line: 260, column: 5, scope: !3196)
!3199 = !DILocation(line: 262, column: 9, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !696, file: !681, line: 262, column: 7)
!3201 = !DILocation(line: 262, column: 7, scope: !696)
!3202 = !DILocation(line: 263, column: 9, scope: !3200)
!3203 = !DILocation(line: 263, column: 5, scope: !3200)
!3204 = !DILocation(line: 264, column: 9, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !696, file: !681, line: 264, column: 7)
!3206 = !DILocation(line: 264, column: 14, scope: !3205)
!3207 = !DILocation(line: 265, column: 7, scope: !3205)
!3208 = !DILocation(line: 265, column: 11, scope: !3205)
!3209 = !DILocation(line: 266, column: 11, scope: !3205)
!3210 = !DILocation(line: 267, column: 14, scope: !3205)
!3211 = !DILocation(line: 264, column: 7, scope: !696)
!3212 = !DILocation(line: 268, column: 5, scope: !3205)
!3213 = !DILocation(line: 0, scope: !3025, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 269, column: 8, scope: !696)
!3215 = !DILocation(line: 0, scope: !3033, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 70, column: 25, scope: !3025, inlinedAt: !3214)
!3217 = !DILocation(line: 2059, column: 24, scope: !3033, inlinedAt: !3216)
!3218 = !DILocation(line: 2059, column: 10, scope: !3033, inlinedAt: !3216)
!3219 = !DILocation(line: 0, scope: !2958, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 70, column: 10, scope: !3025, inlinedAt: !3214)
!3221 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3220)
!3222 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3220)
!3223 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3220)
!3224 = !DILocation(line: 270, column: 7, scope: !696)
!3225 = !DILocation(line: 271, column: 3, scope: !696)
!3226 = distinct !DISubprogram(name: "xzalloc", scope: !681, file: !681, line: 279, type: !2978, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3227)
!3227 = !{!3228}
!3228 = !DILocalVariable(name: "s", arg: 1, scope: !3226, file: !681, line: 279, type: !94)
!3229 = !DILocation(line: 0, scope: !3226)
!3230 = !DILocalVariable(name: "n", arg: 1, scope: !3231, file: !681, line: 294, type: !94)
!3231 = distinct !DISubprogram(name: "xcalloc", scope: !681, file: !681, line: 294, type: !3094, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3232)
!3232 = !{!3230, !3233}
!3233 = !DILocalVariable(name: "s", arg: 2, scope: !3231, file: !681, line: 294, type: !94)
!3234 = !DILocation(line: 0, scope: !3231, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 281, column: 10, scope: !3226)
!3236 = !DILocation(line: 296, column: 25, scope: !3231, inlinedAt: !3235)
!3237 = !DILocation(line: 0, scope: !2958, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 296, column: 10, scope: !3231, inlinedAt: !3235)
!3239 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3238)
!3240 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3238)
!3241 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3238)
!3242 = !DILocation(line: 281, column: 3, scope: !3226)
!3243 = !DISubprogram(name: "calloc", scope: !934, file: !934, line: 543, type: !3094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3244 = !DILocation(line: 0, scope: !3231)
!3245 = !DILocation(line: 296, column: 25, scope: !3231)
!3246 = !DILocation(line: 0, scope: !2958, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 296, column: 10, scope: !3231)
!3248 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3247)
!3249 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3247)
!3250 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3247)
!3251 = !DILocation(line: 296, column: 3, scope: !3231)
!3252 = distinct !DISubprogram(name: "xizalloc", scope: !681, file: !681, line: 285, type: !2992, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3253)
!3253 = !{!3254}
!3254 = !DILocalVariable(name: "s", arg: 1, scope: !3252, file: !681, line: 285, type: !700)
!3255 = !DILocation(line: 0, scope: !3252)
!3256 = !DILocalVariable(name: "n", arg: 1, scope: !3257, file: !681, line: 300, type: !700)
!3257 = distinct !DISubprogram(name: "xicalloc", scope: !681, file: !681, line: 300, type: !3110, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3258)
!3258 = !{!3256, !3259}
!3259 = !DILocalVariable(name: "s", arg: 2, scope: !3257, file: !681, line: 300, type: !700)
!3260 = !DILocation(line: 0, scope: !3257, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 287, column: 10, scope: !3252)
!3262 = !DILocalVariable(name: "n", arg: 1, scope: !3263, file: !2999, line: 77, type: !700)
!3263 = distinct !DISubprogram(name: "icalloc", scope: !2999, file: !2999, line: 77, type: !3110, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3264)
!3264 = !{!3262, !3265}
!3265 = !DILocalVariable(name: "s", arg: 2, scope: !3263, file: !2999, line: 77, type: !700)
!3266 = !DILocation(line: 0, scope: !3263, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 302, column: 25, scope: !3257, inlinedAt: !3261)
!3268 = !DILocation(line: 91, column: 10, scope: !3263, inlinedAt: !3267)
!3269 = !DILocation(line: 0, scope: !2958, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 302, column: 10, scope: !3257, inlinedAt: !3261)
!3271 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3270)
!3272 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3270)
!3273 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3270)
!3274 = !DILocation(line: 287, column: 3, scope: !3252)
!3275 = !DILocation(line: 0, scope: !3257)
!3276 = !DILocation(line: 0, scope: !3263, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 302, column: 25, scope: !3257)
!3278 = !DILocation(line: 91, column: 10, scope: !3263, inlinedAt: !3277)
!3279 = !DILocation(line: 0, scope: !2958, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 302, column: 10, scope: !3257)
!3281 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3280)
!3282 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3280)
!3283 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3280)
!3284 = !DILocation(line: 302, column: 3, scope: !3257)
!3285 = distinct !DISubprogram(name: "xmemdup", scope: !681, file: !681, line: 310, type: !3286, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3288)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!91, !958, !94}
!3288 = !{!3289, !3290}
!3289 = !DILocalVariable(name: "p", arg: 1, scope: !3285, file: !681, line: 310, type: !958)
!3290 = !DILocalVariable(name: "s", arg: 2, scope: !3285, file: !681, line: 310, type: !94)
!3291 = !DILocation(line: 0, scope: !3285)
!3292 = !DILocation(line: 0, scope: !2977, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 312, column: 18, scope: !3285)
!3294 = !DILocation(line: 49, column: 25, scope: !2977, inlinedAt: !3293)
!3295 = !DILocation(line: 0, scope: !2958, inlinedAt: !3296)
!3296 = distinct !DILocation(line: 49, column: 10, scope: !2977, inlinedAt: !3293)
!3297 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3296)
!3298 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3296)
!3299 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3296)
!3300 = !DILocalVariable(name: "__dest", arg: 1, scope: !3301, file: !1432, line: 26, type: !3304)
!3301 = distinct !DISubprogram(name: "memcpy", scope: !1432, file: !1432, line: 26, type: !3302, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3305)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!91, !3304, !957, !94}
!3304 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!3305 = !{!3300, !3306, !3307}
!3306 = !DILocalVariable(name: "__src", arg: 2, scope: !3301, file: !1432, line: 26, type: !957)
!3307 = !DILocalVariable(name: "__len", arg: 3, scope: !3301, file: !1432, line: 26, type: !94)
!3308 = !DILocation(line: 0, scope: !3301, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 312, column: 10, scope: !3285)
!3310 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3309)
!3311 = !DILocation(line: 312, column: 3, scope: !3285)
!3312 = distinct !DISubprogram(name: "ximemdup", scope: !681, file: !681, line: 316, type: !3313, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3315)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!91, !958, !700}
!3315 = !{!3316, !3317}
!3316 = !DILocalVariable(name: "p", arg: 1, scope: !3312, file: !681, line: 316, type: !958)
!3317 = !DILocalVariable(name: "s", arg: 2, scope: !3312, file: !681, line: 316, type: !700)
!3318 = !DILocation(line: 0, scope: !3312)
!3319 = !DILocation(line: 0, scope: !2991, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 318, column: 18, scope: !3312)
!3321 = !DILocation(line: 0, scope: !2998, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 55, column: 25, scope: !2991, inlinedAt: !3320)
!3323 = !DILocation(line: 57, column: 26, scope: !2998, inlinedAt: !3322)
!3324 = !DILocation(line: 0, scope: !2958, inlinedAt: !3325)
!3325 = distinct !DILocation(line: 55, column: 10, scope: !2991, inlinedAt: !3320)
!3326 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3325)
!3327 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3325)
!3328 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3325)
!3329 = !DILocation(line: 0, scope: !3301, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 318, column: 10, scope: !3312)
!3331 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3330)
!3332 = !DILocation(line: 318, column: 3, scope: !3312)
!3333 = distinct !DISubprogram(name: "ximemdup0", scope: !681, file: !681, line: 325, type: !3334, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3336)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!239, !958, !700}
!3336 = !{!3337, !3338, !3339}
!3337 = !DILocalVariable(name: "p", arg: 1, scope: !3333, file: !681, line: 325, type: !958)
!3338 = !DILocalVariable(name: "s", arg: 2, scope: !3333, file: !681, line: 325, type: !700)
!3339 = !DILocalVariable(name: "result", scope: !3333, file: !681, line: 327, type: !239)
!3340 = !DILocation(line: 0, scope: !3333)
!3341 = !DILocation(line: 327, column: 30, scope: !3333)
!3342 = !DILocation(line: 0, scope: !2991, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 327, column: 18, scope: !3333)
!3344 = !DILocation(line: 0, scope: !2998, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 55, column: 25, scope: !2991, inlinedAt: !3343)
!3346 = !DILocation(line: 57, column: 26, scope: !2998, inlinedAt: !3345)
!3347 = !DILocation(line: 0, scope: !2958, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 55, column: 10, scope: !2991, inlinedAt: !3343)
!3349 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3348)
!3350 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3348)
!3351 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3348)
!3352 = !DILocation(line: 328, column: 3, scope: !3333)
!3353 = !DILocation(line: 328, column: 13, scope: !3333)
!3354 = !DILocation(line: 0, scope: !3301, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 329, column: 10, scope: !3333)
!3356 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3355)
!3357 = !DILocation(line: 329, column: 3, scope: !3333)
!3358 = distinct !DISubprogram(name: "xstrdup", scope: !681, file: !681, line: 335, type: !936, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3359)
!3359 = !{!3360}
!3360 = !DILocalVariable(name: "string", arg: 1, scope: !3358, file: !681, line: 335, type: !70)
!3361 = !DILocation(line: 0, scope: !3358)
!3362 = !DILocation(line: 337, column: 27, scope: !3358)
!3363 = !DILocation(line: 337, column: 43, scope: !3358)
!3364 = !DILocation(line: 0, scope: !3285, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 337, column: 10, scope: !3358)
!3366 = !DILocation(line: 0, scope: !2977, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 312, column: 18, scope: !3285, inlinedAt: !3365)
!3368 = !DILocation(line: 49, column: 25, scope: !2977, inlinedAt: !3367)
!3369 = !DILocation(line: 0, scope: !2958, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 49, column: 10, scope: !2977, inlinedAt: !3367)
!3371 = !DILocation(line: 39, column: 8, scope: !2965, inlinedAt: !3370)
!3372 = !DILocation(line: 39, column: 7, scope: !2958, inlinedAt: !3370)
!3373 = !DILocation(line: 40, column: 5, scope: !2965, inlinedAt: !3370)
!3374 = !DILocation(line: 0, scope: !3301, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 312, column: 10, scope: !3285, inlinedAt: !3365)
!3376 = !DILocation(line: 29, column: 10, scope: !3301, inlinedAt: !3375)
!3377 = !DILocation(line: 337, column: 3, scope: !3358)
!3378 = distinct !DISubprogram(name: "xalloc_die", scope: !644, file: !644, line: 32, type: !363, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3379)
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "__errstatus", scope: !3381, file: !644, line: 34, type: !3382)
!3381 = distinct !DILexicalBlock(scope: !3378, file: !644, line: 34, column: 3)
!3382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!3383 = !DILocation(line: 34, column: 3, scope: !3381)
!3384 = !DILocation(line: 0, scope: !3381)
!3385 = !DILocation(line: 40, column: 3, scope: !3378)
!3386 = distinct !DISubprogram(name: "close_stream", scope: !718, file: !718, line: 55, type: !3387, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3423)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!92, !3389}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3391)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3392)
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3391, file: !235, line: 51, baseType: !92, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3391, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3391, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3391, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3391, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3391, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3391, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3391, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3391, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3391, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3391, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3391, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3391, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3391, file: !235, line: 70, baseType: !3407, size: 64, offset: 832)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3391, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3391, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3391, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3391, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3391, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3391, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3391, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3391, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3391, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3391, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3391, file: !235, line: 93, baseType: !3407, size: 64, offset: 1344)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3391, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3391, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3391, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3391, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3423 = !{!3424, !3425, !3427, !3428}
!3424 = !DILocalVariable(name: "stream", arg: 1, scope: !3386, file: !718, line: 55, type: !3389)
!3425 = !DILocalVariable(name: "some_pending", scope: !3386, file: !718, line: 57, type: !3426)
!3426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!3427 = !DILocalVariable(name: "prev_fail", scope: !3386, file: !718, line: 58, type: !3426)
!3428 = !DILocalVariable(name: "fclose_fail", scope: !3386, file: !718, line: 59, type: !3426)
!3429 = !DILocation(line: 0, scope: !3386)
!3430 = !DILocation(line: 57, column: 30, scope: !3386)
!3431 = !DILocalVariable(name: "__stream", arg: 1, scope: !3432, file: !1182, line: 135, type: !3389)
!3432 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1182, file: !1182, line: 135, type: !3387, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3433)
!3433 = !{!3431}
!3434 = !DILocation(line: 0, scope: !3432, inlinedAt: !3435)
!3435 = distinct !DILocation(line: 58, column: 27, scope: !3386)
!3436 = !DILocation(line: 137, column: 10, scope: !3432, inlinedAt: !3435)
!3437 = !{!1191, !814, i64 0}
!3438 = !DILocation(line: 58, column: 43, scope: !3386)
!3439 = !DILocation(line: 59, column: 29, scope: !3386)
!3440 = !DILocation(line: 59, column: 45, scope: !3386)
!3441 = !DILocation(line: 69, column: 17, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3386, file: !718, line: 69, column: 7)
!3443 = !DILocation(line: 57, column: 50, scope: !3386)
!3444 = !DILocation(line: 69, column: 33, scope: !3442)
!3445 = !DILocation(line: 69, column: 53, scope: !3442)
!3446 = !DILocation(line: 69, column: 59, scope: !3442)
!3447 = !DILocation(line: 69, column: 7, scope: !3386)
!3448 = !DILocation(line: 71, column: 11, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3442, file: !718, line: 70, column: 5)
!3450 = !DILocation(line: 72, column: 9, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3449, file: !718, line: 71, column: 11)
!3452 = !DILocation(line: 72, column: 15, scope: !3451)
!3453 = !DILocation(line: 77, column: 1, scope: !3386)
!3454 = !DISubprogram(name: "__fpending", scope: !3455, file: !3455, line: 75, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3455 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!94, !3389}
!3458 = distinct !DISubprogram(name: "rpl_fclose", scope: !720, file: !720, line: 58, type: !3459, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3495)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!92, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3463, file: !235, line: 51, baseType: !92, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3463, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3463, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3463, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3463, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3463, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3463, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3463, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3463, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3463, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3463, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3463, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3463, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3463, file: !235, line: 70, baseType: !3479, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3463, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3463, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3463, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3463, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3463, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3463, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3463, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3463, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3463, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3463, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3463, file: !235, line: 93, baseType: !3479, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3463, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3463, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3463, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3463, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DILocalVariable(name: "fp", arg: 1, scope: !3458, file: !720, line: 58, type: !3461)
!3497 = !DILocalVariable(name: "saved_errno", scope: !3458, file: !720, line: 60, type: !92)
!3498 = !DILocalVariable(name: "fd", scope: !3458, file: !720, line: 63, type: !92)
!3499 = !DILocalVariable(name: "result", scope: !3458, file: !720, line: 74, type: !92)
!3500 = !DILocation(line: 0, scope: !3458)
!3501 = !DILocation(line: 63, column: 12, scope: !3458)
!3502 = !DILocation(line: 64, column: 10, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3458, file: !720, line: 64, column: 7)
!3504 = !DILocation(line: 64, column: 7, scope: !3458)
!3505 = !DILocation(line: 65, column: 12, scope: !3503)
!3506 = !DILocation(line: 65, column: 5, scope: !3503)
!3507 = !DILocation(line: 70, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3458, file: !720, line: 70, column: 7)
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
!3520 = distinct !DILexicalBlock(scope: !3458, file: !720, line: 105, column: 7)
!3521 = !DILocation(line: 107, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3520, file: !720, line: 106, column: 5)
!3523 = !DILocation(line: 109, column: 5, scope: !3522)
!3524 = !DILocation(line: 112, column: 1, scope: !3458)
!3525 = !DISubprogram(name: "fileno", scope: !323, file: !323, line: 809, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3526 = !DISubprogram(name: "fclose", scope: !323, file: !323, line: 178, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3527 = !DISubprogram(name: "__freading", scope: !3455, file: !3455, line: 51, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3528 = !DISubprogram(name: "lseek", scope: !1000, file: !1000, line: 339, type: !3529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!258, !92, !258, !92}
!3531 = distinct !DISubprogram(name: "rpl_fflush", scope: !722, file: !722, line: 130, type: !3532, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3568)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!92, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3536)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3537)
!3537 = !{!3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3536, file: !235, line: 51, baseType: !92, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3536, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3536, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3536, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3536, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3536, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3536, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3536, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3536, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3536, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3536, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3536, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3536, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3536, file: !235, line: 70, baseType: !3552, size: 64, offset: 832)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3536, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3536, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3536, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3536, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3536, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3536, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3536, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3536, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3536, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3536, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3536, file: !235, line: 93, baseType: !3552, size: 64, offset: 1344)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3536, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3536, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3536, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3536, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "stream", arg: 1, scope: !3531, file: !722, line: 130, type: !3534)
!3570 = !DILocation(line: 0, scope: !3531)
!3571 = !DILocation(line: 151, column: 14, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3531, file: !722, line: 151, column: 7)
!3573 = !DILocation(line: 151, column: 22, scope: !3572)
!3574 = !DILocation(line: 151, column: 27, scope: !3572)
!3575 = !DILocation(line: 151, column: 7, scope: !3531)
!3576 = !DILocation(line: 152, column: 12, scope: !3572)
!3577 = !DILocation(line: 152, column: 5, scope: !3572)
!3578 = !DILocalVariable(name: "fp", arg: 1, scope: !3579, file: !722, line: 42, type: !3534)
!3579 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !722, file: !722, line: 42, type: !3580, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{null, !3534}
!3582 = !{!3578}
!3583 = !DILocation(line: 0, scope: !3579, inlinedAt: !3584)
!3584 = distinct !DILocation(line: 157, column: 3, scope: !3531)
!3585 = !DILocation(line: 44, column: 12, scope: !3586, inlinedAt: !3584)
!3586 = distinct !DILexicalBlock(scope: !3579, file: !722, line: 44, column: 7)
!3587 = !DILocation(line: 44, column: 19, scope: !3586, inlinedAt: !3584)
!3588 = !DILocation(line: 44, column: 7, scope: !3579, inlinedAt: !3584)
!3589 = !DILocation(line: 46, column: 5, scope: !3586, inlinedAt: !3584)
!3590 = !DILocation(line: 159, column: 10, scope: !3531)
!3591 = !DILocation(line: 159, column: 3, scope: !3531)
!3592 = !DILocation(line: 236, column: 1, scope: !3531)
!3593 = !DISubprogram(name: "fflush", scope: !323, file: !323, line: 230, type: !3532, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3594 = distinct !DISubprogram(name: "rpl_fseeko", scope: !724, file: !724, line: 28, type: !3595, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3632)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!92, !3597, !3631, !92}
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !233, line: 7, baseType: !3599)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !235, line: 49, size: 1728, elements: !3600)
!3600 = !{!3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3599, file: !235, line: 51, baseType: !92, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3599, file: !235, line: 54, baseType: !239, size: 64, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3599, file: !235, line: 55, baseType: !239, size: 64, offset: 128)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3599, file: !235, line: 56, baseType: !239, size: 64, offset: 192)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3599, file: !235, line: 57, baseType: !239, size: 64, offset: 256)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3599, file: !235, line: 58, baseType: !239, size: 64, offset: 320)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3599, file: !235, line: 59, baseType: !239, size: 64, offset: 384)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3599, file: !235, line: 60, baseType: !239, size: 64, offset: 448)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3599, file: !235, line: 61, baseType: !239, size: 64, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3599, file: !235, line: 64, baseType: !239, size: 64, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3599, file: !235, line: 65, baseType: !239, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3599, file: !235, line: 66, baseType: !239, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3599, file: !235, line: 68, baseType: !251, size: 64, offset: 768)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3599, file: !235, line: 70, baseType: !3615, size: 64, offset: 832)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3599, file: !235, line: 72, baseType: !92, size: 32, offset: 896)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3599, file: !235, line: 73, baseType: !92, size: 32, offset: 928)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3599, file: !235, line: 74, baseType: !258, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3599, file: !235, line: 77, baseType: !93, size: 16, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3599, file: !235, line: 78, baseType: !263, size: 8, offset: 1040)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3599, file: !235, line: 79, baseType: !34, size: 8, offset: 1048)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3599, file: !235, line: 81, baseType: !266, size: 64, offset: 1088)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3599, file: !235, line: 89, baseType: !269, size: 64, offset: 1152)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3599, file: !235, line: 91, baseType: !271, size: 64, offset: 1216)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3599, file: !235, line: 92, baseType: !274, size: 64, offset: 1280)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3599, file: !235, line: 93, baseType: !3615, size: 64, offset: 1344)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3599, file: !235, line: 94, baseType: !91, size: 64, offset: 1408)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3599, file: !235, line: 95, baseType: !94, size: 64, offset: 1472)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3599, file: !235, line: 96, baseType: !92, size: 32, offset: 1536)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3599, file: !235, line: 98, baseType: !9, size: 160, offset: 1568)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !323, line: 63, baseType: !258)
!3632 = !{!3633, !3634, !3635, !3636}
!3633 = !DILocalVariable(name: "fp", arg: 1, scope: !3594, file: !724, line: 28, type: !3597)
!3634 = !DILocalVariable(name: "offset", arg: 2, scope: !3594, file: !724, line: 28, type: !3631)
!3635 = !DILocalVariable(name: "whence", arg: 3, scope: !3594, file: !724, line: 28, type: !92)
!3636 = !DILocalVariable(name: "pos", scope: !3637, file: !724, line: 123, type: !3631)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !724, line: 119, column: 5)
!3638 = distinct !DILexicalBlock(scope: !3594, file: !724, line: 55, column: 7)
!3639 = !DILocation(line: 0, scope: !3594)
!3640 = !DILocation(line: 55, column: 12, scope: !3638)
!3641 = !{!1191, !754, i64 16}
!3642 = !DILocation(line: 55, column: 33, scope: !3638)
!3643 = !{!1191, !754, i64 8}
!3644 = !DILocation(line: 55, column: 25, scope: !3638)
!3645 = !DILocation(line: 56, column: 7, scope: !3638)
!3646 = !DILocation(line: 56, column: 15, scope: !3638)
!3647 = !DILocation(line: 56, column: 37, scope: !3638)
!3648 = !{!1191, !754, i64 32}
!3649 = !DILocation(line: 56, column: 29, scope: !3638)
!3650 = !DILocation(line: 57, column: 7, scope: !3638)
!3651 = !DILocation(line: 57, column: 15, scope: !3638)
!3652 = !{!1191, !754, i64 72}
!3653 = !DILocation(line: 57, column: 29, scope: !3638)
!3654 = !DILocation(line: 55, column: 7, scope: !3594)
!3655 = !DILocation(line: 123, column: 26, scope: !3637)
!3656 = !DILocation(line: 123, column: 19, scope: !3637)
!3657 = !DILocation(line: 0, scope: !3637)
!3658 = !DILocation(line: 124, column: 15, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3637, file: !724, line: 124, column: 11)
!3660 = !DILocation(line: 124, column: 11, scope: !3637)
!3661 = !DILocation(line: 135, column: 19, scope: !3637)
!3662 = !DILocation(line: 136, column: 12, scope: !3637)
!3663 = !DILocation(line: 136, column: 20, scope: !3637)
!3664 = !{!1191, !1192, i64 144}
!3665 = !DILocation(line: 167, column: 7, scope: !3637)
!3666 = !DILocation(line: 169, column: 10, scope: !3594)
!3667 = !DILocation(line: 169, column: 3, scope: !3594)
!3668 = !DILocation(line: 170, column: 1, scope: !3594)
!3669 = !DISubprogram(name: "fseeko", scope: !323, file: !323, line: 736, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!92, !3597, !258, !92}
!3672 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !651, file: !651, line: 100, type: !3673, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3676)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!94, !1450, !70, !94, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3676 = !{!3677, !3678, !3679, !3680, !3681}
!3677 = !DILocalVariable(name: "pwc", arg: 1, scope: !3672, file: !651, line: 100, type: !1450)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3672, file: !651, line: 100, type: !70)
!3679 = !DILocalVariable(name: "n", arg: 3, scope: !3672, file: !651, line: 100, type: !94)
!3680 = !DILocalVariable(name: "ps", arg: 4, scope: !3672, file: !651, line: 100, type: !3675)
!3681 = !DILocalVariable(name: "ret", scope: !3672, file: !651, line: 130, type: !94)
!3682 = !DILocation(line: 0, scope: !3672)
!3683 = !DILocation(line: 105, column: 9, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3672, file: !651, line: 105, column: 7)
!3685 = !DILocation(line: 105, column: 7, scope: !3672)
!3686 = !DILocation(line: 117, column: 10, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3672, file: !651, line: 117, column: 7)
!3688 = !DILocation(line: 117, column: 7, scope: !3672)
!3689 = !DILocation(line: 130, column: 16, scope: !3672)
!3690 = !DILocation(line: 135, column: 11, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3672, file: !651, line: 135, column: 7)
!3692 = !DILocation(line: 135, column: 25, scope: !3691)
!3693 = !DILocation(line: 135, column: 30, scope: !3691)
!3694 = !DILocation(line: 135, column: 7, scope: !3672)
!3695 = !DILocalVariable(name: "ps", arg: 1, scope: !3696, file: !1423, line: 1135, type: !3675)
!3696 = distinct !DISubprogram(name: "mbszero", scope: !1423, file: !1423, line: 1135, type: !3697, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3675}
!3699 = !{!3695}
!3700 = !DILocation(line: 0, scope: !3696, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 137, column: 5, scope: !3691)
!3702 = !DILocalVariable(name: "__dest", arg: 1, scope: !3703, file: !1432, line: 57, type: !91)
!3703 = distinct !DISubprogram(name: "memset", scope: !1432, file: !1432, line: 57, type: !1433, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !654, retainedNodes: !3704)
!3704 = !{!3702, !3705, !3706}
!3705 = !DILocalVariable(name: "__ch", arg: 2, scope: !3703, file: !1432, line: 57, type: !92)
!3706 = !DILocalVariable(name: "__len", arg: 3, scope: !3703, file: !1432, line: 57, type: !94)
!3707 = !DILocation(line: 0, scope: !3703, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1137, column: 3, scope: !3696, inlinedAt: !3701)
!3709 = !DILocation(line: 59, column: 10, scope: !3703, inlinedAt: !3708)
!3710 = !DILocation(line: 137, column: 5, scope: !3691)
!3711 = !DILocation(line: 138, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3672, file: !651, line: 138, column: 7)
!3713 = !DILocation(line: 138, column: 7, scope: !3672)
!3714 = !DILocation(line: 139, column: 5, scope: !3712)
!3715 = !DILocation(line: 143, column: 26, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3672, file: !651, line: 143, column: 7)
!3717 = !DILocation(line: 143, column: 41, scope: !3716)
!3718 = !DILocation(line: 143, column: 7, scope: !3672)
!3719 = !DILocation(line: 145, column: 15, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !651, line: 145, column: 11)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !651, line: 144, column: 5)
!3722 = !DILocation(line: 145, column: 11, scope: !3721)
!3723 = !DILocation(line: 146, column: 32, scope: !3720)
!3724 = !DILocation(line: 146, column: 16, scope: !3720)
!3725 = !DILocation(line: 146, column: 14, scope: !3720)
!3726 = !DILocation(line: 146, column: 9, scope: !3720)
!3727 = !DILocation(line: 286, column: 1, scope: !3672)
!3728 = !DISubprogram(name: "mbsinit", scope: !3729, file: !3729, line: 293, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3729 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!92, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!3734 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !726, file: !726, line: 27, type: !2942, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3735)
!3735 = !{!3736, !3737, !3738, !3739}
!3736 = !DILocalVariable(name: "ptr", arg: 1, scope: !3734, file: !726, line: 27, type: !91)
!3737 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3734, file: !726, line: 27, type: !94)
!3738 = !DILocalVariable(name: "size", arg: 3, scope: !3734, file: !726, line: 27, type: !94)
!3739 = !DILocalVariable(name: "nbytes", scope: !3734, file: !726, line: 29, type: !94)
!3740 = !DILocation(line: 0, scope: !3734)
!3741 = !DILocation(line: 30, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3734, file: !726, line: 30, column: 7)
!3743 = !DILocation(line: 30, column: 7, scope: !3734)
!3744 = !DILocation(line: 32, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !726, line: 31, column: 5)
!3746 = !DILocation(line: 32, column: 13, scope: !3745)
!3747 = !DILocation(line: 33, column: 7, scope: !3745)
!3748 = !DILocalVariable(name: "ptr", arg: 1, scope: !3749, file: !3034, line: 2057, type: !91)
!3749 = distinct !DISubprogram(name: "rpl_realloc", scope: !3034, file: !3034, line: 2057, type: !3026, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3750)
!3750 = !{!3748, !3751}
!3751 = !DILocalVariable(name: "size", arg: 2, scope: !3749, file: !3034, line: 2057, type: !94)
!3752 = !DILocation(line: 0, scope: !3749, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 37, column: 10, scope: !3734)
!3754 = !DILocation(line: 2059, column: 24, scope: !3749, inlinedAt: !3753)
!3755 = !DILocation(line: 2059, column: 10, scope: !3749, inlinedAt: !3753)
!3756 = !DILocation(line: 37, column: 3, scope: !3734)
!3757 = !DILocation(line: 38, column: 1, scope: !3734)
!3758 = distinct !DISubprogram(name: "hard_locale", scope: !669, file: !669, line: 28, type: !3759, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!218, !92}
!3761 = !{!3762, !3763}
!3762 = !DILocalVariable(name: "category", arg: 1, scope: !3758, file: !669, line: 28, type: !92)
!3763 = !DILocalVariable(name: "locale", scope: !3758, file: !669, line: 30, type: !3764)
!3764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3765)
!3765 = !{!3766}
!3766 = !DISubrange(count: 257)
!3767 = distinct !DIAssignID()
!3768 = !DILocation(line: 0, scope: !3758)
!3769 = !DILocation(line: 30, column: 3, scope: !3758)
!3770 = !DILocation(line: 32, column: 7, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3758, file: !669, line: 32, column: 7)
!3772 = !DILocation(line: 32, column: 7, scope: !3758)
!3773 = !DILocalVariable(name: "__s1", arg: 1, scope: !3774, file: !826, line: 1359, type: !70)
!3774 = distinct !DISubprogram(name: "streq", scope: !826, file: !826, line: 1359, type: !827, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3775)
!3775 = !{!3773, !3776}
!3776 = !DILocalVariable(name: "__s2", arg: 2, scope: !3774, file: !826, line: 1359, type: !70)
!3777 = !DILocation(line: 0, scope: !3774, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 35, column: 9, scope: !3779)
!3779 = distinct !DILexicalBlock(scope: !3758, file: !669, line: 35, column: 7)
!3780 = !DILocation(line: 1361, column: 11, scope: !3774, inlinedAt: !3778)
!3781 = !DILocation(line: 1361, column: 10, scope: !3774, inlinedAt: !3778)
!3782 = !DILocation(line: 35, column: 29, scope: !3779)
!3783 = !DILocation(line: 0, scope: !3774, inlinedAt: !3784)
!3784 = distinct !DILocation(line: 35, column: 32, scope: !3779)
!3785 = !DILocation(line: 1361, column: 11, scope: !3774, inlinedAt: !3784)
!3786 = !DILocation(line: 1361, column: 10, scope: !3774, inlinedAt: !3784)
!3787 = !DILocation(line: 35, column: 7, scope: !3758)
!3788 = !DILocation(line: 46, column: 3, scope: !3758)
!3789 = !DILocation(line: 47, column: 1, scope: !3758)
!3790 = distinct !DISubprogram(name: "setlocale_null_r", scope: !730, file: !730, line: 154, type: !3791, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3793)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!92, !92, !239, !94}
!3793 = !{!3794, !3795, !3796}
!3794 = !DILocalVariable(name: "category", arg: 1, scope: !3790, file: !730, line: 154, type: !92)
!3795 = !DILocalVariable(name: "buf", arg: 2, scope: !3790, file: !730, line: 154, type: !239)
!3796 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3790, file: !730, line: 154, type: !94)
!3797 = !DILocation(line: 0, scope: !3790)
!3798 = !DILocation(line: 159, column: 10, scope: !3790)
!3799 = !DILocation(line: 159, column: 3, scope: !3790)
!3800 = distinct !DISubprogram(name: "setlocale_null", scope: !730, file: !730, line: 186, type: !3801, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !729, retainedNodes: !3803)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!70, !92}
!3803 = !{!3804}
!3804 = !DILocalVariable(name: "category", arg: 1, scope: !3800, file: !730, line: 186, type: !92)
!3805 = !DILocation(line: 0, scope: !3800)
!3806 = !DILocation(line: 189, column: 10, scope: !3800)
!3807 = !DILocation(line: 189, column: 3, scope: !3800)
!3808 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !732, file: !732, line: 35, type: !3801, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3809)
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "category", arg: 1, scope: !3808, file: !732, line: 35, type: !92)
!3811 = !DILocalVariable(name: "result", scope: !3808, file: !732, line: 37, type: !70)
!3812 = !DILocation(line: 0, scope: !3808)
!3813 = !DILocation(line: 37, column: 24, scope: !3808)
!3814 = !DILocation(line: 62, column: 3, scope: !3808)
!3815 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !732, file: !732, line: 66, type: !3791, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3816)
!3816 = !{!3817, !3818, !3819, !3820, !3821}
!3817 = !DILocalVariable(name: "category", arg: 1, scope: !3815, file: !732, line: 66, type: !92)
!3818 = !DILocalVariable(name: "buf", arg: 2, scope: !3815, file: !732, line: 66, type: !239)
!3819 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3815, file: !732, line: 66, type: !94)
!3820 = !DILocalVariable(name: "result", scope: !3815, file: !732, line: 111, type: !70)
!3821 = !DILocalVariable(name: "length", scope: !3822, file: !732, line: 125, type: !94)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !732, line: 124, column: 5)
!3823 = distinct !DILexicalBlock(scope: !3815, file: !732, line: 113, column: 7)
!3824 = !DILocation(line: 0, scope: !3815)
!3825 = !DILocation(line: 0, scope: !3808, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 111, column: 24, scope: !3815)
!3827 = !DILocation(line: 37, column: 24, scope: !3808, inlinedAt: !3826)
!3828 = !DILocation(line: 113, column: 14, scope: !3823)
!3829 = !DILocation(line: 113, column: 7, scope: !3815)
!3830 = !DILocation(line: 116, column: 19, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !732, line: 116, column: 11)
!3832 = distinct !DILexicalBlock(scope: !3823, file: !732, line: 114, column: 5)
!3833 = !DILocation(line: 116, column: 11, scope: !3832)
!3834 = !DILocation(line: 120, column: 16, scope: !3831)
!3835 = !DILocation(line: 120, column: 9, scope: !3831)
!3836 = !DILocation(line: 125, column: 23, scope: !3822)
!3837 = !DILocation(line: 0, scope: !3822)
!3838 = !DILocation(line: 126, column: 18, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3822, file: !732, line: 126, column: 11)
!3840 = !DILocation(line: 126, column: 11, scope: !3822)
!3841 = !DILocation(line: 128, column: 39, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3839, file: !732, line: 127, column: 9)
!3843 = !DILocalVariable(name: "__dest", arg: 1, scope: !3844, file: !1432, line: 26, type: !3304)
!3844 = distinct !DISubprogram(name: "memcpy", scope: !1432, file: !1432, line: 26, type: !3302, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3845)
!3845 = !{!3843, !3846, !3847}
!3846 = !DILocalVariable(name: "__src", arg: 2, scope: !3844, file: !1432, line: 26, type: !957)
!3847 = !DILocalVariable(name: "__len", arg: 3, scope: !3844, file: !1432, line: 26, type: !94)
!3848 = !DILocation(line: 0, scope: !3844, inlinedAt: !3849)
!3849 = distinct !DILocation(line: 128, column: 11, scope: !3842)
!3850 = !DILocation(line: 29, column: 10, scope: !3844, inlinedAt: !3849)
!3851 = !DILocation(line: 129, column: 11, scope: !3842)
!3852 = !DILocation(line: 133, column: 23, scope: !3853)
!3853 = distinct !DILexicalBlock(scope: !3854, file: !732, line: 133, column: 15)
!3854 = distinct !DILexicalBlock(scope: !3839, file: !732, line: 132, column: 9)
!3855 = !DILocation(line: 133, column: 15, scope: !3854)
!3856 = !DILocation(line: 138, column: 44, scope: !3857)
!3857 = distinct !DILexicalBlock(scope: !3853, file: !732, line: 134, column: 13)
!3858 = !DILocation(line: 0, scope: !3844, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 138, column: 15, scope: !3857)
!3860 = !DILocation(line: 29, column: 10, scope: !3844, inlinedAt: !3859)
!3861 = !DILocation(line: 139, column: 15, scope: !3857)
!3862 = !DILocation(line: 139, column: 32, scope: !3857)
!3863 = !DILocation(line: 140, column: 13, scope: !3857)
!3864 = !DILocation(line: 0, scope: !3823)
!3865 = !DILocation(line: 145, column: 1, scope: !3815)
