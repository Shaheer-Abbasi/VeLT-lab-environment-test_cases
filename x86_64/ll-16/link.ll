; ModuleID = 'src/link.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !371
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !341
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !361
@.str.1.32 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !363
@.str.2.34 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !365
@.str.3.33 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !367
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !369
@.str.4.27 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !373
@.str.5.28 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !375
@.str.6.29 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !380
@opterr = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !385
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.43, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.44, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !388
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !484
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !498
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !536
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !543
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !500
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !545
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !488
@.str.10.68 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !505
@.str.11.66 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !507
@.str.12.69 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !509
@.str.13.67 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !511
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !513
@.str.76 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !551
@.str.1.77 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !554
@.str.2.78 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !556
@.str.3.79 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !558
@.str.4.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !560
@.str.5.81 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !562
@.str.6.82 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !567
@.str.7.83 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !572
@.str.8.84 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !574
@.str.9.85 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !579
@.str.10.86 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !581
@.str.11.87 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !586
@.str.12.88 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !591
@.str.13.89 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !593
@.str.14.90 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !598
@.str.15.91 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !603
@.str.16.92 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !608
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.97 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !613
@.str.18.98 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !615
@.str.19.99 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !617
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !619
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !621
@.str.22.100 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !623
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !625
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !630
@exit_failure = dso_local global i32 1, align 4, !dbg !638
@.str.113 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !644
@.str.1.111 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !647
@.str.2.112 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !649
@.str.124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !651
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !654
@.str.1.129 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !669

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !743 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !747, metadata !DIExpression()), !dbg !748
  %2 = icmp eq i32 %0, 0, !dbg !749
  br i1 %2, label %8, label %3, !dbg !751

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !752, !tbaa !754
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #36, !dbg !752
  %6 = load ptr, ptr @program_name, align 8, !dbg !752, !tbaa !754
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #36, !dbg !752
  br label %31, !dbg !752

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #36, !dbg !758
  %10 = load ptr, ptr @program_name, align 8, !dbg !758, !tbaa !754
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #36, !dbg !758
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #36, !dbg !760
  %13 = load ptr, ptr @stdout, align 8, !dbg !760, !tbaa !754
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !760
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #36, !dbg !761
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !761
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #36, !dbg !762
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !762
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !763, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !775, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr poison, metadata !775, metadata !DIExpression()), !dbg !780
  tail call void @emit_bug_reporting_address() #36, !dbg !782
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #36, !dbg !783
  call void @llvm.dbg.value(metadata ptr %17, metadata !778, metadata !DIExpression()), !dbg !780
  %18 = icmp eq ptr %17, null, !dbg !784
  br i1 %18, label %26, label %19, !dbg !786

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #37, !dbg !787
  %21 = icmp eq i32 %20, 0, !dbg !787
  br i1 %21, label %26, label %22, !dbg !788

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #36, !dbg !789
  %24 = load ptr, ptr @stdout, align 8, !dbg !789, !tbaa !754
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !789
  br label %26, !dbg !791

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !775, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !779, metadata !DIExpression()), !dbg !780
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #36, !dbg !792
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #36, !dbg !792
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #36, !dbg !793
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #36, !dbg !793
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #38, !dbg !794
  unreachable, !dbg !794
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !795 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !800 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !806 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !809 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !76 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !233, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata ptr %0, metadata !234, metadata !DIExpression()), !dbg !813
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !814, !tbaa !815
  %3 = icmp eq i32 %2, -1, !dbg !817
  br i1 %3, label %4, label %16, !dbg !818

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #36, !dbg !819
  call void @llvm.dbg.value(metadata ptr %5, metadata !235, metadata !DIExpression()), !dbg !820
  %6 = icmp eq ptr %5, null, !dbg !821
  br i1 %6, label %14, label %7, !dbg !822

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !823, !tbaa !824
  %9 = icmp eq i8 %8, 0, !dbg !823
  br i1 %9, label %14, label %10, !dbg !825

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !826, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !832, metadata !DIExpression()), !dbg !833
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #37, !dbg !835
  %12 = icmp eq i32 %11, 0, !dbg !836
  %13 = zext i1 %12 to i32, !dbg !825
  br label %14, !dbg !825

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !837, !tbaa !815
  br label %16, !dbg !838

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !839
  %18 = icmp eq i32 %17, 0, !dbg !839
  br i1 %18, label %22, label %19, !dbg !841

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !842, !tbaa !754
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !842
  br label %128, !dbg !844

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !238, metadata !DIExpression()), !dbg !813
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #37, !dbg !845
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !846
  call void @llvm.dbg.value(metadata ptr %24, metadata !240, metadata !DIExpression()), !dbg !813
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #37, !dbg !847
  call void @llvm.dbg.value(metadata ptr %25, metadata !241, metadata !DIExpression()), !dbg !813
  %26 = icmp eq ptr %25, null, !dbg !848
  br i1 %26, label %58, label %27, !dbg !849

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !850
  br i1 %28, label %58, label %29, !dbg !851

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !242, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !852
  %30 = icmp ult ptr %24, %25, !dbg !853
  br i1 %30, label %31, label %52, !dbg !854

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #39, !dbg !813
  %33 = load ptr, ptr %32, align 8, !tbaa !754
  br label %34, !dbg !854

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !242, metadata !DIExpression()), !dbg !852
  call void @llvm.dbg.value(metadata i64 %36, metadata !246, metadata !DIExpression()), !dbg !852
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !855
  call void @llvm.dbg.value(metadata ptr %37, metadata !242, metadata !DIExpression()), !dbg !852
  %38 = load i8, ptr %35, align 1, !dbg !855, !tbaa !824
  %39 = sext i8 %38 to i64, !dbg !855
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !855
  %41 = load i16, ptr %40, align 2, !dbg !855, !tbaa !856
  %42 = freeze i16 %41, !dbg !858
  %43 = lshr i16 %42, 13, !dbg !858
  %44 = and i16 %43, 1, !dbg !858
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !859
  call void @llvm.dbg.value(metadata i64 %46, metadata !246, metadata !DIExpression()), !dbg !852
  %47 = icmp ult ptr %37, %25, !dbg !853
  %48 = icmp ult i64 %46, 2, !dbg !860
  %49 = select i1 %47, i1 %48, i1 false, !dbg !860
  br i1 %49, label %34, label %50, !dbg !854, !llvm.loop !861

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !863
  br i1 %51, label %52, label %54, !dbg !865

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !865

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !865
  call void @llvm.dbg.value(metadata i8 %57, metadata !238, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata ptr %56, metadata !241, metadata !DIExpression()), !dbg !813
  br label %58, !dbg !866

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !813
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !813
  call void @llvm.dbg.value(metadata i8 %60, metadata !238, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata ptr %59, metadata !241, metadata !DIExpression()), !dbg !813
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.18) #37, !dbg !867
  call void @llvm.dbg.value(metadata i64 %61, metadata !247, metadata !DIExpression()), !dbg !813
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !868
  call void @llvm.dbg.value(metadata ptr %62, metadata !248, metadata !DIExpression()), !dbg !813
  br label %63, !dbg !869

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !813
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !813
  call void @llvm.dbg.value(metadata i8 %65, metadata !238, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata ptr %64, metadata !248, metadata !DIExpression()), !dbg !813
  %66 = load i8, ptr %64, align 1, !dbg !870, !tbaa !824
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !871

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !872
  %69 = load i8, ptr %68, align 1, !dbg !875, !tbaa !824
  %70 = icmp eq i8 %69, 45, !dbg !876
  %71 = select i1 %70, i8 0, i8 %65, !dbg !877
  br label %72, !dbg !877

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !813
  call void @llvm.dbg.value(metadata i8 %73, metadata !238, metadata !DIExpression()), !dbg !813
  %74 = tail call ptr @__ctype_b_loc() #39, !dbg !878
  %75 = load ptr, ptr %74, align 8, !dbg !878, !tbaa !754
  %76 = sext i8 %66 to i64, !dbg !878
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !878
  %78 = load i16, ptr %77, align 2, !dbg !878, !tbaa !856
  %79 = and i16 %78, 8192, !dbg !878
  %80 = icmp eq i16 %79, 0, !dbg !878
  br i1 %80, label %96, label %81, !dbg !880

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !881
  br i1 %82, label %98, label %83, !dbg !884

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !885
  %85 = load i8, ptr %84, align 1, !dbg !885, !tbaa !824
  %86 = sext i8 %85 to i64, !dbg !885
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !885
  %88 = load i16, ptr %87, align 2, !dbg !885, !tbaa !856
  %89 = and i16 %88, 8192, !dbg !885
  %90 = icmp eq i16 %89, 0, !dbg !885
  br i1 %90, label %91, label %98, !dbg !886

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !887
  %93 = icmp ne i8 %92, 0, !dbg !887
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !889
  br i1 %95, label %96, label %98, !dbg !889

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !890
  call void @llvm.dbg.value(metadata ptr %97, metadata !248, metadata !DIExpression()), !dbg !813
  br label %63, !dbg !869, !llvm.loop !891

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !893
  %100 = load ptr, ptr @stdout, align 8, !dbg !893, !tbaa !754
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !894
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !896
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !902
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !904
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !906
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !908
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !912
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !306, metadata !DIExpression()), !dbg !813
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #37, !dbg !914
  %103 = icmp eq i32 %102, 0, !dbg !914
  br i1 %103, label %107, label %104, !dbg !916

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #37, !dbg !917
  %106 = icmp eq i32 %105, 0, !dbg !917
  br i1 %106, label %107, label %110, !dbg !918

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !919
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #36, !dbg !919
  br label %113, !dbg !921

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !922
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #36, !dbg !922
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !754
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %114), !dbg !924
  %116 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !754
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %116), !dbg !925
  %118 = ptrtoint ptr %64 to i64, !dbg !926
  %119 = sub i64 %118, %99, !dbg !926
  %120 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !754
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !926
  %122 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !754
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %122), !dbg !927
  %124 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !754
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %124), !dbg !928
  %126 = load ptr, ptr @stdout, align 8, !dbg !929, !tbaa !754
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !929
  br label %128, !dbg !930

128:                                              ; preds = %113, %19
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !971, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata ptr %1, metadata !972, metadata !DIExpression()), !dbg !973
  %3 = load ptr, ptr %1, align 8, !dbg !974, !tbaa !754
  tail call void @set_program_name(ptr noundef %3) #36, !dbg !975
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #36, !dbg !976
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #36, !dbg !977
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #36, !dbg !978
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #36, !dbg !979
  %8 = load ptr, ptr @Version, align 8, !dbg !980, !tbaa !754
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #36, !dbg !981
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #36, !dbg !982
  %10 = load i32, ptr @optind, align 4, !dbg !983, !tbaa !815
  %11 = add nsw i32 %10, 2, !dbg !985
  %12 = icmp sgt i32 %11, %0, !dbg !986
  br i1 %12, label %13, label %25, !dbg !987

13:                                               ; preds = %2
  %14 = icmp slt i32 %10, %0, !dbg !988
  br i1 %14, label %17, label %15, !dbg !991

15:                                               ; preds = %13
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #36, !dbg !992
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %16) #36, !dbg !992
  br label %24, !dbg !992

17:                                               ; preds = %13
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #36, !dbg !993
  %19 = load i32, ptr @optind, align 4, !dbg !993, !tbaa !815
  %20 = sext i32 %19 to i64, !dbg !993
  %21 = getelementptr inbounds ptr, ptr %1, i64 %20, !dbg !993
  %22 = load ptr, ptr %21, align 8, !dbg !993, !tbaa !754
  %23 = tail call ptr @quote(ptr noundef %22) #36, !dbg !993
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %23) #36, !dbg !993
  br label %24

24:                                               ; preds = %17, %15
  tail call void @usage(i32 noundef 1) #40, !dbg !994
  unreachable, !dbg !994

25:                                               ; preds = %2
  %26 = icmp slt i32 %11, %0, !dbg !995
  br i1 %26, label %27, label %35, !dbg !997

27:                                               ; preds = %25
  %28 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #36, !dbg !998
  %29 = load i32, ptr @optind, align 4, !dbg !998, !tbaa !815
  %30 = add nsw i32 %29, 2, !dbg !998
  %31 = sext i32 %30 to i64, !dbg !998
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31, !dbg !998
  %33 = load ptr, ptr %32, align 8, !dbg !998, !tbaa !754
  %34 = tail call ptr @quote(ptr noundef %33) #36, !dbg !998
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %28, ptr noundef %34) #36, !dbg !998
  tail call void @usage(i32 noundef 1) #40, !dbg !1000
  unreachable, !dbg !1000

35:                                               ; preds = %25
  %36 = sext i32 %10 to i64, !dbg !1001
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1001
  %38 = load ptr, ptr %37, align 8, !dbg !1001, !tbaa !754
  %39 = add nsw i32 %10, 1, !dbg !1003
  %40 = sext i32 %39 to i64, !dbg !1004
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40, !dbg !1004
  %42 = load ptr, ptr %41, align 8, !dbg !1004, !tbaa !754
  %43 = tail call i32 @link(ptr noundef %38, ptr noundef %42) #36, !dbg !1005
  %44 = icmp eq i32 %43, 0, !dbg !1006
  br i1 %44, label %60, label %45, !dbg !1007

45:                                               ; preds = %35
  %46 = tail call ptr @__errno_location() #39, !dbg !1008
  %47 = load i32, ptr %46, align 4, !dbg !1008, !tbaa !815
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #36, !dbg !1008
  %49 = load i32, ptr @optind, align 4, !dbg !1008, !tbaa !815
  %50 = add nsw i32 %49, 1, !dbg !1008
  %51 = sext i32 %50 to i64, !dbg !1008
  %52 = getelementptr inbounds ptr, ptr %1, i64 %51, !dbg !1008
  %53 = load ptr, ptr %52, align 8, !dbg !1008, !tbaa !754
  %54 = tail call ptr @quotearg_n_style(i32 noundef 0, i32 noundef 4, ptr noundef %53) #36, !dbg !1008
  %55 = load i32, ptr @optind, align 4, !dbg !1008, !tbaa !815
  %56 = sext i32 %55 to i64, !dbg !1008
  %57 = getelementptr inbounds ptr, ptr %1, i64 %56, !dbg !1008
  %58 = load ptr, ptr %57, align 8, !dbg !1008, !tbaa !754
  %59 = tail call ptr @quotearg_n_style(i32 noundef 1, i32 noundef 4, ptr noundef %58) #36, !dbg !1008
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %47, ptr noundef %48, ptr noundef %54, ptr noundef %59) #36, !dbg !1008
  unreachable, !dbg !1008

60:                                               ; preds = %35
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
  call void @llvm.dbg.value(metadata ptr %0, metadata !1025, metadata !DIExpression()), !dbg !1026
  store ptr %0, ptr @file_name, align 8, !dbg !1027, !tbaa !754
  ret void, !dbg !1028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1029 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1033, metadata !DIExpression()), !dbg !1034
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1035, !tbaa !1036
  ret void, !dbg !1038
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1039 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1044, !tbaa !754
  %2 = tail call i32 @close_stream(ptr noundef %1) #36, !dbg !1045
  %3 = icmp eq i32 %2, 0, !dbg !1046
  br i1 %3, label %22, label %4, !dbg !1047

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1048, !tbaa !1036, !range !1049, !noundef !799
  %6 = icmp eq i8 %5, 0, !dbg !1048
  br i1 %6, label %11, label %7, !dbg !1050

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #39, !dbg !1051
  %9 = load i32, ptr %8, align 4, !dbg !1051, !tbaa !815
  %10 = icmp eq i32 %9, 32, !dbg !1052
  br i1 %10, label %22, label %11, !dbg !1053

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1.23, i32 noundef 5) #36, !dbg !1054
  call void @llvm.dbg.value(metadata ptr %12, metadata !1041, metadata !DIExpression()), !dbg !1055
  %13 = load ptr, ptr @file_name, align 8, !dbg !1056, !tbaa !754
  %14 = icmp eq ptr %13, null, !dbg !1056
  %15 = tail call ptr @__errno_location() #39, !dbg !1058
  %16 = load i32, ptr %15, align 4, !dbg !1058, !tbaa !815
  br i1 %14, label %19, label %17, !dbg !1059

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #36, !dbg !1060
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.24, ptr noundef %18, ptr noundef %12) #36, !dbg !1060
  br label %20, !dbg !1060

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.25, ptr noundef %12) #36, !dbg !1061
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1062, !tbaa !815
  tail call void @_exit(i32 noundef %21) #38, !dbg !1063
  unreachable, !dbg !1063

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1064, !tbaa !754
  %24 = tail call i32 @close_stream(ptr noundef %23) #36, !dbg !1066
  %25 = icmp eq i32 %24, 0, !dbg !1067
  br i1 %25, label %28, label %26, !dbg !1068

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1069, !tbaa !815
  tail call void @_exit(i32 noundef %27) #38, !dbg !1070
  unreachable, !dbg !1070

28:                                               ; preds = %22
  ret void, !dbg !1071
}

; Function Attrs: noreturn
declare !dbg !1072 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1073 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1077, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i32 %1, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %2, metadata !1079, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata ptr %3, metadata !1080, metadata !DIExpression()), !dbg !1081
  tail call fastcc void @flush_stdout(), !dbg !1082
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1083, !tbaa !754
  %6 = icmp eq ptr %5, null, !dbg !1083
  br i1 %6, label %8, label %7, !dbg !1085

7:                                                ; preds = %4
  tail call void %5() #36, !dbg !1086
  br label %12, !dbg !1086

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1087, !tbaa !754
  %10 = tail call ptr @getprogname() #37, !dbg !1087
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.26, ptr noundef %10) #36, !dbg !1087
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1091 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1093, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i32 1, metadata !1095, metadata !DIExpression()), !dbg !1100
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #36, !dbg !1103
  %2 = icmp slt i32 %1, 0, !dbg !1104
  br i1 %2, label %6, label %3, !dbg !1105

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1106, !tbaa !754
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #36, !dbg !1106
  br label %6, !dbg !1106

6:                                                ; preds = %3, %0
  ret void, !dbg !1107
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1108 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1110, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i32 %1, metadata !1111, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %2, metadata !1112, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata ptr %3, metadata !1113, metadata !DIExpression()), !dbg !1114
  %6 = load ptr, ptr @stderr, align 8, !dbg !1115, !tbaa !754
  call void @llvm.dbg.value(metadata ptr %6, metadata !1116, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata ptr %2, metadata !1156, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.value(metadata ptr %3, metadata !1157, metadata !DIExpression()), !dbg !1158
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #36, !dbg !1160
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1161, !tbaa !815
  %9 = add i32 %8, 1, !dbg !1161
  store i32 %9, ptr @error_message_count, align 4, !dbg !1161, !tbaa !815
  %10 = icmp eq i32 %1, 0, !dbg !1162
  br i1 %10, label %20, label %11, !dbg !1164

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1165, metadata !DIExpression()), !dbg !1173
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #36, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1169, metadata !DIExpression()), !dbg !1176
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #36, !dbg !1177
  call void @llvm.dbg.value(metadata ptr %12, metadata !1168, metadata !DIExpression()), !dbg !1173
  %13 = icmp eq ptr %12, null, !dbg !1178
  br i1 %13, label %14, label %16, !dbg !1180

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.27, ptr noundef nonnull @.str.5.28, i32 noundef 5) #36, !dbg !1181
  call void @llvm.dbg.value(metadata ptr %15, metadata !1168, metadata !DIExpression()), !dbg !1173
  br label %16, !dbg !1182

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1173
  call void @llvm.dbg.value(metadata ptr %17, metadata !1168, metadata !DIExpression()), !dbg !1173
  %18 = load ptr, ptr @stderr, align 8, !dbg !1183, !tbaa !754
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.29, ptr noundef %17) #36, !dbg !1183
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #36, !dbg !1184
  br label %20, !dbg !1185

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1186, !tbaa !754
  call void @llvm.dbg.value(metadata i32 10, metadata !1187, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata ptr %21, metadata !1193, metadata !DIExpression()), !dbg !1194
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1196
  %23 = load ptr, ptr %22, align 8, !dbg !1196, !tbaa !1197
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1196
  %25 = load ptr, ptr %24, align 8, !dbg !1196, !tbaa !1200
  %26 = icmp ult ptr %23, %25, !dbg !1196
  br i1 %26, label %29, label %27, !dbg !1196, !prof !1201

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #36, !dbg !1196
  br label %31, !dbg !1196

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1196
  store ptr %30, ptr %22, align 8, !dbg !1196, !tbaa !1197
  store i8 10, ptr %23, align 1, !dbg !1196, !tbaa !824
  br label %31, !dbg !1196

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1202, !tbaa !754
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #36, !dbg !1202
  %34 = icmp eq i32 %0, 0, !dbg !1203
  br i1 %34, label %36, label %35, !dbg !1205

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #38, !dbg !1206
  unreachable, !dbg !1206

36:                                               ; preds = %31
  ret void, !dbg !1207
}

declare !dbg !1208 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1211 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1214 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1217 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1220 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1224 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1228, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i32 %1, metadata !1229, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata ptr %2, metadata !1230, metadata !DIExpression()), !dbg !1237
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36, !dbg !1238
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1231, metadata !DIExpression()), !dbg !1239
  call void @llvm.va_start(ptr nonnull %4), !dbg !1240
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #41, !dbg !1241
  call void @llvm.va_end(ptr nonnull %4), !dbg !1242
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36, !dbg !1243
  ret void, !dbg !1243
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !343 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !355, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %1, metadata !356, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %2, metadata !357, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 %3, metadata !358, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %4, metadata !359, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr %5, metadata !360, metadata !DIExpression()), !dbg !1244
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1245, !tbaa !815
  %8 = icmp eq i32 %7, 0, !dbg !1245
  br i1 %8, label %23, label %9, !dbg !1247

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1248, !tbaa !815
  %11 = icmp eq i32 %10, %3, !dbg !1251
  br i1 %11, label %12, label %22, !dbg !1252

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1253, !tbaa !754
  %14 = icmp eq ptr %13, %2, !dbg !1254
  br i1 %14, label %36, label %15, !dbg !1255

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1256
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1257
  br i1 %18, label %19, label %22, !dbg !1257

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1258
  %21 = icmp eq i32 %20, 0, !dbg !1259
  br i1 %21, label %36, label %22, !dbg !1260

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1261, !tbaa !754
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1262, !tbaa !815
  br label %23, !dbg !1263

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1264
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1265, !tbaa !754
  %25 = icmp eq ptr %24, null, !dbg !1265
  br i1 %25, label %27, label %26, !dbg !1267

26:                                               ; preds = %23
  tail call void %24() #36, !dbg !1268
  br label %31, !dbg !1268

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1269, !tbaa !754
  %29 = tail call ptr @getprogname() #37, !dbg !1269
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.32, ptr noundef %29) #36, !dbg !1269
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1271, !tbaa !754
  %33 = icmp eq ptr %2, null, !dbg !1271
  %34 = select i1 %33, ptr @.str.3.33, ptr @.str.2.34, !dbg !1271
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #36, !dbg !1271
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1272
  br label %36, !dbg !1273

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1274 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1278, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %1, metadata !1279, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %2, metadata !1280, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata i32 %3, metadata !1281, metadata !DIExpression()), !dbg !1284
  call void @llvm.dbg.value(metadata ptr %4, metadata !1282, metadata !DIExpression()), !dbg !1284
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1283, metadata !DIExpression()), !dbg !1286
  call void @llvm.va_start(ptr nonnull %6), !dbg !1287
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #41, !dbg !1288
  call void @llvm.va_end(ptr nonnull %6), !dbg !1289
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36, !dbg !1290
  ret void, !dbg !1290
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1291 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1294, !tbaa !754
  ret ptr %1, !dbg !1295
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1296 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1301, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %1, metadata !1302, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %2, metadata !1303, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %3, metadata !1304, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %4, metadata !1305, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr %5, metadata !1306, metadata !DIExpression()), !dbg !1327
  %8 = load i32, ptr @opterr, align 4, !dbg !1328, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %8, metadata !1307, metadata !DIExpression()), !dbg !1327
  store i32 0, ptr @opterr, align 4, !dbg !1329, !tbaa !815
  %9 = icmp eq i32 %0, 2, !dbg !1330
  br i1 %9, label %10, label %15, !dbg !1331

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.42, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1332
  call void @llvm.dbg.value(metadata i32 %11, metadata !1308, metadata !DIExpression()), !dbg !1333
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1334

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #36, !dbg !1335
  br label %15, !dbg !1336

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36, !dbg !1337
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1311, metadata !DIExpression()), !dbg !1338
  call void @llvm.va_start(ptr nonnull %7), !dbg !1339
  %14 = load ptr, ptr @stdout, align 8, !dbg !1340, !tbaa !754
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #36, !dbg !1341
  call void @exit(i32 noundef 0) #38, !dbg !1342
  unreachable, !dbg !1342

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1343, !tbaa !815
  store i32 0, ptr @optind, align 4, !dbg !1344, !tbaa !815
  ret void, !dbg !1345
}

; Function Attrs: nounwind
declare !dbg !1346 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1352 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !1356, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %1, metadata !1357, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %2, metadata !1358, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %3, metadata !1359, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %4, metadata !1360, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i1 %5, metadata !1361, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1371
  call void @llvm.dbg.value(metadata ptr %6, metadata !1362, metadata !DIExpression()), !dbg !1371
  %9 = load i32, ptr @opterr, align 4, !dbg !1372, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %9, metadata !1363, metadata !DIExpression()), !dbg !1371
  store i32 1, ptr @opterr, align 4, !dbg !1373, !tbaa !815
  %10 = select i1 %5, ptr @.str.1.47, ptr @.str.42, !dbg !1374
  call void @llvm.dbg.value(metadata ptr %10, metadata !1364, metadata !DIExpression()), !dbg !1371
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #36, !dbg !1375
  call void @llvm.dbg.value(metadata i32 %11, metadata !1365, metadata !DIExpression()), !dbg !1371
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1376

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #36, !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1366, metadata !DIExpression()), !dbg !1378
  call void @llvm.va_start(ptr nonnull %8), !dbg !1379
  %13 = load ptr, ptr @stdout, align 8, !dbg !1380, !tbaa !754
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #36, !dbg !1381
  call void @exit(i32 noundef 0) #38, !dbg !1382
  unreachable, !dbg !1382

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1383, !tbaa !815
  br label %16, !dbg !1384

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #36, !dbg !1385
  br label %18, !dbg !1386

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1386, !tbaa !815
  ret void, !dbg !1387
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1388 {
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
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1406, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 7, metadata !1407, metadata !DIExpression()), !dbg !1408
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.52, i64 7), !dbg !1410
  %13 = icmp eq i32 %12, 0, !dbg !1411
  br i1 %13, label %14, label %19, !dbg !1412

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1390, metadata !DIExpression()), !dbg !1393
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.53, i64 noundef 3) #37, !dbg !1413
  %16 = icmp eq i32 %15, 0, !dbg !1416
  %17 = select i1 %16, i64 3, i64 0, !dbg !1417
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1417
  br label %19, !dbg !1417

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1393
  call void @llvm.dbg.value(metadata ptr %21, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %20, metadata !1390, metadata !DIExpression()), !dbg !1393
  store ptr %20, ptr @program_name, align 8, !dbg !1418, !tbaa !754
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1419, !tbaa !754
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1420, !tbaa !754
  ret void, !dbg !1421
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1422 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

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
  %3 = load i32, ptr %2, align 4, !dbg !1471, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %3, metadata !1468, metadata !DIExpression()), !dbg !1470
  %4 = icmp eq ptr %0, null, !dbg !1472
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1472
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #42, !dbg !1473
  call void @llvm.dbg.value(metadata ptr %6, metadata !1469, metadata !DIExpression()), !dbg !1470
  store i32 %3, ptr %2, align 4, !dbg !1474, !tbaa !815
  ret ptr %6, !dbg !1475
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1476 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1482, metadata !DIExpression()), !dbg !1483
  %2 = icmp eq ptr %0, null, !dbg !1484
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1484
  %4 = load i32, ptr %3, align 8, !dbg !1485, !tbaa !1486
  ret i32 %4, !dbg !1488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1489 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1493, metadata !DIExpression()), !dbg !1495
  call void @llvm.dbg.value(metadata i32 %1, metadata !1494, metadata !DIExpression()), !dbg !1495
  %3 = icmp eq ptr %0, null, !dbg !1496
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1496
  store i32 %1, ptr %4, align 8, !dbg !1497, !tbaa !1486
  ret void, !dbg !1498
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1499 {
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
  %12 = load i32, ptr %9, align 4, !dbg !1517, !tbaa !815
  %13 = lshr i32 %12, %11, !dbg !1518
  %14 = and i32 %13, 1, !dbg !1519
  call void @llvm.dbg.value(metadata i32 %14, metadata !1510, metadata !DIExpression()), !dbg !1511
  %15 = xor i32 %13, %2, !dbg !1520
  %16 = and i32 %15, 1, !dbg !1520
  %17 = shl nuw i32 %16, %11, !dbg !1521
  %18 = xor i32 %17, %12, !dbg !1522
  store i32 %18, ptr %9, align 4, !dbg !1522, !tbaa !815
  ret i32 %14, !dbg !1523
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1524 {
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
  %9 = load i32, ptr %8, align 4, !dbg !1577, !tbaa !815
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
  store i32 %9, ptr %8, align 4, !dbg !1584, !tbaa !815
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
  %18 = trunc i32 %5 to i8, !dbg !1657
  %19 = lshr i8 %18, 1, !dbg !1657
  %20 = and i8 %19, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i8 %20, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1609, metadata !DIExpression()), !dbg !1654
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1658

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !1659
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !1660
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !1661
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !1662
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !1654
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !1663
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !1664
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %39, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %38, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %37, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %36, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %35, metadata !1605, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %34, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %33, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %32, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %31, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %30, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %29, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1647), !dbg !1665
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
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
  ], !dbg !1666

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 5, metadata !1596, metadata !DIExpression()), !dbg !1654
  br label %115, !dbg !1667

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 5, metadata !1596, metadata !DIExpression()), !dbg !1654
  %43 = and i8 %37, 1, !dbg !1668
  %44 = icmp eq i8 %43, 0, !dbg !1668
  br i1 %44, label %45, label %115, !dbg !1667

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1670
  br i1 %46, label %115, label %47, !dbg !1673

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1670, !tbaa !824
  br label %115, !dbg !1670

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.66, metadata !519, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i32 %29, metadata !520, metadata !DIExpression()), !dbg !1674
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.11.66, i32 noundef 5) #36, !dbg !1678
  call void @llvm.dbg.value(metadata ptr %49, metadata !521, metadata !DIExpression()), !dbg !1674
  %50 = icmp eq ptr %49, @.str.11.66, !dbg !1679
  br i1 %50, label %51, label %60, !dbg !1681

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36, !dbg !1682
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #36, !dbg !1683
  call void @llvm.dbg.declare(metadata ptr %13, metadata !523, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %13, metadata !1685, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata ptr %13, metadata !1693, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 0, metadata !1696, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 8, metadata !1697, metadata !DIExpression()), !dbg !1698
  store i64 0, ptr %13, align 8, !dbg !1700
  call void @llvm.dbg.value(metadata ptr %12, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !1674
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #36, !dbg !1701
  %53 = icmp eq i64 %52, 3, !dbg !1703
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !522, metadata !DIExpression()), !dbg !1674
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1704
  %57 = icmp eq i32 %29, 9, !dbg !1704
  %58 = select i1 %57, ptr @.str.10.68, ptr @.str.12.69, !dbg !1704
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1704
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #36, !dbg !1705
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36, !dbg !1705
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1674
  call void @llvm.dbg.value(metadata ptr %61, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr @.str.12.69, metadata !519, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %29, metadata !520, metadata !DIExpression()), !dbg !1706
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.67, ptr noundef nonnull @.str.12.69, i32 noundef 5) #36, !dbg !1708
  call void @llvm.dbg.value(metadata ptr %62, metadata !521, metadata !DIExpression()), !dbg !1706
  %63 = icmp eq ptr %62, @.str.12.69, !dbg !1709
  br i1 %63, label %64, label %73, !dbg !1710

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36, !dbg !1711
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #36, !dbg !1712
  call void @llvm.dbg.declare(metadata ptr %11, metadata !523, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata ptr %11, metadata !1685, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata ptr %11, metadata !1693, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i32 0, metadata !1696, metadata !DIExpression()), !dbg !1716
  call void @llvm.dbg.value(metadata i64 8, metadata !1697, metadata !DIExpression()), !dbg !1716
  store i64 0, ptr %11, align 8, !dbg !1718
  call void @llvm.dbg.value(metadata ptr %10, metadata !522, metadata !DIExpression(DW_OP_deref)), !dbg !1706
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #36, !dbg !1719
  %66 = icmp eq i64 %65, 3, !dbg !1720
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !522, metadata !DIExpression()), !dbg !1706
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1721
  %70 = icmp eq i32 %29, 9, !dbg !1721
  %71 = select i1 %70, ptr @.str.10.68, ptr @.str.12.69, !dbg !1721
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1721
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #36, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36, !dbg !1722
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %74, metadata !1599, metadata !DIExpression()), !dbg !1654
  %76 = and i8 %37, 1, !dbg !1723
  %77 = icmp eq i8 %76, 0, !dbg !1723
  br i1 %77, label %78, label %93, !dbg !1724

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !1611, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1654
  %79 = load i8, ptr %74, align 1, !dbg !1726, !tbaa !824
  %80 = icmp eq i8 %79, 0, !dbg !1728
  br i1 %80, label %93, label %81, !dbg !1728

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !1611, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i64 %84, metadata !1602, metadata !DIExpression()), !dbg !1654
  %85 = icmp ult i64 %84, %40, !dbg !1729
  br i1 %85, label %86, label %88, !dbg !1732

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1729
  store i8 %82, ptr %87, align 1, !dbg !1729, !tbaa !824
  br label %88, !dbg !1729

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %89, metadata !1602, metadata !DIExpression()), !dbg !1654
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1733
  call void @llvm.dbg.value(metadata ptr %90, metadata !1611, metadata !DIExpression()), !dbg !1725
  %91 = load i8, ptr %90, align 1, !dbg !1726, !tbaa !824
  %92 = icmp eq i8 %91, 0, !dbg !1728
  br i1 %92, label %93, label %81, !dbg !1728, !llvm.loop !1734

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1736
  call void @llvm.dbg.value(metadata i64 %94, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %75, metadata !1604, metadata !DIExpression()), !dbg !1654
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #37, !dbg !1737
  call void @llvm.dbg.value(metadata i64 %95, metadata !1605, metadata !DIExpression()), !dbg !1654
  br label %115, !dbg !1738

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1654
  br label %97, !dbg !1739

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %98, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1607, metadata !DIExpression()), !dbg !1654
  br label %99, !dbg !1740

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !1662
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %101, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %100, metadata !1606, metadata !DIExpression()), !dbg !1654
  %102 = and i8 %101, 1, !dbg !1741
  %103 = icmp eq i8 %102, 0, !dbg !1741
  %104 = select i1 %103, i8 1, i8 %100, !dbg !1743
  br label %105, !dbg !1743

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !1654
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !1657
  call void @llvm.dbg.value(metadata i8 %107, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %106, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 2, metadata !1596, metadata !DIExpression()), !dbg !1654
  %108 = and i8 %107, 1, !dbg !1744
  %109 = icmp eq i8 %108, 0, !dbg !1744
  br i1 %109, label %110, label %115, !dbg !1746

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !1747
  br i1 %111, label %115, label %112, !dbg !1750

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !1747, !tbaa !824
  br label %115, !dbg !1747

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1654
  br label %115, !dbg !1751

114:                                              ; preds = %28
  call void @abort() #38, !dbg !1752
  unreachable, !dbg !1752

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !1736
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.68, %45 ], [ @.str.10.68, %47 ], [ @.str.10.68, %42 ], [ %34, %28 ], [ @.str.12.69, %110 ], [ @.str.12.69, %112 ], [ @.str.12.69, %105 ], [ @.str.10.68, %41 ], !dbg !1654
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !1654
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !1654
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %123, metadata !1607, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %122, metadata !1606, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %121, metadata !1605, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %120, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %119, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %118, metadata !1600, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata ptr %117, metadata !1599, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i32 %116, metadata !1596, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 0, metadata !1616, metadata !DIExpression()), !dbg !1753
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
  br label %138, !dbg !1754

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !1736
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !1659
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !1663
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !1664
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !1755
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !1756
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %145, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %144, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %143, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %142, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %141, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %140, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %139, metadata !1595, metadata !DIExpression()), !dbg !1654
  %147 = icmp eq i64 %139, -1, !dbg !1757
  br i1 %147, label %148, label %152, !dbg !1758

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1759
  %150 = load i8, ptr %149, align 1, !dbg !1759, !tbaa !824
  %151 = icmp eq i8 %150, 0, !dbg !1760
  br i1 %151, label %627, label %154, !dbg !1761

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1762
  br i1 %153, label %627, label %154, !dbg !1761

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 0, metadata !1622, metadata !DIExpression()), !dbg !1763
  br i1 %129, label %155, label %170, !dbg !1764

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !1766
  %157 = select i1 %147, i1 %130, i1 false, !dbg !1767
  br i1 %157, label %158, label %160, !dbg !1767

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1768
  call void @llvm.dbg.value(metadata i64 %159, metadata !1595, metadata !DIExpression()), !dbg !1654
  br label %160, !dbg !1769

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1769
  call void @llvm.dbg.value(metadata i64 %161, metadata !1595, metadata !DIExpression()), !dbg !1654
  %162 = icmp ugt i64 %156, %161, !dbg !1770
  br i1 %162, label %170, label %163, !dbg !1771

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1772
  call void @llvm.dbg.value(metadata ptr %164, metadata !1773, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata ptr %120, metadata !1776, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i64 %121, metadata !1777, metadata !DIExpression()), !dbg !1778
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !1780
  %166 = icmp ne i32 %165, 0, !dbg !1781
  %167 = select i1 %166, i1 true, i1 %132, !dbg !1782
  %168 = xor i1 %166, true, !dbg !1782
  %169 = zext i1 %168 to i8, !dbg !1782
  br i1 %167, label %170, label %688, !dbg !1782

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1763
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8 %173, metadata !1618, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %171, metadata !1595, metadata !DIExpression()), !dbg !1654
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1783
  %175 = load i8, ptr %174, align 1, !dbg !1783, !tbaa !824
  call void @llvm.dbg.value(metadata i8 %175, metadata !1623, metadata !DIExpression()), !dbg !1763
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
  ], !dbg !1784

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !1785

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !1786

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1763
  %179 = and i8 %144, 1, !dbg !1790
  %180 = icmp eq i8 %179, 0, !dbg !1790
  %181 = select i1 %133, i1 %180, i1 false, !dbg !1790
  br i1 %181, label %182, label %198, !dbg !1790

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1792
  br i1 %183, label %184, label %186, !dbg !1796

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1792
  store i8 39, ptr %185, align 1, !dbg !1792, !tbaa !824
  br label %186, !dbg !1792

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1796
  call void @llvm.dbg.value(metadata i64 %187, metadata !1602, metadata !DIExpression()), !dbg !1654
  %188 = icmp ult i64 %187, %146, !dbg !1797
  br i1 %188, label %189, label %191, !dbg !1800

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1797
  store i8 36, ptr %190, align 1, !dbg !1797, !tbaa !824
  br label %191, !dbg !1797

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %192, metadata !1602, metadata !DIExpression()), !dbg !1654
  %193 = icmp ult i64 %192, %146, !dbg !1801
  br i1 %193, label %194, label %196, !dbg !1804

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1801
  store i8 39, ptr %195, align 1, !dbg !1801, !tbaa !824
  br label %196, !dbg !1801

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %197, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %198, !dbg !1805

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1654
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %200, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %199, metadata !1602, metadata !DIExpression()), !dbg !1654
  %201 = icmp ult i64 %199, %146, !dbg !1806
  br i1 %201, label %202, label %204, !dbg !1809

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1806
  store i8 92, ptr %203, align 1, !dbg !1806, !tbaa !824
  br label %204, !dbg !1806

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %205, metadata !1602, metadata !DIExpression()), !dbg !1654
  br i1 %126, label %206, label %491, !dbg !1810

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1812
  %208 = icmp ult i64 %207, %171, !dbg !1813
  br i1 %208, label %209, label %480, !dbg !1814

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1815
  %211 = load i8, ptr %210, align 1, !dbg !1815, !tbaa !824
  %212 = add i8 %211, -48, !dbg !1816
  %213 = icmp ult i8 %212, 10, !dbg !1816
  br i1 %213, label %214, label %480, !dbg !1816

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1817
  br i1 %215, label %216, label %218, !dbg !1821

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1817
  store i8 48, ptr %217, align 1, !dbg !1817, !tbaa !824
  br label %218, !dbg !1817

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %219, metadata !1602, metadata !DIExpression()), !dbg !1654
  %220 = icmp ult i64 %219, %146, !dbg !1822
  br i1 %220, label %221, label %223, !dbg !1825

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1822
  store i8 48, ptr %222, align 1, !dbg !1822, !tbaa !824
  br label %223, !dbg !1822

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %224, metadata !1602, metadata !DIExpression()), !dbg !1654
  br label %480, !dbg !1826

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !1827

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1828

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !1829

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !1831

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1833
  %231 = icmp ult i64 %230, %171, !dbg !1834
  br i1 %231, label %232, label %480, !dbg !1835

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !1836
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !1837
  %235 = load i8, ptr %234, align 1, !dbg !1837, !tbaa !824
  %236 = icmp eq i8 %235, 63, !dbg !1838
  br i1 %236, label %237, label %480, !dbg !1839

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1840
  %239 = load i8, ptr %238, align 1, !dbg !1840, !tbaa !824
  %240 = sext i8 %239 to i32, !dbg !1840
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
  ], !dbg !1841

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !1842

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %230, metadata !1616, metadata !DIExpression()), !dbg !1753
  %243 = icmp ult i64 %140, %146, !dbg !1844
  br i1 %243, label %244, label %246, !dbg !1847

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1844
  store i8 63, ptr %245, align 1, !dbg !1844, !tbaa !824
  br label %246, !dbg !1844

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %247, metadata !1602, metadata !DIExpression()), !dbg !1654
  %248 = icmp ult i64 %247, %146, !dbg !1848
  br i1 %248, label %249, label %251, !dbg !1851

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !1848
  store i8 34, ptr %250, align 1, !dbg !1848, !tbaa !824
  br label %251, !dbg !1848

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %252, metadata !1602, metadata !DIExpression()), !dbg !1654
  %253 = icmp ult i64 %252, %146, !dbg !1852
  br i1 %253, label %254, label %256, !dbg !1855

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !1852
  store i8 34, ptr %255, align 1, !dbg !1852, !tbaa !824
  br label %256, !dbg !1852

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %257, metadata !1602, metadata !DIExpression()), !dbg !1654
  %258 = icmp ult i64 %257, %146, !dbg !1856
  br i1 %258, label %259, label %261, !dbg !1859

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !1856
  store i8 63, ptr %260, align 1, !dbg !1856, !tbaa !824
  br label %261, !dbg !1856

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !1859
  call void @llvm.dbg.value(metadata i64 %262, metadata !1602, metadata !DIExpression()), !dbg !1654
  br label %480, !dbg !1860

263:                                              ; preds = %170
  br label %274, !dbg !1861

264:                                              ; preds = %170
  br label %274, !dbg !1862

265:                                              ; preds = %170
  br label %272, !dbg !1863

266:                                              ; preds = %170
  br label %272, !dbg !1864

267:                                              ; preds = %170
  br label %274, !dbg !1865

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !1866

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !1867

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !1870

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !1872

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !1873
  call void @llvm.dbg.label(metadata !1648), !dbg !1874
  br i1 %134, label %274, label %670, !dbg !1875

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !1873
  call void @llvm.dbg.label(metadata !1650), !dbg !1877
  br i1 %125, label %535, label %491, !dbg !1878

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !1879

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !1880, !tbaa !824
  %279 = icmp eq i8 %278, 0, !dbg !1882
  br i1 %279, label %280, label %480, !dbg !1883

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !1884
  br i1 %281, label %282, label %480, !dbg !1886

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1763
  br label %283, !dbg !1887

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8 %284, metadata !1622, metadata !DIExpression()), !dbg !1763
  br i1 %134, label %480, label %670, !dbg !1888

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1622, metadata !DIExpression()), !dbg !1763
  br i1 %133, label %286, label %480, !dbg !1890

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !1891

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !1894
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !1896
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !1896
  %292 = select i1 %290, i64 %146, i64 0, !dbg !1896
  call void @llvm.dbg.value(metadata i64 %292, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %291, metadata !1603, metadata !DIExpression()), !dbg !1654
  %293 = icmp ult i64 %140, %292, !dbg !1897
  br i1 %293, label %294, label %296, !dbg !1900

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1897
  store i8 39, ptr %295, align 1, !dbg !1897, !tbaa !824
  br label %296, !dbg !1897

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %297, metadata !1602, metadata !DIExpression()), !dbg !1654
  %298 = icmp ult i64 %297, %292, !dbg !1901
  br i1 %298, label %299, label %301, !dbg !1904

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !1901
  store i8 92, ptr %300, align 1, !dbg !1901, !tbaa !824
  br label %301, !dbg !1901

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %302, metadata !1602, metadata !DIExpression()), !dbg !1654
  %303 = icmp ult i64 %302, %292, !dbg !1905
  br i1 %303, label %304, label %306, !dbg !1908

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !1905
  store i8 39, ptr %305, align 1, !dbg !1905, !tbaa !824
  br label %306, !dbg !1905

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !1908
  call void @llvm.dbg.value(metadata i64 %307, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %480, !dbg !1909

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !1910

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !1624, metadata !DIExpression()), !dbg !1911
  %310 = tail call ptr @__ctype_b_loc() #39, !dbg !1912
  %311 = load ptr, ptr %310, align 8, !dbg !1912, !tbaa !754
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !1912
  %314 = load i16, ptr %313, align 2, !dbg !1912, !tbaa !856
  %315 = lshr i16 %314, 14, !dbg !1914
  %316 = trunc i16 %315 to i8, !dbg !1914
  %317 = and i8 %316, 1, !dbg !1914
  call void @llvm.dbg.value(metadata i8 %317, metadata !1627, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %171, metadata !1595, metadata !DIExpression()), !dbg !1654
  %318 = icmp eq i8 %317, 0, !dbg !1915
  call void @llvm.dbg.value(metadata i1 %318, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  br label %368, !dbg !1916

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #36, !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1628, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata ptr %14, metadata !1685, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata ptr %14, metadata !1693, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 0, metadata !1696, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 8, metadata !1697, metadata !DIExpression()), !dbg !1921
  store i64 0, ptr %14, align 8, !dbg !1923
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1911
  %320 = icmp eq i64 %171, -1, !dbg !1924
  br i1 %320, label %321, label %323, !dbg !1926

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #37, !dbg !1927
  call void @llvm.dbg.value(metadata i64 %322, metadata !1595, metadata !DIExpression()), !dbg !1654
  br label %323, !dbg !1928

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !1763
  call void @llvm.dbg.value(metadata i64 %324, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36, !dbg !1929
  %325 = sub i64 %324, %145, !dbg !1930
  call void @llvm.dbg.value(metadata ptr %15, metadata !1631, metadata !DIExpression(DW_OP_deref)), !dbg !1931
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #36, !dbg !1932
  call void @llvm.dbg.value(metadata i64 %326, metadata !1635, metadata !DIExpression()), !dbg !1931
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !1933

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1911
  %328 = icmp ugt i64 %324, %145, !dbg !1934
  br i1 %328, label %331, label %329, !dbg !1936

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %324, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i1 true, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  br label %368, !dbg !1916

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1911
  br label %360, !dbg !1939

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1624, metadata !DIExpression()), !dbg !1911
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !1941
  %335 = load i8, ptr %334, align 1, !dbg !1941, !tbaa !824
  %336 = icmp eq i8 %335, 0, !dbg !1936
  br i1 %336, label %363, label %337, !dbg !1942

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %338, metadata !1624, metadata !DIExpression()), !dbg !1911
  %339 = add i64 %338, %145, !dbg !1944
  %340 = icmp eq i64 %338, %325, !dbg !1934
  br i1 %340, label %363, label %331, !dbg !1936, !llvm.loop !1945

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !1946
  %344 = and i1 %343, %133, !dbg !1946
  call void @llvm.dbg.value(metadata i64 1, metadata !1636, metadata !DIExpression()), !dbg !1947
  br i1 %344, label %345, label %354, !dbg !1946

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !1636, metadata !DIExpression()), !dbg !1947
  %347 = add i64 %346, %145, !dbg !1948
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !1950
  %349 = load i8, ptr %348, align 1, !dbg !1950, !tbaa !824
  %350 = sext i8 %349 to i32, !dbg !1950
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !1951

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %352, metadata !1636, metadata !DIExpression()), !dbg !1947
  %353 = icmp eq i64 %352, %326, !dbg !1953
  br i1 %353, label %354, label %345, !dbg !1954, !llvm.loop !1955

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !1957, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %355, metadata !1631, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %355, metadata !1959, metadata !DIExpression()), !dbg !1967
  %356 = call i32 @iswprint(i32 noundef %355) #36, !dbg !1969
  %357 = icmp ne i32 %356, 0, !dbg !1970
  %358 = zext i1 %357 to i8, !dbg !1971
  call void @llvm.dbg.value(metadata i8 %358, metadata !1627, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %326, metadata !1624, metadata !DIExpression()), !dbg !1911
  br label %363, !dbg !1972

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1938
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !1627, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %324, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i1 %361, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  br label %368, !dbg !1916

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !1627, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i64 %364, metadata !1624, metadata !DIExpression()), !dbg !1911
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #36, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %324, metadata !1595, metadata !DIExpression()), !dbg !1654
  %366 = icmp eq i8 %365, 0, !dbg !1915
  call void @llvm.dbg.value(metadata i1 %366, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1763
  %367 = icmp ugt i64 %364, 1, !dbg !1973
  br i1 %367, label %374, label %368, !dbg !1916

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !1974
  br i1 %373, label %374, label %480, !dbg !1974

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %379, metadata !1644, metadata !DIExpression()), !dbg !1976
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !1977

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !1654
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !1755
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !1753
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !1763
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !1978
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8 %387, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %386, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %385, metadata !1618, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %384, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %383, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %382, metadata !1602, metadata !DIExpression()), !dbg !1654
  br i1 %380, label %388, label %434, !dbg !1979

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !1984

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1763
  %390 = and i8 %383, 1, !dbg !1987
  %391 = icmp eq i8 %390, 0, !dbg !1987
  %392 = select i1 %133, i1 %391, i1 false, !dbg !1987
  br i1 %392, label %393, label %409, !dbg !1987

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !1989
  br i1 %394, label %395, label %397, !dbg !1993

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !1989
  store i8 39, ptr %396, align 1, !dbg !1989, !tbaa !824
  br label %397, !dbg !1989

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %398, metadata !1602, metadata !DIExpression()), !dbg !1654
  %399 = icmp ult i64 %398, %146, !dbg !1994
  br i1 %399, label %400, label %402, !dbg !1997

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !1994
  store i8 36, ptr %401, align 1, !dbg !1994, !tbaa !824
  br label %402, !dbg !1994

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !1997
  call void @llvm.dbg.value(metadata i64 %403, metadata !1602, metadata !DIExpression()), !dbg !1654
  %404 = icmp ult i64 %403, %146, !dbg !1998
  br i1 %404, label %405, label %407, !dbg !2001

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !1998
  store i8 39, ptr %406, align 1, !dbg !1998, !tbaa !824
  br label %407, !dbg !1998

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %408, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %409, !dbg !2002

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !1654
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %411, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %410, metadata !1602, metadata !DIExpression()), !dbg !1654
  %412 = icmp ult i64 %410, %146, !dbg !2003
  br i1 %412, label %413, label %415, !dbg !2006

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !2003
  store i8 92, ptr %414, align 1, !dbg !2003, !tbaa !824
  br label %415, !dbg !2003

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !2006
  call void @llvm.dbg.value(metadata i64 %416, metadata !1602, metadata !DIExpression()), !dbg !1654
  %417 = icmp ult i64 %416, %146, !dbg !2007
  br i1 %417, label %418, label %422, !dbg !2010

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !2007
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !2007
  store i8 %420, ptr %421, align 1, !dbg !2007, !tbaa !824
  br label %422, !dbg !2007

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !2010
  call void @llvm.dbg.value(metadata i64 %423, metadata !1602, metadata !DIExpression()), !dbg !1654
  %424 = icmp ult i64 %423, %146, !dbg !2011
  br i1 %424, label %425, label %430, !dbg !2014

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !2011
  %428 = or i8 %427, 48, !dbg !2011
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !2011
  store i8 %428, ptr %429, align 1, !dbg !2011, !tbaa !824
  br label %430, !dbg !2011

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !2014
  call void @llvm.dbg.value(metadata i64 %431, metadata !1602, metadata !DIExpression()), !dbg !1654
  %432 = and i8 %387, 7, !dbg !2015
  %433 = or i8 %432, 48, !dbg !2016
  call void @llvm.dbg.value(metadata i8 %433, metadata !1623, metadata !DIExpression()), !dbg !1763
  br label %443, !dbg !2017

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !2018
  %436 = icmp eq i8 %435, 0, !dbg !2018
  br i1 %436, label %443, label %437, !dbg !2020

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !2021
  br i1 %438, label %439, label %441, !dbg !2025

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !2021
  store i8 92, ptr %440, align 1, !dbg !2021, !tbaa !824
  br label %441, !dbg !2021

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %442, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1763
  br label %443, !dbg !2026

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !1654
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !1755
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !1763
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !1763
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !1763
  call void @llvm.dbg.value(metadata i8 %448, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %447, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %446, metadata !1618, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %445, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %444, metadata !1602, metadata !DIExpression()), !dbg !1654
  %449 = add i64 %384, 1, !dbg !2027
  %450 = icmp ugt i64 %379, %449, !dbg !2029
  br i1 %450, label %451, label %478, !dbg !2030

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !2031
  %453 = icmp ne i8 %452, 0, !dbg !2031
  %454 = and i8 %447, 1, !dbg !2031
  %455 = icmp eq i8 %454, 0, !dbg !2031
  %456 = select i1 %453, i1 %455, i1 false, !dbg !2031
  br i1 %456, label %457, label %468, !dbg !2031

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !2034
  br i1 %458, label %459, label %461, !dbg !2038

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !2034
  store i8 39, ptr %460, align 1, !dbg !2034, !tbaa !824
  br label %461, !dbg !2034

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !2038
  call void @llvm.dbg.value(metadata i64 %462, metadata !1602, metadata !DIExpression()), !dbg !1654
  %463 = icmp ult i64 %462, %146, !dbg !2039
  br i1 %463, label %464, label %466, !dbg !2042

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !2039
  store i8 39, ptr %465, align 1, !dbg !2039, !tbaa !824
  br label %466, !dbg !2039

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %467, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %468, !dbg !2043

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !2044
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %470, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %469, metadata !1602, metadata !DIExpression()), !dbg !1654
  %471 = icmp ult i64 %469, %146, !dbg !2045
  br i1 %471, label %472, label %474, !dbg !2048

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !2045
  store i8 %448, ptr %473, align 1, !dbg !2045, !tbaa !824
  br label %474, !dbg !2045

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %475, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %449, metadata !1616, metadata !DIExpression()), !dbg !1753
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !2049
  %477 = load i8, ptr %476, align 1, !dbg !2049, !tbaa !824
  call void @llvm.dbg.value(metadata i8 %477, metadata !1623, metadata !DIExpression()), !dbg !1763
  br label %381, !dbg !2050, !llvm.loop !2051

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i8 %448, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %479, metadata !1622, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %447, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %446, metadata !1618, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %384, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %445, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %444, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %378, metadata !1595, metadata !DIExpression()), !dbg !1654
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !2054
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !1654
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !1659
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !1654
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !1654
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !1753
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !1763
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !1763
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !1763
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %489, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %488, metadata !1622, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %487, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %173, metadata !1618, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %486, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %485, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %484, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %483, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %482, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %481, metadata !1595, metadata !DIExpression()), !dbg !1654
  br i1 %127, label %502, label %491, !dbg !2055

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
  br i1 %137, label %503, label %524, !dbg !2057

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !2058

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
  %514 = lshr i8 %505, 5, !dbg !2059
  %515 = zext i8 %514 to i64, !dbg !2059
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !2060
  %517 = load i32, ptr %516, align 4, !dbg !2060, !tbaa !815
  %518 = and i8 %505, 31, !dbg !2061
  %519 = zext i8 %518 to i32, !dbg !2061
  %520 = shl nuw i32 1, %519, !dbg !2062
  %521 = and i32 %517, %520, !dbg !2062
  %522 = icmp eq i32 %521, 0, !dbg !2062
  %523 = and i1 %172, %522, !dbg !2063
  br i1 %523, label %573, label %535, !dbg !2063

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
  br i1 %172, label %573, label %535, !dbg !2064

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !2054
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !1654
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !1659
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !1663
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !1755
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !2065
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !1763
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !1763
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %543, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %542, metadata !1622, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %541, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %540, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %539, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %538, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %537, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %536, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1651), !dbg !2066
  br i1 %132, label %545, label %674, !dbg !2067

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1763
  %546 = and i8 %540, 1, !dbg !2069
  %547 = icmp eq i8 %546, 0, !dbg !2069
  %548 = select i1 %133, i1 %547, i1 false, !dbg !2069
  br i1 %548, label %549, label %565, !dbg !2069

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !2071
  br i1 %550, label %551, label %553, !dbg !2075

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !2071
  store i8 39, ptr %552, align 1, !dbg !2071, !tbaa !824
  br label %553, !dbg !2071

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %554, metadata !1602, metadata !DIExpression()), !dbg !1654
  %555 = icmp ult i64 %554, %544, !dbg !2076
  br i1 %555, label %556, label %558, !dbg !2079

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !2076
  store i8 36, ptr %557, align 1, !dbg !2076, !tbaa !824
  br label %558, !dbg !2076

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !2079
  call void @llvm.dbg.value(metadata i64 %559, metadata !1602, metadata !DIExpression()), !dbg !1654
  %560 = icmp ult i64 %559, %544, !dbg !2080
  br i1 %560, label %561, label %563, !dbg !2083

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !2080
  store i8 39, ptr %562, align 1, !dbg !2080, !tbaa !824
  br label %563, !dbg !2080

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !2083
  call void @llvm.dbg.value(metadata i64 %564, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 1, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %565, !dbg !2084

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !1763
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %567, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %566, metadata !1602, metadata !DIExpression()), !dbg !1654
  %568 = icmp ult i64 %566, %544, !dbg !2085
  br i1 %568, label %569, label %571, !dbg !2088

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !2085
  store i8 92, ptr %570, align 1, !dbg !2085, !tbaa !824
  br label %571, !dbg !2085

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !2088
  call void @llvm.dbg.value(metadata i64 %544, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %543, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %542, metadata !1622, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 1, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %541, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %567, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %539, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %538, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %572, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %536, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1652), !dbg !2089
  br label %600, !dbg !2090

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !2054
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !1654
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !1659
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !1663
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !1755
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !2065
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !1763
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !1763
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !2093
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %582, metadata !1623, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %581, metadata !1622, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 %580, metadata !1621, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %579, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %578, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %577, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %576, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %575, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %574, metadata !1595, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.label(metadata !1652), !dbg !2089
  %584 = and i8 %578, 1, !dbg !2090
  %585 = icmp ne i8 %584, 0, !dbg !2090
  %586 = and i8 %580, 1, !dbg !2090
  %587 = icmp eq i8 %586, 0, !dbg !2090
  %588 = select i1 %585, i1 %587, i1 false, !dbg !2090
  br i1 %588, label %589, label %600, !dbg !2090

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !2094
  br i1 %590, label %591, label %593, !dbg !2098

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !2094
  store i8 39, ptr %592, align 1, !dbg !2094, !tbaa !824
  br label %593, !dbg !2094

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %594, metadata !1602, metadata !DIExpression()), !dbg !1654
  %595 = icmp ult i64 %594, %583, !dbg !2099
  br i1 %595, label %596, label %598, !dbg !2102

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !2099
  store i8 39, ptr %597, align 1, !dbg !2099, !tbaa !824
  br label %598, !dbg !2099

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !2102
  call void @llvm.dbg.value(metadata i64 %599, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1654
  br label %600, !dbg !2103

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !1763
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !1654
  call void @llvm.dbg.value(metadata i8 %609, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %608, metadata !1602, metadata !DIExpression()), !dbg !1654
  %610 = icmp ult i64 %608, %601, !dbg !2104
  br i1 %610, label %611, label %613, !dbg !2107

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !2104
  store i8 %602, ptr %612, align 1, !dbg !2104, !tbaa !824
  br label %613, !dbg !2104

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %614, metadata !1602, metadata !DIExpression()), !dbg !1654
  %615 = icmp eq i8 %603, 0, !dbg !2108
  %616 = select i1 %615, i8 0, i8 %143, !dbg !2110
  call void @llvm.dbg.value(metadata i8 %616, metadata !1609, metadata !DIExpression()), !dbg !1654
  br label %617, !dbg !2111

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !2054
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !1654
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !1659
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !1663
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !1664
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !1755
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !2065
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %624, metadata !1616, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 %623, metadata !1610, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %622, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %621, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %620, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %619, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %618, metadata !1595, metadata !DIExpression()), !dbg !1654
  %626 = add i64 %624, 1, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %626, metadata !1616, metadata !DIExpression()), !dbg !1753
  br label %138, !dbg !2113, !llvm.loop !2114

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !1593, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %143, metadata !1609, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 %142, metadata !1608, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %141, metadata !1603, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %140, metadata !1602, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %139, metadata !1595, metadata !DIExpression()), !dbg !1654
  %628 = icmp eq i64 %140, 0, !dbg !2116
  %629 = and i1 %133, %628, !dbg !2118
  %630 = xor i1 %629, true, !dbg !2118
  %631 = select i1 %630, i1 true, i1 %132, !dbg !2118
  br i1 %631, label %632, label %670, !dbg !2118

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !2119
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !2119
  br i1 %636, label %637, label %646, !dbg !2119

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !2121
  %639 = icmp eq i8 %638, 0, !dbg !2121
  br i1 %639, label %642, label %640, !dbg !2124

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !2125
  br label %694, !dbg !2126

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !2127
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !2129
  br i1 %645, label %28, label %646, !dbg !2129

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !2130
  %649 = select i1 %648, i1 %647, i1 false, !dbg !2132
  br i1 %649, label %650, label %665, !dbg !2132

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %140, metadata !1602, metadata !DIExpression()), !dbg !1654
  %651 = load i8, ptr %120, align 1, !dbg !2133, !tbaa !824
  %652 = icmp eq i8 %651, 0, !dbg !2136
  br i1 %652, label %665, label %653, !dbg !2136

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !1604, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i64 %656, metadata !1602, metadata !DIExpression()), !dbg !1654
  %657 = icmp ult i64 %656, %146, !dbg !2137
  br i1 %657, label %658, label %660, !dbg !2140

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !2137
  store i8 %654, ptr %659, align 1, !dbg !2137, !tbaa !824
  br label %660, !dbg !2137

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %661, metadata !1602, metadata !DIExpression()), !dbg !1654
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !2141
  call void @llvm.dbg.value(metadata ptr %662, metadata !1604, metadata !DIExpression()), !dbg !1654
  %663 = load i8, ptr %662, align 1, !dbg !2133, !tbaa !824
  %664 = icmp eq i8 %663, 0, !dbg !2136
  br i1 %664, label %665, label %653, !dbg !2136, !llvm.loop !2142

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !1736
  call void @llvm.dbg.value(metadata i64 %666, metadata !1602, metadata !DIExpression()), !dbg !1654
  %667 = icmp ult i64 %666, %146, !dbg !2144
  br i1 %667, label %668, label %694, !dbg !2146

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !2147
  store i8 0, ptr %669, align 1, !dbg !2148, !tbaa !824
  br label %694, !dbg !2147

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !1653), !dbg !2149
  %672 = icmp eq i8 %124, 0, !dbg !2150
  %673 = select i1 %672, i32 2, i32 4, !dbg !2150
  br label %684, !dbg !2150

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !2150
  %678 = select i1 %677, i32 2, i32 4, !dbg !2150
  br label %679, !dbg !2152

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !1653), !dbg !2149
  %683 = icmp eq i32 %116, 2, !dbg !2152
  br i1 %683, label %684, label %688, !dbg !2150

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !2150

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !1596, metadata !DIExpression()), !dbg !1654
  %692 = and i32 %5, -3, !dbg !2153
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !2154
  br label %694, !dbg !2155

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !2156
}

; Function Attrs: nounwind
declare !dbg !2157 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2160 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2163 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2165 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2169, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %1, metadata !2170, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata ptr %2, metadata !2171, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata ptr %0, metadata !2173, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i64 %1, metadata !2178, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata ptr null, metadata !2179, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata ptr %2, metadata !2180, metadata !DIExpression()), !dbg !2186
  %4 = icmp eq ptr %2, null, !dbg !2188
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2188
  call void @llvm.dbg.value(metadata ptr %5, metadata !2181, metadata !DIExpression()), !dbg !2186
  %6 = tail call ptr @__errno_location() #39, !dbg !2189
  %7 = load i32, ptr %6, align 4, !dbg !2189, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %7, metadata !2182, metadata !DIExpression()), !dbg !2186
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2190
  %9 = load i32, ptr %8, align 4, !dbg !2190, !tbaa !1536
  %10 = or i32 %9, 1, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %10, metadata !2183, metadata !DIExpression()), !dbg !2186
  %11 = load i32, ptr %5, align 8, !dbg !2192, !tbaa !1486
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2193
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2194
  %14 = load ptr, ptr %13, align 8, !dbg !2194, !tbaa !1557
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2195
  %16 = load ptr, ptr %15, align 8, !dbg !2195, !tbaa !1560
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2196
  %18 = add i64 %17, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i64 %18, metadata !2184, metadata !DIExpression()), !dbg !2186
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2198
  call void @llvm.dbg.value(metadata ptr %19, metadata !2185, metadata !DIExpression()), !dbg !2186
  %20 = load i32, ptr %5, align 8, !dbg !2199, !tbaa !1486
  %21 = load ptr, ptr %13, align 8, !dbg !2200, !tbaa !1557
  %22 = load ptr, ptr %15, align 8, !dbg !2201, !tbaa !1560
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2202
  store i32 %7, ptr %6, align 4, !dbg !2203, !tbaa !815
  ret ptr %19, !dbg !2204
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2174 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2173, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i64 %1, metadata !2178, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %2, metadata !2179, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr %3, metadata !2180, metadata !DIExpression()), !dbg !2205
  %5 = icmp eq ptr %3, null, !dbg !2206
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2206
  call void @llvm.dbg.value(metadata ptr %6, metadata !2181, metadata !DIExpression()), !dbg !2205
  %7 = tail call ptr @__errno_location() #39, !dbg !2207
  %8 = load i32, ptr %7, align 4, !dbg !2207, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %8, metadata !2182, metadata !DIExpression()), !dbg !2205
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2208
  %10 = load i32, ptr %9, align 4, !dbg !2208, !tbaa !1536
  %11 = icmp eq ptr %2, null, !dbg !2209
  %12 = zext i1 %11 to i32, !dbg !2209
  %13 = or i32 %10, %12, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %13, metadata !2183, metadata !DIExpression()), !dbg !2205
  %14 = load i32, ptr %6, align 8, !dbg !2211, !tbaa !1486
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2212
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2213
  %17 = load ptr, ptr %16, align 8, !dbg !2213, !tbaa !1557
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2214
  %19 = load ptr, ptr %18, align 8, !dbg !2214, !tbaa !1560
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2215
  %21 = add i64 %20, 1, !dbg !2216
  call void @llvm.dbg.value(metadata i64 %21, metadata !2184, metadata !DIExpression()), !dbg !2205
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2217
  call void @llvm.dbg.value(metadata ptr %22, metadata !2185, metadata !DIExpression()), !dbg !2205
  %23 = load i32, ptr %6, align 8, !dbg !2218, !tbaa !1486
  %24 = load ptr, ptr %16, align 8, !dbg !2219, !tbaa !1557
  %25 = load ptr, ptr %18, align 8, !dbg !2220, !tbaa !1560
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2221
  store i32 %8, ptr %7, align 4, !dbg !2222, !tbaa !815
  br i1 %11, label %28, label %27, !dbg !2223

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2224, !tbaa !2226
  br label %28, !dbg !2227

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2228
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2229 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2234, !tbaa !754
  call void @llvm.dbg.value(metadata ptr %1, metadata !2231, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i32 1, metadata !2232, metadata !DIExpression()), !dbg !2236
  %2 = load i32, ptr @nslots, align 4, !tbaa !815
  call void @llvm.dbg.value(metadata i32 1, metadata !2232, metadata !DIExpression()), !dbg !2236
  %3 = icmp sgt i32 %2, 1, !dbg !2237
  br i1 %3, label %4, label %6, !dbg !2239

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2237
  br label %10, !dbg !2239

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2240
  %8 = load ptr, ptr %7, align 8, !dbg !2240, !tbaa !2242
  %9 = icmp eq ptr %8, @slot0, !dbg !2244
  br i1 %9, label %17, label %16, !dbg !2245

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2232, metadata !DIExpression()), !dbg !2236
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2246
  %13 = load ptr, ptr %12, align 8, !dbg !2246, !tbaa !2242
  tail call void @free(ptr noundef %13) #36, !dbg !2247
  %14 = add nuw nsw i64 %11, 1, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %14, metadata !2232, metadata !DIExpression()), !dbg !2236
  %15 = icmp eq i64 %14, %5, !dbg !2237
  br i1 %15, label %6, label %10, !dbg !2239, !llvm.loop !2249

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #36, !dbg !2251
  store i64 256, ptr @slotvec0, align 8, !dbg !2253, !tbaa !2254
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2255, !tbaa !2242
  br label %17, !dbg !2256

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2257
  br i1 %18, label %20, label %19, !dbg !2259

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #36, !dbg !2260
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2262, !tbaa !754
  br label %20, !dbg !2263

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2264, !tbaa !815
  ret void, !dbg !2265
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2266 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2271, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata ptr %1, metadata !2272, metadata !DIExpression()), !dbg !2273
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2274
  ret ptr %3, !dbg !2275
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2276 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2280, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata ptr %1, metadata !2281, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i64 %2, metadata !2282, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata ptr %3, metadata !2283, metadata !DIExpression()), !dbg !2296
  %6 = tail call ptr @__errno_location() #39, !dbg !2297
  %7 = load i32, ptr %6, align 4, !dbg !2297, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %7, metadata !2284, metadata !DIExpression()), !dbg !2296
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2298, !tbaa !754
  call void @llvm.dbg.value(metadata ptr %8, metadata !2285, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2286, metadata !DIExpression()), !dbg !2296
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2299
  br i1 %9, label %10, label %11, !dbg !2299

10:                                               ; preds = %4
  tail call void @abort() #38, !dbg !2301
  unreachable, !dbg !2301

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2302, !tbaa !815
  %13 = icmp sgt i32 %12, %0, !dbg !2303
  br i1 %13, label %32, label %14, !dbg !2304

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2305
  call void @llvm.dbg.value(metadata i1 %15, metadata !2287, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #36, !dbg !2307
  %16 = sext i32 %12 to i64, !dbg !2308
  call void @llvm.dbg.value(metadata i64 %16, metadata !2290, metadata !DIExpression()), !dbg !2306
  store i64 %16, ptr %5, align 8, !dbg !2309, !tbaa !2226
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2310
  %18 = add nuw nsw i32 %0, 1, !dbg !2311
  %19 = sub i32 %18, %12, !dbg !2312
  %20 = sext i32 %19 to i64, !dbg !2313
  call void @llvm.dbg.value(metadata ptr %5, metadata !2290, metadata !DIExpression(DW_OP_deref)), !dbg !2306
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #36, !dbg !2314
  call void @llvm.dbg.value(metadata ptr %21, metadata !2285, metadata !DIExpression()), !dbg !2296
  store ptr %21, ptr @slotvec, align 8, !dbg !2315, !tbaa !754
  br i1 %15, label %22, label %23, !dbg !2316

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2317, !tbaa.struct !2319
  br label %23, !dbg !2320

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2321, !tbaa !815
  %25 = sext i32 %24 to i64, !dbg !2322
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2322
  %27 = load i64, ptr %5, align 8, !dbg !2323, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %27, metadata !2290, metadata !DIExpression()), !dbg !2306
  %28 = sub nsw i64 %27, %25, !dbg !2324
  %29 = shl i64 %28, 4, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %26, metadata !1693, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !1696, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %29, metadata !1697, metadata !DIExpression()), !dbg !2326
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #36, !dbg !2328
  %30 = load i64, ptr %5, align 8, !dbg !2329, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %30, metadata !2290, metadata !DIExpression()), !dbg !2306
  %31 = trunc i64 %30 to i32, !dbg !2329
  store i32 %31, ptr @nslots, align 4, !dbg !2330, !tbaa !815
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #36, !dbg !2331
  br label %32, !dbg !2332

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2296
  call void @llvm.dbg.value(metadata ptr %33, metadata !2285, metadata !DIExpression()), !dbg !2296
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2333
  %36 = load i64, ptr %35, align 8, !dbg !2334, !tbaa !2254
  call void @llvm.dbg.value(metadata i64 %36, metadata !2291, metadata !DIExpression()), !dbg !2335
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2336
  %38 = load ptr, ptr %37, align 8, !dbg !2336, !tbaa !2242
  call void @llvm.dbg.value(metadata ptr %38, metadata !2293, metadata !DIExpression()), !dbg !2335
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2337
  %40 = load i32, ptr %39, align 4, !dbg !2337, !tbaa !1536
  %41 = or i32 %40, 1, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %41, metadata !2294, metadata !DIExpression()), !dbg !2335
  %42 = load i32, ptr %3, align 8, !dbg !2339, !tbaa !1486
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2340
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2341
  %45 = load ptr, ptr %44, align 8, !dbg !2341, !tbaa !1557
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2342
  %47 = load ptr, ptr %46, align 8, !dbg !2342, !tbaa !1560
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %48, metadata !2295, metadata !DIExpression()), !dbg !2335
  %49 = icmp ugt i64 %36, %48, !dbg !2344
  br i1 %49, label %60, label %50, !dbg !2346

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %51, metadata !2291, metadata !DIExpression()), !dbg !2335
  store i64 %51, ptr %35, align 8, !dbg !2349, !tbaa !2254
  %52 = icmp eq ptr %38, @slot0, !dbg !2350
  br i1 %52, label %54, label %53, !dbg !2352

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #36, !dbg !2353
  br label %54, !dbg !2353

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2354
  call void @llvm.dbg.value(metadata ptr %55, metadata !2293, metadata !DIExpression()), !dbg !2335
  store ptr %55, ptr %37, align 8, !dbg !2355, !tbaa !2242
  %56 = load i32, ptr %3, align 8, !dbg !2356, !tbaa !1486
  %57 = load ptr, ptr %44, align 8, !dbg !2357, !tbaa !1557
  %58 = load ptr, ptr %46, align 8, !dbg !2358, !tbaa !1560
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2359
  br label %60, !dbg !2360

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2335
  call void @llvm.dbg.value(metadata ptr %61, metadata !2293, metadata !DIExpression()), !dbg !2335
  store i32 %7, ptr %6, align 4, !dbg !2361, !tbaa !815
  ret ptr %61, !dbg !2362
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2363 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata ptr %1, metadata !2368, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.value(metadata i64 %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2371
  ret ptr %4, !dbg !2372
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2373 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 0, metadata !2271, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata ptr %0, metadata !2272, metadata !DIExpression()), !dbg !2377
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2379
  ret ptr %2, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2381 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2385, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i64 %1, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata ptr %0, metadata !2368, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()), !dbg !2388
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2390
  ret ptr %3, !dbg !2391
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2392 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata ptr %2, metadata !2398, metadata !DIExpression()), !dbg !2400
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2401
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2399, metadata !DIExpression()), !dbg !2402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2415, !alias.scope !2403
  %5 = icmp eq i32 %1, 10, !dbg !2416
  br i1 %5, label %6, label %7, !dbg !2418

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2419, !noalias !2403
  unreachable, !dbg !2419

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2420, !tbaa !1486, !alias.scope !2403
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2421
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2422
  ret ptr %8, !dbg !2423
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2424 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2428, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %1, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata ptr %2, metadata !2430, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i64 %3, metadata !2431, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2434
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2432, metadata !DIExpression()), !dbg !2435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2436), !dbg !2439
  call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2440
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2412, metadata !DIExpression()), !dbg !2442
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2442, !alias.scope !2436
  %6 = icmp eq i32 %1, 10, !dbg !2443
  br i1 %6, label %7, label %8, !dbg !2444

7:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2445, !noalias !2436
  unreachable, !dbg !2445

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2446, !tbaa !1486, !alias.scope !2436
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2447
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2448
  ret ptr %9, !dbg !2449
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2450 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2454, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata ptr %1, metadata !2455, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i32 0, metadata !2396, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata ptr %1, metadata !2398, metadata !DIExpression()), !dbg !2457
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2399, metadata !DIExpression()), !dbg !2460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2412, metadata !DIExpression()), !dbg !2467
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2467, !alias.scope !2461
  %4 = icmp eq i32 %0, 10, !dbg !2468
  br i1 %4, label %5, label %6, !dbg !2469

5:                                                ; preds = %2
  tail call void @abort() #38, !dbg !2470, !noalias !2461
  unreachable, !dbg !2470

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2471, !tbaa !1486, !alias.scope !2461
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2472
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2473
  ret ptr %7, !dbg !2474
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2475 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata ptr %1, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %2, metadata !2481, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 0, metadata !2428, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %0, metadata !2429, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata ptr %1, metadata !2430, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i64 %2, metadata !2431, metadata !DIExpression()), !dbg !2483
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2485
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2432, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2491
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2412, metadata !DIExpression()), !dbg !2493
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2493, !alias.scope !2487
  %5 = icmp eq i32 %0, 10, !dbg !2494
  br i1 %5, label %6, label %7, !dbg !2495

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2496, !noalias !2487
  unreachable, !dbg !2496

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2497, !tbaa !1486, !alias.scope !2487
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2498
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2499
  ret ptr %8, !dbg !2500
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2501 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i64 %1, metadata !2506, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.value(metadata i8 %2, metadata !2507, metadata !DIExpression()), !dbg !2509
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2508, metadata !DIExpression()), !dbg !2511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2512, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %2, metadata !1504, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i8 %2, metadata !1506, metadata !DIExpression()), !dbg !2514
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2516
  %6 = lshr i8 %2, 5, !dbg !2517
  %7 = zext i8 %6 to i64, !dbg !2517
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2518
  call void @llvm.dbg.value(metadata ptr %8, metadata !1507, metadata !DIExpression()), !dbg !2514
  %9 = and i8 %2, 31, !dbg !2519
  %10 = zext i8 %9 to i32, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %10, metadata !1509, metadata !DIExpression()), !dbg !2514
  %11 = load i32, ptr %8, align 4, !dbg !2520, !tbaa !815
  %12 = lshr i32 %11, %10, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %12, metadata !1510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2514
  %13 = and i32 %12, 1, !dbg !2522
  %14 = xor i32 %13, 1, !dbg !2522
  %15 = shl nuw i32 %14, %10, !dbg !2523
  %16 = xor i32 %15, %11, !dbg !2524
  store i32 %16, ptr %8, align 4, !dbg !2524, !tbaa !815
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2525
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2526
  ret ptr %17, !dbg !2527
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2528 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8 %1, metadata !2533, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 -1, metadata !2506, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %1, metadata !2507, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2508, metadata !DIExpression()), !dbg !2538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2539, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %1, metadata !1504, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i8 %1, metadata !1506, metadata !DIExpression()), !dbg !2540
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2542
  %5 = lshr i8 %1, 5, !dbg !2543
  %6 = zext i8 %5 to i64, !dbg !2543
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2544
  call void @llvm.dbg.value(metadata ptr %7, metadata !1507, metadata !DIExpression()), !dbg !2540
  %8 = and i8 %1, 31, !dbg !2545
  %9 = zext i8 %8 to i32, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %9, metadata !1509, metadata !DIExpression()), !dbg !2540
  %10 = load i32, ptr %7, align 4, !dbg !2546, !tbaa !815
  %11 = lshr i32 %10, %9, !dbg !2547
  call void @llvm.dbg.value(metadata i32 %11, metadata !1510, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2540
  %12 = and i32 %11, 1, !dbg !2548
  %13 = xor i32 %12, 1, !dbg !2548
  %14 = shl nuw i32 %13, %9, !dbg !2549
  %15 = xor i32 %14, %10, !dbg !2550
  store i32 %15, ptr %7, align 4, !dbg !2550, !tbaa !815
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2551
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2552
  ret ptr %16, !dbg !2553
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2554 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2556, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.value(metadata ptr %0, metadata !2532, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 58, metadata !2533, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 -1, metadata !2506, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8 58, metadata !2507, metadata !DIExpression()), !dbg !2560
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #36, !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2508, metadata !DIExpression()), !dbg !2563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2564, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %2, metadata !1503, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2565
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2567
  call void @llvm.dbg.value(metadata ptr %3, metadata !1507, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2565
  %4 = load i32, ptr %3, align 4, !dbg !2568, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %4, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2565
  %5 = or i32 %4, 67108864, !dbg !2569
  store i32 %5, ptr %3, align 4, !dbg !2569, !tbaa !815
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2570
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #36, !dbg !2571
  ret ptr %6, !dbg !2572
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2573 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2575, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata ptr %0, metadata !2505, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2506, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8 58, metadata !2507, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #36, !dbg !2580
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2508, metadata !DIExpression()), !dbg !2581
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2582, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %3, metadata !1503, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2583
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2585
  call void @llvm.dbg.value(metadata ptr %4, metadata !1507, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2583
  %5 = load i32, ptr %4, align 4, !dbg !2586, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %5, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2583
  %6 = or i32 %5, 67108864, !dbg !2587
  store i32 %6, ptr %4, align 4, !dbg !2587, !tbaa !815
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2588
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #36, !dbg !2589
  ret ptr %7, !dbg !2590
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2591 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32 %1, metadata !2594, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata ptr %2, metadata !2595, metadata !DIExpression()), !dbg !2599
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2596, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2602
  %5 = icmp eq i32 %1, 10, !dbg !2603
  br i1 %5, label %6, label %7, !dbg !2604

6:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2605, !noalias !2606
  unreachable, !dbg !2605

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2602
  store i32 %1, ptr %4, align 8, !dbg !2609, !tbaa.struct !2513
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2609
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2609
  call void @llvm.dbg.value(metadata ptr %4, metadata !1503, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 58, metadata !1504, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 1, metadata !1505, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 58, metadata !1506, metadata !DIExpression()), !dbg !2610
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2612
  call void @llvm.dbg.value(metadata ptr %9, metadata !1507, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 26, metadata !1509, metadata !DIExpression()), !dbg !2610
  %10 = load i32, ptr %9, align 4, !dbg !2613, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %10, metadata !1510, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2610
  %11 = or i32 %10, 67108864, !dbg !2614
  store i32 %11, ptr %9, align 4, !dbg !2614, !tbaa !815
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2615
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2616
  ret ptr %12, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2618 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2622, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %1, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %2, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata ptr %3, metadata !2625, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata ptr %1, metadata !2632, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()), !dbg !2637
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2636, metadata !DIExpression()), !dbg !2640
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2641, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2642
  store i32 10, ptr %5, align 8, !dbg !2644, !tbaa !1486
  %6 = icmp ne ptr %1, null, !dbg !2645
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2646
  br i1 %8, label %10, label %9, !dbg !2646

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2647
  unreachable, !dbg !2647

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2648
  store ptr %1, ptr %11, align 8, !dbg !2649, !tbaa !1557
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2650
  store ptr %2, ptr %12, align 8, !dbg !2651, !tbaa !1560
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2652
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2653
  ret ptr %13, !dbg !2654
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2628 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %1, metadata !2632, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %2, metadata !2633, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata ptr %3, metadata !2634, metadata !DIExpression()), !dbg !2655
  call void @llvm.dbg.value(metadata i64 %4, metadata !2635, metadata !DIExpression()), !dbg !2655
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #36, !dbg !2656
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2636, metadata !DIExpression()), !dbg !2657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2658, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %1, metadata !1544, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !2659
  store i32 10, ptr %6, align 8, !dbg !2661, !tbaa !1486
  %7 = icmp ne ptr %1, null, !dbg !2662
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2663
  br i1 %9, label %11, label %10, !dbg !2663

10:                                               ; preds = %5
  tail call void @abort() #38, !dbg !2664
  unreachable, !dbg !2664

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2665
  store ptr %1, ptr %12, align 8, !dbg !2666, !tbaa !1557
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2667
  store ptr %2, ptr %13, align 8, !dbg !2668, !tbaa !1560
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2669
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #36, !dbg !2670
  ret ptr %14, !dbg !2671
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2672 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2676, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %1, metadata !2677, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata ptr %2, metadata !2678, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %0, metadata !2623, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %1, metadata !2624, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata ptr %2, metadata !2625, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %0, metadata !2632, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %1, metadata !2633, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()), !dbg !2682
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #36, !dbg !2684
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2636, metadata !DIExpression()), !dbg !2685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2686, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %1, metadata !1545, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata ptr %4, metadata !1543, metadata !DIExpression()), !dbg !2687
  store i32 10, ptr %4, align 8, !dbg !2689, !tbaa !1486
  %5 = icmp ne ptr %0, null, !dbg !2690
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2691
  br i1 %7, label %9, label %8, !dbg !2691

8:                                                ; preds = %3
  tail call void @abort() #38, !dbg !2692
  unreachable, !dbg !2692

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2693
  store ptr %0, ptr %10, align 8, !dbg !2694, !tbaa !1557
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2695
  store ptr %1, ptr %11, align 8, !dbg !2696, !tbaa !1560
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2697
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #36, !dbg !2698
  ret ptr %12, !dbg !2699
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2700 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !2704, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %1, metadata !2705, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %2, metadata !2706, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 %3, metadata !2707, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %0, metadata !2632, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %1, metadata !2633, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i64 %3, metadata !2635, metadata !DIExpression()), !dbg !2709
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #36, !dbg !2711
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2636, metadata !DIExpression()), !dbg !2712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2713, !tbaa.struct !2513
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %0, metadata !1544, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %1, metadata !1545, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %5, metadata !1543, metadata !DIExpression()), !dbg !2714
  store i32 10, ptr %5, align 8, !dbg !2716, !tbaa !1486
  %6 = icmp ne ptr %0, null, !dbg !2717
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2718
  br i1 %8, label %10, label %9, !dbg !2718

9:                                                ; preds = %4
  tail call void @abort() #38, !dbg !2719
  unreachable, !dbg !2719

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2720
  store ptr %0, ptr %11, align 8, !dbg !2721, !tbaa !1557
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2722
  store ptr %1, ptr %12, align 8, !dbg !2723, !tbaa !1560
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2724
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #36, !dbg !2725
  ret ptr %13, !dbg !2726
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2727 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %1, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %2, metadata !2733, metadata !DIExpression()), !dbg !2734
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2735
  ret ptr %4, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2737 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i64 %1, metadata !2742, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2731, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata ptr %0, metadata !2732, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %1, metadata !2733, metadata !DIExpression()), !dbg !2744
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2746
  ret ptr %3, !dbg !2747
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2748 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2752, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata ptr %1, metadata !2753, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i32 %0, metadata !2731, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata ptr %1, metadata !2732, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i64 -1, metadata !2733, metadata !DIExpression()), !dbg !2755
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2757
  ret ptr %3, !dbg !2758
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 0, metadata !2752, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata ptr %0, metadata !2753, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.value(metadata i32 0, metadata !2731, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata ptr %0, metadata !2732, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i64 -1, metadata !2733, metadata !DIExpression()), !dbg !2767
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2769
  ret ptr %2, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2771 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2810, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %1, metadata !2811, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %2, metadata !2812, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %3, metadata !2813, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %5, metadata !2815, metadata !DIExpression()), !dbg !2816
  %7 = icmp eq ptr %1, null, !dbg !2817
  br i1 %7, label %10, label %8, !dbg !2819

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.76, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #36, !dbg !2820
  br label %12, !dbg !2820

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.77, ptr noundef %2, ptr noundef %3) #36, !dbg !2821
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.3.79, i32 noundef 5) #36, !dbg !2822
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #36, !dbg !2822
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2823
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.5.81, i32 noundef 5) #36, !dbg !2824
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.82) #36, !dbg !2824
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %0), !dbg !2825
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
  ], !dbg !2826

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.7.83, i32 noundef 5) #36, !dbg !2827
  %21 = load ptr, ptr %4, align 8, !dbg !2827, !tbaa !754
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #36, !dbg !2827
  br label %147, !dbg !2829

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.8.84, i32 noundef 5) #36, !dbg !2830
  %25 = load ptr, ptr %4, align 8, !dbg !2830, !tbaa !754
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2830
  %27 = load ptr, ptr %26, align 8, !dbg !2830, !tbaa !754
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #36, !dbg !2830
  br label %147, !dbg !2831

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.9.85, i32 noundef 5) #36, !dbg !2832
  %31 = load ptr, ptr %4, align 8, !dbg !2832, !tbaa !754
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2832
  %33 = load ptr, ptr %32, align 8, !dbg !2832, !tbaa !754
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2832
  %35 = load ptr, ptr %34, align 8, !dbg !2832, !tbaa !754
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #36, !dbg !2832
  br label %147, !dbg !2833

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.10.86, i32 noundef 5) #36, !dbg !2834
  %39 = load ptr, ptr %4, align 8, !dbg !2834, !tbaa !754
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2834
  %41 = load ptr, ptr %40, align 8, !dbg !2834, !tbaa !754
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2834
  %43 = load ptr, ptr %42, align 8, !dbg !2834, !tbaa !754
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2834
  %45 = load ptr, ptr %44, align 8, !dbg !2834, !tbaa !754
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #36, !dbg !2834
  br label %147, !dbg !2835

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.11.87, i32 noundef 5) #36, !dbg !2836
  %49 = load ptr, ptr %4, align 8, !dbg !2836, !tbaa !754
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2836
  %51 = load ptr, ptr %50, align 8, !dbg !2836, !tbaa !754
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2836
  %53 = load ptr, ptr %52, align 8, !dbg !2836, !tbaa !754
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2836
  %55 = load ptr, ptr %54, align 8, !dbg !2836, !tbaa !754
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2836
  %57 = load ptr, ptr %56, align 8, !dbg !2836, !tbaa !754
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #36, !dbg !2836
  br label %147, !dbg !2837

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.12.88, i32 noundef 5) #36, !dbg !2838
  %61 = load ptr, ptr %4, align 8, !dbg !2838, !tbaa !754
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2838
  %63 = load ptr, ptr %62, align 8, !dbg !2838, !tbaa !754
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2838
  %65 = load ptr, ptr %64, align 8, !dbg !2838, !tbaa !754
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2838
  %67 = load ptr, ptr %66, align 8, !dbg !2838, !tbaa !754
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2838
  %69 = load ptr, ptr %68, align 8, !dbg !2838, !tbaa !754
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2838
  %71 = load ptr, ptr %70, align 8, !dbg !2838, !tbaa !754
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #36, !dbg !2838
  br label %147, !dbg !2839

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.13.89, i32 noundef 5) #36, !dbg !2840
  %75 = load ptr, ptr %4, align 8, !dbg !2840, !tbaa !754
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2840
  %77 = load ptr, ptr %76, align 8, !dbg !2840, !tbaa !754
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2840
  %79 = load ptr, ptr %78, align 8, !dbg !2840, !tbaa !754
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2840
  %81 = load ptr, ptr %80, align 8, !dbg !2840, !tbaa !754
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2840
  %83 = load ptr, ptr %82, align 8, !dbg !2840, !tbaa !754
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2840
  %85 = load ptr, ptr %84, align 8, !dbg !2840, !tbaa !754
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2840
  %87 = load ptr, ptr %86, align 8, !dbg !2840, !tbaa !754
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #36, !dbg !2840
  br label %147, !dbg !2841

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.14.90, i32 noundef 5) #36, !dbg !2842
  %91 = load ptr, ptr %4, align 8, !dbg !2842, !tbaa !754
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2842
  %93 = load ptr, ptr %92, align 8, !dbg !2842, !tbaa !754
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2842
  %95 = load ptr, ptr %94, align 8, !dbg !2842, !tbaa !754
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2842
  %97 = load ptr, ptr %96, align 8, !dbg !2842, !tbaa !754
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2842
  %99 = load ptr, ptr %98, align 8, !dbg !2842, !tbaa !754
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2842
  %101 = load ptr, ptr %100, align 8, !dbg !2842, !tbaa !754
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2842
  %103 = load ptr, ptr %102, align 8, !dbg !2842, !tbaa !754
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2842
  %105 = load ptr, ptr %104, align 8, !dbg !2842, !tbaa !754
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #36, !dbg !2842
  br label %147, !dbg !2843

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.15.91, i32 noundef 5) #36, !dbg !2844
  %109 = load ptr, ptr %4, align 8, !dbg !2844, !tbaa !754
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2844
  %111 = load ptr, ptr %110, align 8, !dbg !2844, !tbaa !754
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2844
  %113 = load ptr, ptr %112, align 8, !dbg !2844, !tbaa !754
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2844
  %115 = load ptr, ptr %114, align 8, !dbg !2844, !tbaa !754
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2844
  %117 = load ptr, ptr %116, align 8, !dbg !2844, !tbaa !754
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2844
  %119 = load ptr, ptr %118, align 8, !dbg !2844, !tbaa !754
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2844
  %121 = load ptr, ptr %120, align 8, !dbg !2844, !tbaa !754
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2844
  %123 = load ptr, ptr %122, align 8, !dbg !2844, !tbaa !754
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2844
  %125 = load ptr, ptr %124, align 8, !dbg !2844, !tbaa !754
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #36, !dbg !2844
  br label %147, !dbg !2845

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.16.92, i32 noundef 5) #36, !dbg !2846
  %129 = load ptr, ptr %4, align 8, !dbg !2846, !tbaa !754
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2846
  %131 = load ptr, ptr %130, align 8, !dbg !2846, !tbaa !754
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2846
  %133 = load ptr, ptr %132, align 8, !dbg !2846, !tbaa !754
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2846
  %135 = load ptr, ptr %134, align 8, !dbg !2846, !tbaa !754
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2846
  %137 = load ptr, ptr %136, align 8, !dbg !2846, !tbaa !754
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2846
  %139 = load ptr, ptr %138, align 8, !dbg !2846, !tbaa !754
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2846
  %141 = load ptr, ptr %140, align 8, !dbg !2846, !tbaa !754
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2846
  %143 = load ptr, ptr %142, align 8, !dbg !2846, !tbaa !754
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2846
  %145 = load ptr, ptr %144, align 8, !dbg !2846, !tbaa !754
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #36, !dbg !2846
  br label %147, !dbg !2847

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2848
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2849 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2853, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %1, metadata !2854, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %2, metadata !2855, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %3, metadata !2856, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata ptr %4, metadata !2857, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i64 0, metadata !2858, metadata !DIExpression()), !dbg !2859
  br label %6, !dbg !2860

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2862
  call void @llvm.dbg.value(metadata i64 %7, metadata !2858, metadata !DIExpression()), !dbg !2859
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2863
  %9 = load ptr, ptr %8, align 8, !dbg !2863, !tbaa !754
  %10 = icmp eq ptr %9, null, !dbg !2865
  %11 = add i64 %7, 1, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %11, metadata !2858, metadata !DIExpression()), !dbg !2859
  br i1 %10, label %12, label %6, !dbg !2865, !llvm.loop !2867

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2869
  ret void, !dbg !2870
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2871 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2883, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr %1, metadata !2884, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr %2, metadata !2885, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr %3, metadata !2886, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata ptr %4, metadata !2887, metadata !DIExpression()), !dbg !2891
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #36, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2889, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.value(metadata i64 0, metadata !2888, metadata !DIExpression()), !dbg !2891
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !2888, metadata !DIExpression()), !dbg !2891
  %10 = icmp ult i32 %9, 41, !dbg !2894
  br i1 %10, label %11, label %16, !dbg !2894

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2894
  %13 = zext i32 %9 to i64, !dbg !2894
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2894
  %15 = add nuw nsw i32 %9, 8, !dbg !2894
  store i32 %15, ptr %4, align 8, !dbg !2894
  br label %19, !dbg !2894

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2894
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2894
  store ptr %18, ptr %7, align 8, !dbg !2894
  br label %19, !dbg !2894

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2894
  %22 = load ptr, ptr %21, align 8, !dbg !2894
  store ptr %22, ptr %6, align 16, !dbg !2897, !tbaa !754
  %23 = icmp eq ptr %22, null, !dbg !2898
  br i1 %23, label %128, label %24, !dbg !2899

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 1, metadata !2888, metadata !DIExpression()), !dbg !2891
  %25 = icmp ult i32 %20, 41, !dbg !2894
  br i1 %25, label %29, label %26, !dbg !2894

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2894
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2894
  store ptr %28, ptr %7, align 8, !dbg !2894
  br label %34, !dbg !2894

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2894
  %31 = zext i32 %20 to i64, !dbg !2894
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2894
  %33 = add nuw nsw i32 %20, 8, !dbg !2894
  store i32 %33, ptr %4, align 8, !dbg !2894
  br label %34, !dbg !2894

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2894
  %37 = load ptr, ptr %36, align 8, !dbg !2894
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2900
  store ptr %37, ptr %38, align 8, !dbg !2897, !tbaa !754
  %39 = icmp eq ptr %37, null, !dbg !2898
  br i1 %39, label %128, label %40, !dbg !2899

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 2, metadata !2888, metadata !DIExpression()), !dbg !2891
  %41 = icmp ult i32 %35, 41, !dbg !2894
  br i1 %41, label %45, label %42, !dbg !2894

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2894
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2894
  store ptr %44, ptr %7, align 8, !dbg !2894
  br label %50, !dbg !2894

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2894
  %47 = zext i32 %35 to i64, !dbg !2894
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2894
  %49 = add nuw nsw i32 %35, 8, !dbg !2894
  store i32 %49, ptr %4, align 8, !dbg !2894
  br label %50, !dbg !2894

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2894
  %53 = load ptr, ptr %52, align 8, !dbg !2894
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2900
  store ptr %53, ptr %54, align 16, !dbg !2897, !tbaa !754
  %55 = icmp eq ptr %53, null, !dbg !2898
  br i1 %55, label %128, label %56, !dbg !2899

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 3, metadata !2888, metadata !DIExpression()), !dbg !2891
  %57 = icmp ult i32 %51, 41, !dbg !2894
  br i1 %57, label %61, label %58, !dbg !2894

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2894
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2894
  store ptr %60, ptr %7, align 8, !dbg !2894
  br label %66, !dbg !2894

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2894
  %63 = zext i32 %51 to i64, !dbg !2894
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2894
  %65 = add nuw nsw i32 %51, 8, !dbg !2894
  store i32 %65, ptr %4, align 8, !dbg !2894
  br label %66, !dbg !2894

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2894
  %69 = load ptr, ptr %68, align 8, !dbg !2894
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2900
  store ptr %69, ptr %70, align 8, !dbg !2897, !tbaa !754
  %71 = icmp eq ptr %69, null, !dbg !2898
  br i1 %71, label %128, label %72, !dbg !2899

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 4, metadata !2888, metadata !DIExpression()), !dbg !2891
  %73 = icmp ult i32 %67, 41, !dbg !2894
  br i1 %73, label %77, label %74, !dbg !2894

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2894
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2894
  store ptr %76, ptr %7, align 8, !dbg !2894
  br label %82, !dbg !2894

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2894
  %79 = zext i32 %67 to i64, !dbg !2894
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2894
  %81 = add nuw nsw i32 %67, 8, !dbg !2894
  store i32 %81, ptr %4, align 8, !dbg !2894
  br label %82, !dbg !2894

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2894
  %85 = load ptr, ptr %84, align 8, !dbg !2894
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2900
  store ptr %85, ptr %86, align 16, !dbg !2897, !tbaa !754
  %87 = icmp eq ptr %85, null, !dbg !2898
  br i1 %87, label %128, label %88, !dbg !2899

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !2888, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 5, metadata !2888, metadata !DIExpression()), !dbg !2891
  %89 = icmp ult i32 %83, 41, !dbg !2894
  br i1 %89, label %93, label %90, !dbg !2894

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2894
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2894
  store ptr %92, ptr %7, align 8, !dbg !2894
  br label %98, !dbg !2894

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2894
  %95 = zext i32 %83 to i64, !dbg !2894
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2894
  %97 = add nuw nsw i32 %83, 8, !dbg !2894
  store i32 %97, ptr %4, align 8, !dbg !2894
  br label %98, !dbg !2894

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2894
  %100 = load ptr, ptr %99, align 8, !dbg !2894
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2900
  store ptr %100, ptr %101, align 8, !dbg !2897, !tbaa !754
  %102 = icmp eq ptr %100, null, !dbg !2898
  br i1 %102, label %128, label %103, !dbg !2899

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !2888, metadata !DIExpression()), !dbg !2891
  %104 = load ptr, ptr %7, align 8, !dbg !2894
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2894
  store ptr %105, ptr %7, align 8, !dbg !2894
  %106 = load ptr, ptr %104, align 8, !dbg !2894
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2900
  store ptr %106, ptr %107, align 16, !dbg !2897, !tbaa !754
  %108 = icmp eq ptr %106, null, !dbg !2898
  br i1 %108, label %128, label %109, !dbg !2899

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !2888, metadata !DIExpression()), !dbg !2891
  %110 = load ptr, ptr %7, align 8, !dbg !2894
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2894
  store ptr %111, ptr %7, align 8, !dbg !2894
  %112 = load ptr, ptr %110, align 8, !dbg !2894
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2900
  store ptr %112, ptr %113, align 8, !dbg !2897, !tbaa !754
  %114 = icmp eq ptr %112, null, !dbg !2898
  br i1 %114, label %128, label %115, !dbg !2899

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !2888, metadata !DIExpression()), !dbg !2891
  %116 = load ptr, ptr %7, align 8, !dbg !2894
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2894
  store ptr %117, ptr %7, align 8, !dbg !2894
  %118 = load ptr, ptr %116, align 8, !dbg !2894
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2900
  store ptr %118, ptr %119, align 16, !dbg !2897, !tbaa !754
  %120 = icmp eq ptr %118, null, !dbg !2898
  br i1 %120, label %128, label %121, !dbg !2899

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !2888, metadata !DIExpression()), !dbg !2891
  %122 = load ptr, ptr %7, align 8, !dbg !2894
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2894
  store ptr %123, ptr %7, align 8, !dbg !2894
  %124 = load ptr, ptr %122, align 8, !dbg !2894
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2900
  store ptr %124, ptr %125, align 8, !dbg !2897, !tbaa !754
  %126 = icmp eq ptr %124, null, !dbg !2898
  %127 = select i1 %126, i64 9, i64 10, !dbg !2899
  br label %128, !dbg !2899

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2901
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2902
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #36, !dbg !2903
  ret void, !dbg !2903
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2904 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !2908, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %1, metadata !2909, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %2, metadata !2910, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata ptr %3, metadata !2911, metadata !DIExpression()), !dbg !2917
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #36, !dbg !2918
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2912, metadata !DIExpression()), !dbg !2919
  call void @llvm.va_start(ptr nonnull %5), !dbg !2920
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2921
  call void @llvm.va_end(ptr nonnull %5), !dbg !2922
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #36, !dbg !2923
  ret void, !dbg !2923
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2924 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2925, !tbaa !754
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.80, ptr noundef %1), !dbg !2925
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.17.97, i32 noundef 5) #36, !dbg !2926
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.98) #36, !dbg !2926
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.19.99, i32 noundef 5) #36, !dbg !2927
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #36, !dbg !2927
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.78, ptr noundef nonnull @.str.22.100, i32 noundef 5) #36, !dbg !2928
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #36, !dbg !2928
  ret void, !dbg !2929
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2930 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2935, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %1, metadata !2936, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %2, metadata !2937, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2944
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2946
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !2952
  %5 = icmp eq ptr %4, null, !dbg !2954
  br i1 %5, label %6, label %7, !dbg !2956

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2957
  unreachable, !dbg !2957

7:                                                ; preds = %3
  ret ptr %4, !dbg !2958
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2940 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2942, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !2959
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !2960
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !2961
  %5 = icmp eq ptr %4, null, !dbg !2963
  br i1 %5, label %6, label %7, !dbg !2964

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !2965
  unreachable, !dbg !2965

7:                                                ; preds = %3
  ret ptr %4, !dbg !2966
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2967 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()), !dbg !2972
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2973
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !2974
  %3 = icmp eq ptr %2, null, !dbg !2976
  br i1 %3, label %4, label %5, !dbg !2977

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2978
  unreachable, !dbg !2978

5:                                                ; preds = %1
  ret ptr %2, !dbg !2979
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !2980 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !2981 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %0, metadata !2987, metadata !DIExpression()), !dbg !2991
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !2994
  %3 = icmp eq ptr %2, null, !dbg !2996
  br i1 %3, label %4, label %5, !dbg !2997

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !2998
  unreachable, !dbg !2998

5:                                                ; preds = %1
  ret ptr %2, !dbg !2999
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3000 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3004, metadata !DIExpression()), !dbg !3005
  call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()), !dbg !3006
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3008
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !3009
  %3 = icmp eq ptr %2, null, !dbg !3011
  br i1 %3, label %4, label %5, !dbg !3012

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3013
  unreachable, !dbg !3013

5:                                                ; preds = %1
  ret ptr %2, !dbg !3014
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3015 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3019, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %1, metadata !3020, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3027
  %3 = icmp eq i64 %1, 0, !dbg !3029
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3029
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3030
  call void @llvm.dbg.value(metadata ptr %5, metadata !2947, metadata !DIExpression()), !dbg !3031
  %6 = icmp eq ptr %5, null, !dbg !3033
  br i1 %6, label %7, label %8, !dbg !3034

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3035
  unreachable, !dbg !3035

8:                                                ; preds = %2
  ret ptr %5, !dbg !3036
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3037 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata ptr %0, metadata !3045, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata i64 %1, metadata !3048, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3026, metadata !DIExpression()), !dbg !3051
  %3 = icmp eq i64 %1, 0, !dbg !3053
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3053
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #42, !dbg !3054
  call void @llvm.dbg.value(metadata ptr %5, metadata !2947, metadata !DIExpression()), !dbg !3055
  %6 = icmp eq ptr %5, null, !dbg !3057
  br i1 %6, label %7, label %8, !dbg !3058

7:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3059
  unreachable, !dbg !3059

8:                                                ; preds = %2
  ret ptr %5, !dbg !3060
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3061 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3065, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %1, metadata !3066, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata i64 %2, metadata !3067, metadata !DIExpression()), !dbg !3068
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3072, metadata !DIExpression()), !dbg !3074
  call void @llvm.dbg.value(metadata i64 %2, metadata !3073, metadata !DIExpression()), !dbg !3074
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #36, !dbg !3076
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3077
  %5 = icmp eq ptr %4, null, !dbg !3079
  br i1 %5, label %6, label %7, !dbg !3080

6:                                                ; preds = %3
  tail call void @xalloc_die() #38, !dbg !3081
  unreachable, !dbg !3081

7:                                                ; preds = %3
  ret ptr %4, !dbg !3082
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3083 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3087, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata ptr null, metadata !2939, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %0, metadata !2942, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.value(metadata i64 %1, metadata !2943, metadata !DIExpression()), !dbg !3090
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3092
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3093
  %4 = icmp eq ptr %3, null, !dbg !3095
  br i1 %4, label %5, label %6, !dbg !3096

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3097
  unreachable, !dbg !3097

6:                                                ; preds = %2
  ret ptr %3, !dbg !3098
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3099 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3103, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata ptr null, metadata !3065, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %0, metadata !3066, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata i64 %1, metadata !3067, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.value(metadata ptr null, metadata !3069, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %0, metadata !3072, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()), !dbg !3108
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #36, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3111
  %4 = icmp eq ptr %3, null, !dbg !3113
  br i1 %4, label %5, label %6, !dbg !3114

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3115
  unreachable, !dbg !3115

6:                                                ; preds = %2
  ret ptr %3, !dbg !3116
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3121, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %1, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr %0, metadata !690, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %1, metadata !691, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 1, metadata !692, metadata !DIExpression()), !dbg !3124
  %3 = load i64, ptr %1, align 8, !dbg !3126, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %3, metadata !693, metadata !DIExpression()), !dbg !3124
  %4 = icmp eq ptr %0, null, !dbg !3127
  br i1 %4, label %5, label %8, !dbg !3129

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3130
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3133
  br label %15, !dbg !3133

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3134
  %10 = add nuw i64 %9, 1, !dbg !3134
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3134
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3134
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %13, metadata !693, metadata !DIExpression()), !dbg !3124
  br i1 %12, label %14, label %15, !dbg !3137

14:                                               ; preds = %8
  tail call void @xalloc_die() #38, !dbg !3138
  unreachable, !dbg !3138

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3124
  call void @llvm.dbg.value(metadata i64 %16, metadata !693, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 %16, metadata !2942, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata i64 1, metadata !2943, metadata !DIExpression()), !dbg !3139
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #36, !dbg !3141
  call void @llvm.dbg.value(metadata ptr %17, metadata !2947, metadata !DIExpression()), !dbg !3142
  %18 = icmp eq ptr %17, null, !dbg !3144
  br i1 %18, label %19, label %20, !dbg !3145

19:                                               ; preds = %15
  tail call void @xalloc_die() #38, !dbg !3146
  unreachable, !dbg !3146

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !690, metadata !DIExpression()), !dbg !3124
  store i64 %16, ptr %1, align 8, !dbg !3147, !tbaa !2226
  ret ptr %17, !dbg !3148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !685 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !690, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %1, metadata !691, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata i64 %2, metadata !692, metadata !DIExpression()), !dbg !3149
  %4 = load i64, ptr %1, align 8, !dbg !3150, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %4, metadata !693, metadata !DIExpression()), !dbg !3149
  %5 = icmp eq ptr %0, null, !dbg !3151
  br i1 %5, label %6, label %13, !dbg !3152

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3153
  br i1 %7, label %8, label %20, !dbg !3154

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %9, metadata !693, metadata !DIExpression()), !dbg !3149
  %10 = icmp ugt i64 %2, 128, !dbg !3157
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3158
  call void @llvm.dbg.value(metadata i64 %12, metadata !693, metadata !DIExpression()), !dbg !3149
  br label %20, !dbg !3159

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3160
  %15 = add nuw i64 %14, 1, !dbg !3160
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3160
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3160
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %18, metadata !693, metadata !DIExpression()), !dbg !3149
  br i1 %17, label %19, label %20, !dbg !3161

19:                                               ; preds = %13
  tail call void @xalloc_die() #38, !dbg !3162
  unreachable, !dbg !3162

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3149
  call void @llvm.dbg.value(metadata i64 %21, metadata !693, metadata !DIExpression()), !dbg !3149
  call void @llvm.dbg.value(metadata ptr %0, metadata !2939, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %21, metadata !2942, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.value(metadata i64 %2, metadata !2943, metadata !DIExpression()), !dbg !3163
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #36, !dbg !3165
  call void @llvm.dbg.value(metadata ptr %22, metadata !2947, metadata !DIExpression()), !dbg !3166
  %23 = icmp eq ptr %22, null, !dbg !3168
  br i1 %23, label %24, label %25, !dbg !3169

24:                                               ; preds = %20
  tail call void @xalloc_die() #38, !dbg !3170
  unreachable, !dbg !3170

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !690, metadata !DIExpression()), !dbg !3149
  store i64 %21, ptr %1, align 8, !dbg !3171, !tbaa !2226
  ret ptr %22, !dbg !3172
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !697 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !705, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %1, metadata !706, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %4, metadata !709, metadata !DIExpression()), !dbg !3173
  %6 = load i64, ptr %1, align 8, !dbg !3174, !tbaa !2226
  call void @llvm.dbg.value(metadata i64 %6, metadata !710, metadata !DIExpression()), !dbg !3173
  %7 = ashr i64 %6, 1, !dbg !3175
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3175
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3175
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %10, metadata !711, metadata !DIExpression()), !dbg !3173
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %11, metadata !711, metadata !DIExpression()), !dbg !3173
  %12 = icmp sgt i64 %3, -1, !dbg !3178
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3180
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %15, metadata !711, metadata !DIExpression()), !dbg !3173
  %16 = icmp slt i64 %4, 0, !dbg !3181
  br i1 %16, label %17, label %30, !dbg !3181

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3181
  br i1 %18, label %19, label %24, !dbg !3181

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3181
  %21 = udiv i64 9223372036854775807, %20, !dbg !3181
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3181
  br i1 %23, label %46, label %43, !dbg !3181

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3181
  br i1 %25, label %43, label %26, !dbg !3181

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3181
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3181
  %29 = icmp ult i64 %28, %15, !dbg !3181
  br i1 %29, label %46, label %43, !dbg !3181

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3181
  br i1 %31, label %43, label %32, !dbg !3181

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3181
  br i1 %33, label %34, label %40, !dbg !3181

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3181
  br i1 %35, label %43, label %36, !dbg !3181

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3181
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3181
  %39 = icmp ult i64 %38, %4, !dbg !3181
  br i1 %39, label %46, label %43, !dbg !3181

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3181
  br i1 %42, label %46, label %43, !dbg !3181

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3173
  %44 = mul i64 %15, %4, !dbg !3181
  call void @llvm.dbg.value(metadata i64 %44, metadata !712, metadata !DIExpression()), !dbg !3173
  %45 = icmp slt i64 %44, 128, !dbg !3181
  br i1 %45, label %46, label %51, !dbg !3181

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !713, metadata !DIExpression()), !dbg !3173
  %48 = sdiv i64 %47, %4, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %48, metadata !711, metadata !DIExpression()), !dbg !3173
  %49 = srem i64 %47, %4, !dbg !3185
  %50 = sub nsw i64 %47, %49, !dbg !3186
  call void @llvm.dbg.value(metadata i64 %50, metadata !712, metadata !DIExpression()), !dbg !3173
  br label %51, !dbg !3187

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3173
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %53, metadata !712, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %52, metadata !711, metadata !DIExpression()), !dbg !3173
  %54 = icmp eq ptr %0, null, !dbg !3188
  br i1 %54, label %55, label %56, !dbg !3190

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !3191, !tbaa !2226
  br label %56, !dbg !3192

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !3193
  %58 = icmp slt i64 %57, %2, !dbg !3195
  br i1 %58, label %59, label %96, !dbg !3196

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3197
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !3197
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !3197
  call void @llvm.dbg.value(metadata i64 %62, metadata !711, metadata !DIExpression()), !dbg !3173
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !3198
  br i1 %65, label %95, label %66, !dbg !3198

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !3199

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !3199
  br i1 %68, label %69, label %74, !dbg !3199

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !3199
  %71 = udiv i64 9223372036854775807, %70, !dbg !3199
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !3199
  br i1 %73, label %95, label %93, !dbg !3199

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !3199
  br i1 %75, label %93, label %76, !dbg !3199

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !3199
  %78 = udiv i64 -9223372036854775808, %77, !dbg !3199
  %79 = icmp ult i64 %78, %62, !dbg !3199
  br i1 %79, label %95, label %93, !dbg !3199

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !3199
  br i1 %81, label %93, label %82, !dbg !3199

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !3199
  br i1 %83, label %84, label %90, !dbg !3199

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !3199
  br i1 %85, label %93, label %86, !dbg !3199

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !3199
  %88 = udiv i64 -9223372036854775808, %87, !dbg !3199
  %89 = icmp ult i64 %88, %4, !dbg !3199
  br i1 %89, label %95, label %93, !dbg !3199

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !3199
  br i1 %92, label %95, label %93, !dbg !3199

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !712, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3173
  %94 = mul i64 %62, %4, !dbg !3199
  call void @llvm.dbg.value(metadata i64 %94, metadata !712, metadata !DIExpression()), !dbg !3173
  br label %96, !dbg !3200

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #38, !dbg !3201
  unreachable, !dbg !3201

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !3173
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %98, metadata !712, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %97, metadata !711, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr %0, metadata !3019, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata i64 %98, metadata !3020, metadata !DIExpression()), !dbg !3202
  call void @llvm.dbg.value(metadata ptr %0, metadata !3022, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata i64 %98, metadata !3026, metadata !DIExpression()), !dbg !3204
  %99 = icmp eq i64 %98, 0, !dbg !3206
  %100 = select i1 %99, i64 1, i64 %98, !dbg !3206
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #42, !dbg !3207
  call void @llvm.dbg.value(metadata ptr %101, metadata !2947, metadata !DIExpression()), !dbg !3208
  %102 = icmp eq ptr %101, null, !dbg !3210
  br i1 %102, label %103, label %104, !dbg !3211

103:                                              ; preds = %96
  tail call void @xalloc_die() #38, !dbg !3212
  unreachable, !dbg !3212

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !705, metadata !DIExpression()), !dbg !3173
  store i64 %97, ptr %1, align 8, !dbg !3213, !tbaa !2226
  ret ptr %101, !dbg !3214
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3215 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 1, metadata !3222, metadata !DIExpression()), !dbg !3223
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3225
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !3226
  %3 = icmp eq ptr %2, null, !dbg !3228
  br i1 %3, label %4, label %5, !dbg !3229

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3230
  unreachable, !dbg !3230

5:                                                ; preds = %1
  ret ptr %2, !dbg !3231
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3232 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3220 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i64 %1, metadata !3222, metadata !DIExpression()), !dbg !3233
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3234
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3235
  %4 = icmp eq ptr %3, null, !dbg !3237
  br i1 %4, label %5, label %6, !dbg !3238

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3239
  unreachable, !dbg !3239

6:                                                ; preds = %2
  ret ptr %3, !dbg !3240
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3241 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3243, metadata !DIExpression()), !dbg !3244
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 1, metadata !3248, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i64 %0, metadata !3251, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %0, metadata !3251, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 1, metadata !3254, metadata !DIExpression()), !dbg !3255
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #44, !dbg !3257
  call void @llvm.dbg.value(metadata ptr %2, metadata !2947, metadata !DIExpression()), !dbg !3258
  %3 = icmp eq ptr %2, null, !dbg !3260
  br i1 %3, label %4, label %5, !dbg !3261

4:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3262
  unreachable, !dbg !3262

5:                                                ; preds = %1
  ret ptr %2, !dbg !3263
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3246 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3245, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3248, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %0, metadata !3251, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3251, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()), !dbg !3265
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #44, !dbg !3267
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3268
  %4 = icmp eq ptr %3, null, !dbg !3270
  br i1 %4, label %5, label %6, !dbg !3271

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3272
  unreachable, !dbg !3272

6:                                                ; preds = %2
  ret ptr %3, !dbg !3273
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3274 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %1, metadata !2971, metadata !DIExpression()), !dbg !3281
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3283
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3284
  %4 = icmp eq ptr %3, null, !dbg !3286
  br i1 %4, label %5, label %6, !dbg !3287

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3288
  unreachable, !dbg !3288

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3289, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3297
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3297
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3299
  ret ptr %3, !dbg !3300
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3301 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3305, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %1, metadata !2985, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()), !dbg !3310
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3312
  call void @llvm.dbg.value(metadata ptr %3, metadata !2947, metadata !DIExpression()), !dbg !3313
  %4 = icmp eq ptr %3, null, !dbg !3315
  br i1 %4, label %5, label %6, !dbg !3316

5:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3317
  unreachable, !dbg !3317

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3289, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3320
  ret ptr %3, !dbg !3321
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3322 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3326, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3329
  %3 = add nsw i64 %1, 1, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %3, metadata !2985, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i64 %3, metadata !2987, metadata !DIExpression()), !dbg !3333
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3335
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3336
  %5 = icmp eq ptr %4, null, !dbg !3338
  br i1 %5, label %6, label %7, !dbg !3339

6:                                                ; preds = %2
  tail call void @xalloc_die() #38, !dbg !3340
  unreachable, !dbg !3340

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3328, metadata !DIExpression()), !dbg !3329
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3341
  store i8 0, ptr %8, align 1, !dbg !3342, !tbaa !824
  call void @llvm.dbg.value(metadata ptr %4, metadata !3289, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #36, !dbg !3345
  ret ptr %4, !dbg !3346
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3347 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3349, metadata !DIExpression()), !dbg !3350
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #37, !dbg !3351
  %3 = add i64 %2, 1, !dbg !3352
  call void @llvm.dbg.value(metadata ptr %0, metadata !3278, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !3279, metadata !DIExpression()), !dbg !3353
  call void @llvm.dbg.value(metadata i64 %3, metadata !2971, metadata !DIExpression()), !dbg !3355
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3357
  call void @llvm.dbg.value(metadata ptr %4, metadata !2947, metadata !DIExpression()), !dbg !3358
  %5 = icmp eq ptr %4, null, !dbg !3360
  br i1 %5, label %6, label %7, !dbg !3361

6:                                                ; preds = %1
  tail call void @xalloc_die() #38, !dbg !3362
  unreachable, !dbg !3362

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3289, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata ptr %0, metadata !3295, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %3, metadata !3296, metadata !DIExpression()), !dbg !3363
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #36, !dbg !3365
  ret ptr %4, !dbg !3366
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3367 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3372, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %1, metadata !3369, metadata !DIExpression()), !dbg !3373
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.111, ptr noundef nonnull @.str.2.112, i32 noundef 5) #36, !dbg !3372
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.113, ptr noundef %2) #36, !dbg !3372
  %3 = icmp eq i32 %1, 0, !dbg !3372
  tail call void @llvm.assume(i1 %3), !dbg !3372
  tail call void @abort() #38, !dbg !3374
  unreachable, !dbg !3374
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3375 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3413, metadata !DIExpression()), !dbg !3418
  %2 = tail call i64 @__fpending(ptr noundef %0) #36, !dbg !3419
  call void @llvm.dbg.value(metadata i1 poison, metadata !3414, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3418
  call void @llvm.dbg.value(metadata ptr %0, metadata !3420, metadata !DIExpression()), !dbg !3423
  %3 = load i32, ptr %0, align 8, !dbg !3425, !tbaa !3426
  %4 = and i32 %3, 32, !dbg !3427
  %5 = icmp eq i32 %4, 0, !dbg !3427
  call void @llvm.dbg.value(metadata i1 %5, metadata !3416, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3418
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #36, !dbg !3428
  %7 = icmp eq i32 %6, 0, !dbg !3429
  call void @llvm.dbg.value(metadata i1 %7, metadata !3417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3418
  br i1 %5, label %8, label %18, !dbg !3430

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3432
  call void @llvm.dbg.value(metadata i1 %9, metadata !3414, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3418
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3433
  %11 = xor i1 %7, true, !dbg !3433
  %12 = sext i1 %11 to i32, !dbg !3433
  br i1 %10, label %21, label %13, !dbg !3433

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #39, !dbg !3434
  %15 = load i32, ptr %14, align 4, !dbg !3434, !tbaa !815
  %16 = icmp ne i32 %15, 9, !dbg !3435
  %17 = sext i1 %16 to i32, !dbg !3436
  br label %21, !dbg !3436

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3437

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #39, !dbg !3439
  store i32 0, ptr %20, align 4, !dbg !3441, !tbaa !815
  br label %21, !dbg !3439

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3418
  ret i32 %22, !dbg !3442
}

; Function Attrs: nounwind
declare !dbg !3443 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3447 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3485, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 0, metadata !3486, metadata !DIExpression()), !dbg !3489
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %2, metadata !3487, metadata !DIExpression()), !dbg !3489
  %3 = icmp slt i32 %2, 0, !dbg !3491
  br i1 %3, label %4, label %6, !dbg !3493

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3494
  br label %24, !dbg !3495

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3496
  %8 = icmp eq i32 %7, 0, !dbg !3496
  br i1 %8, label %13, label %9, !dbg !3498

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3499
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #36, !dbg !3500
  %12 = icmp eq i64 %11, -1, !dbg !3501
  br i1 %12, label %16, label %13, !dbg !3502

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #36, !dbg !3503
  %15 = icmp eq i32 %14, 0, !dbg !3503
  br i1 %15, label %16, label %18, !dbg !3504

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 0, metadata !3488, metadata !DIExpression()), !dbg !3489
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %17, metadata !3488, metadata !DIExpression()), !dbg !3489
  br label %24, !dbg !3506

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #39, !dbg !3507
  %20 = load i32, ptr %19, align 4, !dbg !3507, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %20, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i32 0, metadata !3488, metadata !DIExpression()), !dbg !3489
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3505
  call void @llvm.dbg.value(metadata i32 %21, metadata !3488, metadata !DIExpression()), !dbg !3489
  %22 = icmp eq i32 %20, 0, !dbg !3508
  br i1 %22, label %24, label %23, !dbg !3506

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3510, !tbaa !815
  call void @llvm.dbg.value(metadata i32 -1, metadata !3488, metadata !DIExpression()), !dbg !3489
  br label %24, !dbg !3512

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3489
  ret i32 %25, !dbg !3513
}

; Function Attrs: nofree nounwind
declare !dbg !3514 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3515 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3516 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3517 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3520 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3558, metadata !DIExpression()), !dbg !3559
  %2 = icmp eq ptr %0, null, !dbg !3560
  br i1 %2, label %6, label %3, !dbg !3562

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #36, !dbg !3563
  %5 = icmp eq i32 %4, 0, !dbg !3563
  br i1 %5, label %6, label %8, !dbg !3564

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3565
  br label %16, !dbg !3566

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3567, metadata !DIExpression()), !dbg !3572
  %9 = load i32, ptr %0, align 8, !dbg !3574, !tbaa !3426
  %10 = and i32 %9, 256, !dbg !3576
  %11 = icmp eq i32 %10, 0, !dbg !3576
  br i1 %11, label %14, label %12, !dbg !3577

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #36, !dbg !3578
  br label %14, !dbg !3578

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3579
  br label %16, !dbg !3580

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3559
  ret i32 %17, !dbg !3581
}

; Function Attrs: nofree nounwind
declare !dbg !3582 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3583 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3622, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %1, metadata !3623, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 %2, metadata !3624, metadata !DIExpression()), !dbg !3628
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3629
  %5 = load ptr, ptr %4, align 8, !dbg !3629, !tbaa !3630
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3631
  %7 = load ptr, ptr %6, align 8, !dbg !3631, !tbaa !3632
  %8 = icmp eq ptr %5, %7, !dbg !3633
  br i1 %8, label %9, label %27, !dbg !3634

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3635
  %11 = load ptr, ptr %10, align 8, !dbg !3635, !tbaa !1197
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3636
  %13 = load ptr, ptr %12, align 8, !dbg !3636, !tbaa !3637
  %14 = icmp eq ptr %11, %13, !dbg !3638
  br i1 %14, label %15, label %27, !dbg !3639

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3640
  %17 = load ptr, ptr %16, align 8, !dbg !3640, !tbaa !3641
  %18 = icmp eq ptr %17, null, !dbg !3642
  br i1 %18, label %19, label %27, !dbg !3643

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #36, !dbg !3644
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #36, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %21, metadata !3625, metadata !DIExpression()), !dbg !3646
  %22 = icmp eq i64 %21, -1, !dbg !3647
  br i1 %22, label %29, label %23, !dbg !3649

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3650, !tbaa !3426
  %25 = and i32 %24, -17, !dbg !3650
  store i32 %25, ptr %0, align 8, !dbg !3650, !tbaa !3426
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3651
  store i64 %21, ptr %26, align 8, !dbg !3652, !tbaa !3653
  br label %29, !dbg !3654

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3655
  br label %29, !dbg !3656

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3628
  ret i32 %30, !dbg !3657
}

; Function Attrs: nofree nounwind
declare !dbg !3658 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3661 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3666, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %1, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata i64 %2, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %3, metadata !3669, metadata !DIExpression()), !dbg !3671
  %5 = icmp eq ptr %1, null, !dbg !3672
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3674
  %7 = select i1 %5, ptr @.str.124, ptr %1, !dbg !3674
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3674
  call void @llvm.dbg.value(metadata i64 %8, metadata !3668, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %7, metadata !3667, metadata !DIExpression()), !dbg !3671
  call void @llvm.dbg.value(metadata ptr %6, metadata !3666, metadata !DIExpression()), !dbg !3671
  %9 = icmp eq ptr %3, null, !dbg !3675
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3677
  call void @llvm.dbg.value(metadata ptr %10, metadata !3669, metadata !DIExpression()), !dbg !3671
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #36, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %11, metadata !3670, metadata !DIExpression()), !dbg !3671
  %12 = icmp ult i64 %11, -3, !dbg !3679
  br i1 %12, label %13, label %17, !dbg !3681

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #37, !dbg !3682
  %15 = icmp eq i32 %14, 0, !dbg !3682
  br i1 %15, label %16, label %29, !dbg !3683

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3684, metadata !DIExpression()), !dbg !3689
  call void @llvm.dbg.value(metadata ptr %10, metadata !3691, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3694, metadata !DIExpression()), !dbg !3696
  call void @llvm.dbg.value(metadata i64 8, metadata !3695, metadata !DIExpression()), !dbg !3696
  store i64 0, ptr %10, align 1, !dbg !3698
  br label %29, !dbg !3699

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3700
  br i1 %18, label %19, label %20, !dbg !3702

19:                                               ; preds = %17
  tail call void @abort() #38, !dbg !3703
  unreachable, !dbg !3703

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3704

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #36, !dbg !3706
  br i1 %23, label %29, label %24, !dbg !3707

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3708
  br i1 %25, label %29, label %26, !dbg !3711

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3712, !tbaa !824
  %28 = zext i8 %27 to i32, !dbg !3713
  store i32 %28, ptr %6, align 4, !dbg !3714, !tbaa !815
  br label %29, !dbg !3715

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3671
  ret i64 %30, !dbg !3716
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3717 i32 @mbsinit(ptr noundef) local_unnamed_addr #34

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #35 !dbg !3723 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3725, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %1, metadata !3726, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i64 %2, metadata !3727, metadata !DIExpression()), !dbg !3729
  %4 = icmp eq i64 %2, 0, !dbg !3730
  br i1 %4, label %8, label %5, !dbg !3730

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3730
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3730
  br i1 %7, label %13, label %8, !dbg !3730

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3729
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3729
  %9 = mul i64 %2, %1, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %9, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata ptr %0, metadata !3732, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %9, metadata !3735, metadata !DIExpression()), !dbg !3736
  %10 = icmp eq i64 %9, 0, !dbg !3738
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3738
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #42, !dbg !3739
  br label %15, !dbg !3740

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3728, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3729
  %14 = tail call ptr @__errno_location() #39, !dbg !3741
  store i32 12, ptr %14, align 4, !dbg !3743, !tbaa !815
  br label %15, !dbg !3744

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !3729
  ret ptr %16, !dbg !3745
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3746 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !3750, metadata !DIExpression()), !dbg !3755
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #36, !dbg !3756
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3751, metadata !DIExpression()), !dbg !3757
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #36, !dbg !3758
  %4 = icmp eq i32 %3, 0, !dbg !3758
  br i1 %4, label %5, label %12, !dbg !3760

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3761, metadata !DIExpression()), !dbg !3765
  %6 = load i16, ptr %2, align 16, !dbg !3768
  %7 = icmp eq i16 %6, 67, !dbg !3768
  br i1 %7, label %11, label %8, !dbg !3769

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3761, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata ptr @.str.1.129, metadata !3764, metadata !DIExpression()), !dbg !3770
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.129, i64 6), !dbg !3772
  %10 = icmp eq i32 %9, 0, !dbg !3773
  br i1 %10, label %11, label %12, !dbg !3774

11:                                               ; preds = %8, %5
  br label %12, !dbg !3775

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3755
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #36, !dbg !3776
  ret i1 %13, !dbg !3776
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3777 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata ptr %1, metadata !3782, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %2, metadata !3783, metadata !DIExpression()), !dbg !3784
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #36, !dbg !3785
  ret i32 %4, !dbg !3786
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3787 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3791, metadata !DIExpression()), !dbg !3792
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #36, !dbg !3793
  ret ptr %2, !dbg !3794
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3795 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3797, metadata !DIExpression()), !dbg !3799
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3800
  call void @llvm.dbg.value(metadata ptr %2, metadata !3798, metadata !DIExpression()), !dbg !3799
  ret ptr %2, !dbg !3801
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3802 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3804, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata ptr %1, metadata !3805, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 %0, metadata !3797, metadata !DIExpression()), !dbg !3812
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #36, !dbg !3814
  call void @llvm.dbg.value(metadata ptr %4, metadata !3798, metadata !DIExpression()), !dbg !3812
  call void @llvm.dbg.value(metadata ptr %4, metadata !3807, metadata !DIExpression()), !dbg !3811
  %5 = icmp eq ptr %4, null, !dbg !3815
  br i1 %5, label %6, label %9, !dbg !3816

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3817
  br i1 %7, label %19, label %8, !dbg !3820

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3821, !tbaa !824
  br label %19, !dbg !3822

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #37, !dbg !3823
  call void @llvm.dbg.value(metadata i64 %10, metadata !3808, metadata !DIExpression()), !dbg !3824
  %11 = icmp ult i64 %10, %2, !dbg !3825
  br i1 %11, label %12, label %14, !dbg !3827

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3828
  call void @llvm.dbg.value(metadata ptr %1, metadata !3830, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata ptr %4, metadata !3833, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %13, metadata !3834, metadata !DIExpression()), !dbg !3835
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #36, !dbg !3837
  br label %19, !dbg !3838

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3839
  br i1 %15, label %19, label %16, !dbg !3842

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3843
  call void @llvm.dbg.value(metadata ptr %1, metadata !3830, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata ptr %4, metadata !3833, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %17, metadata !3834, metadata !DIExpression()), !dbg !3845
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #36, !dbg !3847
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3848
  store i8 0, ptr %18, align 1, !dbg !3849, !tbaa !824
  br label %19, !dbg !3850

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3851
  ret i32 %20, !dbg !3852
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

!llvm.dbg.cu = !{!82, !316, !320, !335, !640, !672, !390, !410, !424, !475, !674, !632, !681, !715, !717, !719, !721, !723, !656, !725, !728, !732, !734}
!llvm.ident = !{!736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736, !736}
!llvm.module.flags = !{!737, !738, !739, !740, !741, !742}

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
!334 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !335, file: !336, line: 66, type: !382, isLocal: false, isDefinition: true)
!335 = distinct !DICompileUnit(language: DW_LANG_C11, file: !336, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !337, globals: !338, splitDebugInlining: false, nameTableKind: None)
!336 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!337 = !{!115, !121}
!338 = !{!339, !341, !361, !363, !365, !367, !333, !369, !371, !373, !375, !380}
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !336, line: 272, type: !19, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "old_file_name", scope: !343, file: !336, line: 304, type: !80, isLocal: true, isDefinition: true)
!343 = distinct !DISubprogram(name: "verror_at_line", scope: !336, file: !336, line: 298, type: !344, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !354)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !116, !116, !80, !86, !80, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !348)
!348 = !{!349, !351, !352, !353}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !347, file: !350, baseType: !86, size: 32)
!350 = !DIFile(filename: "lib/error.c", directory: "/src")
!351 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !347, file: !350, baseType: !86, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !347, file: !350, baseType: !115, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !347, file: !350, baseType: !115, size: 64, offset: 128)
!354 = !{!355, !356, !357, !358, !359, !360}
!355 = !DILocalVariable(name: "status", arg: 1, scope: !343, file: !336, line: 298, type: !116)
!356 = !DILocalVariable(name: "errnum", arg: 2, scope: !343, file: !336, line: 298, type: !116)
!357 = !DILocalVariable(name: "file_name", arg: 3, scope: !343, file: !336, line: 298, type: !80)
!358 = !DILocalVariable(name: "line_number", arg: 4, scope: !343, file: !336, line: 298, type: !86)
!359 = !DILocalVariable(name: "message", arg: 5, scope: !343, file: !336, line: 298, type: !80)
!360 = !DILocalVariable(name: "args", arg: 6, scope: !343, file: !336, line: 298, type: !346)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "old_line_number", scope: !343, file: !336, line: 305, type: !86, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !336, line: 338, type: !129, isLocal: true, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !164, isLocal: true, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !336, line: 346, type: !139, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "error_message_count", scope: !335, file: !336, line: 69, type: !86, isLocal: false, isDefinition: true)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !335, file: !336, line: 295, type: !116, isLocal: false, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !159, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !336, line: 208, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 21)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !336, line: 214, type: !19, isLocal: true, isDefinition: true)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{null}
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !387, line: 60, type: !139, isLocal: true, isDefinition: true)
!387 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(name: "long_options", scope: !390, file: !387, line: 34, type: !398, isLocal: true, isDefinition: true)
!390 = distinct !DICompileUnit(language: DW_LANG_C11, file: !387, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !391, splitDebugInlining: false, nameTableKind: None)
!391 = !{!385, !392, !394, !396, !388}
!392 = !DIGlobalVariableExpression(var: !393, expr: !DIExpression())
!393 = distinct !DIGlobalVariable(scope: null, file: !387, line: 112, type: !34, isLocal: true, isDefinition: true)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !387, line: 36, type: !19, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !387, line: 37, type: !164, isLocal: true, isDefinition: true)
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
!410 = distinct !DICompileUnit(language: DW_LANG_C11, file: !411, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !412, globals: !413, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!412 = !{!260}
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
!424 = distinct !DICompileUnit(language: DW_LANG_C11, file: !421, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !425, splitDebugInlining: false, nameTableKind: None)
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
!474 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !475, file: !451, line: 76, type: !547, isLocal: false, isDefinition: true)
!475 = distinct !DICompileUnit(language: DW_LANG_C11, file: !451, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !476, retainedTypes: !482, globals: !483, splitDebugInlining: false, nameTableKind: None)
!476 = !{!84, !477, !99}
!477 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !85, line: 254, baseType: !86, size: 32, elements: !478)
!478 = !{!479, !480, !481}
!479 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!480 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!481 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!482 = !{!116, !117, !118}
!483 = !{!449, !452, !454, !459, !461, !463, !465, !467, !469, !471, !473, !484, !488, !498, !500, !505, !507, !509, !511, !513, !536, !543, !545}
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !475, file: !451, line: 92, type: !486, isLocal: false, isDefinition: true)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 320, elements: !40)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !475, file: !451, line: 1040, type: !490, isLocal: false, isDefinition: true)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !451, line: 56, size: 448, elements: !491)
!491 = !{!492, !493, !494, !496, !497}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !490, file: !451, line: 59, baseType: !84, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !451, line: 62, baseType: !116, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !490, file: !451, line: 66, baseType: !495, size: 256, offset: 64)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 256, elements: !165)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !490, file: !451, line: 69, baseType: !80, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !490, file: !451, line: 72, baseType: !80, size: 64, offset: 384)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !475, file: !451, line: 107, type: !490, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "slot0", scope: !475, file: !451, line: 831, type: !502, isLocal: true, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !503)
!503 = !{!504}
!504 = !DISubrange(count: 256)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !451, line: 321, type: !139, isLocal: true, isDefinition: true)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(scope: null, file: !451, line: 357, type: !139, isLocal: true, isDefinition: true)
!509 = !DIGlobalVariableExpression(var: !510, expr: !DIExpression())
!510 = distinct !DIGlobalVariable(scope: null, file: !451, line: 358, type: !139, isLocal: true, isDefinition: true)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !451, line: 199, type: !159, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "quote", scope: !515, file: !451, line: 228, type: !534, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "gettext_quote", scope: !451, file: !451, line: 197, type: !516, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!80, !80, !84}
!518 = !{!519, !520, !521, !522, !523}
!519 = !DILocalVariable(name: "msgid", arg: 1, scope: !515, file: !451, line: 197, type: !80)
!520 = !DILocalVariable(name: "s", arg: 2, scope: !515, file: !451, line: 197, type: !84)
!521 = !DILocalVariable(name: "translation", scope: !515, file: !451, line: 199, type: !80)
!522 = !DILocalVariable(name: "w", scope: !515, file: !451, line: 229, type: !431)
!523 = !DILocalVariable(name: "mbs", scope: !515, file: !451, line: 230, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !527)
!527 = !{!528, !529}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !526, file: !439, line: 15, baseType: !116, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !526, file: !439, line: 20, baseType: !530, size: 32, offset: 32)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !526, file: !439, line: 16, size: 32, elements: !531)
!531 = !{!532, !533}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !530, file: !439, line: 18, baseType: !86, size: 32)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !530, file: !439, line: 19, baseType: !129, size: 32)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 64, elements: !535)
!535 = !{!141, !131}
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "slotvec", scope: !475, file: !451, line: 834, type: !538, isLocal: true, isDefinition: true)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !451, line: 823, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !539, file: !451, line: 825, baseType: !118, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !539, file: !451, line: 826, baseType: !260, size: 64, offset: 64)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "nslots", scope: !475, file: !451, line: 832, type: !116, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "slotvec0", scope: !475, file: !451, line: 833, type: !539, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 704, elements: !549)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!549 = !{!550}
!550 = !DISubrange(count: 11)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !553, line: 67, type: !229, isLocal: true, isDefinition: true)
!553 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !553, line: 69, type: !159, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(scope: null, file: !553, line: 83, type: !159, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(scope: null, file: !553, line: 83, type: !129, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !553, line: 85, type: !139, isLocal: true, isDefinition: true)
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
!580 = distinct !DIGlobalVariable(scope: null, file: !553, line: 113, type: !71, isLocal: true, isDefinition: true)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !553, line: 120, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 32)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !553, line: 127, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 36)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !553, line: 134, type: !9, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !553, line: 142, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 44)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !553, line: 150, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 48)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !553, line: 159, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 52)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !553, line: 170, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 60)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !553, line: 248, type: !302, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !553, line: 248, type: !205, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !302, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !49, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !553, line: 254, type: !9, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !553, line: 259, type: !3, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !553, line: 259, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 29)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !632, file: !633, line: 26, type: !635, isLocal: false, isDefinition: true)
!632 = distinct !DICompileUnit(language: DW_LANG_C11, file: !633, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !634, splitDebugInlining: false, nameTableKind: None)
!633 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!634 = !{!630}
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 376, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 47)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "exit_failure", scope: !640, file: !641, line: 24, type: !643, isLocal: false, isDefinition: true)
!640 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !642, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!642 = !{!638}
!643 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 34, type: !148, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !646, line: 34, type: !159, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !646, line: 34, type: !66, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !653, line: 108, type: !34, isLocal: true, isDefinition: true)
!653 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "internal_state", scope: !656, file: !653, line: 97, type: !659, isLocal: true, isDefinition: true)
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !657, globals: !658, splitDebugInlining: false, nameTableKind: None)
!657 = !{!115, !118, !121}
!658 = !{!651, !654}
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !437, line: 6, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !439, line: 21, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 13, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !661, file: !439, line: 15, baseType: !116, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !661, file: !439, line: 20, baseType: !665, size: 32, offset: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !439, line: 16, size: 32, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !665, file: !439, line: 18, baseType: !86, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !665, file: !439, line: 19, baseType: !129, size: 32)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !671, line: 35, type: !134, isLocal: true, isDefinition: true)
!671 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !553, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !675, retainedTypes: !679, globals: !680, splitDebugInlining: false, nameTableKind: None)
!675 = !{!676}
!676 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !553, line: 40, baseType: !86, size: 32, elements: !677)
!677 = !{!678}
!678 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!679 = !{!115}
!680 = !{!551, !554, !556, !558, !560, !562, !567, !572, !574, !579, !581, !586, !591, !593, !598, !603, !608, !613, !615, !617, !619, !621, !623, !625}
!681 = distinct !DICompileUnit(language: DW_LANG_C11, file: !682, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !683, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!682 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!683 = !{!684, !696}
!684 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !685, file: !682, line: 188, baseType: !86, size: 32, elements: !694)
!685 = distinct !DISubprogram(name: "x2nrealloc", scope: !682, file: !682, line: 176, type: !686, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !689)
!686 = !DISubroutineType(types: !687)
!687 = !{!115, !115, !688, !118}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!689 = !{!690, !691, !692, !693}
!690 = !DILocalVariable(name: "p", arg: 1, scope: !685, file: !682, line: 176, type: !115)
!691 = !DILocalVariable(name: "pn", arg: 2, scope: !685, file: !682, line: 176, type: !688)
!692 = !DILocalVariable(name: "s", arg: 3, scope: !685, file: !682, line: 176, type: !118)
!693 = !DILocalVariable(name: "n", scope: !685, file: !682, line: 178, type: !118)
!694 = !{!695}
!695 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!696 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !697, file: !682, line: 228, baseType: !86, size: 32, elements: !694)
!697 = distinct !DISubprogram(name: "xpalloc", scope: !682, file: !682, line: 223, type: !698, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !704)
!698 = !DISubroutineType(types: !699)
!699 = !{!115, !115, !700, !701, !703, !701}
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !702, line: 130, baseType: !703)
!702 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !119, line: 35, baseType: !281)
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713}
!705 = !DILocalVariable(name: "pa", arg: 1, scope: !697, file: !682, line: 223, type: !115)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !697, file: !682, line: 223, type: !700)
!707 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !697, file: !682, line: 223, type: !701)
!708 = !DILocalVariable(name: "n_max", arg: 4, scope: !697, file: !682, line: 223, type: !703)
!709 = !DILocalVariable(name: "s", arg: 5, scope: !697, file: !682, line: 223, type: !701)
!710 = !DILocalVariable(name: "n0", scope: !697, file: !682, line: 230, type: !701)
!711 = !DILocalVariable(name: "n", scope: !697, file: !682, line: 237, type: !701)
!712 = !DILocalVariable(name: "nbytes", scope: !697, file: !682, line: 248, type: !701)
!713 = !DILocalVariable(name: "adjusted_nbytes", scope: !697, file: !682, line: 252, type: !701)
!714 = !{!260, !115, !239, !281, !120}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !716, splitDebugInlining: false, nameTableKind: None)
!716 = !{!644, !647, !649}
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
!727 = !{!239, !120, !115}
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !729, splitDebugInlining: false, nameTableKind: None)
!729 = !{!730, !669}
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !671, line: 35, type: !139, isLocal: true, isDefinition: true)
!732 = distinct !DICompileUnit(language: DW_LANG_C11, file: !733, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!733 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!734 = distinct !DICompileUnit(language: DW_LANG_C11, file: !735, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !679, splitDebugInlining: false, nameTableKind: None)
!735 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!736 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!737 = !{i32 7, !"Dwarf Version", i32 5}
!738 = !{i32 2, !"Debug Info Version", i32 3}
!739 = !{i32 1, !"wchar_size", i32 4}
!740 = !{i32 8, !"PIC Level", i32 2}
!741 = !{i32 7, !"PIE Level", i32 2}
!742 = !{i32 7, !"uwtable", i32 2}
!743 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !744, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !116}
!746 = !{!747}
!747 = !DILocalVariable(name: "status", arg: 1, scope: !743, file: !2, line: 37, type: !116)
!748 = !DILocation(line: 0, scope: !743)
!749 = !DILocation(line: 39, column: 14, scope: !750)
!750 = distinct !DILexicalBlock(scope: !743, file: !2, line: 39, column: 7)
!751 = !DILocation(line: 39, column: 7, scope: !743)
!752 = !DILocation(line: 40, column: 5, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !2, line: 40, column: 5)
!754 = !{!755, !755, i64 0}
!755 = !{!"any pointer", !756, i64 0}
!756 = !{!"omnipotent char", !757, i64 0}
!757 = !{!"Simple C/C++ TBAA"}
!758 = !DILocation(line: 43, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !750, file: !2, line: 42, column: 5)
!760 = !DILocation(line: 46, column: 7, scope: !759)
!761 = !DILocation(line: 49, column: 7, scope: !759)
!762 = !DILocation(line: 50, column: 7, scope: !759)
!763 = !DILocalVariable(name: "program", arg: 1, scope: !764, file: !77, line: 836, type: !80)
!764 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !765, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !80}
!767 = !{!763, !768, !775, !776, !778, !779}
!768 = !DILocalVariable(name: "infomap", scope: !764, file: !77, line: 838, type: !769)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 896, elements: !160)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !764, file: !77, line: 838, size: 128, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !771, file: !77, line: 838, baseType: !80, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !771, file: !77, line: 838, baseType: !80, size: 64, offset: 64)
!775 = !DILocalVariable(name: "node", scope: !764, file: !77, line: 848, type: !80)
!776 = !DILocalVariable(name: "map_prog", scope: !764, file: !77, line: 849, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!778 = !DILocalVariable(name: "lc_messages", scope: !764, file: !77, line: 861, type: !80)
!779 = !DILocalVariable(name: "url_program", scope: !764, file: !77, line: 874, type: !80)
!780 = !DILocation(line: 0, scope: !764, inlinedAt: !781)
!781 = distinct !DILocation(line: 51, column: 7, scope: !759)
!782 = !DILocation(line: 857, column: 3, scope: !764, inlinedAt: !781)
!783 = !DILocation(line: 861, column: 29, scope: !764, inlinedAt: !781)
!784 = !DILocation(line: 862, column: 7, scope: !785, inlinedAt: !781)
!785 = distinct !DILexicalBlock(scope: !764, file: !77, line: 862, column: 7)
!786 = !DILocation(line: 862, column: 19, scope: !785, inlinedAt: !781)
!787 = !DILocation(line: 862, column: 22, scope: !785, inlinedAt: !781)
!788 = !DILocation(line: 862, column: 7, scope: !764, inlinedAt: !781)
!789 = !DILocation(line: 868, column: 7, scope: !790, inlinedAt: !781)
!790 = distinct !DILexicalBlock(scope: !785, file: !77, line: 863, column: 5)
!791 = !DILocation(line: 870, column: 5, scope: !790, inlinedAt: !781)
!792 = !DILocation(line: 875, column: 3, scope: !764, inlinedAt: !781)
!793 = !DILocation(line: 877, column: 3, scope: !764, inlinedAt: !781)
!794 = !DILocation(line: 53, column: 3, scope: !743)
!795 = !DISubprogram(name: "dcgettext", scope: !796, file: !796, line: 51, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!796 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!797 = !DISubroutineType(types: !798)
!798 = !{!260, !80, !80, !116}
!799 = !{}
!800 = !DISubprogram(name: "__fprintf_chk", scope: !801, file: !801, line: 93, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!801 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!802 = !DISubroutineType(types: !803)
!803 = !{!116, !804, !116, !805, null}
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !252)
!805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!806 = !DISubprogram(name: "__printf_chk", scope: !801, file: !801, line: 95, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!807 = !DISubroutineType(types: !808)
!808 = !{!116, !116, !805, null}
!809 = !DISubprogram(name: "fputs_unlocked", scope: !810, file: !810, line: 691, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!810 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!811 = !DISubroutineType(types: !812)
!812 = !{!116, !805, !804}
!813 = !DILocation(line: 0, scope: !76)
!814 = !DILocation(line: 581, column: 7, scope: !237)
!815 = !{!816, !816, i64 0}
!816 = !{!"int", !756, i64 0}
!817 = !DILocation(line: 581, column: 19, scope: !237)
!818 = !DILocation(line: 581, column: 7, scope: !76)
!819 = !DILocation(line: 585, column: 26, scope: !236)
!820 = !DILocation(line: 0, scope: !236)
!821 = !DILocation(line: 586, column: 23, scope: !236)
!822 = !DILocation(line: 586, column: 28, scope: !236)
!823 = !DILocation(line: 586, column: 32, scope: !236)
!824 = !{!756, !756, i64 0}
!825 = !DILocation(line: 586, column: 38, scope: !236)
!826 = !DILocalVariable(name: "__s1", arg: 1, scope: !827, file: !828, line: 1359, type: !80)
!827 = distinct !DISubprogram(name: "streq", scope: !828, file: !828, line: 1359, type: !829, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !831)
!828 = !DIFile(filename: "./lib/string.h", directory: "/src")
!829 = !DISubroutineType(types: !830)
!830 = !{!239, !80, !80}
!831 = !{!826, !832}
!832 = !DILocalVariable(name: "__s2", arg: 2, scope: !827, file: !828, line: 1359, type: !80)
!833 = !DILocation(line: 0, scope: !827, inlinedAt: !834)
!834 = distinct !DILocation(line: 586, column: 41, scope: !236)
!835 = !DILocation(line: 1361, column: 11, scope: !827, inlinedAt: !834)
!836 = !DILocation(line: 1361, column: 10, scope: !827, inlinedAt: !834)
!837 = !DILocation(line: 586, column: 19, scope: !236)
!838 = !DILocation(line: 587, column: 5, scope: !236)
!839 = !DILocation(line: 588, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !76, file: !77, line: 588, column: 7)
!841 = !DILocation(line: 588, column: 7, scope: !76)
!842 = !DILocation(line: 590, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !77, line: 589, column: 5)
!844 = !DILocation(line: 591, column: 7, scope: !843)
!845 = !DILocation(line: 595, column: 37, scope: !76)
!846 = !DILocation(line: 595, column: 35, scope: !76)
!847 = !DILocation(line: 596, column: 29, scope: !76)
!848 = !DILocation(line: 597, column: 8, scope: !245)
!849 = !DILocation(line: 597, column: 7, scope: !76)
!850 = !DILocation(line: 604, column: 24, scope: !244)
!851 = !DILocation(line: 604, column: 12, scope: !245)
!852 = !DILocation(line: 0, scope: !243)
!853 = !DILocation(line: 610, column: 16, scope: !243)
!854 = !DILocation(line: 610, column: 7, scope: !243)
!855 = !DILocation(line: 611, column: 21, scope: !243)
!856 = !{!857, !857, i64 0}
!857 = !{!"short", !756, i64 0}
!858 = !DILocation(line: 611, column: 19, scope: !243)
!859 = !DILocation(line: 611, column: 16, scope: !243)
!860 = !DILocation(line: 610, column: 30, scope: !243)
!861 = distinct !{!861, !854, !855, !862}
!862 = !{!"llvm.loop.mustprogress"}
!863 = !DILocation(line: 612, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !243, file: !77, line: 612, column: 11)
!865 = !DILocation(line: 612, column: 11, scope: !243)
!866 = !DILocation(line: 618, column: 5, scope: !243)
!867 = !DILocation(line: 620, column: 23, scope: !76)
!868 = !DILocation(line: 625, column: 39, scope: !76)
!869 = !DILocation(line: 626, column: 3, scope: !76)
!870 = !DILocation(line: 626, column: 10, scope: !76)
!871 = !DILocation(line: 626, column: 21, scope: !76)
!872 = !DILocation(line: 628, column: 44, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !77, line: 628, column: 11)
!874 = distinct !DILexicalBlock(scope: !76, file: !77, line: 627, column: 5)
!875 = !DILocation(line: 628, column: 32, scope: !873)
!876 = !DILocation(line: 628, column: 49, scope: !873)
!877 = !DILocation(line: 628, column: 11, scope: !874)
!878 = !DILocation(line: 630, column: 11, scope: !879)
!879 = distinct !DILexicalBlock(scope: !874, file: !77, line: 630, column: 11)
!880 = !DILocation(line: 630, column: 11, scope: !874)
!881 = !DILocation(line: 632, column: 26, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !77, line: 632, column: 15)
!883 = distinct !DILexicalBlock(scope: !879, file: !77, line: 631, column: 9)
!884 = !DILocation(line: 632, column: 34, scope: !882)
!885 = !DILocation(line: 632, column: 37, scope: !882)
!886 = !DILocation(line: 632, column: 15, scope: !883)
!887 = !DILocation(line: 636, column: 16, scope: !888)
!888 = distinct !DILexicalBlock(scope: !883, file: !77, line: 636, column: 15)
!889 = !DILocation(line: 636, column: 29, scope: !888)
!890 = !DILocation(line: 640, column: 16, scope: !874)
!891 = distinct !{!891, !869, !892, !862}
!892 = !DILocation(line: 641, column: 5, scope: !76)
!893 = !DILocation(line: 644, column: 3, scope: !76)
!894 = !DILocation(line: 0, scope: !827, inlinedAt: !895)
!895 = distinct !DILocation(line: 648, column: 31, scope: !76)
!896 = !DILocation(line: 0, scope: !827, inlinedAt: !897)
!897 = distinct !DILocation(line: 649, column: 31, scope: !76)
!898 = !DILocation(line: 0, scope: !827, inlinedAt: !899)
!899 = distinct !DILocation(line: 650, column: 31, scope: !76)
!900 = !DILocation(line: 0, scope: !827, inlinedAt: !901)
!901 = distinct !DILocation(line: 651, column: 31, scope: !76)
!902 = !DILocation(line: 0, scope: !827, inlinedAt: !903)
!903 = distinct !DILocation(line: 652, column: 31, scope: !76)
!904 = !DILocation(line: 0, scope: !827, inlinedAt: !905)
!905 = distinct !DILocation(line: 653, column: 31, scope: !76)
!906 = !DILocation(line: 0, scope: !827, inlinedAt: !907)
!907 = distinct !DILocation(line: 654, column: 31, scope: !76)
!908 = !DILocation(line: 0, scope: !827, inlinedAt: !909)
!909 = distinct !DILocation(line: 655, column: 31, scope: !76)
!910 = !DILocation(line: 0, scope: !827, inlinedAt: !911)
!911 = distinct !DILocation(line: 656, column: 31, scope: !76)
!912 = !DILocation(line: 0, scope: !827, inlinedAt: !913)
!913 = distinct !DILocation(line: 657, column: 31, scope: !76)
!914 = !DILocation(line: 663, column: 7, scope: !915)
!915 = distinct !DILexicalBlock(scope: !76, file: !77, line: 663, column: 7)
!916 = !DILocation(line: 664, column: 7, scope: !915)
!917 = !DILocation(line: 664, column: 10, scope: !915)
!918 = !DILocation(line: 663, column: 7, scope: !76)
!919 = !DILocation(line: 669, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !915, file: !77, line: 665, column: 5)
!921 = !DILocation(line: 671, column: 5, scope: !920)
!922 = !DILocation(line: 676, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !77, line: 673, column: 5)
!924 = !DILocation(line: 679, column: 3, scope: !76)
!925 = !DILocation(line: 683, column: 3, scope: !76)
!926 = !DILocation(line: 686, column: 3, scope: !76)
!927 = !DILocation(line: 688, column: 3, scope: !76)
!928 = !DILocation(line: 691, column: 3, scope: !76)
!929 = !DILocation(line: 695, column: 3, scope: !76)
!930 = !DILocation(line: 696, column: 1, scope: !76)
!931 = !DISubprogram(name: "setlocale", scope: !932, file: !932, line: 122, type: !933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!932 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!933 = !DISubroutineType(types: !934)
!934 = !{!260, !116, !80}
!935 = !DISubprogram(name: "strncmp", scope: !936, file: !936, line: 159, type: !937, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!936 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!937 = !DISubroutineType(types: !938)
!938 = !{!116, !80, !80, !118}
!939 = !DISubprogram(name: "exit", scope: !940, file: !940, line: 624, type: !744, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !799)
!940 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!941 = !DISubprogram(name: "getenv", scope: !940, file: !940, line: 641, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!942 = !DISubroutineType(types: !943)
!943 = !{!260, !80}
!944 = !DISubprogram(name: "strcmp", scope: !936, file: !936, line: 156, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!945 = !DISubroutineType(types: !946)
!946 = !{!116, !80, !80}
!947 = !DISubprogram(name: "strspn", scope: !936, file: !936, line: 297, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!948 = !DISubroutineType(types: !949)
!949 = !{!120, !80, !80}
!950 = !DISubprogram(name: "strchr", scope: !936, file: !936, line: 246, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!951 = !DISubroutineType(types: !952)
!952 = !{!260, !80, !116}
!953 = !DISubprogram(name: "__ctype_b_loc", scope: !100, file: !100, line: 79, type: !954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!954 = !DISubroutineType(types: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!959 = !DISubprogram(name: "strcspn", scope: !936, file: !936, line: 293, type: !948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!960 = !DISubprogram(name: "fwrite_unlocked", scope: !810, file: !810, line: 704, type: !961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!961 = !DISubroutineType(types: !962)
!962 = !{!118, !963, !118, !118, !804}
!963 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !964)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!966 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 57, type: !967, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !82, retainedNodes: !970)
!967 = !DISubroutineType(types: !968)
!968 = !{!116, !116, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!970 = !{!971, !972}
!971 = !DILocalVariable(name: "argc", arg: 1, scope: !966, file: !2, line: 57, type: !116)
!972 = !DILocalVariable(name: "argv", arg: 2, scope: !966, file: !2, line: 57, type: !969)
!973 = !DILocation(line: 0, scope: !966)
!974 = !DILocation(line: 60, column: 21, scope: !966)
!975 = !DILocation(line: 60, column: 3, scope: !966)
!976 = !DILocation(line: 61, column: 3, scope: !966)
!977 = !DILocation(line: 62, column: 3, scope: !966)
!978 = !DILocation(line: 63, column: 3, scope: !966)
!979 = !DILocation(line: 65, column: 3, scope: !966)
!980 = !DILocation(line: 68, column: 36, scope: !966)
!981 = !DILocation(line: 68, column: 58, scope: !966)
!982 = !DILocation(line: 67, column: 3, scope: !966)
!983 = !DILocation(line: 71, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !966, file: !2, line: 71, column: 7)
!985 = !DILocation(line: 71, column: 21, scope: !984)
!986 = !DILocation(line: 71, column: 12, scope: !984)
!987 = !DILocation(line: 71, column: 7, scope: !966)
!988 = !DILocation(line: 73, column: 16, scope: !989)
!989 = distinct !DILexicalBlock(scope: !990, file: !2, line: 73, column: 11)
!990 = distinct !DILexicalBlock(scope: !984, file: !2, line: 72, column: 5)
!991 = !DILocation(line: 73, column: 11, scope: !990)
!992 = !DILocation(line: 74, column: 9, scope: !989)
!993 = !DILocation(line: 76, column: 9, scope: !989)
!994 = !DILocation(line: 77, column: 7, scope: !990)
!995 = !DILocation(line: 80, column: 18, scope: !996)
!996 = distinct !DILexicalBlock(scope: !966, file: !2, line: 80, column: 7)
!997 = !DILocation(line: 80, column: 7, scope: !966)
!998 = !DILocation(line: 82, column: 7, scope: !999)
!999 = distinct !DILexicalBlock(scope: !996, file: !2, line: 81, column: 5)
!1000 = !DILocation(line: 83, column: 7, scope: !999)
!1001 = !DILocation(line: 86, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !966, file: !2, line: 86, column: 7)
!1003 = !DILocation(line: 86, column: 39, scope: !1002)
!1004 = !DILocation(line: 86, column: 27, scope: !1002)
!1005 = !DILocation(line: 86, column: 7, scope: !1002)
!1006 = !DILocation(line: 86, column: 45, scope: !1002)
!1007 = !DILocation(line: 86, column: 7, scope: !966)
!1008 = !DILocation(line: 87, column: 5, scope: !1002)
!1009 = !DILocation(line: 90, column: 3, scope: !966)
!1010 = !DISubprogram(name: "bindtextdomain", scope: !796, file: !796, line: 86, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!260, !80, !80}
!1013 = !DISubprogram(name: "textdomain", scope: !796, file: !796, line: 82, type: !942, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1014 = !DISubprogram(name: "atexit", scope: !940, file: !940, line: 602, type: !1015, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!116, !382}
!1017 = !DISubprogram(name: "link", scope: !1018, file: !1018, line: 819, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1018 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1019 = !DISubprogram(name: "__errno_location", scope: !1020, file: !1020, line: 37, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1020 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!406}
!1023 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !321, file: !321, line: 50, type: !765, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1024)
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
!1037 = !{!"_Bool", !756, i64 0}
!1038 = !DILocation(line: 90, column: 1, scope: !1029)
!1039 = distinct !DISubprogram(name: "close_stdout", scope: !321, file: !321, line: 116, type: !383, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !320, retainedNodes: !1040)
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
!1072 = !DISubprogram(name: "_exit", scope: !1018, file: !1018, line: 624, type: !744, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !799)
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
!1091 = distinct !DISubprogram(name: "flush_stdout", scope: !336, file: !336, line: 163, type: !383, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1092)
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
!1114 = !DILocation(line: 0, scope: !1108)
!1115 = !DILocation(line: 229, column: 13, scope: !1108)
!1116 = !DILocalVariable(name: "__stream", arg: 1, scope: !1117, file: !801, line: 132, type: !1120)
!1117 = distinct !DISubprogram(name: "vfprintf", scope: !801, file: !801, line: 132, type: !1118, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1155)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!116, !1120, !805, !346}
!1120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1121)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1123, file: !256, line: 51, baseType: !116, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1123, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1123, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1123, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1123, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1123, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1123, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1123, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1123, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1123, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1123, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1123, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1123, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1123, file: !256, line: 70, baseType: !1139, size: 64, offset: 832)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1123, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1123, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1123, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1123, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1123, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1123, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1123, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1123, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1123, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1123, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1123, file: !256, line: 93, baseType: !1139, size: 64, offset: 1344)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1123, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1123, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1123, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1123, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!1155 = !{!1116, !1156, !1157}
!1156 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1117, file: !801, line: 133, type: !805)
!1157 = !DILocalVariable(name: "__ap", arg: 3, scope: !1117, file: !801, line: 133, type: !346)
!1158 = !DILocation(line: 0, scope: !1117, inlinedAt: !1159)
!1159 = distinct !DILocation(line: 229, column: 3, scope: !1108)
!1160 = !DILocation(line: 135, column: 10, scope: !1117, inlinedAt: !1159)
!1161 = !DILocation(line: 232, column: 3, scope: !1108)
!1162 = !DILocation(line: 233, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1108, file: !336, line: 233, column: 7)
!1164 = !DILocation(line: 233, column: 7, scope: !1108)
!1165 = !DILocalVariable(name: "errnum", arg: 1, scope: !1166, file: !336, line: 188, type: !116)
!1166 = distinct !DISubprogram(name: "print_errno_message", scope: !336, file: !336, line: 188, type: !744, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1167)
!1167 = !{!1165, !1168, !1169}
!1168 = !DILocalVariable(name: "s", scope: !1166, file: !336, line: 190, type: !80)
!1169 = !DILocalVariable(name: "errbuf", scope: !1166, file: !336, line: 193, type: !1170)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 1024)
!1173 = !DILocation(line: 0, scope: !1166, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 234, column: 5, scope: !1163)
!1175 = !DILocation(line: 193, column: 3, scope: !1166, inlinedAt: !1174)
!1176 = !DILocation(line: 193, column: 8, scope: !1166, inlinedAt: !1174)
!1177 = !DILocation(line: 195, column: 7, scope: !1166, inlinedAt: !1174)
!1178 = !DILocation(line: 207, column: 9, scope: !1179, inlinedAt: !1174)
!1179 = distinct !DILexicalBlock(scope: !1166, file: !336, line: 207, column: 7)
!1180 = !DILocation(line: 207, column: 7, scope: !1166, inlinedAt: !1174)
!1181 = !DILocation(line: 208, column: 9, scope: !1179, inlinedAt: !1174)
!1182 = !DILocation(line: 208, column: 5, scope: !1179, inlinedAt: !1174)
!1183 = !DILocation(line: 214, column: 3, scope: !1166, inlinedAt: !1174)
!1184 = !DILocation(line: 216, column: 1, scope: !1166, inlinedAt: !1174)
!1185 = !DILocation(line: 234, column: 5, scope: !1163)
!1186 = !DILocation(line: 238, column: 3, scope: !1108)
!1187 = !DILocalVariable(name: "__c", arg: 1, scope: !1188, file: !1189, line: 101, type: !116)
!1188 = distinct !DISubprogram(name: "putc_unlocked", scope: !1189, file: !1189, line: 101, type: !1190, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !335, retainedNodes: !1192)
!1189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!116, !116, !1121}
!1192 = !{!1187, !1193}
!1193 = !DILocalVariable(name: "__stream", arg: 2, scope: !1188, file: !1189, line: 101, type: !1121)
!1194 = !DILocation(line: 0, scope: !1188, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 238, column: 3, scope: !1108)
!1196 = !DILocation(line: 103, column: 10, scope: !1188, inlinedAt: !1195)
!1197 = !{!1198, !755, i64 40}
!1198 = !{!"_IO_FILE", !816, i64 0, !755, i64 8, !755, i64 16, !755, i64 24, !755, i64 32, !755, i64 40, !755, i64 48, !755, i64 56, !755, i64 64, !755, i64 72, !755, i64 80, !755, i64 88, !755, i64 96, !755, i64 104, !816, i64 112, !816, i64 116, !1199, i64 120, !857, i64 128, !756, i64 130, !756, i64 131, !755, i64 136, !1199, i64 144, !755, i64 152, !755, i64 160, !755, i64 168, !755, i64 176, !1199, i64 184, !816, i64 192, !756, i64 196}
!1199 = !{!"long", !756, i64 0}
!1200 = !{!1198, !755, i64 48}
!1201 = !{!"branch_weights", i32 2000, i32 1}
!1202 = !DILocation(line: 240, column: 3, scope: !1108)
!1203 = !DILocation(line: 241, column: 7, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1108, file: !336, line: 241, column: 7)
!1205 = !DILocation(line: 241, column: 7, scope: !1108)
!1206 = !DILocation(line: 242, column: 5, scope: !1204)
!1207 = !DILocation(line: 243, column: 1, scope: !1108)
!1208 = !DISubprogram(name: "__vfprintf_chk", scope: !801, file: !801, line: 96, type: !1209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!116, !1120, !116, !805, !346}
!1211 = !DISubprogram(name: "strerror_r", scope: !936, file: !936, line: 444, type: !1212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!260, !116, !260, !118}
!1214 = !DISubprogram(name: "__overflow", scope: !810, file: !810, line: 886, type: !1215, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!116, !1121, !116}
!1217 = !DISubprogram(name: "fflush_unlocked", scope: !810, file: !810, line: 239, type: !1218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!116, !1121}
!1220 = !DISubprogram(name: "fcntl", scope: !1221, file: !1221, line: 149, type: !1222, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
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
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !810, line: 52, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1234, line: 14, baseType: !1235)
!1234 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !350, baseType: !1236)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 192, elements: !35)
!1237 = !DILocation(line: 0, scope: !1224)
!1238 = !DILocation(line: 287, column: 3, scope: !1224)
!1239 = !DILocation(line: 287, column: 11, scope: !1224)
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
!1284 = !DILocation(line: 0, scope: !1274)
!1285 = !DILocation(line: 362, column: 3, scope: !1274)
!1286 = !DILocation(line: 362, column: 11, scope: !1274)
!1287 = !DILocation(line: 363, column: 3, scope: !1274)
!1288 = !DILocation(line: 364, column: 3, scope: !1274)
!1289 = !DILocation(line: 366, column: 3, scope: !1274)
!1290 = !DILocation(line: 367, column: 1, scope: !1274)
!1291 = distinct !DISubprogram(name: "getprogname", scope: !673, file: !673, line: 54, type: !1292, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672, retainedNodes: !799)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!80}
!1294 = !DILocation(line: 58, column: 10, scope: !1291)
!1295 = !DILocation(line: 58, column: 3, scope: !1291)
!1296 = distinct !DISubprogram(name: "parse_long_options", scope: !387, file: !387, line: 45, type: !1297, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1300)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !116, !969, !80, !80, !80, !1299, null}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1311}
!1301 = !DILocalVariable(name: "argc", arg: 1, scope: !1296, file: !387, line: 45, type: !116)
!1302 = !DILocalVariable(name: "argv", arg: 2, scope: !1296, file: !387, line: 46, type: !969)
!1303 = !DILocalVariable(name: "command_name", arg: 3, scope: !1296, file: !387, line: 47, type: !80)
!1304 = !DILocalVariable(name: "package", arg: 4, scope: !1296, file: !387, line: 48, type: !80)
!1305 = !DILocalVariable(name: "version", arg: 5, scope: !1296, file: !387, line: 49, type: !80)
!1306 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1296, file: !387, line: 50, type: !1299)
!1307 = !DILocalVariable(name: "saved_opterr", scope: !1296, file: !387, line: 53, type: !116)
!1308 = !DILocalVariable(name: "c", scope: !1309, file: !387, line: 60, type: !116)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !387, line: 59, column: 5)
!1310 = distinct !DILexicalBlock(scope: !1296, file: !387, line: 58, column: 7)
!1311 = !DILocalVariable(name: "authors", scope: !1312, file: !387, line: 71, type: !1316)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !387, line: 70, column: 15)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !387, line: 64, column: 13)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !387, line: 62, column: 9)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !387, line: 61, column: 11)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !810, line: 52, baseType: !1317)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1234, line: 14, baseType: !1318)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1319, baseType: !1320)
!1319 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 192, elements: !35)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1321, file: !1319, line: 71, baseType: !86, size: 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1321, file: !1319, line: 71, baseType: !86, size: 32, offset: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1321, file: !1319, line: 71, baseType: !115, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1321, file: !1319, line: 71, baseType: !115, size: 64, offset: 128)
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
!1346 = !DISubprogram(name: "getopt_long", scope: !401, file: !401, line: 66, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!116, !116, !1349, !80, !1351, !406}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!1352 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !387, file: !387, line: 98, type: !1353, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !116, !969, !80, !80, !80, !239, !1299, null}
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1356 = !DILocalVariable(name: "argc", arg: 1, scope: !1352, file: !387, line: 98, type: !116)
!1357 = !DILocalVariable(name: "argv", arg: 2, scope: !1352, file: !387, line: 99, type: !969)
!1358 = !DILocalVariable(name: "command_name", arg: 3, scope: !1352, file: !387, line: 100, type: !80)
!1359 = !DILocalVariable(name: "package", arg: 4, scope: !1352, file: !387, line: 101, type: !80)
!1360 = !DILocalVariable(name: "version", arg: 5, scope: !1352, file: !387, line: 102, type: !80)
!1361 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1352, file: !387, line: 103, type: !239)
!1362 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1352, file: !387, line: 104, type: !1299)
!1363 = !DILocalVariable(name: "saved_opterr", scope: !1352, file: !387, line: 107, type: !116)
!1364 = !DILocalVariable(name: "optstring", scope: !1352, file: !387, line: 112, type: !80)
!1365 = !DILocalVariable(name: "c", scope: !1352, file: !387, line: 114, type: !116)
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
!1388 = distinct !DISubprogram(name: "set_program_name", scope: !411, file: !411, line: 37, type: !765, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DILocalVariable(name: "argv0", arg: 1, scope: !1388, file: !411, line: 37, type: !80)
!1391 = !DILocalVariable(name: "slash", scope: !1388, file: !411, line: 44, type: !80)
!1392 = !DILocalVariable(name: "base", scope: !1388, file: !411, line: 45, type: !80)
!1393 = !DILocation(line: 0, scope: !1388)
!1394 = !DILocation(line: 44, column: 23, scope: !1388)
!1395 = !DILocation(line: 45, column: 22, scope: !1388)
!1396 = !DILocation(line: 46, column: 17, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1388, file: !411, line: 46, column: 7)
!1398 = !DILocation(line: 46, column: 9, scope: !1397)
!1399 = !DILocation(line: 46, column: 25, scope: !1397)
!1400 = !DILocation(line: 46, column: 40, scope: !1397)
!1401 = !DILocalVariable(name: "__s1", arg: 1, scope: !1402, file: !828, line: 974, type: !964)
!1402 = distinct !DISubprogram(name: "memeq", scope: !828, file: !828, line: 974, type: !1403, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!239, !964, !964, !118}
!1405 = !{!1401, !1406, !1407}
!1406 = !DILocalVariable(name: "__s2", arg: 2, scope: !1402, file: !828, line: 974, type: !964)
!1407 = !DILocalVariable(name: "__n", arg: 3, scope: !1402, file: !828, line: 974, type: !118)
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
!1422 = !DISubprogram(name: "strrchr", scope: !936, file: !936, line: 273, type: !951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
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
!1440 = !DILocalVariable(name: "__dest", arg: 1, scope: !1441, file: !1442, line: 57, type: !115)
!1441 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !1445)
!1442 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!115, !115, !116, !118}
!1445 = !{!1440, !1446, !1447}
!1446 = !DILocalVariable(name: "__ch", arg: 2, scope: !1441, file: !1442, line: 57, type: !116)
!1447 = !DILocalVariable(name: "__len", arg: 3, scope: !1441, file: !1442, line: 57, type: !118)
!1448 = !DILocation(line: 0, scope: !1441, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 1137, column: 3, scope: !1432, inlinedAt: !1439)
!1450 = !DILocation(line: 59, column: 10, scope: !1441, inlinedAt: !1449)
!1451 = !DILocation(line: 49, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !420, file: !421, line: 49, column: 7)
!1453 = !DILocation(line: 49, column: 39, scope: !1452)
!1454 = !DILocation(line: 49, column: 44, scope: !1452)
!1455 = !DILocation(line: 54, column: 1, scope: !420)
!1456 = !DISubprogram(name: "mbrtoc32", scope: !432, file: !432, line: 57, type: !1457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!118, !1459, !805, !118, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1460)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1436)
!1462 = distinct !DISubprogram(name: "clone_quoting_options", scope: !451, file: !451, line: 113, type: !1463, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1466)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!1466 = !{!1467, !1468, !1469}
!1467 = !DILocalVariable(name: "o", arg: 1, scope: !1462, file: !451, line: 113, type: !1465)
!1468 = !DILocalVariable(name: "saved_errno", scope: !1462, file: !451, line: 115, type: !116)
!1469 = !DILocalVariable(name: "p", scope: !1462, file: !451, line: 116, type: !1465)
!1470 = !DILocation(line: 0, scope: !1462)
!1471 = !DILocation(line: 115, column: 21, scope: !1462)
!1472 = !DILocation(line: 116, column: 40, scope: !1462)
!1473 = !DILocation(line: 116, column: 31, scope: !1462)
!1474 = !DILocation(line: 118, column: 9, scope: !1462)
!1475 = !DILocation(line: 119, column: 3, scope: !1462)
!1476 = distinct !DISubprogram(name: "get_quoting_style", scope: !451, file: !451, line: 124, type: !1477, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1481)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!84, !1479}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!1481 = !{!1482}
!1482 = !DILocalVariable(name: "o", arg: 1, scope: !1476, file: !451, line: 124, type: !1479)
!1483 = !DILocation(line: 0, scope: !1476)
!1484 = !DILocation(line: 126, column: 11, scope: !1476)
!1485 = !DILocation(line: 126, column: 46, scope: !1476)
!1486 = !{!1487, !756, i64 0}
!1487 = !{!"quoting_options", !756, i64 0, !816, i64 4, !756, i64 8, !755, i64 40, !755, i64 48}
!1488 = !DILocation(line: 126, column: 3, scope: !1476)
!1489 = distinct !DISubprogram(name: "set_quoting_style", scope: !451, file: !451, line: 132, type: !1490, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !1465, !84}
!1492 = !{!1493, !1494}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !451, line: 132, type: !1465)
!1494 = !DILocalVariable(name: "s", arg: 2, scope: !1489, file: !451, line: 132, type: !84)
!1495 = !DILocation(line: 0, scope: !1489)
!1496 = !DILocation(line: 134, column: 4, scope: !1489)
!1497 = !DILocation(line: 134, column: 45, scope: !1489)
!1498 = !DILocation(line: 135, column: 1, scope: !1489)
!1499 = distinct !DISubprogram(name: "set_char_quoting", scope: !451, file: !451, line: 143, type: !1500, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1502)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!116, !1465, !4, !116}
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1509, !1510}
!1503 = !DILocalVariable(name: "o", arg: 1, scope: !1499, file: !451, line: 143, type: !1465)
!1504 = !DILocalVariable(name: "c", arg: 2, scope: !1499, file: !451, line: 143, type: !4)
!1505 = !DILocalVariable(name: "i", arg: 3, scope: !1499, file: !451, line: 143, type: !116)
!1506 = !DILocalVariable(name: "uc", scope: !1499, file: !451, line: 145, type: !121)
!1507 = !DILocalVariable(name: "p", scope: !1499, file: !451, line: 146, type: !1508)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!1509 = !DILocalVariable(name: "shift", scope: !1499, file: !451, line: 148, type: !116)
!1510 = !DILocalVariable(name: "r", scope: !1499, file: !451, line: 149, type: !86)
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
!1526 = !{!116, !1465, !116}
!1527 = !{!1528, !1529, !1530}
!1528 = !DILocalVariable(name: "o", arg: 1, scope: !1524, file: !451, line: 159, type: !1465)
!1529 = !DILocalVariable(name: "i", arg: 2, scope: !1524, file: !451, line: 159, type: !116)
!1530 = !DILocalVariable(name: "r", scope: !1524, file: !451, line: 163, type: !116)
!1531 = !DILocation(line: 0, scope: !1524)
!1532 = !DILocation(line: 161, column: 8, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1524, file: !451, line: 161, column: 7)
!1534 = !DILocation(line: 161, column: 7, scope: !1524)
!1535 = !DILocation(line: 163, column: 14, scope: !1524)
!1536 = !{!1487, !816, i64 4}
!1537 = !DILocation(line: 164, column: 12, scope: !1524)
!1538 = !DILocation(line: 165, column: 3, scope: !1524)
!1539 = distinct !DISubprogram(name: "set_custom_quoting", scope: !451, file: !451, line: 169, type: !1540, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{null, !1465, !80, !80}
!1542 = !{!1543, !1544, !1545}
!1543 = !DILocalVariable(name: "o", arg: 1, scope: !1539, file: !451, line: 169, type: !1465)
!1544 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1539, file: !451, line: 170, type: !80)
!1545 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1539, file: !451, line: 170, type: !80)
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
!1557 = !{!1487, !755, i64 40}
!1558 = !DILocation(line: 178, column: 6, scope: !1539)
!1559 = !DILocation(line: 178, column: 18, scope: !1539)
!1560 = !{!1487, !755, i64 48}
!1561 = !DILocation(line: 179, column: 1, scope: !1539)
!1562 = !DISubprogram(name: "abort", scope: !940, file: !940, line: 598, type: !383, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !799)
!1563 = distinct !DISubprogram(name: "quotearg_buffer", scope: !451, file: !451, line: 774, type: !1564, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!118, !260, !118, !80, !118, !1479}
!1566 = !{!1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1567 = !DILocalVariable(name: "buffer", arg: 1, scope: !1563, file: !451, line: 774, type: !260)
!1568 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1563, file: !451, line: 774, type: !118)
!1569 = !DILocalVariable(name: "arg", arg: 3, scope: !1563, file: !451, line: 775, type: !80)
!1570 = !DILocalVariable(name: "argsize", arg: 4, scope: !1563, file: !451, line: 775, type: !118)
!1571 = !DILocalVariable(name: "o", arg: 5, scope: !1563, file: !451, line: 776, type: !1479)
!1572 = !DILocalVariable(name: "p", scope: !1563, file: !451, line: 778, type: !1479)
!1573 = !DILocalVariable(name: "saved_errno", scope: !1563, file: !451, line: 779, type: !116)
!1574 = !DILocalVariable(name: "r", scope: !1563, file: !451, line: 780, type: !118)
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
!1588 = !{!118, !260, !118, !80, !118, !84, !116, !1589, !80, !80}
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1616, !1618, !1621, !1622, !1623, !1624, !1627, !1628, !1631, !1635, !1636, !1644, !1647, !1648, !1650, !1651, !1652, !1653}
!1592 = !DILocalVariable(name: "buffer", arg: 1, scope: !1586, file: !451, line: 251, type: !260)
!1593 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1586, file: !451, line: 251, type: !118)
!1594 = !DILocalVariable(name: "arg", arg: 3, scope: !1586, file: !451, line: 252, type: !80)
!1595 = !DILocalVariable(name: "argsize", arg: 4, scope: !1586, file: !451, line: 252, type: !118)
!1596 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1586, file: !451, line: 253, type: !84)
!1597 = !DILocalVariable(name: "flags", arg: 6, scope: !1586, file: !451, line: 253, type: !116)
!1598 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1586, file: !451, line: 254, type: !1589)
!1599 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1586, file: !451, line: 255, type: !80)
!1600 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1586, file: !451, line: 256, type: !80)
!1601 = !DILocalVariable(name: "unibyte_locale", scope: !1586, file: !451, line: 258, type: !239)
!1602 = !DILocalVariable(name: "len", scope: !1586, file: !451, line: 260, type: !118)
!1603 = !DILocalVariable(name: "orig_buffersize", scope: !1586, file: !451, line: 261, type: !118)
!1604 = !DILocalVariable(name: "quote_string", scope: !1586, file: !451, line: 262, type: !80)
!1605 = !DILocalVariable(name: "quote_string_len", scope: !1586, file: !451, line: 263, type: !118)
!1606 = !DILocalVariable(name: "backslash_escapes", scope: !1586, file: !451, line: 264, type: !239)
!1607 = !DILocalVariable(name: "elide_outer_quotes", scope: !1586, file: !451, line: 265, type: !239)
!1608 = !DILocalVariable(name: "encountered_single_quote", scope: !1586, file: !451, line: 266, type: !239)
!1609 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1586, file: !451, line: 267, type: !239)
!1610 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1586, file: !451, line: 309, type: !239)
!1611 = !DILocalVariable(name: "lq", scope: !1612, file: !451, line: 361, type: !80)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !451, line: 361, column: 11)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !451, line: 360, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 333, column: 7)
!1615 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 312, column: 5)
!1616 = !DILocalVariable(name: "i", scope: !1617, file: !451, line: 395, type: !118)
!1617 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 395, column: 3)
!1618 = !DILocalVariable(name: "is_right_quote", scope: !1619, file: !451, line: 397, type: !239)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !451, line: 396, column: 5)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !451, line: 395, column: 3)
!1621 = !DILocalVariable(name: "escaping", scope: !1619, file: !451, line: 398, type: !239)
!1622 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1619, file: !451, line: 399, type: !239)
!1623 = !DILocalVariable(name: "c", scope: !1619, file: !451, line: 417, type: !121)
!1624 = !DILocalVariable(name: "m", scope: !1625, file: !451, line: 598, type: !118)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 596, column: 11)
!1626 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 419, column: 9)
!1627 = !DILocalVariable(name: "printable", scope: !1625, file: !451, line: 600, type: !239)
!1628 = !DILocalVariable(name: "mbs", scope: !1629, file: !451, line: 609, type: !524)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !451, line: 608, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !451, line: 602, column: 17)
!1631 = !DILocalVariable(name: "w", scope: !1632, file: !451, line: 618, type: !431)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !451, line: 617, column: 19)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !451, line: 616, column: 17)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 616, column: 17)
!1635 = !DILocalVariable(name: "bytes", scope: !1632, file: !451, line: 619, type: !118)
!1636 = !DILocalVariable(name: "j", scope: !1637, file: !451, line: 648, type: !118)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !451, line: 648, column: 29)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !451, line: 647, column: 27)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !451, line: 645, column: 29)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !451, line: 636, column: 23)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !451, line: 628, column: 30)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !451, line: 623, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1632, file: !451, line: 621, column: 25)
!1644 = !DILocalVariable(name: "ilim", scope: !1645, file: !451, line: 674, type: !118)
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
!1657 = !DILocation(line: 265, column: 8, scope: !1586)
!1658 = !DILocation(line: 267, column: 3, scope: !1586)
!1659 = !DILocation(line: 261, column: 10, scope: !1586)
!1660 = !DILocation(line: 262, column: 15, scope: !1586)
!1661 = !DILocation(line: 263, column: 10, scope: !1586)
!1662 = !DILocation(line: 264, column: 8, scope: !1586)
!1663 = !DILocation(line: 266, column: 8, scope: !1586)
!1664 = !DILocation(line: 267, column: 8, scope: !1586)
!1665 = !DILocation(line: 308, column: 2, scope: !1586)
!1666 = !DILocation(line: 311, column: 3, scope: !1586)
!1667 = !DILocation(line: 318, column: 11, scope: !1615)
!1668 = !DILocation(line: 318, column: 12, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 318, column: 11)
!1670 = !DILocation(line: 319, column: 9, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !451, line: 319, column: 9)
!1672 = distinct !DILexicalBlock(scope: !1669, file: !451, line: 319, column: 9)
!1673 = !DILocation(line: 319, column: 9, scope: !1672)
!1674 = !DILocation(line: 0, scope: !515, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 357, column: 26, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !451, line: 335, column: 11)
!1677 = distinct !DILexicalBlock(scope: !1614, file: !451, line: 334, column: 13)
!1678 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1675)
!1679 = !DILocation(line: 201, column: 19, scope: !1680, inlinedAt: !1675)
!1680 = distinct !DILexicalBlock(scope: !515, file: !451, line: 201, column: 7)
!1681 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1675)
!1682 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1675)
!1683 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1675)
!1684 = !DILocation(line: 230, column: 13, scope: !515, inlinedAt: !1675)
!1685 = !DILocalVariable(name: "ps", arg: 1, scope: !1686, file: !1433, line: 1135, type: !1689)
!1686 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !1687, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1690)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!1690 = !{!1685}
!1691 = !DILocation(line: 0, scope: !1686, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1675)
!1693 = !DILocalVariable(name: "__dest", arg: 1, scope: !1694, file: !1442, line: 57, type: !115)
!1694 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1695)
!1695 = !{!1693, !1696, !1697}
!1696 = !DILocalVariable(name: "__ch", arg: 2, scope: !1694, file: !1442, line: 57, type: !116)
!1697 = !DILocalVariable(name: "__len", arg: 3, scope: !1694, file: !1442, line: 57, type: !118)
!1698 = !DILocation(line: 0, scope: !1694, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 1137, column: 3, scope: !1686, inlinedAt: !1692)
!1700 = !DILocation(line: 59, column: 10, scope: !1694, inlinedAt: !1699)
!1701 = !DILocation(line: 231, column: 7, scope: !1702, inlinedAt: !1675)
!1702 = distinct !DILexicalBlock(scope: !515, file: !451, line: 231, column: 7)
!1703 = !DILocation(line: 231, column: 40, scope: !1702, inlinedAt: !1675)
!1704 = !DILocation(line: 231, column: 45, scope: !1702, inlinedAt: !1675)
!1705 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1675)
!1706 = !DILocation(line: 0, scope: !515, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 358, column: 27, scope: !1676)
!1708 = !DILocation(line: 199, column: 29, scope: !515, inlinedAt: !1707)
!1709 = !DILocation(line: 201, column: 19, scope: !1680, inlinedAt: !1707)
!1710 = !DILocation(line: 201, column: 7, scope: !515, inlinedAt: !1707)
!1711 = !DILocation(line: 229, column: 3, scope: !515, inlinedAt: !1707)
!1712 = !DILocation(line: 230, column: 3, scope: !515, inlinedAt: !1707)
!1713 = !DILocation(line: 230, column: 13, scope: !515, inlinedAt: !1707)
!1714 = !DILocation(line: 0, scope: !1686, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !1707)
!1716 = !DILocation(line: 0, scope: !1694, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 1137, column: 3, scope: !1686, inlinedAt: !1715)
!1718 = !DILocation(line: 59, column: 10, scope: !1694, inlinedAt: !1717)
!1719 = !DILocation(line: 231, column: 7, scope: !1702, inlinedAt: !1707)
!1720 = !DILocation(line: 231, column: 40, scope: !1702, inlinedAt: !1707)
!1721 = !DILocation(line: 231, column: 45, scope: !1702, inlinedAt: !1707)
!1722 = !DILocation(line: 235, column: 1, scope: !515, inlinedAt: !1707)
!1723 = !DILocation(line: 360, column: 14, scope: !1613)
!1724 = !DILocation(line: 360, column: 13, scope: !1614)
!1725 = !DILocation(line: 0, scope: !1612)
!1726 = !DILocation(line: 361, column: 45, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1612, file: !451, line: 361, column: 11)
!1728 = !DILocation(line: 361, column: 11, scope: !1612)
!1729 = !DILocation(line: 362, column: 13, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !451, line: 362, column: 13)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !451, line: 362, column: 13)
!1732 = !DILocation(line: 362, column: 13, scope: !1731)
!1733 = !DILocation(line: 361, column: 52, scope: !1727)
!1734 = distinct !{!1734, !1728, !1735, !862}
!1735 = !DILocation(line: 362, column: 13, scope: !1612)
!1736 = !DILocation(line: 260, column: 10, scope: !1586)
!1737 = !DILocation(line: 365, column: 28, scope: !1614)
!1738 = !DILocation(line: 367, column: 7, scope: !1615)
!1739 = !DILocation(line: 370, column: 7, scope: !1615)
!1740 = !DILocation(line: 373, column: 7, scope: !1615)
!1741 = !DILocation(line: 376, column: 12, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 376, column: 11)
!1743 = !DILocation(line: 376, column: 11, scope: !1615)
!1744 = !DILocation(line: 381, column: 12, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1615, file: !451, line: 381, column: 11)
!1746 = !DILocation(line: 381, column: 11, scope: !1615)
!1747 = !DILocation(line: 382, column: 9, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !451, line: 382, column: 9)
!1749 = distinct !DILexicalBlock(scope: !1745, file: !451, line: 382, column: 9)
!1750 = !DILocation(line: 382, column: 9, scope: !1749)
!1751 = !DILocation(line: 389, column: 7, scope: !1615)
!1752 = !DILocation(line: 392, column: 7, scope: !1615)
!1753 = !DILocation(line: 0, scope: !1617)
!1754 = !DILocation(line: 395, column: 8, scope: !1617)
!1755 = !DILocation(line: 309, column: 8, scope: !1586)
!1756 = !DILocation(line: 395, scope: !1617)
!1757 = !DILocation(line: 395, column: 34, scope: !1620)
!1758 = !DILocation(line: 395, column: 26, scope: !1620)
!1759 = !DILocation(line: 395, column: 48, scope: !1620)
!1760 = !DILocation(line: 395, column: 55, scope: !1620)
!1761 = !DILocation(line: 395, column: 3, scope: !1617)
!1762 = !DILocation(line: 395, column: 67, scope: !1620)
!1763 = !DILocation(line: 0, scope: !1619)
!1764 = !DILocation(line: 402, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 401, column: 11)
!1766 = !DILocation(line: 404, column: 17, scope: !1765)
!1767 = !DILocation(line: 405, column: 39, scope: !1765)
!1768 = !DILocation(line: 409, column: 32, scope: !1765)
!1769 = !DILocation(line: 405, column: 19, scope: !1765)
!1770 = !DILocation(line: 405, column: 15, scope: !1765)
!1771 = !DILocation(line: 410, column: 11, scope: !1765)
!1772 = !DILocation(line: 410, column: 25, scope: !1765)
!1773 = !DILocalVariable(name: "__s1", arg: 1, scope: !1774, file: !828, line: 974, type: !964)
!1774 = distinct !DISubprogram(name: "memeq", scope: !828, file: !828, line: 974, type: !1403, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1775)
!1775 = !{!1773, !1776, !1777}
!1776 = !DILocalVariable(name: "__s2", arg: 2, scope: !1774, file: !828, line: 974, type: !964)
!1777 = !DILocalVariable(name: "__n", arg: 3, scope: !1774, file: !828, line: 974, type: !118)
!1778 = !DILocation(line: 0, scope: !1774, inlinedAt: !1779)
!1779 = distinct !DILocation(line: 410, column: 14, scope: !1765)
!1780 = !DILocation(line: 976, column: 11, scope: !1774, inlinedAt: !1779)
!1781 = !DILocation(line: 976, column: 10, scope: !1774, inlinedAt: !1779)
!1782 = !DILocation(line: 401, column: 11, scope: !1619)
!1783 = !DILocation(line: 417, column: 25, scope: !1619)
!1784 = !DILocation(line: 418, column: 7, scope: !1619)
!1785 = !DILocation(line: 421, column: 15, scope: !1626)
!1786 = !DILocation(line: 423, column: 15, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !451, line: 423, column: 15)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !451, line: 422, column: 13)
!1789 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 421, column: 15)
!1790 = !DILocation(line: 423, column: 15, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1787, file: !451, line: 423, column: 15)
!1792 = !DILocation(line: 423, column: 15, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !451, line: 423, column: 15)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !451, line: 423, column: 15)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !451, line: 423, column: 15)
!1796 = !DILocation(line: 423, column: 15, scope: !1794)
!1797 = !DILocation(line: 423, column: 15, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !451, line: 423, column: 15)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !451, line: 423, column: 15)
!1800 = !DILocation(line: 423, column: 15, scope: !1799)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !451, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1795, file: !451, line: 423, column: 15)
!1804 = !DILocation(line: 423, column: 15, scope: !1803)
!1805 = !DILocation(line: 423, column: 15, scope: !1795)
!1806 = !DILocation(line: 423, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !451, line: 423, column: 15)
!1808 = distinct !DILexicalBlock(scope: !1787, file: !451, line: 423, column: 15)
!1809 = !DILocation(line: 423, column: 15, scope: !1808)
!1810 = !DILocation(line: 431, column: 19, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1788, file: !451, line: 430, column: 19)
!1812 = !DILocation(line: 431, column: 24, scope: !1811)
!1813 = !DILocation(line: 431, column: 28, scope: !1811)
!1814 = !DILocation(line: 431, column: 38, scope: !1811)
!1815 = !DILocation(line: 431, column: 48, scope: !1811)
!1816 = !DILocation(line: 431, column: 59, scope: !1811)
!1817 = !DILocation(line: 433, column: 19, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !451, line: 433, column: 19)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !451, line: 433, column: 19)
!1820 = distinct !DILexicalBlock(scope: !1811, file: !451, line: 432, column: 17)
!1821 = !DILocation(line: 433, column: 19, scope: !1819)
!1822 = !DILocation(line: 434, column: 19, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !451, line: 434, column: 19)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !451, line: 434, column: 19)
!1825 = !DILocation(line: 434, column: 19, scope: !1824)
!1826 = !DILocation(line: 435, column: 17, scope: !1820)
!1827 = !DILocation(line: 442, column: 20, scope: !1789)
!1828 = !DILocation(line: 447, column: 11, scope: !1626)
!1829 = !DILocation(line: 450, column: 19, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 448, column: 13)
!1831 = !DILocation(line: 456, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1830, file: !451, line: 455, column: 19)
!1833 = !DILocation(line: 456, column: 24, scope: !1832)
!1834 = !DILocation(line: 456, column: 28, scope: !1832)
!1835 = !DILocation(line: 456, column: 38, scope: !1832)
!1836 = !DILocation(line: 456, column: 47, scope: !1832)
!1837 = !DILocation(line: 456, column: 41, scope: !1832)
!1838 = !DILocation(line: 456, column: 52, scope: !1832)
!1839 = !DILocation(line: 455, column: 19, scope: !1830)
!1840 = !DILocation(line: 457, column: 25, scope: !1832)
!1841 = !DILocation(line: 457, column: 17, scope: !1832)
!1842 = !DILocation(line: 464, column: 25, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1832, file: !451, line: 458, column: 19)
!1844 = !DILocation(line: 468, column: 21, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !451, line: 468, column: 21)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !451, line: 468, column: 21)
!1847 = !DILocation(line: 468, column: 21, scope: !1846)
!1848 = !DILocation(line: 469, column: 21, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !451, line: 469, column: 21)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !451, line: 469, column: 21)
!1851 = !DILocation(line: 469, column: 21, scope: !1850)
!1852 = !DILocation(line: 470, column: 21, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !451, line: 470, column: 21)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !451, line: 470, column: 21)
!1855 = !DILocation(line: 470, column: 21, scope: !1854)
!1856 = !DILocation(line: 471, column: 21, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !451, line: 471, column: 21)
!1858 = distinct !DILexicalBlock(scope: !1843, file: !451, line: 471, column: 21)
!1859 = !DILocation(line: 471, column: 21, scope: !1858)
!1860 = !DILocation(line: 472, column: 21, scope: !1843)
!1861 = !DILocation(line: 482, column: 33, scope: !1649)
!1862 = !DILocation(line: 483, column: 33, scope: !1649)
!1863 = !DILocation(line: 485, column: 33, scope: !1649)
!1864 = !DILocation(line: 486, column: 33, scope: !1649)
!1865 = !DILocation(line: 487, column: 33, scope: !1649)
!1866 = !DILocation(line: 490, column: 17, scope: !1649)
!1867 = !DILocation(line: 492, column: 21, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !451, line: 491, column: 15)
!1869 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 490, column: 17)
!1870 = !DILocation(line: 499, column: 35, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 499, column: 17)
!1872 = !DILocation(line: 499, column: 57, scope: !1871)
!1873 = !DILocation(line: 0, scope: !1649)
!1874 = !DILocation(line: 502, column: 11, scope: !1649)
!1875 = !DILocation(line: 504, column: 17, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1649, file: !451, line: 503, column: 17)
!1877 = !DILocation(line: 507, column: 11, scope: !1649)
!1878 = !DILocation(line: 508, column: 17, scope: !1649)
!1879 = !DILocation(line: 517, column: 15, scope: !1626)
!1880 = !DILocation(line: 517, column: 40, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 517, column: 15)
!1882 = !DILocation(line: 517, column: 47, scope: !1881)
!1883 = !DILocation(line: 517, column: 18, scope: !1881)
!1884 = !DILocation(line: 521, column: 17, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 521, column: 15)
!1886 = !DILocation(line: 521, column: 15, scope: !1626)
!1887 = !DILocation(line: 525, column: 11, scope: !1626)
!1888 = !DILocation(line: 537, column: 15, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 536, column: 15)
!1890 = !DILocation(line: 544, column: 15, scope: !1626)
!1891 = !DILocation(line: 546, column: 19, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !451, line: 545, column: 13)
!1893 = distinct !DILexicalBlock(scope: !1626, file: !451, line: 544, column: 15)
!1894 = !DILocation(line: 549, column: 19, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !451, line: 549, column: 19)
!1896 = !DILocation(line: 549, column: 30, scope: !1895)
!1897 = !DILocation(line: 558, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !451, line: 558, column: 15)
!1899 = distinct !DILexicalBlock(scope: !1892, file: !451, line: 558, column: 15)
!1900 = !DILocation(line: 558, column: 15, scope: !1899)
!1901 = !DILocation(line: 559, column: 15, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !451, line: 559, column: 15)
!1903 = distinct !DILexicalBlock(scope: !1892, file: !451, line: 559, column: 15)
!1904 = !DILocation(line: 559, column: 15, scope: !1903)
!1905 = !DILocation(line: 560, column: 15, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1907, file: !451, line: 560, column: 15)
!1907 = distinct !DILexicalBlock(scope: !1892, file: !451, line: 560, column: 15)
!1908 = !DILocation(line: 560, column: 15, scope: !1907)
!1909 = !DILocation(line: 562, column: 13, scope: !1892)
!1910 = !DILocation(line: 602, column: 17, scope: !1625)
!1911 = !DILocation(line: 0, scope: !1625)
!1912 = !DILocation(line: 605, column: 29, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1630, file: !451, line: 603, column: 15)
!1914 = !DILocation(line: 605, column: 27, scope: !1913)
!1915 = !DILocation(line: 668, column: 40, scope: !1625)
!1916 = !DILocation(line: 670, column: 23, scope: !1646)
!1917 = !DILocation(line: 609, column: 17, scope: !1629)
!1918 = !DILocation(line: 609, column: 27, scope: !1629)
!1919 = !DILocation(line: 0, scope: !1686, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 609, column: 32, scope: !1629)
!1921 = !DILocation(line: 0, scope: !1694, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 1137, column: 3, scope: !1686, inlinedAt: !1920)
!1923 = !DILocation(line: 59, column: 10, scope: !1694, inlinedAt: !1922)
!1924 = !DILocation(line: 613, column: 29, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1629, file: !451, line: 613, column: 21)
!1926 = !DILocation(line: 613, column: 21, scope: !1629)
!1927 = !DILocation(line: 614, column: 29, scope: !1925)
!1928 = !DILocation(line: 614, column: 19, scope: !1925)
!1929 = !DILocation(line: 618, column: 21, scope: !1632)
!1930 = !DILocation(line: 620, column: 54, scope: !1632)
!1931 = !DILocation(line: 0, scope: !1632)
!1932 = !DILocation(line: 619, column: 36, scope: !1632)
!1933 = !DILocation(line: 621, column: 25, scope: !1632)
!1934 = !DILocation(line: 631, column: 38, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1641, file: !451, line: 629, column: 23)
!1936 = !DILocation(line: 631, column: 48, scope: !1935)
!1937 = !DILocation(line: 665, column: 19, scope: !1633)
!1938 = !DILocation(line: 666, column: 15, scope: !1630)
!1939 = !DILocation(line: 626, column: 25, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1642, file: !451, line: 624, column: 23)
!1941 = !DILocation(line: 631, column: 51, scope: !1935)
!1942 = !DILocation(line: 631, column: 25, scope: !1935)
!1943 = !DILocation(line: 632, column: 28, scope: !1935)
!1944 = !DILocation(line: 631, column: 34, scope: !1935)
!1945 = distinct !{!1945, !1942, !1943, !862}
!1946 = !DILocation(line: 646, column: 29, scope: !1639)
!1947 = !DILocation(line: 0, scope: !1637)
!1948 = !DILocation(line: 649, column: 49, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1637, file: !451, line: 648, column: 29)
!1950 = !DILocation(line: 649, column: 39, scope: !1949)
!1951 = !DILocation(line: 649, column: 31, scope: !1949)
!1952 = !DILocation(line: 648, column: 60, scope: !1949)
!1953 = !DILocation(line: 648, column: 50, scope: !1949)
!1954 = !DILocation(line: 648, column: 29, scope: !1637)
!1955 = distinct !{!1955, !1954, !1956, !862}
!1956 = !DILocation(line: 654, column: 33, scope: !1637)
!1957 = !DILocation(line: 657, column: 43, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1640, file: !451, line: 657, column: 29)
!1959 = !DILocalVariable(name: "wc", arg: 1, scope: !1960, file: !1961, line: 865, type: !1964)
!1960 = distinct !DISubprogram(name: "c32isprint", scope: !1961, file: !1961, line: 865, type: !1962, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !1966)
!1961 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!116, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1965, line: 20, baseType: !86)
!1965 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1966 = !{!1959}
!1967 = !DILocation(line: 0, scope: !1960, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 657, column: 31, scope: !1958)
!1969 = !DILocation(line: 871, column: 10, scope: !1960, inlinedAt: !1968)
!1970 = !DILocation(line: 657, column: 31, scope: !1958)
!1971 = !DILocation(line: 657, column: 29, scope: !1640)
!1972 = !DILocation(line: 664, column: 23, scope: !1632)
!1973 = !DILocation(line: 670, column: 19, scope: !1646)
!1974 = !DILocation(line: 670, column: 45, scope: !1646)
!1975 = !DILocation(line: 674, column: 33, scope: !1645)
!1976 = !DILocation(line: 0, scope: !1645)
!1977 = !DILocation(line: 676, column: 17, scope: !1645)
!1978 = !DILocation(line: 398, column: 12, scope: !1619)
!1979 = !DILocation(line: 678, column: 43, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !451, line: 678, column: 25)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !451, line: 677, column: 19)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !451, line: 676, column: 17)
!1983 = distinct !DILexicalBlock(scope: !1645, file: !451, line: 676, column: 17)
!1984 = !DILocation(line: 680, column: 25, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1986, file: !451, line: 680, column: 25)
!1986 = distinct !DILexicalBlock(scope: !1980, file: !451, line: 679, column: 23)
!1987 = !DILocation(line: 680, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1985, file: !451, line: 680, column: 25)
!1989 = !DILocation(line: 680, column: 25, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !451, line: 680, column: 25)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !451, line: 680, column: 25)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !451, line: 680, column: 25)
!1993 = !DILocation(line: 680, column: 25, scope: !1991)
!1994 = !DILocation(line: 680, column: 25, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !451, line: 680, column: 25)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !451, line: 680, column: 25)
!1997 = !DILocation(line: 680, column: 25, scope: !1996)
!1998 = !DILocation(line: 680, column: 25, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !451, line: 680, column: 25)
!2000 = distinct !DILexicalBlock(scope: !1992, file: !451, line: 680, column: 25)
!2001 = !DILocation(line: 680, column: 25, scope: !2000)
!2002 = !DILocation(line: 680, column: 25, scope: !1992)
!2003 = !DILocation(line: 680, column: 25, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !451, line: 680, column: 25)
!2005 = distinct !DILexicalBlock(scope: !1985, file: !451, line: 680, column: 25)
!2006 = !DILocation(line: 680, column: 25, scope: !2005)
!2007 = !DILocation(line: 681, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !451, line: 681, column: 25)
!2009 = distinct !DILexicalBlock(scope: !1986, file: !451, line: 681, column: 25)
!2010 = !DILocation(line: 681, column: 25, scope: !2009)
!2011 = !DILocation(line: 682, column: 25, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !451, line: 682, column: 25)
!2013 = distinct !DILexicalBlock(scope: !1986, file: !451, line: 682, column: 25)
!2014 = !DILocation(line: 682, column: 25, scope: !2013)
!2015 = !DILocation(line: 683, column: 38, scope: !1986)
!2016 = !DILocation(line: 683, column: 33, scope: !1986)
!2017 = !DILocation(line: 684, column: 23, scope: !1986)
!2018 = !DILocation(line: 685, column: 30, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1980, file: !451, line: 685, column: 30)
!2020 = !DILocation(line: 685, column: 30, scope: !1980)
!2021 = !DILocation(line: 687, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !451, line: 687, column: 25)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !451, line: 687, column: 25)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !451, line: 686, column: 23)
!2025 = !DILocation(line: 687, column: 25, scope: !2023)
!2026 = !DILocation(line: 689, column: 23, scope: !2024)
!2027 = !DILocation(line: 690, column: 35, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1981, file: !451, line: 690, column: 25)
!2029 = !DILocation(line: 690, column: 30, scope: !2028)
!2030 = !DILocation(line: 690, column: 25, scope: !1981)
!2031 = !DILocation(line: 692, column: 21, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !451, line: 692, column: 21)
!2033 = distinct !DILexicalBlock(scope: !1981, file: !451, line: 692, column: 21)
!2034 = !DILocation(line: 692, column: 21, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !451, line: 692, column: 21)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !451, line: 692, column: 21)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !451, line: 692, column: 21)
!2038 = !DILocation(line: 692, column: 21, scope: !2036)
!2039 = !DILocation(line: 692, column: 21, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !451, line: 692, column: 21)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !451, line: 692, column: 21)
!2042 = !DILocation(line: 692, column: 21, scope: !2041)
!2043 = !DILocation(line: 692, column: 21, scope: !2037)
!2044 = !DILocation(line: 0, scope: !1981)
!2045 = !DILocation(line: 693, column: 21, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !451, line: 693, column: 21)
!2047 = distinct !DILexicalBlock(scope: !1981, file: !451, line: 693, column: 21)
!2048 = !DILocation(line: 693, column: 21, scope: !2047)
!2049 = !DILocation(line: 694, column: 25, scope: !1981)
!2050 = !DILocation(line: 676, column: 17, scope: !1982)
!2051 = distinct !{!2051, !2052, !2053}
!2052 = !DILocation(line: 676, column: 17, scope: !1983)
!2053 = !DILocation(line: 695, column: 19, scope: !1983)
!2054 = !DILocation(line: 409, column: 30, scope: !1765)
!2055 = !DILocation(line: 702, column: 34, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 702, column: 11)
!2057 = !DILocation(line: 704, column: 14, scope: !2056)
!2058 = !DILocation(line: 705, column: 14, scope: !2056)
!2059 = !DILocation(line: 705, column: 35, scope: !2056)
!2060 = !DILocation(line: 705, column: 17, scope: !2056)
!2061 = !DILocation(line: 705, column: 47, scope: !2056)
!2062 = !DILocation(line: 705, column: 65, scope: !2056)
!2063 = !DILocation(line: 706, column: 11, scope: !2056)
!2064 = !DILocation(line: 702, column: 11, scope: !1619)
!2065 = !DILocation(line: 395, column: 15, scope: !1617)
!2066 = !DILocation(line: 709, column: 5, scope: !1619)
!2067 = !DILocation(line: 710, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 710, column: 7)
!2069 = !DILocation(line: 710, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2068, file: !451, line: 710, column: 7)
!2071 = !DILocation(line: 710, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !451, line: 710, column: 7)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !451, line: 710, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !451, line: 710, column: 7)
!2075 = !DILocation(line: 710, column: 7, scope: !2073)
!2076 = !DILocation(line: 710, column: 7, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2078, file: !451, line: 710, column: 7)
!2078 = distinct !DILexicalBlock(scope: !2074, file: !451, line: 710, column: 7)
!2079 = !DILocation(line: 710, column: 7, scope: !2078)
!2080 = !DILocation(line: 710, column: 7, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !451, line: 710, column: 7)
!2082 = distinct !DILexicalBlock(scope: !2074, file: !451, line: 710, column: 7)
!2083 = !DILocation(line: 710, column: 7, scope: !2082)
!2084 = !DILocation(line: 710, column: 7, scope: !2074)
!2085 = !DILocation(line: 710, column: 7, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !451, line: 710, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2068, file: !451, line: 710, column: 7)
!2088 = !DILocation(line: 710, column: 7, scope: !2087)
!2089 = !DILocation(line: 712, column: 5, scope: !1619)
!2090 = !DILocation(line: 713, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !451, line: 713, column: 7)
!2092 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 713, column: 7)
!2093 = !DILocation(line: 417, column: 21, scope: !1619)
!2094 = !DILocation(line: 713, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2096, file: !451, line: 713, column: 7)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !451, line: 713, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2091, file: !451, line: 713, column: 7)
!2098 = !DILocation(line: 713, column: 7, scope: !2096)
!2099 = !DILocation(line: 713, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !451, line: 713, column: 7)
!2101 = distinct !DILexicalBlock(scope: !2097, file: !451, line: 713, column: 7)
!2102 = !DILocation(line: 713, column: 7, scope: !2101)
!2103 = !DILocation(line: 713, column: 7, scope: !2097)
!2104 = !DILocation(line: 714, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !451, line: 714, column: 7)
!2106 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 714, column: 7)
!2107 = !DILocation(line: 714, column: 7, scope: !2106)
!2108 = !DILocation(line: 716, column: 13, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !1619, file: !451, line: 716, column: 11)
!2110 = !DILocation(line: 716, column: 11, scope: !1619)
!2111 = !DILocation(line: 718, column: 5, scope: !1620)
!2112 = !DILocation(line: 395, column: 82, scope: !1620)
!2113 = !DILocation(line: 395, column: 3, scope: !1620)
!2114 = distinct !{!2114, !1761, !2115, !862}
!2115 = !DILocation(line: 718, column: 5, scope: !1617)
!2116 = !DILocation(line: 720, column: 11, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 720, column: 7)
!2118 = !DILocation(line: 720, column: 16, scope: !2117)
!2119 = !DILocation(line: 728, column: 51, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 728, column: 7)
!2121 = !DILocation(line: 731, column: 11, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !451, line: 731, column: 11)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !451, line: 730, column: 5)
!2124 = !DILocation(line: 731, column: 11, scope: !2123)
!2125 = !DILocation(line: 732, column: 16, scope: !2122)
!2126 = !DILocation(line: 732, column: 9, scope: !2122)
!2127 = !DILocation(line: 736, column: 18, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2122, file: !451, line: 736, column: 16)
!2129 = !DILocation(line: 736, column: 29, scope: !2128)
!2130 = !DILocation(line: 745, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 745, column: 7)
!2132 = !DILocation(line: 745, column: 20, scope: !2131)
!2133 = !DILocation(line: 746, column: 12, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !451, line: 746, column: 5)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !451, line: 746, column: 5)
!2136 = !DILocation(line: 746, column: 5, scope: !2135)
!2137 = !DILocation(line: 747, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !451, line: 747, column: 7)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !451, line: 747, column: 7)
!2140 = !DILocation(line: 747, column: 7, scope: !2139)
!2141 = !DILocation(line: 746, column: 39, scope: !2134)
!2142 = distinct !{!2142, !2136, !2143, !862}
!2143 = !DILocation(line: 747, column: 7, scope: !2135)
!2144 = !DILocation(line: 749, column: 11, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 749, column: 7)
!2146 = !DILocation(line: 749, column: 7, scope: !1586)
!2147 = !DILocation(line: 750, column: 5, scope: !2145)
!2148 = !DILocation(line: 750, column: 17, scope: !2145)
!2149 = !DILocation(line: 753, column: 2, scope: !1586)
!2150 = !DILocation(line: 756, column: 51, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1586, file: !451, line: 756, column: 7)
!2152 = !DILocation(line: 756, column: 21, scope: !2151)
!2153 = !DILocation(line: 760, column: 42, scope: !1586)
!2154 = !DILocation(line: 758, column: 10, scope: !1586)
!2155 = !DILocation(line: 758, column: 3, scope: !1586)
!2156 = !DILocation(line: 762, column: 1, scope: !1586)
!2157 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !940, file: !940, line: 98, type: !2158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!118}
!2160 = !DISubprogram(name: "strlen", scope: !936, file: !936, line: 407, type: !2161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!120, !80}
!2163 = !DISubprogram(name: "iswprint", scope: !2164, file: !2164, line: 120, type: !1962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!2164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2165 = distinct !DISubprogram(name: "quotearg_alloc", scope: !451, file: !451, line: 788, type: !2166, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2168)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!260, !80, !118, !1479}
!2168 = !{!2169, !2170, !2171}
!2169 = !DILocalVariable(name: "arg", arg: 1, scope: !2165, file: !451, line: 788, type: !80)
!2170 = !DILocalVariable(name: "argsize", arg: 2, scope: !2165, file: !451, line: 788, type: !118)
!2171 = !DILocalVariable(name: "o", arg: 3, scope: !2165, file: !451, line: 789, type: !1479)
!2172 = !DILocation(line: 0, scope: !2165)
!2173 = !DILocalVariable(name: "arg", arg: 1, scope: !2174, file: !451, line: 801, type: !80)
!2174 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !451, file: !451, line: 801, type: !2175, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!260, !80, !118, !688, !1479}
!2177 = !{!2173, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2178 = !DILocalVariable(name: "argsize", arg: 2, scope: !2174, file: !451, line: 801, type: !118)
!2179 = !DILocalVariable(name: "size", arg: 3, scope: !2174, file: !451, line: 801, type: !688)
!2180 = !DILocalVariable(name: "o", arg: 4, scope: !2174, file: !451, line: 802, type: !1479)
!2181 = !DILocalVariable(name: "p", scope: !2174, file: !451, line: 804, type: !1479)
!2182 = !DILocalVariable(name: "saved_errno", scope: !2174, file: !451, line: 805, type: !116)
!2183 = !DILocalVariable(name: "flags", scope: !2174, file: !451, line: 807, type: !116)
!2184 = !DILocalVariable(name: "bufsize", scope: !2174, file: !451, line: 808, type: !118)
!2185 = !DILocalVariable(name: "buf", scope: !2174, file: !451, line: 812, type: !260)
!2186 = !DILocation(line: 0, scope: !2174, inlinedAt: !2187)
!2187 = distinct !DILocation(line: 791, column: 10, scope: !2165)
!2188 = !DILocation(line: 804, column: 37, scope: !2174, inlinedAt: !2187)
!2189 = !DILocation(line: 805, column: 21, scope: !2174, inlinedAt: !2187)
!2190 = !DILocation(line: 807, column: 18, scope: !2174, inlinedAt: !2187)
!2191 = !DILocation(line: 807, column: 24, scope: !2174, inlinedAt: !2187)
!2192 = !DILocation(line: 808, column: 72, scope: !2174, inlinedAt: !2187)
!2193 = !DILocation(line: 809, column: 56, scope: !2174, inlinedAt: !2187)
!2194 = !DILocation(line: 810, column: 49, scope: !2174, inlinedAt: !2187)
!2195 = !DILocation(line: 811, column: 49, scope: !2174, inlinedAt: !2187)
!2196 = !DILocation(line: 808, column: 20, scope: !2174, inlinedAt: !2187)
!2197 = !DILocation(line: 811, column: 62, scope: !2174, inlinedAt: !2187)
!2198 = !DILocation(line: 812, column: 15, scope: !2174, inlinedAt: !2187)
!2199 = !DILocation(line: 813, column: 60, scope: !2174, inlinedAt: !2187)
!2200 = !DILocation(line: 815, column: 32, scope: !2174, inlinedAt: !2187)
!2201 = !DILocation(line: 815, column: 47, scope: !2174, inlinedAt: !2187)
!2202 = !DILocation(line: 813, column: 3, scope: !2174, inlinedAt: !2187)
!2203 = !DILocation(line: 816, column: 9, scope: !2174, inlinedAt: !2187)
!2204 = !DILocation(line: 791, column: 3, scope: !2165)
!2205 = !DILocation(line: 0, scope: !2174)
!2206 = !DILocation(line: 804, column: 37, scope: !2174)
!2207 = !DILocation(line: 805, column: 21, scope: !2174)
!2208 = !DILocation(line: 807, column: 18, scope: !2174)
!2209 = !DILocation(line: 807, column: 27, scope: !2174)
!2210 = !DILocation(line: 807, column: 24, scope: !2174)
!2211 = !DILocation(line: 808, column: 72, scope: !2174)
!2212 = !DILocation(line: 809, column: 56, scope: !2174)
!2213 = !DILocation(line: 810, column: 49, scope: !2174)
!2214 = !DILocation(line: 811, column: 49, scope: !2174)
!2215 = !DILocation(line: 808, column: 20, scope: !2174)
!2216 = !DILocation(line: 811, column: 62, scope: !2174)
!2217 = !DILocation(line: 812, column: 15, scope: !2174)
!2218 = !DILocation(line: 813, column: 60, scope: !2174)
!2219 = !DILocation(line: 815, column: 32, scope: !2174)
!2220 = !DILocation(line: 815, column: 47, scope: !2174)
!2221 = !DILocation(line: 813, column: 3, scope: !2174)
!2222 = !DILocation(line: 816, column: 9, scope: !2174)
!2223 = !DILocation(line: 817, column: 7, scope: !2174)
!2224 = !DILocation(line: 818, column: 11, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2174, file: !451, line: 817, column: 7)
!2226 = !{!1199, !1199, i64 0}
!2227 = !DILocation(line: 818, column: 5, scope: !2225)
!2228 = !DILocation(line: 819, column: 3, scope: !2174)
!2229 = distinct !DISubprogram(name: "quotearg_free", scope: !451, file: !451, line: 837, type: !383, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2230)
!2230 = !{!2231, !2232}
!2231 = !DILocalVariable(name: "sv", scope: !2229, file: !451, line: 839, type: !538)
!2232 = !DILocalVariable(name: "i", scope: !2233, file: !451, line: 840, type: !116)
!2233 = distinct !DILexicalBlock(scope: !2229, file: !451, line: 840, column: 3)
!2234 = !DILocation(line: 839, column: 24, scope: !2229)
!2235 = !DILocation(line: 0, scope: !2229)
!2236 = !DILocation(line: 0, scope: !2233)
!2237 = !DILocation(line: 840, column: 21, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2233, file: !451, line: 840, column: 3)
!2239 = !DILocation(line: 840, column: 3, scope: !2233)
!2240 = !DILocation(line: 842, column: 13, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2229, file: !451, line: 842, column: 7)
!2242 = !{!2243, !755, i64 8}
!2243 = !{!"slotvec", !1199, i64 0, !755, i64 8}
!2244 = !DILocation(line: 842, column: 17, scope: !2241)
!2245 = !DILocation(line: 842, column: 7, scope: !2229)
!2246 = !DILocation(line: 841, column: 17, scope: !2238)
!2247 = !DILocation(line: 841, column: 5, scope: !2238)
!2248 = !DILocation(line: 840, column: 32, scope: !2238)
!2249 = distinct !{!2249, !2239, !2250, !862}
!2250 = !DILocation(line: 841, column: 20, scope: !2233)
!2251 = !DILocation(line: 844, column: 7, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2241, file: !451, line: 843, column: 5)
!2253 = !DILocation(line: 845, column: 21, scope: !2252)
!2254 = !{!2243, !1199, i64 0}
!2255 = !DILocation(line: 846, column: 20, scope: !2252)
!2256 = !DILocation(line: 847, column: 5, scope: !2252)
!2257 = !DILocation(line: 848, column: 10, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2229, file: !451, line: 848, column: 7)
!2259 = !DILocation(line: 848, column: 7, scope: !2229)
!2260 = !DILocation(line: 850, column: 7, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !451, line: 849, column: 5)
!2262 = !DILocation(line: 851, column: 15, scope: !2261)
!2263 = !DILocation(line: 852, column: 5, scope: !2261)
!2264 = !DILocation(line: 853, column: 10, scope: !2229)
!2265 = !DILocation(line: 854, column: 1, scope: !2229)
!2266 = !DISubprogram(name: "free", scope: !1433, file: !1433, line: 786, type: !2267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !115}
!2269 = distinct !DISubprogram(name: "quotearg_n", scope: !451, file: !451, line: 919, type: !933, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2270)
!2270 = !{!2271, !2272}
!2271 = !DILocalVariable(name: "n", arg: 1, scope: !2269, file: !451, line: 919, type: !116)
!2272 = !DILocalVariable(name: "arg", arg: 2, scope: !2269, file: !451, line: 919, type: !80)
!2273 = !DILocation(line: 0, scope: !2269)
!2274 = !DILocation(line: 921, column: 10, scope: !2269)
!2275 = !DILocation(line: 921, column: 3, scope: !2269)
!2276 = distinct !DISubprogram(name: "quotearg_n_options", scope: !451, file: !451, line: 866, type: !2277, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2279)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!260, !116, !80, !118, !1479}
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2290, !2291, !2293, !2294, !2295}
!2280 = !DILocalVariable(name: "n", arg: 1, scope: !2276, file: !451, line: 866, type: !116)
!2281 = !DILocalVariable(name: "arg", arg: 2, scope: !2276, file: !451, line: 866, type: !80)
!2282 = !DILocalVariable(name: "argsize", arg: 3, scope: !2276, file: !451, line: 866, type: !118)
!2283 = !DILocalVariable(name: "options", arg: 4, scope: !2276, file: !451, line: 867, type: !1479)
!2284 = !DILocalVariable(name: "saved_errno", scope: !2276, file: !451, line: 869, type: !116)
!2285 = !DILocalVariable(name: "sv", scope: !2276, file: !451, line: 871, type: !538)
!2286 = !DILocalVariable(name: "nslots_max", scope: !2276, file: !451, line: 873, type: !116)
!2287 = !DILocalVariable(name: "preallocated", scope: !2288, file: !451, line: 879, type: !239)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !451, line: 878, column: 5)
!2289 = distinct !DILexicalBlock(scope: !2276, file: !451, line: 877, column: 7)
!2290 = !DILocalVariable(name: "new_nslots", scope: !2288, file: !451, line: 880, type: !701)
!2291 = !DILocalVariable(name: "size", scope: !2292, file: !451, line: 891, type: !118)
!2292 = distinct !DILexicalBlock(scope: !2276, file: !451, line: 890, column: 3)
!2293 = !DILocalVariable(name: "val", scope: !2292, file: !451, line: 892, type: !260)
!2294 = !DILocalVariable(name: "flags", scope: !2292, file: !451, line: 894, type: !116)
!2295 = !DILocalVariable(name: "qsize", scope: !2292, file: !451, line: 895, type: !118)
!2296 = !DILocation(line: 0, scope: !2276)
!2297 = !DILocation(line: 869, column: 21, scope: !2276)
!2298 = !DILocation(line: 871, column: 24, scope: !2276)
!2299 = !DILocation(line: 874, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2276, file: !451, line: 874, column: 7)
!2301 = !DILocation(line: 875, column: 5, scope: !2300)
!2302 = !DILocation(line: 877, column: 7, scope: !2289)
!2303 = !DILocation(line: 877, column: 14, scope: !2289)
!2304 = !DILocation(line: 877, column: 7, scope: !2276)
!2305 = !DILocation(line: 879, column: 31, scope: !2288)
!2306 = !DILocation(line: 0, scope: !2288)
!2307 = !DILocation(line: 880, column: 7, scope: !2288)
!2308 = !DILocation(line: 880, column: 26, scope: !2288)
!2309 = !DILocation(line: 880, column: 13, scope: !2288)
!2310 = !DILocation(line: 882, column: 31, scope: !2288)
!2311 = !DILocation(line: 883, column: 33, scope: !2288)
!2312 = !DILocation(line: 883, column: 42, scope: !2288)
!2313 = !DILocation(line: 883, column: 31, scope: !2288)
!2314 = !DILocation(line: 882, column: 22, scope: !2288)
!2315 = !DILocation(line: 882, column: 15, scope: !2288)
!2316 = !DILocation(line: 884, column: 11, scope: !2288)
!2317 = !DILocation(line: 885, column: 15, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2288, file: !451, line: 884, column: 11)
!2319 = !{i64 0, i64 8, !2226, i64 8, i64 8, !754}
!2320 = !DILocation(line: 885, column: 9, scope: !2318)
!2321 = !DILocation(line: 886, column: 20, scope: !2288)
!2322 = !DILocation(line: 886, column: 18, scope: !2288)
!2323 = !DILocation(line: 886, column: 32, scope: !2288)
!2324 = !DILocation(line: 886, column: 43, scope: !2288)
!2325 = !DILocation(line: 886, column: 53, scope: !2288)
!2326 = !DILocation(line: 0, scope: !1694, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 886, column: 7, scope: !2288)
!2328 = !DILocation(line: 59, column: 10, scope: !1694, inlinedAt: !2327)
!2329 = !DILocation(line: 887, column: 16, scope: !2288)
!2330 = !DILocation(line: 887, column: 14, scope: !2288)
!2331 = !DILocation(line: 888, column: 5, scope: !2289)
!2332 = !DILocation(line: 888, column: 5, scope: !2288)
!2333 = !DILocation(line: 891, column: 19, scope: !2292)
!2334 = !DILocation(line: 891, column: 25, scope: !2292)
!2335 = !DILocation(line: 0, scope: !2292)
!2336 = !DILocation(line: 892, column: 23, scope: !2292)
!2337 = !DILocation(line: 894, column: 26, scope: !2292)
!2338 = !DILocation(line: 894, column: 32, scope: !2292)
!2339 = !DILocation(line: 896, column: 55, scope: !2292)
!2340 = !DILocation(line: 897, column: 55, scope: !2292)
!2341 = !DILocation(line: 898, column: 55, scope: !2292)
!2342 = !DILocation(line: 899, column: 55, scope: !2292)
!2343 = !DILocation(line: 895, column: 20, scope: !2292)
!2344 = !DILocation(line: 901, column: 14, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2292, file: !451, line: 901, column: 9)
!2346 = !DILocation(line: 901, column: 9, scope: !2292)
!2347 = !DILocation(line: 903, column: 35, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !451, line: 902, column: 7)
!2349 = !DILocation(line: 903, column: 20, scope: !2348)
!2350 = !DILocation(line: 904, column: 17, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !451, line: 904, column: 13)
!2352 = !DILocation(line: 904, column: 13, scope: !2348)
!2353 = !DILocation(line: 905, column: 11, scope: !2351)
!2354 = !DILocation(line: 906, column: 27, scope: !2348)
!2355 = !DILocation(line: 906, column: 19, scope: !2348)
!2356 = !DILocation(line: 907, column: 69, scope: !2348)
!2357 = !DILocation(line: 909, column: 44, scope: !2348)
!2358 = !DILocation(line: 910, column: 44, scope: !2348)
!2359 = !DILocation(line: 907, column: 9, scope: !2348)
!2360 = !DILocation(line: 911, column: 7, scope: !2348)
!2361 = !DILocation(line: 913, column: 11, scope: !2292)
!2362 = !DILocation(line: 914, column: 5, scope: !2292)
!2363 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !451, file: !451, line: 925, type: !2364, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!260, !116, !80, !118}
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "n", arg: 1, scope: !2363, file: !451, line: 925, type: !116)
!2368 = !DILocalVariable(name: "arg", arg: 2, scope: !2363, file: !451, line: 925, type: !80)
!2369 = !DILocalVariable(name: "argsize", arg: 3, scope: !2363, file: !451, line: 925, type: !118)
!2370 = !DILocation(line: 0, scope: !2363)
!2371 = !DILocation(line: 927, column: 10, scope: !2363)
!2372 = !DILocation(line: 927, column: 3, scope: !2363)
!2373 = distinct !DISubprogram(name: "quotearg", scope: !451, file: !451, line: 931, type: !942, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2374)
!2374 = !{!2375}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2373, file: !451, line: 931, type: !80)
!2376 = !DILocation(line: 0, scope: !2373)
!2377 = !DILocation(line: 0, scope: !2269, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 933, column: 10, scope: !2373)
!2379 = !DILocation(line: 921, column: 10, scope: !2269, inlinedAt: !2378)
!2380 = !DILocation(line: 933, column: 3, scope: !2373)
!2381 = distinct !DISubprogram(name: "quotearg_mem", scope: !451, file: !451, line: 937, type: !2382, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!260, !80, !118}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "arg", arg: 1, scope: !2381, file: !451, line: 937, type: !80)
!2386 = !DILocalVariable(name: "argsize", arg: 2, scope: !2381, file: !451, line: 937, type: !118)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 0, scope: !2363, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 939, column: 10, scope: !2381)
!2390 = !DILocation(line: 927, column: 10, scope: !2363, inlinedAt: !2389)
!2391 = !DILocation(line: 939, column: 3, scope: !2381)
!2392 = distinct !DISubprogram(name: "quotearg_n_style", scope: !451, file: !451, line: 943, type: !2393, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!260, !116, !84, !80}
!2395 = !{!2396, !2397, !2398, !2399}
!2396 = !DILocalVariable(name: "n", arg: 1, scope: !2392, file: !451, line: 943, type: !116)
!2397 = !DILocalVariable(name: "s", arg: 2, scope: !2392, file: !451, line: 943, type: !84)
!2398 = !DILocalVariable(name: "arg", arg: 3, scope: !2392, file: !451, line: 943, type: !80)
!2399 = !DILocalVariable(name: "o", scope: !2392, file: !451, line: 945, type: !1480)
!2400 = !DILocation(line: 0, scope: !2392)
!2401 = !DILocation(line: 945, column: 3, scope: !2392)
!2402 = !DILocation(line: 945, column: 32, scope: !2392)
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"quoting_options_from_style: argument 0"}
!2405 = distinct !{!2405, !"quoting_options_from_style"}
!2406 = !DILocation(line: 945, column: 36, scope: !2392)
!2407 = !DILocalVariable(name: "style", arg: 1, scope: !2408, file: !451, line: 183, type: !84)
!2408 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !451, file: !451, line: 183, type: !2409, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!490, !84}
!2411 = !{!2407, !2412}
!2412 = !DILocalVariable(name: "o", scope: !2408, file: !451, line: 185, type: !490)
!2413 = !DILocation(line: 0, scope: !2408, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 945, column: 36, scope: !2392)
!2415 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2414)
!2416 = !DILocation(line: 186, column: 13, scope: !2417, inlinedAt: !2414)
!2417 = distinct !DILexicalBlock(scope: !2408, file: !451, line: 186, column: 7)
!2418 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2414)
!2419 = !DILocation(line: 187, column: 5, scope: !2417, inlinedAt: !2414)
!2420 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2414)
!2421 = !DILocation(line: 946, column: 10, scope: !2392)
!2422 = !DILocation(line: 947, column: 1, scope: !2392)
!2423 = !DILocation(line: 946, column: 3, scope: !2392)
!2424 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !451, file: !451, line: 950, type: !2425, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!260, !116, !84, !80, !118}
!2427 = !{!2428, !2429, !2430, !2431, !2432}
!2428 = !DILocalVariable(name: "n", arg: 1, scope: !2424, file: !451, line: 950, type: !116)
!2429 = !DILocalVariable(name: "s", arg: 2, scope: !2424, file: !451, line: 950, type: !84)
!2430 = !DILocalVariable(name: "arg", arg: 3, scope: !2424, file: !451, line: 951, type: !80)
!2431 = !DILocalVariable(name: "argsize", arg: 4, scope: !2424, file: !451, line: 951, type: !118)
!2432 = !DILocalVariable(name: "o", scope: !2424, file: !451, line: 953, type: !1480)
!2433 = !DILocation(line: 0, scope: !2424)
!2434 = !DILocation(line: 953, column: 3, scope: !2424)
!2435 = !DILocation(line: 953, column: 32, scope: !2424)
!2436 = !{!2437}
!2437 = distinct !{!2437, !2438, !"quoting_options_from_style: argument 0"}
!2438 = distinct !{!2438, !"quoting_options_from_style"}
!2439 = !DILocation(line: 953, column: 36, scope: !2424)
!2440 = !DILocation(line: 0, scope: !2408, inlinedAt: !2441)
!2441 = distinct !DILocation(line: 953, column: 36, scope: !2424)
!2442 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2441)
!2443 = !DILocation(line: 186, column: 13, scope: !2417, inlinedAt: !2441)
!2444 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2441)
!2445 = !DILocation(line: 187, column: 5, scope: !2417, inlinedAt: !2441)
!2446 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2441)
!2447 = !DILocation(line: 954, column: 10, scope: !2424)
!2448 = !DILocation(line: 955, column: 1, scope: !2424)
!2449 = !DILocation(line: 954, column: 3, scope: !2424)
!2450 = distinct !DISubprogram(name: "quotearg_style", scope: !451, file: !451, line: 958, type: !2451, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2453)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!260, !84, !80}
!2453 = !{!2454, !2455}
!2454 = !DILocalVariable(name: "s", arg: 1, scope: !2450, file: !451, line: 958, type: !84)
!2455 = !DILocalVariable(name: "arg", arg: 2, scope: !2450, file: !451, line: 958, type: !80)
!2456 = !DILocation(line: 0, scope: !2450)
!2457 = !DILocation(line: 0, scope: !2392, inlinedAt: !2458)
!2458 = distinct !DILocation(line: 960, column: 10, scope: !2450)
!2459 = !DILocation(line: 945, column: 3, scope: !2392, inlinedAt: !2458)
!2460 = !DILocation(line: 945, column: 32, scope: !2392, inlinedAt: !2458)
!2461 = !{!2462}
!2462 = distinct !{!2462, !2463, !"quoting_options_from_style: argument 0"}
!2463 = distinct !{!2463, !"quoting_options_from_style"}
!2464 = !DILocation(line: 945, column: 36, scope: !2392, inlinedAt: !2458)
!2465 = !DILocation(line: 0, scope: !2408, inlinedAt: !2466)
!2466 = distinct !DILocation(line: 945, column: 36, scope: !2392, inlinedAt: !2458)
!2467 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2466)
!2468 = !DILocation(line: 186, column: 13, scope: !2417, inlinedAt: !2466)
!2469 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2466)
!2470 = !DILocation(line: 187, column: 5, scope: !2417, inlinedAt: !2466)
!2471 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2466)
!2472 = !DILocation(line: 946, column: 10, scope: !2392, inlinedAt: !2458)
!2473 = !DILocation(line: 947, column: 1, scope: !2392, inlinedAt: !2458)
!2474 = !DILocation(line: 960, column: 3, scope: !2450)
!2475 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !451, file: !451, line: 964, type: !2476, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!260, !84, !80, !118}
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "s", arg: 1, scope: !2475, file: !451, line: 964, type: !84)
!2480 = !DILocalVariable(name: "arg", arg: 2, scope: !2475, file: !451, line: 964, type: !80)
!2481 = !DILocalVariable(name: "argsize", arg: 3, scope: !2475, file: !451, line: 964, type: !118)
!2482 = !DILocation(line: 0, scope: !2475)
!2483 = !DILocation(line: 0, scope: !2424, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 966, column: 10, scope: !2475)
!2485 = !DILocation(line: 953, column: 3, scope: !2424, inlinedAt: !2484)
!2486 = !DILocation(line: 953, column: 32, scope: !2424, inlinedAt: !2484)
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"quoting_options_from_style: argument 0"}
!2489 = distinct !{!2489, !"quoting_options_from_style"}
!2490 = !DILocation(line: 953, column: 36, scope: !2424, inlinedAt: !2484)
!2491 = !DILocation(line: 0, scope: !2408, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 953, column: 36, scope: !2424, inlinedAt: !2484)
!2493 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2492)
!2494 = !DILocation(line: 186, column: 13, scope: !2417, inlinedAt: !2492)
!2495 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2492)
!2496 = !DILocation(line: 187, column: 5, scope: !2417, inlinedAt: !2492)
!2497 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2492)
!2498 = !DILocation(line: 954, column: 10, scope: !2424, inlinedAt: !2484)
!2499 = !DILocation(line: 955, column: 1, scope: !2424, inlinedAt: !2484)
!2500 = !DILocation(line: 966, column: 3, scope: !2475)
!2501 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !451, file: !451, line: 970, type: !2502, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2504)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!260, !80, !118, !4}
!2504 = !{!2505, !2506, !2507, !2508}
!2505 = !DILocalVariable(name: "arg", arg: 1, scope: !2501, file: !451, line: 970, type: !80)
!2506 = !DILocalVariable(name: "argsize", arg: 2, scope: !2501, file: !451, line: 970, type: !118)
!2507 = !DILocalVariable(name: "ch", arg: 3, scope: !2501, file: !451, line: 970, type: !4)
!2508 = !DILocalVariable(name: "options", scope: !2501, file: !451, line: 972, type: !490)
!2509 = !DILocation(line: 0, scope: !2501)
!2510 = !DILocation(line: 972, column: 3, scope: !2501)
!2511 = !DILocation(line: 972, column: 26, scope: !2501)
!2512 = !DILocation(line: 973, column: 13, scope: !2501)
!2513 = !{i64 0, i64 4, !824, i64 4, i64 4, !815, i64 8, i64 32, !824, i64 40, i64 8, !754, i64 48, i64 8, !754}
!2514 = !DILocation(line: 0, scope: !1499, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 974, column: 3, scope: !2501)
!2516 = !DILocation(line: 147, column: 41, scope: !1499, inlinedAt: !2515)
!2517 = !DILocation(line: 147, column: 62, scope: !1499, inlinedAt: !2515)
!2518 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2515)
!2519 = !DILocation(line: 148, column: 15, scope: !1499, inlinedAt: !2515)
!2520 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2515)
!2521 = !DILocation(line: 149, column: 24, scope: !1499, inlinedAt: !2515)
!2522 = !DILocation(line: 150, column: 19, scope: !1499, inlinedAt: !2515)
!2523 = !DILocation(line: 150, column: 24, scope: !1499, inlinedAt: !2515)
!2524 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2515)
!2525 = !DILocation(line: 975, column: 10, scope: !2501)
!2526 = !DILocation(line: 976, column: 1, scope: !2501)
!2527 = !DILocation(line: 975, column: 3, scope: !2501)
!2528 = distinct !DISubprogram(name: "quotearg_char", scope: !451, file: !451, line: 979, type: !2529, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2531)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!260, !80, !4}
!2531 = !{!2532, !2533}
!2532 = !DILocalVariable(name: "arg", arg: 1, scope: !2528, file: !451, line: 979, type: !80)
!2533 = !DILocalVariable(name: "ch", arg: 2, scope: !2528, file: !451, line: 979, type: !4)
!2534 = !DILocation(line: 0, scope: !2528)
!2535 = !DILocation(line: 0, scope: !2501, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 981, column: 10, scope: !2528)
!2537 = !DILocation(line: 972, column: 3, scope: !2501, inlinedAt: !2536)
!2538 = !DILocation(line: 972, column: 26, scope: !2501, inlinedAt: !2536)
!2539 = !DILocation(line: 973, column: 13, scope: !2501, inlinedAt: !2536)
!2540 = !DILocation(line: 0, scope: !1499, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 974, column: 3, scope: !2501, inlinedAt: !2536)
!2542 = !DILocation(line: 147, column: 41, scope: !1499, inlinedAt: !2541)
!2543 = !DILocation(line: 147, column: 62, scope: !1499, inlinedAt: !2541)
!2544 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2541)
!2545 = !DILocation(line: 148, column: 15, scope: !1499, inlinedAt: !2541)
!2546 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2541)
!2547 = !DILocation(line: 149, column: 24, scope: !1499, inlinedAt: !2541)
!2548 = !DILocation(line: 150, column: 19, scope: !1499, inlinedAt: !2541)
!2549 = !DILocation(line: 150, column: 24, scope: !1499, inlinedAt: !2541)
!2550 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2541)
!2551 = !DILocation(line: 975, column: 10, scope: !2501, inlinedAt: !2536)
!2552 = !DILocation(line: 976, column: 1, scope: !2501, inlinedAt: !2536)
!2553 = !DILocation(line: 981, column: 3, scope: !2528)
!2554 = distinct !DISubprogram(name: "quotearg_colon", scope: !451, file: !451, line: 985, type: !942, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2555)
!2555 = !{!2556}
!2556 = !DILocalVariable(name: "arg", arg: 1, scope: !2554, file: !451, line: 985, type: !80)
!2557 = !DILocation(line: 0, scope: !2554)
!2558 = !DILocation(line: 0, scope: !2528, inlinedAt: !2559)
!2559 = distinct !DILocation(line: 987, column: 10, scope: !2554)
!2560 = !DILocation(line: 0, scope: !2501, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 981, column: 10, scope: !2528, inlinedAt: !2559)
!2562 = !DILocation(line: 972, column: 3, scope: !2501, inlinedAt: !2561)
!2563 = !DILocation(line: 972, column: 26, scope: !2501, inlinedAt: !2561)
!2564 = !DILocation(line: 973, column: 13, scope: !2501, inlinedAt: !2561)
!2565 = !DILocation(line: 0, scope: !1499, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 974, column: 3, scope: !2501, inlinedAt: !2561)
!2567 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2566)
!2568 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2566)
!2569 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2566)
!2570 = !DILocation(line: 975, column: 10, scope: !2501, inlinedAt: !2561)
!2571 = !DILocation(line: 976, column: 1, scope: !2501, inlinedAt: !2561)
!2572 = !DILocation(line: 987, column: 3, scope: !2554)
!2573 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !451, file: !451, line: 991, type: !2382, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2574)
!2574 = !{!2575, !2576}
!2575 = !DILocalVariable(name: "arg", arg: 1, scope: !2573, file: !451, line: 991, type: !80)
!2576 = !DILocalVariable(name: "argsize", arg: 2, scope: !2573, file: !451, line: 991, type: !118)
!2577 = !DILocation(line: 0, scope: !2573)
!2578 = !DILocation(line: 0, scope: !2501, inlinedAt: !2579)
!2579 = distinct !DILocation(line: 993, column: 10, scope: !2573)
!2580 = !DILocation(line: 972, column: 3, scope: !2501, inlinedAt: !2579)
!2581 = !DILocation(line: 972, column: 26, scope: !2501, inlinedAt: !2579)
!2582 = !DILocation(line: 973, column: 13, scope: !2501, inlinedAt: !2579)
!2583 = !DILocation(line: 0, scope: !1499, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 974, column: 3, scope: !2501, inlinedAt: !2579)
!2585 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2584)
!2586 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2584)
!2587 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2584)
!2588 = !DILocation(line: 975, column: 10, scope: !2501, inlinedAt: !2579)
!2589 = !DILocation(line: 976, column: 1, scope: !2501, inlinedAt: !2579)
!2590 = !DILocation(line: 993, column: 3, scope: !2573)
!2591 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !451, file: !451, line: 997, type: !2393, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2592)
!2592 = !{!2593, !2594, !2595, !2596}
!2593 = !DILocalVariable(name: "n", arg: 1, scope: !2591, file: !451, line: 997, type: !116)
!2594 = !DILocalVariable(name: "s", arg: 2, scope: !2591, file: !451, line: 997, type: !84)
!2595 = !DILocalVariable(name: "arg", arg: 3, scope: !2591, file: !451, line: 997, type: !80)
!2596 = !DILocalVariable(name: "options", scope: !2591, file: !451, line: 999, type: !490)
!2597 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1000, column: 13, scope: !2591)
!2599 = !DILocation(line: 0, scope: !2591)
!2600 = !DILocation(line: 999, column: 3, scope: !2591)
!2601 = !DILocation(line: 999, column: 26, scope: !2591)
!2602 = !DILocation(line: 0, scope: !2408, inlinedAt: !2598)
!2603 = !DILocation(line: 186, column: 13, scope: !2417, inlinedAt: !2598)
!2604 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2598)
!2605 = !DILocation(line: 187, column: 5, scope: !2417, inlinedAt: !2598)
!2606 = !{!2607}
!2607 = distinct !{!2607, !2608, !"quoting_options_from_style: argument 0"}
!2608 = distinct !{!2608, !"quoting_options_from_style"}
!2609 = !DILocation(line: 1000, column: 13, scope: !2591)
!2610 = !DILocation(line: 0, scope: !1499, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1001, column: 3, scope: !2591)
!2612 = !DILocation(line: 147, column: 57, scope: !1499, inlinedAt: !2611)
!2613 = !DILocation(line: 149, column: 21, scope: !1499, inlinedAt: !2611)
!2614 = !DILocation(line: 150, column: 6, scope: !1499, inlinedAt: !2611)
!2615 = !DILocation(line: 1002, column: 10, scope: !2591)
!2616 = !DILocation(line: 1003, column: 1, scope: !2591)
!2617 = !DILocation(line: 1002, column: 3, scope: !2591)
!2618 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !451, file: !451, line: 1006, type: !2619, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!260, !116, !80, !80, !80}
!2621 = !{!2622, !2623, !2624, !2625}
!2622 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !451, line: 1006, type: !116)
!2623 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2618, file: !451, line: 1006, type: !80)
!2624 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2618, file: !451, line: 1007, type: !80)
!2625 = !DILocalVariable(name: "arg", arg: 4, scope: !2618, file: !451, line: 1007, type: !80)
!2626 = !DILocation(line: 0, scope: !2618)
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2628, file: !451, line: 1014, type: !116)
!2628 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !451, file: !451, line: 1014, type: !2629, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!260, !116, !80, !80, !80, !118}
!2631 = !{!2627, !2632, !2633, !2634, !2635, !2636}
!2632 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2628, file: !451, line: 1014, type: !80)
!2633 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2628, file: !451, line: 1015, type: !80)
!2634 = !DILocalVariable(name: "arg", arg: 4, scope: !2628, file: !451, line: 1016, type: !80)
!2635 = !DILocalVariable(name: "argsize", arg: 5, scope: !2628, file: !451, line: 1016, type: !118)
!2636 = !DILocalVariable(name: "o", scope: !2628, file: !451, line: 1018, type: !490)
!2637 = !DILocation(line: 0, scope: !2628, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 1009, column: 10, scope: !2618)
!2639 = !DILocation(line: 1018, column: 3, scope: !2628, inlinedAt: !2638)
!2640 = !DILocation(line: 1018, column: 26, scope: !2628, inlinedAt: !2638)
!2641 = !DILocation(line: 1018, column: 30, scope: !2628, inlinedAt: !2638)
!2642 = !DILocation(line: 0, scope: !1539, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1019, column: 3, scope: !2628, inlinedAt: !2638)
!2644 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2643)
!2645 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2643)
!2646 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2643)
!2647 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2643)
!2648 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2643)
!2649 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2643)
!2650 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2643)
!2651 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2643)
!2652 = !DILocation(line: 1020, column: 10, scope: !2628, inlinedAt: !2638)
!2653 = !DILocation(line: 1021, column: 1, scope: !2628, inlinedAt: !2638)
!2654 = !DILocation(line: 1009, column: 3, scope: !2618)
!2655 = !DILocation(line: 0, scope: !2628)
!2656 = !DILocation(line: 1018, column: 3, scope: !2628)
!2657 = !DILocation(line: 1018, column: 26, scope: !2628)
!2658 = !DILocation(line: 1018, column: 30, scope: !2628)
!2659 = !DILocation(line: 0, scope: !1539, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1019, column: 3, scope: !2628)
!2661 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2660)
!2662 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2660)
!2663 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2660)
!2664 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2660)
!2665 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2660)
!2666 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2660)
!2667 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2660)
!2668 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2660)
!2669 = !DILocation(line: 1020, column: 10, scope: !2628)
!2670 = !DILocation(line: 1021, column: 1, scope: !2628)
!2671 = !DILocation(line: 1020, column: 3, scope: !2628)
!2672 = distinct !DISubprogram(name: "quotearg_custom", scope: !451, file: !451, line: 1024, type: !2673, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!260, !80, !80, !80}
!2675 = !{!2676, !2677, !2678}
!2676 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2672, file: !451, line: 1024, type: !80)
!2677 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2672, file: !451, line: 1024, type: !80)
!2678 = !DILocalVariable(name: "arg", arg: 3, scope: !2672, file: !451, line: 1025, type: !80)
!2679 = !DILocation(line: 0, scope: !2672)
!2680 = !DILocation(line: 0, scope: !2618, inlinedAt: !2681)
!2681 = distinct !DILocation(line: 1027, column: 10, scope: !2672)
!2682 = !DILocation(line: 0, scope: !2628, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1009, column: 10, scope: !2618, inlinedAt: !2681)
!2684 = !DILocation(line: 1018, column: 3, scope: !2628, inlinedAt: !2683)
!2685 = !DILocation(line: 1018, column: 26, scope: !2628, inlinedAt: !2683)
!2686 = !DILocation(line: 1018, column: 30, scope: !2628, inlinedAt: !2683)
!2687 = !DILocation(line: 0, scope: !1539, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 1019, column: 3, scope: !2628, inlinedAt: !2683)
!2689 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2688)
!2690 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2688)
!2691 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2688)
!2692 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2688)
!2693 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2688)
!2694 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2688)
!2695 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2688)
!2696 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2688)
!2697 = !DILocation(line: 1020, column: 10, scope: !2628, inlinedAt: !2683)
!2698 = !DILocation(line: 1021, column: 1, scope: !2628, inlinedAt: !2683)
!2699 = !DILocation(line: 1027, column: 3, scope: !2672)
!2700 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !451, file: !451, line: 1031, type: !2701, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!260, !80, !80, !80, !118}
!2703 = !{!2704, !2705, !2706, !2707}
!2704 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2700, file: !451, line: 1031, type: !80)
!2705 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2700, file: !451, line: 1031, type: !80)
!2706 = !DILocalVariable(name: "arg", arg: 3, scope: !2700, file: !451, line: 1032, type: !80)
!2707 = !DILocalVariable(name: "argsize", arg: 4, scope: !2700, file: !451, line: 1032, type: !118)
!2708 = !DILocation(line: 0, scope: !2700)
!2709 = !DILocation(line: 0, scope: !2628, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1034, column: 10, scope: !2700)
!2711 = !DILocation(line: 1018, column: 3, scope: !2628, inlinedAt: !2710)
!2712 = !DILocation(line: 1018, column: 26, scope: !2628, inlinedAt: !2710)
!2713 = !DILocation(line: 1018, column: 30, scope: !2628, inlinedAt: !2710)
!2714 = !DILocation(line: 0, scope: !1539, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1019, column: 3, scope: !2628, inlinedAt: !2710)
!2716 = !DILocation(line: 174, column: 12, scope: !1539, inlinedAt: !2715)
!2717 = !DILocation(line: 175, column: 8, scope: !1552, inlinedAt: !2715)
!2718 = !DILocation(line: 175, column: 19, scope: !1552, inlinedAt: !2715)
!2719 = !DILocation(line: 176, column: 5, scope: !1552, inlinedAt: !2715)
!2720 = !DILocation(line: 177, column: 6, scope: !1539, inlinedAt: !2715)
!2721 = !DILocation(line: 177, column: 17, scope: !1539, inlinedAt: !2715)
!2722 = !DILocation(line: 178, column: 6, scope: !1539, inlinedAt: !2715)
!2723 = !DILocation(line: 178, column: 18, scope: !1539, inlinedAt: !2715)
!2724 = !DILocation(line: 1020, column: 10, scope: !2628, inlinedAt: !2710)
!2725 = !DILocation(line: 1021, column: 1, scope: !2628, inlinedAt: !2710)
!2726 = !DILocation(line: 1034, column: 3, scope: !2700)
!2727 = distinct !DISubprogram(name: "quote_n_mem", scope: !451, file: !451, line: 1049, type: !2728, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!80, !116, !80, !118}
!2730 = !{!2731, !2732, !2733}
!2731 = !DILocalVariable(name: "n", arg: 1, scope: !2727, file: !451, line: 1049, type: !116)
!2732 = !DILocalVariable(name: "arg", arg: 2, scope: !2727, file: !451, line: 1049, type: !80)
!2733 = !DILocalVariable(name: "argsize", arg: 3, scope: !2727, file: !451, line: 1049, type: !118)
!2734 = !DILocation(line: 0, scope: !2727)
!2735 = !DILocation(line: 1051, column: 10, scope: !2727)
!2736 = !DILocation(line: 1051, column: 3, scope: !2727)
!2737 = distinct !DISubprogram(name: "quote_mem", scope: !451, file: !451, line: 1055, type: !2738, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!80, !80, !118}
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "arg", arg: 1, scope: !2737, file: !451, line: 1055, type: !80)
!2742 = !DILocalVariable(name: "argsize", arg: 2, scope: !2737, file: !451, line: 1055, type: !118)
!2743 = !DILocation(line: 0, scope: !2737)
!2744 = !DILocation(line: 0, scope: !2727, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1057, column: 10, scope: !2737)
!2746 = !DILocation(line: 1051, column: 10, scope: !2727, inlinedAt: !2745)
!2747 = !DILocation(line: 1057, column: 3, scope: !2737)
!2748 = distinct !DISubprogram(name: "quote_n", scope: !451, file: !451, line: 1061, type: !2749, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2751)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!80, !116, !80}
!2751 = !{!2752, !2753}
!2752 = !DILocalVariable(name: "n", arg: 1, scope: !2748, file: !451, line: 1061, type: !116)
!2753 = !DILocalVariable(name: "arg", arg: 2, scope: !2748, file: !451, line: 1061, type: !80)
!2754 = !DILocation(line: 0, scope: !2748)
!2755 = !DILocation(line: 0, scope: !2727, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 1063, column: 10, scope: !2748)
!2757 = !DILocation(line: 1051, column: 10, scope: !2727, inlinedAt: !2756)
!2758 = !DILocation(line: 1063, column: 3, scope: !2748)
!2759 = distinct !DISubprogram(name: "quote", scope: !451, file: !451, line: 1067, type: !2760, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !475, retainedNodes: !2762)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!80, !80}
!2762 = !{!2763}
!2763 = !DILocalVariable(name: "arg", arg: 1, scope: !2759, file: !451, line: 1067, type: !80)
!2764 = !DILocation(line: 0, scope: !2759)
!2765 = !DILocation(line: 0, scope: !2748, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 1069, column: 10, scope: !2759)
!2767 = !DILocation(line: 0, scope: !2727, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1063, column: 10, scope: !2748, inlinedAt: !2766)
!2769 = !DILocation(line: 1051, column: 10, scope: !2727, inlinedAt: !2768)
!2770 = !DILocation(line: 1069, column: 3, scope: !2759)
!2771 = distinct !DISubprogram(name: "version_etc_arn", scope: !553, file: !553, line: 61, type: !2772, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2809)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2774, !80, !80, !80, !2808, !118}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !2776)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !2777)
!2777 = !{!2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2776, file: !256, line: 51, baseType: !116, size: 32)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2776, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2776, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2776, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2776, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2776, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2776, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2776, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2776, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2776, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2776, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2776, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2776, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2776, file: !256, line: 70, baseType: !2792, size: 64, offset: 832)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2776, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2776, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2776, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2776, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2776, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2776, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2776, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2776, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2776, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2776, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2776, file: !256, line: 93, baseType: !2792, size: 64, offset: 1344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2776, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2776, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2776, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2776, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815}
!2810 = !DILocalVariable(name: "stream", arg: 1, scope: !2771, file: !553, line: 61, type: !2774)
!2811 = !DILocalVariable(name: "command_name", arg: 2, scope: !2771, file: !553, line: 62, type: !80)
!2812 = !DILocalVariable(name: "package", arg: 3, scope: !2771, file: !553, line: 62, type: !80)
!2813 = !DILocalVariable(name: "version", arg: 4, scope: !2771, file: !553, line: 63, type: !80)
!2814 = !DILocalVariable(name: "authors", arg: 5, scope: !2771, file: !553, line: 64, type: !2808)
!2815 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2771, file: !553, line: 64, type: !118)
!2816 = !DILocation(line: 0, scope: !2771)
!2817 = !DILocation(line: 66, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2771, file: !553, line: 66, column: 7)
!2819 = !DILocation(line: 66, column: 7, scope: !2771)
!2820 = !DILocation(line: 67, column: 5, scope: !2818)
!2821 = !DILocation(line: 69, column: 5, scope: !2818)
!2822 = !DILocation(line: 83, column: 3, scope: !2771)
!2823 = !DILocation(line: 85, column: 3, scope: !2771)
!2824 = !DILocation(line: 88, column: 3, scope: !2771)
!2825 = !DILocation(line: 95, column: 3, scope: !2771)
!2826 = !DILocation(line: 97, column: 3, scope: !2771)
!2827 = !DILocation(line: 105, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2771, file: !553, line: 98, column: 5)
!2829 = !DILocation(line: 106, column: 7, scope: !2828)
!2830 = !DILocation(line: 109, column: 7, scope: !2828)
!2831 = !DILocation(line: 110, column: 7, scope: !2828)
!2832 = !DILocation(line: 113, column: 7, scope: !2828)
!2833 = !DILocation(line: 115, column: 7, scope: !2828)
!2834 = !DILocation(line: 120, column: 7, scope: !2828)
!2835 = !DILocation(line: 122, column: 7, scope: !2828)
!2836 = !DILocation(line: 127, column: 7, scope: !2828)
!2837 = !DILocation(line: 129, column: 7, scope: !2828)
!2838 = !DILocation(line: 134, column: 7, scope: !2828)
!2839 = !DILocation(line: 137, column: 7, scope: !2828)
!2840 = !DILocation(line: 142, column: 7, scope: !2828)
!2841 = !DILocation(line: 145, column: 7, scope: !2828)
!2842 = !DILocation(line: 150, column: 7, scope: !2828)
!2843 = !DILocation(line: 154, column: 7, scope: !2828)
!2844 = !DILocation(line: 159, column: 7, scope: !2828)
!2845 = !DILocation(line: 163, column: 7, scope: !2828)
!2846 = !DILocation(line: 170, column: 7, scope: !2828)
!2847 = !DILocation(line: 174, column: 7, scope: !2828)
!2848 = !DILocation(line: 176, column: 1, scope: !2771)
!2849 = distinct !DISubprogram(name: "version_etc_ar", scope: !553, file: !553, line: 183, type: !2850, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2852)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{null, !2774, !80, !80, !80, !2808}
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858}
!2853 = !DILocalVariable(name: "stream", arg: 1, scope: !2849, file: !553, line: 183, type: !2774)
!2854 = !DILocalVariable(name: "command_name", arg: 2, scope: !2849, file: !553, line: 184, type: !80)
!2855 = !DILocalVariable(name: "package", arg: 3, scope: !2849, file: !553, line: 184, type: !80)
!2856 = !DILocalVariable(name: "version", arg: 4, scope: !2849, file: !553, line: 185, type: !80)
!2857 = !DILocalVariable(name: "authors", arg: 5, scope: !2849, file: !553, line: 185, type: !2808)
!2858 = !DILocalVariable(name: "n_authors", scope: !2849, file: !553, line: 187, type: !118)
!2859 = !DILocation(line: 0, scope: !2849)
!2860 = !DILocation(line: 189, column: 8, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2849, file: !553, line: 189, column: 3)
!2862 = !DILocation(line: 189, scope: !2861)
!2863 = !DILocation(line: 189, column: 23, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2861, file: !553, line: 189, column: 3)
!2865 = !DILocation(line: 189, column: 3, scope: !2861)
!2866 = !DILocation(line: 189, column: 52, scope: !2864)
!2867 = distinct !{!2867, !2865, !2868, !862}
!2868 = !DILocation(line: 190, column: 5, scope: !2861)
!2869 = !DILocation(line: 191, column: 3, scope: !2849)
!2870 = !DILocation(line: 192, column: 1, scope: !2849)
!2871 = distinct !DISubprogram(name: "version_etc_va", scope: !553, file: !553, line: 199, type: !2872, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2882)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{null, !2774, !80, !80, !80, !2874}
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2876)
!2876 = !{!2877, !2879, !2880, !2881}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2875, file: !2878, line: 192, baseType: !86, size: 32)
!2878 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2875, file: !2878, line: 192, baseType: !86, size: 32, offset: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2875, file: !2878, line: 192, baseType: !115, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2875, file: !2878, line: 192, baseType: !115, size: 64, offset: 128)
!2882 = !{!2883, !2884, !2885, !2886, !2887, !2888, !2889}
!2883 = !DILocalVariable(name: "stream", arg: 1, scope: !2871, file: !553, line: 199, type: !2774)
!2884 = !DILocalVariable(name: "command_name", arg: 2, scope: !2871, file: !553, line: 200, type: !80)
!2885 = !DILocalVariable(name: "package", arg: 3, scope: !2871, file: !553, line: 200, type: !80)
!2886 = !DILocalVariable(name: "version", arg: 4, scope: !2871, file: !553, line: 201, type: !80)
!2887 = !DILocalVariable(name: "authors", arg: 5, scope: !2871, file: !553, line: 201, type: !2874)
!2888 = !DILocalVariable(name: "n_authors", scope: !2871, file: !553, line: 203, type: !118)
!2889 = !DILocalVariable(name: "authtab", scope: !2871, file: !553, line: 204, type: !2890)
!2890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 640, elements: !40)
!2891 = !DILocation(line: 0, scope: !2871)
!2892 = !DILocation(line: 204, column: 3, scope: !2871)
!2893 = !DILocation(line: 204, column: 15, scope: !2871)
!2894 = !DILocation(line: 208, column: 35, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !553, line: 206, column: 3)
!2896 = distinct !DILexicalBlock(scope: !2871, file: !553, line: 206, column: 3)
!2897 = !DILocation(line: 208, column: 33, scope: !2895)
!2898 = !DILocation(line: 208, column: 67, scope: !2895)
!2899 = !DILocation(line: 206, column: 3, scope: !2896)
!2900 = !DILocation(line: 208, column: 14, scope: !2895)
!2901 = !DILocation(line: 0, scope: !2896)
!2902 = !DILocation(line: 211, column: 3, scope: !2871)
!2903 = !DILocation(line: 213, column: 1, scope: !2871)
!2904 = distinct !DISubprogram(name: "version_etc", scope: !553, file: !553, line: 230, type: !2905, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2907)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2774, !80, !80, !80, null}
!2907 = !{!2908, !2909, !2910, !2911, !2912}
!2908 = !DILocalVariable(name: "stream", arg: 1, scope: !2904, file: !553, line: 230, type: !2774)
!2909 = !DILocalVariable(name: "command_name", arg: 2, scope: !2904, file: !553, line: 231, type: !80)
!2910 = !DILocalVariable(name: "package", arg: 3, scope: !2904, file: !553, line: 231, type: !80)
!2911 = !DILocalVariable(name: "version", arg: 4, scope: !2904, file: !553, line: 232, type: !80)
!2912 = !DILocalVariable(name: "authors", scope: !2904, file: !553, line: 234, type: !2913)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !810, line: 52, baseType: !2914)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1234, line: 14, baseType: !2915)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2878, baseType: !2916)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2875, size: 192, elements: !35)
!2917 = !DILocation(line: 0, scope: !2904)
!2918 = !DILocation(line: 234, column: 3, scope: !2904)
!2919 = !DILocation(line: 234, column: 11, scope: !2904)
!2920 = !DILocation(line: 235, column: 3, scope: !2904)
!2921 = !DILocation(line: 236, column: 3, scope: !2904)
!2922 = !DILocation(line: 237, column: 3, scope: !2904)
!2923 = !DILocation(line: 238, column: 1, scope: !2904)
!2924 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !553, file: !553, line: 241, type: !383, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !799)
!2925 = !DILocation(line: 243, column: 3, scope: !2924)
!2926 = !DILocation(line: 248, column: 3, scope: !2924)
!2927 = !DILocation(line: 254, column: 3, scope: !2924)
!2928 = !DILocation(line: 259, column: 3, scope: !2924)
!2929 = !DILocation(line: 261, column: 1, scope: !2924)
!2930 = distinct !DISubprogram(name: "xnrealloc", scope: !2931, file: !2931, line: 147, type: !2932, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2934)
!2931 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!115, !115, !118, !118}
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "p", arg: 1, scope: !2930, file: !2931, line: 147, type: !115)
!2936 = !DILocalVariable(name: "n", arg: 2, scope: !2930, file: !2931, line: 147, type: !118)
!2937 = !DILocalVariable(name: "s", arg: 3, scope: !2930, file: !2931, line: 147, type: !118)
!2938 = !DILocation(line: 0, scope: !2930)
!2939 = !DILocalVariable(name: "p", arg: 1, scope: !2940, file: !682, line: 83, type: !115)
!2940 = distinct !DISubprogram(name: "xreallocarray", scope: !682, file: !682, line: 83, type: !2932, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2941)
!2941 = !{!2939, !2942, !2943}
!2942 = !DILocalVariable(name: "n", arg: 2, scope: !2940, file: !682, line: 83, type: !118)
!2943 = !DILocalVariable(name: "s", arg: 3, scope: !2940, file: !682, line: 83, type: !118)
!2944 = !DILocation(line: 0, scope: !2940, inlinedAt: !2945)
!2945 = distinct !DILocation(line: 149, column: 10, scope: !2930)
!2946 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !2945)
!2947 = !DILocalVariable(name: "p", arg: 1, scope: !2948, file: !682, line: 37, type: !115)
!2948 = distinct !DISubprogram(name: "check_nonnull", scope: !682, file: !682, line: 37, type: !2949, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2951)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!115, !115}
!2951 = !{!2947}
!2952 = !DILocation(line: 0, scope: !2948, inlinedAt: !2953)
!2953 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !2945)
!2954 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2953)
!2955 = distinct !DILexicalBlock(scope: !2948, file: !682, line: 39, column: 7)
!2956 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2953)
!2957 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2953)
!2958 = !DILocation(line: 149, column: 3, scope: !2930)
!2959 = !DILocation(line: 0, scope: !2940)
!2960 = !DILocation(line: 85, column: 25, scope: !2940)
!2961 = !DILocation(line: 0, scope: !2948, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 85, column: 10, scope: !2940)
!2963 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2962)
!2964 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2962)
!2965 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2962)
!2966 = !DILocation(line: 85, column: 3, scope: !2940)
!2967 = distinct !DISubprogram(name: "xmalloc", scope: !682, file: !682, line: 47, type: !2968, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2970)
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!115, !118}
!2970 = !{!2971}
!2971 = !DILocalVariable(name: "s", arg: 1, scope: !2967, file: !682, line: 47, type: !118)
!2972 = !DILocation(line: 0, scope: !2967)
!2973 = !DILocation(line: 49, column: 25, scope: !2967)
!2974 = !DILocation(line: 0, scope: !2948, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 49, column: 10, scope: !2967)
!2976 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2975)
!2977 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2975)
!2978 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2975)
!2979 = !DILocation(line: 49, column: 3, scope: !2967)
!2980 = !DISubprogram(name: "malloc", scope: !940, file: !940, line: 540, type: !2968, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!2981 = distinct !DISubprogram(name: "ximalloc", scope: !682, file: !682, line: 53, type: !2982, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!115, !701}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "s", arg: 1, scope: !2981, file: !682, line: 53, type: !701)
!2986 = !DILocation(line: 0, scope: !2981)
!2987 = !DILocalVariable(name: "s", arg: 1, scope: !2988, file: !2989, line: 55, type: !701)
!2988 = distinct !DISubprogram(name: "imalloc", scope: !2989, file: !2989, line: 55, type: !2982, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !2990)
!2989 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2990 = !{!2987}
!2991 = !DILocation(line: 0, scope: !2988, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 55, column: 25, scope: !2981)
!2993 = !DILocation(line: 57, column: 26, scope: !2988, inlinedAt: !2992)
!2994 = !DILocation(line: 0, scope: !2948, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 55, column: 10, scope: !2981)
!2996 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !2995)
!2997 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !2995)
!2998 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !2995)
!2999 = !DILocation(line: 55, column: 3, scope: !2981)
!3000 = distinct !DISubprogram(name: "xcharalloc", scope: !682, file: !682, line: 59, type: !3001, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!260, !118}
!3003 = !{!3004}
!3004 = !DILocalVariable(name: "n", arg: 1, scope: !3000, file: !682, line: 59, type: !118)
!3005 = !DILocation(line: 0, scope: !3000)
!3006 = !DILocation(line: 0, scope: !2967, inlinedAt: !3007)
!3007 = distinct !DILocation(line: 61, column: 10, scope: !3000)
!3008 = !DILocation(line: 49, column: 25, scope: !2967, inlinedAt: !3007)
!3009 = !DILocation(line: 0, scope: !2948, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 49, column: 10, scope: !2967, inlinedAt: !3007)
!3011 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3010)
!3012 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3010)
!3013 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3010)
!3014 = !DILocation(line: 61, column: 3, scope: !3000)
!3015 = distinct !DISubprogram(name: "xrealloc", scope: !682, file: !682, line: 68, type: !3016, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!115, !115, !118}
!3018 = !{!3019, !3020}
!3019 = !DILocalVariable(name: "p", arg: 1, scope: !3015, file: !682, line: 68, type: !115)
!3020 = !DILocalVariable(name: "s", arg: 2, scope: !3015, file: !682, line: 68, type: !118)
!3021 = !DILocation(line: 0, scope: !3015)
!3022 = !DILocalVariable(name: "ptr", arg: 1, scope: !3023, file: !3024, line: 2057, type: !115)
!3023 = distinct !DISubprogram(name: "rpl_realloc", scope: !3024, file: !3024, line: 2057, type: !3016, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3025)
!3024 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3025 = !{!3022, !3026}
!3026 = !DILocalVariable(name: "size", arg: 2, scope: !3023, file: !3024, line: 2057, type: !118)
!3027 = !DILocation(line: 0, scope: !3023, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 70, column: 25, scope: !3015)
!3029 = !DILocation(line: 2059, column: 24, scope: !3023, inlinedAt: !3028)
!3030 = !DILocation(line: 2059, column: 10, scope: !3023, inlinedAt: !3028)
!3031 = !DILocation(line: 0, scope: !2948, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 70, column: 10, scope: !3015)
!3033 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3032)
!3034 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3032)
!3035 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3032)
!3036 = !DILocation(line: 70, column: 3, scope: !3015)
!3037 = !DISubprogram(name: "realloc", scope: !940, file: !940, line: 551, type: !3016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3038 = distinct !DISubprogram(name: "xirealloc", scope: !682, file: !682, line: 74, type: !3039, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!115, !115, !701}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !682, line: 74, type: !115)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3038, file: !682, line: 74, type: !701)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocalVariable(name: "p", arg: 1, scope: !3046, file: !2989, line: 66, type: !115)
!3046 = distinct !DISubprogram(name: "irealloc", scope: !2989, file: !2989, line: 66, type: !3039, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3047)
!3047 = !{!3045, !3048}
!3048 = !DILocalVariable(name: "s", arg: 2, scope: !3046, file: !2989, line: 66, type: !701)
!3049 = !DILocation(line: 0, scope: !3046, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 76, column: 25, scope: !3038)
!3051 = !DILocation(line: 0, scope: !3023, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 68, column: 26, scope: !3046, inlinedAt: !3050)
!3053 = !DILocation(line: 2059, column: 24, scope: !3023, inlinedAt: !3052)
!3054 = !DILocation(line: 2059, column: 10, scope: !3023, inlinedAt: !3052)
!3055 = !DILocation(line: 0, scope: !2948, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 76, column: 10, scope: !3038)
!3057 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3056)
!3058 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3056)
!3059 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3056)
!3060 = !DILocation(line: 76, column: 3, scope: !3038)
!3061 = distinct !DISubprogram(name: "xireallocarray", scope: !682, file: !682, line: 89, type: !3062, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!115, !115, !701, !701}
!3064 = !{!3065, !3066, !3067}
!3065 = !DILocalVariable(name: "p", arg: 1, scope: !3061, file: !682, line: 89, type: !115)
!3066 = !DILocalVariable(name: "n", arg: 2, scope: !3061, file: !682, line: 89, type: !701)
!3067 = !DILocalVariable(name: "s", arg: 3, scope: !3061, file: !682, line: 89, type: !701)
!3068 = !DILocation(line: 0, scope: !3061)
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3070, file: !2989, line: 98, type: !115)
!3070 = distinct !DISubprogram(name: "ireallocarray", scope: !2989, file: !2989, line: 98, type: !3062, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3071)
!3071 = !{!3069, !3072, !3073}
!3072 = !DILocalVariable(name: "n", arg: 2, scope: !3070, file: !2989, line: 98, type: !701)
!3073 = !DILocalVariable(name: "s", arg: 3, scope: !3070, file: !2989, line: 98, type: !701)
!3074 = !DILocation(line: 0, scope: !3070, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 91, column: 25, scope: !3061)
!3076 = !DILocation(line: 101, column: 13, scope: !3070, inlinedAt: !3075)
!3077 = !DILocation(line: 0, scope: !2948, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 91, column: 10, scope: !3061)
!3079 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3078)
!3082 = !DILocation(line: 91, column: 3, scope: !3061)
!3083 = distinct !DISubprogram(name: "xnmalloc", scope: !682, file: !682, line: 98, type: !3084, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3086)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!115, !118, !118}
!3086 = !{!3087, !3088}
!3087 = !DILocalVariable(name: "n", arg: 1, scope: !3083, file: !682, line: 98, type: !118)
!3088 = !DILocalVariable(name: "s", arg: 2, scope: !3083, file: !682, line: 98, type: !118)
!3089 = !DILocation(line: 0, scope: !3083)
!3090 = !DILocation(line: 0, scope: !2940, inlinedAt: !3091)
!3091 = distinct !DILocation(line: 100, column: 10, scope: !3083)
!3092 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !3091)
!3093 = !DILocation(line: 0, scope: !2948, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !3091)
!3095 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3094)
!3096 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3094)
!3097 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3094)
!3098 = !DILocation(line: 100, column: 3, scope: !3083)
!3099 = distinct !DISubprogram(name: "xinmalloc", scope: !682, file: !682, line: 104, type: !3100, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3102)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!115, !701, !701}
!3102 = !{!3103, !3104}
!3103 = !DILocalVariable(name: "n", arg: 1, scope: !3099, file: !682, line: 104, type: !701)
!3104 = !DILocalVariable(name: "s", arg: 2, scope: !3099, file: !682, line: 104, type: !701)
!3105 = !DILocation(line: 0, scope: !3099)
!3106 = !DILocation(line: 0, scope: !3061, inlinedAt: !3107)
!3107 = distinct !DILocation(line: 106, column: 10, scope: !3099)
!3108 = !DILocation(line: 0, scope: !3070, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 91, column: 25, scope: !3061, inlinedAt: !3107)
!3110 = !DILocation(line: 101, column: 13, scope: !3070, inlinedAt: !3109)
!3111 = !DILocation(line: 0, scope: !2948, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 91, column: 10, scope: !3061, inlinedAt: !3107)
!3113 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3112)
!3114 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3112)
!3115 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3112)
!3116 = !DILocation(line: 106, column: 3, scope: !3099)
!3117 = distinct !DISubprogram(name: "x2realloc", scope: !682, file: !682, line: 116, type: !3118, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!115, !115, !688}
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "p", arg: 1, scope: !3117, file: !682, line: 116, type: !115)
!3122 = !DILocalVariable(name: "ps", arg: 2, scope: !3117, file: !682, line: 116, type: !688)
!3123 = !DILocation(line: 0, scope: !3117)
!3124 = !DILocation(line: 0, scope: !685, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 118, column: 10, scope: !3117)
!3126 = !DILocation(line: 178, column: 14, scope: !685, inlinedAt: !3125)
!3127 = !DILocation(line: 180, column: 9, scope: !3128, inlinedAt: !3125)
!3128 = distinct !DILexicalBlock(scope: !685, file: !682, line: 180, column: 7)
!3129 = !DILocation(line: 180, column: 7, scope: !685, inlinedAt: !3125)
!3130 = !DILocation(line: 182, column: 13, scope: !3131, inlinedAt: !3125)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !682, line: 182, column: 11)
!3132 = distinct !DILexicalBlock(scope: !3128, file: !682, line: 181, column: 5)
!3133 = !DILocation(line: 182, column: 11, scope: !3132, inlinedAt: !3125)
!3134 = !DILocation(line: 197, column: 11, scope: !3135, inlinedAt: !3125)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !682, line: 197, column: 11)
!3136 = distinct !DILexicalBlock(scope: !3128, file: !682, line: 195, column: 5)
!3137 = !DILocation(line: 197, column: 11, scope: !3136, inlinedAt: !3125)
!3138 = !DILocation(line: 198, column: 9, scope: !3135, inlinedAt: !3125)
!3139 = !DILocation(line: 0, scope: !2940, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 201, column: 7, scope: !685, inlinedAt: !3125)
!3141 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !2948, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !3140)
!3144 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3143)
!3147 = !DILocation(line: 202, column: 7, scope: !685, inlinedAt: !3125)
!3148 = !DILocation(line: 118, column: 3, scope: !3117)
!3149 = !DILocation(line: 0, scope: !685)
!3150 = !DILocation(line: 178, column: 14, scope: !685)
!3151 = !DILocation(line: 180, column: 9, scope: !3128)
!3152 = !DILocation(line: 180, column: 7, scope: !685)
!3153 = !DILocation(line: 182, column: 13, scope: !3131)
!3154 = !DILocation(line: 182, column: 11, scope: !3132)
!3155 = !DILocation(line: 190, column: 30, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3131, file: !682, line: 183, column: 9)
!3157 = !DILocation(line: 191, column: 16, scope: !3156)
!3158 = !DILocation(line: 191, column: 13, scope: !3156)
!3159 = !DILocation(line: 192, column: 9, scope: !3156)
!3160 = !DILocation(line: 197, column: 11, scope: !3135)
!3161 = !DILocation(line: 197, column: 11, scope: !3136)
!3162 = !DILocation(line: 198, column: 9, scope: !3135)
!3163 = !DILocation(line: 0, scope: !2940, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 201, column: 7, scope: !685)
!3165 = !DILocation(line: 85, column: 25, scope: !2940, inlinedAt: !3164)
!3166 = !DILocation(line: 0, scope: !2948, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 85, column: 10, scope: !2940, inlinedAt: !3164)
!3168 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3167)
!3169 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3167)
!3170 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3167)
!3171 = !DILocation(line: 202, column: 7, scope: !685)
!3172 = !DILocation(line: 203, column: 3, scope: !685)
!3173 = !DILocation(line: 0, scope: !697)
!3174 = !DILocation(line: 230, column: 14, scope: !697)
!3175 = !DILocation(line: 238, column: 7, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !697, file: !682, line: 238, column: 7)
!3177 = !DILocation(line: 238, column: 7, scope: !697)
!3178 = !DILocation(line: 240, column: 9, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !697, file: !682, line: 240, column: 7)
!3180 = !DILocation(line: 240, column: 18, scope: !3179)
!3181 = !DILocation(line: 253, column: 8, scope: !697)
!3182 = !DILocation(line: 258, column: 27, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !682, line: 257, column: 5)
!3184 = distinct !DILexicalBlock(scope: !697, file: !682, line: 256, column: 7)
!3185 = !DILocation(line: 259, column: 50, scope: !3183)
!3186 = !DILocation(line: 259, column: 32, scope: !3183)
!3187 = !DILocation(line: 260, column: 5, scope: !3183)
!3188 = !DILocation(line: 262, column: 9, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !697, file: !682, line: 262, column: 7)
!3190 = !DILocation(line: 262, column: 7, scope: !697)
!3191 = !DILocation(line: 263, column: 9, scope: !3189)
!3192 = !DILocation(line: 263, column: 5, scope: !3189)
!3193 = !DILocation(line: 264, column: 9, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !697, file: !682, line: 264, column: 7)
!3195 = !DILocation(line: 264, column: 14, scope: !3194)
!3196 = !DILocation(line: 265, column: 7, scope: !3194)
!3197 = !DILocation(line: 265, column: 11, scope: !3194)
!3198 = !DILocation(line: 266, column: 11, scope: !3194)
!3199 = !DILocation(line: 267, column: 14, scope: !3194)
!3200 = !DILocation(line: 264, column: 7, scope: !697)
!3201 = !DILocation(line: 268, column: 5, scope: !3194)
!3202 = !DILocation(line: 0, scope: !3015, inlinedAt: !3203)
!3203 = distinct !DILocation(line: 269, column: 8, scope: !697)
!3204 = !DILocation(line: 0, scope: !3023, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 70, column: 25, scope: !3015, inlinedAt: !3203)
!3206 = !DILocation(line: 2059, column: 24, scope: !3023, inlinedAt: !3205)
!3207 = !DILocation(line: 2059, column: 10, scope: !3023, inlinedAt: !3205)
!3208 = !DILocation(line: 0, scope: !2948, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 70, column: 10, scope: !3015, inlinedAt: !3203)
!3210 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3209)
!3211 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3209)
!3212 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3209)
!3213 = !DILocation(line: 270, column: 7, scope: !697)
!3214 = !DILocation(line: 271, column: 3, scope: !697)
!3215 = distinct !DISubprogram(name: "xzalloc", scope: !682, file: !682, line: 279, type: !2968, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3216)
!3216 = !{!3217}
!3217 = !DILocalVariable(name: "s", arg: 1, scope: !3215, file: !682, line: 279, type: !118)
!3218 = !DILocation(line: 0, scope: !3215)
!3219 = !DILocalVariable(name: "n", arg: 1, scope: !3220, file: !682, line: 294, type: !118)
!3220 = distinct !DISubprogram(name: "xcalloc", scope: !682, file: !682, line: 294, type: !3084, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3221)
!3221 = !{!3219, !3222}
!3222 = !DILocalVariable(name: "s", arg: 2, scope: !3220, file: !682, line: 294, type: !118)
!3223 = !DILocation(line: 0, scope: !3220, inlinedAt: !3224)
!3224 = distinct !DILocation(line: 281, column: 10, scope: !3215)
!3225 = !DILocation(line: 296, column: 25, scope: !3220, inlinedAt: !3224)
!3226 = !DILocation(line: 0, scope: !2948, inlinedAt: !3227)
!3227 = distinct !DILocation(line: 296, column: 10, scope: !3220, inlinedAt: !3224)
!3228 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3227)
!3229 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3227)
!3230 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3227)
!3231 = !DILocation(line: 281, column: 3, scope: !3215)
!3232 = !DISubprogram(name: "calloc", scope: !940, file: !940, line: 543, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3233 = !DILocation(line: 0, scope: !3220)
!3234 = !DILocation(line: 296, column: 25, scope: !3220)
!3235 = !DILocation(line: 0, scope: !2948, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 296, column: 10, scope: !3220)
!3237 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3236)
!3238 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3236)
!3239 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3236)
!3240 = !DILocation(line: 296, column: 3, scope: !3220)
!3241 = distinct !DISubprogram(name: "xizalloc", scope: !682, file: !682, line: 285, type: !2982, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3242)
!3242 = !{!3243}
!3243 = !DILocalVariable(name: "s", arg: 1, scope: !3241, file: !682, line: 285, type: !701)
!3244 = !DILocation(line: 0, scope: !3241)
!3245 = !DILocalVariable(name: "n", arg: 1, scope: !3246, file: !682, line: 300, type: !701)
!3246 = distinct !DISubprogram(name: "xicalloc", scope: !682, file: !682, line: 300, type: !3100, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3247)
!3247 = !{!3245, !3248}
!3248 = !DILocalVariable(name: "s", arg: 2, scope: !3246, file: !682, line: 300, type: !701)
!3249 = !DILocation(line: 0, scope: !3246, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 287, column: 10, scope: !3241)
!3251 = !DILocalVariable(name: "n", arg: 1, scope: !3252, file: !2989, line: 77, type: !701)
!3252 = distinct !DISubprogram(name: "icalloc", scope: !2989, file: !2989, line: 77, type: !3100, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3253)
!3253 = !{!3251, !3254}
!3254 = !DILocalVariable(name: "s", arg: 2, scope: !3252, file: !2989, line: 77, type: !701)
!3255 = !DILocation(line: 0, scope: !3252, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 302, column: 25, scope: !3246, inlinedAt: !3250)
!3257 = !DILocation(line: 91, column: 10, scope: !3252, inlinedAt: !3256)
!3258 = !DILocation(line: 0, scope: !2948, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 302, column: 10, scope: !3246, inlinedAt: !3250)
!3260 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3259)
!3261 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3259)
!3262 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3259)
!3263 = !DILocation(line: 287, column: 3, scope: !3241)
!3264 = !DILocation(line: 0, scope: !3246)
!3265 = !DILocation(line: 0, scope: !3252, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 302, column: 25, scope: !3246)
!3267 = !DILocation(line: 91, column: 10, scope: !3252, inlinedAt: !3266)
!3268 = !DILocation(line: 0, scope: !2948, inlinedAt: !3269)
!3269 = distinct !DILocation(line: 302, column: 10, scope: !3246)
!3270 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3269)
!3271 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3269)
!3272 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3269)
!3273 = !DILocation(line: 302, column: 3, scope: !3246)
!3274 = distinct !DISubprogram(name: "xmemdup", scope: !682, file: !682, line: 310, type: !3275, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3277)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!115, !964, !118}
!3277 = !{!3278, !3279}
!3278 = !DILocalVariable(name: "p", arg: 1, scope: !3274, file: !682, line: 310, type: !964)
!3279 = !DILocalVariable(name: "s", arg: 2, scope: !3274, file: !682, line: 310, type: !118)
!3280 = !DILocation(line: 0, scope: !3274)
!3281 = !DILocation(line: 0, scope: !2967, inlinedAt: !3282)
!3282 = distinct !DILocation(line: 312, column: 18, scope: !3274)
!3283 = !DILocation(line: 49, column: 25, scope: !2967, inlinedAt: !3282)
!3284 = !DILocation(line: 0, scope: !2948, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 49, column: 10, scope: !2967, inlinedAt: !3282)
!3286 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3285)
!3287 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3285)
!3288 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3285)
!3289 = !DILocalVariable(name: "__dest", arg: 1, scope: !3290, file: !1442, line: 26, type: !3293)
!3290 = distinct !DISubprogram(name: "memcpy", scope: !1442, file: !1442, line: 26, type: !3291, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3294)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!115, !3293, !963, !118}
!3293 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!3294 = !{!3289, !3295, !3296}
!3295 = !DILocalVariable(name: "__src", arg: 2, scope: !3290, file: !1442, line: 26, type: !963)
!3296 = !DILocalVariable(name: "__len", arg: 3, scope: !3290, file: !1442, line: 26, type: !118)
!3297 = !DILocation(line: 0, scope: !3290, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 312, column: 10, scope: !3274)
!3299 = !DILocation(line: 29, column: 10, scope: !3290, inlinedAt: !3298)
!3300 = !DILocation(line: 312, column: 3, scope: !3274)
!3301 = distinct !DISubprogram(name: "ximemdup", scope: !682, file: !682, line: 316, type: !3302, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3304)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!115, !964, !701}
!3304 = !{!3305, !3306}
!3305 = !DILocalVariable(name: "p", arg: 1, scope: !3301, file: !682, line: 316, type: !964)
!3306 = !DILocalVariable(name: "s", arg: 2, scope: !3301, file: !682, line: 316, type: !701)
!3307 = !DILocation(line: 0, scope: !3301)
!3308 = !DILocation(line: 0, scope: !2981, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 318, column: 18, scope: !3301)
!3310 = !DILocation(line: 0, scope: !2988, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 55, column: 25, scope: !2981, inlinedAt: !3309)
!3312 = !DILocation(line: 57, column: 26, scope: !2988, inlinedAt: !3311)
!3313 = !DILocation(line: 0, scope: !2948, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 55, column: 10, scope: !2981, inlinedAt: !3309)
!3315 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3314)
!3316 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3314)
!3317 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3314)
!3318 = !DILocation(line: 0, scope: !3290, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 318, column: 10, scope: !3301)
!3320 = !DILocation(line: 29, column: 10, scope: !3290, inlinedAt: !3319)
!3321 = !DILocation(line: 318, column: 3, scope: !3301)
!3322 = distinct !DISubprogram(name: "ximemdup0", scope: !682, file: !682, line: 325, type: !3323, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!260, !964, !701}
!3325 = !{!3326, !3327, !3328}
!3326 = !DILocalVariable(name: "p", arg: 1, scope: !3322, file: !682, line: 325, type: !964)
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3322, file: !682, line: 325, type: !701)
!3328 = !DILocalVariable(name: "result", scope: !3322, file: !682, line: 327, type: !260)
!3329 = !DILocation(line: 0, scope: !3322)
!3330 = !DILocation(line: 327, column: 30, scope: !3322)
!3331 = !DILocation(line: 0, scope: !2981, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 327, column: 18, scope: !3322)
!3333 = !DILocation(line: 0, scope: !2988, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 55, column: 25, scope: !2981, inlinedAt: !3332)
!3335 = !DILocation(line: 57, column: 26, scope: !2988, inlinedAt: !3334)
!3336 = !DILocation(line: 0, scope: !2948, inlinedAt: !3337)
!3337 = distinct !DILocation(line: 55, column: 10, scope: !2981, inlinedAt: !3332)
!3338 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3337)
!3339 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3337)
!3340 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3337)
!3341 = !DILocation(line: 328, column: 3, scope: !3322)
!3342 = !DILocation(line: 328, column: 13, scope: !3322)
!3343 = !DILocation(line: 0, scope: !3290, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 329, column: 10, scope: !3322)
!3345 = !DILocation(line: 29, column: 10, scope: !3290, inlinedAt: !3344)
!3346 = !DILocation(line: 329, column: 3, scope: !3322)
!3347 = distinct !DISubprogram(name: "xstrdup", scope: !682, file: !682, line: 335, type: !942, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !681, retainedNodes: !3348)
!3348 = !{!3349}
!3349 = !DILocalVariable(name: "string", arg: 1, scope: !3347, file: !682, line: 335, type: !80)
!3350 = !DILocation(line: 0, scope: !3347)
!3351 = !DILocation(line: 337, column: 27, scope: !3347)
!3352 = !DILocation(line: 337, column: 43, scope: !3347)
!3353 = !DILocation(line: 0, scope: !3274, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 337, column: 10, scope: !3347)
!3355 = !DILocation(line: 0, scope: !2967, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 312, column: 18, scope: !3274, inlinedAt: !3354)
!3357 = !DILocation(line: 49, column: 25, scope: !2967, inlinedAt: !3356)
!3358 = !DILocation(line: 0, scope: !2948, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 49, column: 10, scope: !2967, inlinedAt: !3356)
!3360 = !DILocation(line: 39, column: 8, scope: !2955, inlinedAt: !3359)
!3361 = !DILocation(line: 39, column: 7, scope: !2948, inlinedAt: !3359)
!3362 = !DILocation(line: 40, column: 5, scope: !2955, inlinedAt: !3359)
!3363 = !DILocation(line: 0, scope: !3290, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 312, column: 10, scope: !3274, inlinedAt: !3354)
!3365 = !DILocation(line: 29, column: 10, scope: !3290, inlinedAt: !3364)
!3366 = !DILocation(line: 337, column: 3, scope: !3347)
!3367 = distinct !DISubprogram(name: "xalloc_die", scope: !646, file: !646, line: 32, type: !383, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3368)
!3368 = !{!3369}
!3369 = !DILocalVariable(name: "__errstatus", scope: !3370, file: !646, line: 34, type: !3371)
!3370 = distinct !DILexicalBlock(scope: !3367, file: !646, line: 34, column: 3)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3372 = !DILocation(line: 34, column: 3, scope: !3370)
!3373 = !DILocation(line: 0, scope: !3370)
!3374 = !DILocation(line: 40, column: 3, scope: !3367)
!3375 = distinct !DISubprogram(name: "close_stream", scope: !718, file: !718, line: 55, type: !3376, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3412)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!116, !3378}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3381)
!3381 = !{!3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3380, file: !256, line: 51, baseType: !116, size: 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3380, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3380, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3380, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3380, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3380, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3380, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3380, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3380, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3380, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3380, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3380, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3380, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3380, file: !256, line: 70, baseType: !3396, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3380, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3380, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3380, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3380, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3380, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3380, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3380, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3380, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3380, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3380, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3380, file: !256, line: 93, baseType: !3396, size: 64, offset: 1344)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3380, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3380, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3380, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3380, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3412 = !{!3413, !3414, !3416, !3417}
!3413 = !DILocalVariable(name: "stream", arg: 1, scope: !3375, file: !718, line: 55, type: !3378)
!3414 = !DILocalVariable(name: "some_pending", scope: !3375, file: !718, line: 57, type: !3415)
!3415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!3416 = !DILocalVariable(name: "prev_fail", scope: !3375, file: !718, line: 58, type: !3415)
!3417 = !DILocalVariable(name: "fclose_fail", scope: !3375, file: !718, line: 59, type: !3415)
!3418 = !DILocation(line: 0, scope: !3375)
!3419 = !DILocation(line: 57, column: 30, scope: !3375)
!3420 = !DILocalVariable(name: "__stream", arg: 1, scope: !3421, file: !1189, line: 135, type: !3378)
!3421 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1189, file: !1189, line: 135, type: !3376, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3422)
!3422 = !{!3420}
!3423 = !DILocation(line: 0, scope: !3421, inlinedAt: !3424)
!3424 = distinct !DILocation(line: 58, column: 27, scope: !3375)
!3425 = !DILocation(line: 137, column: 10, scope: !3421, inlinedAt: !3424)
!3426 = !{!1198, !816, i64 0}
!3427 = !DILocation(line: 58, column: 43, scope: !3375)
!3428 = !DILocation(line: 59, column: 29, scope: !3375)
!3429 = !DILocation(line: 59, column: 45, scope: !3375)
!3430 = !DILocation(line: 69, column: 17, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3375, file: !718, line: 69, column: 7)
!3432 = !DILocation(line: 57, column: 50, scope: !3375)
!3433 = !DILocation(line: 69, column: 33, scope: !3431)
!3434 = !DILocation(line: 69, column: 53, scope: !3431)
!3435 = !DILocation(line: 69, column: 59, scope: !3431)
!3436 = !DILocation(line: 69, column: 7, scope: !3375)
!3437 = !DILocation(line: 71, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3431, file: !718, line: 70, column: 5)
!3439 = !DILocation(line: 72, column: 9, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3438, file: !718, line: 71, column: 11)
!3441 = !DILocation(line: 72, column: 15, scope: !3440)
!3442 = !DILocation(line: 77, column: 1, scope: !3375)
!3443 = !DISubprogram(name: "__fpending", scope: !3444, file: !3444, line: 75, type: !3445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3444 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!118, !3378}
!3447 = distinct !DISubprogram(name: "rpl_fclose", scope: !720, file: !720, line: 58, type: !3448, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3484)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!116, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3452)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3453)
!3453 = !{!3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3452, file: !256, line: 51, baseType: !116, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3452, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3452, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3452, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3452, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3452, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3452, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3452, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3452, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3452, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3452, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3452, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3452, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3452, file: !256, line: 70, baseType: !3468, size: 64, offset: 832)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3452, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3452, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3452, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3452, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3452, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3452, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3452, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3452, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3452, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3452, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3452, file: !256, line: 93, baseType: !3468, size: 64, offset: 1344)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3452, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3452, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3452, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3452, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DILocalVariable(name: "fp", arg: 1, scope: !3447, file: !720, line: 58, type: !3450)
!3486 = !DILocalVariable(name: "saved_errno", scope: !3447, file: !720, line: 60, type: !116)
!3487 = !DILocalVariable(name: "fd", scope: !3447, file: !720, line: 63, type: !116)
!3488 = !DILocalVariable(name: "result", scope: !3447, file: !720, line: 74, type: !116)
!3489 = !DILocation(line: 0, scope: !3447)
!3490 = !DILocation(line: 63, column: 12, scope: !3447)
!3491 = !DILocation(line: 64, column: 10, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3447, file: !720, line: 64, column: 7)
!3493 = !DILocation(line: 64, column: 7, scope: !3447)
!3494 = !DILocation(line: 65, column: 12, scope: !3492)
!3495 = !DILocation(line: 65, column: 5, scope: !3492)
!3496 = !DILocation(line: 70, column: 9, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3447, file: !720, line: 70, column: 7)
!3498 = !DILocation(line: 70, column: 23, scope: !3497)
!3499 = !DILocation(line: 70, column: 33, scope: !3497)
!3500 = !DILocation(line: 70, column: 26, scope: !3497)
!3501 = !DILocation(line: 70, column: 59, scope: !3497)
!3502 = !DILocation(line: 71, column: 7, scope: !3497)
!3503 = !DILocation(line: 71, column: 10, scope: !3497)
!3504 = !DILocation(line: 70, column: 7, scope: !3447)
!3505 = !DILocation(line: 100, column: 12, scope: !3447)
!3506 = !DILocation(line: 105, column: 7, scope: !3447)
!3507 = !DILocation(line: 72, column: 19, scope: !3497)
!3508 = !DILocation(line: 105, column: 19, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3447, file: !720, line: 105, column: 7)
!3510 = !DILocation(line: 107, column: 13, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3509, file: !720, line: 106, column: 5)
!3512 = !DILocation(line: 109, column: 5, scope: !3511)
!3513 = !DILocation(line: 112, column: 1, scope: !3447)
!3514 = !DISubprogram(name: "fileno", scope: !810, file: !810, line: 809, type: !3448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3515 = !DISubprogram(name: "fclose", scope: !810, file: !810, line: 178, type: !3448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3516 = !DISubprogram(name: "__freading", scope: !3444, file: !3444, line: 51, type: !3448, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3517 = !DISubprogram(name: "lseek", scope: !1018, file: !1018, line: 339, type: !3518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!279, !116, !279, !116}
!3520 = distinct !DISubprogram(name: "rpl_fflush", scope: !722, file: !722, line: 130, type: !3521, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3557)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!116, !3523}
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3525)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3526)
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3525, file: !256, line: 51, baseType: !116, size: 32)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3525, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3525, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3525, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3525, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3525, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3525, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3525, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3525, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3525, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3525, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3525, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3525, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3525, file: !256, line: 70, baseType: !3541, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3525, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3525, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3525, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3525, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3525, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3525, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3525, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3525, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3525, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3525, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3525, file: !256, line: 93, baseType: !3541, size: 64, offset: 1344)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3525, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3525, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3525, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3525, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3557 = !{!3558}
!3558 = !DILocalVariable(name: "stream", arg: 1, scope: !3520, file: !722, line: 130, type: !3523)
!3559 = !DILocation(line: 0, scope: !3520)
!3560 = !DILocation(line: 151, column: 14, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3520, file: !722, line: 151, column: 7)
!3562 = !DILocation(line: 151, column: 22, scope: !3561)
!3563 = !DILocation(line: 151, column: 27, scope: !3561)
!3564 = !DILocation(line: 151, column: 7, scope: !3520)
!3565 = !DILocation(line: 152, column: 12, scope: !3561)
!3566 = !DILocation(line: 152, column: 5, scope: !3561)
!3567 = !DILocalVariable(name: "fp", arg: 1, scope: !3568, file: !722, line: 42, type: !3523)
!3568 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !722, file: !722, line: 42, type: !3569, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3571)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{null, !3523}
!3571 = !{!3567}
!3572 = !DILocation(line: 0, scope: !3568, inlinedAt: !3573)
!3573 = distinct !DILocation(line: 157, column: 3, scope: !3520)
!3574 = !DILocation(line: 44, column: 12, scope: !3575, inlinedAt: !3573)
!3575 = distinct !DILexicalBlock(scope: !3568, file: !722, line: 44, column: 7)
!3576 = !DILocation(line: 44, column: 19, scope: !3575, inlinedAt: !3573)
!3577 = !DILocation(line: 44, column: 7, scope: !3568, inlinedAt: !3573)
!3578 = !DILocation(line: 46, column: 5, scope: !3575, inlinedAt: !3573)
!3579 = !DILocation(line: 159, column: 10, scope: !3520)
!3580 = !DILocation(line: 159, column: 3, scope: !3520)
!3581 = !DILocation(line: 236, column: 1, scope: !3520)
!3582 = !DISubprogram(name: "fflush", scope: !810, file: !810, line: 230, type: !3521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3583 = distinct !DISubprogram(name: "rpl_fseeko", scope: !724, file: !724, line: 28, type: !3584, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3621)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!116, !3586, !3620, !116}
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !254, line: 7, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !256, line: 49, size: 1728, elements: !3589)
!3589 = !{!3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3588, file: !256, line: 51, baseType: !116, size: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3588, file: !256, line: 54, baseType: !260, size: 64, offset: 64)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3588, file: !256, line: 55, baseType: !260, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3588, file: !256, line: 56, baseType: !260, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3588, file: !256, line: 57, baseType: !260, size: 64, offset: 256)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3588, file: !256, line: 58, baseType: !260, size: 64, offset: 320)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3588, file: !256, line: 59, baseType: !260, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3588, file: !256, line: 60, baseType: !260, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3588, file: !256, line: 61, baseType: !260, size: 64, offset: 512)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3588, file: !256, line: 64, baseType: !260, size: 64, offset: 576)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3588, file: !256, line: 65, baseType: !260, size: 64, offset: 640)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3588, file: !256, line: 66, baseType: !260, size: 64, offset: 704)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3588, file: !256, line: 68, baseType: !272, size: 64, offset: 768)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3588, file: !256, line: 70, baseType: !3604, size: 64, offset: 832)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3588, file: !256, line: 72, baseType: !116, size: 32, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3588, file: !256, line: 73, baseType: !116, size: 32, offset: 928)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3588, file: !256, line: 74, baseType: !279, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3588, file: !256, line: 77, baseType: !117, size: 16, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3588, file: !256, line: 78, baseType: !284, size: 8, offset: 1040)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3588, file: !256, line: 79, baseType: !34, size: 8, offset: 1048)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3588, file: !256, line: 81, baseType: !287, size: 64, offset: 1088)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3588, file: !256, line: 89, baseType: !290, size: 64, offset: 1152)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3588, file: !256, line: 91, baseType: !292, size: 64, offset: 1216)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3588, file: !256, line: 92, baseType: !295, size: 64, offset: 1280)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3588, file: !256, line: 93, baseType: !3604, size: 64, offset: 1344)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3588, file: !256, line: 94, baseType: !115, size: 64, offset: 1408)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3588, file: !256, line: 95, baseType: !118, size: 64, offset: 1472)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3588, file: !256, line: 96, baseType: !116, size: 32, offset: 1536)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3588, file: !256, line: 98, baseType: !302, size: 160, offset: 1568)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !810, line: 63, baseType: !279)
!3621 = !{!3622, !3623, !3624, !3625}
!3622 = !DILocalVariable(name: "fp", arg: 1, scope: !3583, file: !724, line: 28, type: !3586)
!3623 = !DILocalVariable(name: "offset", arg: 2, scope: !3583, file: !724, line: 28, type: !3620)
!3624 = !DILocalVariable(name: "whence", arg: 3, scope: !3583, file: !724, line: 28, type: !116)
!3625 = !DILocalVariable(name: "pos", scope: !3626, file: !724, line: 123, type: !3620)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !724, line: 119, column: 5)
!3627 = distinct !DILexicalBlock(scope: !3583, file: !724, line: 55, column: 7)
!3628 = !DILocation(line: 0, scope: !3583)
!3629 = !DILocation(line: 55, column: 12, scope: !3627)
!3630 = !{!1198, !755, i64 16}
!3631 = !DILocation(line: 55, column: 33, scope: !3627)
!3632 = !{!1198, !755, i64 8}
!3633 = !DILocation(line: 55, column: 25, scope: !3627)
!3634 = !DILocation(line: 56, column: 7, scope: !3627)
!3635 = !DILocation(line: 56, column: 15, scope: !3627)
!3636 = !DILocation(line: 56, column: 37, scope: !3627)
!3637 = !{!1198, !755, i64 32}
!3638 = !DILocation(line: 56, column: 29, scope: !3627)
!3639 = !DILocation(line: 57, column: 7, scope: !3627)
!3640 = !DILocation(line: 57, column: 15, scope: !3627)
!3641 = !{!1198, !755, i64 72}
!3642 = !DILocation(line: 57, column: 29, scope: !3627)
!3643 = !DILocation(line: 55, column: 7, scope: !3583)
!3644 = !DILocation(line: 123, column: 26, scope: !3626)
!3645 = !DILocation(line: 123, column: 19, scope: !3626)
!3646 = !DILocation(line: 0, scope: !3626)
!3647 = !DILocation(line: 124, column: 15, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3626, file: !724, line: 124, column: 11)
!3649 = !DILocation(line: 124, column: 11, scope: !3626)
!3650 = !DILocation(line: 135, column: 19, scope: !3626)
!3651 = !DILocation(line: 136, column: 12, scope: !3626)
!3652 = !DILocation(line: 136, column: 20, scope: !3626)
!3653 = !{!1198, !1199, i64 144}
!3654 = !DILocation(line: 167, column: 7, scope: !3626)
!3655 = !DILocation(line: 169, column: 10, scope: !3583)
!3656 = !DILocation(line: 169, column: 3, scope: !3583)
!3657 = !DILocation(line: 170, column: 1, scope: !3583)
!3658 = !DISubprogram(name: "fseeko", scope: !810, file: !810, line: 736, type: !3659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!116, !3586, !279, !116}
!3661 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !653, file: !653, line: 100, type: !3662, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3665)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!118, !1460, !80, !118, !3664}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!3665 = !{!3666, !3667, !3668, !3669, !3670}
!3666 = !DILocalVariable(name: "pwc", arg: 1, scope: !3661, file: !653, line: 100, type: !1460)
!3667 = !DILocalVariable(name: "s", arg: 2, scope: !3661, file: !653, line: 100, type: !80)
!3668 = !DILocalVariable(name: "n", arg: 3, scope: !3661, file: !653, line: 100, type: !118)
!3669 = !DILocalVariable(name: "ps", arg: 4, scope: !3661, file: !653, line: 100, type: !3664)
!3670 = !DILocalVariable(name: "ret", scope: !3661, file: !653, line: 130, type: !118)
!3671 = !DILocation(line: 0, scope: !3661)
!3672 = !DILocation(line: 105, column: 9, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3661, file: !653, line: 105, column: 7)
!3674 = !DILocation(line: 105, column: 7, scope: !3661)
!3675 = !DILocation(line: 117, column: 10, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3661, file: !653, line: 117, column: 7)
!3677 = !DILocation(line: 117, column: 7, scope: !3661)
!3678 = !DILocation(line: 130, column: 16, scope: !3661)
!3679 = !DILocation(line: 135, column: 11, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3661, file: !653, line: 135, column: 7)
!3681 = !DILocation(line: 135, column: 25, scope: !3680)
!3682 = !DILocation(line: 135, column: 30, scope: !3680)
!3683 = !DILocation(line: 135, column: 7, scope: !3661)
!3684 = !DILocalVariable(name: "ps", arg: 1, scope: !3685, file: !1433, line: 1135, type: !3664)
!3685 = distinct !DISubprogram(name: "mbszero", scope: !1433, file: !1433, line: 1135, type: !3686, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{null, !3664}
!3688 = !{!3684}
!3689 = !DILocation(line: 0, scope: !3685, inlinedAt: !3690)
!3690 = distinct !DILocation(line: 137, column: 5, scope: !3680)
!3691 = !DILocalVariable(name: "__dest", arg: 1, scope: !3692, file: !1442, line: 57, type: !115)
!3692 = distinct !DISubprogram(name: "memset", scope: !1442, file: !1442, line: 57, type: !1443, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3693)
!3693 = !{!3691, !3694, !3695}
!3694 = !DILocalVariable(name: "__ch", arg: 2, scope: !3692, file: !1442, line: 57, type: !116)
!3695 = !DILocalVariable(name: "__len", arg: 3, scope: !3692, file: !1442, line: 57, type: !118)
!3696 = !DILocation(line: 0, scope: !3692, inlinedAt: !3697)
!3697 = distinct !DILocation(line: 1137, column: 3, scope: !3685, inlinedAt: !3690)
!3698 = !DILocation(line: 59, column: 10, scope: !3692, inlinedAt: !3697)
!3699 = !DILocation(line: 137, column: 5, scope: !3680)
!3700 = !DILocation(line: 138, column: 11, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3661, file: !653, line: 138, column: 7)
!3702 = !DILocation(line: 138, column: 7, scope: !3661)
!3703 = !DILocation(line: 139, column: 5, scope: !3701)
!3704 = !DILocation(line: 143, column: 26, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3661, file: !653, line: 143, column: 7)
!3706 = !DILocation(line: 143, column: 41, scope: !3705)
!3707 = !DILocation(line: 143, column: 7, scope: !3661)
!3708 = !DILocation(line: 145, column: 15, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !653, line: 145, column: 11)
!3710 = distinct !DILexicalBlock(scope: !3705, file: !653, line: 144, column: 5)
!3711 = !DILocation(line: 145, column: 11, scope: !3710)
!3712 = !DILocation(line: 146, column: 32, scope: !3709)
!3713 = !DILocation(line: 146, column: 16, scope: !3709)
!3714 = !DILocation(line: 146, column: 14, scope: !3709)
!3715 = !DILocation(line: 146, column: 9, scope: !3709)
!3716 = !DILocation(line: 286, column: 1, scope: !3661)
!3717 = !DISubprogram(name: "mbsinit", scope: !3718, file: !3718, line: 293, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !799)
!3718 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!116, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!3723 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !726, file: !726, line: 27, type: !2932, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3724)
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DILocalVariable(name: "ptr", arg: 1, scope: !3723, file: !726, line: 27, type: !115)
!3726 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3723, file: !726, line: 27, type: !118)
!3727 = !DILocalVariable(name: "size", arg: 3, scope: !3723, file: !726, line: 27, type: !118)
!3728 = !DILocalVariable(name: "nbytes", scope: !3723, file: !726, line: 29, type: !118)
!3729 = !DILocation(line: 0, scope: !3723)
!3730 = !DILocation(line: 30, column: 7, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !726, line: 30, column: 7)
!3732 = !DILocalVariable(name: "ptr", arg: 1, scope: !3733, file: !3024, line: 2057, type: !115)
!3733 = distinct !DISubprogram(name: "rpl_realloc", scope: !3024, file: !3024, line: 2057, type: !3016, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3734)
!3734 = !{!3732, !3735}
!3735 = !DILocalVariable(name: "size", arg: 2, scope: !3733, file: !3024, line: 2057, type: !118)
!3736 = !DILocation(line: 0, scope: !3733, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 37, column: 10, scope: !3723)
!3738 = !DILocation(line: 2059, column: 24, scope: !3733, inlinedAt: !3737)
!3739 = !DILocation(line: 2059, column: 10, scope: !3733, inlinedAt: !3737)
!3740 = !DILocation(line: 37, column: 3, scope: !3723)
!3741 = !DILocation(line: 32, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3731, file: !726, line: 31, column: 5)
!3743 = !DILocation(line: 32, column: 13, scope: !3742)
!3744 = !DILocation(line: 33, column: 7, scope: !3742)
!3745 = !DILocation(line: 38, column: 1, scope: !3723)
!3746 = distinct !DISubprogram(name: "hard_locale", scope: !671, file: !671, line: 28, type: !3747, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3749)
!3747 = !DISubroutineType(types: !3748)
!3748 = !{!239, !116}
!3749 = !{!3750, !3751}
!3750 = !DILocalVariable(name: "category", arg: 1, scope: !3746, file: !671, line: 28, type: !116)
!3751 = !DILocalVariable(name: "locale", scope: !3746, file: !671, line: 30, type: !3752)
!3752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3753)
!3753 = !{!3754}
!3754 = !DISubrange(count: 257)
!3755 = !DILocation(line: 0, scope: !3746)
!3756 = !DILocation(line: 30, column: 3, scope: !3746)
!3757 = !DILocation(line: 30, column: 8, scope: !3746)
!3758 = !DILocation(line: 32, column: 7, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3746, file: !671, line: 32, column: 7)
!3760 = !DILocation(line: 32, column: 7, scope: !3746)
!3761 = !DILocalVariable(name: "__s1", arg: 1, scope: !3762, file: !828, line: 1359, type: !80)
!3762 = distinct !DISubprogram(name: "streq", scope: !828, file: !828, line: 1359, type: !829, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3763)
!3763 = !{!3761, !3764}
!3764 = !DILocalVariable(name: "__s2", arg: 2, scope: !3762, file: !828, line: 1359, type: !80)
!3765 = !DILocation(line: 0, scope: !3762, inlinedAt: !3766)
!3766 = distinct !DILocation(line: 35, column: 9, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3746, file: !671, line: 35, column: 7)
!3768 = !DILocation(line: 1361, column: 11, scope: !3762, inlinedAt: !3766)
!3769 = !DILocation(line: 35, column: 29, scope: !3767)
!3770 = !DILocation(line: 0, scope: !3762, inlinedAt: !3771)
!3771 = distinct !DILocation(line: 35, column: 32, scope: !3767)
!3772 = !DILocation(line: 1361, column: 11, scope: !3762, inlinedAt: !3771)
!3773 = !DILocation(line: 1361, column: 10, scope: !3762, inlinedAt: !3771)
!3774 = !DILocation(line: 35, column: 7, scope: !3746)
!3775 = !DILocation(line: 46, column: 3, scope: !3746)
!3776 = !DILocation(line: 47, column: 1, scope: !3746)
!3777 = distinct !DISubprogram(name: "setlocale_null_r", scope: !733, file: !733, line: 154, type: !3778, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3780)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!116, !116, !260, !118}
!3780 = !{!3781, !3782, !3783}
!3781 = !DILocalVariable(name: "category", arg: 1, scope: !3777, file: !733, line: 154, type: !116)
!3782 = !DILocalVariable(name: "buf", arg: 2, scope: !3777, file: !733, line: 154, type: !260)
!3783 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3777, file: !733, line: 154, type: !118)
!3784 = !DILocation(line: 0, scope: !3777)
!3785 = !DILocation(line: 159, column: 10, scope: !3777)
!3786 = !DILocation(line: 159, column: 3, scope: !3777)
!3787 = distinct !DISubprogram(name: "setlocale_null", scope: !733, file: !733, line: 186, type: !3788, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !732, retainedNodes: !3790)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!80, !116}
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "category", arg: 1, scope: !3787, file: !733, line: 186, type: !116)
!3792 = !DILocation(line: 0, scope: !3787)
!3793 = !DILocation(line: 189, column: 10, scope: !3787)
!3794 = !DILocation(line: 189, column: 3, scope: !3787)
!3795 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !735, file: !735, line: 35, type: !3788, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3796)
!3796 = !{!3797, !3798}
!3797 = !DILocalVariable(name: "category", arg: 1, scope: !3795, file: !735, line: 35, type: !116)
!3798 = !DILocalVariable(name: "result", scope: !3795, file: !735, line: 37, type: !80)
!3799 = !DILocation(line: 0, scope: !3795)
!3800 = !DILocation(line: 37, column: 24, scope: !3795)
!3801 = !DILocation(line: 62, column: 3, scope: !3795)
!3802 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !735, file: !735, line: 66, type: !3778, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3803)
!3803 = !{!3804, !3805, !3806, !3807, !3808}
!3804 = !DILocalVariable(name: "category", arg: 1, scope: !3802, file: !735, line: 66, type: !116)
!3805 = !DILocalVariable(name: "buf", arg: 2, scope: !3802, file: !735, line: 66, type: !260)
!3806 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3802, file: !735, line: 66, type: !118)
!3807 = !DILocalVariable(name: "result", scope: !3802, file: !735, line: 111, type: !80)
!3808 = !DILocalVariable(name: "length", scope: !3809, file: !735, line: 125, type: !118)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !735, line: 124, column: 5)
!3810 = distinct !DILexicalBlock(scope: !3802, file: !735, line: 113, column: 7)
!3811 = !DILocation(line: 0, scope: !3802)
!3812 = !DILocation(line: 0, scope: !3795, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 111, column: 24, scope: !3802)
!3814 = !DILocation(line: 37, column: 24, scope: !3795, inlinedAt: !3813)
!3815 = !DILocation(line: 113, column: 14, scope: !3810)
!3816 = !DILocation(line: 113, column: 7, scope: !3802)
!3817 = !DILocation(line: 116, column: 19, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3819, file: !735, line: 116, column: 11)
!3819 = distinct !DILexicalBlock(scope: !3810, file: !735, line: 114, column: 5)
!3820 = !DILocation(line: 116, column: 11, scope: !3819)
!3821 = !DILocation(line: 120, column: 16, scope: !3818)
!3822 = !DILocation(line: 120, column: 9, scope: !3818)
!3823 = !DILocation(line: 125, column: 23, scope: !3809)
!3824 = !DILocation(line: 0, scope: !3809)
!3825 = !DILocation(line: 126, column: 18, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3809, file: !735, line: 126, column: 11)
!3827 = !DILocation(line: 126, column: 11, scope: !3809)
!3828 = !DILocation(line: 128, column: 39, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3826, file: !735, line: 127, column: 9)
!3830 = !DILocalVariable(name: "__dest", arg: 1, scope: !3831, file: !1442, line: 26, type: !3293)
!3831 = distinct !DISubprogram(name: "memcpy", scope: !1442, file: !1442, line: 26, type: !3291, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !734, retainedNodes: !3832)
!3832 = !{!3830, !3833, !3834}
!3833 = !DILocalVariable(name: "__src", arg: 2, scope: !3831, file: !1442, line: 26, type: !963)
!3834 = !DILocalVariable(name: "__len", arg: 3, scope: !3831, file: !1442, line: 26, type: !118)
!3835 = !DILocation(line: 0, scope: !3831, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 128, column: 11, scope: !3829)
!3837 = !DILocation(line: 29, column: 10, scope: !3831, inlinedAt: !3836)
!3838 = !DILocation(line: 129, column: 11, scope: !3829)
!3839 = !DILocation(line: 133, column: 23, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3841, file: !735, line: 133, column: 15)
!3841 = distinct !DILexicalBlock(scope: !3826, file: !735, line: 132, column: 9)
!3842 = !DILocation(line: 133, column: 15, scope: !3841)
!3843 = !DILocation(line: 138, column: 44, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3840, file: !735, line: 134, column: 13)
!3845 = !DILocation(line: 0, scope: !3831, inlinedAt: !3846)
!3846 = distinct !DILocation(line: 138, column: 15, scope: !3844)
!3847 = !DILocation(line: 29, column: 10, scope: !3831, inlinedAt: !3846)
!3848 = !DILocation(line: 139, column: 15, scope: !3844)
!3849 = !DILocation(line: 139, column: 32, scope: !3844)
!3850 = !DILocation(line: 140, column: 13, scope: !3844)
!3851 = !DILocation(line: 0, scope: !3810)
!3852 = !DILocation(line: 145, column: 1, scope: !3802)
