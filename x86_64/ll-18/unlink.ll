; ModuleID = 'src/unlink.bc'
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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !365
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !336
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !355
@.str.1.31 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !357
@.str.2.33 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !359
@.str.3.32 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !361
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !363
@.str.4.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !367
@.str.5.27 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !369
@.str.6.28 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !374
@opterr = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !379
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.42, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.43, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !382
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !481
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !495
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !533
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !540
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !497
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !542
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !485
@.str.10.67 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !502
@.str.11.65 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !504
@.str.12.68 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !506
@.str.13.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !508
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !510
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !548
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !551
@.str.2.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !553
@.str.3.78 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !555
@.str.4.79 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !557
@.str.5.80 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !559
@.str.6.81 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !564
@.str.7.82 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !569
@.str.8.83 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !571
@.str.9.84 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !576
@.str.10.85 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !581
@.str.11.86 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !586
@.str.12.87 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !591
@.str.13.88 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !593
@.str.14.89 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !598
@.str.15.90 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !603
@.str.16.91 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !608
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.96 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !613
@.str.18.97 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !615
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !617
@.str.20 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !619
@.str.21.98 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !621
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !623
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !625
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !630
@exit_failure = dso_local global i32 1, align 4, !dbg !638
@.str.111 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !644
@.str.1.109 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !647
@.str.2.110 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !649
@.str.122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !651
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !654
@.str.1.127 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !669

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !743 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !747, metadata !DIExpression()), !dbg !748
  %2 = icmp eq i32 %0, 0, !dbg !749
  br i1 %2, label %8, label %3, !dbg !751

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !752, !tbaa !754
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !752
  %6 = load ptr, ptr @program_name, align 8, !dbg !752, !tbaa !754
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !752
  br label %31, !dbg !752

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !758
  %10 = load ptr, ptr @program_name, align 8, !dbg !758, !tbaa !754
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #37, !dbg !758
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !760
  %13 = load ptr, ptr @stdout, align 8, !dbg !760, !tbaa !754
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !760
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !761
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !761
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !762
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !762
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !763, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata !782, metadata !776, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr poison, metadata !775, metadata !DIExpression()), !dbg !780
  tail call void @emit_bug_reporting_address() #37, !dbg !783
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !784
  call void @llvm.dbg.value(metadata ptr %17, metadata !778, metadata !DIExpression()), !dbg !780
  %18 = icmp eq ptr %17, null, !dbg !785
  br i1 %18, label %26, label %19, !dbg !787

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.44, i64 noundef 3) #38, !dbg !788
  %21 = icmp eq i32 %20, 0, !dbg !788
  br i1 %21, label %26, label %22, !dbg !789

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #37, !dbg !790
  %24 = load ptr, ptr @stdout, align 8, !dbg !790, !tbaa !754
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !790
  br label %26, !dbg !792

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !775, metadata !DIExpression()), !dbg !780
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !779, metadata !DIExpression()), !dbg !780
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #37, !dbg !793
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3) #37, !dbg !793
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #37, !dbg !794
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #37, !dbg !794
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !795
  unreachable, !dbg !795
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !796 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !800 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !806 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !809 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !68 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !228, metadata !DIExpression()), !dbg !813
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !229, metadata !DIExpression()), !dbg !813
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !814, !tbaa !815
  %3 = icmp eq i32 %2, -1, !dbg !817
  br i1 %3, label %4, label %16, !dbg !818

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.14) #37, !dbg !819
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !230, metadata !DIExpression()), !dbg !820
  %6 = icmp eq ptr %5, null, !dbg !821
  br i1 %6, label %14, label %7, !dbg !822

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !823, !tbaa !824
  %9 = icmp eq i8 %8, 0, !dbg !823
  br i1 %9, label %14, label %10, !dbg !825

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !826, metadata !DIExpression()), !dbg !833
  call void @llvm.dbg.value(metadata ptr @.str.15, metadata !832, metadata !DIExpression()), !dbg !833
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.15) #38, !dbg !835
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
  br label %124, !dbg !844

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !233, metadata !DIExpression()), !dbg !813
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.16) #38, !dbg !845
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !846
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !235, metadata !DIExpression()), !dbg !813
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !847
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !236, metadata !DIExpression()), !dbg !813
  %26 = icmp eq ptr %25, null, !dbg !848
  br i1 %26, label %54, label %27, !dbg !849

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !850
  br i1 %28, label %54, label %29, !dbg !851

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !237, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata i64 0, metadata !241, metadata !DIExpression()), !dbg !852
  %30 = icmp ult ptr %24, %25, !dbg !853
  br i1 %30, label %31, label %54, !dbg !854

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !813
  %33 = load ptr, ptr %32, align 8, !tbaa !754
  br label %34, !dbg !854

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !237, metadata !DIExpression()), !dbg !852
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !241, metadata !DIExpression()), !dbg !852
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !855
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !237, metadata !DIExpression()), !dbg !852
  %38 = load i8, ptr %35, align 1, !dbg !855, !tbaa !824
  %39 = sext i8 %38 to i64, !dbg !855
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !855
  %41 = load i16, ptr %40, align 2, !dbg !855, !tbaa !856
  %42 = freeze i16 %41, !dbg !858
  %43 = lshr i16 %42, 13, !dbg !858
  %44 = and i16 %43, 1, !dbg !858
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !859
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !241, metadata !DIExpression()), !dbg !852
  %47 = icmp ult ptr %37, %25, !dbg !853
  %48 = icmp ult i64 %46, 2, !dbg !860
  %49 = select i1 %47, i1 %48, i1 false, !dbg !860
  br i1 %49, label %34, label %50, !dbg !854, !llvm.loop !861

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !863
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !865
  %53 = zext i1 %51 to i8, !dbg !865
  br label %54, !dbg !865

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !813
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !233, metadata !DIExpression()), !dbg !813
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !236, metadata !DIExpression()), !dbg !813
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.17) #38, !dbg !866
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !242, metadata !DIExpression()), !dbg !813
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !867
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !243, metadata !DIExpression()), !dbg !813
  br label %59, !dbg !868

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !813
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !233, metadata !DIExpression()), !dbg !813
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !243, metadata !DIExpression()), !dbg !813
  %62 = load i8, ptr %60, align 1, !dbg !869, !tbaa !824
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !870

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !871
  %65 = load i8, ptr %64, align 1, !dbg !874, !tbaa !824
  %66 = icmp eq i8 %65, 45, !dbg !875
  %67 = select i1 %66, i8 0, i8 %61, !dbg !876
  br label %68, !dbg !876

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !813
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !233, metadata !DIExpression()), !dbg !813
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !877
  %71 = load ptr, ptr %70, align 8, !dbg !877, !tbaa !754
  %72 = sext i8 %62 to i64, !dbg !877
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !877
  %74 = load i16, ptr %73, align 2, !dbg !877, !tbaa !856
  %75 = and i16 %74, 8192, !dbg !877
  %76 = icmp eq i16 %75, 0, !dbg !877
  br i1 %76, label %92, label %77, !dbg !879

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !880
  br i1 %78, label %94, label %79, !dbg !883

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !884
  %81 = load i8, ptr %80, align 1, !dbg !884, !tbaa !824
  %82 = sext i8 %81 to i64, !dbg !884
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !884
  %84 = load i16, ptr %83, align 2, !dbg !884, !tbaa !856
  %85 = and i16 %84, 8192, !dbg !884
  %86 = icmp eq i16 %85, 0, !dbg !884
  br i1 %86, label %87, label %94, !dbg !885

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !886
  %89 = icmp ne i8 %88, 0, !dbg !886
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !888
  br i1 %91, label %92, label %94, !dbg !888

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !889
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !243, metadata !DIExpression()), !dbg !813
  br label %59, !dbg !868, !llvm.loop !890

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !892
  %96 = load ptr, ptr @stdout, align 8, !dbg !892, !tbaa !754
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !892
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !893
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !895
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !903
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !905
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !909
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !826, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata !782, metadata !832, metadata !DIExpression()), !dbg !911
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !301, metadata !DIExpression()), !dbg !813
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.31, i64 noundef 6) #38, !dbg !913
  %99 = icmp eq i32 %98, 0, !dbg !913
  br i1 %99, label %103, label %100, !dbg !915

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.32, i64 noundef 9) #38, !dbg !916
  %102 = icmp eq i32 %101, 0, !dbg !916
  br i1 %102, label %103, label %106, !dbg !917

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !918
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #37, !dbg !918
  br label %109, !dbg !920

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !921
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #37, !dbg !921
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !923, !tbaa !754
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %110), !dbg !923
  %112 = load ptr, ptr @stdout, align 8, !dbg !924, !tbaa !754
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %112), !dbg !924
  %114 = ptrtoint ptr %60 to i64, !dbg !925
  %115 = sub i64 %114, %95, !dbg !925
  %116 = load ptr, ptr @stdout, align 8, !dbg !925, !tbaa !754
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !925
  %118 = load ptr, ptr @stdout, align 8, !dbg !926, !tbaa !754
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %118), !dbg !926
  %120 = load ptr, ptr @stdout, align 8, !dbg !927, !tbaa !754
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %120), !dbg !927
  %122 = load ptr, ptr @stdout, align 8, !dbg !928, !tbaa !754
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !928
  br label %124, !dbg !929

124:                                              ; preds = %109, %19
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
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !965 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !970, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !971, metadata !DIExpression()), !dbg !972
  %3 = load ptr, ptr %1, align 8, !dbg !973, !tbaa !754
  tail call void @set_program_name(ptr noundef %3) #37, !dbg !974
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #37, !dbg !975
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #37, !dbg !976
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #37, !dbg !977
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !978
  %8 = load ptr, ptr @Version, align 8, !dbg !979, !tbaa !754
  %9 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #37, !dbg !980
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %8, i1 noundef zeroext true, ptr noundef nonnull @usage, ptr noundef %9, ptr noundef null) #37, !dbg !981
  %10 = load i32, ptr @optind, align 4, !dbg !982, !tbaa !815
  %11 = icmp slt i32 %10, %0, !dbg !984
  br i1 %11, label %14, label %12, !dbg !985

12:                                               ; preds = %2
  %13 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #37, !dbg !986
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %13) #37, !dbg !986
  tail call void @usage(i32 noundef 1) #41, !dbg !988
  unreachable, !dbg !988

14:                                               ; preds = %2
  %15 = add nsw i32 %10, 1, !dbg !989
  %16 = icmp slt i32 %15, %0, !dbg !990
  br i1 %16, label %17, label %25, !dbg !992

17:                                               ; preds = %14
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #37, !dbg !993
  %19 = load i32, ptr @optind, align 4, !dbg !993, !tbaa !815
  %20 = sext i32 %19 to i64, !dbg !993
  %21 = getelementptr ptr, ptr %1, i64 %20, !dbg !993
  %22 = getelementptr ptr, ptr %21, i64 1, !dbg !993
  %23 = load ptr, ptr %22, align 8, !dbg !993, !tbaa !754
  %24 = tail call ptr @quote(ptr noundef %23) #37, !dbg !993
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %18, ptr noundef %24) #37, !dbg !993
  tail call void @usage(i32 noundef 1) #41, !dbg !995
  unreachable, !dbg !995

25:                                               ; preds = %14
  %26 = sext i32 %10 to i64, !dbg !996
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26, !dbg !996
  %28 = load ptr, ptr %27, align 8, !dbg !996, !tbaa !754
  %29 = tail call i32 @unlink(ptr noundef %28) #37, !dbg !998
  %30 = icmp eq i32 %29, 0, !dbg !999
  br i1 %30, label %40, label %31, !dbg !1000

31:                                               ; preds = %25
  %32 = tail call ptr @__errno_location() #40, !dbg !1001
  %33 = load i32, ptr %32, align 4, !dbg !1001, !tbaa !815
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #37, !dbg !1001
  %35 = load i32, ptr @optind, align 4, !dbg !1001, !tbaa !815
  %36 = sext i32 %35 to i64, !dbg !1001
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1001
  %38 = load ptr, ptr %37, align 8, !dbg !1001, !tbaa !754
  %39 = tail call ptr @quotearg_style(i32 noundef 4, ptr noundef %38) #37, !dbg !1001
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %33, ptr noundef %34, ptr noundef %39) #37, !dbg !1001
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
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1020, metadata !DIExpression()), !dbg !1021
  store ptr %0, ptr @file_name, align 8, !dbg !1022, !tbaa !754
  ret void, !dbg !1023
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #11 !dbg !1024 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1028, metadata !DIExpression()), !dbg !1029
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !1030, !tbaa !1031
  ret void, !dbg !1033
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1034 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1039, !tbaa !754
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !1040
  %3 = icmp eq i32 %2, 0, !dbg !1041
  br i1 %3, label %22, label %4, !dbg !1042

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !1043, !tbaa !1031, !range !1044, !noundef !782
  %6 = icmp eq i8 %5, 0, !dbg !1043
  br i1 %6, label %11, label %7, !dbg !1045

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !1046
  %9 = load i32, ptr %8, align 4, !dbg !1046, !tbaa !815
  %10 = icmp eq i32 %9, 32, !dbg !1047
  br i1 %10, label %22, label %11, !dbg !1048

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1.22, i32 noundef 5) #37, !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1036, metadata !DIExpression()), !dbg !1050
  %13 = load ptr, ptr @file_name, align 8, !dbg !1051, !tbaa !754
  %14 = icmp eq ptr %13, null, !dbg !1051
  %15 = tail call ptr @__errno_location() #40, !dbg !1053
  %16 = load i32, ptr %15, align 4, !dbg !1053, !tbaa !815
  br i1 %14, label %19, label %17, !dbg !1054

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !1055
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.23, ptr noundef %18, ptr noundef %12) #37, !dbg !1055
  br label %20, !dbg !1055

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.24, ptr noundef %12) #37, !dbg !1056
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1057, !tbaa !815
  tail call void @_exit(i32 noundef %21) #39, !dbg !1058
  unreachable, !dbg !1058

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1059, !tbaa !754
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !1061
  %25 = icmp eq i32 %24, 0, !dbg !1062
  br i1 %25, label %28, label %26, !dbg !1063

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1064, !tbaa !815
  tail call void @_exit(i32 noundef %27) #39, !dbg !1065
  unreachable, !dbg !1065

28:                                               ; preds = %22
  ret void, !dbg !1066
}

; Function Attrs: noreturn
declare !dbg !1067 void @_exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #13 !dbg !1068 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1072, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1073, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1074, metadata !DIExpression()), !dbg !1076
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1075, metadata !DIExpression()), !dbg !1076
  tail call fastcc void @flush_stdout(), !dbg !1077
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !1078, !tbaa !754
  %6 = icmp eq ptr %5, null, !dbg !1078
  br i1 %6, label %8, label %7, !dbg !1080

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !1081
  br label %12, !dbg !1081

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !1082, !tbaa !754
  %10 = tail call ptr @getprogname() #38, !dbg !1082
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.25, ptr noundef %10) #37, !dbg !1082
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !1084
  ret void, !dbg !1085
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1086 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1088, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i32 1, metadata !1090, metadata !DIExpression()), !dbg !1095
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1098
  %2 = icmp slt i32 %1, 0, !dbg !1099
  br i1 %2, label %6, label %3, !dbg !1100

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1101, !tbaa !754
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !1101
  br label %6, !dbg !1101

6:                                                ; preds = %3, %0
  ret void, !dbg !1102
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !1103 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !1109
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1105, metadata !DIExpression()), !dbg !1110
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1106, metadata !DIExpression()), !dbg !1110
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1107, metadata !DIExpression()), !dbg !1110
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1108, metadata !DIExpression()), !dbg !1110
  %6 = load ptr, ptr @stderr, align 8, !dbg !1111, !tbaa !754
  call void @llvm.dbg.value(metadata ptr %6, metadata !1112, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %2, metadata !1152, metadata !DIExpression()), !dbg !1154
  call void @llvm.dbg.value(metadata ptr %3, metadata !1153, metadata !DIExpression()), !dbg !1154
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !1156
  %8 = load i32, ptr @error_message_count, align 4, !dbg !1157, !tbaa !815
  %9 = add i32 %8, 1, !dbg !1157
  store i32 %9, ptr @error_message_count, align 4, !dbg !1157, !tbaa !815
  %10 = icmp eq i32 %1, 0, !dbg !1158
  br i1 %10, label %20, label %11, !dbg !1160

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1161, metadata !DIExpression(), metadata !1109, metadata ptr %5, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i32 %1, metadata !1164, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !1171
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !1172
  call void @llvm.dbg.value(metadata ptr %12, metadata !1165, metadata !DIExpression()), !dbg !1169
  %13 = icmp eq ptr %12, null, !dbg !1173
  br i1 %13, label %14, label %16, !dbg !1175

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.26, ptr noundef nonnull @.str.5.27, i32 noundef 5) #37, !dbg !1176
  call void @llvm.dbg.value(metadata ptr %15, metadata !1165, metadata !DIExpression()), !dbg !1169
  br label %16, !dbg !1177

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !1169
  call void @llvm.dbg.value(metadata ptr %17, metadata !1165, metadata !DIExpression()), !dbg !1169
  %18 = load ptr, ptr @stderr, align 8, !dbg !1178, !tbaa !754
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.28, ptr noundef %17) #37, !dbg !1178
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !1179
  br label %20, !dbg !1180

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !1181, !tbaa !754
  call void @llvm.dbg.value(metadata i32 10, metadata !1182, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata ptr %21, metadata !1188, metadata !DIExpression()), !dbg !1189
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !1191
  %23 = load ptr, ptr %22, align 8, !dbg !1191, !tbaa !1192
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !1191
  %25 = load ptr, ptr %24, align 8, !dbg !1191, !tbaa !1195
  %26 = icmp ult ptr %23, %25, !dbg !1191
  br i1 %26, label %29, label %27, !dbg !1191, !prof !1196

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !1191
  br label %31, !dbg !1191

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !1191
  store ptr %30, ptr %22, align 8, !dbg !1191, !tbaa !1192
  store i8 10, ptr %23, align 1, !dbg !1191, !tbaa !824
  br label %31, !dbg !1191

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !1197, !tbaa !754
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !1197
  %34 = icmp eq i32 %0, 0, !dbg !1198
  br i1 %34, label %36, label %35, !dbg !1200

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !1201
  unreachable, !dbg !1201

36:                                               ; preds = %31
  ret void, !dbg !1202
}

declare !dbg !1203 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nounwind
declare !dbg !1206 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

declare !dbg !1209 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1212 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1215 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1219 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1232
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1226, metadata !DIExpression(), metadata !1232, metadata ptr %4, metadata !DIExpression()), !dbg !1233
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1223, metadata !DIExpression()), !dbg !1233
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1224, metadata !DIExpression()), !dbg !1233
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1225, metadata !DIExpression()), !dbg !1233
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !1234
  call void @llvm.va_start(ptr nonnull %4), !dbg !1235
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #42, !dbg !1236
  call void @llvm.va_end(ptr nonnull %4), !dbg !1237
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !1238
  ret void, !dbg !1238
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #13 !dbg !338 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !349, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !350, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !351, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !352, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !353, metadata !DIExpression()), !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !354, metadata !DIExpression()), !dbg !1239
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !1240, !tbaa !815
  %8 = icmp eq i32 %7, 0, !dbg !1240
  br i1 %8, label %23, label %9, !dbg !1242

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1243, !tbaa !815
  %11 = icmp eq i32 %10, %3, !dbg !1246
  br i1 %11, label %12, label %22, !dbg !1247

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1248, !tbaa !754
  %14 = icmp eq ptr %13, %2, !dbg !1249
  br i1 %14, label %36, label %15, !dbg !1250

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !1251
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !1252
  br i1 %18, label %19, label %22, !dbg !1252

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1253
  %21 = icmp eq i32 %20, 0, !dbg !1254
  br i1 %21, label %36, label %22, !dbg !1255

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1256, !tbaa !754
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1257, !tbaa !815
  br label %23, !dbg !1258

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !1259
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !1260, !tbaa !754
  %25 = icmp eq ptr %24, null, !dbg !1260
  br i1 %25, label %27, label %26, !dbg !1262

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !1263
  br label %31, !dbg !1263

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !1264, !tbaa !754
  %29 = tail call ptr @getprogname() #38, !dbg !1264
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.31, ptr noundef %29) #37, !dbg !1264
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !1266, !tbaa !754
  %33 = icmp eq ptr %2, null, !dbg !1266
  %34 = select i1 %33, ptr @.str.3.32, ptr @.str.2.33, !dbg !1266
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !1266
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !1267
  br label %36, !dbg !1268

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !1268
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1269 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1279
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1278, metadata !DIExpression(), metadata !1279, metadata ptr %6, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1273, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1274, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1275, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1276, metadata !DIExpression()), !dbg !1280
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1277, metadata !DIExpression()), !dbg !1280
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !1281
  call void @llvm.va_start(ptr nonnull %6), !dbg !1282
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #42, !dbg !1283
  call void @llvm.va_end(ptr nonnull %6), !dbg !1284
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !1285
  ret void, !dbg !1285
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #16 !dbg !1286 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1289, !tbaa !754
  ret ptr %1, !dbg !1290
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1291 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1306, metadata !DIExpression(), metadata !1321, metadata ptr %7, metadata !DIExpression()), !dbg !1322
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1296, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1297, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1298, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1299, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1300, metadata !DIExpression()), !dbg !1323
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1301, metadata !DIExpression()), !dbg !1323
  %8 = load i32, ptr @opterr, align 4, !dbg !1324, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !1302, metadata !DIExpression()), !dbg !1323
  store i32 0, ptr @opterr, align 4, !dbg !1325, !tbaa !815
  %9 = icmp eq i32 %0, 2, !dbg !1326
  br i1 %9, label %10, label %15, !dbg !1327

10:                                               ; preds = %6
  %11 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1328
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1303, metadata !DIExpression()), !dbg !1329
  switch i32 %11, label %15 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !1330

12:                                               ; preds = %10
  tail call void %5(i32 noundef 0) #37, !dbg !1331
  br label %15, !dbg !1332

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #37, !dbg !1333
  call void @llvm.va_start(ptr nonnull %7), !dbg !1334
  %14 = load ptr, ptr @stdout, align 8, !dbg !1335, !tbaa !754
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #37, !dbg !1336
  call void @exit(i32 noundef 0) #39, !dbg !1337
  unreachable, !dbg !1337

15:                                               ; preds = %12, %10, %6
  store i32 %8, ptr @opterr, align 4, !dbg !1338, !tbaa !815
  store i32 0, ptr @optind, align 4, !dbg !1339, !tbaa !815
  ret void, !dbg !1340
}

; Function Attrs: nounwind
declare !dbg !1341 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1347 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1366
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1361, metadata !DIExpression(), metadata !1366, metadata ptr %8, metadata !DIExpression()), !dbg !1367
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1351, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1352, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1353, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1354, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1355, metadata !DIExpression()), !dbg !1368
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1356, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1368
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1357, metadata !DIExpression()), !dbg !1368
  %9 = load i32, ptr @opterr, align 4, !dbg !1369, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1358, metadata !DIExpression()), !dbg !1368
  store i32 1, ptr @opterr, align 4, !dbg !1370, !tbaa !815
  %10 = select i1 %5, ptr @.str.1.46, ptr @.str.41, !dbg !1371
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !1359, metadata !DIExpression()), !dbg !1368
  %11 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull @long_options, ptr noundef null) #37, !dbg !1372
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1360, metadata !DIExpression()), !dbg !1368
  switch i32 %11, label %14 [
    i32 -1, label %18
    i32 104, label %16
    i32 118, label %12
  ], !dbg !1373

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #37, !dbg !1374
  call void @llvm.va_start(ptr nonnull %8), !dbg !1375
  %13 = load ptr, ptr @stdout, align 8, !dbg !1376, !tbaa !754
  call void @version_etc_va(ptr noundef %13, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #37, !dbg !1377
  call void @exit(i32 noundef 0) #39, !dbg !1378
  unreachable, !dbg !1378

14:                                               ; preds = %7
  %15 = load volatile i32, ptr @exit_failure, align 4, !dbg !1379, !tbaa !815
  br label %16, !dbg !1380

16:                                               ; preds = %7, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %7 ]
  tail call void %6(i32 noundef %17) #37, !dbg !1381
  br label %18, !dbg !1382

18:                                               ; preds = %16, %7
  store i32 %9, ptr @opterr, align 4, !dbg !1382, !tbaa !815
  ret void, !dbg !1383
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #17 !dbg !1384 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1386, metadata !DIExpression()), !dbg !1389
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !1390
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1387, metadata !DIExpression()), !dbg !1389
  %3 = icmp eq ptr %2, null, !dbg !1391
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1391
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1391
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1388, metadata !DIExpression()), !dbg !1389
  %6 = ptrtoint ptr %5 to i64, !dbg !1392
  %7 = ptrtoint ptr %0 to i64, !dbg !1392
  %8 = sub i64 %6, %7, !dbg !1392
  %9 = icmp sgt i64 %8, 6, !dbg !1394
  br i1 %9, label %10, label %19, !dbg !1395

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %11, metadata !1397, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata ptr @.str.51, metadata !1402, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.value(metadata i64 7, metadata !1403, metadata !DIExpression()), !dbg !1404
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.51, i64 7), !dbg !1406
  %13 = icmp eq i32 %12, 0, !dbg !1407
  br i1 %13, label %14, label %19, !dbg !1408

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1386, metadata !DIExpression()), !dbg !1389
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.52, i64 noundef 3) #38, !dbg !1409
  %16 = icmp eq i32 %15, 0, !dbg !1412
  %17 = select i1 %16, i64 3, i64 0, !dbg !1413
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !1413
  br label %19, !dbg !1413

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1388, metadata !DIExpression()), !dbg !1389
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1386, metadata !DIExpression()), !dbg !1389
  store ptr %20, ptr @program_name, align 8, !dbg !1414, !tbaa !754
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1415, !tbaa !754
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1416, !tbaa !754
  ret void, !dbg !1417
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1418 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !415 {
  %3 = alloca i32, align 4, !DIAssignID !1419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !425, metadata !DIExpression(), metadata !1419, metadata ptr %3, metadata !DIExpression()), !dbg !1420
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !430, metadata !DIExpression(), metadata !1421, metadata ptr %4, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !422, metadata !DIExpression()), !dbg !1420
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !423, metadata !DIExpression()), !dbg !1420
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !1422
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !424, metadata !DIExpression()), !dbg !1420
  %6 = icmp eq ptr %5, %0, !dbg !1423
  br i1 %6, label %7, label %14, !dbg !1425

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !1426
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !1427
  call void @llvm.dbg.value(metadata ptr %4, metadata !1428, metadata !DIExpression()), !dbg !1435
  call void @llvm.dbg.value(metadata ptr %4, metadata !1437, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i32 0, metadata !1443, metadata !DIExpression()), !dbg !1445
  call void @llvm.dbg.value(metadata i64 8, metadata !1444, metadata !DIExpression()), !dbg !1445
  store i64 0, ptr %4, align 8, !dbg !1447
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !1448
  %9 = icmp eq i64 %8, 2, !dbg !1450
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1451
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1420
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !1452
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !1452
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1420
  ret ptr %15, !dbg !1452
}

; Function Attrs: nounwind
declare !dbg !1453 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !1459 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1464, metadata !DIExpression()), !dbg !1467
  %2 = tail call ptr @__errno_location() #40, !dbg !1468
  %3 = load i32, ptr %2, align 4, !dbg !1468, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1465, metadata !DIExpression()), !dbg !1467
  %4 = icmp eq ptr %0, null, !dbg !1469
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1469
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #43, !dbg !1470
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1466, metadata !DIExpression()), !dbg !1467
  store i32 %3, ptr %2, align 4, !dbg !1471, !tbaa !815
  ret ptr %6, !dbg !1472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #19 !dbg !1473 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1479, metadata !DIExpression()), !dbg !1480
  %2 = icmp eq ptr %0, null, !dbg !1481
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !1481
  %4 = load i32, ptr %3, align 8, !dbg !1482, !tbaa !1483
  ret i32 %4, !dbg !1485
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !1486 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1490, metadata !DIExpression()), !dbg !1492
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1491, metadata !DIExpression()), !dbg !1492
  %3 = icmp eq ptr %0, null, !dbg !1493
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1493
  store i32 %1, ptr %4, align 8, !dbg !1494, !tbaa !1483
  ret void, !dbg !1495
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1496 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1500, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1501, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !1502, metadata !DIExpression()), !dbg !1508
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !1503, metadata !DIExpression()), !dbg !1508
  %4 = icmp eq ptr %0, null, !dbg !1509
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1509
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !1510
  %7 = lshr i8 %1, 5, !dbg !1511
  %8 = zext nneg i8 %7 to i64, !dbg !1511
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !1512
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1504, metadata !DIExpression()), !dbg !1508
  %10 = and i8 %1, 31, !dbg !1513
  %11 = zext nneg i8 %10 to i32, !dbg !1513
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !1506, metadata !DIExpression()), !dbg !1508
  %12 = load i32, ptr %9, align 4, !dbg !1514, !tbaa !815
  %13 = lshr i32 %12, %11, !dbg !1515
  %14 = and i32 %13, 1, !dbg !1516
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !1507, metadata !DIExpression()), !dbg !1508
  %15 = xor i32 %13, %2, !dbg !1517
  %16 = and i32 %15, 1, !dbg !1517
  %17 = shl nuw i32 %16, %11, !dbg !1518
  %18 = xor i32 %17, %12, !dbg !1519
  store i32 %18, ptr %9, align 4, !dbg !1519, !tbaa !815
  ret i32 %14, !dbg !1520
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1521 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1525, metadata !DIExpression()), !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1526, metadata !DIExpression()), !dbg !1528
  %3 = icmp eq ptr %0, null, !dbg !1529
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !1531
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1525, metadata !DIExpression()), !dbg !1528
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !1532
  %6 = load i32, ptr %5, align 4, !dbg !1532, !tbaa !1533
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !1527, metadata !DIExpression()), !dbg !1528
  store i32 %1, ptr %5, align 4, !dbg !1534, !tbaa !1533
  ret i32 %6, !dbg !1535
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !1536 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1540, metadata !DIExpression()), !dbg !1543
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !1543
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1542, metadata !DIExpression()), !dbg !1543
  %4 = icmp eq ptr %0, null, !dbg !1544
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !1546
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1540, metadata !DIExpression()), !dbg !1543
  store i32 10, ptr %5, align 8, !dbg !1547, !tbaa !1483
  %6 = icmp ne ptr %1, null, !dbg !1548
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !1550
  br i1 %8, label %10, label %9, !dbg !1550

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !1551
  unreachable, !dbg !1551

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !1552
  store ptr %1, ptr %11, align 8, !dbg !1553, !tbaa !1554
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !1555
  store ptr %2, ptr %12, align 8, !dbg !1556, !tbaa !1557
  ret void, !dbg !1558
}

; Function Attrs: noreturn nounwind
declare !dbg !1559 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !1560 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1564, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1565, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1566, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1567, metadata !DIExpression()), !dbg !1572
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1568, metadata !DIExpression()), !dbg !1572
  %6 = icmp eq ptr %4, null, !dbg !1573
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !1573
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1569, metadata !DIExpression()), !dbg !1572
  %8 = tail call ptr @__errno_location() #40, !dbg !1574
  %9 = load i32, ptr %8, align 4, !dbg !1574, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1570, metadata !DIExpression()), !dbg !1572
  %10 = load i32, ptr %7, align 8, !dbg !1575, !tbaa !1483
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !1576
  %12 = load i32, ptr %11, align 4, !dbg !1576, !tbaa !1533
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !1577
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !1578
  %15 = load ptr, ptr %14, align 8, !dbg !1578, !tbaa !1554
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !1579
  %17 = load ptr, ptr %16, align 8, !dbg !1579, !tbaa !1557
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !1580
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i32 %9, ptr %8, align 4, !dbg !1581, !tbaa !815
  ret i64 %18, !dbg !1582
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !1583 {
  %10 = alloca i32, align 4, !DIAssignID !1651
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1652
  %12 = alloca i32, align 4, !DIAssignID !1653
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1654
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !1655
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1629, metadata !DIExpression(), metadata !1655, metadata ptr %14, metadata !DIExpression()), !dbg !1656
  %15 = alloca i32, align 4, !DIAssignID !1657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1632, metadata !DIExpression(), metadata !1657, metadata ptr %15, metadata !DIExpression()), !dbg !1658
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1589, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1591, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1592, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !1593, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !1594, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1595, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1596, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1597, metadata !DIExpression()), !dbg !1659
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !1660
  %17 = icmp eq i64 %16, 1, !dbg !1661
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !1598, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1601, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1602, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1603, metadata !DIExpression()), !dbg !1659
  %18 = trunc i32 %5 to i8, !dbg !1662
  %19 = lshr i8 %18, 1, !dbg !1662
  %20 = and i8 %19, 1, !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1606, metadata !DIExpression()), !dbg !1659
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !1663

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !1664
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !1665
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !1666
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !1667
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !1659
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !1668
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !1669
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !1606, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !1603, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !1602, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !1601, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !1592, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !1597, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !1596, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !1593, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.label(metadata !1607), !dbg !1670
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1659
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
  ], !dbg !1671

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1593, metadata !DIExpression()), !dbg !1659
  br label %114, !dbg !1672

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 5, metadata !1593, metadata !DIExpression()), !dbg !1659
  %43 = and i8 %37, 1, !dbg !1673
  %44 = icmp eq i8 %43, 0, !dbg !1673
  br i1 %44, label %45, label %114, !dbg !1672

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1675
  br i1 %46, label %114, label %47, !dbg !1678

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !1675, !tbaa !824
  br label %114, !dbg !1675

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !519, metadata !DIExpression(), metadata !1653, metadata ptr %12, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !520, metadata !DIExpression(), metadata !1654, metadata ptr %13, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata ptr @.str.11.65, metadata !516, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %29, metadata !517, metadata !DIExpression()), !dbg !1679
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.11.65, i32 noundef 5) #37, !dbg !1683
  call void @llvm.dbg.value(metadata ptr %49, metadata !518, metadata !DIExpression()), !dbg !1679
  %50 = icmp eq ptr %49, @.str.11.65, !dbg !1684
  br i1 %50, label %51, label %60, !dbg !1686

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !1687
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !1688
  call void @llvm.dbg.value(metadata ptr %13, metadata !1689, metadata !DIExpression()), !dbg !1695
  call void @llvm.dbg.value(metadata ptr %13, metadata !1697, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i64 8, metadata !1701, metadata !DIExpression()), !dbg !1702
  store i64 0, ptr %13, align 8, !dbg !1704
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !1705
  %53 = icmp eq i64 %52, 3, !dbg !1707
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !1708
  %57 = icmp eq i32 %29, 9, !dbg !1708
  %58 = select i1 %57, ptr @.str.10.67, ptr @.str.12.68, !dbg !1708
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !1708
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !1709
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !1709
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !1679
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !1596, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.assign(metadata i1 undef, metadata !519, metadata !DIExpression(), metadata !1651, metadata ptr %10, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.assign(metadata i1 undef, metadata !520, metadata !DIExpression(), metadata !1652, metadata ptr %11, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata ptr @.str.12.68, metadata !516, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i32 %29, metadata !517, metadata !DIExpression()), !dbg !1710
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.66, ptr noundef nonnull @.str.12.68, i32 noundef 5) #37, !dbg !1712
  call void @llvm.dbg.value(metadata ptr %62, metadata !518, metadata !DIExpression()), !dbg !1710
  %63 = icmp eq ptr %62, @.str.12.68, !dbg !1713
  br i1 %63, label %64, label %73, !dbg !1714

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !1715
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !1716
  call void @llvm.dbg.value(metadata ptr %11, metadata !1689, metadata !DIExpression()), !dbg !1717
  call void @llvm.dbg.value(metadata ptr %11, metadata !1697, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i64 8, metadata !1701, metadata !DIExpression()), !dbg !1719
  store i64 0, ptr %11, align 8, !dbg !1721
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !1722
  %66 = icmp eq i64 %65, 3, !dbg !1723
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !1724
  %70 = icmp eq i32 %29, 9, !dbg !1724
  %71 = select i1 %70, ptr @.str.10.67, ptr @.str.12.68, !dbg !1724
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !1724
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !1725
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !1725
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1597, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1596, metadata !DIExpression()), !dbg !1659
  %76 = and i8 %37, 1, !dbg !1726
  %77 = icmp eq i8 %76, 0, !dbg !1726
  br i1 %77, label %78, label %93, !dbg !1727

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !1609, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1599, metadata !DIExpression()), !dbg !1659
  %79 = load i8, ptr %74, align 1, !dbg !1729, !tbaa !824
  %80 = icmp eq i8 %79, 0, !dbg !1731
  br i1 %80, label %93, label %81, !dbg !1731

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1609, metadata !DIExpression()), !dbg !1728
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !1599, metadata !DIExpression()), !dbg !1659
  %85 = icmp ult i64 %84, %40, !dbg !1732
  br i1 %85, label %86, label %88, !dbg !1735

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !1732
  store i8 %82, ptr %87, align 1, !dbg !1732, !tbaa !824
  br label %88, !dbg !1732

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1599, metadata !DIExpression()), !dbg !1659
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !1736
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !1609, metadata !DIExpression()), !dbg !1728
  %91 = load i8, ptr %90, align 1, !dbg !1729, !tbaa !824
  %92 = icmp eq i8 %91, 0, !dbg !1731
  br i1 %92, label %93, label %81, !dbg !1731, !llvm.loop !1737

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !1739
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !1601, metadata !DIExpression()), !dbg !1659
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !1740
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !1602, metadata !DIExpression()), !dbg !1659
  br label %114, !dbg !1741

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1603, metadata !DIExpression()), !dbg !1659
  br label %98, !dbg !1742

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !1603, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1604, metadata !DIExpression()), !dbg !1659
  br label %98, !dbg !1743

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !1667
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !1603, metadata !DIExpression()), !dbg !1659
  %101 = and i8 %100, 1, !dbg !1744
  %102 = icmp eq i8 %101, 0, !dbg !1744
  %103 = select i1 %102, i8 1, i8 %99, !dbg !1746
  br label %104, !dbg !1746

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !1659
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !1662
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !1603, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1593, metadata !DIExpression()), !dbg !1659
  %107 = and i8 %106, 1, !dbg !1747
  %108 = icmp eq i8 %107, 0, !dbg !1747
  br i1 %108, label %109, label %114, !dbg !1749

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !1750
  br i1 %110, label %114, label %111, !dbg !1753

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !1750, !tbaa !824
  br label %114, !dbg !1750

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1604, metadata !DIExpression()), !dbg !1659
  br label %114, !dbg !1754

113:                                              ; preds = %28
  call void @abort() #39, !dbg !1755
  unreachable, !dbg !1755

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !1739
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.67, %45 ], [ @.str.10.67, %47 ], [ @.str.10.67, %42 ], [ %34, %28 ], [ @.str.12.68, %109 ], [ @.str.12.68, %111 ], [ @.str.12.68, %104 ], [ @.str.10.67, %41 ], !dbg !1659
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !1659
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !1659
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1604, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !1603, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !1602, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1601, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !1597, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !1596, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !1593, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1756
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
  br label %138, !dbg !1757

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !1739
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !1664
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !1668
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !1669
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !1758
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !1759
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1606, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1592, metadata !DIExpression()), !dbg !1659
  %147 = icmp eq i64 %139, -1, !dbg !1760
  br i1 %147, label %148, label %152, !dbg !1761

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1762
  %150 = load i8, ptr %149, align 1, !dbg !1762, !tbaa !824
  %151 = icmp eq i8 %150, 0, !dbg !1763
  br i1 %151, label %612, label %154, !dbg !1764

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !1765
  br i1 %153, label %612, label %154, !dbg !1764

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1766
  br i1 %128, label %155, label %170, !dbg !1767

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !1769
  %157 = select i1 %147, i1 %129, i1 false, !dbg !1770
  br i1 %157, label %158, label %160, !dbg !1770

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1771
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !1592, metadata !DIExpression()), !dbg !1659
  br label %160, !dbg !1772

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !1772
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !1592, metadata !DIExpression()), !dbg !1659
  %162 = icmp ugt i64 %156, %161, !dbg !1773
  br i1 %162, label %170, label %163, !dbg !1774

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1775
  call void @llvm.dbg.value(metadata ptr %164, metadata !1776, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata ptr %119, metadata !1779, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i64 %120, metadata !1780, metadata !DIExpression()), !dbg !1781
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !1783
  %166 = icmp ne i32 %165, 0, !dbg !1784
  %167 = select i1 %166, i1 true, i1 %131, !dbg !1785
  %168 = xor i1 %166, true, !dbg !1785
  %169 = zext i1 %168 to i8, !dbg !1785
  br i1 %167, label %170, label %666, !dbg !1785

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !1766
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !1592, metadata !DIExpression()), !dbg !1659
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !1786
  %175 = load i8, ptr %174, align 1, !dbg !1786, !tbaa !824
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1621, metadata !DIExpression()), !dbg !1766
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
  ], !dbg !1787

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !1788

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !1789

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1766
  %179 = and i8 %144, 1, !dbg !1793
  %180 = icmp eq i8 %179, 0, !dbg !1793
  %181 = select i1 %132, i1 %180, i1 false, !dbg !1793
  br i1 %181, label %182, label %198, !dbg !1793

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !1795
  br i1 %183, label %184, label %186, !dbg !1799

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1795
  store i8 39, ptr %185, align 1, !dbg !1795, !tbaa !824
  br label %186, !dbg !1795

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !1799
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !1599, metadata !DIExpression()), !dbg !1659
  %188 = icmp ult i64 %187, %146, !dbg !1800
  br i1 %188, label %189, label %191, !dbg !1803

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !1800
  store i8 36, ptr %190, align 1, !dbg !1800, !tbaa !824
  br label %191, !dbg !1800

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !1803
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !1599, metadata !DIExpression()), !dbg !1659
  %193 = icmp ult i64 %192, %146, !dbg !1804
  br i1 %193, label %194, label %196, !dbg !1807

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !1804
  store i8 39, ptr %195, align 1, !dbg !1804, !tbaa !824
  br label %196, !dbg !1804

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1659
  br label %198, !dbg !1808

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !1659
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !1599, metadata !DIExpression()), !dbg !1659
  %201 = icmp ult i64 %199, %146, !dbg !1809
  br i1 %201, label %202, label %204, !dbg !1812

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !1809
  store i8 92, ptr %203, align 1, !dbg !1809, !tbaa !824
  br label %204, !dbg !1809

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !1812
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !1599, metadata !DIExpression()), !dbg !1659
  br i1 %125, label %206, label %476, !dbg !1813

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !1815
  %208 = icmp ult i64 %207, %171, !dbg !1816
  br i1 %208, label %209, label %465, !dbg !1817

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !1818
  %211 = load i8, ptr %210, align 1, !dbg !1818, !tbaa !824
  %212 = add i8 %211, -48, !dbg !1819
  %213 = icmp ult i8 %212, 10, !dbg !1819
  br i1 %213, label %214, label %465, !dbg !1819

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !1820
  br i1 %215, label %216, label %218, !dbg !1824

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !1820
  store i8 48, ptr %217, align 1, !dbg !1820, !tbaa !824
  br label %218, !dbg !1820

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !1824
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !1599, metadata !DIExpression()), !dbg !1659
  %220 = icmp ult i64 %219, %146, !dbg !1825
  br i1 %220, label %221, label %223, !dbg !1828

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !1825
  store i8 48, ptr %222, align 1, !dbg !1825, !tbaa !824
  br label %223, !dbg !1825

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !1828
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !1599, metadata !DIExpression()), !dbg !1659
  br label %465, !dbg !1829

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !1830

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !1831

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !1832

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !1834

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !1836
  %231 = icmp ult i64 %230, %171, !dbg !1837
  br i1 %231, label %232, label %465, !dbg !1838

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !1839
  %234 = load i8, ptr %233, align 1, !dbg !1839, !tbaa !824
  %235 = icmp eq i8 %234, 63, !dbg !1840
  br i1 %235, label %236, label %465, !dbg !1841

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !1842
  %238 = load i8, ptr %237, align 1, !dbg !1842, !tbaa !824
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
  ], !dbg !1843

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !1844

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !1614, metadata !DIExpression()), !dbg !1756
  %241 = icmp ult i64 %140, %146, !dbg !1846
  br i1 %241, label %242, label %244, !dbg !1849

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1846
  store i8 63, ptr %243, align 1, !dbg !1846, !tbaa !824
  br label %244, !dbg !1846

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !1849
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !1599, metadata !DIExpression()), !dbg !1659
  %246 = icmp ult i64 %245, %146, !dbg !1850
  br i1 %246, label %247, label %249, !dbg !1853

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !1850
  store i8 34, ptr %248, align 1, !dbg !1850, !tbaa !824
  br label %249, !dbg !1850

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !1599, metadata !DIExpression()), !dbg !1659
  %251 = icmp ult i64 %250, %146, !dbg !1854
  br i1 %251, label %252, label %254, !dbg !1857

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !1854
  store i8 34, ptr %253, align 1, !dbg !1854, !tbaa !824
  br label %254, !dbg !1854

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !1857
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !1599, metadata !DIExpression()), !dbg !1659
  %256 = icmp ult i64 %255, %146, !dbg !1858
  br i1 %256, label %257, label %259, !dbg !1861

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !1858
  store i8 63, ptr %258, align 1, !dbg !1858, !tbaa !824
  br label %259, !dbg !1858

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !1599, metadata !DIExpression()), !dbg !1659
  br label %465, !dbg !1862

261:                                              ; preds = %170
  br label %272, !dbg !1863

262:                                              ; preds = %170
  br label %272, !dbg !1864

263:                                              ; preds = %170
  br label %270, !dbg !1865

264:                                              ; preds = %170
  br label %270, !dbg !1866

265:                                              ; preds = %170
  br label %272, !dbg !1867

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !1868

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !1869

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !1872

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !1874

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !1875
  call void @llvm.dbg.label(metadata !1622), !dbg !1876
  br i1 %133, label %272, label %655, !dbg !1877

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !1875
  call void @llvm.dbg.label(metadata !1625), !dbg !1879
  br i1 %124, label %520, label %476, !dbg !1880

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !1881

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !1882, !tbaa !824
  %277 = icmp eq i8 %276, 0, !dbg !1884
  br i1 %277, label %278, label %465, !dbg !1885

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !1886
  br i1 %279, label %280, label %465, !dbg !1888

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1766
  br label %281, !dbg !1889

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !1620, metadata !DIExpression()), !dbg !1766
  br i1 %133, label %465, label %655, !dbg !1890

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1620, metadata !DIExpression()), !dbg !1766
  br i1 %132, label %284, label %465, !dbg !1892

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !1893

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !1896
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !1898
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !1898
  %290 = select i1 %288, i64 %146, i64 0, !dbg !1898
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !1600, metadata !DIExpression()), !dbg !1659
  %291 = icmp ult i64 %140, %290, !dbg !1899
  br i1 %291, label %292, label %294, !dbg !1902

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !1899
  store i8 39, ptr %293, align 1, !dbg !1899, !tbaa !824
  br label %294, !dbg !1899

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !1902
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !1599, metadata !DIExpression()), !dbg !1659
  %296 = icmp ult i64 %295, %290, !dbg !1903
  br i1 %296, label %297, label %299, !dbg !1906

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !1903
  store i8 92, ptr %298, align 1, !dbg !1903, !tbaa !824
  br label %299, !dbg !1903

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !1906
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !1599, metadata !DIExpression()), !dbg !1659
  %301 = icmp ult i64 %300, %290, !dbg !1907
  br i1 %301, label %302, label %304, !dbg !1910

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !1907
  store i8 39, ptr %303, align 1, !dbg !1907, !tbaa !824
  br label %304, !dbg !1907

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !1910
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1659
  br label %465, !dbg !1911

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !1912

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1626, metadata !DIExpression()), !dbg !1913
  %308 = tail call ptr @__ctype_b_loc() #40, !dbg !1914
  %309 = load ptr, ptr %308, align 8, !dbg !1914, !tbaa !754
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !1914
  %312 = load i16, ptr %311, align 2, !dbg !1914, !tbaa !856
  %313 = and i16 %312, 16384, !dbg !1916
  %314 = icmp ne i16 %313, 0, !dbg !1916
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !1628, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1913
  br label %355, !dbg !1917

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !1918
  call void @llvm.dbg.value(metadata ptr %14, metadata !1689, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata ptr %14, metadata !1697, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 8, metadata !1701, metadata !DIExpression()), !dbg !1921
  store i64 0, ptr %14, align 8, !dbg !1923
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1628, metadata !DIExpression()), !dbg !1913
  %316 = icmp eq i64 %171, -1, !dbg !1924
  br i1 %316, label %317, label %319, !dbg !1926

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !1927
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !1592, metadata !DIExpression()), !dbg !1659
  br label %319, !dbg !1928

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !1592, metadata !DIExpression()), !dbg !1659
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !1929
  %321 = sub i64 %320, %145, !dbg !1930
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #37, !dbg !1931
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1636, metadata !DIExpression()), !dbg !1658
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !1932

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1913
  %324 = icmp ult i64 %145, %320, !dbg !1933
  br i1 %324, label %326, label %351, !dbg !1935

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1913
  br label %351, !dbg !1936

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !1626, metadata !DIExpression()), !dbg !1913
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !1938
  %330 = load i8, ptr %329, align 1, !dbg !1938, !tbaa !824
  %331 = icmp eq i8 %330, 0, !dbg !1935
  br i1 %331, label %351, label %332, !dbg !1939

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !1940
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !1626, metadata !DIExpression()), !dbg !1913
  %334 = add i64 %333, %145, !dbg !1941
  %335 = icmp eq i64 %333, %321, !dbg !1933
  br i1 %335, label %351, label %326, !dbg !1935, !llvm.loop !1942

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1637, metadata !DIExpression()), !dbg !1943
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !1944
  %339 = and i1 %338, %132, !dbg !1944
  br i1 %339, label %340, label %347, !dbg !1944

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !1637, metadata !DIExpression()), !dbg !1943
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !1945
  %343 = load i8, ptr %342, align 1, !dbg !1945, !tbaa !824
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !1947

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !1948
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !1637, metadata !DIExpression()), !dbg !1943
  %346 = icmp eq i64 %345, %322, !dbg !1949
  br i1 %346, label %347, label %340, !dbg !1950, !llvm.loop !1951

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !1953, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %348, metadata !1955, metadata !DIExpression()), !dbg !1963
  %349 = call i32 @iswprint(i32 noundef %348) #37, !dbg !1965
  %350 = icmp ne i32 %349, 0, !dbg !1966
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !1626, metadata !DIExpression()), !dbg !1913
  br label %351, !dbg !1967

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !1626, metadata !DIExpression()), !dbg !1913
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1969
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1913
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !1968
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !1969
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !1766
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !1970
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !1970
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !1626, metadata !DIExpression()), !dbg !1913
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1592, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !1620, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1766
  %359 = icmp ult i64 %357, 2, !dbg !1971
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !1972
  br i1 %361, label %461, label %362, !dbg !1972

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !1973
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !1645, metadata !DIExpression()), !dbg !1974
  br label %364, !dbg !1975

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !1659
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !1758
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !1756
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !1766
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !1976
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !1599, metadata !DIExpression()), !dbg !1659
  br i1 %360, label %417, label %371, !dbg !1977

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !1982

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1766
  %373 = and i8 %366, 1, !dbg !1985
  %374 = icmp eq i8 %373, 0, !dbg !1985
  %375 = select i1 %132, i1 %374, i1 false, !dbg !1985
  br i1 %375, label %376, label %392, !dbg !1985

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !1987
  br i1 %377, label %378, label %380, !dbg !1991

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !1987
  store i8 39, ptr %379, align 1, !dbg !1987, !tbaa !824
  br label %380, !dbg !1987

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !1991
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !1599, metadata !DIExpression()), !dbg !1659
  %382 = icmp ult i64 %381, %146, !dbg !1992
  br i1 %382, label %383, label %385, !dbg !1995

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !1992
  store i8 36, ptr %384, align 1, !dbg !1992, !tbaa !824
  br label %385, !dbg !1992

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !1995
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !1599, metadata !DIExpression()), !dbg !1659
  %387 = icmp ult i64 %386, %146, !dbg !1996
  br i1 %387, label %388, label %390, !dbg !1999

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !1996
  store i8 39, ptr %389, align 1, !dbg !1996, !tbaa !824
  br label %390, !dbg !1996

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !1999
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1659
  br label %392, !dbg !2000

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !1659
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !1599, metadata !DIExpression()), !dbg !1659
  %395 = icmp ult i64 %393, %146, !dbg !2001
  br i1 %395, label %396, label %398, !dbg !2004

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !2001
  store i8 92, ptr %397, align 1, !dbg !2001, !tbaa !824
  br label %398, !dbg !2001

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !1599, metadata !DIExpression()), !dbg !1659
  %400 = icmp ult i64 %399, %146, !dbg !2005
  br i1 %400, label %401, label %405, !dbg !2008

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !2005
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !2005
  store i8 %403, ptr %404, align 1, !dbg !2005, !tbaa !824
  br label %405, !dbg !2005

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !2008
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !1599, metadata !DIExpression()), !dbg !1659
  %407 = icmp ult i64 %406, %146, !dbg !2009
  br i1 %407, label %408, label %413, !dbg !2012

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !2009
  %411 = or disjoint i8 %410, 48, !dbg !2009
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !2009
  store i8 %411, ptr %412, align 1, !dbg !2009, !tbaa !824
  br label %413, !dbg !2009

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !2012
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !1599, metadata !DIExpression()), !dbg !1659
  %415 = and i8 %370, 7, !dbg !2013
  %416 = or disjoint i8 %415, 48, !dbg !2014
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !1621, metadata !DIExpression()), !dbg !1766
  br label %426, !dbg !2015

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !2016
  %419 = icmp eq i8 %418, 0, !dbg !2016
  br i1 %419, label %426, label %420, !dbg !2018

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !2019
  br i1 %421, label %422, label %424, !dbg !2023

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !2019
  store i8 92, ptr %423, align 1, !dbg !2019, !tbaa !824
  br label %424, !dbg !2019

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !2023
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1616, metadata !DIExpression()), !dbg !1766
  br label %426, !dbg !2024

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !1659
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !1758
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !1766
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !1766
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1599, metadata !DIExpression()), !dbg !1659
  %432 = add i64 %367, 1, !dbg !2025
  %433 = icmp ugt i64 %363, %432, !dbg !2027
  br i1 %433, label %434, label %463, !dbg !2028

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !2029
  %436 = icmp ne i8 %435, 0, !dbg !2029
  %437 = and i8 %430, 1, !dbg !2029
  %438 = icmp eq i8 %437, 0, !dbg !2029
  %439 = select i1 %436, i1 %438, i1 false, !dbg !2029
  br i1 %439, label %440, label %451, !dbg !2029

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !2032
  br i1 %441, label %442, label %444, !dbg !2036

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !2032
  store i8 39, ptr %443, align 1, !dbg !2032, !tbaa !824
  br label %444, !dbg !2032

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !2036
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !1599, metadata !DIExpression()), !dbg !1659
  %446 = icmp ult i64 %445, %146, !dbg !2037
  br i1 %446, label %447, label %449, !dbg !2040

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !2037
  store i8 39, ptr %448, align 1, !dbg !2037, !tbaa !824
  br label %449, !dbg !2037

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !2040
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1659
  br label %451, !dbg !2041

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !2042
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !1599, metadata !DIExpression()), !dbg !1659
  %454 = icmp ult i64 %452, %146, !dbg !2043
  br i1 %454, label %455, label %457, !dbg !2046

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !2043
  store i8 %431, ptr %456, align 1, !dbg !2043, !tbaa !824
  br label %457, !dbg !2043

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !2046
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !1614, metadata !DIExpression()), !dbg !1756
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !2047
  %460 = load i8, ptr %459, align 1, !dbg !2047, !tbaa !824
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !1621, metadata !DIExpression()), !dbg !1766
  br label %364, !dbg !2048, !llvm.loop !2049

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !1620, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1592, metadata !DIExpression()), !dbg !1659
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !1620, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !1592, metadata !DIExpression()), !dbg !1659
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !2052
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !1659
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !1664
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !1659
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !1659
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !1756
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !1766
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !1766
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !1766
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !1620, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !1616, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !1592, metadata !DIExpression()), !dbg !1659
  br i1 %126, label %487, label %476, !dbg !2053

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
  br i1 %137, label %488, label %509, !dbg !2055

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !2056

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
  %499 = lshr i8 %490, 5, !dbg !2057
  %500 = zext nneg i8 %499 to i64, !dbg !2057
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !2058
  %502 = load i32, ptr %501, align 4, !dbg !2058, !tbaa !815
  %503 = and i8 %490, 31, !dbg !2059
  %504 = zext nneg i8 %503 to i32, !dbg !2059
  %505 = shl nuw i32 1, %504, !dbg !2060
  %506 = and i32 %502, %505, !dbg !2060
  %507 = icmp eq i32 %506, 0, !dbg !2060
  %508 = and i1 %172, %507, !dbg !2061
  br i1 %508, label %558, label %520, !dbg !2061

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
  br i1 %172, label %558, label %520, !dbg !2062

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !2052
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !1659
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !1664
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !1668
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !1758
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !2063
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !1766
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !1766
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1620, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1592, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.label(metadata !1648), !dbg !2064
  br i1 %131, label %530, label %659, !dbg !2065

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1766
  %531 = and i8 %525, 1, !dbg !2067
  %532 = icmp eq i8 %531, 0, !dbg !2067
  %533 = select i1 %132, i1 %532, i1 false, !dbg !2067
  br i1 %533, label %534, label %550, !dbg !2067

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !2069
  br i1 %535, label %536, label %538, !dbg !2073

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2069
  store i8 39, ptr %537, align 1, !dbg !2069, !tbaa !824
  br label %538, !dbg !2069

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !2073
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !1599, metadata !DIExpression()), !dbg !1659
  %540 = icmp ult i64 %539, %529, !dbg !2074
  br i1 %540, label %541, label %543, !dbg !2077

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !2074
  store i8 36, ptr %542, align 1, !dbg !2074, !tbaa !824
  br label %543, !dbg !2074

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !2077
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !1599, metadata !DIExpression()), !dbg !1659
  %545 = icmp ult i64 %544, %529, !dbg !2078
  br i1 %545, label %546, label %548, !dbg !2081

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !2078
  store i8 39, ptr %547, align 1, !dbg !2078, !tbaa !824
  br label %548, !dbg !2078

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !2081
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1608, metadata !DIExpression()), !dbg !1659
  br label %550, !dbg !2082

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !1766
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !1599, metadata !DIExpression()), !dbg !1659
  %553 = icmp ult i64 %551, %529, !dbg !2083
  br i1 %553, label %554, label %556, !dbg !2086

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !2083
  store i8 92, ptr %555, align 1, !dbg !2083, !tbaa !824
  br label %556, !dbg !2083

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !2086
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !1620, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !1592, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.label(metadata !1649), !dbg !2087
  br label %585, !dbg !2088

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !2052
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !1659
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !1664
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !1668
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !1758
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !2063
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !1766
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !1766
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !2091
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !1621, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !1620, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !1619, metadata !DIExpression()), !dbg !1766
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !1592, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.label(metadata !1649), !dbg !2087
  %569 = and i8 %563, 1, !dbg !2088
  %570 = icmp ne i8 %569, 0, !dbg !2088
  %571 = and i8 %565, 1, !dbg !2088
  %572 = icmp eq i8 %571, 0, !dbg !2088
  %573 = select i1 %570, i1 %572, i1 false, !dbg !2088
  br i1 %573, label %574, label %585, !dbg !2088

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !2092
  br i1 %575, label %576, label %578, !dbg !2096

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !2092
  store i8 39, ptr %577, align 1, !dbg !2092, !tbaa !824
  br label %578, !dbg !2092

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !2096
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !1599, metadata !DIExpression()), !dbg !1659
  %580 = icmp ult i64 %579, %568, !dbg !2097
  br i1 %580, label %581, label %583, !dbg !2100

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !2097
  store i8 39, ptr %582, align 1, !dbg !2097, !tbaa !824
  br label %583, !dbg !2097

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !2100
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1659
  br label %585, !dbg !2101

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !1766
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !1599, metadata !DIExpression()), !dbg !1659
  %595 = icmp ult i64 %593, %586, !dbg !2102
  br i1 %595, label %596, label %598, !dbg !2105

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !2102
  store i8 %587, ptr %597, align 1, !dbg !2102, !tbaa !824
  br label %598, !dbg !2102

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !2105
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !1599, metadata !DIExpression()), !dbg !1659
  %600 = icmp eq i8 %588, 0, !dbg !2106
  %601 = select i1 %600, i8 0, i8 %143, !dbg !2108
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !1606, metadata !DIExpression()), !dbg !1659
  br label %602, !dbg !2109

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !2052
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !1659
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !1664
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !1668
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !1669
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !1758
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !2063
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !1614, metadata !DIExpression()), !dbg !1756
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !1608, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !1606, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !1592, metadata !DIExpression()), !dbg !1659
  %611 = add i64 %609, 1, !dbg !2110
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !1614, metadata !DIExpression()), !dbg !1756
  br label %138, !dbg !2111, !llvm.loop !2112

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !1590, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !1606, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !1605, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !1600, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1599, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !1592, metadata !DIExpression()), !dbg !1659
  %613 = icmp eq i64 %140, 0, !dbg !2114
  %614 = and i1 %132, %613, !dbg !2116
  %615 = xor i1 %614, true, !dbg !2116
  %616 = select i1 %615, i1 true, i1 %131, !dbg !2116
  br i1 %616, label %617, label %655, !dbg !2116

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !2117
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !2117
  br i1 %621, label %622, label %631, !dbg !2117

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !2119
  %624 = icmp eq i8 %623, 0, !dbg !2119
  br i1 %624, label %627, label %625, !dbg !2122

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !2123
  br label %672, !dbg !2124

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !2125
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !2127
  br i1 %630, label %28, label %631, !dbg !2127

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !2128
  %634 = select i1 %633, i1 %632, i1 false, !dbg !2130
  br i1 %634, label %635, label %650, !dbg !2130

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !1601, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !1599, metadata !DIExpression()), !dbg !1659
  %636 = load i8, ptr %119, align 1, !dbg !2131, !tbaa !824
  %637 = icmp eq i8 %636, 0, !dbg !2134
  br i1 %637, label %650, label %638, !dbg !2134

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !1601, metadata !DIExpression()), !dbg !1659
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !1599, metadata !DIExpression()), !dbg !1659
  %642 = icmp ult i64 %641, %146, !dbg !2135
  br i1 %642, label %643, label %645, !dbg !2138

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !2135
  store i8 %639, ptr %644, align 1, !dbg !2135, !tbaa !824
  br label %645, !dbg !2135

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !2138
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !1599, metadata !DIExpression()), !dbg !1659
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !2139
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !1601, metadata !DIExpression()), !dbg !1659
  %648 = load i8, ptr %647, align 1, !dbg !2131, !tbaa !824
  %649 = icmp eq i8 %648, 0, !dbg !2134
  br i1 %649, label %650, label %638, !dbg !2134, !llvm.loop !2140

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !1739
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !1599, metadata !DIExpression()), !dbg !1659
  %652 = icmp ult i64 %651, %146, !dbg !2142
  br i1 %652, label %653, label %672, !dbg !2144

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !2145
  store i8 0, ptr %654, align 1, !dbg !2146, !tbaa !824
  br label %672, !dbg !2145

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !1650), !dbg !2147
  %657 = icmp eq i8 %123, 0, !dbg !2148
  %658 = select i1 %657, i32 2, i32 4, !dbg !2148
  br label %666, !dbg !2148

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !1650), !dbg !2147
  %662 = icmp eq i32 %115, 2, !dbg !2150
  %663 = icmp eq i8 %123, 0, !dbg !2148
  %664 = select i1 %663, i32 2, i32 4, !dbg !2148
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !2148
  br label %666, !dbg !2148

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !1593, metadata !DIExpression()), !dbg !1659
  %670 = and i32 %5, -3, !dbg !2151
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !2152
  br label %672, !dbg !2153

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !2154
}

; Function Attrs: nounwind
declare !dbg !2155 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2158 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !2161 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2163 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2167, metadata !DIExpression()), !dbg !2170
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2168, metadata !DIExpression()), !dbg !2170
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata ptr %0, metadata !2171, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %1, metadata !2176, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr null, metadata !2177, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr %2, metadata !2178, metadata !DIExpression()), !dbg !2184
  %4 = icmp eq ptr %2, null, !dbg !2186
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2186
  call void @llvm.dbg.value(metadata ptr %5, metadata !2179, metadata !DIExpression()), !dbg !2184
  %6 = tail call ptr @__errno_location() #40, !dbg !2187
  %7 = load i32, ptr %6, align 4, !dbg !2187, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %7, metadata !2180, metadata !DIExpression()), !dbg !2184
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2188
  %9 = load i32, ptr %8, align 4, !dbg !2188, !tbaa !1533
  %10 = or i32 %9, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %10, metadata !2181, metadata !DIExpression()), !dbg !2184
  %11 = load i32, ptr %5, align 8, !dbg !2190, !tbaa !1483
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2191
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2192
  %14 = load ptr, ptr %13, align 8, !dbg !2192, !tbaa !1554
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2193
  %16 = load ptr, ptr %15, align 8, !dbg !2193, !tbaa !1557
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2194
  %18 = add i64 %17, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %18, metadata !2182, metadata !DIExpression()), !dbg !2184
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2196
  call void @llvm.dbg.value(metadata ptr %19, metadata !2183, metadata !DIExpression()), !dbg !2184
  %20 = load i32, ptr %5, align 8, !dbg !2197, !tbaa !1483
  %21 = load ptr, ptr %13, align 8, !dbg !2198, !tbaa !1554
  %22 = load ptr, ptr %15, align 8, !dbg !2199, !tbaa !1557
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2200
  store i32 %7, ptr %6, align 4, !dbg !2201, !tbaa !815
  ret ptr %19, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2172 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2171, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2176, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2177, metadata !DIExpression()), !dbg !2203
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2178, metadata !DIExpression()), !dbg !2203
  %5 = icmp eq ptr %3, null, !dbg !2204
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2204
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2179, metadata !DIExpression()), !dbg !2203
  %7 = tail call ptr @__errno_location() #40, !dbg !2205
  %8 = load i32, ptr %7, align 4, !dbg !2205, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2180, metadata !DIExpression()), !dbg !2203
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2206
  %10 = load i32, ptr %9, align 4, !dbg !2206, !tbaa !1533
  %11 = icmp eq ptr %2, null, !dbg !2207
  %12 = zext i1 %11 to i32, !dbg !2207
  %13 = or i32 %10, %12, !dbg !2208
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2181, metadata !DIExpression()), !dbg !2203
  %14 = load i32, ptr %6, align 8, !dbg !2209, !tbaa !1483
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2210
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2211
  %17 = load ptr, ptr %16, align 8, !dbg !2211, !tbaa !1554
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2212
  %19 = load ptr, ptr %18, align 8, !dbg !2212, !tbaa !1557
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2213
  %21 = add i64 %20, 1, !dbg !2214
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2182, metadata !DIExpression()), !dbg !2203
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2215
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2183, metadata !DIExpression()), !dbg !2203
  %23 = load i32, ptr %6, align 8, !dbg !2216, !tbaa !1483
  %24 = load ptr, ptr %16, align 8, !dbg !2217, !tbaa !1554
  %25 = load ptr, ptr %18, align 8, !dbg !2218, !tbaa !1557
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2219
  store i32 %8, ptr %7, align 4, !dbg !2220, !tbaa !815
  br i1 %11, label %28, label %27, !dbg !2221

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2222, !tbaa !2224
  br label %28, !dbg !2225

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2227 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2232, !tbaa !754
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2229, metadata !DIExpression()), !dbg !2233
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2234
  %2 = load i32, ptr @nslots, align 4, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2234
  %3 = icmp sgt i32 %2, 1, !dbg !2235
  br i1 %3, label %4, label %6, !dbg !2237

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2235
  br label %10, !dbg !2237

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2238
  %8 = load ptr, ptr %7, align 8, !dbg !2238, !tbaa !2240
  %9 = icmp eq ptr %8, @slot0, !dbg !2242
  br i1 %9, label %17, label %16, !dbg !2243

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2230, metadata !DIExpression()), !dbg !2234
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2244
  %13 = load ptr, ptr %12, align 8, !dbg !2244, !tbaa !2240
  tail call void @free(ptr noundef %13) #37, !dbg !2245
  %14 = add nuw nsw i64 %11, 1, !dbg !2246
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2230, metadata !DIExpression()), !dbg !2234
  %15 = icmp eq i64 %14, %5, !dbg !2235
  br i1 %15, label %6, label %10, !dbg !2237, !llvm.loop !2247

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !2249
  store i64 256, ptr @slotvec0, align 8, !dbg !2251, !tbaa !2252
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2253, !tbaa !2240
  br label %17, !dbg !2254

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2255
  br i1 %18, label %20, label %19, !dbg !2257

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !2258
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2260, !tbaa !754
  br label %20, !dbg !2261

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2262, !tbaa !815
  ret void, !dbg !2263
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !2264 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2267 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()), !dbg !2271
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2270, metadata !DIExpression()), !dbg !2271
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2272
  ret ptr %3, !dbg !2273
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2274 {
  %5 = alloca i64, align 8, !DIAssignID !2294
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2288, metadata !DIExpression(), metadata !2294, metadata ptr %5, metadata !DIExpression()), !dbg !2295
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2278, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2279, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2280, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2281, metadata !DIExpression()), !dbg !2296
  %6 = tail call ptr @__errno_location() #40, !dbg !2297
  %7 = load i32, ptr %6, align 4, !dbg !2297, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2282, metadata !DIExpression()), !dbg !2296
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2298, !tbaa !754
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2283, metadata !DIExpression()), !dbg !2296
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2284, metadata !DIExpression()), !dbg !2296
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2299
  br i1 %9, label %10, label %11, !dbg !2299

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !2301
  unreachable, !dbg !2301

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2302, !tbaa !815
  %13 = icmp sgt i32 %12, %0, !dbg !2303
  br i1 %13, label %32, label %14, !dbg !2304

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2305
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2285, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2295
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !2306
  %16 = sext i32 %12 to i64, !dbg !2307
  store i64 %16, ptr %5, align 8, !dbg !2308, !tbaa !2224, !DIAssignID !2309
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2288, metadata !DIExpression(), metadata !2309, metadata ptr %5, metadata !DIExpression()), !dbg !2295
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2310
  %18 = add nuw nsw i32 %0, 1, !dbg !2311
  %19 = sub i32 %18, %12, !dbg !2312
  %20 = sext i32 %19 to i64, !dbg !2313
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !2314
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2283, metadata !DIExpression()), !dbg !2296
  store ptr %21, ptr @slotvec, align 8, !dbg !2315, !tbaa !754
  br i1 %15, label %22, label %23, !dbg !2316

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2317, !tbaa.struct !2319
  br label %23, !dbg !2320

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2321, !tbaa !815
  %25 = sext i32 %24 to i64, !dbg !2322
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2322
  %27 = load i64, ptr %5, align 8, !dbg !2323, !tbaa !2224
  %28 = sub nsw i64 %27, %25, !dbg !2324
  %29 = shl i64 %28, 4, !dbg !2325
  call void @llvm.dbg.value(metadata ptr %26, metadata !1697, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !1700, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata i64 %29, metadata !1701, metadata !DIExpression()), !dbg !2326
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !2328
  %30 = load i64, ptr %5, align 8, !dbg !2329, !tbaa !2224
  %31 = trunc i64 %30 to i32, !dbg !2329
  store i32 %31, ptr @nslots, align 4, !dbg !2330, !tbaa !815
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !2331
  br label %32, !dbg !2332

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2296
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2283, metadata !DIExpression()), !dbg !2296
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2333
  %36 = load i64, ptr %35, align 8, !dbg !2334, !tbaa !2252
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2289, metadata !DIExpression()), !dbg !2335
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2336
  %38 = load ptr, ptr %37, align 8, !dbg !2336, !tbaa !2240
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2291, metadata !DIExpression()), !dbg !2335
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2337
  %40 = load i32, ptr %39, align 4, !dbg !2337, !tbaa !1533
  %41 = or i32 %40, 1, !dbg !2338
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2292, metadata !DIExpression()), !dbg !2335
  %42 = load i32, ptr %3, align 8, !dbg !2339, !tbaa !1483
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2340
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2341
  %45 = load ptr, ptr %44, align 8, !dbg !2341, !tbaa !1554
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2342
  %47 = load ptr, ptr %46, align 8, !dbg !2342, !tbaa !1557
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2293, metadata !DIExpression()), !dbg !2335
  %49 = icmp ugt i64 %36, %48, !dbg !2344
  br i1 %49, label %60, label %50, !dbg !2346

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2347
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2289, metadata !DIExpression()), !dbg !2335
  store i64 %51, ptr %35, align 8, !dbg !2349, !tbaa !2252
  %52 = icmp eq ptr %38, @slot0, !dbg !2350
  br i1 %52, label %54, label %53, !dbg !2352

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !2353
  br label %54, !dbg !2353

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2354
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2291, metadata !DIExpression()), !dbg !2335
  store ptr %55, ptr %37, align 8, !dbg !2355, !tbaa !2240
  %56 = load i32, ptr %3, align 8, !dbg !2356, !tbaa !1483
  %57 = load ptr, ptr %44, align 8, !dbg !2357, !tbaa !1554
  %58 = load ptr, ptr %46, align 8, !dbg !2358, !tbaa !1557
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2359
  br label %60, !dbg !2360

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2335
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2291, metadata !DIExpression()), !dbg !2335
  store i32 %7, ptr %6, align 4, !dbg !2361, !tbaa !815
  ret ptr %61, !dbg !2362
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2363 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2368, metadata !DIExpression()), !dbg !2370
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2369, metadata !DIExpression()), !dbg !2370
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2371
  ret ptr %4, !dbg !2372
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2373 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i32 0, metadata !2269, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata ptr %0, metadata !2270, metadata !DIExpression()), !dbg !2377
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2379
  ret ptr %2, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2381 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2385, metadata !DIExpression()), !dbg !2387
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2386, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i32 0, metadata !2367, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata ptr %0, metadata !2368, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i64 %1, metadata !2369, metadata !DIExpression()), !dbg !2388
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2390
  ret ptr %3, !dbg !2391
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2392 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2400
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2399, metadata !DIExpression(), metadata !2400, metadata ptr %4, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2397, metadata !DIExpression()), !dbg !2401
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2398, metadata !DIExpression()), !dbg !2401
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2415, !alias.scope !2403, !DIAssignID !2416
  call void @llvm.dbg.assign(metadata i8 0, metadata !2399, metadata !DIExpression(), metadata !2416, metadata ptr %4, metadata !DIExpression()), !dbg !2401
  %5 = icmp eq i32 %1, 10, !dbg !2417
  br i1 %5, label %6, label %7, !dbg !2419

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2420, !noalias !2403
  unreachable, !dbg !2420

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2421, !tbaa !1483, !alias.scope !2403, !DIAssignID !2422
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2422, metadata ptr %4, metadata !DIExpression()), !dbg !2401
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2423
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2424
  ret ptr %8, !dbg !2425
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2426 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2435
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2434, metadata !DIExpression(), metadata !2435, metadata ptr %5, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2431, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2432, metadata !DIExpression()), !dbg !2436
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2437
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2412, metadata !DIExpression()), !dbg !2444
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2444, !alias.scope !2438, !DIAssignID !2445
  call void @llvm.dbg.assign(metadata i8 0, metadata !2434, metadata !DIExpression(), metadata !2445, metadata ptr %5, metadata !DIExpression()), !dbg !2436
  %6 = icmp eq i32 %1, 10, !dbg !2446
  br i1 %6, label %7, label %8, !dbg !2447

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2448, !noalias !2438
  unreachable, !dbg !2448

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2449, !tbaa !1483, !alias.scope !2438, !DIAssignID !2450
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2450, metadata ptr %5, metadata !DIExpression()), !dbg !2436
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2451
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2452
  ret ptr %9, !dbg !2453
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2454 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2460
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2458, metadata !DIExpression()), !dbg !2461
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2399, metadata !DIExpression(), metadata !2460, metadata ptr %3, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 0, metadata !2396, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 %0, metadata !2397, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata ptr %1, metadata !2398, metadata !DIExpression()), !dbg !2462
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2465), !dbg !2468
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2412, metadata !DIExpression()), !dbg !2471
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !2471, !alias.scope !2465, !DIAssignID !2472
  call void @llvm.dbg.assign(metadata i8 0, metadata !2399, metadata !DIExpression(), metadata !2472, metadata ptr %3, metadata !DIExpression()), !dbg !2462
  %4 = icmp eq i32 %0, 10, !dbg !2473
  br i1 %4, label %5, label %6, !dbg !2474

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !2475, !noalias !2465
  unreachable, !dbg !2475

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !2476, !tbaa !1483, !alias.scope !2465, !DIAssignID !2477
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2399, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2477, metadata ptr %3, metadata !DIExpression()), !dbg !2462
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !2478
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2479
  ret ptr %7, !dbg !2480
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2481 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2488
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2485, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2486, metadata !DIExpression()), !dbg !2489
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2487, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2434, metadata !DIExpression(), metadata !2488, metadata ptr %4, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %0, metadata !2431, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata ptr %1, metadata !2432, metadata !DIExpression()), !dbg !2490
  call void @llvm.dbg.value(metadata i64 %2, metadata !2433, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2493), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %0, metadata !2407, metadata !DIExpression()), !dbg !2497
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2412, metadata !DIExpression()), !dbg !2499
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2499, !alias.scope !2493, !DIAssignID !2500
  call void @llvm.dbg.assign(metadata i8 0, metadata !2434, metadata !DIExpression(), metadata !2500, metadata ptr %4, metadata !DIExpression()), !dbg !2490
  %5 = icmp eq i32 %0, 10, !dbg !2501
  br i1 %5, label %6, label %7, !dbg !2502

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2503, !noalias !2493
  unreachable, !dbg !2503

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !2504, !tbaa !1483, !alias.scope !2493, !DIAssignID !2505
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2434, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2505, metadata ptr %4, metadata !DIExpression()), !dbg !2490
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !2506
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2507
  ret ptr %8, !dbg !2508
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !2509 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2517
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2517, metadata ptr %4, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2513, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2515, metadata !DIExpression()), !dbg !2518
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2520, !tbaa.struct !2521, !DIAssignID !2522
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2522, metadata ptr %4, metadata !DIExpression()), !dbg !2518
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1501, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !2523
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1503, metadata !DIExpression()), !dbg !2523
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !2525
  %6 = lshr i8 %2, 5, !dbg !2526
  %7 = zext nneg i8 %6 to i64, !dbg !2526
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !2527
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !1504, metadata !DIExpression()), !dbg !2523
  %9 = and i8 %2, 31, !dbg !2528
  %10 = zext nneg i8 %9 to i32, !dbg !2528
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1506, metadata !DIExpression()), !dbg !2523
  %11 = load i32, ptr %8, align 4, !dbg !2529, !tbaa !815
  %12 = lshr i32 %11, %10, !dbg !2530
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1507, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2523
  %13 = and i32 %12, 1, !dbg !2531
  %14 = xor i32 %13, 1, !dbg !2531
  %15 = shl nuw i32 %14, %10, !dbg !2532
  %16 = xor i32 %15, %11, !dbg !2533
  store i32 %16, ptr %8, align 4, !dbg !2533, !tbaa !815
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !2534
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2535
  ret ptr %17, !dbg !2536
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !2537 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2543
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2544
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2542, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2543, metadata ptr %3, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %0, metadata !2513, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 -1, metadata !2514, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8 %1, metadata !2515, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2548, !tbaa.struct !2521, !DIAssignID !2549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2549, metadata ptr %3, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata ptr %3, metadata !1500, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 %1, metadata !1501, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !2550
  call void @llvm.dbg.value(metadata i8 %1, metadata !1503, metadata !DIExpression()), !dbg !2550
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2552
  %5 = lshr i8 %1, 5, !dbg !2553
  %6 = zext nneg i8 %5 to i64, !dbg !2553
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !2554
  call void @llvm.dbg.value(metadata ptr %7, metadata !1504, metadata !DIExpression()), !dbg !2550
  %8 = and i8 %1, 31, !dbg !2555
  %9 = zext nneg i8 %8 to i32, !dbg !2555
  call void @llvm.dbg.value(metadata i32 %9, metadata !1506, metadata !DIExpression()), !dbg !2550
  %10 = load i32, ptr %7, align 4, !dbg !2556, !tbaa !815
  %11 = lshr i32 %10, %9, !dbg !2557
  call void @llvm.dbg.value(metadata i32 %11, metadata !1507, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2550
  %12 = and i32 %11, 1, !dbg !2558
  %13 = xor i32 %12, 1, !dbg !2558
  %14 = shl nuw i32 %13, %9, !dbg !2559
  %15 = xor i32 %14, %10, !dbg !2560
  store i32 %15, ptr %7, align 4, !dbg !2560, !tbaa !815
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !2561
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2562
  ret ptr %16, !dbg !2563
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !2564 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !2567
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2566, metadata !DIExpression()), !dbg !2568
  call void @llvm.dbg.value(metadata ptr %0, metadata !2541, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i8 58, metadata !2542, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2567, metadata ptr %2, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %0, metadata !2513, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i64 -1, metadata !2514, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8 58, metadata !2515, metadata !DIExpression()), !dbg !2571
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !2573
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2574, !tbaa.struct !2521, !DIAssignID !2575
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2575, metadata ptr %2, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata ptr %2, metadata !1500, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1501, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i8 58, metadata !1503, metadata !DIExpression()), !dbg !2576
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !2578
  call void @llvm.dbg.value(metadata ptr %3, metadata !1504, metadata !DIExpression()), !dbg !2576
  call void @llvm.dbg.value(metadata i32 26, metadata !1506, metadata !DIExpression()), !dbg !2576
  %4 = load i32, ptr %3, align 4, !dbg !2579, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %4, metadata !1507, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2576
  %5 = or i32 %4, 67108864, !dbg !2580
  store i32 %5, ptr %3, align 4, !dbg !2580, !tbaa !815
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !2581
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !2582
  ret ptr %6, !dbg !2583
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2584 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !2588
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2586, metadata !DIExpression()), !dbg !2589
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2587, metadata !DIExpression()), !dbg !2589
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2588, metadata ptr %3, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata ptr %0, metadata !2513, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i64 %1, metadata !2514, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata i8 58, metadata !2515, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !2592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !2593, !tbaa.struct !2521, !DIAssignID !2594
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2516, metadata !DIExpression(), metadata !2594, metadata ptr %3, metadata !DIExpression()), !dbg !2590
  call void @llvm.dbg.value(metadata ptr %3, metadata !1500, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !1501, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8 58, metadata !1503, metadata !DIExpression()), !dbg !2595
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !2597
  call void @llvm.dbg.value(metadata ptr %4, metadata !1504, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 26, metadata !1506, metadata !DIExpression()), !dbg !2595
  %5 = load i32, ptr %4, align 4, !dbg !2598, !tbaa !815
  call void @llvm.dbg.value(metadata i32 %5, metadata !1507, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2595
  %6 = or i32 %5, 67108864, !dbg !2599
  store i32 %6, ptr %4, align 4, !dbg !2599, !tbaa !815
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !2600
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !2601
  ret ptr %7, !dbg !2602
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2603 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2609
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2608, metadata !DIExpression(), metadata !2609, metadata ptr %4, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2611
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2606, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2607, metadata !DIExpression()), !dbg !2610
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2613
  call void @llvm.dbg.value(metadata i32 %1, metadata !2407, metadata !DIExpression()), !dbg !2614
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2614
  %5 = icmp eq i32 %1, 10, !dbg !2615
  br i1 %5, label %6, label %7, !dbg !2616

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2617, !noalias !2618
  unreachable, !dbg !2617

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2614
  store i32 %1, ptr %4, align 8, !dbg !2621, !tbaa.struct !2521, !DIAssignID !2622
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !2621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !2621
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2608, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2622, metadata ptr %4, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2608, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !2623, metadata ptr %8, metadata !DIExpression()), !dbg !2610
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1500, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1501, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1502, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.dbg.value(metadata i8 58, metadata !1503, metadata !DIExpression()), !dbg !2624
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !2626
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1504, metadata !DIExpression()), !dbg !2624
  tail call void @llvm.dbg.value(metadata i32 26, metadata !1506, metadata !DIExpression()), !dbg !2624
  %10 = load i32, ptr %9, align 4, !dbg !2627, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1507, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2624
  %11 = or i32 %10, 67108864, !dbg !2628
  store i32 %11, ptr %9, align 4, !dbg !2628, !tbaa !815, !DIAssignID !2629
  call void @llvm.dbg.assign(metadata i32 %11, metadata !2608, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !2629, metadata ptr %9, metadata !DIExpression()), !dbg !2610
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2630
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2631
  ret ptr %12, !dbg !2632
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2633 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2641
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2638, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !2642
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2640, metadata !DIExpression()), !dbg !2642
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2641, metadata ptr %5, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %2, metadata !2650, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %3, metadata !2651, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata i64 -1, metadata !2652, metadata !DIExpression()), !dbg !2653
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2655
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2656, !tbaa.struct !2521, !DIAssignID !2657
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2657, metadata ptr %5, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2658, metadata ptr undef, metadata !DIExpression()), !dbg !2653
  call void @llvm.dbg.value(metadata ptr %5, metadata !1540, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %2, metadata !1542, metadata !DIExpression()), !dbg !2659
  call void @llvm.dbg.value(metadata ptr %5, metadata !1540, metadata !DIExpression()), !dbg !2659
  store i32 10, ptr %5, align 8, !dbg !2661, !tbaa !1483, !DIAssignID !2662
  call void @llvm.dbg.assign(metadata i32 10, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2662, metadata ptr %5, metadata !DIExpression()), !dbg !2653
  %6 = icmp ne ptr %1, null, !dbg !2663
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2664
  br i1 %8, label %10, label %9, !dbg !2664

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2665
  unreachable, !dbg !2665

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2666
  store ptr %1, ptr %11, align 8, !dbg !2667, !tbaa !1554, !DIAssignID !2668
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2668, metadata ptr %11, metadata !DIExpression()), !dbg !2653
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2669
  store ptr %2, ptr %12, align 8, !dbg !2670, !tbaa !1557, !DIAssignID !2671
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2671, metadata ptr %12, metadata !DIExpression()), !dbg !2653
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !2672
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2673
  ret ptr %13, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !2644 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !2675
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2675, metadata ptr %6, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2648, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2649, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2650, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2651, metadata !DIExpression()), !dbg !2676
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !2652, metadata !DIExpression()), !dbg !2676
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !2677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2678, !tbaa.struct !2521, !DIAssignID !2679
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2679, metadata ptr %6, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2680, metadata ptr undef, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.value(metadata ptr %6, metadata !1540, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %1, metadata !1541, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %2, metadata !1542, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata ptr %6, metadata !1540, metadata !DIExpression()), !dbg !2681
  store i32 10, ptr %6, align 8, !dbg !2683, !tbaa !1483, !DIAssignID !2684
  call void @llvm.dbg.assign(metadata i32 10, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2684, metadata ptr %6, metadata !DIExpression()), !dbg !2676
  %7 = icmp ne ptr %1, null, !dbg !2685
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !2686
  br i1 %9, label %11, label %10, !dbg !2686

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !2687
  unreachable, !dbg !2687

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2688
  store ptr %1, ptr %12, align 8, !dbg !2689, !tbaa !1554, !DIAssignID !2690
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2690, metadata ptr %12, metadata !DIExpression()), !dbg !2676
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2691
  store ptr %2, ptr %13, align 8, !dbg !2692, !tbaa !1557, !DIAssignID !2693
  call void @llvm.dbg.assign(metadata ptr %2, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2693, metadata ptr %13, metadata !DIExpression()), !dbg !2676
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !2694
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !2695
  ret ptr %14, !dbg !2696
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2697 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2704
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2701, metadata !DIExpression()), !dbg !2705
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2702, metadata !DIExpression()), !dbg !2705
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %0, metadata !2638, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %1, metadata !2639, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata ptr %2, metadata !2640, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2704, metadata ptr %4, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 0, metadata !2648, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %1, metadata !2650, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %2, metadata !2651, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i64 -1, metadata !2652, metadata !DIExpression()), !dbg !2708
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !2710
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2711, !tbaa.struct !2521, !DIAssignID !2712
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2712, metadata ptr %4, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2713, metadata ptr undef, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata ptr %4, metadata !1540, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %0, metadata !1541, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %1, metadata !1542, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata ptr %4, metadata !1540, metadata !DIExpression()), !dbg !2714
  store i32 10, ptr %4, align 8, !dbg !2716, !tbaa !1483, !DIAssignID !2717
  call void @llvm.dbg.assign(metadata i32 10, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2717, metadata ptr %4, metadata !DIExpression()), !dbg !2708
  %5 = icmp ne ptr %0, null, !dbg !2718
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !2719
  br i1 %7, label %9, label %8, !dbg !2719

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !2720
  unreachable, !dbg !2720

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !2721
  store ptr %0, ptr %10, align 8, !dbg !2722, !tbaa !1554, !DIAssignID !2723
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2723, metadata ptr %10, metadata !DIExpression()), !dbg !2708
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !2724
  store ptr %1, ptr %11, align 8, !dbg !2725, !tbaa !1557, !DIAssignID !2726
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2726, metadata ptr %11, metadata !DIExpression()), !dbg !2708
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2727
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !2728
  ret ptr %12, !dbg !2729
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2730 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !2738
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2734, metadata !DIExpression()), !dbg !2739
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2735, metadata !DIExpression()), !dbg !2739
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2736, metadata !DIExpression()), !dbg !2739
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2737, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2738, metadata ptr %5, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2648, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %0, metadata !2649, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %1, metadata !2650, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %2, metadata !2651, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i64 %3, metadata !2652, metadata !DIExpression()), !dbg !2740
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !2742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !2743, !tbaa.struct !2521, !DIAssignID !2744
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(), metadata !2744, metadata ptr %5, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !2745, metadata ptr undef, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata ptr %5, metadata !1540, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %0, metadata !1541, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %1, metadata !1542, metadata !DIExpression()), !dbg !2746
  call void @llvm.dbg.value(metadata ptr %5, metadata !1540, metadata !DIExpression()), !dbg !2746
  store i32 10, ptr %5, align 8, !dbg !2748, !tbaa !1483, !DIAssignID !2749
  call void @llvm.dbg.assign(metadata i32 10, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2749, metadata ptr %5, metadata !DIExpression()), !dbg !2740
  %6 = icmp ne ptr %0, null, !dbg !2750
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !2751
  br i1 %8, label %10, label %9, !dbg !2751

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !2752
  unreachable, !dbg !2752

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2753
  store ptr %0, ptr %11, align 8, !dbg !2754, !tbaa !1554, !DIAssignID !2755
  call void @llvm.dbg.assign(metadata ptr %0, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !2755, metadata ptr %11, metadata !DIExpression()), !dbg !2740
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2756
  store ptr %1, ptr %12, align 8, !dbg !2757, !tbaa !1557, !DIAssignID !2758
  call void @llvm.dbg.assign(metadata ptr %1, metadata !2643, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !2758, metadata ptr %12, metadata !DIExpression()), !dbg !2740
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2759
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !2760
  ret ptr %13, !dbg !2761
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2762 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2769
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2767, metadata !DIExpression()), !dbg !2769
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2768, metadata !DIExpression()), !dbg !2769
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !2770
  ret ptr %4, !dbg !2771
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2772 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2776, metadata !DIExpression()), !dbg !2778
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2777, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata i64 %1, metadata !2768, metadata !DIExpression()), !dbg !2779
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !2781
  ret ptr %3, !dbg !2782
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2783 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2787, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i32 %0, metadata !2766, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata ptr %1, metadata !2767, metadata !DIExpression()), !dbg !2790
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()), !dbg !2790
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2792
  ret ptr %3, !dbg !2793
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !2794 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i32 0, metadata !2787, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata ptr %0, metadata !2788, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 0, metadata !2766, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata ptr %0, metadata !2767, metadata !DIExpression()), !dbg !2802
  call void @llvm.dbg.value(metadata i64 -1, metadata !2768, metadata !DIExpression()), !dbg !2802
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !2804
  ret ptr %2, !dbg !2805
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !2806 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2845, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2846, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2847, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2848, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2849, metadata !DIExpression()), !dbg !2851
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2850, metadata !DIExpression()), !dbg !2851
  %7 = icmp eq ptr %1, null, !dbg !2852
  br i1 %7, label %10, label %8, !dbg !2854

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !2855
  br label %12, !dbg !2855

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.76, ptr noundef %2, ptr noundef %3) #37, !dbg !2856
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.3.78, i32 noundef 5) #37, !dbg !2857
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !2857
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2858
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.5.80, i32 noundef 5) #37, !dbg !2859
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.81) #37, !dbg !2859
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %0), !dbg !2860
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
  ], !dbg !2861

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.7.82, i32 noundef 5) #37, !dbg !2862
  %21 = load ptr, ptr %4, align 8, !dbg !2862, !tbaa !754
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !2862
  br label %147, !dbg !2864

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.8.83, i32 noundef 5) #37, !dbg !2865
  %25 = load ptr, ptr %4, align 8, !dbg !2865, !tbaa !754
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2865
  %27 = load ptr, ptr %26, align 8, !dbg !2865, !tbaa !754
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !2865
  br label %147, !dbg !2866

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.9.84, i32 noundef 5) #37, !dbg !2867
  %31 = load ptr, ptr %4, align 8, !dbg !2867, !tbaa !754
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2867
  %33 = load ptr, ptr %32, align 8, !dbg !2867, !tbaa !754
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2867
  %35 = load ptr, ptr %34, align 8, !dbg !2867, !tbaa !754
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !2867
  br label %147, !dbg !2868

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.10.85, i32 noundef 5) #37, !dbg !2869
  %39 = load ptr, ptr %4, align 8, !dbg !2869, !tbaa !754
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2869
  %41 = load ptr, ptr %40, align 8, !dbg !2869, !tbaa !754
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2869
  %43 = load ptr, ptr %42, align 8, !dbg !2869, !tbaa !754
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2869
  %45 = load ptr, ptr %44, align 8, !dbg !2869, !tbaa !754
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !2869
  br label %147, !dbg !2870

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.11.86, i32 noundef 5) #37, !dbg !2871
  %49 = load ptr, ptr %4, align 8, !dbg !2871, !tbaa !754
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2871
  %51 = load ptr, ptr %50, align 8, !dbg !2871, !tbaa !754
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2871
  %53 = load ptr, ptr %52, align 8, !dbg !2871, !tbaa !754
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2871
  %55 = load ptr, ptr %54, align 8, !dbg !2871, !tbaa !754
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2871
  %57 = load ptr, ptr %56, align 8, !dbg !2871, !tbaa !754
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !2871
  br label %147, !dbg !2872

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.12.87, i32 noundef 5) #37, !dbg !2873
  %61 = load ptr, ptr %4, align 8, !dbg !2873, !tbaa !754
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2873
  %63 = load ptr, ptr %62, align 8, !dbg !2873, !tbaa !754
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2873
  %65 = load ptr, ptr %64, align 8, !dbg !2873, !tbaa !754
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2873
  %67 = load ptr, ptr %66, align 8, !dbg !2873, !tbaa !754
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2873
  %69 = load ptr, ptr %68, align 8, !dbg !2873, !tbaa !754
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2873
  %71 = load ptr, ptr %70, align 8, !dbg !2873, !tbaa !754
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !2873
  br label %147, !dbg !2874

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.13.88, i32 noundef 5) #37, !dbg !2875
  %75 = load ptr, ptr %4, align 8, !dbg !2875, !tbaa !754
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2875
  %77 = load ptr, ptr %76, align 8, !dbg !2875, !tbaa !754
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2875
  %79 = load ptr, ptr %78, align 8, !dbg !2875, !tbaa !754
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2875
  %81 = load ptr, ptr %80, align 8, !dbg !2875, !tbaa !754
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2875
  %83 = load ptr, ptr %82, align 8, !dbg !2875, !tbaa !754
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2875
  %85 = load ptr, ptr %84, align 8, !dbg !2875, !tbaa !754
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2875
  %87 = load ptr, ptr %86, align 8, !dbg !2875, !tbaa !754
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !2875
  br label %147, !dbg !2876

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.14.89, i32 noundef 5) #37, !dbg !2877
  %91 = load ptr, ptr %4, align 8, !dbg !2877, !tbaa !754
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2877
  %93 = load ptr, ptr %92, align 8, !dbg !2877, !tbaa !754
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2877
  %95 = load ptr, ptr %94, align 8, !dbg !2877, !tbaa !754
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2877
  %97 = load ptr, ptr %96, align 8, !dbg !2877, !tbaa !754
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2877
  %99 = load ptr, ptr %98, align 8, !dbg !2877, !tbaa !754
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2877
  %101 = load ptr, ptr %100, align 8, !dbg !2877, !tbaa !754
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2877
  %103 = load ptr, ptr %102, align 8, !dbg !2877, !tbaa !754
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2877
  %105 = load ptr, ptr %104, align 8, !dbg !2877, !tbaa !754
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !2877
  br label %147, !dbg !2878

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.15.90, i32 noundef 5) #37, !dbg !2879
  %109 = load ptr, ptr %4, align 8, !dbg !2879, !tbaa !754
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2879
  %111 = load ptr, ptr %110, align 8, !dbg !2879, !tbaa !754
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2879
  %113 = load ptr, ptr %112, align 8, !dbg !2879, !tbaa !754
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2879
  %115 = load ptr, ptr %114, align 8, !dbg !2879, !tbaa !754
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2879
  %117 = load ptr, ptr %116, align 8, !dbg !2879, !tbaa !754
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2879
  %119 = load ptr, ptr %118, align 8, !dbg !2879, !tbaa !754
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2879
  %121 = load ptr, ptr %120, align 8, !dbg !2879, !tbaa !754
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2879
  %123 = load ptr, ptr %122, align 8, !dbg !2879, !tbaa !754
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2879
  %125 = load ptr, ptr %124, align 8, !dbg !2879, !tbaa !754
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !2879
  br label %147, !dbg !2880

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.16.91, i32 noundef 5) #37, !dbg !2881
  %129 = load ptr, ptr %4, align 8, !dbg !2881, !tbaa !754
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !2881
  %131 = load ptr, ptr %130, align 8, !dbg !2881, !tbaa !754
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !2881
  %133 = load ptr, ptr %132, align 8, !dbg !2881, !tbaa !754
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !2881
  %135 = load ptr, ptr %134, align 8, !dbg !2881, !tbaa !754
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !2881
  %137 = load ptr, ptr %136, align 8, !dbg !2881, !tbaa !754
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !2881
  %139 = load ptr, ptr %138, align 8, !dbg !2881, !tbaa !754
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !2881
  %141 = load ptr, ptr %140, align 8, !dbg !2881, !tbaa !754
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !2881
  %143 = load ptr, ptr %142, align 8, !dbg !2881, !tbaa !754
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !2881
  %145 = load ptr, ptr %144, align 8, !dbg !2881, !tbaa !754
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !2881
  br label %147, !dbg !2882

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2883
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !2884 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2888, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2889, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2890, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2891, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2892, metadata !DIExpression()), !dbg !2894
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2893, metadata !DIExpression()), !dbg !2894
  br label %6, !dbg !2895

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2897
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !2893, metadata !DIExpression()), !dbg !2894
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !2898
  %9 = load ptr, ptr %8, align 8, !dbg !2898, !tbaa !754
  %10 = icmp eq ptr %9, null, !dbg !2900
  %11 = add i64 %7, 1, !dbg !2901
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2893, metadata !DIExpression()), !dbg !2894
  br i1 %10, label %12, label %6, !dbg !2900, !llvm.loop !2902

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !2904
  ret void, !dbg !2905
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !2906 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !2925
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2923, metadata !DIExpression(), metadata !2925, metadata ptr %6, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2917, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2918, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2919, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2920, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2921, metadata !DIExpression()), !dbg !2926
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !2927
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2922, metadata !DIExpression()), !dbg !2926
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2922, metadata !DIExpression()), !dbg !2926
  %10 = icmp ult i32 %9, 41, !dbg !2928
  br i1 %10, label %11, label %16, !dbg !2928

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !2928
  %13 = zext nneg i32 %9 to i64, !dbg !2928
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !2928
  %15 = add nuw nsw i32 %9, 8, !dbg !2928
  store i32 %15, ptr %4, align 8, !dbg !2928
  br label %19, !dbg !2928

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !2928
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !2928
  store ptr %18, ptr %7, align 8, !dbg !2928
  br label %19, !dbg !2928

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !2928
  %22 = load ptr, ptr %21, align 8, !dbg !2928
  store ptr %22, ptr %6, align 16, !dbg !2931, !tbaa !754
  %23 = icmp eq ptr %22, null, !dbg !2932
  br i1 %23, label %128, label %24, !dbg !2933

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2922, metadata !DIExpression()), !dbg !2926
  %25 = icmp ult i32 %20, 41, !dbg !2928
  br i1 %25, label %29, label %26, !dbg !2928

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !2928
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !2928
  store ptr %28, ptr %7, align 8, !dbg !2928
  br label %34, !dbg !2928

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !2928
  %31 = zext nneg i32 %20 to i64, !dbg !2928
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !2928
  %33 = add nuw nsw i32 %20, 8, !dbg !2928
  store i32 %33, ptr %4, align 8, !dbg !2928
  br label %34, !dbg !2928

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !2928
  %37 = load ptr, ptr %36, align 8, !dbg !2928
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !2934
  store ptr %37, ptr %38, align 8, !dbg !2931, !tbaa !754
  %39 = icmp eq ptr %37, null, !dbg !2932
  br i1 %39, label %128, label %40, !dbg !2933

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 2, metadata !2922, metadata !DIExpression()), !dbg !2926
  %41 = icmp ult i32 %35, 41, !dbg !2928
  br i1 %41, label %45, label %42, !dbg !2928

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !2928
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !2928
  store ptr %44, ptr %7, align 8, !dbg !2928
  br label %50, !dbg !2928

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !2928
  %47 = zext nneg i32 %35 to i64, !dbg !2928
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !2928
  %49 = add nuw nsw i32 %35, 8, !dbg !2928
  store i32 %49, ptr %4, align 8, !dbg !2928
  br label %50, !dbg !2928

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !2928
  %53 = load ptr, ptr %52, align 8, !dbg !2928
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !2934
  store ptr %53, ptr %54, align 16, !dbg !2931, !tbaa !754
  %55 = icmp eq ptr %53, null, !dbg !2932
  br i1 %55, label %128, label %56, !dbg !2933

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 3, metadata !2922, metadata !DIExpression()), !dbg !2926
  %57 = icmp ult i32 %51, 41, !dbg !2928
  br i1 %57, label %61, label %58, !dbg !2928

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !2928
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !2928
  store ptr %60, ptr %7, align 8, !dbg !2928
  br label %66, !dbg !2928

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !2928
  %63 = zext nneg i32 %51 to i64, !dbg !2928
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !2928
  %65 = add nuw nsw i32 %51, 8, !dbg !2928
  store i32 %65, ptr %4, align 8, !dbg !2928
  br label %66, !dbg !2928

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !2928
  %69 = load ptr, ptr %68, align 8, !dbg !2928
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !2934
  store ptr %69, ptr %70, align 8, !dbg !2931, !tbaa !754
  %71 = icmp eq ptr %69, null, !dbg !2932
  br i1 %71, label %128, label %72, !dbg !2933

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 4, metadata !2922, metadata !DIExpression()), !dbg !2926
  %73 = icmp ult i32 %67, 41, !dbg !2928
  br i1 %73, label %77, label %74, !dbg !2928

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !2928
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !2928
  store ptr %76, ptr %7, align 8, !dbg !2928
  br label %82, !dbg !2928

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !2928
  %79 = zext nneg i32 %67 to i64, !dbg !2928
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !2928
  %81 = add nuw nsw i32 %67, 8, !dbg !2928
  store i32 %81, ptr %4, align 8, !dbg !2928
  br label %82, !dbg !2928

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !2928
  %85 = load ptr, ptr %84, align 8, !dbg !2928
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !2934
  store ptr %85, ptr %86, align 16, !dbg !2931, !tbaa !754
  %87 = icmp eq ptr %85, null, !dbg !2932
  br i1 %87, label %128, label %88, !dbg !2933

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2922, metadata !DIExpression()), !dbg !2926
  tail call void @llvm.dbg.value(metadata i64 5, metadata !2922, metadata !DIExpression()), !dbg !2926
  %89 = icmp ult i32 %83, 41, !dbg !2928
  br i1 %89, label %93, label %90, !dbg !2928

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !2928
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !2928
  store ptr %92, ptr %7, align 8, !dbg !2928
  br label %98, !dbg !2928

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !2928
  %95 = zext nneg i32 %83 to i64, !dbg !2928
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !2928
  %97 = add nuw nsw i32 %83, 8, !dbg !2928
  store i32 %97, ptr %4, align 8, !dbg !2928
  br label %98, !dbg !2928

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !2928
  %100 = load ptr, ptr %99, align 8, !dbg !2928
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !2934
  store ptr %100, ptr %101, align 8, !dbg !2931, !tbaa !754
  %102 = icmp eq ptr %100, null, !dbg !2932
  br i1 %102, label %128, label %103, !dbg !2933

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !2922, metadata !DIExpression()), !dbg !2926
  %104 = load ptr, ptr %7, align 8, !dbg !2928
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !2928
  store ptr %105, ptr %7, align 8, !dbg !2928
  %106 = load ptr, ptr %104, align 8, !dbg !2928
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !2934
  store ptr %106, ptr %107, align 16, !dbg !2931, !tbaa !754
  %108 = icmp eq ptr %106, null, !dbg !2932
  br i1 %108, label %128, label %109, !dbg !2933

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !2922, metadata !DIExpression()), !dbg !2926
  %110 = load ptr, ptr %7, align 8, !dbg !2928
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !2928
  store ptr %111, ptr %7, align 8, !dbg !2928
  %112 = load ptr, ptr %110, align 8, !dbg !2928
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !2934
  store ptr %112, ptr %113, align 8, !dbg !2931, !tbaa !754
  %114 = icmp eq ptr %112, null, !dbg !2932
  br i1 %114, label %128, label %115, !dbg !2933

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !2922, metadata !DIExpression()), !dbg !2926
  %116 = load ptr, ptr %7, align 8, !dbg !2928
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !2928
  store ptr %117, ptr %7, align 8, !dbg !2928
  %118 = load ptr, ptr %116, align 8, !dbg !2928
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !2934
  store ptr %118, ptr %119, align 16, !dbg !2931, !tbaa !754
  %120 = icmp eq ptr %118, null, !dbg !2932
  br i1 %120, label %128, label %121, !dbg !2933

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !2922, metadata !DIExpression()), !dbg !2926
  %122 = load ptr, ptr %7, align 8, !dbg !2928
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !2928
  store ptr %123, ptr %7, align 8, !dbg !2928
  %124 = load ptr, ptr %122, align 8, !dbg !2928
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !2934
  store ptr %124, ptr %125, align 8, !dbg !2931, !tbaa !754
  %126 = icmp eq ptr %124, null, !dbg !2932
  %127 = select i1 %126, i64 9, i64 10, !dbg !2933
  br label %128, !dbg !2933

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !2935
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !2936
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !2937
  ret void, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !2938 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2946, metadata !DIExpression(), metadata !2951, metadata ptr %5, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2942, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2943, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2944, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2945, metadata !DIExpression()), !dbg !2952
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !2953
  call void @llvm.va_start(ptr nonnull %5), !dbg !2954
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !2955
  call void @llvm.va_end(ptr nonnull %5), !dbg !2956
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !2957
  ret void, !dbg !2957
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !2958 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2959, !tbaa !754
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.79, ptr noundef %1), !dbg !2959
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.17.96, i32 noundef 5) #37, !dbg !2960
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.97) #37, !dbg !2960
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.19, i32 noundef 5) #37, !dbg !2961
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21.98) #37, !dbg !2961
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.77, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !2962
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #37, !dbg !2962
  ret void, !dbg !2963
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2969, metadata !DIExpression()), !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()), !dbg !2972
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %1, metadata !2976, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %2, metadata !2977, metadata !DIExpression()), !dbg !2978
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2980
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !2986
  %5 = icmp eq ptr %4, null, !dbg !2988
  br i1 %5, label %6, label %7, !dbg !2990

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2991
  unreachable, !dbg !2991

7:                                                ; preds = %3
  ret ptr %4, !dbg !2992
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2974 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2976, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2977, metadata !DIExpression()), !dbg !2993
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !2994
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !2995
  %5 = icmp eq ptr %4, null, !dbg !2997
  br i1 %5, label %6, label %7, !dbg !2998

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !2999
  unreachable, !dbg !2999

7:                                                ; preds = %3
  ret ptr %4, !dbg !3000
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3001 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3005, metadata !DIExpression()), !dbg !3006
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3007
  call void @llvm.dbg.value(metadata ptr %2, metadata !2981, metadata !DIExpression()), !dbg !3008
  %3 = icmp eq ptr %2, null, !dbg !3010
  br i1 %3, label %4, label %5, !dbg !3011

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3012
  unreachable, !dbg !3012

5:                                                ; preds = %1
  ret ptr %2, !dbg !3013
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3014 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3015 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3019, metadata !DIExpression()), !dbg !3020
  call void @llvm.dbg.value(metadata i64 %0, metadata !3021, metadata !DIExpression()), !dbg !3025
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3027
  call void @llvm.dbg.value(metadata ptr %2, metadata !2981, metadata !DIExpression()), !dbg !3028
  %3 = icmp eq ptr %2, null, !dbg !3030
  br i1 %3, label %4, label %5, !dbg !3031

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3032
  unreachable, !dbg !3032

5:                                                ; preds = %1
  ret ptr %2, !dbg !3033
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3034 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %0, metadata !3005, metadata !DIExpression()), !dbg !3040
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3042
  call void @llvm.dbg.value(metadata ptr %2, metadata !2981, metadata !DIExpression()), !dbg !3043
  %3 = icmp eq ptr %2, null, !dbg !3045
  br i1 %3, label %4, label %5, !dbg !3046

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3047
  unreachable, !dbg !3047

5:                                                ; preds = %1
  ret ptr %2, !dbg !3048
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3049 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3055
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3061
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3063
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3064
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !3065
  %5 = icmp eq ptr %4, null, !dbg !3067
  br i1 %5, label %6, label %7, !dbg !3068

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3069
  unreachable, !dbg !3069

7:                                                ; preds = %2
  ret ptr %4, !dbg !3070
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3071 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3072 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3076, metadata !DIExpression()), !dbg !3078
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3077, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64 %1, metadata !3082, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()), !dbg !3085
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3087
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #43, !dbg !3088
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !3089
  %5 = icmp eq ptr %4, null, !dbg !3091
  br i1 %5, label %6, label %7, !dbg !3092

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3093
  unreachable, !dbg !3093

7:                                                ; preds = %2
  ret ptr %4, !dbg !3094
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3095 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3099, metadata !DIExpression()), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3100, metadata !DIExpression()), !dbg !3102
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !3103, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.value(metadata i64 %2, metadata !3107, metadata !DIExpression()), !dbg !3108
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !3111
  %5 = icmp eq ptr %4, null, !dbg !3113
  br i1 %5, label %6, label %7, !dbg !3114

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3115
  unreachable, !dbg !3115

7:                                                ; preds = %3
  ret ptr %4, !dbg !3116
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3117 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3121, metadata !DIExpression()), !dbg !3123
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata ptr null, metadata !2973, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %0, metadata !2976, metadata !DIExpression()), !dbg !3124
  call void @llvm.dbg.value(metadata i64 %1, metadata !2977, metadata !DIExpression()), !dbg !3124
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3126
  call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !3127
  %4 = icmp eq ptr %3, null, !dbg !3129
  br i1 %4, label %5, label %6, !dbg !3130

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3131
  unreachable, !dbg !3131

6:                                                ; preds = %2
  ret ptr %3, !dbg !3132
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3133 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3137, metadata !DIExpression()), !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.value(metadata ptr null, metadata !3099, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %0, metadata !3100, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3101, metadata !DIExpression()), !dbg !3140
  call void @llvm.dbg.value(metadata ptr null, metadata !3103, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %0, metadata !3106, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i64 %1, metadata !3107, metadata !DIExpression()), !dbg !3142
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3144
  call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !3145
  %4 = icmp eq ptr %3, null, !dbg !3147
  br i1 %4, label %5, label %6, !dbg !3148

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3149
  unreachable, !dbg !3149

6:                                                ; preds = %2
  ret ptr %3, !dbg !3150
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3151 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3155, metadata !DIExpression()), !dbg !3157
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 1, metadata !691, metadata !DIExpression()), !dbg !3158
  %3 = load i64, ptr %1, align 8, !dbg !3160, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !692, metadata !DIExpression()), !dbg !3158
  %4 = icmp eq ptr %0, null, !dbg !3161
  br i1 %4, label %5, label %8, !dbg !3163

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3164
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3167
  br label %15, !dbg !3167

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3168
  %10 = add nuw i64 %9, 1, !dbg !3168
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3168
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3168
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3168
  call void @llvm.dbg.value(metadata i64 %13, metadata !692, metadata !DIExpression()), !dbg !3158
  br i1 %12, label %14, label %15, !dbg !3171

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3172
  unreachable, !dbg !3172

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3158
  call void @llvm.dbg.value(metadata i64 %16, metadata !692, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %16, metadata !2976, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 1, metadata !2977, metadata !DIExpression()), !dbg !3173
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %17, metadata !2981, metadata !DIExpression()), !dbg !3176
  %18 = icmp eq ptr %17, null, !dbg !3178
  br i1 %18, label %19, label %20, !dbg !3179

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !3180
  unreachable, !dbg !3180

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !689, metadata !DIExpression()), !dbg !3158
  store i64 %16, ptr %1, align 8, !dbg !3181, !tbaa !2224
  ret ptr %17, !dbg !3182
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !684 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !689, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !690, metadata !DIExpression()), !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !691, metadata !DIExpression()), !dbg !3183
  %4 = load i64, ptr %1, align 8, !dbg !3184, !tbaa !2224
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !692, metadata !DIExpression()), !dbg !3183
  %5 = icmp eq ptr %0, null, !dbg !3185
  br i1 %5, label %6, label %13, !dbg !3186

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3187
  br i1 %7, label %8, label %20, !dbg !3188

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3189
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !692, metadata !DIExpression()), !dbg !3183
  %10 = icmp ugt i64 %2, 128, !dbg !3191
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !692, metadata !DIExpression()), !dbg !3183
  br label %20, !dbg !3193

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3194
  %15 = add nuw i64 %14, 1, !dbg !3194
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3194
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3194
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3194
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !692, metadata !DIExpression()), !dbg !3183
  br i1 %17, label %19, label %20, !dbg !3195

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !3196
  unreachable, !dbg !3196

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3183
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !692, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %21, metadata !2976, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.value(metadata i64 %2, metadata !2977, metadata !DIExpression()), !dbg !3197
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !3199
  call void @llvm.dbg.value(metadata ptr %22, metadata !2981, metadata !DIExpression()), !dbg !3200
  %23 = icmp eq ptr %22, null, !dbg !3202
  br i1 %23, label %24, label %25, !dbg !3203

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !3204
  unreachable, !dbg !3204

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !689, metadata !DIExpression()), !dbg !3183
  store i64 %21, ptr %1, align 8, !dbg !3205, !tbaa !2224
  ret ptr %22, !dbg !3206
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !696 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !705, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !706, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !707, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !708, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !709, metadata !DIExpression()), !dbg !3207
  %6 = load i64, ptr %1, align 8, !dbg !3208, !tbaa !2224
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !710, metadata !DIExpression()), !dbg !3207
  %7 = ashr i64 %6, 1, !dbg !3209
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3209
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3209
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3209
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !711, metadata !DIExpression()), !dbg !3207
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3211
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !711, metadata !DIExpression()), !dbg !3207
  %12 = icmp sgt i64 %3, -1, !dbg !3212
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3214
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3214
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !711, metadata !DIExpression()), !dbg !3207
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3215
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3215
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !712, metadata !DIExpression()), !dbg !3207
  %18 = icmp slt i64 %17, 128, !dbg !3215
  %19 = select i1 %18, i64 128, i64 0, !dbg !3215
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3215
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !713, metadata !DIExpression()), !dbg !3207
  %21 = icmp eq i64 %20, 0, !dbg !3216
  br i1 %21, label %26, label %22, !dbg !3218

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !3219
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !711, metadata !DIExpression()), !dbg !3207
  %24 = srem i64 %20, %4, !dbg !3221
  %25 = sub nsw i64 %20, %24, !dbg !3222
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !712, metadata !DIExpression()), !dbg !3207
  br label %26, !dbg !3223

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !3207
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !712, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !711, metadata !DIExpression()), !dbg !3207
  %29 = icmp eq ptr %0, null, !dbg !3224
  br i1 %29, label %30, label %31, !dbg !3226

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !3227, !tbaa !2224
  br label %31, !dbg !3228

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !3229
  %33 = icmp slt i64 %32, %2, !dbg !3231
  br i1 %33, label %34, label %46, !dbg !3232

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3233
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !3233
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !3233
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !711, metadata !DIExpression()), !dbg !3207
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !3234
  br i1 %40, label %45, label %41, !dbg !3234

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !3235
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !3235
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !3235
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !712, metadata !DIExpression()), !dbg !3207
  br i1 %43, label %45, label %46, !dbg !3236

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #39, !dbg !3237
  unreachable, !dbg !3237

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !3207
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !712, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !711, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.value(metadata ptr %0, metadata !3053, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %48, metadata !3054, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %0, metadata !3056, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 %48, metadata !3060, metadata !DIExpression()), !dbg !3240
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !3242
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #43, !dbg !3243
  call void @llvm.dbg.value(metadata ptr %50, metadata !2981, metadata !DIExpression()), !dbg !3244
  %51 = icmp eq ptr %50, null, !dbg !3246
  br i1 %51, label %52, label %53, !dbg !3247

52:                                               ; preds = %46
  tail call void @xalloc_die() #39, !dbg !3248
  unreachable, !dbg !3248

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !705, metadata !DIExpression()), !dbg !3207
  store i64 %47, ptr %1, align 8, !dbg !3249, !tbaa !2224
  ret ptr %50, !dbg !3250
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3251 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %0, metadata !3255, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata i64 1, metadata !3258, metadata !DIExpression()), !dbg !3259
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3261
  call void @llvm.dbg.value(metadata ptr %2, metadata !2981, metadata !DIExpression()), !dbg !3262
  %3 = icmp eq ptr %2, null, !dbg !3264
  br i1 %3, label %4, label %5, !dbg !3265

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3266
  unreachable, !dbg !3266

5:                                                ; preds = %1
  ret ptr %2, !dbg !3267
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3268 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3256 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3255, metadata !DIExpression()), !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3258, metadata !DIExpression()), !dbg !3269
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3270
  call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !3271
  %4 = icmp eq ptr %3, null, !dbg !3273
  br i1 %4, label %5, label %6, !dbg !3274

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3275
  unreachable, !dbg !3275

6:                                                ; preds = %2
  ret ptr %3, !dbg !3276
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3277 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3279, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %0, metadata !3281, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 1, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i64 %0, metadata !3287, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 1, metadata !3290, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 %0, metadata !3287, metadata !DIExpression()), !dbg !3291
  call void @llvm.dbg.value(metadata i64 1, metadata !3290, metadata !DIExpression()), !dbg !3291
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !3293
  call void @llvm.dbg.value(metadata ptr %2, metadata !2981, metadata !DIExpression()), !dbg !3294
  %3 = icmp eq ptr %2, null, !dbg !3296
  br i1 %3, label %4, label %5, !dbg !3297

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3298
  unreachable, !dbg !3298

5:                                                ; preds = %1
  ret ptr %2, !dbg !3299
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3282 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3281, metadata !DIExpression()), !dbg !3300
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3284, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 %0, metadata !3287, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %0, metadata !3287, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %1, metadata !3290, metadata !DIExpression()), !dbg !3301
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !3304
  %4 = icmp eq ptr %3, null, !dbg !3306
  br i1 %4, label %5, label %6, !dbg !3307

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3308
  unreachable, !dbg !3308

6:                                                ; preds = %2
  ret ptr %3, !dbg !3309
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3310 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3314, metadata !DIExpression()), !dbg !3316
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3315, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i64 %1, metadata !3005, metadata !DIExpression()), !dbg !3317
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3319
  call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !3320
  %4 = icmp eq ptr %3, null, !dbg !3322
  br i1 %4, label %5, label %6, !dbg !3323

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3324
  unreachable, !dbg !3324

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3325, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3333
  call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3335
  ret ptr %3, !dbg !3336
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3337 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3341, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i64 %1, metadata !3019, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3021, metadata !DIExpression()), !dbg !3346
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3348
  call void @llvm.dbg.value(metadata ptr %3, metadata !2981, metadata !DIExpression()), !dbg !3349
  %4 = icmp eq ptr %3, null, !dbg !3351
  br i1 %4, label %5, label %6, !dbg !3352

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3353
  unreachable, !dbg !3353

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3325, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3356
  ret ptr %3, !dbg !3357
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3358 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3362, metadata !DIExpression()), !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3363, metadata !DIExpression()), !dbg !3365
  %3 = add nsw i64 %1, 1, !dbg !3366
  call void @llvm.dbg.value(metadata i64 %3, metadata !3019, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 %3, metadata !3021, metadata !DIExpression()), !dbg !3369
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3371
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !3372
  %5 = icmp eq ptr %4, null, !dbg !3374
  br i1 %5, label %6, label %7, !dbg !3375

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3376
  unreachable, !dbg !3376

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3364, metadata !DIExpression()), !dbg !3365
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3377
  store i8 0, ptr %8, align 1, !dbg !3378, !tbaa !824
  call void @llvm.dbg.value(metadata ptr %4, metadata !3325, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.value(metadata i64 %1, metadata !3332, metadata !DIExpression()), !dbg !3379
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !3381
  ret ptr %4, !dbg !3382
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3383 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3385, metadata !DIExpression()), !dbg !3386
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !3387
  %3 = add i64 %2, 1, !dbg !3388
  call void @llvm.dbg.value(metadata ptr %0, metadata !3314, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %3, metadata !3315, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.value(metadata i64 %3, metadata !3005, metadata !DIExpression()), !dbg !3391
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3393
  call void @llvm.dbg.value(metadata ptr %4, metadata !2981, metadata !DIExpression()), !dbg !3394
  %5 = icmp eq ptr %4, null, !dbg !3396
  br i1 %5, label %6, label %7, !dbg !3397

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3398
  unreachable, !dbg !3398

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3325, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata ptr %0, metadata !3331, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.value(metadata i64 %3, metadata !3332, metadata !DIExpression()), !dbg !3399
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !3401
  ret ptr %4, !dbg !3402
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3403 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3408, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3405, metadata !DIExpression()), !dbg !3409
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.109, ptr noundef nonnull @.str.2.110, i32 noundef 5) #37, !dbg !3408
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.111, ptr noundef %2) #37, !dbg !3408
  %3 = icmp eq i32 %1, 0, !dbg !3408
  tail call void @llvm.assume(i1 %3), !dbg !3408
  tail call void @abort() #39, !dbg !3410
  unreachable, !dbg !3410
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #34

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3411 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3449, metadata !DIExpression()), !dbg !3454
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !3455
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3450, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3454
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3456, metadata !DIExpression()), !dbg !3459
  %3 = load i32, ptr %0, align 8, !dbg !3461, !tbaa !3462
  %4 = and i32 %3, 32, !dbg !3463
  %5 = icmp eq i32 %4, 0, !dbg !3463
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !3452, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3454
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !3464
  %7 = icmp eq i32 %6, 0, !dbg !3465
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !3453, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3454
  br i1 %5, label %8, label %18, !dbg !3466

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !3468
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !3450, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3454
  %10 = select i1 %7, i1 true, i1 %9, !dbg !3469
  %11 = xor i1 %7, true, !dbg !3469
  %12 = sext i1 %11 to i32, !dbg !3469
  br i1 %10, label %21, label %13, !dbg !3469

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !3470
  %15 = load i32, ptr %14, align 4, !dbg !3470, !tbaa !815
  %16 = icmp ne i32 %15, 9, !dbg !3471
  %17 = sext i1 %16 to i32, !dbg !3472
  br label %21, !dbg !3472

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !3473

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !3475
  store i32 0, ptr %20, align 4, !dbg !3477, !tbaa !815
  br label %21, !dbg !3475

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3454
  ret i32 %22, !dbg !3478
}

; Function Attrs: nounwind
declare !dbg !3479 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !3483 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3521, metadata !DIExpression()), !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3525
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3526
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3523, metadata !DIExpression()), !dbg !3525
  %3 = icmp slt i32 %2, 0, !dbg !3527
  br i1 %3, label %4, label %6, !dbg !3529

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3530
  br label %24, !dbg !3531

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3532
  %8 = icmp eq i32 %7, 0, !dbg !3532
  br i1 %8, label %13, label %9, !dbg !3534

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3535
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !3536
  %12 = icmp eq i64 %11, -1, !dbg !3537
  br i1 %12, label %16, label %13, !dbg !3538

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !3539
  %15 = icmp eq i32 %14, 0, !dbg !3539
  br i1 %15, label %16, label %18, !dbg !3540

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3522, metadata !DIExpression()), !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3524, metadata !DIExpression()), !dbg !3525
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3541
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !3524, metadata !DIExpression()), !dbg !3525
  br label %24, !dbg !3542

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !3543
  %20 = load i32, ptr %19, align 4, !dbg !3543, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !3522, metadata !DIExpression()), !dbg !3525
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3524, metadata !DIExpression()), !dbg !3525
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !3541
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !3524, metadata !DIExpression()), !dbg !3525
  %22 = icmp eq i32 %20, 0, !dbg !3544
  br i1 %22, label %24, label %23, !dbg !3542

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !3546, !tbaa !815
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !3524, metadata !DIExpression()), !dbg !3525
  br label %24, !dbg !3548

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3525
  ret i32 %25, !dbg !3549
}

; Function Attrs: nofree nounwind
declare !dbg !3550 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3551 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !3552 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3553 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !3556 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3594, metadata !DIExpression()), !dbg !3595
  %2 = icmp eq ptr %0, null, !dbg !3596
  br i1 %2, label %6, label %3, !dbg !3598

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !3599
  %5 = icmp eq i32 %4, 0, !dbg !3599
  br i1 %5, label %6, label %8, !dbg !3600

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !3601
  br label %16, !dbg !3602

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !3603, metadata !DIExpression()), !dbg !3608
  %9 = load i32, ptr %0, align 8, !dbg !3610, !tbaa !3462
  %10 = and i32 %9, 256, !dbg !3612
  %11 = icmp eq i32 %10, 0, !dbg !3612
  br i1 %11, label %14, label %12, !dbg !3613

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !3614
  br label %14, !dbg !3614

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !3615
  br label %16, !dbg !3616

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !3595
  ret i32 %17, !dbg !3617
}

; Function Attrs: nofree nounwind
declare !dbg !3618 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !3619 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3658, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3659, metadata !DIExpression()), !dbg !3664
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3660, metadata !DIExpression()), !dbg !3664
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !3665
  %5 = load ptr, ptr %4, align 8, !dbg !3665, !tbaa !3666
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !3667
  %7 = load ptr, ptr %6, align 8, !dbg !3667, !tbaa !3668
  %8 = icmp eq ptr %5, %7, !dbg !3669
  br i1 %8, label %9, label %27, !dbg !3670

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !3671
  %11 = load ptr, ptr %10, align 8, !dbg !3671, !tbaa !1192
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !3672
  %13 = load ptr, ptr %12, align 8, !dbg !3672, !tbaa !3673
  %14 = icmp eq ptr %11, %13, !dbg !3674
  br i1 %14, label %15, label %27, !dbg !3675

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !3676
  %17 = load ptr, ptr %16, align 8, !dbg !3676, !tbaa !3677
  %18 = icmp eq ptr %17, null, !dbg !3678
  br i1 %18, label %19, label %27, !dbg !3679

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !3680
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !3681
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3661, metadata !DIExpression()), !dbg !3682
  %22 = icmp eq i64 %21, -1, !dbg !3683
  br i1 %22, label %29, label %23, !dbg !3685

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !3686, !tbaa !3462
  %25 = and i32 %24, -17, !dbg !3686
  store i32 %25, ptr %0, align 8, !dbg !3686, !tbaa !3462
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !3687
  store i64 %21, ptr %26, align 8, !dbg !3688, !tbaa !3689
  br label %29, !dbg !3690

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3691
  br label %29, !dbg !3692

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !3664
  ret i32 %30, !dbg !3693
}

; Function Attrs: nofree nounwind
declare !dbg !3694 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3697 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3702, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3703, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3704, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3705, metadata !DIExpression()), !dbg !3707
  %5 = icmp eq ptr %1, null, !dbg !3708
  %6 = select i1 %5, ptr null, ptr %0, !dbg !3710
  %7 = select i1 %5, ptr @.str.122, ptr %1, !dbg !3710
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3710
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !3704, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3703, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3702, metadata !DIExpression()), !dbg !3707
  %9 = icmp eq ptr %3, null, !dbg !3711
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !3713
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !3705, metadata !DIExpression()), !dbg !3707
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #37, !dbg !3714
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3706, metadata !DIExpression()), !dbg !3707
  %12 = icmp ult i64 %11, -3, !dbg !3715
  br i1 %12, label %13, label %17, !dbg !3717

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #38, !dbg !3718
  %15 = icmp eq i32 %14, 0, !dbg !3718
  br i1 %15, label %16, label %29, !dbg !3719

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !3720, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata ptr %10, metadata !3727, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i32 0, metadata !3730, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.value(metadata i64 8, metadata !3731, metadata !DIExpression()), !dbg !3732
  store i64 0, ptr %10, align 1, !dbg !3734
  br label %29, !dbg !3735

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !3736
  br i1 %18, label %19, label %20, !dbg !3738

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !3739
  unreachable, !dbg !3739

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !3740

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !3742
  br i1 %23, label %29, label %24, !dbg !3743

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !3744
  br i1 %25, label %29, label %26, !dbg !3747

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !3748, !tbaa !824
  %28 = zext i8 %27 to i32, !dbg !3749
  store i32 %28, ptr %6, align 4, !dbg !3750, !tbaa !815
  br label %29, !dbg !3751

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !3707
  ret i64 %30, !dbg !3752
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !3753 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !3759 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3761, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3762, metadata !DIExpression()), !dbg !3765
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3763, metadata !DIExpression()), !dbg !3765
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !3766
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3764, metadata !DIExpression()), !dbg !3765
  br i1 %5, label %6, label %8, !dbg !3768

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #40, !dbg !3769
  store i32 12, ptr %7, align 4, !dbg !3771, !tbaa !815
  br label %12, !dbg !3772

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !3766
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !3764, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.value(metadata ptr %0, metadata !3773, metadata !DIExpression()), !dbg !3777
  call void @llvm.dbg.value(metadata i64 %9, metadata !3776, metadata !DIExpression()), !dbg !3777
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !3779
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #43, !dbg !3780
  br label %12, !dbg !3781

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !3765
  ret ptr %13, !dbg !3782
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !3783 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !3792
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3788, metadata !DIExpression(), metadata !3792, metadata ptr %2, metadata !DIExpression()), !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3787, metadata !DIExpression()), !dbg !3793
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !3794
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !3795
  %4 = icmp eq i32 %3, 0, !dbg !3795
  br i1 %4, label %5, label %12, !dbg !3797

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !3798, metadata !DIExpression()), !dbg !3802
  call void @llvm.dbg.value(metadata !782, metadata !3801, metadata !DIExpression()), !dbg !3802
  %6 = load i16, ptr %2, align 16, !dbg !3805
  %7 = icmp eq i16 %6, 67, !dbg !3805
  br i1 %7, label %11, label %8, !dbg !3806

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !3798, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata ptr @.str.1.127, metadata !3801, metadata !DIExpression()), !dbg !3807
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.127, i64 6), !dbg !3809
  %10 = icmp eq i32 %9, 0, !dbg !3810
  br i1 %10, label %11, label %12, !dbg !3811

11:                                               ; preds = %8, %5
  br label %12, !dbg !3812

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !3793
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !3813
  ret i1 %13, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3814 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3818, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3819, metadata !DIExpression()), !dbg !3821
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3820, metadata !DIExpression()), !dbg !3821
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !3822
  ret i32 %4, !dbg !3823
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !3824 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3828, metadata !DIExpression()), !dbg !3829
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !3830
  ret ptr %2, !dbg !3831
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !3832 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3834, metadata !DIExpression()), !dbg !3836
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3837
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3835, metadata !DIExpression()), !dbg !3836
  ret ptr %2, !dbg !3838
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3839 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3841, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3842, metadata !DIExpression()), !dbg !3848
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3843, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i32 %0, metadata !3834, metadata !DIExpression()), !dbg !3849
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !3851
  call void @llvm.dbg.value(metadata ptr %4, metadata !3835, metadata !DIExpression()), !dbg !3849
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3844, metadata !DIExpression()), !dbg !3848
  %5 = icmp eq ptr %4, null, !dbg !3852
  br i1 %5, label %6, label %9, !dbg !3853

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3854
  br i1 %7, label %19, label %8, !dbg !3857

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !3858, !tbaa !824
  br label %19, !dbg !3859

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !3860
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !3845, metadata !DIExpression()), !dbg !3861
  %11 = icmp ult i64 %10, %2, !dbg !3862
  br i1 %11, label %12, label %14, !dbg !3864

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3865
  call void @llvm.dbg.value(metadata ptr %1, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata ptr %4, metadata !3870, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %13, metadata !3871, metadata !DIExpression()), !dbg !3872
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #37, !dbg !3874
  br label %19, !dbg !3875

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3876
  br i1 %15, label %19, label %16, !dbg !3879

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3880
  call void @llvm.dbg.value(metadata ptr %1, metadata !3867, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata ptr %4, metadata !3870, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i64 %17, metadata !3871, metadata !DIExpression()), !dbg !3882
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !3884
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !3885
  store i8 0, ptr %18, align 1, !dbg !3886, !tbaa !824
  br label %19, !dbg !3887

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3888
  ret i32 %20, !dbg !3889
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

!llvm.dbg.cu = !{!74, !311, !315, !330, !640, !672, !384, !405, !419, !470, !674, !632, !680, !715, !717, !719, !721, !723, !656, !725, !727, !731, !733}
!llvm.ident = !{!735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735, !735}
!llvm.module.flags = !{!736, !737, !738, !739, !740, !741, !742}

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
!329 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !330, file: !331, line: 66, type: !376, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C11, file: !331, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !332, globals: !333, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!332 = !{!107, !113}
!333 = !{!334, !336, !355, !357, !359, !361, !328, !363, !365, !367, !369, !374}
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !331, line: 272, type: !117, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "old_file_name", scope: !338, file: !331, line: 304, type: !72, isLocal: true, isDefinition: true)
!338 = distinct !DISubprogram(name: "verror_at_line", scope: !331, file: !331, line: 298, type: !339, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !348)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !108, !108, !72, !78, !72, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !343)
!343 = !{!344, !345, !346, !347}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !342, file: !331, baseType: !78, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !342, file: !331, baseType: !78, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !342, file: !331, baseType: !107, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !342, file: !331, baseType: !107, size: 64, offset: 128)
!348 = !{!349, !350, !351, !352, !353, !354}
!349 = !DILocalVariable(name: "status", arg: 1, scope: !338, file: !331, line: 298, type: !108)
!350 = !DILocalVariable(name: "errnum", arg: 2, scope: !338, file: !331, line: 298, type: !108)
!351 = !DILocalVariable(name: "file_name", arg: 3, scope: !338, file: !331, line: 298, type: !72)
!352 = !DILocalVariable(name: "line_number", arg: 4, scope: !338, file: !331, line: 298, type: !78)
!353 = !DILocalVariable(name: "message", arg: 5, scope: !338, file: !331, line: 298, type: !72)
!354 = !DILocalVariable(name: "args", arg: 6, scope: !338, file: !331, line: 298, type: !341)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "old_line_number", scope: !338, file: !331, line: 305, type: !78, isLocal: true, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !331, line: 338, type: !124, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !156, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !331, line: 346, type: !134, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "error_message_count", scope: !330, file: !331, line: 69, type: !78, isLocal: false, isDefinition: true)
!365 = !DIGlobalVariableExpression(var: !366, expr: !DIExpression())
!366 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !330, file: !331, line: 295, type: !108, isLocal: false, isDefinition: true)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !19, isLocal: true, isDefinition: true)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !331, line: 208, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 21)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !331, line: 214, type: !117, isLocal: true, isDefinition: true)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null}
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !381, line: 60, type: !134, isLocal: true, isDefinition: true)
!381 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(name: "long_options", scope: !384, file: !381, line: 34, type: !393, isLocal: true, isDefinition: true)
!384 = distinct !DICompileUnit(language: DW_LANG_C11, file: !381, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !385, globals: !386, splitDebugInlining: false, nameTableKind: None)
!385 = !{!107}
!386 = !{!379, !387, !389, !391, !382}
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !381, line: 112, type: !34, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !381, line: 36, type: !117, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !381, line: 37, type: !156, isLocal: true, isDefinition: true)
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
!405 = distinct !DICompileUnit(language: DW_LANG_C11, file: !406, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, globals: !408, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!407 = !{!107, !255}
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
!419 = distinct !DICompileUnit(language: DW_LANG_C11, file: !416, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !420, splitDebugInlining: false, nameTableKind: None)
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
!469 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !470, file: !446, line: 76, type: !544, isLocal: false, isDefinition: true)
!470 = distinct !DICompileUnit(language: DW_LANG_C11, file: !446, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !471, retainedTypes: !479, globals: !480, splitDebugInlining: false, nameTableKind: None)
!471 = !{!472, !474, !91}
!472 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !473, line: 42, baseType: !78, size: 32, elements: !79)
!473 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!474 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !473, line: 254, baseType: !78, size: 32, elements: !475)
!475 = !{!476, !477, !478}
!476 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!477 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!478 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!479 = !{!107, !108, !109, !110}
!480 = !{!444, !447, !449, !454, !456, !458, !460, !462, !464, !466, !468, !481, !485, !495, !497, !502, !504, !506, !508, !510, !533, !540, !542}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !470, file: !446, line: 92, type: !483, isLocal: false, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 320, elements: !40)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !472)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !470, file: !446, line: 1040, type: !487, isLocal: false, isDefinition: true)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !446, line: 56, size: 448, elements: !488)
!488 = !{!489, !490, !491, !493, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !487, file: !446, line: 59, baseType: !472, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !446, line: 62, baseType: !108, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !487, file: !446, line: 66, baseType: !492, size: 256, offset: 64)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 256, elements: !157)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !487, file: !446, line: 69, baseType: !72, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !487, file: !446, line: 72, baseType: !72, size: 64, offset: 384)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !470, file: !446, line: 107, type: !487, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(name: "slot0", scope: !470, file: !446, line: 831, type: !499, isLocal: true, isDefinition: true)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 256)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !446, line: 321, type: !134, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !446, line: 357, type: !134, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !446, line: 358, type: !134, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !446, line: 199, type: !19, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(name: "quote", scope: !512, file: !446, line: 228, type: !531, isLocal: true, isDefinition: true)
!512 = distinct !DISubprogram(name: "gettext_quote", scope: !446, file: !446, line: 197, type: !513, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!72, !72, !472}
!515 = !{!516, !517, !518, !519, !520}
!516 = !DILocalVariable(name: "msgid", arg: 1, scope: !512, file: !446, line: 197, type: !72)
!517 = !DILocalVariable(name: "s", arg: 2, scope: !512, file: !446, line: 197, type: !472)
!518 = !DILocalVariable(name: "translation", scope: !512, file: !446, line: 199, type: !72)
!519 = !DILocalVariable(name: "w", scope: !512, file: !446, line: 229, type: !426)
!520 = !DILocalVariable(name: "mbs", scope: !512, file: !446, line: 230, type: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !523)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !523, file: !434, line: 15, baseType: !108, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !523, file: !434, line: 20, baseType: !527, size: 32, offset: 32)
!527 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !523, file: !434, line: 16, size: 32, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !527, file: !434, line: 18, baseType: !78, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !527, file: !434, line: 19, baseType: !124, size: 32)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !532)
!532 = !{!136, !126}
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "slotvec", scope: !470, file: !446, line: 834, type: !535, isLocal: true, isDefinition: true)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !446, line: 823, size: 128, elements: !537)
!537 = !{!538, !539}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !536, file: !446, line: 825, baseType: !110, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !536, file: !446, line: 826, baseType: !255, size: 64, offset: 64)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(name: "nslots", scope: !470, file: !446, line: 832, type: !108, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(name: "slotvec0", scope: !470, file: !446, line: 833, type: !536, isLocal: true, isDefinition: true)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 704, elements: !546)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!546 = !{!547}
!547 = !DISubrange(count: 11)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !550, line: 67, type: !224, isLocal: true, isDefinition: true)
!550 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(scope: null, file: !550, line: 69, type: !19, isLocal: true, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(scope: null, file: !550, line: 83, type: !19, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !550, line: 83, type: !124, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !550, line: 85, type: !134, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !550, line: 88, type: !561, isLocal: true, isDefinition: true)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 171)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !550, line: 88, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 34)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !550, line: 105, type: !56, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !550, line: 109, type: !573, isLocal: true, isDefinition: true)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 23)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !550, line: 113, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 28)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(scope: null, file: !550, line: 120, type: !583, isLocal: true, isDefinition: true)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 32)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !550, line: 127, type: !588, isLocal: true, isDefinition: true)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !589)
!589 = !{!590}
!590 = !DISubrange(count: 36)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !550, line: 134, type: !175, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !550, line: 142, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 44)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !550, line: 150, type: !600, isLocal: true, isDefinition: true)
!600 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !601)
!601 = !{!602}
!602 = !DISubrange(count: 48)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !550, line: 159, type: !605, isLocal: true, isDefinition: true)
!605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !606)
!606 = !{!607}
!607 = !DISubrange(count: 52)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !550, line: 170, type: !610, isLocal: true, isDefinition: true)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 60)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !550, line: 248, type: !297, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !550, line: 248, type: !200, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !550, line: 254, type: !297, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !550, line: 254, type: !49, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !550, line: 254, type: !175, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !550, line: 259, type: !3, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !550, line: 259, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 29)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !632, file: !633, line: 26, type: !635, isLocal: false, isDefinition: true)
!632 = distinct !DICompileUnit(language: DW_LANG_C11, file: !633, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !634, splitDebugInlining: false, nameTableKind: None)
!633 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!634 = !{!630}
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 376, elements: !636)
!636 = !{!637}
!637 = !DISubrange(count: 47)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "exit_failure", scope: !640, file: !641, line: 24, type: !643, isLocal: false, isDefinition: true)
!640 = distinct !DICompileUnit(language: DW_LANG_C11, file: !641, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !642, splitDebugInlining: false, nameTableKind: None)
!641 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!642 = !{!638}
!643 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !108)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !646, line: 34, type: !143, isLocal: true, isDefinition: true)
!646 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !646, line: 34, type: !19, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !646, line: 34, type: !61, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !653, line: 108, type: !34, isLocal: true, isDefinition: true)
!653 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(name: "internal_state", scope: !656, file: !653, line: 97, type: !659, isLocal: true, isDefinition: true)
!656 = distinct !DICompileUnit(language: DW_LANG_C11, file: !653, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !657, globals: !658, splitDebugInlining: false, nameTableKind: None)
!657 = !{!107, !110, !113}
!658 = !{!651, !654}
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !432, line: 6, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !434, line: 21, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 13, size: 64, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !661, file: !434, line: 15, baseType: !108, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !661, file: !434, line: 20, baseType: !665, size: 32, offset: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !434, line: 16, size: 32, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !665, file: !434, line: 18, baseType: !78, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !665, file: !434, line: 19, baseType: !124, size: 32)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !671, line: 35, type: !129, isLocal: true, isDefinition: true)
!671 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!674 = distinct !DICompileUnit(language: DW_LANG_C11, file: !550, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !675, retainedTypes: !385, globals: !679, splitDebugInlining: false, nameTableKind: None)
!675 = !{!676}
!676 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !550, line: 40, baseType: !78, size: 32, elements: !677)
!677 = !{!678}
!678 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!679 = !{!548, !551, !553, !555, !557, !559, !564, !569, !571, !576, !581, !586, !591, !593, !598, !603, !608, !613, !615, !617, !619, !621, !623, !625}
!680 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !682, retainedTypes: !714, splitDebugInlining: false, nameTableKind: None)
!681 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!682 = !{!683, !695}
!683 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !684, file: !681, line: 188, baseType: !78, size: 32, elements: !693)
!684 = distinct !DISubprogram(name: "x2nrealloc", scope: !681, file: !681, line: 176, type: !685, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !688)
!685 = !DISubroutineType(types: !686)
!686 = !{!107, !107, !687, !110}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!688 = !{!689, !690, !691, !692}
!689 = !DILocalVariable(name: "p", arg: 1, scope: !684, file: !681, line: 176, type: !107)
!690 = !DILocalVariable(name: "pn", arg: 2, scope: !684, file: !681, line: 176, type: !687)
!691 = !DILocalVariable(name: "s", arg: 3, scope: !684, file: !681, line: 176, type: !110)
!692 = !DILocalVariable(name: "n", scope: !684, file: !681, line: 178, type: !110)
!693 = !{!694}
!694 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!695 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !696, file: !681, line: 228, baseType: !78, size: 32, elements: !693)
!696 = distinct !DISubprogram(name: "xpalloc", scope: !681, file: !681, line: 223, type: !697, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !704)
!697 = !DISubroutineType(types: !698)
!698 = !{!107, !107, !699, !700, !702, !700}
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !701, line: 130, baseType: !702)
!701 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !703, line: 18, baseType: !276)
!703 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!704 = !{!705, !706, !707, !708, !709, !710, !711, !712, !713}
!705 = !DILocalVariable(name: "pa", arg: 1, scope: !696, file: !681, line: 223, type: !107)
!706 = !DILocalVariable(name: "pn", arg: 2, scope: !696, file: !681, line: 223, type: !699)
!707 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !696, file: !681, line: 223, type: !700)
!708 = !DILocalVariable(name: "n_max", arg: 4, scope: !696, file: !681, line: 223, type: !702)
!709 = !DILocalVariable(name: "s", arg: 5, scope: !696, file: !681, line: 223, type: !700)
!710 = !DILocalVariable(name: "n0", scope: !696, file: !681, line: 230, type: !700)
!711 = !DILocalVariable(name: "n", scope: !696, file: !681, line: 237, type: !700)
!712 = !DILocalVariable(name: "nbytes", scope: !696, file: !681, line: 248, type: !700)
!713 = !DILocalVariable(name: "adjusted_nbytes", scope: !696, file: !681, line: 252, type: !700)
!714 = !{!255, !107}
!715 = distinct !DICompileUnit(language: DW_LANG_C11, file: !646, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !716, splitDebugInlining: false, nameTableKind: None)
!716 = !{!644, !647, !649}
!717 = distinct !DICompileUnit(language: DW_LANG_C11, file: !718, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!718 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!721 = distinct !DICompileUnit(language: DW_LANG_C11, file: !722, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !385, splitDebugInlining: false, nameTableKind: None)
!722 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!723 = distinct !DICompileUnit(language: DW_LANG_C11, file: !724, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !385, splitDebugInlining: false, nameTableKind: None)
!724 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!725 = distinct !DICompileUnit(language: DW_LANG_C11, file: !726, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !385, splitDebugInlining: false, nameTableKind: None)
!726 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !671, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !728, splitDebugInlining: false, nameTableKind: None)
!728 = !{!729, !669}
!729 = !DIGlobalVariableExpression(var: !730, expr: !DIExpression())
!730 = distinct !DIGlobalVariable(scope: null, file: !671, line: 35, type: !134, isLocal: true, isDefinition: true)
!731 = distinct !DICompileUnit(language: DW_LANG_C11, file: !732, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!732 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!733 = distinct !DICompileUnit(language: DW_LANG_C11, file: !734, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !385, splitDebugInlining: false, nameTableKind: None)
!734 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!735 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!736 = !{i32 7, !"Dwarf Version", i32 5}
!737 = !{i32 2, !"Debug Info Version", i32 3}
!738 = !{i32 1, !"wchar_size", i32 4}
!739 = !{i32 8, !"PIC Level", i32 2}
!740 = !{i32 7, !"PIE Level", i32 2}
!741 = !{i32 7, !"uwtable", i32 2}
!742 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!743 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 37, type: !744, scopeLine: 38, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{null, !108}
!746 = !{!747}
!747 = !DILocalVariable(name: "status", arg: 1, scope: !743, file: !2, line: 37, type: !108)
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
!761 = !DILocation(line: 48, column: 7, scope: !759)
!762 = !DILocation(line: 49, column: 7, scope: !759)
!763 = !DILocalVariable(name: "program", arg: 1, scope: !764, file: !69, line: 836, type: !72)
!764 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !69, file: !69, line: 836, type: !765, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !767)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !72}
!767 = !{!763, !768, !775, !776, !778, !779}
!768 = !DILocalVariable(name: "infomap", scope: !764, file: !69, line: 838, type: !769)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !770, size: 896, elements: !20)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !764, file: !69, line: 838, size: 128, elements: !772)
!772 = !{!773, !774}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !771, file: !69, line: 838, baseType: !72, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !771, file: !69, line: 838, baseType: !72, size: 64, offset: 64)
!775 = !DILocalVariable(name: "node", scope: !764, file: !69, line: 848, type: !72)
!776 = !DILocalVariable(name: "map_prog", scope: !764, file: !69, line: 849, type: !777)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!778 = !DILocalVariable(name: "lc_messages", scope: !764, file: !69, line: 861, type: !72)
!779 = !DILocalVariable(name: "url_program", scope: !764, file: !69, line: 874, type: !72)
!780 = !DILocation(line: 0, scope: !764, inlinedAt: !781)
!781 = distinct !DILocation(line: 50, column: 7, scope: !759)
!782 = !{}
!783 = !DILocation(line: 857, column: 3, scope: !764, inlinedAt: !781)
!784 = !DILocation(line: 861, column: 29, scope: !764, inlinedAt: !781)
!785 = !DILocation(line: 862, column: 7, scope: !786, inlinedAt: !781)
!786 = distinct !DILexicalBlock(scope: !764, file: !69, line: 862, column: 7)
!787 = !DILocation(line: 862, column: 19, scope: !786, inlinedAt: !781)
!788 = !DILocation(line: 862, column: 22, scope: !786, inlinedAt: !781)
!789 = !DILocation(line: 862, column: 7, scope: !764, inlinedAt: !781)
!790 = !DILocation(line: 868, column: 7, scope: !791, inlinedAt: !781)
!791 = distinct !DILexicalBlock(scope: !786, file: !69, line: 863, column: 5)
!792 = !DILocation(line: 870, column: 5, scope: !791, inlinedAt: !781)
!793 = !DILocation(line: 875, column: 3, scope: !764, inlinedAt: !781)
!794 = !DILocation(line: 877, column: 3, scope: !764, inlinedAt: !781)
!795 = !DILocation(line: 52, column: 3, scope: !743)
!796 = !DISubprogram(name: "dcgettext", scope: !797, file: !797, line: 51, type: !798, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!797 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!798 = !DISubroutineType(types: !799)
!799 = !{!255, !72, !72, !108}
!800 = !DISubprogram(name: "__fprintf_chk", scope: !801, file: !801, line: 93, type: !802, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!801 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!802 = !DISubroutineType(types: !803)
!803 = !{!108, !804, !108, !805, null}
!804 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !247)
!805 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!806 = !DISubprogram(name: "__printf_chk", scope: !801, file: !801, line: 95, type: !807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!807 = !DISubroutineType(types: !808)
!808 = !{!108, !108, !805, null}
!809 = !DISubprogram(name: "fputs_unlocked", scope: !810, file: !810, line: 691, type: !811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!810 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!811 = !DISubroutineType(types: !812)
!812 = !{!108, !805, !804}
!813 = !DILocation(line: 0, scope: !68)
!814 = !DILocation(line: 581, column: 7, scope: !232)
!815 = !{!816, !816, i64 0}
!816 = !{!"int", !756, i64 0}
!817 = !DILocation(line: 581, column: 19, scope: !232)
!818 = !DILocation(line: 581, column: 7, scope: !68)
!819 = !DILocation(line: 585, column: 26, scope: !231)
!820 = !DILocation(line: 0, scope: !231)
!821 = !DILocation(line: 586, column: 23, scope: !231)
!822 = !DILocation(line: 586, column: 28, scope: !231)
!823 = !DILocation(line: 586, column: 32, scope: !231)
!824 = !{!756, !756, i64 0}
!825 = !DILocation(line: 586, column: 38, scope: !231)
!826 = !DILocalVariable(name: "__s1", arg: 1, scope: !827, file: !828, line: 1359, type: !72)
!827 = distinct !DISubprogram(name: "streq", scope: !828, file: !828, line: 1359, type: !829, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !74, retainedNodes: !831)
!828 = !DIFile(filename: "./lib/string.h", directory: "/src")
!829 = !DISubroutineType(types: !830)
!830 = !{!234, !72, !72}
!831 = !{!826, !832}
!832 = !DILocalVariable(name: "__s2", arg: 2, scope: !827, file: !828, line: 1359, type: !72)
!833 = !DILocation(line: 0, scope: !827, inlinedAt: !834)
!834 = distinct !DILocation(line: 586, column: 41, scope: !231)
!835 = !DILocation(line: 1361, column: 11, scope: !827, inlinedAt: !834)
!836 = !DILocation(line: 1361, column: 10, scope: !827, inlinedAt: !834)
!837 = !DILocation(line: 586, column: 19, scope: !231)
!838 = !DILocation(line: 587, column: 5, scope: !231)
!839 = !DILocation(line: 588, column: 7, scope: !840)
!840 = distinct !DILexicalBlock(scope: !68, file: !69, line: 588, column: 7)
!841 = !DILocation(line: 588, column: 7, scope: !68)
!842 = !DILocation(line: 590, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !840, file: !69, line: 589, column: 5)
!844 = !DILocation(line: 591, column: 7, scope: !843)
!845 = !DILocation(line: 595, column: 37, scope: !68)
!846 = !DILocation(line: 595, column: 35, scope: !68)
!847 = !DILocation(line: 596, column: 29, scope: !68)
!848 = !DILocation(line: 597, column: 8, scope: !240)
!849 = !DILocation(line: 597, column: 7, scope: !68)
!850 = !DILocation(line: 604, column: 24, scope: !239)
!851 = !DILocation(line: 604, column: 12, scope: !240)
!852 = !DILocation(line: 0, scope: !238)
!853 = !DILocation(line: 610, column: 16, scope: !238)
!854 = !DILocation(line: 610, column: 7, scope: !238)
!855 = !DILocation(line: 611, column: 21, scope: !238)
!856 = !{!857, !857, i64 0}
!857 = !{!"short", !756, i64 0}
!858 = !DILocation(line: 611, column: 19, scope: !238)
!859 = !DILocation(line: 611, column: 16, scope: !238)
!860 = !DILocation(line: 610, column: 30, scope: !238)
!861 = distinct !{!861, !854, !855, !862}
!862 = !{!"llvm.loop.mustprogress"}
!863 = !DILocation(line: 612, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !238, file: !69, line: 612, column: 11)
!865 = !DILocation(line: 612, column: 11, scope: !238)
!866 = !DILocation(line: 620, column: 23, scope: !68)
!867 = !DILocation(line: 625, column: 39, scope: !68)
!868 = !DILocation(line: 626, column: 3, scope: !68)
!869 = !DILocation(line: 626, column: 10, scope: !68)
!870 = !DILocation(line: 626, column: 21, scope: !68)
!871 = !DILocation(line: 628, column: 44, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !69, line: 628, column: 11)
!873 = distinct !DILexicalBlock(scope: !68, file: !69, line: 627, column: 5)
!874 = !DILocation(line: 628, column: 32, scope: !872)
!875 = !DILocation(line: 628, column: 49, scope: !872)
!876 = !DILocation(line: 628, column: 11, scope: !873)
!877 = !DILocation(line: 630, column: 11, scope: !878)
!878 = distinct !DILexicalBlock(scope: !873, file: !69, line: 630, column: 11)
!879 = !DILocation(line: 630, column: 11, scope: !873)
!880 = !DILocation(line: 632, column: 26, scope: !881)
!881 = distinct !DILexicalBlock(scope: !882, file: !69, line: 632, column: 15)
!882 = distinct !DILexicalBlock(scope: !878, file: !69, line: 631, column: 9)
!883 = !DILocation(line: 632, column: 34, scope: !881)
!884 = !DILocation(line: 632, column: 37, scope: !881)
!885 = !DILocation(line: 632, column: 15, scope: !882)
!886 = !DILocation(line: 636, column: 16, scope: !887)
!887 = distinct !DILexicalBlock(scope: !882, file: !69, line: 636, column: 15)
!888 = !DILocation(line: 636, column: 29, scope: !887)
!889 = !DILocation(line: 640, column: 16, scope: !873)
!890 = distinct !{!890, !868, !891, !862}
!891 = !DILocation(line: 641, column: 5, scope: !68)
!892 = !DILocation(line: 644, column: 3, scope: !68)
!893 = !DILocation(line: 0, scope: !827, inlinedAt: !894)
!894 = distinct !DILocation(line: 648, column: 31, scope: !68)
!895 = !DILocation(line: 0, scope: !827, inlinedAt: !896)
!896 = distinct !DILocation(line: 649, column: 31, scope: !68)
!897 = !DILocation(line: 0, scope: !827, inlinedAt: !898)
!898 = distinct !DILocation(line: 650, column: 31, scope: !68)
!899 = !DILocation(line: 0, scope: !827, inlinedAt: !900)
!900 = distinct !DILocation(line: 651, column: 31, scope: !68)
!901 = !DILocation(line: 0, scope: !827, inlinedAt: !902)
!902 = distinct !DILocation(line: 652, column: 31, scope: !68)
!903 = !DILocation(line: 0, scope: !827, inlinedAt: !904)
!904 = distinct !DILocation(line: 653, column: 31, scope: !68)
!905 = !DILocation(line: 0, scope: !827, inlinedAt: !906)
!906 = distinct !DILocation(line: 654, column: 31, scope: !68)
!907 = !DILocation(line: 0, scope: !827, inlinedAt: !908)
!908 = distinct !DILocation(line: 655, column: 31, scope: !68)
!909 = !DILocation(line: 0, scope: !827, inlinedAt: !910)
!910 = distinct !DILocation(line: 656, column: 31, scope: !68)
!911 = !DILocation(line: 0, scope: !827, inlinedAt: !912)
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
!930 = !DISubprogram(name: "setlocale", scope: !931, file: !931, line: 122, type: !932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!931 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!932 = !DISubroutineType(types: !933)
!933 = !{!255, !108, !72}
!934 = !DISubprogram(name: "strncmp", scope: !935, file: !935, line: 159, type: !936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!935 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!936 = !DISubroutineType(types: !937)
!937 = !{!108, !72, !72, !110}
!938 = !DISubprogram(name: "exit", scope: !939, file: !939, line: 624, type: !744, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!939 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!940 = !DISubprogram(name: "getenv", scope: !939, file: !939, line: 641, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!941 = !DISubroutineType(types: !942)
!942 = !{!255, !72}
!943 = !DISubprogram(name: "strcmp", scope: !935, file: !935, line: 156, type: !944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!944 = !DISubroutineType(types: !945)
!945 = !{!108, !72, !72}
!946 = !DISubprogram(name: "strspn", scope: !935, file: !935, line: 297, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubroutineType(types: !948)
!948 = !{!112, !72, !72}
!949 = !DISubprogram(name: "strchr", scope: !935, file: !935, line: 246, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!950 = !DISubroutineType(types: !951)
!951 = !{!255, !72, !108}
!952 = !DISubprogram(name: "__ctype_b_loc", scope: !92, file: !92, line: 79, type: !953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!953 = !DISubroutineType(types: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!958 = !DISubprogram(name: "strcspn", scope: !935, file: !935, line: 293, type: !947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!959 = !DISubprogram(name: "fwrite_unlocked", scope: !810, file: !810, line: 704, type: !960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!960 = !DISubroutineType(types: !961)
!961 = !{!110, !962, !110, !110, !804}
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
!1003 = !DISubprogram(name: "bindtextdomain", scope: !797, file: !797, line: 86, type: !1004, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!255, !72, !72}
!1006 = !DISubprogram(name: "textdomain", scope: !797, file: !797, line: 82, type: !941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1007 = !DISubprogram(name: "atexit", scope: !939, file: !939, line: 602, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!108, !376}
!1010 = !DISubprogram(name: "unlink", scope: !1011, file: !1011, line: 858, type: !1012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!108, !72}
!1014 = !DISubprogram(name: "__errno_location", scope: !1015, file: !1015, line: 37, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1015 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!401}
!1018 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !316, file: !316, line: 50, type: !765, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1019)
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
!1032 = !{!"_Bool", !756, i64 0}
!1033 = !DILocation(line: 90, column: 1, scope: !1024)
!1034 = distinct !DISubprogram(name: "close_stdout", scope: !316, file: !316, line: 116, type: !377, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !315, retainedNodes: !1035)
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
!1067 = !DISubprogram(name: "_exit", scope: !1011, file: !1011, line: 624, type: !744, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1068 = distinct !DISubprogram(name: "verror", scope: !331, file: !331, line: 251, type: !1069, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1071)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !108, !108, !72, !341}
!1071 = !{!1072, !1073, !1074, !1075}
!1072 = !DILocalVariable(name: "status", arg: 1, scope: !1068, file: !331, line: 251, type: !108)
!1073 = !DILocalVariable(name: "errnum", arg: 2, scope: !1068, file: !331, line: 251, type: !108)
!1074 = !DILocalVariable(name: "message", arg: 3, scope: !1068, file: !331, line: 251, type: !72)
!1075 = !DILocalVariable(name: "args", arg: 4, scope: !1068, file: !331, line: 251, type: !341)
!1076 = !DILocation(line: 0, scope: !1068)
!1077 = !DILocation(line: 261, column: 3, scope: !1068)
!1078 = !DILocation(line: 265, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1068, file: !331, line: 265, column: 7)
!1080 = !DILocation(line: 265, column: 7, scope: !1068)
!1081 = !DILocation(line: 266, column: 5, scope: !1079)
!1082 = !DILocation(line: 272, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !331, line: 268, column: 5)
!1084 = !DILocation(line: 276, column: 3, scope: !1068)
!1085 = !DILocation(line: 282, column: 1, scope: !1068)
!1086 = distinct !DISubprogram(name: "flush_stdout", scope: !331, file: !331, line: 163, type: !377, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1087)
!1087 = !{!1088}
!1088 = !DILocalVariable(name: "stdout_fd", scope: !1086, file: !331, line: 166, type: !108)
!1089 = !DILocation(line: 0, scope: !1086)
!1090 = !DILocalVariable(name: "fd", arg: 1, scope: !1091, file: !331, line: 145, type: !108)
!1091 = distinct !DISubprogram(name: "is_open", scope: !331, file: !331, line: 145, type: !1092, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1094)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!108, !108}
!1094 = !{!1090}
!1095 = !DILocation(line: 0, scope: !1091, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 182, column: 25, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1086, file: !331, line: 182, column: 7)
!1098 = !DILocation(line: 157, column: 15, scope: !1091, inlinedAt: !1096)
!1099 = !DILocation(line: 157, column: 12, scope: !1091, inlinedAt: !1096)
!1100 = !DILocation(line: 182, column: 7, scope: !1086)
!1101 = !DILocation(line: 184, column: 5, scope: !1097)
!1102 = !DILocation(line: 185, column: 1, scope: !1086)
!1103 = distinct !DISubprogram(name: "error_tail", scope: !331, file: !331, line: 219, type: !1069, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1104)
!1104 = !{!1105, !1106, !1107, !1108}
!1105 = !DILocalVariable(name: "status", arg: 1, scope: !1103, file: !331, line: 219, type: !108)
!1106 = !DILocalVariable(name: "errnum", arg: 2, scope: !1103, file: !331, line: 219, type: !108)
!1107 = !DILocalVariable(name: "message", arg: 3, scope: !1103, file: !331, line: 219, type: !72)
!1108 = !DILocalVariable(name: "args", arg: 4, scope: !1103, file: !331, line: 219, type: !341)
!1109 = distinct !DIAssignID()
!1110 = !DILocation(line: 0, scope: !1103)
!1111 = !DILocation(line: 229, column: 13, scope: !1103)
!1112 = !DILocalVariable(name: "__stream", arg: 1, scope: !1113, file: !801, line: 132, type: !1116)
!1113 = distinct !DISubprogram(name: "vfprintf", scope: !801, file: !801, line: 132, type: !1114, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1151)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!108, !1116, !805, !341}
!1116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1117)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1119, file: !251, line: 51, baseType: !108, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1119, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1119, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1119, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1119, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1119, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1119, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1119, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1119, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1119, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1119, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1119, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1119, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1119, file: !251, line: 70, baseType: !1135, size: 64, offset: 832)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1119, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1119, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1119, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1119, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1119, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1119, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1119, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1119, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1119, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1119, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1119, file: !251, line: 93, baseType: !1135, size: 64, offset: 1344)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1119, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1119, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1119, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1119, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!1151 = !{!1112, !1152, !1153}
!1152 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1113, file: !801, line: 133, type: !805)
!1153 = !DILocalVariable(name: "__ap", arg: 3, scope: !1113, file: !801, line: 133, type: !341)
!1154 = !DILocation(line: 0, scope: !1113, inlinedAt: !1155)
!1155 = distinct !DILocation(line: 229, column: 3, scope: !1103)
!1156 = !DILocation(line: 135, column: 10, scope: !1113, inlinedAt: !1155)
!1157 = !DILocation(line: 232, column: 3, scope: !1103)
!1158 = !DILocation(line: 233, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1103, file: !331, line: 233, column: 7)
!1160 = !DILocation(line: 233, column: 7, scope: !1103)
!1161 = !DILocalVariable(name: "errbuf", scope: !1162, file: !331, line: 193, type: !1166)
!1162 = distinct !DISubprogram(name: "print_errno_message", scope: !331, file: !331, line: 188, type: !744, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1163)
!1163 = !{!1164, !1165, !1161}
!1164 = !DILocalVariable(name: "errnum", arg: 1, scope: !1162, file: !331, line: 188, type: !108)
!1165 = !DILocalVariable(name: "s", scope: !1162, file: !331, line: 190, type: !72)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 1024)
!1169 = !DILocation(line: 0, scope: !1162, inlinedAt: !1170)
!1170 = distinct !DILocation(line: 234, column: 5, scope: !1159)
!1171 = !DILocation(line: 193, column: 3, scope: !1162, inlinedAt: !1170)
!1172 = !DILocation(line: 195, column: 7, scope: !1162, inlinedAt: !1170)
!1173 = !DILocation(line: 207, column: 9, scope: !1174, inlinedAt: !1170)
!1174 = distinct !DILexicalBlock(scope: !1162, file: !331, line: 207, column: 7)
!1175 = !DILocation(line: 207, column: 7, scope: !1162, inlinedAt: !1170)
!1176 = !DILocation(line: 208, column: 9, scope: !1174, inlinedAt: !1170)
!1177 = !DILocation(line: 208, column: 5, scope: !1174, inlinedAt: !1170)
!1178 = !DILocation(line: 214, column: 3, scope: !1162, inlinedAt: !1170)
!1179 = !DILocation(line: 216, column: 1, scope: !1162, inlinedAt: !1170)
!1180 = !DILocation(line: 234, column: 5, scope: !1159)
!1181 = !DILocation(line: 238, column: 3, scope: !1103)
!1182 = !DILocalVariable(name: "__c", arg: 1, scope: !1183, file: !1184, line: 101, type: !108)
!1183 = distinct !DISubprogram(name: "putc_unlocked", scope: !1184, file: !1184, line: 101, type: !1185, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1187)
!1184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!108, !108, !1117}
!1187 = !{!1182, !1188}
!1188 = !DILocalVariable(name: "__stream", arg: 2, scope: !1183, file: !1184, line: 101, type: !1117)
!1189 = !DILocation(line: 0, scope: !1183, inlinedAt: !1190)
!1190 = distinct !DILocation(line: 238, column: 3, scope: !1103)
!1191 = !DILocation(line: 103, column: 10, scope: !1183, inlinedAt: !1190)
!1192 = !{!1193, !755, i64 40}
!1193 = !{!"_IO_FILE", !816, i64 0, !755, i64 8, !755, i64 16, !755, i64 24, !755, i64 32, !755, i64 40, !755, i64 48, !755, i64 56, !755, i64 64, !755, i64 72, !755, i64 80, !755, i64 88, !755, i64 96, !755, i64 104, !816, i64 112, !816, i64 116, !1194, i64 120, !857, i64 128, !756, i64 130, !756, i64 131, !755, i64 136, !1194, i64 144, !755, i64 152, !755, i64 160, !755, i64 168, !755, i64 176, !1194, i64 184, !816, i64 192, !756, i64 196}
!1194 = !{!"long", !756, i64 0}
!1195 = !{!1193, !755, i64 48}
!1196 = !{!"branch_weights", i32 2000, i32 1}
!1197 = !DILocation(line: 240, column: 3, scope: !1103)
!1198 = !DILocation(line: 241, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1103, file: !331, line: 241, column: 7)
!1200 = !DILocation(line: 241, column: 7, scope: !1103)
!1201 = !DILocation(line: 242, column: 5, scope: !1199)
!1202 = !DILocation(line: 243, column: 1, scope: !1103)
!1203 = !DISubprogram(name: "__vfprintf_chk", scope: !801, file: !801, line: 96, type: !1204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!108, !1116, !108, !805, !341}
!1206 = !DISubprogram(name: "strerror_r", scope: !935, file: !935, line: 444, type: !1207, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!255, !108, !255, !110}
!1209 = !DISubprogram(name: "__overflow", scope: !810, file: !810, line: 886, type: !1210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!108, !1117, !108}
!1212 = !DISubprogram(name: "fflush_unlocked", scope: !810, file: !810, line: 239, type: !1213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!108, !1117}
!1215 = !DISubprogram(name: "fcntl", scope: !1216, file: !1216, line: 149, type: !1217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1216 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!108, !108, !108, null}
!1219 = distinct !DISubprogram(name: "error", scope: !331, file: !331, line: 285, type: !1220, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !108, !108, !72, null}
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DILocalVariable(name: "status", arg: 1, scope: !1219, file: !331, line: 285, type: !108)
!1224 = !DILocalVariable(name: "errnum", arg: 2, scope: !1219, file: !331, line: 285, type: !108)
!1225 = !DILocalVariable(name: "message", arg: 3, scope: !1219, file: !331, line: 285, type: !72)
!1226 = !DILocalVariable(name: "ap", scope: !1219, file: !331, line: 287, type: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !810, line: 52, baseType: !1228)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1229, line: 12, baseType: !1230)
!1229 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !331, baseType: !1231)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 192, elements: !35)
!1232 = distinct !DIAssignID()
!1233 = !DILocation(line: 0, scope: !1219)
!1234 = !DILocation(line: 287, column: 3, scope: !1219)
!1235 = !DILocation(line: 288, column: 3, scope: !1219)
!1236 = !DILocation(line: 289, column: 3, scope: !1219)
!1237 = !DILocation(line: 290, column: 3, scope: !1219)
!1238 = !DILocation(line: 291, column: 1, scope: !1219)
!1239 = !DILocation(line: 0, scope: !338)
!1240 = !DILocation(line: 302, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !338, file: !331, line: 302, column: 7)
!1242 = !DILocation(line: 302, column: 7, scope: !338)
!1243 = !DILocation(line: 307, column: 11, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !331, line: 307, column: 11)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !331, line: 303, column: 5)
!1246 = !DILocation(line: 307, column: 27, scope: !1244)
!1247 = !DILocation(line: 308, column: 11, scope: !1244)
!1248 = !DILocation(line: 308, column: 28, scope: !1244)
!1249 = !DILocation(line: 308, column: 25, scope: !1244)
!1250 = !DILocation(line: 309, column: 15, scope: !1244)
!1251 = !DILocation(line: 309, column: 33, scope: !1244)
!1252 = !DILocation(line: 310, column: 19, scope: !1244)
!1253 = !DILocation(line: 311, column: 22, scope: !1244)
!1254 = !DILocation(line: 311, column: 56, scope: !1244)
!1255 = !DILocation(line: 307, column: 11, scope: !1245)
!1256 = !DILocation(line: 316, column: 21, scope: !1245)
!1257 = !DILocation(line: 317, column: 23, scope: !1245)
!1258 = !DILocation(line: 318, column: 5, scope: !1245)
!1259 = !DILocation(line: 327, column: 3, scope: !338)
!1260 = !DILocation(line: 331, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !338, file: !331, line: 331, column: 7)
!1262 = !DILocation(line: 331, column: 7, scope: !338)
!1263 = !DILocation(line: 332, column: 5, scope: !1261)
!1264 = !DILocation(line: 338, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1261, file: !331, line: 334, column: 5)
!1266 = !DILocation(line: 346, column: 3, scope: !338)
!1267 = !DILocation(line: 350, column: 3, scope: !338)
!1268 = !DILocation(line: 356, column: 1, scope: !338)
!1269 = distinct !DISubprogram(name: "error_at_line", scope: !331, file: !331, line: 359, type: !1270, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !330, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !108, !108, !72, !78, !72, null}
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278}
!1273 = !DILocalVariable(name: "status", arg: 1, scope: !1269, file: !331, line: 359, type: !108)
!1274 = !DILocalVariable(name: "errnum", arg: 2, scope: !1269, file: !331, line: 359, type: !108)
!1275 = !DILocalVariable(name: "file_name", arg: 3, scope: !1269, file: !331, line: 359, type: !72)
!1276 = !DILocalVariable(name: "line_number", arg: 4, scope: !1269, file: !331, line: 360, type: !78)
!1277 = !DILocalVariable(name: "message", arg: 5, scope: !1269, file: !331, line: 360, type: !72)
!1278 = !DILocalVariable(name: "ap", scope: !1269, file: !331, line: 362, type: !1227)
!1279 = distinct !DIAssignID()
!1280 = !DILocation(line: 0, scope: !1269)
!1281 = !DILocation(line: 362, column: 3, scope: !1269)
!1282 = !DILocation(line: 363, column: 3, scope: !1269)
!1283 = !DILocation(line: 364, column: 3, scope: !1269)
!1284 = !DILocation(line: 366, column: 3, scope: !1269)
!1285 = !DILocation(line: 367, column: 1, scope: !1269)
!1286 = distinct !DISubprogram(name: "getprogname", scope: !673, file: !673, line: 54, type: !1287, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !672)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!72}
!1289 = !DILocation(line: 58, column: 10, scope: !1286)
!1290 = !DILocation(line: 58, column: 3, scope: !1286)
!1291 = distinct !DISubprogram(name: "parse_long_options", scope: !381, file: !381, line: 45, type: !1292, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !1295)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !108, !968, !72, !72, !72, !1294, null}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1306}
!1296 = !DILocalVariable(name: "argc", arg: 1, scope: !1291, file: !381, line: 45, type: !108)
!1297 = !DILocalVariable(name: "argv", arg: 2, scope: !1291, file: !381, line: 46, type: !968)
!1298 = !DILocalVariable(name: "command_name", arg: 3, scope: !1291, file: !381, line: 47, type: !72)
!1299 = !DILocalVariable(name: "package", arg: 4, scope: !1291, file: !381, line: 48, type: !72)
!1300 = !DILocalVariable(name: "version", arg: 5, scope: !1291, file: !381, line: 49, type: !72)
!1301 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1291, file: !381, line: 50, type: !1294)
!1302 = !DILocalVariable(name: "saved_opterr", scope: !1291, file: !381, line: 53, type: !108)
!1303 = !DILocalVariable(name: "c", scope: !1304, file: !381, line: 60, type: !108)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !381, line: 59, column: 5)
!1305 = distinct !DILexicalBlock(scope: !1291, file: !381, line: 58, column: 7)
!1306 = !DILocalVariable(name: "authors", scope: !1307, file: !381, line: 71, type: !1311)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !381, line: 70, column: 15)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !381, line: 64, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !381, line: 62, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1304, file: !381, line: 61, column: 11)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !810, line: 52, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1229, line: 12, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !381, baseType: !1314)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1315, size: 192, elements: !35)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1315, file: !381, line: 71, baseType: !78, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1315, file: !381, line: 71, baseType: !78, size: 32, offset: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1315, file: !381, line: 71, baseType: !107, size: 64, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1315, file: !381, line: 71, baseType: !107, size: 64, offset: 128)
!1321 = distinct !DIAssignID()
!1322 = !DILocation(line: 0, scope: !1307)
!1323 = !DILocation(line: 0, scope: !1291)
!1324 = !DILocation(line: 53, column: 22, scope: !1291)
!1325 = !DILocation(line: 56, column: 10, scope: !1291)
!1326 = !DILocation(line: 58, column: 12, scope: !1305)
!1327 = !DILocation(line: 58, column: 7, scope: !1291)
!1328 = !DILocation(line: 60, column: 15, scope: !1304)
!1329 = !DILocation(line: 0, scope: !1304)
!1330 = !DILocation(line: 61, column: 11, scope: !1304)
!1331 = !DILocation(line: 66, column: 15, scope: !1308)
!1332 = !DILocation(line: 67, column: 15, scope: !1308)
!1333 = !DILocation(line: 71, column: 17, scope: !1307)
!1334 = !DILocation(line: 72, column: 17, scope: !1307)
!1335 = !DILocation(line: 73, column: 33, scope: !1307)
!1336 = !DILocation(line: 73, column: 17, scope: !1307)
!1337 = !DILocation(line: 74, column: 17, scope: !1307)
!1338 = !DILocation(line: 85, column: 10, scope: !1291)
!1339 = !DILocation(line: 89, column: 10, scope: !1291)
!1340 = !DILocation(line: 90, column: 1, scope: !1291)
!1341 = !DISubprogram(name: "getopt_long", scope: !396, file: !396, line: 66, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!108, !108, !1344, !72, !1346, !401}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!1347 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !381, file: !381, line: 98, type: !1348, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !108, !968, !72, !72, !72, !234, !1294, null}
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1351 = !DILocalVariable(name: "argc", arg: 1, scope: !1347, file: !381, line: 98, type: !108)
!1352 = !DILocalVariable(name: "argv", arg: 2, scope: !1347, file: !381, line: 99, type: !968)
!1353 = !DILocalVariable(name: "command_name", arg: 3, scope: !1347, file: !381, line: 100, type: !72)
!1354 = !DILocalVariable(name: "package", arg: 4, scope: !1347, file: !381, line: 101, type: !72)
!1355 = !DILocalVariable(name: "version", arg: 5, scope: !1347, file: !381, line: 102, type: !72)
!1356 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1347, file: !381, line: 103, type: !234)
!1357 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1347, file: !381, line: 104, type: !1294)
!1358 = !DILocalVariable(name: "saved_opterr", scope: !1347, file: !381, line: 107, type: !108)
!1359 = !DILocalVariable(name: "optstring", scope: !1347, file: !381, line: 112, type: !72)
!1360 = !DILocalVariable(name: "c", scope: !1347, file: !381, line: 114, type: !108)
!1361 = !DILocalVariable(name: "authors", scope: !1362, file: !381, line: 125, type: !1311)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !381, line: 124, column: 11)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !381, line: 118, column: 9)
!1364 = distinct !DILexicalBlock(scope: !1365, file: !381, line: 116, column: 5)
!1365 = distinct !DILexicalBlock(scope: !1347, file: !381, line: 115, column: 7)
!1366 = distinct !DIAssignID()
!1367 = !DILocation(line: 0, scope: !1362)
!1368 = !DILocation(line: 0, scope: !1347)
!1369 = !DILocation(line: 107, column: 22, scope: !1347)
!1370 = !DILocation(line: 110, column: 10, scope: !1347)
!1371 = !DILocation(line: 112, column: 27, scope: !1347)
!1372 = !DILocation(line: 114, column: 11, scope: !1347)
!1373 = !DILocation(line: 115, column: 7, scope: !1347)
!1374 = !DILocation(line: 125, column: 13, scope: !1362)
!1375 = !DILocation(line: 126, column: 13, scope: !1362)
!1376 = !DILocation(line: 127, column: 29, scope: !1362)
!1377 = !DILocation(line: 127, column: 13, scope: !1362)
!1378 = !DILocation(line: 128, column: 13, scope: !1362)
!1379 = !DILocation(line: 132, column: 26, scope: !1363)
!1380 = !DILocation(line: 133, column: 11, scope: !1363)
!1381 = !DILocation(line: 0, scope: !1363)
!1382 = !DILocation(line: 138, column: 10, scope: !1347)
!1383 = !DILocation(line: 139, column: 1, scope: !1347)
!1384 = distinct !DISubprogram(name: "set_program_name", scope: !406, file: !406, line: 37, type: !765, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1385)
!1385 = !{!1386, !1387, !1388}
!1386 = !DILocalVariable(name: "argv0", arg: 1, scope: !1384, file: !406, line: 37, type: !72)
!1387 = !DILocalVariable(name: "slash", scope: !1384, file: !406, line: 44, type: !72)
!1388 = !DILocalVariable(name: "base", scope: !1384, file: !406, line: 45, type: !72)
!1389 = !DILocation(line: 0, scope: !1384)
!1390 = !DILocation(line: 44, column: 23, scope: !1384)
!1391 = !DILocation(line: 45, column: 22, scope: !1384)
!1392 = !DILocation(line: 46, column: 17, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1384, file: !406, line: 46, column: 7)
!1394 = !DILocation(line: 46, column: 9, scope: !1393)
!1395 = !DILocation(line: 46, column: 25, scope: !1393)
!1396 = !DILocation(line: 46, column: 40, scope: !1393)
!1397 = !DILocalVariable(name: "__s1", arg: 1, scope: !1398, file: !828, line: 974, type: !963)
!1398 = distinct !DISubprogram(name: "memeq", scope: !828, file: !828, line: 974, type: !1399, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !1401)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!234, !963, !963, !110}
!1401 = !{!1397, !1402, !1403}
!1402 = !DILocalVariable(name: "__s2", arg: 2, scope: !1398, file: !828, line: 974, type: !963)
!1403 = !DILocalVariable(name: "__n", arg: 3, scope: !1398, file: !828, line: 974, type: !110)
!1404 = !DILocation(line: 0, scope: !1398, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 46, column: 28, scope: !1393)
!1406 = !DILocation(line: 976, column: 11, scope: !1398, inlinedAt: !1405)
!1407 = !DILocation(line: 976, column: 10, scope: !1398, inlinedAt: !1405)
!1408 = !DILocation(line: 46, column: 7, scope: !1384)
!1409 = !DILocation(line: 49, column: 11, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !406, line: 49, column: 11)
!1411 = distinct !DILexicalBlock(scope: !1393, file: !406, line: 47, column: 5)
!1412 = !DILocation(line: 49, column: 36, scope: !1410)
!1413 = !DILocation(line: 49, column: 11, scope: !1411)
!1414 = !DILocation(line: 65, column: 16, scope: !1384)
!1415 = !DILocation(line: 71, column: 27, scope: !1384)
!1416 = !DILocation(line: 74, column: 33, scope: !1384)
!1417 = !DILocation(line: 76, column: 1, scope: !1384)
!1418 = !DISubprogram(name: "strrchr", scope: !935, file: !935, line: 273, type: !950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1419 = distinct !DIAssignID()
!1420 = !DILocation(line: 0, scope: !415)
!1421 = distinct !DIAssignID()
!1422 = !DILocation(line: 40, column: 29, scope: !415)
!1423 = !DILocation(line: 41, column: 19, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !415, file: !416, line: 41, column: 7)
!1425 = !DILocation(line: 41, column: 7, scope: !415)
!1426 = !DILocation(line: 47, column: 3, scope: !415)
!1427 = !DILocation(line: 48, column: 3, scope: !415)
!1428 = !DILocalVariable(name: "ps", arg: 1, scope: !1429, file: !1430, line: 1135, type: !1433)
!1429 = distinct !DISubprogram(name: "mbszero", scope: !1430, file: !1430, line: 1135, type: !1431, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1434)
!1430 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1434 = !{!1428}
!1435 = !DILocation(line: 0, scope: !1429, inlinedAt: !1436)
!1436 = distinct !DILocation(line: 48, column: 18, scope: !415)
!1437 = !DILocalVariable(name: "__dest", arg: 1, scope: !1438, file: !1439, line: 57, type: !107)
!1438 = distinct !DISubprogram(name: "memset", scope: !1439, file: !1439, line: 57, type: !1440, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !1442)
!1439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!107, !107, !108, !110}
!1442 = !{!1437, !1443, !1444}
!1443 = !DILocalVariable(name: "__ch", arg: 2, scope: !1438, file: !1439, line: 57, type: !108)
!1444 = !DILocalVariable(name: "__len", arg: 3, scope: !1438, file: !1439, line: 57, type: !110)
!1445 = !DILocation(line: 0, scope: !1438, inlinedAt: !1446)
!1446 = distinct !DILocation(line: 1137, column: 3, scope: !1429, inlinedAt: !1436)
!1447 = !DILocation(line: 59, column: 10, scope: !1438, inlinedAt: !1446)
!1448 = !DILocation(line: 49, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !415, file: !416, line: 49, column: 7)
!1450 = !DILocation(line: 49, column: 39, scope: !1449)
!1451 = !DILocation(line: 49, column: 44, scope: !1449)
!1452 = !DILocation(line: 54, column: 1, scope: !415)
!1453 = !DISubprogram(name: "mbrtoc32", scope: !427, file: !427, line: 57, type: !1454, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!110, !1456, !805, !110, !1458}
!1456 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1433)
!1459 = distinct !DISubprogram(name: "clone_quoting_options", scope: !446, file: !446, line: 113, type: !1460, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1463)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!1462, !1462}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!1463 = !{!1464, !1465, !1466}
!1464 = !DILocalVariable(name: "o", arg: 1, scope: !1459, file: !446, line: 113, type: !1462)
!1465 = !DILocalVariable(name: "saved_errno", scope: !1459, file: !446, line: 115, type: !108)
!1466 = !DILocalVariable(name: "p", scope: !1459, file: !446, line: 116, type: !1462)
!1467 = !DILocation(line: 0, scope: !1459)
!1468 = !DILocation(line: 115, column: 21, scope: !1459)
!1469 = !DILocation(line: 116, column: 40, scope: !1459)
!1470 = !DILocation(line: 116, column: 31, scope: !1459)
!1471 = !DILocation(line: 118, column: 9, scope: !1459)
!1472 = !DILocation(line: 119, column: 3, scope: !1459)
!1473 = distinct !DISubprogram(name: "get_quoting_style", scope: !446, file: !446, line: 124, type: !1474, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1478)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!472, !1476}
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!1478 = !{!1479}
!1479 = !DILocalVariable(name: "o", arg: 1, scope: !1473, file: !446, line: 124, type: !1476)
!1480 = !DILocation(line: 0, scope: !1473)
!1481 = !DILocation(line: 126, column: 11, scope: !1473)
!1482 = !DILocation(line: 126, column: 46, scope: !1473)
!1483 = !{!1484, !816, i64 0}
!1484 = !{!"quoting_options", !816, i64 0, !816, i64 4, !756, i64 8, !755, i64 40, !755, i64 48}
!1485 = !DILocation(line: 126, column: 3, scope: !1473)
!1486 = distinct !DISubprogram(name: "set_quoting_style", scope: !446, file: !446, line: 132, type: !1487, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1489)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{null, !1462, !472}
!1489 = !{!1490, !1491}
!1490 = !DILocalVariable(name: "o", arg: 1, scope: !1486, file: !446, line: 132, type: !1462)
!1491 = !DILocalVariable(name: "s", arg: 2, scope: !1486, file: !446, line: 132, type: !472)
!1492 = !DILocation(line: 0, scope: !1486)
!1493 = !DILocation(line: 134, column: 4, scope: !1486)
!1494 = !DILocation(line: 134, column: 45, scope: !1486)
!1495 = !DILocation(line: 135, column: 1, scope: !1486)
!1496 = distinct !DISubprogram(name: "set_char_quoting", scope: !446, file: !446, line: 143, type: !1497, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!108, !1462, !4, !108}
!1499 = !{!1500, !1501, !1502, !1503, !1504, !1506, !1507}
!1500 = !DILocalVariable(name: "o", arg: 1, scope: !1496, file: !446, line: 143, type: !1462)
!1501 = !DILocalVariable(name: "c", arg: 2, scope: !1496, file: !446, line: 143, type: !4)
!1502 = !DILocalVariable(name: "i", arg: 3, scope: !1496, file: !446, line: 143, type: !108)
!1503 = !DILocalVariable(name: "uc", scope: !1496, file: !446, line: 145, type: !113)
!1504 = !DILocalVariable(name: "p", scope: !1496, file: !446, line: 146, type: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!1506 = !DILocalVariable(name: "shift", scope: !1496, file: !446, line: 148, type: !108)
!1507 = !DILocalVariable(name: "r", scope: !1496, file: !446, line: 149, type: !78)
!1508 = !DILocation(line: 0, scope: !1496)
!1509 = !DILocation(line: 147, column: 6, scope: !1496)
!1510 = !DILocation(line: 147, column: 41, scope: !1496)
!1511 = !DILocation(line: 147, column: 62, scope: !1496)
!1512 = !DILocation(line: 147, column: 57, scope: !1496)
!1513 = !DILocation(line: 148, column: 15, scope: !1496)
!1514 = !DILocation(line: 149, column: 21, scope: !1496)
!1515 = !DILocation(line: 149, column: 24, scope: !1496)
!1516 = !DILocation(line: 149, column: 34, scope: !1496)
!1517 = !DILocation(line: 150, column: 19, scope: !1496)
!1518 = !DILocation(line: 150, column: 24, scope: !1496)
!1519 = !DILocation(line: 150, column: 6, scope: !1496)
!1520 = !DILocation(line: 151, column: 3, scope: !1496)
!1521 = distinct !DISubprogram(name: "set_quoting_flags", scope: !446, file: !446, line: 159, type: !1522, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!108, !1462, !108}
!1524 = !{!1525, !1526, !1527}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1521, file: !446, line: 159, type: !1462)
!1526 = !DILocalVariable(name: "i", arg: 2, scope: !1521, file: !446, line: 159, type: !108)
!1527 = !DILocalVariable(name: "r", scope: !1521, file: !446, line: 163, type: !108)
!1528 = !DILocation(line: 0, scope: !1521)
!1529 = !DILocation(line: 161, column: 8, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1521, file: !446, line: 161, column: 7)
!1531 = !DILocation(line: 161, column: 7, scope: !1521)
!1532 = !DILocation(line: 163, column: 14, scope: !1521)
!1533 = !{!1484, !816, i64 4}
!1534 = !DILocation(line: 164, column: 12, scope: !1521)
!1535 = !DILocation(line: 165, column: 3, scope: !1521)
!1536 = distinct !DISubprogram(name: "set_custom_quoting", scope: !446, file: !446, line: 169, type: !1537, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1539)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !1462, !72, !72}
!1539 = !{!1540, !1541, !1542}
!1540 = !DILocalVariable(name: "o", arg: 1, scope: !1536, file: !446, line: 169, type: !1462)
!1541 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1536, file: !446, line: 170, type: !72)
!1542 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1536, file: !446, line: 170, type: !72)
!1543 = !DILocation(line: 0, scope: !1536)
!1544 = !DILocation(line: 172, column: 8, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1536, file: !446, line: 172, column: 7)
!1546 = !DILocation(line: 172, column: 7, scope: !1536)
!1547 = !DILocation(line: 174, column: 12, scope: !1536)
!1548 = !DILocation(line: 175, column: 8, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1536, file: !446, line: 175, column: 7)
!1550 = !DILocation(line: 175, column: 19, scope: !1549)
!1551 = !DILocation(line: 176, column: 5, scope: !1549)
!1552 = !DILocation(line: 177, column: 6, scope: !1536)
!1553 = !DILocation(line: 177, column: 17, scope: !1536)
!1554 = !{!1484, !755, i64 40}
!1555 = !DILocation(line: 178, column: 6, scope: !1536)
!1556 = !DILocation(line: 178, column: 18, scope: !1536)
!1557 = !{!1484, !755, i64 48}
!1558 = !DILocation(line: 179, column: 1, scope: !1536)
!1559 = !DISubprogram(name: "abort", scope: !939, file: !939, line: 598, type: !377, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1560 = distinct !DISubprogram(name: "quotearg_buffer", scope: !446, file: !446, line: 774, type: !1561, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!110, !255, !110, !72, !110, !1476}
!1563 = !{!1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571}
!1564 = !DILocalVariable(name: "buffer", arg: 1, scope: !1560, file: !446, line: 774, type: !255)
!1565 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1560, file: !446, line: 774, type: !110)
!1566 = !DILocalVariable(name: "arg", arg: 3, scope: !1560, file: !446, line: 775, type: !72)
!1567 = !DILocalVariable(name: "argsize", arg: 4, scope: !1560, file: !446, line: 775, type: !110)
!1568 = !DILocalVariable(name: "o", arg: 5, scope: !1560, file: !446, line: 776, type: !1476)
!1569 = !DILocalVariable(name: "p", scope: !1560, file: !446, line: 778, type: !1476)
!1570 = !DILocalVariable(name: "saved_errno", scope: !1560, file: !446, line: 779, type: !108)
!1571 = !DILocalVariable(name: "r", scope: !1560, file: !446, line: 780, type: !110)
!1572 = !DILocation(line: 0, scope: !1560)
!1573 = !DILocation(line: 778, column: 37, scope: !1560)
!1574 = !DILocation(line: 779, column: 21, scope: !1560)
!1575 = !DILocation(line: 781, column: 43, scope: !1560)
!1576 = !DILocation(line: 781, column: 53, scope: !1560)
!1577 = !DILocation(line: 781, column: 63, scope: !1560)
!1578 = !DILocation(line: 782, column: 43, scope: !1560)
!1579 = !DILocation(line: 782, column: 58, scope: !1560)
!1580 = !DILocation(line: 780, column: 14, scope: !1560)
!1581 = !DILocation(line: 783, column: 9, scope: !1560)
!1582 = !DILocation(line: 784, column: 3, scope: !1560)
!1583 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !446, file: !446, line: 251, type: !1584, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1588)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!110, !255, !110, !72, !110, !472, !108, !1586, !72, !72}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1614, !1616, !1619, !1620, !1621, !1622, !1625, !1626, !1628, !1629, !1632, !1636, !1637, !1645, !1648, !1649, !1650}
!1589 = !DILocalVariable(name: "buffer", arg: 1, scope: !1583, file: !446, line: 251, type: !255)
!1590 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1583, file: !446, line: 251, type: !110)
!1591 = !DILocalVariable(name: "arg", arg: 3, scope: !1583, file: !446, line: 252, type: !72)
!1592 = !DILocalVariable(name: "argsize", arg: 4, scope: !1583, file: !446, line: 252, type: !110)
!1593 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1583, file: !446, line: 253, type: !472)
!1594 = !DILocalVariable(name: "flags", arg: 6, scope: !1583, file: !446, line: 253, type: !108)
!1595 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1583, file: !446, line: 254, type: !1586)
!1596 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1583, file: !446, line: 255, type: !72)
!1597 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1583, file: !446, line: 256, type: !72)
!1598 = !DILocalVariable(name: "unibyte_locale", scope: !1583, file: !446, line: 258, type: !234)
!1599 = !DILocalVariable(name: "len", scope: !1583, file: !446, line: 260, type: !110)
!1600 = !DILocalVariable(name: "orig_buffersize", scope: !1583, file: !446, line: 261, type: !110)
!1601 = !DILocalVariable(name: "quote_string", scope: !1583, file: !446, line: 262, type: !72)
!1602 = !DILocalVariable(name: "quote_string_len", scope: !1583, file: !446, line: 263, type: !110)
!1603 = !DILocalVariable(name: "backslash_escapes", scope: !1583, file: !446, line: 264, type: !234)
!1604 = !DILocalVariable(name: "elide_outer_quotes", scope: !1583, file: !446, line: 265, type: !234)
!1605 = !DILocalVariable(name: "encountered_single_quote", scope: !1583, file: !446, line: 266, type: !234)
!1606 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1583, file: !446, line: 267, type: !234)
!1607 = !DILabel(scope: !1583, name: "process_input", file: !446, line: 308)
!1608 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1583, file: !446, line: 309, type: !234)
!1609 = !DILocalVariable(name: "lq", scope: !1610, file: !446, line: 361, type: !72)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !446, line: 361, column: 11)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !446, line: 360, column: 13)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 333, column: 7)
!1613 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 312, column: 5)
!1614 = !DILocalVariable(name: "i", scope: !1615, file: !446, line: 395, type: !110)
!1615 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 395, column: 3)
!1616 = !DILocalVariable(name: "is_right_quote", scope: !1617, file: !446, line: 397, type: !234)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !446, line: 396, column: 5)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !446, line: 395, column: 3)
!1619 = !DILocalVariable(name: "escaping", scope: !1617, file: !446, line: 398, type: !234)
!1620 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1617, file: !446, line: 399, type: !234)
!1621 = !DILocalVariable(name: "c", scope: !1617, file: !446, line: 417, type: !113)
!1622 = !DILabel(scope: !1623, name: "c_and_shell_escape", file: !446, line: 502)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 478, column: 9)
!1624 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 419, column: 9)
!1625 = !DILabel(scope: !1623, name: "c_escape", file: !446, line: 507)
!1626 = !DILocalVariable(name: "m", scope: !1627, file: !446, line: 598, type: !110)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 596, column: 11)
!1628 = !DILocalVariable(name: "printable", scope: !1627, file: !446, line: 600, type: !234)
!1629 = !DILocalVariable(name: "mbs", scope: !1630, file: !446, line: 609, type: !521)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !446, line: 608, column: 15)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !446, line: 602, column: 17)
!1632 = !DILocalVariable(name: "w", scope: !1633, file: !446, line: 618, type: !426)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !446, line: 617, column: 19)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !446, line: 616, column: 17)
!1635 = distinct !DILexicalBlock(scope: !1630, file: !446, line: 616, column: 17)
!1636 = !DILocalVariable(name: "bytes", scope: !1633, file: !446, line: 619, type: !110)
!1637 = !DILocalVariable(name: "j", scope: !1638, file: !446, line: 648, type: !110)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !446, line: 648, column: 29)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !446, line: 647, column: 27)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !446, line: 645, column: 29)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !446, line: 636, column: 23)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !446, line: 628, column: 30)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !446, line: 623, column: 30)
!1644 = distinct !DILexicalBlock(scope: !1633, file: !446, line: 621, column: 25)
!1645 = !DILocalVariable(name: "ilim", scope: !1646, file: !446, line: 674, type: !110)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !446, line: 671, column: 15)
!1647 = distinct !DILexicalBlock(scope: !1627, file: !446, line: 670, column: 17)
!1648 = !DILabel(scope: !1617, name: "store_escape", file: !446, line: 709)
!1649 = !DILabel(scope: !1617, name: "store_c", file: !446, line: 712)
!1650 = !DILabel(scope: !1583, name: "force_outer_quoting_style", file: !446, line: 753)
!1651 = distinct !DIAssignID()
!1652 = distinct !DIAssignID()
!1653 = distinct !DIAssignID()
!1654 = distinct !DIAssignID()
!1655 = distinct !DIAssignID()
!1656 = !DILocation(line: 0, scope: !1630)
!1657 = distinct !DIAssignID()
!1658 = !DILocation(line: 0, scope: !1633)
!1659 = !DILocation(line: 0, scope: !1583)
!1660 = !DILocation(line: 258, column: 25, scope: !1583)
!1661 = !DILocation(line: 258, column: 36, scope: !1583)
!1662 = !DILocation(line: 265, column: 8, scope: !1583)
!1663 = !DILocation(line: 267, column: 3, scope: !1583)
!1664 = !DILocation(line: 261, column: 10, scope: !1583)
!1665 = !DILocation(line: 262, column: 15, scope: !1583)
!1666 = !DILocation(line: 263, column: 10, scope: !1583)
!1667 = !DILocation(line: 264, column: 8, scope: !1583)
!1668 = !DILocation(line: 266, column: 8, scope: !1583)
!1669 = !DILocation(line: 267, column: 8, scope: !1583)
!1670 = !DILocation(line: 308, column: 2, scope: !1583)
!1671 = !DILocation(line: 311, column: 3, scope: !1583)
!1672 = !DILocation(line: 318, column: 11, scope: !1613)
!1673 = !DILocation(line: 318, column: 12, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 318, column: 11)
!1675 = !DILocation(line: 319, column: 9, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !446, line: 319, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1674, file: !446, line: 319, column: 9)
!1678 = !DILocation(line: 319, column: 9, scope: !1677)
!1679 = !DILocation(line: 0, scope: !512, inlinedAt: !1680)
!1680 = distinct !DILocation(line: 357, column: 26, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !446, line: 335, column: 11)
!1682 = distinct !DILexicalBlock(scope: !1612, file: !446, line: 334, column: 13)
!1683 = !DILocation(line: 199, column: 29, scope: !512, inlinedAt: !1680)
!1684 = !DILocation(line: 201, column: 19, scope: !1685, inlinedAt: !1680)
!1685 = distinct !DILexicalBlock(scope: !512, file: !446, line: 201, column: 7)
!1686 = !DILocation(line: 201, column: 7, scope: !512, inlinedAt: !1680)
!1687 = !DILocation(line: 229, column: 3, scope: !512, inlinedAt: !1680)
!1688 = !DILocation(line: 230, column: 3, scope: !512, inlinedAt: !1680)
!1689 = !DILocalVariable(name: "ps", arg: 1, scope: !1690, file: !1430, line: 1135, type: !1693)
!1690 = distinct !DISubprogram(name: "mbszero", scope: !1430, file: !1430, line: 1135, type: !1691, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1694)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1694 = !{!1689}
!1695 = !DILocation(line: 0, scope: !1690, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 230, column: 18, scope: !512, inlinedAt: !1680)
!1697 = !DILocalVariable(name: "__dest", arg: 1, scope: !1698, file: !1439, line: 57, type: !107)
!1698 = distinct !DISubprogram(name: "memset", scope: !1439, file: !1439, line: 57, type: !1440, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1699)
!1699 = !{!1697, !1700, !1701}
!1700 = !DILocalVariable(name: "__ch", arg: 2, scope: !1698, file: !1439, line: 57, type: !108)
!1701 = !DILocalVariable(name: "__len", arg: 3, scope: !1698, file: !1439, line: 57, type: !110)
!1702 = !DILocation(line: 0, scope: !1698, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 1137, column: 3, scope: !1690, inlinedAt: !1696)
!1704 = !DILocation(line: 59, column: 10, scope: !1698, inlinedAt: !1703)
!1705 = !DILocation(line: 231, column: 7, scope: !1706, inlinedAt: !1680)
!1706 = distinct !DILexicalBlock(scope: !512, file: !446, line: 231, column: 7)
!1707 = !DILocation(line: 231, column: 40, scope: !1706, inlinedAt: !1680)
!1708 = !DILocation(line: 231, column: 45, scope: !1706, inlinedAt: !1680)
!1709 = !DILocation(line: 235, column: 1, scope: !512, inlinedAt: !1680)
!1710 = !DILocation(line: 0, scope: !512, inlinedAt: !1711)
!1711 = distinct !DILocation(line: 358, column: 27, scope: !1681)
!1712 = !DILocation(line: 199, column: 29, scope: !512, inlinedAt: !1711)
!1713 = !DILocation(line: 201, column: 19, scope: !1685, inlinedAt: !1711)
!1714 = !DILocation(line: 201, column: 7, scope: !512, inlinedAt: !1711)
!1715 = !DILocation(line: 229, column: 3, scope: !512, inlinedAt: !1711)
!1716 = !DILocation(line: 230, column: 3, scope: !512, inlinedAt: !1711)
!1717 = !DILocation(line: 0, scope: !1690, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 230, column: 18, scope: !512, inlinedAt: !1711)
!1719 = !DILocation(line: 0, scope: !1698, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 1137, column: 3, scope: !1690, inlinedAt: !1718)
!1721 = !DILocation(line: 59, column: 10, scope: !1698, inlinedAt: !1720)
!1722 = !DILocation(line: 231, column: 7, scope: !1706, inlinedAt: !1711)
!1723 = !DILocation(line: 231, column: 40, scope: !1706, inlinedAt: !1711)
!1724 = !DILocation(line: 231, column: 45, scope: !1706, inlinedAt: !1711)
!1725 = !DILocation(line: 235, column: 1, scope: !512, inlinedAt: !1711)
!1726 = !DILocation(line: 360, column: 14, scope: !1611)
!1727 = !DILocation(line: 360, column: 13, scope: !1612)
!1728 = !DILocation(line: 0, scope: !1610)
!1729 = !DILocation(line: 361, column: 45, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1610, file: !446, line: 361, column: 11)
!1731 = !DILocation(line: 361, column: 11, scope: !1610)
!1732 = !DILocation(line: 362, column: 13, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1734, file: !446, line: 362, column: 13)
!1734 = distinct !DILexicalBlock(scope: !1730, file: !446, line: 362, column: 13)
!1735 = !DILocation(line: 362, column: 13, scope: !1734)
!1736 = !DILocation(line: 361, column: 52, scope: !1730)
!1737 = distinct !{!1737, !1731, !1738, !862}
!1738 = !DILocation(line: 362, column: 13, scope: !1610)
!1739 = !DILocation(line: 260, column: 10, scope: !1583)
!1740 = !DILocation(line: 365, column: 28, scope: !1612)
!1741 = !DILocation(line: 367, column: 7, scope: !1613)
!1742 = !DILocation(line: 370, column: 7, scope: !1613)
!1743 = !DILocation(line: 373, column: 7, scope: !1613)
!1744 = !DILocation(line: 376, column: 12, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 376, column: 11)
!1746 = !DILocation(line: 376, column: 11, scope: !1613)
!1747 = !DILocation(line: 381, column: 12, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1613, file: !446, line: 381, column: 11)
!1749 = !DILocation(line: 381, column: 11, scope: !1613)
!1750 = !DILocation(line: 382, column: 9, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1752, file: !446, line: 382, column: 9)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !446, line: 382, column: 9)
!1753 = !DILocation(line: 382, column: 9, scope: !1752)
!1754 = !DILocation(line: 389, column: 7, scope: !1613)
!1755 = !DILocation(line: 392, column: 7, scope: !1613)
!1756 = !DILocation(line: 0, scope: !1615)
!1757 = !DILocation(line: 395, column: 8, scope: !1615)
!1758 = !DILocation(line: 309, column: 8, scope: !1583)
!1759 = !DILocation(line: 395, scope: !1615)
!1760 = !DILocation(line: 395, column: 34, scope: !1618)
!1761 = !DILocation(line: 395, column: 26, scope: !1618)
!1762 = !DILocation(line: 395, column: 48, scope: !1618)
!1763 = !DILocation(line: 395, column: 55, scope: !1618)
!1764 = !DILocation(line: 395, column: 3, scope: !1615)
!1765 = !DILocation(line: 395, column: 67, scope: !1618)
!1766 = !DILocation(line: 0, scope: !1617)
!1767 = !DILocation(line: 402, column: 11, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 401, column: 11)
!1769 = !DILocation(line: 404, column: 17, scope: !1768)
!1770 = !DILocation(line: 405, column: 39, scope: !1768)
!1771 = !DILocation(line: 409, column: 32, scope: !1768)
!1772 = !DILocation(line: 405, column: 19, scope: !1768)
!1773 = !DILocation(line: 405, column: 15, scope: !1768)
!1774 = !DILocation(line: 410, column: 11, scope: !1768)
!1775 = !DILocation(line: 410, column: 25, scope: !1768)
!1776 = !DILocalVariable(name: "__s1", arg: 1, scope: !1777, file: !828, line: 974, type: !963)
!1777 = distinct !DISubprogram(name: "memeq", scope: !828, file: !828, line: 974, type: !1399, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1778)
!1778 = !{!1776, !1779, !1780}
!1779 = !DILocalVariable(name: "__s2", arg: 2, scope: !1777, file: !828, line: 974, type: !963)
!1780 = !DILocalVariable(name: "__n", arg: 3, scope: !1777, file: !828, line: 974, type: !110)
!1781 = !DILocation(line: 0, scope: !1777, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 410, column: 14, scope: !1768)
!1783 = !DILocation(line: 976, column: 11, scope: !1777, inlinedAt: !1782)
!1784 = !DILocation(line: 976, column: 10, scope: !1777, inlinedAt: !1782)
!1785 = !DILocation(line: 401, column: 11, scope: !1617)
!1786 = !DILocation(line: 417, column: 25, scope: !1617)
!1787 = !DILocation(line: 418, column: 7, scope: !1617)
!1788 = !DILocation(line: 421, column: 15, scope: !1624)
!1789 = !DILocation(line: 423, column: 15, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !446, line: 423, column: 15)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !446, line: 422, column: 13)
!1792 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 421, column: 15)
!1793 = !DILocation(line: 423, column: 15, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1790, file: !446, line: 423, column: 15)
!1795 = !DILocation(line: 423, column: 15, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !446, line: 423, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !446, line: 423, column: 15)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !446, line: 423, column: 15)
!1799 = !DILocation(line: 423, column: 15, scope: !1797)
!1800 = !DILocation(line: 423, column: 15, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !446, line: 423, column: 15)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !446, line: 423, column: 15)
!1803 = !DILocation(line: 423, column: 15, scope: !1802)
!1804 = !DILocation(line: 423, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !446, line: 423, column: 15)
!1806 = distinct !DILexicalBlock(scope: !1798, file: !446, line: 423, column: 15)
!1807 = !DILocation(line: 423, column: 15, scope: !1806)
!1808 = !DILocation(line: 423, column: 15, scope: !1798)
!1809 = !DILocation(line: 423, column: 15, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !446, line: 423, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1790, file: !446, line: 423, column: 15)
!1812 = !DILocation(line: 423, column: 15, scope: !1811)
!1813 = !DILocation(line: 431, column: 19, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1791, file: !446, line: 430, column: 19)
!1815 = !DILocation(line: 431, column: 24, scope: !1814)
!1816 = !DILocation(line: 431, column: 28, scope: !1814)
!1817 = !DILocation(line: 431, column: 38, scope: !1814)
!1818 = !DILocation(line: 431, column: 48, scope: !1814)
!1819 = !DILocation(line: 431, column: 59, scope: !1814)
!1820 = !DILocation(line: 433, column: 19, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !446, line: 433, column: 19)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !446, line: 433, column: 19)
!1823 = distinct !DILexicalBlock(scope: !1814, file: !446, line: 432, column: 17)
!1824 = !DILocation(line: 433, column: 19, scope: !1822)
!1825 = !DILocation(line: 434, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !446, line: 434, column: 19)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !446, line: 434, column: 19)
!1828 = !DILocation(line: 434, column: 19, scope: !1827)
!1829 = !DILocation(line: 435, column: 17, scope: !1823)
!1830 = !DILocation(line: 442, column: 20, scope: !1792)
!1831 = !DILocation(line: 447, column: 11, scope: !1624)
!1832 = !DILocation(line: 450, column: 19, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 448, column: 13)
!1834 = !DILocation(line: 456, column: 19, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1833, file: !446, line: 455, column: 19)
!1836 = !DILocation(line: 456, column: 24, scope: !1835)
!1837 = !DILocation(line: 456, column: 28, scope: !1835)
!1838 = !DILocation(line: 456, column: 38, scope: !1835)
!1839 = !DILocation(line: 456, column: 41, scope: !1835)
!1840 = !DILocation(line: 456, column: 52, scope: !1835)
!1841 = !DILocation(line: 455, column: 19, scope: !1833)
!1842 = !DILocation(line: 457, column: 25, scope: !1835)
!1843 = !DILocation(line: 457, column: 17, scope: !1835)
!1844 = !DILocation(line: 464, column: 25, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1835, file: !446, line: 458, column: 19)
!1846 = !DILocation(line: 468, column: 21, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !446, line: 468, column: 21)
!1848 = distinct !DILexicalBlock(scope: !1845, file: !446, line: 468, column: 21)
!1849 = !DILocation(line: 468, column: 21, scope: !1848)
!1850 = !DILocation(line: 469, column: 21, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !446, line: 469, column: 21)
!1852 = distinct !DILexicalBlock(scope: !1845, file: !446, line: 469, column: 21)
!1853 = !DILocation(line: 469, column: 21, scope: !1852)
!1854 = !DILocation(line: 470, column: 21, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !446, line: 470, column: 21)
!1856 = distinct !DILexicalBlock(scope: !1845, file: !446, line: 470, column: 21)
!1857 = !DILocation(line: 470, column: 21, scope: !1856)
!1858 = !DILocation(line: 471, column: 21, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !446, line: 471, column: 21)
!1860 = distinct !DILexicalBlock(scope: !1845, file: !446, line: 471, column: 21)
!1861 = !DILocation(line: 471, column: 21, scope: !1860)
!1862 = !DILocation(line: 472, column: 21, scope: !1845)
!1863 = !DILocation(line: 482, column: 33, scope: !1623)
!1864 = !DILocation(line: 483, column: 33, scope: !1623)
!1865 = !DILocation(line: 485, column: 33, scope: !1623)
!1866 = !DILocation(line: 486, column: 33, scope: !1623)
!1867 = !DILocation(line: 487, column: 33, scope: !1623)
!1868 = !DILocation(line: 490, column: 17, scope: !1623)
!1869 = !DILocation(line: 492, column: 21, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1871, file: !446, line: 491, column: 15)
!1871 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 490, column: 17)
!1872 = !DILocation(line: 499, column: 35, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 499, column: 17)
!1874 = !DILocation(line: 499, column: 57, scope: !1873)
!1875 = !DILocation(line: 0, scope: !1623)
!1876 = !DILocation(line: 502, column: 11, scope: !1623)
!1877 = !DILocation(line: 504, column: 17, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1623, file: !446, line: 503, column: 17)
!1879 = !DILocation(line: 507, column: 11, scope: !1623)
!1880 = !DILocation(line: 508, column: 17, scope: !1623)
!1881 = !DILocation(line: 517, column: 15, scope: !1624)
!1882 = !DILocation(line: 517, column: 40, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 517, column: 15)
!1884 = !DILocation(line: 517, column: 47, scope: !1883)
!1885 = !DILocation(line: 517, column: 18, scope: !1883)
!1886 = !DILocation(line: 521, column: 17, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 521, column: 15)
!1888 = !DILocation(line: 521, column: 15, scope: !1624)
!1889 = !DILocation(line: 525, column: 11, scope: !1624)
!1890 = !DILocation(line: 537, column: 15, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 536, column: 15)
!1892 = !DILocation(line: 544, column: 15, scope: !1624)
!1893 = !DILocation(line: 546, column: 19, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !446, line: 545, column: 13)
!1895 = distinct !DILexicalBlock(scope: !1624, file: !446, line: 544, column: 15)
!1896 = !DILocation(line: 549, column: 19, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1894, file: !446, line: 549, column: 19)
!1898 = !DILocation(line: 549, column: 30, scope: !1897)
!1899 = !DILocation(line: 558, column: 15, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !446, line: 558, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1894, file: !446, line: 558, column: 15)
!1902 = !DILocation(line: 558, column: 15, scope: !1901)
!1903 = !DILocation(line: 559, column: 15, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !446, line: 559, column: 15)
!1905 = distinct !DILexicalBlock(scope: !1894, file: !446, line: 559, column: 15)
!1906 = !DILocation(line: 559, column: 15, scope: !1905)
!1907 = !DILocation(line: 560, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !446, line: 560, column: 15)
!1909 = distinct !DILexicalBlock(scope: !1894, file: !446, line: 560, column: 15)
!1910 = !DILocation(line: 560, column: 15, scope: !1909)
!1911 = !DILocation(line: 562, column: 13, scope: !1894)
!1912 = !DILocation(line: 602, column: 17, scope: !1627)
!1913 = !DILocation(line: 0, scope: !1627)
!1914 = !DILocation(line: 605, column: 29, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1631, file: !446, line: 603, column: 15)
!1916 = !DILocation(line: 605, column: 27, scope: !1915)
!1917 = !DILocation(line: 606, column: 15, scope: !1915)
!1918 = !DILocation(line: 609, column: 17, scope: !1630)
!1919 = !DILocation(line: 0, scope: !1690, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 609, column: 32, scope: !1630)
!1921 = !DILocation(line: 0, scope: !1698, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 1137, column: 3, scope: !1690, inlinedAt: !1920)
!1923 = !DILocation(line: 59, column: 10, scope: !1698, inlinedAt: !1922)
!1924 = !DILocation(line: 613, column: 29, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1630, file: !446, line: 613, column: 21)
!1926 = !DILocation(line: 613, column: 21, scope: !1630)
!1927 = !DILocation(line: 614, column: 29, scope: !1925)
!1928 = !DILocation(line: 614, column: 19, scope: !1925)
!1929 = !DILocation(line: 618, column: 21, scope: !1633)
!1930 = !DILocation(line: 620, column: 54, scope: !1633)
!1931 = !DILocation(line: 619, column: 36, scope: !1633)
!1932 = !DILocation(line: 621, column: 25, scope: !1633)
!1933 = !DILocation(line: 631, column: 38, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1642, file: !446, line: 629, column: 23)
!1935 = !DILocation(line: 631, column: 48, scope: !1934)
!1936 = !DILocation(line: 626, column: 25, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1643, file: !446, line: 624, column: 23)
!1938 = !DILocation(line: 631, column: 51, scope: !1934)
!1939 = !DILocation(line: 631, column: 25, scope: !1934)
!1940 = !DILocation(line: 632, column: 28, scope: !1934)
!1941 = !DILocation(line: 631, column: 34, scope: !1934)
!1942 = distinct !{!1942, !1939, !1940, !862}
!1943 = !DILocation(line: 0, scope: !1638)
!1944 = !DILocation(line: 646, column: 29, scope: !1640)
!1945 = !DILocation(line: 649, column: 39, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1638, file: !446, line: 648, column: 29)
!1947 = !DILocation(line: 649, column: 31, scope: !1946)
!1948 = !DILocation(line: 648, column: 60, scope: !1946)
!1949 = !DILocation(line: 648, column: 50, scope: !1946)
!1950 = !DILocation(line: 648, column: 29, scope: !1638)
!1951 = distinct !{!1951, !1950, !1952, !862}
!1952 = !DILocation(line: 654, column: 33, scope: !1638)
!1953 = !DILocation(line: 657, column: 43, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1641, file: !446, line: 657, column: 29)
!1955 = !DILocalVariable(name: "wc", arg: 1, scope: !1956, file: !1957, line: 865, type: !1960)
!1956 = distinct !DISubprogram(name: "c32isprint", scope: !1957, file: !1957, line: 865, type: !1958, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !1962)
!1957 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!108, !1960}
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1961, line: 20, baseType: !78)
!1961 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1962 = !{!1955}
!1963 = !DILocation(line: 0, scope: !1956, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 657, column: 31, scope: !1954)
!1965 = !DILocation(line: 871, column: 10, scope: !1956, inlinedAt: !1964)
!1966 = !DILocation(line: 657, column: 31, scope: !1954)
!1967 = !DILocation(line: 664, column: 23, scope: !1633)
!1968 = !DILocation(line: 665, column: 19, scope: !1634)
!1969 = !DILocation(line: 666, column: 15, scope: !1631)
!1970 = !DILocation(line: 0, scope: !1631)
!1971 = !DILocation(line: 670, column: 19, scope: !1647)
!1972 = !DILocation(line: 670, column: 23, scope: !1647)
!1973 = !DILocation(line: 674, column: 33, scope: !1646)
!1974 = !DILocation(line: 0, scope: !1646)
!1975 = !DILocation(line: 676, column: 17, scope: !1646)
!1976 = !DILocation(line: 398, column: 12, scope: !1617)
!1977 = !DILocation(line: 678, column: 43, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 678, column: 25)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !446, line: 677, column: 19)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !446, line: 676, column: 17)
!1981 = distinct !DILexicalBlock(scope: !1646, file: !446, line: 676, column: 17)
!1982 = !DILocation(line: 680, column: 25, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !446, line: 680, column: 25)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !446, line: 679, column: 23)
!1985 = !DILocation(line: 680, column: 25, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !446, line: 680, column: 25)
!1987 = !DILocation(line: 680, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !446, line: 680, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !446, line: 680, column: 25)
!1990 = distinct !DILexicalBlock(scope: !1986, file: !446, line: 680, column: 25)
!1991 = !DILocation(line: 680, column: 25, scope: !1989)
!1992 = !DILocation(line: 680, column: 25, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !446, line: 680, column: 25)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !446, line: 680, column: 25)
!1995 = !DILocation(line: 680, column: 25, scope: !1994)
!1996 = !DILocation(line: 680, column: 25, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !446, line: 680, column: 25)
!1998 = distinct !DILexicalBlock(scope: !1990, file: !446, line: 680, column: 25)
!1999 = !DILocation(line: 680, column: 25, scope: !1998)
!2000 = !DILocation(line: 680, column: 25, scope: !1990)
!2001 = !DILocation(line: 680, column: 25, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !446, line: 680, column: 25)
!2003 = distinct !DILexicalBlock(scope: !1983, file: !446, line: 680, column: 25)
!2004 = !DILocation(line: 680, column: 25, scope: !2003)
!2005 = !DILocation(line: 681, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !446, line: 681, column: 25)
!2007 = distinct !DILexicalBlock(scope: !1984, file: !446, line: 681, column: 25)
!2008 = !DILocation(line: 681, column: 25, scope: !2007)
!2009 = !DILocation(line: 682, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !446, line: 682, column: 25)
!2011 = distinct !DILexicalBlock(scope: !1984, file: !446, line: 682, column: 25)
!2012 = !DILocation(line: 682, column: 25, scope: !2011)
!2013 = !DILocation(line: 683, column: 38, scope: !1984)
!2014 = !DILocation(line: 683, column: 33, scope: !1984)
!2015 = !DILocation(line: 684, column: 23, scope: !1984)
!2016 = !DILocation(line: 685, column: 30, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1978, file: !446, line: 685, column: 30)
!2018 = !DILocation(line: 685, column: 30, scope: !1978)
!2019 = !DILocation(line: 687, column: 25, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !2021, file: !446, line: 687, column: 25)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !446, line: 687, column: 25)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !446, line: 686, column: 23)
!2023 = !DILocation(line: 687, column: 25, scope: !2021)
!2024 = !DILocation(line: 689, column: 23, scope: !2022)
!2025 = !DILocation(line: 690, column: 35, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 690, column: 25)
!2027 = !DILocation(line: 690, column: 30, scope: !2026)
!2028 = !DILocation(line: 690, column: 25, scope: !1979)
!2029 = !DILocation(line: 692, column: 21, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !446, line: 692, column: 21)
!2031 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 692, column: 21)
!2032 = !DILocation(line: 692, column: 21, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !446, line: 692, column: 21)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !446, line: 692, column: 21)
!2035 = distinct !DILexicalBlock(scope: !2030, file: !446, line: 692, column: 21)
!2036 = !DILocation(line: 692, column: 21, scope: !2034)
!2037 = !DILocation(line: 692, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !446, line: 692, column: 21)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !446, line: 692, column: 21)
!2040 = !DILocation(line: 692, column: 21, scope: !2039)
!2041 = !DILocation(line: 692, column: 21, scope: !2035)
!2042 = !DILocation(line: 0, scope: !1979)
!2043 = !DILocation(line: 693, column: 21, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2045, file: !446, line: 693, column: 21)
!2045 = distinct !DILexicalBlock(scope: !1979, file: !446, line: 693, column: 21)
!2046 = !DILocation(line: 693, column: 21, scope: !2045)
!2047 = !DILocation(line: 694, column: 25, scope: !1979)
!2048 = !DILocation(line: 676, column: 17, scope: !1980)
!2049 = distinct !{!2049, !2050, !2051}
!2050 = !DILocation(line: 676, column: 17, scope: !1981)
!2051 = !DILocation(line: 695, column: 19, scope: !1981)
!2052 = !DILocation(line: 409, column: 30, scope: !1768)
!2053 = !DILocation(line: 702, column: 34, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 702, column: 11)
!2055 = !DILocation(line: 704, column: 14, scope: !2054)
!2056 = !DILocation(line: 705, column: 14, scope: !2054)
!2057 = !DILocation(line: 705, column: 35, scope: !2054)
!2058 = !DILocation(line: 705, column: 17, scope: !2054)
!2059 = !DILocation(line: 705, column: 47, scope: !2054)
!2060 = !DILocation(line: 705, column: 65, scope: !2054)
!2061 = !DILocation(line: 706, column: 11, scope: !2054)
!2062 = !DILocation(line: 702, column: 11, scope: !1617)
!2063 = !DILocation(line: 395, column: 15, scope: !1615)
!2064 = !DILocation(line: 709, column: 5, scope: !1617)
!2065 = !DILocation(line: 710, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 710, column: 7)
!2067 = !DILocation(line: 710, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2066, file: !446, line: 710, column: 7)
!2069 = !DILocation(line: 710, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !446, line: 710, column: 7)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !446, line: 710, column: 7)
!2072 = distinct !DILexicalBlock(scope: !2068, file: !446, line: 710, column: 7)
!2073 = !DILocation(line: 710, column: 7, scope: !2071)
!2074 = !DILocation(line: 710, column: 7, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !446, line: 710, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !446, line: 710, column: 7)
!2077 = !DILocation(line: 710, column: 7, scope: !2076)
!2078 = !DILocation(line: 710, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !446, line: 710, column: 7)
!2080 = distinct !DILexicalBlock(scope: !2072, file: !446, line: 710, column: 7)
!2081 = !DILocation(line: 710, column: 7, scope: !2080)
!2082 = !DILocation(line: 710, column: 7, scope: !2072)
!2083 = !DILocation(line: 710, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !446, line: 710, column: 7)
!2085 = distinct !DILexicalBlock(scope: !2066, file: !446, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2085)
!2087 = !DILocation(line: 712, column: 5, scope: !1617)
!2088 = !DILocation(line: 713, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !446, line: 713, column: 7)
!2090 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 713, column: 7)
!2091 = !DILocation(line: 417, column: 21, scope: !1617)
!2092 = !DILocation(line: 713, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2094, file: !446, line: 713, column: 7)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !446, line: 713, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2089, file: !446, line: 713, column: 7)
!2096 = !DILocation(line: 713, column: 7, scope: !2094)
!2097 = !DILocation(line: 713, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !446, line: 713, column: 7)
!2099 = distinct !DILexicalBlock(scope: !2095, file: !446, line: 713, column: 7)
!2100 = !DILocation(line: 713, column: 7, scope: !2099)
!2101 = !DILocation(line: 713, column: 7, scope: !2095)
!2102 = !DILocation(line: 714, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !446, line: 714, column: 7)
!2104 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 714, column: 7)
!2105 = !DILocation(line: 714, column: 7, scope: !2104)
!2106 = !DILocation(line: 716, column: 13, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1617, file: !446, line: 716, column: 11)
!2108 = !DILocation(line: 716, column: 11, scope: !1617)
!2109 = !DILocation(line: 718, column: 5, scope: !1618)
!2110 = !DILocation(line: 395, column: 82, scope: !1618)
!2111 = !DILocation(line: 395, column: 3, scope: !1618)
!2112 = distinct !{!2112, !1764, !2113, !862}
!2113 = !DILocation(line: 718, column: 5, scope: !1615)
!2114 = !DILocation(line: 720, column: 11, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 720, column: 7)
!2116 = !DILocation(line: 720, column: 16, scope: !2115)
!2117 = !DILocation(line: 728, column: 51, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 728, column: 7)
!2119 = !DILocation(line: 731, column: 11, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2121, file: !446, line: 731, column: 11)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !446, line: 730, column: 5)
!2122 = !DILocation(line: 731, column: 11, scope: !2121)
!2123 = !DILocation(line: 732, column: 16, scope: !2120)
!2124 = !DILocation(line: 732, column: 9, scope: !2120)
!2125 = !DILocation(line: 736, column: 18, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2120, file: !446, line: 736, column: 16)
!2127 = !DILocation(line: 736, column: 29, scope: !2126)
!2128 = !DILocation(line: 745, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 745, column: 7)
!2130 = !DILocation(line: 745, column: 20, scope: !2129)
!2131 = !DILocation(line: 746, column: 12, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !446, line: 746, column: 5)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !446, line: 746, column: 5)
!2134 = !DILocation(line: 746, column: 5, scope: !2133)
!2135 = !DILocation(line: 747, column: 7, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !446, line: 747, column: 7)
!2137 = distinct !DILexicalBlock(scope: !2132, file: !446, line: 747, column: 7)
!2138 = !DILocation(line: 747, column: 7, scope: !2137)
!2139 = !DILocation(line: 746, column: 39, scope: !2132)
!2140 = distinct !{!2140, !2134, !2141, !862}
!2141 = !DILocation(line: 747, column: 7, scope: !2133)
!2142 = !DILocation(line: 749, column: 11, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 749, column: 7)
!2144 = !DILocation(line: 749, column: 7, scope: !1583)
!2145 = !DILocation(line: 750, column: 5, scope: !2143)
!2146 = !DILocation(line: 750, column: 17, scope: !2143)
!2147 = !DILocation(line: 753, column: 2, scope: !1583)
!2148 = !DILocation(line: 756, column: 51, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !1583, file: !446, line: 756, column: 7)
!2150 = !DILocation(line: 756, column: 21, scope: !2149)
!2151 = !DILocation(line: 760, column: 42, scope: !1583)
!2152 = !DILocation(line: 758, column: 10, scope: !1583)
!2153 = !DILocation(line: 758, column: 3, scope: !1583)
!2154 = !DILocation(line: 762, column: 1, scope: !1583)
!2155 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !939, file: !939, line: 98, type: !2156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!110}
!2158 = !DISubprogram(name: "strlen", scope: !935, file: !935, line: 407, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!112, !72}
!2161 = !DISubprogram(name: "iswprint", scope: !2162, file: !2162, line: 120, type: !1958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2163 = distinct !DISubprogram(name: "quotearg_alloc", scope: !446, file: !446, line: 788, type: !2164, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!255, !72, !110, !1476}
!2166 = !{!2167, !2168, !2169}
!2167 = !DILocalVariable(name: "arg", arg: 1, scope: !2163, file: !446, line: 788, type: !72)
!2168 = !DILocalVariable(name: "argsize", arg: 2, scope: !2163, file: !446, line: 788, type: !110)
!2169 = !DILocalVariable(name: "o", arg: 3, scope: !2163, file: !446, line: 789, type: !1476)
!2170 = !DILocation(line: 0, scope: !2163)
!2171 = !DILocalVariable(name: "arg", arg: 1, scope: !2172, file: !446, line: 801, type: !72)
!2172 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !446, file: !446, line: 801, type: !2173, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!255, !72, !110, !687, !1476}
!2175 = !{!2171, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2176 = !DILocalVariable(name: "argsize", arg: 2, scope: !2172, file: !446, line: 801, type: !110)
!2177 = !DILocalVariable(name: "size", arg: 3, scope: !2172, file: !446, line: 801, type: !687)
!2178 = !DILocalVariable(name: "o", arg: 4, scope: !2172, file: !446, line: 802, type: !1476)
!2179 = !DILocalVariable(name: "p", scope: !2172, file: !446, line: 804, type: !1476)
!2180 = !DILocalVariable(name: "saved_errno", scope: !2172, file: !446, line: 805, type: !108)
!2181 = !DILocalVariable(name: "flags", scope: !2172, file: !446, line: 807, type: !108)
!2182 = !DILocalVariable(name: "bufsize", scope: !2172, file: !446, line: 808, type: !110)
!2183 = !DILocalVariable(name: "buf", scope: !2172, file: !446, line: 812, type: !255)
!2184 = !DILocation(line: 0, scope: !2172, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 791, column: 10, scope: !2163)
!2186 = !DILocation(line: 804, column: 37, scope: !2172, inlinedAt: !2185)
!2187 = !DILocation(line: 805, column: 21, scope: !2172, inlinedAt: !2185)
!2188 = !DILocation(line: 807, column: 18, scope: !2172, inlinedAt: !2185)
!2189 = !DILocation(line: 807, column: 24, scope: !2172, inlinedAt: !2185)
!2190 = !DILocation(line: 808, column: 72, scope: !2172, inlinedAt: !2185)
!2191 = !DILocation(line: 809, column: 56, scope: !2172, inlinedAt: !2185)
!2192 = !DILocation(line: 810, column: 49, scope: !2172, inlinedAt: !2185)
!2193 = !DILocation(line: 811, column: 49, scope: !2172, inlinedAt: !2185)
!2194 = !DILocation(line: 808, column: 20, scope: !2172, inlinedAt: !2185)
!2195 = !DILocation(line: 811, column: 62, scope: !2172, inlinedAt: !2185)
!2196 = !DILocation(line: 812, column: 15, scope: !2172, inlinedAt: !2185)
!2197 = !DILocation(line: 813, column: 60, scope: !2172, inlinedAt: !2185)
!2198 = !DILocation(line: 815, column: 32, scope: !2172, inlinedAt: !2185)
!2199 = !DILocation(line: 815, column: 47, scope: !2172, inlinedAt: !2185)
!2200 = !DILocation(line: 813, column: 3, scope: !2172, inlinedAt: !2185)
!2201 = !DILocation(line: 816, column: 9, scope: !2172, inlinedAt: !2185)
!2202 = !DILocation(line: 791, column: 3, scope: !2163)
!2203 = !DILocation(line: 0, scope: !2172)
!2204 = !DILocation(line: 804, column: 37, scope: !2172)
!2205 = !DILocation(line: 805, column: 21, scope: !2172)
!2206 = !DILocation(line: 807, column: 18, scope: !2172)
!2207 = !DILocation(line: 807, column: 27, scope: !2172)
!2208 = !DILocation(line: 807, column: 24, scope: !2172)
!2209 = !DILocation(line: 808, column: 72, scope: !2172)
!2210 = !DILocation(line: 809, column: 56, scope: !2172)
!2211 = !DILocation(line: 810, column: 49, scope: !2172)
!2212 = !DILocation(line: 811, column: 49, scope: !2172)
!2213 = !DILocation(line: 808, column: 20, scope: !2172)
!2214 = !DILocation(line: 811, column: 62, scope: !2172)
!2215 = !DILocation(line: 812, column: 15, scope: !2172)
!2216 = !DILocation(line: 813, column: 60, scope: !2172)
!2217 = !DILocation(line: 815, column: 32, scope: !2172)
!2218 = !DILocation(line: 815, column: 47, scope: !2172)
!2219 = !DILocation(line: 813, column: 3, scope: !2172)
!2220 = !DILocation(line: 816, column: 9, scope: !2172)
!2221 = !DILocation(line: 817, column: 7, scope: !2172)
!2222 = !DILocation(line: 818, column: 11, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2172, file: !446, line: 817, column: 7)
!2224 = !{!1194, !1194, i64 0}
!2225 = !DILocation(line: 818, column: 5, scope: !2223)
!2226 = !DILocation(line: 819, column: 3, scope: !2172)
!2227 = distinct !DISubprogram(name: "quotearg_free", scope: !446, file: !446, line: 837, type: !377, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2228)
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "sv", scope: !2227, file: !446, line: 839, type: !535)
!2230 = !DILocalVariable(name: "i", scope: !2231, file: !446, line: 840, type: !108)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !446, line: 840, column: 3)
!2232 = !DILocation(line: 839, column: 24, scope: !2227)
!2233 = !DILocation(line: 0, scope: !2227)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 840, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !446, line: 840, column: 3)
!2237 = !DILocation(line: 840, column: 3, scope: !2231)
!2238 = !DILocation(line: 842, column: 13, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2227, file: !446, line: 842, column: 7)
!2240 = !{!2241, !755, i64 8}
!2241 = !{!"slotvec", !1194, i64 0, !755, i64 8}
!2242 = !DILocation(line: 842, column: 17, scope: !2239)
!2243 = !DILocation(line: 842, column: 7, scope: !2227)
!2244 = !DILocation(line: 841, column: 17, scope: !2236)
!2245 = !DILocation(line: 841, column: 5, scope: !2236)
!2246 = !DILocation(line: 840, column: 32, scope: !2236)
!2247 = distinct !{!2247, !2237, !2248, !862}
!2248 = !DILocation(line: 841, column: 20, scope: !2231)
!2249 = !DILocation(line: 844, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !446, line: 843, column: 5)
!2251 = !DILocation(line: 845, column: 21, scope: !2250)
!2252 = !{!2241, !1194, i64 0}
!2253 = !DILocation(line: 846, column: 20, scope: !2250)
!2254 = !DILocation(line: 847, column: 5, scope: !2250)
!2255 = !DILocation(line: 848, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2227, file: !446, line: 848, column: 7)
!2257 = !DILocation(line: 848, column: 7, scope: !2227)
!2258 = !DILocation(line: 850, column: 7, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !446, line: 849, column: 5)
!2260 = !DILocation(line: 851, column: 15, scope: !2259)
!2261 = !DILocation(line: 852, column: 5, scope: !2259)
!2262 = !DILocation(line: 853, column: 10, scope: !2227)
!2263 = !DILocation(line: 854, column: 1, scope: !2227)
!2264 = !DISubprogram(name: "free", scope: !1430, file: !1430, line: 786, type: !2265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !107}
!2267 = distinct !DISubprogram(name: "quotearg_n", scope: !446, file: !446, line: 919, type: !932, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2268)
!2268 = !{!2269, !2270}
!2269 = !DILocalVariable(name: "n", arg: 1, scope: !2267, file: !446, line: 919, type: !108)
!2270 = !DILocalVariable(name: "arg", arg: 2, scope: !2267, file: !446, line: 919, type: !72)
!2271 = !DILocation(line: 0, scope: !2267)
!2272 = !DILocation(line: 921, column: 10, scope: !2267)
!2273 = !DILocation(line: 921, column: 3, scope: !2267)
!2274 = distinct !DISubprogram(name: "quotearg_n_options", scope: !446, file: !446, line: 866, type: !2275, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!255, !108, !72, !110, !1476}
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2288, !2289, !2291, !2292, !2293}
!2278 = !DILocalVariable(name: "n", arg: 1, scope: !2274, file: !446, line: 866, type: !108)
!2279 = !DILocalVariable(name: "arg", arg: 2, scope: !2274, file: !446, line: 866, type: !72)
!2280 = !DILocalVariable(name: "argsize", arg: 3, scope: !2274, file: !446, line: 866, type: !110)
!2281 = !DILocalVariable(name: "options", arg: 4, scope: !2274, file: !446, line: 867, type: !1476)
!2282 = !DILocalVariable(name: "saved_errno", scope: !2274, file: !446, line: 869, type: !108)
!2283 = !DILocalVariable(name: "sv", scope: !2274, file: !446, line: 871, type: !535)
!2284 = !DILocalVariable(name: "nslots_max", scope: !2274, file: !446, line: 873, type: !108)
!2285 = !DILocalVariable(name: "preallocated", scope: !2286, file: !446, line: 879, type: !234)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !446, line: 878, column: 5)
!2287 = distinct !DILexicalBlock(scope: !2274, file: !446, line: 877, column: 7)
!2288 = !DILocalVariable(name: "new_nslots", scope: !2286, file: !446, line: 880, type: !700)
!2289 = !DILocalVariable(name: "size", scope: !2290, file: !446, line: 891, type: !110)
!2290 = distinct !DILexicalBlock(scope: !2274, file: !446, line: 890, column: 3)
!2291 = !DILocalVariable(name: "val", scope: !2290, file: !446, line: 892, type: !255)
!2292 = !DILocalVariable(name: "flags", scope: !2290, file: !446, line: 894, type: !108)
!2293 = !DILocalVariable(name: "qsize", scope: !2290, file: !446, line: 895, type: !110)
!2294 = distinct !DIAssignID()
!2295 = !DILocation(line: 0, scope: !2286)
!2296 = !DILocation(line: 0, scope: !2274)
!2297 = !DILocation(line: 869, column: 21, scope: !2274)
!2298 = !DILocation(line: 871, column: 24, scope: !2274)
!2299 = !DILocation(line: 874, column: 17, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2274, file: !446, line: 874, column: 7)
!2301 = !DILocation(line: 875, column: 5, scope: !2300)
!2302 = !DILocation(line: 877, column: 7, scope: !2287)
!2303 = !DILocation(line: 877, column: 14, scope: !2287)
!2304 = !DILocation(line: 877, column: 7, scope: !2274)
!2305 = !DILocation(line: 879, column: 31, scope: !2286)
!2306 = !DILocation(line: 880, column: 7, scope: !2286)
!2307 = !DILocation(line: 880, column: 26, scope: !2286)
!2308 = !DILocation(line: 880, column: 13, scope: !2286)
!2309 = distinct !DIAssignID()
!2310 = !DILocation(line: 882, column: 31, scope: !2286)
!2311 = !DILocation(line: 883, column: 33, scope: !2286)
!2312 = !DILocation(line: 883, column: 42, scope: !2286)
!2313 = !DILocation(line: 883, column: 31, scope: !2286)
!2314 = !DILocation(line: 882, column: 22, scope: !2286)
!2315 = !DILocation(line: 882, column: 15, scope: !2286)
!2316 = !DILocation(line: 884, column: 11, scope: !2286)
!2317 = !DILocation(line: 885, column: 15, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2286, file: !446, line: 884, column: 11)
!2319 = !{i64 0, i64 8, !2224, i64 8, i64 8, !754}
!2320 = !DILocation(line: 885, column: 9, scope: !2318)
!2321 = !DILocation(line: 886, column: 20, scope: !2286)
!2322 = !DILocation(line: 886, column: 18, scope: !2286)
!2323 = !DILocation(line: 886, column: 32, scope: !2286)
!2324 = !DILocation(line: 886, column: 43, scope: !2286)
!2325 = !DILocation(line: 886, column: 53, scope: !2286)
!2326 = !DILocation(line: 0, scope: !1698, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 886, column: 7, scope: !2286)
!2328 = !DILocation(line: 59, column: 10, scope: !1698, inlinedAt: !2327)
!2329 = !DILocation(line: 887, column: 16, scope: !2286)
!2330 = !DILocation(line: 887, column: 14, scope: !2286)
!2331 = !DILocation(line: 888, column: 5, scope: !2287)
!2332 = !DILocation(line: 888, column: 5, scope: !2286)
!2333 = !DILocation(line: 891, column: 19, scope: !2290)
!2334 = !DILocation(line: 891, column: 25, scope: !2290)
!2335 = !DILocation(line: 0, scope: !2290)
!2336 = !DILocation(line: 892, column: 23, scope: !2290)
!2337 = !DILocation(line: 894, column: 26, scope: !2290)
!2338 = !DILocation(line: 894, column: 32, scope: !2290)
!2339 = !DILocation(line: 896, column: 55, scope: !2290)
!2340 = !DILocation(line: 897, column: 55, scope: !2290)
!2341 = !DILocation(line: 898, column: 55, scope: !2290)
!2342 = !DILocation(line: 899, column: 55, scope: !2290)
!2343 = !DILocation(line: 895, column: 20, scope: !2290)
!2344 = !DILocation(line: 901, column: 14, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2290, file: !446, line: 901, column: 9)
!2346 = !DILocation(line: 901, column: 9, scope: !2290)
!2347 = !DILocation(line: 903, column: 35, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !446, line: 902, column: 7)
!2349 = !DILocation(line: 903, column: 20, scope: !2348)
!2350 = !DILocation(line: 904, column: 17, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !446, line: 904, column: 13)
!2352 = !DILocation(line: 904, column: 13, scope: !2348)
!2353 = !DILocation(line: 905, column: 11, scope: !2351)
!2354 = !DILocation(line: 906, column: 27, scope: !2348)
!2355 = !DILocation(line: 906, column: 19, scope: !2348)
!2356 = !DILocation(line: 907, column: 69, scope: !2348)
!2357 = !DILocation(line: 909, column: 44, scope: !2348)
!2358 = !DILocation(line: 910, column: 44, scope: !2348)
!2359 = !DILocation(line: 907, column: 9, scope: !2348)
!2360 = !DILocation(line: 911, column: 7, scope: !2348)
!2361 = !DILocation(line: 913, column: 11, scope: !2290)
!2362 = !DILocation(line: 914, column: 5, scope: !2290)
!2363 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !446, file: !446, line: 925, type: !2364, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2366)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!255, !108, !72, !110}
!2366 = !{!2367, !2368, !2369}
!2367 = !DILocalVariable(name: "n", arg: 1, scope: !2363, file: !446, line: 925, type: !108)
!2368 = !DILocalVariable(name: "arg", arg: 2, scope: !2363, file: !446, line: 925, type: !72)
!2369 = !DILocalVariable(name: "argsize", arg: 3, scope: !2363, file: !446, line: 925, type: !110)
!2370 = !DILocation(line: 0, scope: !2363)
!2371 = !DILocation(line: 927, column: 10, scope: !2363)
!2372 = !DILocation(line: 927, column: 3, scope: !2363)
!2373 = distinct !DISubprogram(name: "quotearg", scope: !446, file: !446, line: 931, type: !941, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2374)
!2374 = !{!2375}
!2375 = !DILocalVariable(name: "arg", arg: 1, scope: !2373, file: !446, line: 931, type: !72)
!2376 = !DILocation(line: 0, scope: !2373)
!2377 = !DILocation(line: 0, scope: !2267, inlinedAt: !2378)
!2378 = distinct !DILocation(line: 933, column: 10, scope: !2373)
!2379 = !DILocation(line: 921, column: 10, scope: !2267, inlinedAt: !2378)
!2380 = !DILocation(line: 933, column: 3, scope: !2373)
!2381 = distinct !DISubprogram(name: "quotearg_mem", scope: !446, file: !446, line: 937, type: !2382, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!255, !72, !110}
!2384 = !{!2385, !2386}
!2385 = !DILocalVariable(name: "arg", arg: 1, scope: !2381, file: !446, line: 937, type: !72)
!2386 = !DILocalVariable(name: "argsize", arg: 2, scope: !2381, file: !446, line: 937, type: !110)
!2387 = !DILocation(line: 0, scope: !2381)
!2388 = !DILocation(line: 0, scope: !2363, inlinedAt: !2389)
!2389 = distinct !DILocation(line: 939, column: 10, scope: !2381)
!2390 = !DILocation(line: 927, column: 10, scope: !2363, inlinedAt: !2389)
!2391 = !DILocation(line: 939, column: 3, scope: !2381)
!2392 = distinct !DISubprogram(name: "quotearg_n_style", scope: !446, file: !446, line: 943, type: !2393, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2395)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!255, !108, !472, !72}
!2395 = !{!2396, !2397, !2398, !2399}
!2396 = !DILocalVariable(name: "n", arg: 1, scope: !2392, file: !446, line: 943, type: !108)
!2397 = !DILocalVariable(name: "s", arg: 2, scope: !2392, file: !446, line: 943, type: !472)
!2398 = !DILocalVariable(name: "arg", arg: 3, scope: !2392, file: !446, line: 943, type: !72)
!2399 = !DILocalVariable(name: "o", scope: !2392, file: !446, line: 945, type: !1477)
!2400 = distinct !DIAssignID()
!2401 = !DILocation(line: 0, scope: !2392)
!2402 = !DILocation(line: 945, column: 3, scope: !2392)
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"quoting_options_from_style: argument 0"}
!2405 = distinct !{!2405, !"quoting_options_from_style"}
!2406 = !DILocation(line: 945, column: 36, scope: !2392)
!2407 = !DILocalVariable(name: "style", arg: 1, scope: !2408, file: !446, line: 183, type: !472)
!2408 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !446, file: !446, line: 183, type: !2409, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!487, !472}
!2411 = !{!2407, !2412}
!2412 = !DILocalVariable(name: "o", scope: !2408, file: !446, line: 185, type: !487)
!2413 = !DILocation(line: 0, scope: !2408, inlinedAt: !2414)
!2414 = distinct !DILocation(line: 945, column: 36, scope: !2392)
!2415 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2414)
!2416 = distinct !DIAssignID()
!2417 = !DILocation(line: 186, column: 13, scope: !2418, inlinedAt: !2414)
!2418 = distinct !DILexicalBlock(scope: !2408, file: !446, line: 186, column: 7)
!2419 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2414)
!2420 = !DILocation(line: 187, column: 5, scope: !2418, inlinedAt: !2414)
!2421 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2414)
!2422 = distinct !DIAssignID()
!2423 = !DILocation(line: 946, column: 10, scope: !2392)
!2424 = !DILocation(line: 947, column: 1, scope: !2392)
!2425 = !DILocation(line: 946, column: 3, scope: !2392)
!2426 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !446, file: !446, line: 950, type: !2427, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!255, !108, !472, !72, !110}
!2429 = !{!2430, !2431, !2432, !2433, !2434}
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2426, file: !446, line: 950, type: !108)
!2431 = !DILocalVariable(name: "s", arg: 2, scope: !2426, file: !446, line: 950, type: !472)
!2432 = !DILocalVariable(name: "arg", arg: 3, scope: !2426, file: !446, line: 951, type: !72)
!2433 = !DILocalVariable(name: "argsize", arg: 4, scope: !2426, file: !446, line: 951, type: !110)
!2434 = !DILocalVariable(name: "o", scope: !2426, file: !446, line: 953, type: !1477)
!2435 = distinct !DIAssignID()
!2436 = !DILocation(line: 0, scope: !2426)
!2437 = !DILocation(line: 953, column: 3, scope: !2426)
!2438 = !{!2439}
!2439 = distinct !{!2439, !2440, !"quoting_options_from_style: argument 0"}
!2440 = distinct !{!2440, !"quoting_options_from_style"}
!2441 = !DILocation(line: 953, column: 36, scope: !2426)
!2442 = !DILocation(line: 0, scope: !2408, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 953, column: 36, scope: !2426)
!2444 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2443)
!2445 = distinct !DIAssignID()
!2446 = !DILocation(line: 186, column: 13, scope: !2418, inlinedAt: !2443)
!2447 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2443)
!2448 = !DILocation(line: 187, column: 5, scope: !2418, inlinedAt: !2443)
!2449 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2443)
!2450 = distinct !DIAssignID()
!2451 = !DILocation(line: 954, column: 10, scope: !2426)
!2452 = !DILocation(line: 955, column: 1, scope: !2426)
!2453 = !DILocation(line: 954, column: 3, scope: !2426)
!2454 = distinct !DISubprogram(name: "quotearg_style", scope: !446, file: !446, line: 958, type: !2455, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2457)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!255, !472, !72}
!2457 = !{!2458, !2459}
!2458 = !DILocalVariable(name: "s", arg: 1, scope: !2454, file: !446, line: 958, type: !472)
!2459 = !DILocalVariable(name: "arg", arg: 2, scope: !2454, file: !446, line: 958, type: !72)
!2460 = distinct !DIAssignID()
!2461 = !DILocation(line: 0, scope: !2454)
!2462 = !DILocation(line: 0, scope: !2392, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 960, column: 10, scope: !2454)
!2464 = !DILocation(line: 945, column: 3, scope: !2392, inlinedAt: !2463)
!2465 = !{!2466}
!2466 = distinct !{!2466, !2467, !"quoting_options_from_style: argument 0"}
!2467 = distinct !{!2467, !"quoting_options_from_style"}
!2468 = !DILocation(line: 945, column: 36, scope: !2392, inlinedAt: !2463)
!2469 = !DILocation(line: 0, scope: !2408, inlinedAt: !2470)
!2470 = distinct !DILocation(line: 945, column: 36, scope: !2392, inlinedAt: !2463)
!2471 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2470)
!2472 = distinct !DIAssignID()
!2473 = !DILocation(line: 186, column: 13, scope: !2418, inlinedAt: !2470)
!2474 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2470)
!2475 = !DILocation(line: 187, column: 5, scope: !2418, inlinedAt: !2470)
!2476 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2470)
!2477 = distinct !DIAssignID()
!2478 = !DILocation(line: 946, column: 10, scope: !2392, inlinedAt: !2463)
!2479 = !DILocation(line: 947, column: 1, scope: !2392, inlinedAt: !2463)
!2480 = !DILocation(line: 960, column: 3, scope: !2454)
!2481 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !446, file: !446, line: 964, type: !2482, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2484)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!255, !472, !72, !110}
!2484 = !{!2485, !2486, !2487}
!2485 = !DILocalVariable(name: "s", arg: 1, scope: !2481, file: !446, line: 964, type: !472)
!2486 = !DILocalVariable(name: "arg", arg: 2, scope: !2481, file: !446, line: 964, type: !72)
!2487 = !DILocalVariable(name: "argsize", arg: 3, scope: !2481, file: !446, line: 964, type: !110)
!2488 = distinct !DIAssignID()
!2489 = !DILocation(line: 0, scope: !2481)
!2490 = !DILocation(line: 0, scope: !2426, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 966, column: 10, scope: !2481)
!2492 = !DILocation(line: 953, column: 3, scope: !2426, inlinedAt: !2491)
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"quoting_options_from_style: argument 0"}
!2495 = distinct !{!2495, !"quoting_options_from_style"}
!2496 = !DILocation(line: 953, column: 36, scope: !2426, inlinedAt: !2491)
!2497 = !DILocation(line: 0, scope: !2408, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 953, column: 36, scope: !2426, inlinedAt: !2491)
!2499 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2498)
!2500 = distinct !DIAssignID()
!2501 = !DILocation(line: 186, column: 13, scope: !2418, inlinedAt: !2498)
!2502 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2498)
!2503 = !DILocation(line: 187, column: 5, scope: !2418, inlinedAt: !2498)
!2504 = !DILocation(line: 188, column: 11, scope: !2408, inlinedAt: !2498)
!2505 = distinct !DIAssignID()
!2506 = !DILocation(line: 954, column: 10, scope: !2426, inlinedAt: !2491)
!2507 = !DILocation(line: 955, column: 1, scope: !2426, inlinedAt: !2491)
!2508 = !DILocation(line: 966, column: 3, scope: !2481)
!2509 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !446, file: !446, line: 970, type: !2510, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2512)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!255, !72, !110, !4}
!2512 = !{!2513, !2514, !2515, !2516}
!2513 = !DILocalVariable(name: "arg", arg: 1, scope: !2509, file: !446, line: 970, type: !72)
!2514 = !DILocalVariable(name: "argsize", arg: 2, scope: !2509, file: !446, line: 970, type: !110)
!2515 = !DILocalVariable(name: "ch", arg: 3, scope: !2509, file: !446, line: 970, type: !4)
!2516 = !DILocalVariable(name: "options", scope: !2509, file: !446, line: 972, type: !487)
!2517 = distinct !DIAssignID()
!2518 = !DILocation(line: 0, scope: !2509)
!2519 = !DILocation(line: 972, column: 3, scope: !2509)
!2520 = !DILocation(line: 973, column: 13, scope: !2509)
!2521 = !{i64 0, i64 4, !815, i64 4, i64 4, !815, i64 8, i64 32, !824, i64 40, i64 8, !754, i64 48, i64 8, !754}
!2522 = distinct !DIAssignID()
!2523 = !DILocation(line: 0, scope: !1496, inlinedAt: !2524)
!2524 = distinct !DILocation(line: 974, column: 3, scope: !2509)
!2525 = !DILocation(line: 147, column: 41, scope: !1496, inlinedAt: !2524)
!2526 = !DILocation(line: 147, column: 62, scope: !1496, inlinedAt: !2524)
!2527 = !DILocation(line: 147, column: 57, scope: !1496, inlinedAt: !2524)
!2528 = !DILocation(line: 148, column: 15, scope: !1496, inlinedAt: !2524)
!2529 = !DILocation(line: 149, column: 21, scope: !1496, inlinedAt: !2524)
!2530 = !DILocation(line: 149, column: 24, scope: !1496, inlinedAt: !2524)
!2531 = !DILocation(line: 150, column: 19, scope: !1496, inlinedAt: !2524)
!2532 = !DILocation(line: 150, column: 24, scope: !1496, inlinedAt: !2524)
!2533 = !DILocation(line: 150, column: 6, scope: !1496, inlinedAt: !2524)
!2534 = !DILocation(line: 975, column: 10, scope: !2509)
!2535 = !DILocation(line: 976, column: 1, scope: !2509)
!2536 = !DILocation(line: 975, column: 3, scope: !2509)
!2537 = distinct !DISubprogram(name: "quotearg_char", scope: !446, file: !446, line: 979, type: !2538, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2540)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!255, !72, !4}
!2540 = !{!2541, !2542}
!2541 = !DILocalVariable(name: "arg", arg: 1, scope: !2537, file: !446, line: 979, type: !72)
!2542 = !DILocalVariable(name: "ch", arg: 2, scope: !2537, file: !446, line: 979, type: !4)
!2543 = distinct !DIAssignID()
!2544 = !DILocation(line: 0, scope: !2537)
!2545 = !DILocation(line: 0, scope: !2509, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 981, column: 10, scope: !2537)
!2547 = !DILocation(line: 972, column: 3, scope: !2509, inlinedAt: !2546)
!2548 = !DILocation(line: 973, column: 13, scope: !2509, inlinedAt: !2546)
!2549 = distinct !DIAssignID()
!2550 = !DILocation(line: 0, scope: !1496, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 974, column: 3, scope: !2509, inlinedAt: !2546)
!2552 = !DILocation(line: 147, column: 41, scope: !1496, inlinedAt: !2551)
!2553 = !DILocation(line: 147, column: 62, scope: !1496, inlinedAt: !2551)
!2554 = !DILocation(line: 147, column: 57, scope: !1496, inlinedAt: !2551)
!2555 = !DILocation(line: 148, column: 15, scope: !1496, inlinedAt: !2551)
!2556 = !DILocation(line: 149, column: 21, scope: !1496, inlinedAt: !2551)
!2557 = !DILocation(line: 149, column: 24, scope: !1496, inlinedAt: !2551)
!2558 = !DILocation(line: 150, column: 19, scope: !1496, inlinedAt: !2551)
!2559 = !DILocation(line: 150, column: 24, scope: !1496, inlinedAt: !2551)
!2560 = !DILocation(line: 150, column: 6, scope: !1496, inlinedAt: !2551)
!2561 = !DILocation(line: 975, column: 10, scope: !2509, inlinedAt: !2546)
!2562 = !DILocation(line: 976, column: 1, scope: !2509, inlinedAt: !2546)
!2563 = !DILocation(line: 981, column: 3, scope: !2537)
!2564 = distinct !DISubprogram(name: "quotearg_colon", scope: !446, file: !446, line: 985, type: !941, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2565)
!2565 = !{!2566}
!2566 = !DILocalVariable(name: "arg", arg: 1, scope: !2564, file: !446, line: 985, type: !72)
!2567 = distinct !DIAssignID()
!2568 = !DILocation(line: 0, scope: !2564)
!2569 = !DILocation(line: 0, scope: !2537, inlinedAt: !2570)
!2570 = distinct !DILocation(line: 987, column: 10, scope: !2564)
!2571 = !DILocation(line: 0, scope: !2509, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 981, column: 10, scope: !2537, inlinedAt: !2570)
!2573 = !DILocation(line: 972, column: 3, scope: !2509, inlinedAt: !2572)
!2574 = !DILocation(line: 973, column: 13, scope: !2509, inlinedAt: !2572)
!2575 = distinct !DIAssignID()
!2576 = !DILocation(line: 0, scope: !1496, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 974, column: 3, scope: !2509, inlinedAt: !2572)
!2578 = !DILocation(line: 147, column: 57, scope: !1496, inlinedAt: !2577)
!2579 = !DILocation(line: 149, column: 21, scope: !1496, inlinedAt: !2577)
!2580 = !DILocation(line: 150, column: 6, scope: !1496, inlinedAt: !2577)
!2581 = !DILocation(line: 975, column: 10, scope: !2509, inlinedAt: !2572)
!2582 = !DILocation(line: 976, column: 1, scope: !2509, inlinedAt: !2572)
!2583 = !DILocation(line: 987, column: 3, scope: !2564)
!2584 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !446, file: !446, line: 991, type: !2382, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2585)
!2585 = !{!2586, !2587}
!2586 = !DILocalVariable(name: "arg", arg: 1, scope: !2584, file: !446, line: 991, type: !72)
!2587 = !DILocalVariable(name: "argsize", arg: 2, scope: !2584, file: !446, line: 991, type: !110)
!2588 = distinct !DIAssignID()
!2589 = !DILocation(line: 0, scope: !2584)
!2590 = !DILocation(line: 0, scope: !2509, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 993, column: 10, scope: !2584)
!2592 = !DILocation(line: 972, column: 3, scope: !2509, inlinedAt: !2591)
!2593 = !DILocation(line: 973, column: 13, scope: !2509, inlinedAt: !2591)
!2594 = distinct !DIAssignID()
!2595 = !DILocation(line: 0, scope: !1496, inlinedAt: !2596)
!2596 = distinct !DILocation(line: 974, column: 3, scope: !2509, inlinedAt: !2591)
!2597 = !DILocation(line: 147, column: 57, scope: !1496, inlinedAt: !2596)
!2598 = !DILocation(line: 149, column: 21, scope: !1496, inlinedAt: !2596)
!2599 = !DILocation(line: 150, column: 6, scope: !1496, inlinedAt: !2596)
!2600 = !DILocation(line: 975, column: 10, scope: !2509, inlinedAt: !2591)
!2601 = !DILocation(line: 976, column: 1, scope: !2509, inlinedAt: !2591)
!2602 = !DILocation(line: 993, column: 3, scope: !2584)
!2603 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !446, file: !446, line: 997, type: !2393, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2604)
!2604 = !{!2605, !2606, !2607, !2608}
!2605 = !DILocalVariable(name: "n", arg: 1, scope: !2603, file: !446, line: 997, type: !108)
!2606 = !DILocalVariable(name: "s", arg: 2, scope: !2603, file: !446, line: 997, type: !472)
!2607 = !DILocalVariable(name: "arg", arg: 3, scope: !2603, file: !446, line: 997, type: !72)
!2608 = !DILocalVariable(name: "options", scope: !2603, file: !446, line: 999, type: !487)
!2609 = distinct !DIAssignID()
!2610 = !DILocation(line: 0, scope: !2603)
!2611 = !DILocation(line: 185, column: 26, scope: !2408, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1000, column: 13, scope: !2603)
!2613 = !DILocation(line: 999, column: 3, scope: !2603)
!2614 = !DILocation(line: 0, scope: !2408, inlinedAt: !2612)
!2615 = !DILocation(line: 186, column: 13, scope: !2418, inlinedAt: !2612)
!2616 = !DILocation(line: 186, column: 7, scope: !2408, inlinedAt: !2612)
!2617 = !DILocation(line: 187, column: 5, scope: !2418, inlinedAt: !2612)
!2618 = !{!2619}
!2619 = distinct !{!2619, !2620, !"quoting_options_from_style: argument 0"}
!2620 = distinct !{!2620, !"quoting_options_from_style"}
!2621 = !DILocation(line: 1000, column: 13, scope: !2603)
!2622 = distinct !DIAssignID()
!2623 = distinct !DIAssignID()
!2624 = !DILocation(line: 0, scope: !1496, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1001, column: 3, scope: !2603)
!2626 = !DILocation(line: 147, column: 57, scope: !1496, inlinedAt: !2625)
!2627 = !DILocation(line: 149, column: 21, scope: !1496, inlinedAt: !2625)
!2628 = !DILocation(line: 150, column: 6, scope: !1496, inlinedAt: !2625)
!2629 = distinct !DIAssignID()
!2630 = !DILocation(line: 1002, column: 10, scope: !2603)
!2631 = !DILocation(line: 1003, column: 1, scope: !2603)
!2632 = !DILocation(line: 1002, column: 3, scope: !2603)
!2633 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !446, file: !446, line: 1006, type: !2634, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!255, !108, !72, !72, !72}
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DILocalVariable(name: "n", arg: 1, scope: !2633, file: !446, line: 1006, type: !108)
!2638 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2633, file: !446, line: 1006, type: !72)
!2639 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2633, file: !446, line: 1007, type: !72)
!2640 = !DILocalVariable(name: "arg", arg: 4, scope: !2633, file: !446, line: 1007, type: !72)
!2641 = distinct !DIAssignID()
!2642 = !DILocation(line: 0, scope: !2633)
!2643 = !DILocalVariable(name: "o", scope: !2644, file: !446, line: 1018, type: !487)
!2644 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !446, file: !446, line: 1014, type: !2645, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2647)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!255, !108, !72, !72, !72, !110}
!2647 = !{!2648, !2649, !2650, !2651, !2652, !2643}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2644, file: !446, line: 1014, type: !108)
!2649 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2644, file: !446, line: 1014, type: !72)
!2650 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2644, file: !446, line: 1015, type: !72)
!2651 = !DILocalVariable(name: "arg", arg: 4, scope: !2644, file: !446, line: 1016, type: !72)
!2652 = !DILocalVariable(name: "argsize", arg: 5, scope: !2644, file: !446, line: 1016, type: !110)
!2653 = !DILocation(line: 0, scope: !2644, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1009, column: 10, scope: !2633)
!2655 = !DILocation(line: 1018, column: 3, scope: !2644, inlinedAt: !2654)
!2656 = !DILocation(line: 1018, column: 30, scope: !2644, inlinedAt: !2654)
!2657 = distinct !DIAssignID()
!2658 = distinct !DIAssignID()
!2659 = !DILocation(line: 0, scope: !1536, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1019, column: 3, scope: !2644, inlinedAt: !2654)
!2661 = !DILocation(line: 174, column: 12, scope: !1536, inlinedAt: !2660)
!2662 = distinct !DIAssignID()
!2663 = !DILocation(line: 175, column: 8, scope: !1549, inlinedAt: !2660)
!2664 = !DILocation(line: 175, column: 19, scope: !1549, inlinedAt: !2660)
!2665 = !DILocation(line: 176, column: 5, scope: !1549, inlinedAt: !2660)
!2666 = !DILocation(line: 177, column: 6, scope: !1536, inlinedAt: !2660)
!2667 = !DILocation(line: 177, column: 17, scope: !1536, inlinedAt: !2660)
!2668 = distinct !DIAssignID()
!2669 = !DILocation(line: 178, column: 6, scope: !1536, inlinedAt: !2660)
!2670 = !DILocation(line: 178, column: 18, scope: !1536, inlinedAt: !2660)
!2671 = distinct !DIAssignID()
!2672 = !DILocation(line: 1020, column: 10, scope: !2644, inlinedAt: !2654)
!2673 = !DILocation(line: 1021, column: 1, scope: !2644, inlinedAt: !2654)
!2674 = !DILocation(line: 1009, column: 3, scope: !2633)
!2675 = distinct !DIAssignID()
!2676 = !DILocation(line: 0, scope: !2644)
!2677 = !DILocation(line: 1018, column: 3, scope: !2644)
!2678 = !DILocation(line: 1018, column: 30, scope: !2644)
!2679 = distinct !DIAssignID()
!2680 = distinct !DIAssignID()
!2681 = !DILocation(line: 0, scope: !1536, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1019, column: 3, scope: !2644)
!2683 = !DILocation(line: 174, column: 12, scope: !1536, inlinedAt: !2682)
!2684 = distinct !DIAssignID()
!2685 = !DILocation(line: 175, column: 8, scope: !1549, inlinedAt: !2682)
!2686 = !DILocation(line: 175, column: 19, scope: !1549, inlinedAt: !2682)
!2687 = !DILocation(line: 176, column: 5, scope: !1549, inlinedAt: !2682)
!2688 = !DILocation(line: 177, column: 6, scope: !1536, inlinedAt: !2682)
!2689 = !DILocation(line: 177, column: 17, scope: !1536, inlinedAt: !2682)
!2690 = distinct !DIAssignID()
!2691 = !DILocation(line: 178, column: 6, scope: !1536, inlinedAt: !2682)
!2692 = !DILocation(line: 178, column: 18, scope: !1536, inlinedAt: !2682)
!2693 = distinct !DIAssignID()
!2694 = !DILocation(line: 1020, column: 10, scope: !2644)
!2695 = !DILocation(line: 1021, column: 1, scope: !2644)
!2696 = !DILocation(line: 1020, column: 3, scope: !2644)
!2697 = distinct !DISubprogram(name: "quotearg_custom", scope: !446, file: !446, line: 1024, type: !2698, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!255, !72, !72, !72}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2697, file: !446, line: 1024, type: !72)
!2702 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2697, file: !446, line: 1024, type: !72)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !446, line: 1025, type: !72)
!2704 = distinct !DIAssignID()
!2705 = !DILocation(line: 0, scope: !2697)
!2706 = !DILocation(line: 0, scope: !2633, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 1027, column: 10, scope: !2697)
!2708 = !DILocation(line: 0, scope: !2644, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 1009, column: 10, scope: !2633, inlinedAt: !2707)
!2710 = !DILocation(line: 1018, column: 3, scope: !2644, inlinedAt: !2709)
!2711 = !DILocation(line: 1018, column: 30, scope: !2644, inlinedAt: !2709)
!2712 = distinct !DIAssignID()
!2713 = distinct !DIAssignID()
!2714 = !DILocation(line: 0, scope: !1536, inlinedAt: !2715)
!2715 = distinct !DILocation(line: 1019, column: 3, scope: !2644, inlinedAt: !2709)
!2716 = !DILocation(line: 174, column: 12, scope: !1536, inlinedAt: !2715)
!2717 = distinct !DIAssignID()
!2718 = !DILocation(line: 175, column: 8, scope: !1549, inlinedAt: !2715)
!2719 = !DILocation(line: 175, column: 19, scope: !1549, inlinedAt: !2715)
!2720 = !DILocation(line: 176, column: 5, scope: !1549, inlinedAt: !2715)
!2721 = !DILocation(line: 177, column: 6, scope: !1536, inlinedAt: !2715)
!2722 = !DILocation(line: 177, column: 17, scope: !1536, inlinedAt: !2715)
!2723 = distinct !DIAssignID()
!2724 = !DILocation(line: 178, column: 6, scope: !1536, inlinedAt: !2715)
!2725 = !DILocation(line: 178, column: 18, scope: !1536, inlinedAt: !2715)
!2726 = distinct !DIAssignID()
!2727 = !DILocation(line: 1020, column: 10, scope: !2644, inlinedAt: !2709)
!2728 = !DILocation(line: 1021, column: 1, scope: !2644, inlinedAt: !2709)
!2729 = !DILocation(line: 1027, column: 3, scope: !2697)
!2730 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !446, file: !446, line: 1031, type: !2731, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{!255, !72, !72, !72, !110}
!2733 = !{!2734, !2735, !2736, !2737}
!2734 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2730, file: !446, line: 1031, type: !72)
!2735 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2730, file: !446, line: 1031, type: !72)
!2736 = !DILocalVariable(name: "arg", arg: 3, scope: !2730, file: !446, line: 1032, type: !72)
!2737 = !DILocalVariable(name: "argsize", arg: 4, scope: !2730, file: !446, line: 1032, type: !110)
!2738 = distinct !DIAssignID()
!2739 = !DILocation(line: 0, scope: !2730)
!2740 = !DILocation(line: 0, scope: !2644, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1034, column: 10, scope: !2730)
!2742 = !DILocation(line: 1018, column: 3, scope: !2644, inlinedAt: !2741)
!2743 = !DILocation(line: 1018, column: 30, scope: !2644, inlinedAt: !2741)
!2744 = distinct !DIAssignID()
!2745 = distinct !DIAssignID()
!2746 = !DILocation(line: 0, scope: !1536, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 1019, column: 3, scope: !2644, inlinedAt: !2741)
!2748 = !DILocation(line: 174, column: 12, scope: !1536, inlinedAt: !2747)
!2749 = distinct !DIAssignID()
!2750 = !DILocation(line: 175, column: 8, scope: !1549, inlinedAt: !2747)
!2751 = !DILocation(line: 175, column: 19, scope: !1549, inlinedAt: !2747)
!2752 = !DILocation(line: 176, column: 5, scope: !1549, inlinedAt: !2747)
!2753 = !DILocation(line: 177, column: 6, scope: !1536, inlinedAt: !2747)
!2754 = !DILocation(line: 177, column: 17, scope: !1536, inlinedAt: !2747)
!2755 = distinct !DIAssignID()
!2756 = !DILocation(line: 178, column: 6, scope: !1536, inlinedAt: !2747)
!2757 = !DILocation(line: 178, column: 18, scope: !1536, inlinedAt: !2747)
!2758 = distinct !DIAssignID()
!2759 = !DILocation(line: 1020, column: 10, scope: !2644, inlinedAt: !2741)
!2760 = !DILocation(line: 1021, column: 1, scope: !2644, inlinedAt: !2741)
!2761 = !DILocation(line: 1034, column: 3, scope: !2730)
!2762 = distinct !DISubprogram(name: "quote_n_mem", scope: !446, file: !446, line: 1049, type: !2763, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2765)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!72, !108, !72, !110}
!2765 = !{!2766, !2767, !2768}
!2766 = !DILocalVariable(name: "n", arg: 1, scope: !2762, file: !446, line: 1049, type: !108)
!2767 = !DILocalVariable(name: "arg", arg: 2, scope: !2762, file: !446, line: 1049, type: !72)
!2768 = !DILocalVariable(name: "argsize", arg: 3, scope: !2762, file: !446, line: 1049, type: !110)
!2769 = !DILocation(line: 0, scope: !2762)
!2770 = !DILocation(line: 1051, column: 10, scope: !2762)
!2771 = !DILocation(line: 1051, column: 3, scope: !2762)
!2772 = distinct !DISubprogram(name: "quote_mem", scope: !446, file: !446, line: 1055, type: !2773, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2775)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!72, !72, !110}
!2775 = !{!2776, !2777}
!2776 = !DILocalVariable(name: "arg", arg: 1, scope: !2772, file: !446, line: 1055, type: !72)
!2777 = !DILocalVariable(name: "argsize", arg: 2, scope: !2772, file: !446, line: 1055, type: !110)
!2778 = !DILocation(line: 0, scope: !2772)
!2779 = !DILocation(line: 0, scope: !2762, inlinedAt: !2780)
!2780 = distinct !DILocation(line: 1057, column: 10, scope: !2772)
!2781 = !DILocation(line: 1051, column: 10, scope: !2762, inlinedAt: !2780)
!2782 = !DILocation(line: 1057, column: 3, scope: !2772)
!2783 = distinct !DISubprogram(name: "quote_n", scope: !446, file: !446, line: 1061, type: !2784, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2786)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!72, !108, !72}
!2786 = !{!2787, !2788}
!2787 = !DILocalVariable(name: "n", arg: 1, scope: !2783, file: !446, line: 1061, type: !108)
!2788 = !DILocalVariable(name: "arg", arg: 2, scope: !2783, file: !446, line: 1061, type: !72)
!2789 = !DILocation(line: 0, scope: !2783)
!2790 = !DILocation(line: 0, scope: !2762, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1063, column: 10, scope: !2783)
!2792 = !DILocation(line: 1051, column: 10, scope: !2762, inlinedAt: !2791)
!2793 = !DILocation(line: 1063, column: 3, scope: !2783)
!2794 = distinct !DISubprogram(name: "quote", scope: !446, file: !446, line: 1067, type: !2795, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !470, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!72, !72}
!2797 = !{!2798}
!2798 = !DILocalVariable(name: "arg", arg: 1, scope: !2794, file: !446, line: 1067, type: !72)
!2799 = !DILocation(line: 0, scope: !2794)
!2800 = !DILocation(line: 0, scope: !2783, inlinedAt: !2801)
!2801 = distinct !DILocation(line: 1069, column: 10, scope: !2794)
!2802 = !DILocation(line: 0, scope: !2762, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1063, column: 10, scope: !2783, inlinedAt: !2801)
!2804 = !DILocation(line: 1051, column: 10, scope: !2762, inlinedAt: !2803)
!2805 = !DILocation(line: 1069, column: 3, scope: !2794)
!2806 = distinct !DISubprogram(name: "version_etc_arn", scope: !550, file: !550, line: 61, type: !2807, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2844)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{null, !2809, !72, !72, !72, !2843, !110}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2811, file: !251, line: 51, baseType: !108, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2811, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2811, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2811, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2811, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2811, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2811, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2811, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2811, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2811, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2811, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2811, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2811, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2811, file: !251, line: 70, baseType: !2827, size: 64, offset: 832)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2811, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2811, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2811, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2811, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2811, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2811, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2811, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2811, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2811, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2811, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2811, file: !251, line: 93, baseType: !2827, size: 64, offset: 1344)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2811, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2811, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2811, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2811, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850}
!2845 = !DILocalVariable(name: "stream", arg: 1, scope: !2806, file: !550, line: 61, type: !2809)
!2846 = !DILocalVariable(name: "command_name", arg: 2, scope: !2806, file: !550, line: 62, type: !72)
!2847 = !DILocalVariable(name: "package", arg: 3, scope: !2806, file: !550, line: 62, type: !72)
!2848 = !DILocalVariable(name: "version", arg: 4, scope: !2806, file: !550, line: 63, type: !72)
!2849 = !DILocalVariable(name: "authors", arg: 5, scope: !2806, file: !550, line: 64, type: !2843)
!2850 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2806, file: !550, line: 64, type: !110)
!2851 = !DILocation(line: 0, scope: !2806)
!2852 = !DILocation(line: 66, column: 7, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2806, file: !550, line: 66, column: 7)
!2854 = !DILocation(line: 66, column: 7, scope: !2806)
!2855 = !DILocation(line: 67, column: 5, scope: !2853)
!2856 = !DILocation(line: 69, column: 5, scope: !2853)
!2857 = !DILocation(line: 83, column: 3, scope: !2806)
!2858 = !DILocation(line: 85, column: 3, scope: !2806)
!2859 = !DILocation(line: 88, column: 3, scope: !2806)
!2860 = !DILocation(line: 95, column: 3, scope: !2806)
!2861 = !DILocation(line: 97, column: 3, scope: !2806)
!2862 = !DILocation(line: 105, column: 7, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2806, file: !550, line: 98, column: 5)
!2864 = !DILocation(line: 106, column: 7, scope: !2863)
!2865 = !DILocation(line: 109, column: 7, scope: !2863)
!2866 = !DILocation(line: 110, column: 7, scope: !2863)
!2867 = !DILocation(line: 113, column: 7, scope: !2863)
!2868 = !DILocation(line: 115, column: 7, scope: !2863)
!2869 = !DILocation(line: 120, column: 7, scope: !2863)
!2870 = !DILocation(line: 122, column: 7, scope: !2863)
!2871 = !DILocation(line: 127, column: 7, scope: !2863)
!2872 = !DILocation(line: 129, column: 7, scope: !2863)
!2873 = !DILocation(line: 134, column: 7, scope: !2863)
!2874 = !DILocation(line: 137, column: 7, scope: !2863)
!2875 = !DILocation(line: 142, column: 7, scope: !2863)
!2876 = !DILocation(line: 145, column: 7, scope: !2863)
!2877 = !DILocation(line: 150, column: 7, scope: !2863)
!2878 = !DILocation(line: 154, column: 7, scope: !2863)
!2879 = !DILocation(line: 159, column: 7, scope: !2863)
!2880 = !DILocation(line: 163, column: 7, scope: !2863)
!2881 = !DILocation(line: 170, column: 7, scope: !2863)
!2882 = !DILocation(line: 174, column: 7, scope: !2863)
!2883 = !DILocation(line: 176, column: 1, scope: !2806)
!2884 = distinct !DISubprogram(name: "version_etc_ar", scope: !550, file: !550, line: 183, type: !2885, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2887)
!2885 = !DISubroutineType(types: !2886)
!2886 = !{null, !2809, !72, !72, !72, !2843}
!2887 = !{!2888, !2889, !2890, !2891, !2892, !2893}
!2888 = !DILocalVariable(name: "stream", arg: 1, scope: !2884, file: !550, line: 183, type: !2809)
!2889 = !DILocalVariable(name: "command_name", arg: 2, scope: !2884, file: !550, line: 184, type: !72)
!2890 = !DILocalVariable(name: "package", arg: 3, scope: !2884, file: !550, line: 184, type: !72)
!2891 = !DILocalVariable(name: "version", arg: 4, scope: !2884, file: !550, line: 185, type: !72)
!2892 = !DILocalVariable(name: "authors", arg: 5, scope: !2884, file: !550, line: 185, type: !2843)
!2893 = !DILocalVariable(name: "n_authors", scope: !2884, file: !550, line: 187, type: !110)
!2894 = !DILocation(line: 0, scope: !2884)
!2895 = !DILocation(line: 189, column: 8, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2884, file: !550, line: 189, column: 3)
!2897 = !DILocation(line: 189, scope: !2896)
!2898 = !DILocation(line: 189, column: 23, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !550, line: 189, column: 3)
!2900 = !DILocation(line: 189, column: 3, scope: !2896)
!2901 = !DILocation(line: 189, column: 52, scope: !2899)
!2902 = distinct !{!2902, !2900, !2903, !862}
!2903 = !DILocation(line: 190, column: 5, scope: !2896)
!2904 = !DILocation(line: 191, column: 3, scope: !2884)
!2905 = !DILocation(line: 192, column: 1, scope: !2884)
!2906 = distinct !DISubprogram(name: "version_etc_va", scope: !550, file: !550, line: 199, type: !2907, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2916)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{null, !2809, !72, !72, !72, !2909}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2910, file: !550, line: 192, baseType: !78, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2910, file: !550, line: 192, baseType: !78, size: 32, offset: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2910, file: !550, line: 192, baseType: !107, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2910, file: !550, line: 192, baseType: !107, size: 64, offset: 128)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923}
!2917 = !DILocalVariable(name: "stream", arg: 1, scope: !2906, file: !550, line: 199, type: !2809)
!2918 = !DILocalVariable(name: "command_name", arg: 2, scope: !2906, file: !550, line: 200, type: !72)
!2919 = !DILocalVariable(name: "package", arg: 3, scope: !2906, file: !550, line: 200, type: !72)
!2920 = !DILocalVariable(name: "version", arg: 4, scope: !2906, file: !550, line: 201, type: !72)
!2921 = !DILocalVariable(name: "authors", arg: 5, scope: !2906, file: !550, line: 201, type: !2909)
!2922 = !DILocalVariable(name: "n_authors", scope: !2906, file: !550, line: 203, type: !110)
!2923 = !DILocalVariable(name: "authtab", scope: !2906, file: !550, line: 204, type: !2924)
!2924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 640, elements: !40)
!2925 = distinct !DIAssignID()
!2926 = !DILocation(line: 0, scope: !2906)
!2927 = !DILocation(line: 204, column: 3, scope: !2906)
!2928 = !DILocation(line: 208, column: 35, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !550, line: 206, column: 3)
!2930 = distinct !DILexicalBlock(scope: !2906, file: !550, line: 206, column: 3)
!2931 = !DILocation(line: 208, column: 33, scope: !2929)
!2932 = !DILocation(line: 208, column: 67, scope: !2929)
!2933 = !DILocation(line: 206, column: 3, scope: !2930)
!2934 = !DILocation(line: 208, column: 14, scope: !2929)
!2935 = !DILocation(line: 0, scope: !2930)
!2936 = !DILocation(line: 211, column: 3, scope: !2906)
!2937 = !DILocation(line: 213, column: 1, scope: !2906)
!2938 = distinct !DISubprogram(name: "version_etc", scope: !550, file: !550, line: 230, type: !2939, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674, retainedNodes: !2941)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{null, !2809, !72, !72, !72, null}
!2941 = !{!2942, !2943, !2944, !2945, !2946}
!2942 = !DILocalVariable(name: "stream", arg: 1, scope: !2938, file: !550, line: 230, type: !2809)
!2943 = !DILocalVariable(name: "command_name", arg: 2, scope: !2938, file: !550, line: 231, type: !72)
!2944 = !DILocalVariable(name: "package", arg: 3, scope: !2938, file: !550, line: 231, type: !72)
!2945 = !DILocalVariable(name: "version", arg: 4, scope: !2938, file: !550, line: 232, type: !72)
!2946 = !DILocalVariable(name: "authors", scope: !2938, file: !550, line: 234, type: !2947)
!2947 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !810, line: 52, baseType: !2948)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1229, line: 12, baseType: !2949)
!2949 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !550, baseType: !2950)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2910, size: 192, elements: !35)
!2951 = distinct !DIAssignID()
!2952 = !DILocation(line: 0, scope: !2938)
!2953 = !DILocation(line: 234, column: 3, scope: !2938)
!2954 = !DILocation(line: 235, column: 3, scope: !2938)
!2955 = !DILocation(line: 236, column: 3, scope: !2938)
!2956 = !DILocation(line: 237, column: 3, scope: !2938)
!2957 = !DILocation(line: 238, column: 1, scope: !2938)
!2958 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !550, file: !550, line: 241, type: !377, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !674)
!2959 = !DILocation(line: 243, column: 3, scope: !2958)
!2960 = !DILocation(line: 248, column: 3, scope: !2958)
!2961 = !DILocation(line: 254, column: 3, scope: !2958)
!2962 = !DILocation(line: 259, column: 3, scope: !2958)
!2963 = !DILocation(line: 261, column: 1, scope: !2958)
!2964 = distinct !DISubprogram(name: "xnrealloc", scope: !2965, file: !2965, line: 147, type: !2966, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2968)
!2965 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!107, !107, !110, !110}
!2968 = !{!2969, !2970, !2971}
!2969 = !DILocalVariable(name: "p", arg: 1, scope: !2964, file: !2965, line: 147, type: !107)
!2970 = !DILocalVariable(name: "n", arg: 2, scope: !2964, file: !2965, line: 147, type: !110)
!2971 = !DILocalVariable(name: "s", arg: 3, scope: !2964, file: !2965, line: 147, type: !110)
!2972 = !DILocation(line: 0, scope: !2964)
!2973 = !DILocalVariable(name: "p", arg: 1, scope: !2974, file: !681, line: 83, type: !107)
!2974 = distinct !DISubprogram(name: "xreallocarray", scope: !681, file: !681, line: 83, type: !2966, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2975)
!2975 = !{!2973, !2976, !2977}
!2976 = !DILocalVariable(name: "n", arg: 2, scope: !2974, file: !681, line: 83, type: !110)
!2977 = !DILocalVariable(name: "s", arg: 3, scope: !2974, file: !681, line: 83, type: !110)
!2978 = !DILocation(line: 0, scope: !2974, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 149, column: 10, scope: !2964)
!2980 = !DILocation(line: 85, column: 25, scope: !2974, inlinedAt: !2979)
!2981 = !DILocalVariable(name: "p", arg: 1, scope: !2982, file: !681, line: 37, type: !107)
!2982 = distinct !DISubprogram(name: "check_nonnull", scope: !681, file: !681, line: 37, type: !2983, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!107, !107}
!2985 = !{!2981}
!2986 = !DILocation(line: 0, scope: !2982, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 85, column: 10, scope: !2974, inlinedAt: !2979)
!2988 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !2987)
!2989 = distinct !DILexicalBlock(scope: !2982, file: !681, line: 39, column: 7)
!2990 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !2987)
!2991 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !2987)
!2992 = !DILocation(line: 149, column: 3, scope: !2964)
!2993 = !DILocation(line: 0, scope: !2974)
!2994 = !DILocation(line: 85, column: 25, scope: !2974)
!2995 = !DILocation(line: 0, scope: !2982, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 85, column: 10, scope: !2974)
!2997 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !2996)
!2998 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !2996)
!2999 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !2996)
!3000 = !DILocation(line: 85, column: 3, scope: !2974)
!3001 = distinct !DISubprogram(name: "xmalloc", scope: !681, file: !681, line: 47, type: !3002, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!107, !110}
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "s", arg: 1, scope: !3001, file: !681, line: 47, type: !110)
!3006 = !DILocation(line: 0, scope: !3001)
!3007 = !DILocation(line: 49, column: 25, scope: !3001)
!3008 = !DILocation(line: 0, scope: !2982, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 49, column: 10, scope: !3001)
!3010 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3009)
!3011 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3009)
!3012 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3009)
!3013 = !DILocation(line: 49, column: 3, scope: !3001)
!3014 = !DISubprogram(name: "malloc", scope: !939, file: !939, line: 540, type: !3002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3015 = distinct !DISubprogram(name: "ximalloc", scope: !681, file: !681, line: 53, type: !3016, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3018)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!107, !700}
!3018 = !{!3019}
!3019 = !DILocalVariable(name: "s", arg: 1, scope: !3015, file: !681, line: 53, type: !700)
!3020 = !DILocation(line: 0, scope: !3015)
!3021 = !DILocalVariable(name: "s", arg: 1, scope: !3022, file: !3023, line: 55, type: !700)
!3022 = distinct !DISubprogram(name: "imalloc", scope: !3023, file: !3023, line: 55, type: !3016, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3024)
!3023 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3024 = !{!3021}
!3025 = !DILocation(line: 0, scope: !3022, inlinedAt: !3026)
!3026 = distinct !DILocation(line: 55, column: 25, scope: !3015)
!3027 = !DILocation(line: 57, column: 26, scope: !3022, inlinedAt: !3026)
!3028 = !DILocation(line: 0, scope: !2982, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 55, column: 10, scope: !3015)
!3030 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3029)
!3031 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3029)
!3032 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3029)
!3033 = !DILocation(line: 55, column: 3, scope: !3015)
!3034 = distinct !DISubprogram(name: "xcharalloc", scope: !681, file: !681, line: 59, type: !3035, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!255, !110}
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "n", arg: 1, scope: !3034, file: !681, line: 59, type: !110)
!3039 = !DILocation(line: 0, scope: !3034)
!3040 = !DILocation(line: 0, scope: !3001, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 61, column: 10, scope: !3034)
!3042 = !DILocation(line: 49, column: 25, scope: !3001, inlinedAt: !3041)
!3043 = !DILocation(line: 0, scope: !2982, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 49, column: 10, scope: !3001, inlinedAt: !3041)
!3045 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3044)
!3046 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3044)
!3047 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3044)
!3048 = !DILocation(line: 61, column: 3, scope: !3034)
!3049 = distinct !DISubprogram(name: "xrealloc", scope: !681, file: !681, line: 68, type: !3050, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3052)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!107, !107, !110}
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "p", arg: 1, scope: !3049, file: !681, line: 68, type: !107)
!3054 = !DILocalVariable(name: "s", arg: 2, scope: !3049, file: !681, line: 68, type: !110)
!3055 = !DILocation(line: 0, scope: !3049)
!3056 = !DILocalVariable(name: "ptr", arg: 1, scope: !3057, file: !3058, line: 2057, type: !107)
!3057 = distinct !DISubprogram(name: "rpl_realloc", scope: !3058, file: !3058, line: 2057, type: !3050, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3059)
!3058 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3059 = !{!3056, !3060}
!3060 = !DILocalVariable(name: "size", arg: 2, scope: !3057, file: !3058, line: 2057, type: !110)
!3061 = !DILocation(line: 0, scope: !3057, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 70, column: 25, scope: !3049)
!3063 = !DILocation(line: 2059, column: 24, scope: !3057, inlinedAt: !3062)
!3064 = !DILocation(line: 2059, column: 10, scope: !3057, inlinedAt: !3062)
!3065 = !DILocation(line: 0, scope: !2982, inlinedAt: !3066)
!3066 = distinct !DILocation(line: 70, column: 10, scope: !3049)
!3067 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3066)
!3068 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3066)
!3069 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3066)
!3070 = !DILocation(line: 70, column: 3, scope: !3049)
!3071 = !DISubprogram(name: "realloc", scope: !939, file: !939, line: 551, type: !3050, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3072 = distinct !DISubprogram(name: "xirealloc", scope: !681, file: !681, line: 74, type: !3073, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!107, !107, !700}
!3075 = !{!3076, !3077}
!3076 = !DILocalVariable(name: "p", arg: 1, scope: !3072, file: !681, line: 74, type: !107)
!3077 = !DILocalVariable(name: "s", arg: 2, scope: !3072, file: !681, line: 74, type: !700)
!3078 = !DILocation(line: 0, scope: !3072)
!3079 = !DILocalVariable(name: "p", arg: 1, scope: !3080, file: !3023, line: 66, type: !107)
!3080 = distinct !DISubprogram(name: "irealloc", scope: !3023, file: !3023, line: 66, type: !3073, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3081)
!3081 = !{!3079, !3082}
!3082 = !DILocalVariable(name: "s", arg: 2, scope: !3080, file: !3023, line: 66, type: !700)
!3083 = !DILocation(line: 0, scope: !3080, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 76, column: 25, scope: !3072)
!3085 = !DILocation(line: 0, scope: !3057, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 68, column: 26, scope: !3080, inlinedAt: !3084)
!3087 = !DILocation(line: 2059, column: 24, scope: !3057, inlinedAt: !3086)
!3088 = !DILocation(line: 2059, column: 10, scope: !3057, inlinedAt: !3086)
!3089 = !DILocation(line: 0, scope: !2982, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 76, column: 10, scope: !3072)
!3091 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3090)
!3092 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3090)
!3093 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3090)
!3094 = !DILocation(line: 76, column: 3, scope: !3072)
!3095 = distinct !DISubprogram(name: "xireallocarray", scope: !681, file: !681, line: 89, type: !3096, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!107, !107, !700, !700}
!3098 = !{!3099, !3100, !3101}
!3099 = !DILocalVariable(name: "p", arg: 1, scope: !3095, file: !681, line: 89, type: !107)
!3100 = !DILocalVariable(name: "n", arg: 2, scope: !3095, file: !681, line: 89, type: !700)
!3101 = !DILocalVariable(name: "s", arg: 3, scope: !3095, file: !681, line: 89, type: !700)
!3102 = !DILocation(line: 0, scope: !3095)
!3103 = !DILocalVariable(name: "p", arg: 1, scope: !3104, file: !3023, line: 98, type: !107)
!3104 = distinct !DISubprogram(name: "ireallocarray", scope: !3023, file: !3023, line: 98, type: !3096, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3105)
!3105 = !{!3103, !3106, !3107}
!3106 = !DILocalVariable(name: "n", arg: 2, scope: !3104, file: !3023, line: 98, type: !700)
!3107 = !DILocalVariable(name: "s", arg: 3, scope: !3104, file: !3023, line: 98, type: !700)
!3108 = !DILocation(line: 0, scope: !3104, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 91, column: 25, scope: !3095)
!3110 = !DILocation(line: 101, column: 13, scope: !3104, inlinedAt: !3109)
!3111 = !DILocation(line: 0, scope: !2982, inlinedAt: !3112)
!3112 = distinct !DILocation(line: 91, column: 10, scope: !3095)
!3113 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3112)
!3114 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3112)
!3115 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3112)
!3116 = !DILocation(line: 91, column: 3, scope: !3095)
!3117 = distinct !DISubprogram(name: "xnmalloc", scope: !681, file: !681, line: 98, type: !3118, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3120)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!107, !110, !110}
!3120 = !{!3121, !3122}
!3121 = !DILocalVariable(name: "n", arg: 1, scope: !3117, file: !681, line: 98, type: !110)
!3122 = !DILocalVariable(name: "s", arg: 2, scope: !3117, file: !681, line: 98, type: !110)
!3123 = !DILocation(line: 0, scope: !3117)
!3124 = !DILocation(line: 0, scope: !2974, inlinedAt: !3125)
!3125 = distinct !DILocation(line: 100, column: 10, scope: !3117)
!3126 = !DILocation(line: 85, column: 25, scope: !2974, inlinedAt: !3125)
!3127 = !DILocation(line: 0, scope: !2982, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 85, column: 10, scope: !2974, inlinedAt: !3125)
!3129 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3128)
!3130 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3128)
!3131 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3128)
!3132 = !DILocation(line: 100, column: 3, scope: !3117)
!3133 = distinct !DISubprogram(name: "xinmalloc", scope: !681, file: !681, line: 104, type: !3134, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!107, !700, !700}
!3136 = !{!3137, !3138}
!3137 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !681, line: 104, type: !700)
!3138 = !DILocalVariable(name: "s", arg: 2, scope: !3133, file: !681, line: 104, type: !700)
!3139 = !DILocation(line: 0, scope: !3133)
!3140 = !DILocation(line: 0, scope: !3095, inlinedAt: !3141)
!3141 = distinct !DILocation(line: 106, column: 10, scope: !3133)
!3142 = !DILocation(line: 0, scope: !3104, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 91, column: 25, scope: !3095, inlinedAt: !3141)
!3144 = !DILocation(line: 101, column: 13, scope: !3104, inlinedAt: !3143)
!3145 = !DILocation(line: 0, scope: !2982, inlinedAt: !3146)
!3146 = distinct !DILocation(line: 91, column: 10, scope: !3095, inlinedAt: !3141)
!3147 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3146)
!3148 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3146)
!3149 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3146)
!3150 = !DILocation(line: 106, column: 3, scope: !3133)
!3151 = distinct !DISubprogram(name: "x2realloc", scope: !681, file: !681, line: 116, type: !3152, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!107, !107, !687}
!3154 = !{!3155, !3156}
!3155 = !DILocalVariable(name: "p", arg: 1, scope: !3151, file: !681, line: 116, type: !107)
!3156 = !DILocalVariable(name: "ps", arg: 2, scope: !3151, file: !681, line: 116, type: !687)
!3157 = !DILocation(line: 0, scope: !3151)
!3158 = !DILocation(line: 0, scope: !684, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 118, column: 10, scope: !3151)
!3160 = !DILocation(line: 178, column: 14, scope: !684, inlinedAt: !3159)
!3161 = !DILocation(line: 180, column: 9, scope: !3162, inlinedAt: !3159)
!3162 = distinct !DILexicalBlock(scope: !684, file: !681, line: 180, column: 7)
!3163 = !DILocation(line: 180, column: 7, scope: !684, inlinedAt: !3159)
!3164 = !DILocation(line: 182, column: 13, scope: !3165, inlinedAt: !3159)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !681, line: 182, column: 11)
!3166 = distinct !DILexicalBlock(scope: !3162, file: !681, line: 181, column: 5)
!3167 = !DILocation(line: 182, column: 11, scope: !3166, inlinedAt: !3159)
!3168 = !DILocation(line: 197, column: 11, scope: !3169, inlinedAt: !3159)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !681, line: 197, column: 11)
!3170 = distinct !DILexicalBlock(scope: !3162, file: !681, line: 195, column: 5)
!3171 = !DILocation(line: 197, column: 11, scope: !3170, inlinedAt: !3159)
!3172 = !DILocation(line: 198, column: 9, scope: !3169, inlinedAt: !3159)
!3173 = !DILocation(line: 0, scope: !2974, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 201, column: 7, scope: !684, inlinedAt: !3159)
!3175 = !DILocation(line: 85, column: 25, scope: !2974, inlinedAt: !3174)
!3176 = !DILocation(line: 0, scope: !2982, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 85, column: 10, scope: !2974, inlinedAt: !3174)
!3178 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3177)
!3179 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3177)
!3180 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3177)
!3181 = !DILocation(line: 202, column: 7, scope: !684, inlinedAt: !3159)
!3182 = !DILocation(line: 118, column: 3, scope: !3151)
!3183 = !DILocation(line: 0, scope: !684)
!3184 = !DILocation(line: 178, column: 14, scope: !684)
!3185 = !DILocation(line: 180, column: 9, scope: !3162)
!3186 = !DILocation(line: 180, column: 7, scope: !684)
!3187 = !DILocation(line: 182, column: 13, scope: !3165)
!3188 = !DILocation(line: 182, column: 11, scope: !3166)
!3189 = !DILocation(line: 190, column: 30, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3165, file: !681, line: 183, column: 9)
!3191 = !DILocation(line: 191, column: 16, scope: !3190)
!3192 = !DILocation(line: 191, column: 13, scope: !3190)
!3193 = !DILocation(line: 192, column: 9, scope: !3190)
!3194 = !DILocation(line: 197, column: 11, scope: !3169)
!3195 = !DILocation(line: 197, column: 11, scope: !3170)
!3196 = !DILocation(line: 198, column: 9, scope: !3169)
!3197 = !DILocation(line: 0, scope: !2974, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 201, column: 7, scope: !684)
!3199 = !DILocation(line: 85, column: 25, scope: !2974, inlinedAt: !3198)
!3200 = !DILocation(line: 0, scope: !2982, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 85, column: 10, scope: !2974, inlinedAt: !3198)
!3202 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3201)
!3203 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3201)
!3204 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3201)
!3205 = !DILocation(line: 202, column: 7, scope: !684)
!3206 = !DILocation(line: 203, column: 3, scope: !684)
!3207 = !DILocation(line: 0, scope: !696)
!3208 = !DILocation(line: 230, column: 14, scope: !696)
!3209 = !DILocation(line: 238, column: 7, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !696, file: !681, line: 238, column: 7)
!3211 = !DILocation(line: 238, column: 7, scope: !696)
!3212 = !DILocation(line: 240, column: 9, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !696, file: !681, line: 240, column: 7)
!3214 = !DILocation(line: 240, column: 18, scope: !3213)
!3215 = !DILocation(line: 253, column: 8, scope: !696)
!3216 = !DILocation(line: 256, column: 7, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !696, file: !681, line: 256, column: 7)
!3218 = !DILocation(line: 256, column: 7, scope: !696)
!3219 = !DILocation(line: 258, column: 27, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !681, line: 257, column: 5)
!3221 = !DILocation(line: 259, column: 50, scope: !3220)
!3222 = !DILocation(line: 259, column: 32, scope: !3220)
!3223 = !DILocation(line: 260, column: 5, scope: !3220)
!3224 = !DILocation(line: 262, column: 9, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !696, file: !681, line: 262, column: 7)
!3226 = !DILocation(line: 262, column: 7, scope: !696)
!3227 = !DILocation(line: 263, column: 9, scope: !3225)
!3228 = !DILocation(line: 263, column: 5, scope: !3225)
!3229 = !DILocation(line: 264, column: 9, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !696, file: !681, line: 264, column: 7)
!3231 = !DILocation(line: 264, column: 14, scope: !3230)
!3232 = !DILocation(line: 265, column: 7, scope: !3230)
!3233 = !DILocation(line: 265, column: 11, scope: !3230)
!3234 = !DILocation(line: 266, column: 11, scope: !3230)
!3235 = !DILocation(line: 267, column: 14, scope: !3230)
!3236 = !DILocation(line: 264, column: 7, scope: !696)
!3237 = !DILocation(line: 268, column: 5, scope: !3230)
!3238 = !DILocation(line: 0, scope: !3049, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 269, column: 8, scope: !696)
!3240 = !DILocation(line: 0, scope: !3057, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 70, column: 25, scope: !3049, inlinedAt: !3239)
!3242 = !DILocation(line: 2059, column: 24, scope: !3057, inlinedAt: !3241)
!3243 = !DILocation(line: 2059, column: 10, scope: !3057, inlinedAt: !3241)
!3244 = !DILocation(line: 0, scope: !2982, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 70, column: 10, scope: !3049, inlinedAt: !3239)
!3246 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3245)
!3247 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3245)
!3248 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3245)
!3249 = !DILocation(line: 270, column: 7, scope: !696)
!3250 = !DILocation(line: 271, column: 3, scope: !696)
!3251 = distinct !DISubprogram(name: "xzalloc", scope: !681, file: !681, line: 279, type: !3002, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3252)
!3252 = !{!3253}
!3253 = !DILocalVariable(name: "s", arg: 1, scope: !3251, file: !681, line: 279, type: !110)
!3254 = !DILocation(line: 0, scope: !3251)
!3255 = !DILocalVariable(name: "n", arg: 1, scope: !3256, file: !681, line: 294, type: !110)
!3256 = distinct !DISubprogram(name: "xcalloc", scope: !681, file: !681, line: 294, type: !3118, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3257)
!3257 = !{!3255, !3258}
!3258 = !DILocalVariable(name: "s", arg: 2, scope: !3256, file: !681, line: 294, type: !110)
!3259 = !DILocation(line: 0, scope: !3256, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 281, column: 10, scope: !3251)
!3261 = !DILocation(line: 296, column: 25, scope: !3256, inlinedAt: !3260)
!3262 = !DILocation(line: 0, scope: !2982, inlinedAt: !3263)
!3263 = distinct !DILocation(line: 296, column: 10, scope: !3256, inlinedAt: !3260)
!3264 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3263)
!3265 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3263)
!3266 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3263)
!3267 = !DILocation(line: 281, column: 3, scope: !3251)
!3268 = !DISubprogram(name: "calloc", scope: !939, file: !939, line: 543, type: !3118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3269 = !DILocation(line: 0, scope: !3256)
!3270 = !DILocation(line: 296, column: 25, scope: !3256)
!3271 = !DILocation(line: 0, scope: !2982, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 296, column: 10, scope: !3256)
!3273 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3272)
!3274 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3272)
!3275 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3272)
!3276 = !DILocation(line: 296, column: 3, scope: !3256)
!3277 = distinct !DISubprogram(name: "xizalloc", scope: !681, file: !681, line: 285, type: !3016, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3278)
!3278 = !{!3279}
!3279 = !DILocalVariable(name: "s", arg: 1, scope: !3277, file: !681, line: 285, type: !700)
!3280 = !DILocation(line: 0, scope: !3277)
!3281 = !DILocalVariable(name: "n", arg: 1, scope: !3282, file: !681, line: 300, type: !700)
!3282 = distinct !DISubprogram(name: "xicalloc", scope: !681, file: !681, line: 300, type: !3134, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3283)
!3283 = !{!3281, !3284}
!3284 = !DILocalVariable(name: "s", arg: 2, scope: !3282, file: !681, line: 300, type: !700)
!3285 = !DILocation(line: 0, scope: !3282, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 287, column: 10, scope: !3277)
!3287 = !DILocalVariable(name: "n", arg: 1, scope: !3288, file: !3023, line: 77, type: !700)
!3288 = distinct !DISubprogram(name: "icalloc", scope: !3023, file: !3023, line: 77, type: !3134, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3289)
!3289 = !{!3287, !3290}
!3290 = !DILocalVariable(name: "s", arg: 2, scope: !3288, file: !3023, line: 77, type: !700)
!3291 = !DILocation(line: 0, scope: !3288, inlinedAt: !3292)
!3292 = distinct !DILocation(line: 302, column: 25, scope: !3282, inlinedAt: !3286)
!3293 = !DILocation(line: 91, column: 10, scope: !3288, inlinedAt: !3292)
!3294 = !DILocation(line: 0, scope: !2982, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 302, column: 10, scope: !3282, inlinedAt: !3286)
!3296 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3295)
!3297 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3295)
!3298 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3295)
!3299 = !DILocation(line: 287, column: 3, scope: !3277)
!3300 = !DILocation(line: 0, scope: !3282)
!3301 = !DILocation(line: 0, scope: !3288, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 302, column: 25, scope: !3282)
!3303 = !DILocation(line: 91, column: 10, scope: !3288, inlinedAt: !3302)
!3304 = !DILocation(line: 0, scope: !2982, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 302, column: 10, scope: !3282)
!3306 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3305)
!3307 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3305)
!3308 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3305)
!3309 = !DILocation(line: 302, column: 3, scope: !3282)
!3310 = distinct !DISubprogram(name: "xmemdup", scope: !681, file: !681, line: 310, type: !3311, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3313)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!107, !963, !110}
!3313 = !{!3314, !3315}
!3314 = !DILocalVariable(name: "p", arg: 1, scope: !3310, file: !681, line: 310, type: !963)
!3315 = !DILocalVariable(name: "s", arg: 2, scope: !3310, file: !681, line: 310, type: !110)
!3316 = !DILocation(line: 0, scope: !3310)
!3317 = !DILocation(line: 0, scope: !3001, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 312, column: 18, scope: !3310)
!3319 = !DILocation(line: 49, column: 25, scope: !3001, inlinedAt: !3318)
!3320 = !DILocation(line: 0, scope: !2982, inlinedAt: !3321)
!3321 = distinct !DILocation(line: 49, column: 10, scope: !3001, inlinedAt: !3318)
!3322 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3321)
!3323 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3321)
!3324 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3321)
!3325 = !DILocalVariable(name: "__dest", arg: 1, scope: !3326, file: !1439, line: 26, type: !3329)
!3326 = distinct !DISubprogram(name: "memcpy", scope: !1439, file: !1439, line: 26, type: !3327, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3330)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!107, !3329, !962, !110}
!3329 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!3330 = !{!3325, !3331, !3332}
!3331 = !DILocalVariable(name: "__src", arg: 2, scope: !3326, file: !1439, line: 26, type: !962)
!3332 = !DILocalVariable(name: "__len", arg: 3, scope: !3326, file: !1439, line: 26, type: !110)
!3333 = !DILocation(line: 0, scope: !3326, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 312, column: 10, scope: !3310)
!3335 = !DILocation(line: 29, column: 10, scope: !3326, inlinedAt: !3334)
!3336 = !DILocation(line: 312, column: 3, scope: !3310)
!3337 = distinct !DISubprogram(name: "ximemdup", scope: !681, file: !681, line: 316, type: !3338, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!107, !963, !700}
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "p", arg: 1, scope: !3337, file: !681, line: 316, type: !963)
!3342 = !DILocalVariable(name: "s", arg: 2, scope: !3337, file: !681, line: 316, type: !700)
!3343 = !DILocation(line: 0, scope: !3337)
!3344 = !DILocation(line: 0, scope: !3015, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 318, column: 18, scope: !3337)
!3346 = !DILocation(line: 0, scope: !3022, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 55, column: 25, scope: !3015, inlinedAt: !3345)
!3348 = !DILocation(line: 57, column: 26, scope: !3022, inlinedAt: !3347)
!3349 = !DILocation(line: 0, scope: !2982, inlinedAt: !3350)
!3350 = distinct !DILocation(line: 55, column: 10, scope: !3015, inlinedAt: !3345)
!3351 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3350)
!3352 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3350)
!3353 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3350)
!3354 = !DILocation(line: 0, scope: !3326, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 318, column: 10, scope: !3337)
!3356 = !DILocation(line: 29, column: 10, scope: !3326, inlinedAt: !3355)
!3357 = !DILocation(line: 318, column: 3, scope: !3337)
!3358 = distinct !DISubprogram(name: "ximemdup0", scope: !681, file: !681, line: 325, type: !3359, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3361)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!255, !963, !700}
!3361 = !{!3362, !3363, !3364}
!3362 = !DILocalVariable(name: "p", arg: 1, scope: !3358, file: !681, line: 325, type: !963)
!3363 = !DILocalVariable(name: "s", arg: 2, scope: !3358, file: !681, line: 325, type: !700)
!3364 = !DILocalVariable(name: "result", scope: !3358, file: !681, line: 327, type: !255)
!3365 = !DILocation(line: 0, scope: !3358)
!3366 = !DILocation(line: 327, column: 30, scope: !3358)
!3367 = !DILocation(line: 0, scope: !3015, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 327, column: 18, scope: !3358)
!3369 = !DILocation(line: 0, scope: !3022, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 55, column: 25, scope: !3015, inlinedAt: !3368)
!3371 = !DILocation(line: 57, column: 26, scope: !3022, inlinedAt: !3370)
!3372 = !DILocation(line: 0, scope: !2982, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 55, column: 10, scope: !3015, inlinedAt: !3368)
!3374 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3373)
!3375 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3373)
!3376 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3373)
!3377 = !DILocation(line: 328, column: 3, scope: !3358)
!3378 = !DILocation(line: 328, column: 13, scope: !3358)
!3379 = !DILocation(line: 0, scope: !3326, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 329, column: 10, scope: !3358)
!3381 = !DILocation(line: 29, column: 10, scope: !3326, inlinedAt: !3380)
!3382 = !DILocation(line: 329, column: 3, scope: !3358)
!3383 = distinct !DISubprogram(name: "xstrdup", scope: !681, file: !681, line: 335, type: !941, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !680, retainedNodes: !3384)
!3384 = !{!3385}
!3385 = !DILocalVariable(name: "string", arg: 1, scope: !3383, file: !681, line: 335, type: !72)
!3386 = !DILocation(line: 0, scope: !3383)
!3387 = !DILocation(line: 337, column: 27, scope: !3383)
!3388 = !DILocation(line: 337, column: 43, scope: !3383)
!3389 = !DILocation(line: 0, scope: !3310, inlinedAt: !3390)
!3390 = distinct !DILocation(line: 337, column: 10, scope: !3383)
!3391 = !DILocation(line: 0, scope: !3001, inlinedAt: !3392)
!3392 = distinct !DILocation(line: 312, column: 18, scope: !3310, inlinedAt: !3390)
!3393 = !DILocation(line: 49, column: 25, scope: !3001, inlinedAt: !3392)
!3394 = !DILocation(line: 0, scope: !2982, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 49, column: 10, scope: !3001, inlinedAt: !3392)
!3396 = !DILocation(line: 39, column: 8, scope: !2989, inlinedAt: !3395)
!3397 = !DILocation(line: 39, column: 7, scope: !2982, inlinedAt: !3395)
!3398 = !DILocation(line: 40, column: 5, scope: !2989, inlinedAt: !3395)
!3399 = !DILocation(line: 0, scope: !3326, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 312, column: 10, scope: !3310, inlinedAt: !3390)
!3401 = !DILocation(line: 29, column: 10, scope: !3326, inlinedAt: !3400)
!3402 = !DILocation(line: 337, column: 3, scope: !3383)
!3403 = distinct !DISubprogram(name: "xalloc_die", scope: !646, file: !646, line: 32, type: !377, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !715, retainedNodes: !3404)
!3404 = !{!3405}
!3405 = !DILocalVariable(name: "__errstatus", scope: !3406, file: !646, line: 34, type: !3407)
!3406 = distinct !DILexicalBlock(scope: !3403, file: !646, line: 34, column: 3)
!3407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!3408 = !DILocation(line: 34, column: 3, scope: !3406)
!3409 = !DILocation(line: 0, scope: !3406)
!3410 = !DILocation(line: 40, column: 3, scope: !3403)
!3411 = distinct !DISubprogram(name: "close_stream", scope: !718, file: !718, line: 55, type: !3412, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3448)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!108, !3414}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3416)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3416, file: !251, line: 51, baseType: !108, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3416, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3416, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3416, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3416, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3416, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3416, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3416, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3416, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3416, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3416, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3416, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3416, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3416, file: !251, line: 70, baseType: !3432, size: 64, offset: 832)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3416, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3416, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3416, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3416, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3416, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3416, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3416, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3416, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3416, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3416, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3416, file: !251, line: 93, baseType: !3432, size: 64, offset: 1344)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3416, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3416, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3416, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3416, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3448 = !{!3449, !3450, !3452, !3453}
!3449 = !DILocalVariable(name: "stream", arg: 1, scope: !3411, file: !718, line: 55, type: !3414)
!3450 = !DILocalVariable(name: "some_pending", scope: !3411, file: !718, line: 57, type: !3451)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!3452 = !DILocalVariable(name: "prev_fail", scope: !3411, file: !718, line: 58, type: !3451)
!3453 = !DILocalVariable(name: "fclose_fail", scope: !3411, file: !718, line: 59, type: !3451)
!3454 = !DILocation(line: 0, scope: !3411)
!3455 = !DILocation(line: 57, column: 30, scope: !3411)
!3456 = !DILocalVariable(name: "__stream", arg: 1, scope: !3457, file: !1184, line: 135, type: !3414)
!3457 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1184, file: !1184, line: 135, type: !3412, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !717, retainedNodes: !3458)
!3458 = !{!3456}
!3459 = !DILocation(line: 0, scope: !3457, inlinedAt: !3460)
!3460 = distinct !DILocation(line: 58, column: 27, scope: !3411)
!3461 = !DILocation(line: 137, column: 10, scope: !3457, inlinedAt: !3460)
!3462 = !{!1193, !816, i64 0}
!3463 = !DILocation(line: 58, column: 43, scope: !3411)
!3464 = !DILocation(line: 59, column: 29, scope: !3411)
!3465 = !DILocation(line: 59, column: 45, scope: !3411)
!3466 = !DILocation(line: 69, column: 17, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3411, file: !718, line: 69, column: 7)
!3468 = !DILocation(line: 57, column: 50, scope: !3411)
!3469 = !DILocation(line: 69, column: 33, scope: !3467)
!3470 = !DILocation(line: 69, column: 53, scope: !3467)
!3471 = !DILocation(line: 69, column: 59, scope: !3467)
!3472 = !DILocation(line: 69, column: 7, scope: !3411)
!3473 = !DILocation(line: 71, column: 11, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3467, file: !718, line: 70, column: 5)
!3475 = !DILocation(line: 72, column: 9, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3474, file: !718, line: 71, column: 11)
!3477 = !DILocation(line: 72, column: 15, scope: !3476)
!3478 = !DILocation(line: 77, column: 1, scope: !3411)
!3479 = !DISubprogram(name: "__fpending", scope: !3480, file: !3480, line: 75, type: !3481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3480 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!3481 = !DISubroutineType(types: !3482)
!3482 = !{!110, !3414}
!3483 = distinct !DISubprogram(name: "rpl_fclose", scope: !720, file: !720, line: 58, type: !3484, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !3520)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{!108, !3486}
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3488)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3488, file: !251, line: 51, baseType: !108, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3488, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3488, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3488, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3488, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3488, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3488, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3488, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3488, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3488, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3488, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3488, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3488, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3488, file: !251, line: 70, baseType: !3504, size: 64, offset: 832)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3488, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3488, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3488, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3488, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3488, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3488, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3488, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3488, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3488, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3488, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3488, file: !251, line: 93, baseType: !3504, size: 64, offset: 1344)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3488, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3488, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3488, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3488, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3520 = !{!3521, !3522, !3523, !3524}
!3521 = !DILocalVariable(name: "fp", arg: 1, scope: !3483, file: !720, line: 58, type: !3486)
!3522 = !DILocalVariable(name: "saved_errno", scope: !3483, file: !720, line: 60, type: !108)
!3523 = !DILocalVariable(name: "fd", scope: !3483, file: !720, line: 63, type: !108)
!3524 = !DILocalVariable(name: "result", scope: !3483, file: !720, line: 74, type: !108)
!3525 = !DILocation(line: 0, scope: !3483)
!3526 = !DILocation(line: 63, column: 12, scope: !3483)
!3527 = !DILocation(line: 64, column: 10, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3483, file: !720, line: 64, column: 7)
!3529 = !DILocation(line: 64, column: 7, scope: !3483)
!3530 = !DILocation(line: 65, column: 12, scope: !3528)
!3531 = !DILocation(line: 65, column: 5, scope: !3528)
!3532 = !DILocation(line: 70, column: 9, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3483, file: !720, line: 70, column: 7)
!3534 = !DILocation(line: 70, column: 23, scope: !3533)
!3535 = !DILocation(line: 70, column: 33, scope: !3533)
!3536 = !DILocation(line: 70, column: 26, scope: !3533)
!3537 = !DILocation(line: 70, column: 59, scope: !3533)
!3538 = !DILocation(line: 71, column: 7, scope: !3533)
!3539 = !DILocation(line: 71, column: 10, scope: !3533)
!3540 = !DILocation(line: 70, column: 7, scope: !3483)
!3541 = !DILocation(line: 100, column: 12, scope: !3483)
!3542 = !DILocation(line: 105, column: 7, scope: !3483)
!3543 = !DILocation(line: 72, column: 19, scope: !3533)
!3544 = !DILocation(line: 105, column: 19, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3483, file: !720, line: 105, column: 7)
!3546 = !DILocation(line: 107, column: 13, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3545, file: !720, line: 106, column: 5)
!3548 = !DILocation(line: 109, column: 5, scope: !3547)
!3549 = !DILocation(line: 112, column: 1, scope: !3483)
!3550 = !DISubprogram(name: "fileno", scope: !810, file: !810, line: 809, type: !3484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3551 = !DISubprogram(name: "fclose", scope: !810, file: !810, line: 178, type: !3484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3552 = !DISubprogram(name: "__freading", scope: !3480, file: !3480, line: 51, type: !3484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3553 = !DISubprogram(name: "lseek", scope: !1011, file: !1011, line: 339, type: !3554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!274, !108, !274, !108}
!3556 = distinct !DISubprogram(name: "rpl_fflush", scope: !722, file: !722, line: 130, type: !3557, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3593)
!3557 = !DISubroutineType(types: !3558)
!3558 = !{!108, !3559}
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3561)
!3561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3562)
!3562 = !{!3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3561, file: !251, line: 51, baseType: !108, size: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3561, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3561, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3561, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3561, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3561, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3561, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3561, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3561, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3561, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3561, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3561, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3561, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3561, file: !251, line: 70, baseType: !3577, size: 64, offset: 832)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3561, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3561, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3561, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3561, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3561, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3561, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3561, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3561, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3561, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3561, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3561, file: !251, line: 93, baseType: !3577, size: 64, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3561, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3561, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3561, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3561, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3593 = !{!3594}
!3594 = !DILocalVariable(name: "stream", arg: 1, scope: !3556, file: !722, line: 130, type: !3559)
!3595 = !DILocation(line: 0, scope: !3556)
!3596 = !DILocation(line: 151, column: 14, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3556, file: !722, line: 151, column: 7)
!3598 = !DILocation(line: 151, column: 22, scope: !3597)
!3599 = !DILocation(line: 151, column: 27, scope: !3597)
!3600 = !DILocation(line: 151, column: 7, scope: !3556)
!3601 = !DILocation(line: 152, column: 12, scope: !3597)
!3602 = !DILocation(line: 152, column: 5, scope: !3597)
!3603 = !DILocalVariable(name: "fp", arg: 1, scope: !3604, file: !722, line: 42, type: !3559)
!3604 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !722, file: !722, line: 42, type: !3605, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !721, retainedNodes: !3607)
!3605 = !DISubroutineType(types: !3606)
!3606 = !{null, !3559}
!3607 = !{!3603}
!3608 = !DILocation(line: 0, scope: !3604, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 157, column: 3, scope: !3556)
!3610 = !DILocation(line: 44, column: 12, scope: !3611, inlinedAt: !3609)
!3611 = distinct !DILexicalBlock(scope: !3604, file: !722, line: 44, column: 7)
!3612 = !DILocation(line: 44, column: 19, scope: !3611, inlinedAt: !3609)
!3613 = !DILocation(line: 44, column: 7, scope: !3604, inlinedAt: !3609)
!3614 = !DILocation(line: 46, column: 5, scope: !3611, inlinedAt: !3609)
!3615 = !DILocation(line: 159, column: 10, scope: !3556)
!3616 = !DILocation(line: 159, column: 3, scope: !3556)
!3617 = !DILocation(line: 236, column: 1, scope: !3556)
!3618 = !DISubprogram(name: "fflush", scope: !810, file: !810, line: 230, type: !3557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3619 = distinct !DISubprogram(name: "rpl_fseeko", scope: !724, file: !724, line: 28, type: !3620, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !723, retainedNodes: !3657)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!108, !3622, !3656, !108}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !249, line: 7, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !251, line: 49, size: 1728, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3624, file: !251, line: 51, baseType: !108, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3624, file: !251, line: 54, baseType: !255, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3624, file: !251, line: 55, baseType: !255, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3624, file: !251, line: 56, baseType: !255, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3624, file: !251, line: 57, baseType: !255, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3624, file: !251, line: 58, baseType: !255, size: 64, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3624, file: !251, line: 59, baseType: !255, size: 64, offset: 384)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3624, file: !251, line: 60, baseType: !255, size: 64, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3624, file: !251, line: 61, baseType: !255, size: 64, offset: 512)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3624, file: !251, line: 64, baseType: !255, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3624, file: !251, line: 65, baseType: !255, size: 64, offset: 640)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3624, file: !251, line: 66, baseType: !255, size: 64, offset: 704)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3624, file: !251, line: 68, baseType: !267, size: 64, offset: 768)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3624, file: !251, line: 70, baseType: !3640, size: 64, offset: 832)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3624, file: !251, line: 72, baseType: !108, size: 32, offset: 896)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3624, file: !251, line: 73, baseType: !108, size: 32, offset: 928)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3624, file: !251, line: 74, baseType: !274, size: 64, offset: 960)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3624, file: !251, line: 77, baseType: !109, size: 16, offset: 1024)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3624, file: !251, line: 78, baseType: !279, size: 8, offset: 1040)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3624, file: !251, line: 79, baseType: !34, size: 8, offset: 1048)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3624, file: !251, line: 81, baseType: !282, size: 64, offset: 1088)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3624, file: !251, line: 89, baseType: !285, size: 64, offset: 1152)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3624, file: !251, line: 91, baseType: !287, size: 64, offset: 1216)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3624, file: !251, line: 92, baseType: !290, size: 64, offset: 1280)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3624, file: !251, line: 93, baseType: !3640, size: 64, offset: 1344)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3624, file: !251, line: 94, baseType: !107, size: 64, offset: 1408)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3624, file: !251, line: 95, baseType: !110, size: 64, offset: 1472)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3624, file: !251, line: 96, baseType: !108, size: 32, offset: 1536)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3624, file: !251, line: 98, baseType: !297, size: 160, offset: 1568)
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !810, line: 63, baseType: !274)
!3657 = !{!3658, !3659, !3660, !3661}
!3658 = !DILocalVariable(name: "fp", arg: 1, scope: !3619, file: !724, line: 28, type: !3622)
!3659 = !DILocalVariable(name: "offset", arg: 2, scope: !3619, file: !724, line: 28, type: !3656)
!3660 = !DILocalVariable(name: "whence", arg: 3, scope: !3619, file: !724, line: 28, type: !108)
!3661 = !DILocalVariable(name: "pos", scope: !3662, file: !724, line: 123, type: !3656)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !724, line: 119, column: 5)
!3663 = distinct !DILexicalBlock(scope: !3619, file: !724, line: 55, column: 7)
!3664 = !DILocation(line: 0, scope: !3619)
!3665 = !DILocation(line: 55, column: 12, scope: !3663)
!3666 = !{!1193, !755, i64 16}
!3667 = !DILocation(line: 55, column: 33, scope: !3663)
!3668 = !{!1193, !755, i64 8}
!3669 = !DILocation(line: 55, column: 25, scope: !3663)
!3670 = !DILocation(line: 56, column: 7, scope: !3663)
!3671 = !DILocation(line: 56, column: 15, scope: !3663)
!3672 = !DILocation(line: 56, column: 37, scope: !3663)
!3673 = !{!1193, !755, i64 32}
!3674 = !DILocation(line: 56, column: 29, scope: !3663)
!3675 = !DILocation(line: 57, column: 7, scope: !3663)
!3676 = !DILocation(line: 57, column: 15, scope: !3663)
!3677 = !{!1193, !755, i64 72}
!3678 = !DILocation(line: 57, column: 29, scope: !3663)
!3679 = !DILocation(line: 55, column: 7, scope: !3619)
!3680 = !DILocation(line: 123, column: 26, scope: !3662)
!3681 = !DILocation(line: 123, column: 19, scope: !3662)
!3682 = !DILocation(line: 0, scope: !3662)
!3683 = !DILocation(line: 124, column: 15, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3662, file: !724, line: 124, column: 11)
!3685 = !DILocation(line: 124, column: 11, scope: !3662)
!3686 = !DILocation(line: 135, column: 19, scope: !3662)
!3687 = !DILocation(line: 136, column: 12, scope: !3662)
!3688 = !DILocation(line: 136, column: 20, scope: !3662)
!3689 = !{!1193, !1194, i64 144}
!3690 = !DILocation(line: 167, column: 7, scope: !3662)
!3691 = !DILocation(line: 169, column: 10, scope: !3619)
!3692 = !DILocation(line: 169, column: 3, scope: !3619)
!3693 = !DILocation(line: 170, column: 1, scope: !3619)
!3694 = !DISubprogram(name: "fseeko", scope: !810, file: !810, line: 736, type: !3695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!108, !3622, !274, !108}
!3697 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !653, file: !653, line: 100, type: !3698, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3701)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!110, !1457, !72, !110, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!3701 = !{!3702, !3703, !3704, !3705, !3706}
!3702 = !DILocalVariable(name: "pwc", arg: 1, scope: !3697, file: !653, line: 100, type: !1457)
!3703 = !DILocalVariable(name: "s", arg: 2, scope: !3697, file: !653, line: 100, type: !72)
!3704 = !DILocalVariable(name: "n", arg: 3, scope: !3697, file: !653, line: 100, type: !110)
!3705 = !DILocalVariable(name: "ps", arg: 4, scope: !3697, file: !653, line: 100, type: !3700)
!3706 = !DILocalVariable(name: "ret", scope: !3697, file: !653, line: 130, type: !110)
!3707 = !DILocation(line: 0, scope: !3697)
!3708 = !DILocation(line: 105, column: 9, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3697, file: !653, line: 105, column: 7)
!3710 = !DILocation(line: 105, column: 7, scope: !3697)
!3711 = !DILocation(line: 117, column: 10, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3697, file: !653, line: 117, column: 7)
!3713 = !DILocation(line: 117, column: 7, scope: !3697)
!3714 = !DILocation(line: 130, column: 16, scope: !3697)
!3715 = !DILocation(line: 135, column: 11, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3697, file: !653, line: 135, column: 7)
!3717 = !DILocation(line: 135, column: 25, scope: !3716)
!3718 = !DILocation(line: 135, column: 30, scope: !3716)
!3719 = !DILocation(line: 135, column: 7, scope: !3697)
!3720 = !DILocalVariable(name: "ps", arg: 1, scope: !3721, file: !1430, line: 1135, type: !3700)
!3721 = distinct !DISubprogram(name: "mbszero", scope: !1430, file: !1430, line: 1135, type: !3722, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3724)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3700}
!3724 = !{!3720}
!3725 = !DILocation(line: 0, scope: !3721, inlinedAt: !3726)
!3726 = distinct !DILocation(line: 137, column: 5, scope: !3716)
!3727 = !DILocalVariable(name: "__dest", arg: 1, scope: !3728, file: !1439, line: 57, type: !107)
!3728 = distinct !DISubprogram(name: "memset", scope: !1439, file: !1439, line: 57, type: !1440, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !656, retainedNodes: !3729)
!3729 = !{!3727, !3730, !3731}
!3730 = !DILocalVariable(name: "__ch", arg: 2, scope: !3728, file: !1439, line: 57, type: !108)
!3731 = !DILocalVariable(name: "__len", arg: 3, scope: !3728, file: !1439, line: 57, type: !110)
!3732 = !DILocation(line: 0, scope: !3728, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 1137, column: 3, scope: !3721, inlinedAt: !3726)
!3734 = !DILocation(line: 59, column: 10, scope: !3728, inlinedAt: !3733)
!3735 = !DILocation(line: 137, column: 5, scope: !3716)
!3736 = !DILocation(line: 138, column: 11, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3697, file: !653, line: 138, column: 7)
!3738 = !DILocation(line: 138, column: 7, scope: !3697)
!3739 = !DILocation(line: 139, column: 5, scope: !3737)
!3740 = !DILocation(line: 143, column: 26, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3697, file: !653, line: 143, column: 7)
!3742 = !DILocation(line: 143, column: 41, scope: !3741)
!3743 = !DILocation(line: 143, column: 7, scope: !3697)
!3744 = !DILocation(line: 145, column: 15, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3746, file: !653, line: 145, column: 11)
!3746 = distinct !DILexicalBlock(scope: !3741, file: !653, line: 144, column: 5)
!3747 = !DILocation(line: 145, column: 11, scope: !3746)
!3748 = !DILocation(line: 146, column: 32, scope: !3745)
!3749 = !DILocation(line: 146, column: 16, scope: !3745)
!3750 = !DILocation(line: 146, column: 14, scope: !3745)
!3751 = !DILocation(line: 146, column: 9, scope: !3745)
!3752 = !DILocation(line: 286, column: 1, scope: !3697)
!3753 = !DISubprogram(name: "mbsinit", scope: !3754, file: !3754, line: 293, type: !3755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3754 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!108, !3757}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!3759 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !726, file: !726, line: 27, type: !2966, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3760)
!3760 = !{!3761, !3762, !3763, !3764}
!3761 = !DILocalVariable(name: "ptr", arg: 1, scope: !3759, file: !726, line: 27, type: !107)
!3762 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3759, file: !726, line: 27, type: !110)
!3763 = !DILocalVariable(name: "size", arg: 3, scope: !3759, file: !726, line: 27, type: !110)
!3764 = !DILocalVariable(name: "nbytes", scope: !3759, file: !726, line: 29, type: !110)
!3765 = !DILocation(line: 0, scope: !3759)
!3766 = !DILocation(line: 30, column: 7, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3759, file: !726, line: 30, column: 7)
!3768 = !DILocation(line: 30, column: 7, scope: !3759)
!3769 = !DILocation(line: 32, column: 7, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3767, file: !726, line: 31, column: 5)
!3771 = !DILocation(line: 32, column: 13, scope: !3770)
!3772 = !DILocation(line: 33, column: 7, scope: !3770)
!3773 = !DILocalVariable(name: "ptr", arg: 1, scope: !3774, file: !3058, line: 2057, type: !107)
!3774 = distinct !DISubprogram(name: "rpl_realloc", scope: !3058, file: !3058, line: 2057, type: !3050, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !725, retainedNodes: !3775)
!3775 = !{!3773, !3776}
!3776 = !DILocalVariable(name: "size", arg: 2, scope: !3774, file: !3058, line: 2057, type: !110)
!3777 = !DILocation(line: 0, scope: !3774, inlinedAt: !3778)
!3778 = distinct !DILocation(line: 37, column: 10, scope: !3759)
!3779 = !DILocation(line: 2059, column: 24, scope: !3774, inlinedAt: !3778)
!3780 = !DILocation(line: 2059, column: 10, scope: !3774, inlinedAt: !3778)
!3781 = !DILocation(line: 37, column: 3, scope: !3759)
!3782 = !DILocation(line: 38, column: 1, scope: !3759)
!3783 = distinct !DISubprogram(name: "hard_locale", scope: !671, file: !671, line: 28, type: !3784, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3786)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!234, !108}
!3786 = !{!3787, !3788}
!3787 = !DILocalVariable(name: "category", arg: 1, scope: !3783, file: !671, line: 28, type: !108)
!3788 = !DILocalVariable(name: "locale", scope: !3783, file: !671, line: 30, type: !3789)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !3790)
!3790 = !{!3791}
!3791 = !DISubrange(count: 257)
!3792 = distinct !DIAssignID()
!3793 = !DILocation(line: 0, scope: !3783)
!3794 = !DILocation(line: 30, column: 3, scope: !3783)
!3795 = !DILocation(line: 32, column: 7, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3783, file: !671, line: 32, column: 7)
!3797 = !DILocation(line: 32, column: 7, scope: !3783)
!3798 = !DILocalVariable(name: "__s1", arg: 1, scope: !3799, file: !828, line: 1359, type: !72)
!3799 = distinct !DISubprogram(name: "streq", scope: !828, file: !828, line: 1359, type: !829, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !3800)
!3800 = !{!3798, !3801}
!3801 = !DILocalVariable(name: "__s2", arg: 2, scope: !3799, file: !828, line: 1359, type: !72)
!3802 = !DILocation(line: 0, scope: !3799, inlinedAt: !3803)
!3803 = distinct !DILocation(line: 35, column: 9, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3783, file: !671, line: 35, column: 7)
!3805 = !DILocation(line: 1361, column: 11, scope: !3799, inlinedAt: !3803)
!3806 = !DILocation(line: 35, column: 29, scope: !3804)
!3807 = !DILocation(line: 0, scope: !3799, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 35, column: 32, scope: !3804)
!3809 = !DILocation(line: 1361, column: 11, scope: !3799, inlinedAt: !3808)
!3810 = !DILocation(line: 1361, column: 10, scope: !3799, inlinedAt: !3808)
!3811 = !DILocation(line: 35, column: 7, scope: !3783)
!3812 = !DILocation(line: 46, column: 3, scope: !3783)
!3813 = !DILocation(line: 47, column: 1, scope: !3783)
!3814 = distinct !DISubprogram(name: "setlocale_null_r", scope: !732, file: !732, line: 154, type: !3815, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!108, !108, !255, !110}
!3817 = !{!3818, !3819, !3820}
!3818 = !DILocalVariable(name: "category", arg: 1, scope: !3814, file: !732, line: 154, type: !108)
!3819 = !DILocalVariable(name: "buf", arg: 2, scope: !3814, file: !732, line: 154, type: !255)
!3820 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3814, file: !732, line: 154, type: !110)
!3821 = !DILocation(line: 0, scope: !3814)
!3822 = !DILocation(line: 159, column: 10, scope: !3814)
!3823 = !DILocation(line: 159, column: 3, scope: !3814)
!3824 = distinct !DISubprogram(name: "setlocale_null", scope: !732, file: !732, line: 186, type: !3825, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !731, retainedNodes: !3827)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!72, !108}
!3827 = !{!3828}
!3828 = !DILocalVariable(name: "category", arg: 1, scope: !3824, file: !732, line: 186, type: !108)
!3829 = !DILocation(line: 0, scope: !3824)
!3830 = !DILocation(line: 189, column: 10, scope: !3824)
!3831 = !DILocation(line: 189, column: 3, scope: !3824)
!3832 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !734, file: !734, line: 35, type: !3825, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3833)
!3833 = !{!3834, !3835}
!3834 = !DILocalVariable(name: "category", arg: 1, scope: !3832, file: !734, line: 35, type: !108)
!3835 = !DILocalVariable(name: "result", scope: !3832, file: !734, line: 37, type: !72)
!3836 = !DILocation(line: 0, scope: !3832)
!3837 = !DILocation(line: 37, column: 24, scope: !3832)
!3838 = !DILocation(line: 62, column: 3, scope: !3832)
!3839 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !734, file: !734, line: 66, type: !3815, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845}
!3841 = !DILocalVariable(name: "category", arg: 1, scope: !3839, file: !734, line: 66, type: !108)
!3842 = !DILocalVariable(name: "buf", arg: 2, scope: !3839, file: !734, line: 66, type: !255)
!3843 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3839, file: !734, line: 66, type: !110)
!3844 = !DILocalVariable(name: "result", scope: !3839, file: !734, line: 111, type: !72)
!3845 = !DILocalVariable(name: "length", scope: !3846, file: !734, line: 125, type: !110)
!3846 = distinct !DILexicalBlock(scope: !3847, file: !734, line: 124, column: 5)
!3847 = distinct !DILexicalBlock(scope: !3839, file: !734, line: 113, column: 7)
!3848 = !DILocation(line: 0, scope: !3839)
!3849 = !DILocation(line: 0, scope: !3832, inlinedAt: !3850)
!3850 = distinct !DILocation(line: 111, column: 24, scope: !3839)
!3851 = !DILocation(line: 37, column: 24, scope: !3832, inlinedAt: !3850)
!3852 = !DILocation(line: 113, column: 14, scope: !3847)
!3853 = !DILocation(line: 113, column: 7, scope: !3839)
!3854 = !DILocation(line: 116, column: 19, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !734, line: 116, column: 11)
!3856 = distinct !DILexicalBlock(scope: !3847, file: !734, line: 114, column: 5)
!3857 = !DILocation(line: 116, column: 11, scope: !3856)
!3858 = !DILocation(line: 120, column: 16, scope: !3855)
!3859 = !DILocation(line: 120, column: 9, scope: !3855)
!3860 = !DILocation(line: 125, column: 23, scope: !3846)
!3861 = !DILocation(line: 0, scope: !3846)
!3862 = !DILocation(line: 126, column: 18, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3846, file: !734, line: 126, column: 11)
!3864 = !DILocation(line: 126, column: 11, scope: !3846)
!3865 = !DILocation(line: 128, column: 39, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3863, file: !734, line: 127, column: 9)
!3867 = !DILocalVariable(name: "__dest", arg: 1, scope: !3868, file: !1439, line: 26, type: !3329)
!3868 = distinct !DISubprogram(name: "memcpy", scope: !1439, file: !1439, line: 26, type: !3327, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !733, retainedNodes: !3869)
!3869 = !{!3867, !3870, !3871}
!3870 = !DILocalVariable(name: "__src", arg: 2, scope: !3868, file: !1439, line: 26, type: !962)
!3871 = !DILocalVariable(name: "__len", arg: 3, scope: !3868, file: !1439, line: 26, type: !110)
!3872 = !DILocation(line: 0, scope: !3868, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 128, column: 11, scope: !3866)
!3874 = !DILocation(line: 29, column: 10, scope: !3868, inlinedAt: !3873)
!3875 = !DILocation(line: 129, column: 11, scope: !3866)
!3876 = !DILocation(line: 133, column: 23, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3878, file: !734, line: 133, column: 15)
!3878 = distinct !DILexicalBlock(scope: !3863, file: !734, line: 132, column: 9)
!3879 = !DILocation(line: 133, column: 15, scope: !3878)
!3880 = !DILocation(line: 138, column: 44, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3877, file: !734, line: 134, column: 13)
!3882 = !DILocation(line: 0, scope: !3868, inlinedAt: !3883)
!3883 = distinct !DILocation(line: 138, column: 15, scope: !3881)
!3884 = !DILocation(line: 29, column: 10, scope: !3868, inlinedAt: !3883)
!3885 = !DILocation(line: 139, column: 15, scope: !3881)
!3886 = !DILocation(line: 139, column: 32, scope: !3881)
!3887 = !DILocation(line: 140, column: 13, scope: !3881)
!3888 = !DILocation(line: 0, scope: !3847)
!3889 = !DILocation(line: 145, column: 1, scope: !3839)
