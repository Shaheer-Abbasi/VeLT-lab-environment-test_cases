; ModuleID = 'src/yes.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.iovec = type { ptr, i64 }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s [STRING]...\0A  or:  %s OPTION\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [65 x i8] c"Repeatedly output a line with all specified STRING(s), or 'y'.\0A\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !32
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [16 x i8] c"standard output\00", align 1, !dbg !62
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !64
@.str.13 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !103
@.str.14 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !108
@.str.15 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !110
@.str.16 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !112
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !152
@.str.31 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !154
@.str.32 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !156
@.str.33 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !161
@.str.34 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !163
@.str.35 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !168
@.str.36 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !173
@.str.37 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !175
@.str.38 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !177
@.str.39 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !179
@.str.43 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !190
@.str.44 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !192
@.str.45 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !197
@.str.46 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !202
@.str.47 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !207
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !290
@Version = dso_local local_unnamed_addr global ptr @.str.17, align 8, !dbg !293
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !297
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !310
@.str.20 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !302
@.str.1.21 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !304
@.str.2.22 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !306
@.str.3.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !308
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !312
@stderr = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !318
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !354
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !320
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !344
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !346
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !348
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !350
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !352
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !356
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !358
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !363
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !368
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !386
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.49, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.50, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !389
@optind = external local_unnamed_addr global i32, align 4
@.str.1.53 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !394
@.str.2.49 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !396
@.str.3.50 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !398
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !410
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !416
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !418
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !420
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !451
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !454
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !456
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !461
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !463
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !465
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !467
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !469
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !471
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !473
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.64, ptr @.str.1.65, ptr @.str.2.66, ptr @.str.3.67, ptr @.str.4.68, ptr @.str.5.69, ptr @.str.6.70, ptr @.str.7.71, ptr @.str.8.72, ptr @.str.9.73, ptr null], align 8, !dbg !475
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !500
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !514
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !552
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !559
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !516
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !561
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !504
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !521
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !523
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !525
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !527
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !529
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !567
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !570
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !572
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !574
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !576
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !578
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !583
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !588
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !590
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !595
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !600
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !605
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !610
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !612
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !617
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !622
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !627
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !632
@.str.18 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !634
@.str.19 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !636
@.str.20.104 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !638
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !640
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !642
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !644
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !649
@exit_failure = dso_local global i32 1, align 4, !dbg !657
@.str.119 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !663
@.str.1.117 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !666
@.str.2.118 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !668
@.str.134 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !670
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !673
@rpl_pipe2.have_pipe2_really = internal unnamed_addr global i32 0, align 4, !dbg !688
@.str.141 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !714
@.str.1.142 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !717

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !808 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !812, metadata !DIExpression()), !dbg !813
  %2 = icmp eq i32 %0, 0, !dbg !814
  br i1 %2, label %8, label %3, !dbg !816

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !817, !tbaa !819
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !817
  %6 = load ptr, ptr @program_name, align 8, !dbg !817, !tbaa !819
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !817
  br label %31, !dbg !817

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !823
  %10 = load ptr, ptr @program_name, align 8, !dbg !823, !tbaa !819
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #40, !dbg !823
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !825
  %13 = load ptr, ptr @stdout, align 8, !dbg !825, !tbaa !819
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !825
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !826
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !826
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !827
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata !847, metadata !841, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr poison, metadata !840, metadata !DIExpression()), !dbg !845
  tail call void @emit_bug_reporting_address() #40, !dbg !848
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !849
  call void @llvm.dbg.value(metadata ptr %17, metadata !843, metadata !DIExpression()), !dbg !845
  %18 = icmp eq ptr %17, null, !dbg !850
  br i1 %18, label %26, label %19, !dbg !852

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #41, !dbg !853
  %21 = icmp eq i32 %20, 0, !dbg !853
  br i1 %21, label %26, label %22, !dbg !854

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #40, !dbg !855
  %24 = load ptr, ptr @stdout, align 8, !dbg !855, !tbaa !819
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !855
  br label %26, !dbg !857

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !840, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !845
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #40, !dbg !858
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #40, !dbg !858
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #40, !dbg !859
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #40, !dbg !859
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !860
  unreachable, !dbg !860
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !861 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !865 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !871 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !874 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !213, metadata !DIExpression()), !dbg !877
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !214, metadata !DIExpression()), !dbg !877
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !878, !tbaa !879
  %3 = icmp eq i32 %2, -1, !dbg !881
  br i1 %3, label %4, label %16, !dbg !882

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #40, !dbg !883
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !215, metadata !DIExpression()), !dbg !884
  %6 = icmp eq ptr %5, null, !dbg !885
  br i1 %6, label %14, label %7, !dbg !886

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !887, !tbaa !888
  %9 = icmp eq i8 %8, 0, !dbg !887
  br i1 %9, label %14, label %10, !dbg !889

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !890, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !896, metadata !DIExpression()), !dbg !897
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #41, !dbg !899
  %12 = icmp eq i32 %11, 0, !dbg !900
  %13 = zext i1 %12 to i32, !dbg !889
  br label %14, !dbg !889

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !901, !tbaa !879
  br label %16, !dbg !902

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !903
  %18 = icmp eq i32 %17, 0, !dbg !903
  br i1 %18, label %22, label %19, !dbg !905

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !906, !tbaa !819
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !906
  br label %121, !dbg !908

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !877
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #41, !dbg !909
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !910
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !877
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !911
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !877
  %26 = icmp eq ptr %25, null, !dbg !912
  br i1 %26, label %53, label %27, !dbg !913

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !914
  br i1 %28, label %53, label %29, !dbg !915

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !916
  %30 = icmp ult ptr %24, %25, !dbg !917
  br i1 %30, label %31, label %53, !dbg !918

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !877
  %33 = load ptr, ptr %32, align 8, !tbaa !819
  br label %34, !dbg !918

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !916
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !916
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !919
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !916
  %38 = load i8, ptr %35, align 1, !dbg !919, !tbaa !888
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !919
  %41 = load i16, ptr %40, align 2, !dbg !919, !tbaa !920
  %42 = freeze i16 %41, !dbg !922
  %43 = lshr i16 %42, 13, !dbg !922
  %44 = and i16 %43, 1, !dbg !922
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !923
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !916
  %47 = icmp ult ptr %37, %25, !dbg !917
  %48 = icmp ult i64 %46, 2, !dbg !924
  %49 = select i1 %47, i1 %48, i1 false, !dbg !924
  br i1 %49, label %34, label %50, !dbg !918, !llvm.loop !925

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !923
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !927
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !929
  br label %53, !dbg !929

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !877
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !877
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !221, metadata !DIExpression()), !dbg !877
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.16) #41, !dbg !930
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !227, metadata !DIExpression()), !dbg !877
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !931
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !228, metadata !DIExpression()), !dbg !877
  br label %58, !dbg !932

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !877
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !877
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !228, metadata !DIExpression()), !dbg !877
  %61 = load i8, ptr %59, align 1, !dbg !933, !tbaa !888
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !934

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !935
  %64 = load i8, ptr %63, align 1, !dbg !938, !tbaa !888
  %65 = icmp ne i8 %64, 45, !dbg !939
  %66 = select i1 %65, i1 %60, i1 false, !dbg !940
  br label %67, !dbg !940

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !877
  %69 = tail call ptr @__ctype_b_loc() #43, !dbg !941
  %70 = load ptr, ptr %69, align 8, !dbg !941, !tbaa !819
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !941
  %73 = load i16, ptr %72, align 2, !dbg !941, !tbaa !920
  %74 = and i16 %73, 8192, !dbg !941
  %75 = icmp eq i16 %74, 0, !dbg !941
  br i1 %75, label %89, label %76, !dbg !943

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !944
  br i1 %77, label %91, label %78, !dbg !947

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !948
  %80 = load i8, ptr %79, align 1, !dbg !948, !tbaa !888
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !948
  %83 = load i16, ptr %82, align 2, !dbg !948, !tbaa !920
  %84 = and i16 %83, 8192, !dbg !948
  %85 = icmp eq i16 %84, 0, !dbg !948
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !949
  br i1 %88, label %89, label %91, !dbg !949

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !950
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !228, metadata !DIExpression()), !dbg !877
  br label %58, !dbg !932, !llvm.loop !951

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !877
  %92 = ptrtoint ptr %24 to i64, !dbg !953
  %93 = load ptr, ptr @stdout, align 8, !dbg !953, !tbaa !819
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata !847, metadata !896, metadata !DIExpression()), !dbg !972
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !877
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #41, !dbg !974
  %96 = icmp eq i32 %95, 0, !dbg !974
  br i1 %96, label %100, label %97, !dbg !976

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #41, !dbg !977
  %99 = icmp eq i32 %98, 0, !dbg !977
  br i1 %99, label %100, label %103, !dbg !978

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !979
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #40, !dbg !979
  br label %106, !dbg !981

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !982
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #40, !dbg !982
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !819
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %107), !dbg !984
  %109 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !819
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %109), !dbg !985
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !986
  %112 = sub i64 %111, %92, !dbg !986
  %113 = load ptr, ptr @stdout, align 8, !dbg !986, !tbaa !819
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !986
  %115 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !819
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %115), !dbg !987
  %117 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !819
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %117), !dbg !988
  %119 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !819
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !989
  br label %121, !dbg !990

121:                                              ; preds = %106, %19
  ret void, !dbg !990
}

; Function Attrs: nounwind
declare !dbg !991 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !995 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !999 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1001 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1004 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1007 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1010 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1013 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1019 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1020 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1026 {
  %3 = alloca [2 x i32], align 8, !DIAssignID !1047
  %4 = alloca %struct.iovec, align 8, !DIAssignID !1048
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1031, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1032, metadata !DIExpression()), !dbg !1049
  %5 = load ptr, ptr %1, align 8, !dbg !1050, !tbaa !819
  tail call void @set_program_name(ptr noundef %5) #40, !dbg !1051
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #40, !dbg !1052
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #40, !dbg !1053
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #40, !dbg !1054
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1055
  %10 = load ptr, ptr @Version, align 8, !dbg !1056, !tbaa !819
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #40, !dbg !1057
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %10, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %11, ptr noundef null) #40, !dbg !1058
  %12 = load i32, ptr @optind, align 4, !dbg !1059, !tbaa !879
  %13 = sext i32 %12 to i64, !dbg !1060
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1060
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1033, metadata !DIExpression()), !dbg !1049
  %15 = sext i32 %0 to i64, !dbg !1061
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1061
  tail call void @llvm.dbg.value(metadata ptr %16, metadata !1034, metadata !DIExpression()), !dbg !1049
  %17 = icmp eq i32 %12, %0, !dbg !1062
  br i1 %17, label %18, label %20, !dbg !1064

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %16, i64 1, !dbg !1065
  tail call void @llvm.dbg.value(metadata ptr %19, metadata !1034, metadata !DIExpression()), !dbg !1049
  store ptr @.str.11, ptr %16, align 8, !dbg !1066, !tbaa !819
  br label %20, !dbg !1067

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %19, %18 ], [ %16, %2 ], !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1034, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1036, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1037, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1049
  %22 = load ptr, ptr %14, align 8, !dbg !1068, !tbaa !819
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #41, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1038, metadata !DIExpression()), !dbg !1070
  %24 = add i64 %23, 1, !dbg !1071
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1035, metadata !DIExpression()), !dbg !1049
  %25 = getelementptr inbounds ptr, ptr %14, i64 1, !dbg !1072
  %26 = icmp ult ptr %25, %21, !dbg !1074
  br i1 %26, label %.preheader8, label %43, !dbg !1075

.preheader8:                                      ; preds = %20
  br label %27, !dbg !1075

27:                                               ; preds = %.preheader8, %27
  %28 = phi ptr [ %41, %27 ], [ %25, %.preheader8 ]
  %29 = phi i64 [ %40, %27 ], [ %24, %.preheader8 ]
  %30 = phi i64 [ %38, %27 ], [ %23, %.preheader8 ]
  %31 = phi ptr [ %35, %27 ], [ %22, %.preheader8 ]
  %32 = phi i1 [ %37, %27 ], [ true, %.preheader8 ]
  %33 = getelementptr inbounds i8, ptr %31, i64 %30, !dbg !1076
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !1077
  %35 = load ptr, ptr %28, align 8, !dbg !1078, !tbaa !819
  %36 = icmp eq ptr %34, %35, !dbg !1079
  %37 = select i1 %36, i1 %32, i1 false, !dbg !1080
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1035, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !1037, metadata !DIExpression()), !dbg !1049
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #41, !dbg !1069
  tail call void @llvm.dbg.value(metadata i64 %38, metadata !1038, metadata !DIExpression()), !dbg !1070
  %39 = add i64 %29, 1, !dbg !1081
  %40 = add i64 %39, %38, !dbg !1071
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !1035, metadata !DIExpression()), !dbg !1049
  %41 = getelementptr inbounds ptr, ptr %28, i64 1, !dbg !1072
  %42 = icmp ult ptr %41, %21, !dbg !1074
  br i1 %42, label %27, label %.loopexit9, !dbg !1075

.loopexit9:                                       ; preds = %27
  %.lcssa16 = phi i1 [ %37, %27 ], !dbg !1080
  %.lcssa15 = phi i64 [ %40, %27 ], !dbg !1071
  br label %43, !dbg !1082

43:                                               ; preds = %.loopexit9, %20
  %44 = phi i1 [ true, %20 ], [ %.lcssa16, %.loopexit9 ]
  %45 = phi i64 [ %24, %20 ], [ %.lcssa15, %.loopexit9 ], !dbg !1071
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr undef, metadata !1037, metadata !DIExpression()), !dbg !1049
  %46 = icmp ugt i64 %45, 4096, !dbg !1082
  %47 = select i1 %46, i1 %44, i1 false, !dbg !1084
  %48 = select i1 %46, i64 %45, i64 8192, !dbg !1084
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1035, metadata !DIExpression()), !dbg !1049
  %49 = freeze i64 %48, !dbg !1085
  br i1 %47, label %52, label %50, !dbg !1088

50:                                               ; preds = %43
  %51 = tail call noalias nonnull ptr @xmalloc(i64 noundef %49) #44, !dbg !1089
  br label %52, !dbg !1088

52:                                               ; preds = %43, %50
  %53 = phi ptr [ %51, %50 ], [ %22, %43 ], !dbg !1088
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !1040, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %14, metadata !1037, metadata !DIExpression()), !dbg !1049
  br label %54, !dbg !1090

54:                                               ; preds = %61, %52
  %55 = phi ptr [ %14, %52 ], [ %65, %61 ], !dbg !1049
  %56 = phi i64 [ 0, %52 ], [ %63, %61 ], !dbg !1049
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !1041, metadata !DIExpression()), !dbg !1049
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !1037, metadata !DIExpression()), !dbg !1049
  %57 = load ptr, ptr %55, align 8, !dbg !1091, !tbaa !819
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #41, !dbg !1092
  tail call void @llvm.dbg.value(metadata i64 %58, metadata !1042, metadata !DIExpression()), !dbg !1093
  br i1 %47, label %61, label %59, !dbg !1094

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %53, i64 %56, !dbg !1095
  call void @llvm.dbg.value(metadata ptr %60, metadata !1097, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata ptr %57, metadata !1104, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %58, metadata !1105, metadata !DIExpression()), !dbg !1106
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %60, ptr noundef nonnull align 1 %57, i64 noundef %58, i1 noundef false) #40, !dbg !1108
  br label %61, !dbg !1109

61:                                               ; preds = %59, %54
  %62 = add i64 %58, %56, !dbg !1110
  tail call void @llvm.dbg.value(metadata i64 %62, metadata !1041, metadata !DIExpression()), !dbg !1049
  %63 = add i64 %62, 1, !dbg !1111
  tail call void @llvm.dbg.value(metadata i64 %63, metadata !1041, metadata !DIExpression()), !dbg !1049
  %64 = getelementptr inbounds i8, ptr %53, i64 %62, !dbg !1112
  store i8 32, ptr %64, align 1, !dbg !1113, !tbaa !888
  %65 = getelementptr inbounds ptr, ptr %55, i64 1, !dbg !1114
  tail call void @llvm.dbg.value(metadata ptr %65, metadata !1037, metadata !DIExpression()), !dbg !1049
  %66 = icmp ult ptr %65, %21, !dbg !1115
  br i1 %66, label %54, label %67, !dbg !1116, !llvm.loop !1117

67:                                               ; preds = %61
  %.lcssa14 = phi i64 [ %62, %61 ], !dbg !1110
  %.lcssa13 = phi i64 [ %63, %61 ], !dbg !1111
  %68 = getelementptr inbounds i8, ptr %53, i64 %.lcssa14
  store i8 10, ptr %68, align 1, !dbg !1119, !tbaa !888
  tail call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1044, metadata !DIExpression()), !dbg !1049
  %69 = tail call i64 @full_write(i32 noundef 1, ptr noundef nonnull %53, i64 noundef %.lcssa13) #40, !dbg !1120
  %70 = icmp eq i64 %69, %.lcssa13, !dbg !1121
  br i1 %70, label %71, label %191, !dbg !1122

71:                                               ; preds = %67
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1123, metadata !DIExpression(), metadata !1047, metadata ptr %3, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1136, metadata !DIExpression(), metadata !1048, metadata ptr %4, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata ptr %53, metadata !1128, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1129, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1130, metadata !DIExpression()), !dbg !1159
  %72 = tail call i32 @getpagesize() #43, !dbg !1162
  %73 = sext i32 %72 to i64, !dbg !1162
  call void @llvm.dbg.value(metadata i64 %73, metadata !1131, metadata !DIExpression()), !dbg !1159
  %74 = tail call i32 @isapipe(i32 noundef 1) #40, !dbg !1163
  %75 = icmp sgt i32 %74, 0, !dbg !1164
  call void @llvm.dbg.value(metadata i1 %75, metadata !1132, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40, !dbg !1165
  store i64 -1, ptr %3, align 8, !dbg !1166, !DIAssignID !1167
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1123, metadata !DIExpression(), metadata !1167, metadata ptr %3, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr null, metadata !1134, metadata !DIExpression()), !dbg !1159
  br i1 %75, label %76, label %81, !dbg !1168

76:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !1169, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1174, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 0, metadata !1175, metadata !DIExpression()), !dbg !1177
  %77 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1031, i32 noundef 524288) #40, !dbg !1180
  call void @llvm.dbg.value(metadata i32 %77, metadata !1175, metadata !DIExpression()), !dbg !1177
  %78 = icmp slt i32 %77, 0, !dbg !1182
  br i1 %78, label %79, label %91, !dbg !1183

79:                                               ; preds = %76
  %80 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1032) #40, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %80, metadata !1175, metadata !DIExpression()), !dbg !1177
  br label %91, !dbg !1185

81:                                               ; preds = %71
  %82 = call i32 @pipe2_safer(ptr noundef nonnull %3, i32 noundef 0) #40, !dbg !1186
  %83 = icmp slt i32 %82, 0, !dbg !1189
  br i1 %83, label %84, label %85, !dbg !1190

84:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1191
  br label %174, !dbg !1192

85:                                               ; preds = %81
  %86 = load i32, ptr %3, align 8, !dbg !1193, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %86, metadata !1169, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1174, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i32 0, metadata !1175, metadata !DIExpression()), !dbg !1194
  %87 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %86, i32 noundef 1031, i32 noundef 524288) #40, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %87, metadata !1175, metadata !DIExpression()), !dbg !1194
  %88 = icmp slt i32 %87, 0, !dbg !1197
  br i1 %88, label %89, label %91, !dbg !1198

89:                                               ; preds = %85
  %90 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %86, i32 noundef 1032) #40, !dbg !1199
  call void @llvm.dbg.value(metadata i32 %90, metadata !1175, metadata !DIExpression()), !dbg !1194
  br label %91, !dbg !1200

91:                                               ; preds = %89, %85, %79, %76
  %92 = phi i32 [ %80, %79 ], [ %77, %76 ], [ %90, %89 ], [ %87, %85 ]
  %93 = icmp slt i32 %92, 1, !dbg !1201
  %94 = sdiv i32 %92, 4, !dbg !1204
  %95 = select i1 %93, i32 16384, i32 %94, !dbg !1204
  %96 = freeze i32 %95, !dbg !1205
  %97 = sext i32 %96 to i64, !dbg !1205
  %98 = urem i64 %97, %.lcssa13, !dbg !1206
  %99 = sub nuw i64 %97, %98, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %99, metadata !1133, metadata !DIExpression()), !dbg !1159
  %100 = icmp eq i64 %99, 0, !dbg !1207
  br i1 %100, label %161, label %101, !dbg !1209

101:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i64 %73, metadata !1210, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata i64 %99, metadata !1216, metadata !DIExpression()), !dbg !1217
  %102 = call noalias ptr @aligned_alloc(i64 noundef %73, i64 noundef %99) #45, !dbg !1220
  call void @llvm.assume(i1 true) [ "align"(ptr %102, i64 %73) ], !dbg !1220
  call void @llvm.dbg.value(metadata ptr %102, metadata !1134, metadata !DIExpression()), !dbg !1159
  %103 = icmp eq ptr %102, null, !dbg !1221
  br i1 %103, label %161, label %104, !dbg !1222

104:                                              ; preds = %101
  call void @llvm.dbg.value(metadata ptr %102, metadata !1223, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr %53, metadata !1228, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1229, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %99, metadata !1230, metadata !DIExpression()), !dbg !1236
  %105 = icmp eq ptr %102, %53, !dbg !1238
  br i1 %105, label %107, label %106, !dbg !1240

106:                                              ; preds = %104
  call void @llvm.dbg.value(metadata ptr %102, metadata !1097, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr %53, metadata !1104, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1105, metadata !DIExpression()), !dbg !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %102, ptr noundef nonnull align 1 %53, i64 noundef %.lcssa13, i1 noundef false) #40, !dbg !1243
  br label %107, !dbg !1244

107:                                              ; preds = %106, %104
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1231, metadata !DIExpression()), !dbg !1245
  %108 = icmp sgt i64 %99, %.lcssa13, !dbg !1246
  br i1 %108, label %.preheader6, label %116, !dbg !1247

.preheader6:                                      ; preds = %107
  br label %109, !dbg !1247

109:                                              ; preds = %.preheader6, %109
  %110 = phi i64 [ %114, %109 ], [ %.lcssa13, %.preheader6 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1231, metadata !DIExpression()), !dbg !1245
  %111 = sub nsw i64 %99, %110, !dbg !1248
  %112 = call i64 @llvm.smin.i64(i64 %110, i64 %111), !dbg !1248
  call void @llvm.dbg.value(metadata i64 %112, metadata !1233, metadata !DIExpression()), !dbg !1249
  %113 = getelementptr inbounds i8, ptr %102, i64 %110, !dbg !1250
  call void @llvm.dbg.value(metadata ptr %113, metadata !1097, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr %102, metadata !1104, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %112, metadata !1105, metadata !DIExpression()), !dbg !1251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %113, ptr noundef nonnull align 1 %102, i64 noundef %112, i1 noundef false) #40, !dbg !1253
  %114 = add nsw i64 %112, %110, !dbg !1254
  call void @llvm.dbg.value(metadata i64 %114, metadata !1231, metadata !DIExpression()), !dbg !1245
  %115 = icmp slt i64 %114, %99, !dbg !1246
  br i1 %115, label %109, label %.loopexit7, !dbg !1247, !llvm.loop !1255

.loopexit7:                                       ; preds = %109
  br label %116, !dbg !1257

116:                                              ; preds = %.loopexit7, %107
  %117 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1257
  %118 = load i32, ptr %117, align 4, !dbg !1257
  %119 = select i1 %75, i32 1, i32 %118, !dbg !1257
  call void @llvm.dbg.value(metadata i32 %119, metadata !1135, metadata !DIExpression()), !dbg !1159
  %120 = getelementptr inbounds %struct.iovec, ptr %4, i64 0, i32 1
  %121 = icmp slt i64 %99, 1
  %122 = or i1 %75, %121
  br label %123, !dbg !1258

123:                                              ; preds = %157, %116
  %124 = phi i1 [ false, %116 ], [ %158, %157 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #40, !dbg !1259
  store ptr %102, ptr %4, align 8, !dbg !1260, !tbaa !1261, !DIAssignID !1264
  call void @llvm.dbg.assign(metadata ptr %102, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1264, metadata ptr %4, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.assign(metadata i64 %99, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1265, metadata ptr %120, metadata !DIExpression()), !dbg !1161
  store i64 %99, ptr %120, align 8, !dbg !1161, !tbaa !1266, !DIAssignID !1265
  br label %132, !dbg !1267

125:                                              ; preds = %132
  %126 = select i1 %75, i1 true, i1 %133, !dbg !1268
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  %127 = load ptr, ptr %4, align 8, !dbg !1269, !tbaa !1261
  %128 = getelementptr inbounds i8, ptr %127, i64 %138, !dbg !1270
  store ptr %128, ptr %4, align 8, !dbg !1271, !tbaa !1261, !DIAssignID !1272
  call void @llvm.dbg.assign(metadata ptr %128, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1272, metadata ptr %4, metadata !DIExpression()), !dbg !1161
  %129 = load i64, ptr %120, align 8, !dbg !1273, !tbaa !1266
  %130 = sub i64 %129, %138, !dbg !1273
  call void @llvm.dbg.assign(metadata i64 %130, metadata !1136, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64), metadata !1265, metadata ptr %120, metadata !DIExpression()), !dbg !1161
  store i64 %130, ptr %120, align 8, !dbg !1161, !tbaa !1266, !DIAssignID !1265
  %131 = icmp eq i64 %130, 0, !dbg !1274
  br i1 %131, label %141, label %132, !dbg !1267

132:                                              ; preds = %125, %123
  %133 = phi i1 [ %124, %123 ], [ %126, %125 ]
  %134 = phi i64 [ %99, %123 ], [ %130, %125 ]
  %135 = urem i64 %134, %73, !dbg !1275
  %136 = icmp eq i64 %135, 0, !dbg !1276
  %137 = select i1 %136, i32 8, i32 0, !dbg !1276
  call void @llvm.dbg.value(metadata i32 %137, metadata !1145, metadata !DIExpression()), !dbg !1277
  %138 = call i64 @vmsplice(i32 noundef %119, ptr noundef nonnull %4, i64 noundef 1, i32 noundef %137) #40, !dbg !1278
  call void @llvm.dbg.value(metadata i64 %138, metadata !1147, metadata !DIExpression()), !dbg !1277
  %139 = icmp sgt i64 %138, 0, !dbg !1279
  br i1 %139, label %125, label %140, !dbg !1281, !llvm.loop !1282

140:                                              ; preds = %132
  %.lcssa = phi i1 [ %133, %132 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #40, !dbg !1284
  br label %161

141:                                              ; preds = %125
  %.lcssa11 = phi i1 [ %126, %125 ], !dbg !1268
  br i1 %122, label %157, label %142, !dbg !1285

142:                                              ; preds = %141
  call void @llvm.dbg.value(metadata i64 %99, metadata !1150, metadata !DIExpression()), !dbg !1286
  %143 = load i32, ptr %3, align 8, !dbg !1287, !tbaa !879
  %144 = call i64 @splice(i32 noundef %143, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %99, i32 noundef 1) #40, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %144, metadata !1153, metadata !DIExpression()), !dbg !1289
  %145 = icmp sgt i64 %144, 0, !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 poison, metadata !1150, metadata !DIExpression()), !dbg !1286
  br i1 %145, label %146, label %.loopexit5, !llvm.loop !1292

146:                                              ; preds = %142
  %147 = sub nsw i64 %99, %144, !dbg !1295
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 poison, metadata !1150, metadata !DIExpression()), !dbg !1286
  %148 = icmp sgt i64 %147, 0, !dbg !1296
  br i1 %148, label %.preheader2, label %157, !dbg !1293

.preheader2:                                      ; preds = %146
  br label %152, !dbg !1293

149:                                              ; preds = %152
  %150 = sub nsw i64 %153, %155, !dbg !1295
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 poison, metadata !1150, metadata !DIExpression()), !dbg !1286
  %151 = icmp sgt i64 %150, 0, !dbg !1296
  br i1 %151, label %152, label %.loopexit4, !dbg !1293, !llvm.loop !1297

152:                                              ; preds = %.preheader2, %149
  %153 = phi i64 [ %150, %149 ], [ %147, %.preheader2 ]
  call void @llvm.dbg.value(metadata i64 %153, metadata !1150, metadata !DIExpression()), !dbg !1286
  %154 = load i32, ptr %3, align 8, !dbg !1287, !tbaa !879
  %155 = call i64 @splice(i32 noundef %154, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %153, i32 noundef 1) #40, !dbg !1288
  call void @llvm.dbg.value(metadata i64 %155, metadata !1153, metadata !DIExpression()), !dbg !1289
  %156 = icmp sgt i64 %155, 0, !dbg !1290
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 poison, metadata !1150, metadata !DIExpression()), !dbg !1286
  br i1 %156, label %149, label %.loopexit3, !llvm.loop !1299

.loopexit4:                                       ; preds = %149
  br label %157, !dbg !1284

157:                                              ; preds = %.loopexit4, %146, %141
  %158 = phi i1 [ %.lcssa11, %141 ], [ true, %146 ], [ true, %.loopexit4 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #40, !dbg !1284
  br label %123

.loopexit3:                                       ; preds = %152
  br label %159, !dbg !1284

.loopexit5:                                       ; preds = %142
  %.lcssa11.lcssa = phi i1 [ %.lcssa11, %142 ], !dbg !1268
  br label %159, !dbg !1284

159:                                              ; preds = %.loopexit5, %.loopexit3
  %160 = phi i1 [ true, %.loopexit3 ], [ %.lcssa11.lcssa, %.loopexit5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #40, !dbg !1284
  br label %161, !dbg !1300

161:                                              ; preds = %159, %140, %101, %91
  %162 = phi ptr [ null, %91 ], [ null, %101 ], [ %102, %140 ], [ %102, %159 ], !dbg !1159
  %163 = phi i1 [ false, %91 ], [ false, %101 ], [ %.lcssa, %140 ], [ %160, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1130, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata ptr %162, metadata !1134, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.label(metadata !1155), !dbg !1301
  %164 = load i32, ptr %3, align 8, !dbg !1300, !tbaa !879
  %165 = icmp sgt i32 %164, -1, !dbg !1302
  br i1 %165, label %166, label %173, !dbg !1303

166:                                              ; preds = %161
  %167 = tail call ptr @__errno_location() #43, !dbg !1304
  %168 = load i32, ptr %167, align 4, !dbg !1304, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %168, metadata !1156, metadata !DIExpression()), !dbg !1305
  %169 = call i32 @close(i32 noundef %164) #40, !dbg !1306
  %170 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1307
  %171 = load i32, ptr %170, align 4, !dbg !1307, !tbaa !879
  %172 = call i32 @close(i32 noundef %171) #40, !dbg !1308
  store i32 %168, ptr %167, align 4, !dbg !1309, !tbaa !879
  br label %173, !dbg !1310

173:                                              ; preds = %161, %166
  call void @llvm.dbg.value(metadata ptr %162, metadata !1311, metadata !DIExpression()), !dbg !1316
  call void @free(ptr noundef %162) #40, !dbg !1318
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40, !dbg !1191
  br i1 %163, label %191, label %174, !dbg !1192

174:                                              ; preds = %84, %173
  %175 = urem i64 %49, %.lcssa13, !dbg !1085
  %176 = sub nuw i64 %49, %175, !dbg !1085
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !1041, metadata !DIExpression()), !dbg !1049
  %177 = icmp ugt i64 %176, %.lcssa13, !dbg !1319
  call void @llvm.dbg.value(metadata ptr %53, metadata !1223, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata ptr %53, metadata !1228, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1229, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %176, metadata !1230, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.value(metadata i64 %.lcssa13, metadata !1231, metadata !DIExpression()), !dbg !1323
  %178 = icmp slt i64 %.lcssa13, %176
  %179 = and i1 %177, %178, !dbg !1324
  br i1 %179, label %.preheader, label %187, !dbg !1324

.preheader:                                       ; preds = %174
  br label %180, !dbg !1325

180:                                              ; preds = %.preheader, %180
  %181 = phi i64 [ %185, %180 ], [ %.lcssa13, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %181, metadata !1231, metadata !DIExpression()), !dbg !1323
  %182 = sub nsw i64 %176, %181, !dbg !1326
  %183 = call i64 @llvm.smin.i64(i64 %181, i64 %182), !dbg !1326
  call void @llvm.dbg.value(metadata i64 %183, metadata !1233, metadata !DIExpression()), !dbg !1327
  %184 = getelementptr inbounds i8, ptr %53, i64 %181, !dbg !1328
  call void @llvm.dbg.value(metadata ptr %184, metadata !1097, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata ptr %53, metadata !1104, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.value(metadata i64 %183, metadata !1105, metadata !DIExpression()), !dbg !1329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %184, ptr noundef nonnull align 1 %53, i64 noundef %183, i1 noundef false) #40, !dbg !1331
  %185 = add nsw i64 %183, %181, !dbg !1332
  call void @llvm.dbg.value(metadata i64 %185, metadata !1231, metadata !DIExpression()), !dbg !1323
  %186 = icmp slt i64 %185, %176, !dbg !1333
  br i1 %186, label %180, label %.loopexit1, !dbg !1325, !llvm.loop !1334

.loopexit1:                                       ; preds = %180
  br label %187, !dbg !1336

187:                                              ; preds = %.loopexit1, %174
  br label %188, !dbg !1336

188:                                              ; preds = %187, %188
  %189 = call i64 @full_write(i32 noundef 1, ptr noundef %53, i64 noundef %176) #40, !dbg !1337
  %190 = icmp eq i64 %189, %176, !dbg !1338
  br i1 %190, label %188, label %.loopexit, !dbg !1336, !llvm.loop !1339

.loopexit:                                        ; preds = %188
  br label %191, !dbg !1341

191:                                              ; preds = %.loopexit, %173, %67
  %192 = tail call ptr @__errno_location() #43, !dbg !1341
  %193 = load i32, ptr %192, align 4, !dbg !1341, !tbaa !879
  %194 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !1341
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %193, ptr noundef %194) #40, !dbg !1341
  ret i32 1, !dbg !1342
}

; Function Attrs: nounwind
declare !dbg !1343 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1346 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1347 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1350 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1353 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !1357 noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1360 i64 @vmsplice(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1366 i64 @splice(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1370 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1374 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1377 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1378 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1380, metadata !DIExpression()), !dbg !1381
  store ptr %0, ptr @file_name, align 8, !dbg !1382, !tbaa !819
  ret void, !dbg !1383
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1384 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !1388, metadata !DIExpression()), !dbg !1389
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1390, !tbaa !1391
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1394 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1399, !tbaa !819
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !1400
  %3 = icmp eq i32 %2, 0, !dbg !1401
  br i1 %3, label %22, label %4, !dbg !1402

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1403, !tbaa !1391, !range !1404, !noundef !847
  %6 = icmp eq i8 %5, 0, !dbg !1403
  br i1 %6, label %11, label %7, !dbg !1405

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !1406
  %9 = load i32, ptr %8, align 4, !dbg !1406, !tbaa !879
  %10 = icmp eq i32 %9, 32, !dbg !1407
  br i1 %10, label %22, label %11, !dbg !1408

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #40, !dbg !1409
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !1396, metadata !DIExpression()), !dbg !1410
  %13 = load ptr, ptr @file_name, align 8, !dbg !1411, !tbaa !819
  %14 = icmp eq ptr %13, null, !dbg !1411
  %15 = tail call ptr @__errno_location() #43, !dbg !1413
  %16 = load i32, ptr %15, align 4, !dbg !1413, !tbaa !879
  br i1 %14, label %19, label %17, !dbg !1414

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !1415
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #40, !dbg !1415
  br label %20, !dbg !1415

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #40, !dbg !1416
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1417, !tbaa !879
  tail call void @_exit(i32 noundef %21) #42, !dbg !1418
  unreachable, !dbg !1418

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1419, !tbaa !819
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !1421
  %25 = icmp eq i32 %24, 0, !dbg !1422
  br i1 %25, label %28, label %26, !dbg !1423

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1424, !tbaa !879
  tail call void @_exit(i32 noundef %27) #42, !dbg !1425
  unreachable, !dbg !1425

28:                                               ; preds = %22
  ret void, !dbg !1426
}

; Function Attrs: noreturn
declare !dbg !1427 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1428 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1432, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1433, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1434, metadata !DIExpression()), !dbg !1436
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1435, metadata !DIExpression(DW_OP_deref)), !dbg !1436
  tail call fastcc void @flush_stdout(), !dbg !1437
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1438, !tbaa !819
  %7 = icmp eq ptr %6, null, !dbg !1438
  br i1 %7, label %9, label %8, !dbg !1440

8:                                                ; preds = %4
  tail call void %6() #40, !dbg !1441
  br label %13, !dbg !1441

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1442, !tbaa !819
  %11 = tail call ptr @getprogname() #41, !dbg !1442
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %11) #40, !dbg !1442
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1444
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1444, !tbaa.struct !1445
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1444
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1444
  ret void, !dbg !1446
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1447 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1449, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata i32 1, metadata !1451, metadata !DIExpression()), !dbg !1454
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !1457
  %2 = icmp slt i32 %1, 0, !dbg !1458
  br i1 %2, label %6, label %3, !dbg !1459

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1460, !tbaa !819
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !1460
  br label %6, !dbg !1460

6:                                                ; preds = %3, %0
  ret void, !dbg !1461
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1462 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !1468
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1465, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1466, metadata !DIExpression()), !dbg !1469
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1467, metadata !DIExpression(DW_OP_deref)), !dbg !1469
  %7 = load ptr, ptr @stderr, align 8, !dbg !1470, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1471, !noalias !1515
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1519
  call void @llvm.dbg.value(metadata ptr %7, metadata !1511, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr %2, metadata !1512, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata ptr poison, metadata !1513, metadata !DIExpression(DW_OP_deref)), !dbg !1520
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #40, !dbg !1471
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1471, !noalias !1515
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1521, !tbaa !879
  %10 = add i32 %9, 1, !dbg !1521
  store i32 %10, ptr @error_message_count, align 4, !dbg !1521, !tbaa !879
  %11 = icmp eq i32 %1, 0, !dbg !1522
  br i1 %11, label %21, label %12, !dbg !1524

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1525, metadata !DIExpression(), metadata !1468, metadata ptr %5, metadata !DIExpression()), !dbg !1533
  call void @llvm.dbg.value(metadata i32 %1, metadata !1528, metadata !DIExpression()), !dbg !1533
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !1535
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !1536
  call void @llvm.dbg.value(metadata ptr %13, metadata !1529, metadata !DIExpression()), !dbg !1533
  %14 = icmp eq ptr %13, null, !dbg !1537
  br i1 %14, label %15, label %17, !dbg !1539

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #40, !dbg !1540
  call void @llvm.dbg.value(metadata ptr %16, metadata !1529, metadata !DIExpression()), !dbg !1533
  br label %17, !dbg !1541

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1533
  call void @llvm.dbg.value(metadata ptr %18, metadata !1529, metadata !DIExpression()), !dbg !1533
  %19 = load ptr, ptr @stderr, align 8, !dbg !1542, !tbaa !819
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %18) #40, !dbg !1542
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !1543
  br label %21, !dbg !1544

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1545, !tbaa !819
  call void @llvm.dbg.value(metadata i32 10, metadata !1546, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata ptr %22, metadata !1552, metadata !DIExpression()), !dbg !1553
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1555
  %24 = load ptr, ptr %23, align 8, !dbg !1555, !tbaa !1556
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1555
  %26 = load ptr, ptr %25, align 8, !dbg !1555, !tbaa !1558
  %27 = icmp ult ptr %24, %26, !dbg !1555
  br i1 %27, label %30, label %28, !dbg !1555, !prof !1559

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #40, !dbg !1555
  br label %32, !dbg !1555

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1555
  store ptr %31, ptr %23, align 8, !dbg !1555, !tbaa !1556
  store i8 10, ptr %24, align 1, !dbg !1555, !tbaa !888
  br label %32, !dbg !1555

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1560, !tbaa !819
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #40, !dbg !1560
  %35 = icmp eq i32 %0, 0, !dbg !1561
  br i1 %35, label %37, label %36, !dbg !1563

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #42, !dbg !1564
  unreachable, !dbg !1564

37:                                               ; preds = %32
  ret void, !dbg !1565
}

declare !dbg !1566 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1569 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1572 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1575 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1578 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1582 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !1590
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1589, metadata !DIExpression(), metadata !1590, metadata ptr %4, metadata !DIExpression()), !dbg !1591
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1586, metadata !DIExpression()), !dbg !1591
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1587, metadata !DIExpression()), !dbg !1591
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1588, metadata !DIExpression()), !dbg !1591
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40, !dbg !1592
  call void @llvm.va_start(ptr nonnull %4), !dbg !1593
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !1594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1594, !tbaa.struct !1445
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #46, !dbg !1594
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !1594
  call void @llvm.va_end(ptr nonnull %4), !dbg !1595
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40, !dbg !1596
  ret void, !dbg !1596
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !322 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !338, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !339, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !340, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !341, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !342, metadata !DIExpression()), !dbg !1597
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !343, metadata !DIExpression(DW_OP_deref)), !dbg !1597
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1598, !tbaa !879
  %9 = icmp eq i32 %8, 0, !dbg !1598
  br i1 %9, label %24, label %10, !dbg !1600

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1601, !tbaa !879
  %12 = icmp eq i32 %11, %3, !dbg !1604
  br i1 %12, label %13, label %23, !dbg !1605

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1606, !tbaa !819
  %15 = icmp eq ptr %14, %2, !dbg !1607
  br i1 %15, label %37, label %16, !dbg !1608

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1609
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1610
  br i1 %19, label %20, label %23, !dbg !1610

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !1611
  %22 = icmp eq i32 %21, 0, !dbg !1612
  br i1 %22, label %37, label %23, !dbg !1613

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1614, !tbaa !819
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1615, !tbaa !879
  br label %24, !dbg !1616

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1617
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1618, !tbaa !819
  %26 = icmp eq ptr %25, null, !dbg !1618
  br i1 %26, label %28, label %27, !dbg !1620

27:                                               ; preds = %24
  tail call void %25() #40, !dbg !1621
  br label %32, !dbg !1621

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1622, !tbaa !819
  %30 = tail call ptr @getprogname() #41, !dbg !1622
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %30) #40, !dbg !1622
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1624, !tbaa !819
  %34 = icmp eq ptr %2, null, !dbg !1624
  %35 = select i1 %34, ptr @.str.3.31, ptr @.str.2.32, !dbg !1624
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #40, !dbg !1624
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1625, !tbaa.struct !1445
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1625
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1625
  br label %37, !dbg !1626

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1626
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1627 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !1637
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1636, metadata !DIExpression(), metadata !1637, metadata ptr %6, metadata !DIExpression()), !dbg !1638
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1631, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1632, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1633, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1634, metadata !DIExpression()), !dbg !1638
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1635, metadata !DIExpression()), !dbg !1638
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !1639
  call void @llvm.va_start(ptr nonnull %6), !dbg !1640
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1641
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1641, !tbaa.struct !1445
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #46, !dbg !1641
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #40, !dbg !1641
  call void @llvm.va_end(ptr nonnull %6), !dbg !1642
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !1643
  ret void, !dbg !1643
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1644 {
  %3 = alloca %struct.__va_list, align 8, !DIAssignID !1671
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1648, metadata !DIExpression(), metadata !1671, metadata ptr %3, metadata !DIExpression()), !dbg !1672
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1646, metadata !DIExpression()), !dbg !1672
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1647, metadata !DIExpression()), !dbg !1672
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40, !dbg !1673
  call void @llvm.va_start(ptr nonnull %3), !dbg !1674
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1659, metadata !DIExpression()), !dbg !1672
  switch i32 %1, label %96 [
    i32 0, label %4
    i32 1030, label %23
    i32 1, label %75
    i32 3, label %75
    i32 1025, label %75
    i32 9, label %75
    i32 1032, label %75
    i32 1034, label %75
    i32 11, label %75
    i32 1033, label %77
    i32 1031, label %77
    i32 10, label %77
    i32 1026, label %77
    i32 2, label %77
    i32 4, label %77
    i32 1024, label %77
    i32 8, label %77
  ], !dbg !1675

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1676
  %6 = load i32, ptr %5, align 8, !dbg !1676
  %7 = icmp sgt i32 %6, -1, !dbg !1676
  br i1 %7, label %16, label %8, !dbg !1676

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !1676
  store i32 %9, ptr %5, align 8, !dbg !1676, !DIAssignID !1677
  call void @llvm.dbg.assign(metadata i32 %9, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1677, metadata ptr %5, metadata !DIExpression()), !dbg !1672
  %10 = icmp ult i32 %6, -7, !dbg !1676
  br i1 %10, label %11, label %16, !dbg !1676

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1676
  %13 = load ptr, ptr %12, align 8, !dbg !1676
  %14 = sext i32 %6 to i64, !dbg !1676
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !1676
  br label %19, !dbg !1676

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !1676
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1676
  store ptr %18, ptr %3, align 8, !dbg !1676, !DIAssignID !1678
  call void @llvm.dbg.assign(metadata ptr %18, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1678, metadata ptr %3, metadata !DIExpression()), !dbg !1672
  br label %19, !dbg !1676

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !1676
  %21 = load i32, ptr %20, align 8, !dbg !1676
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !1660, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata i32 %0, metadata !1680, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i32 %21, metadata !1683, metadata !DIExpression()), !dbg !1685
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #40, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %22, metadata !1684, metadata !DIExpression()), !dbg !1685
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1659, metadata !DIExpression()), !dbg !1672
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1688
  %25 = load i32, ptr %24, align 8, !dbg !1688
  %26 = icmp sgt i32 %25, -1, !dbg !1688
  br i1 %26, label %35, label %27, !dbg !1688

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !1688
  store i32 %28, ptr %24, align 8, !dbg !1688, !DIAssignID !1689
  call void @llvm.dbg.assign(metadata i32 %28, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1689, metadata ptr %24, metadata !DIExpression()), !dbg !1672
  %29 = icmp ult i32 %25, -7, !dbg !1688
  br i1 %29, label %30, label %35, !dbg !1688

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1688
  %32 = load ptr, ptr %31, align 8, !dbg !1688
  %33 = sext i32 %25 to i64, !dbg !1688
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !1688
  br label %38, !dbg !1688

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !1688
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !1688
  store ptr %37, ptr %3, align 8, !dbg !1688, !DIAssignID !1690
  call void @llvm.dbg.assign(metadata ptr %37, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1690, metadata ptr %3, metadata !DIExpression()), !dbg !1672
  br label %38, !dbg !1688

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !1688
  %40 = load i32, ptr %39, align 8, !dbg !1688
  tail call void @llvm.dbg.value(metadata i32 %40, metadata !1663, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.value(metadata i32 %0, metadata !377, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i32 %40, metadata !378, metadata !DIExpression()), !dbg !1692
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1694, !tbaa !879
  %42 = icmp sgt i32 %41, -1, !dbg !1696
  br i1 %42, label %43, label %55, !dbg !1697

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #40, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %44, metadata !379, metadata !DIExpression()), !dbg !1692
  %45 = icmp sgt i32 %44, -1, !dbg !1700
  br i1 %45, label %50, label %46, !dbg !1702

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #43, !dbg !1703
  %48 = load i32, ptr %47, align 4, !dbg !1703, !tbaa !879
  %49 = icmp eq i32 %48, 22, !dbg !1704
  br i1 %49, label %51, label %50, !dbg !1705

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1706, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %44, metadata !379, metadata !DIExpression()), !dbg !1692
  br label %115, !dbg !1708

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !1680, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 %40, metadata !1683, metadata !DIExpression()), !dbg !1709
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %52, metadata !1684, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i32 %52, metadata !379, metadata !DIExpression()), !dbg !1692
  %53 = icmp sgt i32 %52, -1, !dbg !1713
  br i1 %53, label %54, label %115, !dbg !1715

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1716, !tbaa !879
  br label %59, !dbg !1717

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !1680, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %40, metadata !1683, metadata !DIExpression()), !dbg !1718
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #40, !dbg !1720
  call void @llvm.dbg.value(metadata i32 %56, metadata !1684, metadata !DIExpression()), !dbg !1718
  call void @llvm.dbg.value(metadata i32 %56, metadata !379, metadata !DIExpression()), !dbg !1692
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !1721
  call void @llvm.dbg.value(metadata i32 %61, metadata !379, metadata !DIExpression()), !dbg !1692
  %62 = icmp sgt i32 %61, -1, !dbg !1722
  %63 = select i1 %62, i1 %60, i1 false, !dbg !1708
  br i1 %63, label %64, label %115, !dbg !1708

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #40, !dbg !1723
  call void @llvm.dbg.value(metadata i32 %65, metadata !380, metadata !DIExpression()), !dbg !1724
  %66 = icmp slt i32 %65, 0, !dbg !1725
  br i1 %66, label %71, label %67, !dbg !1726

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !1727
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #40, !dbg !1728
  %70 = icmp eq i32 %69, -1, !dbg !1729
  br i1 %70, label %71, label %115, !dbg !1730

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #43, !dbg !1731
  %73 = load i32, ptr %72, align 4, !dbg !1731, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %73, metadata !383, metadata !DIExpression()), !dbg !1732
  %74 = call i32 @close(i32 noundef %61) #40, !dbg !1733
  store i32 %73, ptr %72, align 4, !dbg !1734, !tbaa !879
  call void @llvm.dbg.value(metadata i32 -1, metadata !379, metadata !DIExpression()), !dbg !1692
  br label %115, !dbg !1735

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #40, !dbg !1736
  tail call void @llvm.dbg.value(metadata i32 %76, metadata !1659, metadata !DIExpression()), !dbg !1672
  br label %115, !dbg !1737

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1738
  %79 = load i32, ptr %78, align 8, !dbg !1738
  %80 = icmp sgt i32 %79, -1, !dbg !1738
  br i1 %80, label %89, label %81, !dbg !1738

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !1738
  store i32 %82, ptr %78, align 8, !dbg !1738, !DIAssignID !1739
  call void @llvm.dbg.assign(metadata i32 %82, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1739, metadata ptr %78, metadata !DIExpression()), !dbg !1672
  %83 = icmp ult i32 %79, -7, !dbg !1738
  br i1 %83, label %84, label %89, !dbg !1738

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1738
  %86 = load ptr, ptr %85, align 8, !dbg !1738
  %87 = sext i32 %79 to i64, !dbg !1738
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !1738
  br label %92, !dbg !1738

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !1738
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !1738
  store ptr %91, ptr %3, align 8, !dbg !1738, !DIAssignID !1740
  call void @llvm.dbg.assign(metadata ptr %91, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1740, metadata ptr %3, metadata !DIExpression()), !dbg !1672
  br label %92, !dbg !1738

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !1738
  %94 = load i32, ptr %93, align 8, !dbg !1738
  tail call void @llvm.dbg.value(metadata i32 %94, metadata !1665, metadata !DIExpression()), !dbg !1741
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #40, !dbg !1742
  tail call void @llvm.dbg.value(metadata i32 %95, metadata !1659, metadata !DIExpression()), !dbg !1672
  br label %115, !dbg !1743

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1744
  %98 = load i32, ptr %97, align 8, !dbg !1744
  %99 = icmp sgt i32 %98, -1, !dbg !1744
  br i1 %99, label %108, label %100, !dbg !1744

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !1744
  store i32 %101, ptr %97, align 8, !dbg !1744, !DIAssignID !1745
  call void @llvm.dbg.assign(metadata i32 %101, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 32), metadata !1745, metadata ptr %97, metadata !DIExpression()), !dbg !1672
  %102 = icmp ult i32 %98, -7, !dbg !1744
  br i1 %102, label %103, label %108, !dbg !1744

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1744
  %105 = load ptr, ptr %104, align 8, !dbg !1744
  %106 = sext i32 %98 to i64, !dbg !1744
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !1744
  br label %111, !dbg !1744

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !1744
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !1744
  store ptr %110, ptr %3, align 8, !dbg !1744, !DIAssignID !1746
  call void @llvm.dbg.assign(metadata ptr %110, metadata !1648, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64), metadata !1746, metadata ptr %3, metadata !DIExpression()), !dbg !1672
  br label %111, !dbg !1744

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !1744
  %113 = load ptr, ptr %112, align 8, !dbg !1744
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !1669, metadata !DIExpression()), !dbg !1747
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #40, !dbg !1748
  tail call void @llvm.dbg.value(metadata i32 %114, metadata !1659, metadata !DIExpression()), !dbg !1672
  br label %115, !dbg !1749

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !1750
  tail call void @llvm.dbg.value(metadata i32 %116, metadata !1659, metadata !DIExpression()), !dbg !1672
  call void @llvm.va_end(ptr nonnull %3), !dbg !1751
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40, !dbg !1752
  ret i32 %116, !dbg !1753
}

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1754 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1758, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1759, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1760, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1761, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1762, metadata !DIExpression()), !dbg !1765
  %4 = icmp sgt i64 %2, 0, !dbg !1766
  br i1 %4, label %.preheader, label %20, !dbg !1767

.preheader:                                       ; preds = %3
  br label %5, !dbg !1768

5:                                                ; preds = %.preheader, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %.preheader ]
  %7 = phi ptr [ %17, %15 ], [ %1, %.preheader ]
  %8 = phi i64 [ %16, %15 ], [ 0, %.preheader ]
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1760, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !1762, metadata !DIExpression()), !dbg !1765
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !1761, metadata !DIExpression()), !dbg !1765
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #40, !dbg !1769
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1763, metadata !DIExpression()), !dbg !1770
  %10 = icmp slt i64 %9, 0, !dbg !1771
  br i1 %10, label %.loopexit, label %11, !dbg !1768

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1773
  br i1 %12, label %13, label %15, !dbg !1775

13:                                               ; preds = %11
  %.lcssa1 = phi i64 [ %8, %11 ]
  %14 = tail call ptr @__errno_location() #43, !dbg !1776
  store i32 28, ptr %14, align 4, !dbg !1778, !tbaa !879
  br label %20, !dbg !1779

15:                                               ; preds = %11
  %16 = add nuw nsw i64 %9, %8, !dbg !1780
  tail call void @llvm.dbg.value(metadata i64 %16, metadata !1761, metadata !DIExpression()), !dbg !1765
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !1781
  tail call void @llvm.dbg.value(metadata ptr %17, metadata !1762, metadata !DIExpression()), !dbg !1765
  %18 = sub nsw i64 %6, %9, !dbg !1782
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1760, metadata !DIExpression()), !dbg !1765
  %19 = icmp sgt i64 %18, 0, !dbg !1766
  br i1 %19, label %5, label %.loopexit, !dbg !1767

.loopexit:                                        ; preds = %5, %15
  %.ph = phi i64 [ %8, %5 ], [ %16, %15 ]
  br label %20, !dbg !1783

20:                                               ; preds = %.loopexit, %3, %13
  %21 = phi i64 [ %.lcssa1, %13 ], [ 0, %3 ], [ %.ph, %.loopexit ]
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1761, metadata !DIExpression()), !dbg !1765
  ret i64 %21, !dbg !1783
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1784 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1786, !tbaa !819
  ret ptr %1, !dbg !1787
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #21 !dbg !1788 {
  %2 = alloca %struct.stat, align 8, !DIAssignID !1831
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1796, metadata !DIExpression(), metadata !1831, metadata ptr %2, metadata !DIExpression()), !dbg !1832
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1790, metadata !DIExpression()), !dbg !1832
  tail call void @llvm.dbg.value(metadata i32 1, metadata !1791, metadata !DIExpression()), !dbg !1832
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1795, metadata !DIExpression()), !dbg !1832
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #40, !dbg !1833
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #40, !dbg !1834
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !1830, metadata !DIExpression()), !dbg !1832
  %4 = icmp eq i32 %3, 0, !dbg !1835
  br i1 %4, label %5, label %15, !dbg !1837

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1838
  %7 = load i32, ptr %6, align 4, !dbg !1838, !tbaa !1839
  %8 = icmp ult i32 %7, 2, !dbg !1842
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1843
  %10 = load i32, ptr %9, align 8, !dbg !1843
  %11 = and i32 %10, 61440, !dbg !1843
  %12 = icmp eq i32 %11, 4096, !dbg !1843
  %13 = select i1 %8, i1 %12, i1 false, !dbg !1843
  %14 = zext i1 %13 to i32, !dbg !1843
  br label %15, !dbg !1844

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !1832
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #40, !dbg !1845
  ret i32 %16, !dbg !1845
}

; Function Attrs: nofree nounwind
declare !dbg !1846 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1851 {
  %7 = alloca %struct.__va_list, align 8, !DIAssignID !1881
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1866, metadata !DIExpression(), metadata !1881, metadata ptr %7, metadata !DIExpression()), !dbg !1882
  %8 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1856, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1857, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1858, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1859, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1860, metadata !DIExpression()), !dbg !1883
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1861, metadata !DIExpression()), !dbg !1883
  %9 = load i32, ptr @opterr, align 4, !dbg !1884, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !1862, metadata !DIExpression()), !dbg !1883
  store i32 0, ptr @opterr, align 4, !dbg !1885, !tbaa !879
  %10 = icmp eq i32 %0, 2, !dbg !1886
  br i1 %10, label %11, label %16, !dbg !1887

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1863, metadata !DIExpression()), !dbg !1889
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1890

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #40, !dbg !1891
  br label %16, !dbg !1892

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #40, !dbg !1893
  call void @llvm.va_start(ptr nonnull %7), !dbg !1894
  %15 = load ptr, ptr @stdout, align 8, !dbg !1895, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #40, !dbg !1896
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1896, !tbaa.struct !1445
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #40, !dbg !1896
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #40, !dbg !1896
  call void @exit(i32 noundef 0) #42, !dbg !1897
  unreachable, !dbg !1897

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1898, !tbaa !879
  store i32 0, ptr @optind, align 4, !dbg !1899, !tbaa !879
  ret void, !dbg !1900
}

; Function Attrs: nounwind
declare !dbg !1901 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1907 {
  %8 = alloca %struct.__va_list, align 8, !DIAssignID !1926
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1921, metadata !DIExpression(), metadata !1926, metadata ptr %8, metadata !DIExpression()), !dbg !1927
  %9 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1911, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1912, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1913, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !1914, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !1915, metadata !DIExpression()), !dbg !1928
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !1916, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1928
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1917, metadata !DIExpression()), !dbg !1928
  %10 = load i32, ptr @opterr, align 4, !dbg !1929, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !1918, metadata !DIExpression()), !dbg !1928
  store i32 1, ptr @opterr, align 4, !dbg !1930, !tbaa !879
  %11 = select i1 %5, ptr @.str.1.53, ptr @.str.48, !dbg !1931
  tail call void @llvm.dbg.value(metadata ptr %11, metadata !1919, metadata !DIExpression()), !dbg !1928
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #40, !dbg !1932
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1920, metadata !DIExpression()), !dbg !1928
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1933

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #40, !dbg !1934
  call void @llvm.va_start(ptr nonnull %8), !dbg !1935
  %14 = load ptr, ptr @stdout, align 8, !dbg !1936, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #40, !dbg !1937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1937, !tbaa.struct !1445
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #40, !dbg !1937
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #40, !dbg !1937
  call void @exit(i32 noundef 0) #42, !dbg !1938
  unreachable, !dbg !1938

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1939, !tbaa !879
  br label %17, !dbg !1940

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #40, !dbg !1941
  br label %19, !dbg !1942

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1942, !tbaa !879
  ret void, !dbg !1943
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @pipe2_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !1944 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1946, metadata !DIExpression()), !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !1947, metadata !DIExpression()), !dbg !1957
  %3 = tail call i32 @rpl_pipe2(ptr noundef %0, i32 noundef %1) #40, !dbg !1958
  %4 = icmp eq i32 %3, 0, !dbg !1959
  br i1 %4, label %5, label %21, !dbg !1960

5:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1948, metadata !DIExpression()), !dbg !1961
  %6 = load i32, ptr %0, align 4, !dbg !1962, !tbaa !879
  %7 = tail call i32 @fd_safer_flag(i32 noundef %6, i32 noundef %1) #40, !dbg !1963
  store i32 %7, ptr %0, align 4, !dbg !1964, !tbaa !879
  %8 = icmp slt i32 %7, 0, !dbg !1965
  br i1 %8, label %9, label %16, !dbg !1966

9:                                                ; preds = %16, %5
  %10 = phi i64 [ 1, %5 ], [ 0, %16 ]
  %11 = tail call ptr @__errno_location() #43, !dbg !1967
  %12 = load i32, ptr %11, align 4, !dbg !1967, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !1952, metadata !DIExpression()), !dbg !1968
  %13 = getelementptr inbounds i32, ptr %0, i64 %10, !dbg !1969
  %14 = load i32, ptr %13, align 4, !dbg !1969, !tbaa !879
  %15 = tail call i32 @close(i32 noundef %14) #40, !dbg !1970
  store i32 %12, ptr %11, align 4, !dbg !1971, !tbaa !879
  br label %21

16:                                               ; preds = %5
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1948, metadata !DIExpression()), !dbg !1961
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1948, metadata !DIExpression()), !dbg !1961
  %17 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1962
  %18 = load i32, ptr %17, align 4, !dbg !1962, !tbaa !879
  %19 = tail call i32 @fd_safer_flag(i32 noundef %18, i32 noundef %1) #40, !dbg !1963
  store i32 %19, ptr %17, align 4, !dbg !1964, !tbaa !879
  %20 = icmp slt i32 %19, 0, !dbg !1965
  br i1 %20, label %9, label %21, !dbg !1966

21:                                               ; preds = %9, %16, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %9 ], [ 0, %16 ], !dbg !1957
  ret i32 %22, !dbg !1972
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1973 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1975, metadata !DIExpression()), !dbg !1978
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1976, metadata !DIExpression()), !dbg !1978
  %3 = icmp eq ptr %2, null, !dbg !1980
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1980
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1980
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1977, metadata !DIExpression()), !dbg !1978
  %6 = ptrtoint ptr %5 to i64, !dbg !1981
  %7 = ptrtoint ptr %0 to i64, !dbg !1981
  %8 = sub i64 %6, %7, !dbg !1981
  %9 = icmp sgt i64 %8, 6, !dbg !1983
  br i1 %9, label %10, label %19, !dbg !1984

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1985
  call void @llvm.dbg.value(metadata ptr %11, metadata !1986, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1991, metadata !DIExpression()), !dbg !1993
  call void @llvm.dbg.value(metadata i64 7, metadata !1992, metadata !DIExpression()), !dbg !1993
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1995
  %13 = icmp eq i32 %12, 0, !dbg !1996
  br i1 %13, label %14, label %19, !dbg !1997

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !1975, metadata !DIExpression()), !dbg !1978
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #41, !dbg !1998
  %16 = icmp eq i32 %15, 0, !dbg !2001
  %17 = select i1 %16, i64 3, i64 0, !dbg !2002
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2002
  br label %19, !dbg !2002

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1978
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !1977, metadata !DIExpression()), !dbg !1978
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !1975, metadata !DIExpression()), !dbg !1978
  store ptr %20, ptr @program_name, align 8, !dbg !2003, !tbaa !819
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2004, !tbaa !819
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2005, !tbaa !819
  ret void, !dbg !2006
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2007 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !422 {
  %3 = alloca i32, align 4, !DIAssignID !2008
  call void @llvm.dbg.assign(metadata i1 undef, metadata !432, metadata !DIExpression(), metadata !2008, metadata ptr %3, metadata !DIExpression()), !dbg !2009
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2010
  call void @llvm.dbg.assign(metadata i1 undef, metadata !437, metadata !DIExpression(), metadata !2010, metadata ptr %4, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !429, metadata !DIExpression()), !dbg !2009
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !430, metadata !DIExpression()), !dbg !2009
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #40, !dbg !2011
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !431, metadata !DIExpression()), !dbg !2009
  %6 = icmp eq ptr %5, %0, !dbg !2012
  br i1 %6, label %7, label %14, !dbg !2014

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40, !dbg !2015
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40, !dbg !2016
  call void @llvm.dbg.value(metadata ptr %4, metadata !2017, metadata !DIExpression()), !dbg !2024
  call void @llvm.dbg.value(metadata ptr %4, metadata !2026, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i32 0, metadata !2031, metadata !DIExpression()), !dbg !2033
  call void @llvm.dbg.value(metadata i64 8, metadata !2032, metadata !DIExpression()), !dbg !2033
  store i64 0, ptr %4, align 8, !dbg !2035
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #40, !dbg !2036
  %9 = icmp eq i64 %8, 2, !dbg !2038
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2039
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2009
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40, !dbg !2040
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40, !dbg !2040
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2009
  ret ptr %15, !dbg !2040
}

; Function Attrs: nounwind
declare !dbg !2041 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2047 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2052, metadata !DIExpression()), !dbg !2055
  %2 = tail call ptr @__errno_location() #43, !dbg !2056
  %3 = load i32, ptr %2, align 4, !dbg !2056, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2053, metadata !DIExpression()), !dbg !2055
  %4 = icmp eq ptr %0, null, !dbg !2057
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2057
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !2058
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2054, metadata !DIExpression()), !dbg !2055
  store i32 %3, ptr %2, align 4, !dbg !2059, !tbaa !879
  ret ptr %6, !dbg !2060
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2061 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2067, metadata !DIExpression()), !dbg !2068
  %2 = icmp eq ptr %0, null, !dbg !2069
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2069
  %4 = load i32, ptr %3, align 8, !dbg !2070, !tbaa !2071
  ret i32 %4, !dbg !2073
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2074 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2078, metadata !DIExpression()), !dbg !2080
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2079, metadata !DIExpression()), !dbg !2080
  %3 = icmp eq ptr %0, null, !dbg !2081
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2081
  store i32 %1, ptr %4, align 8, !dbg !2082, !tbaa !2071
  ret void, !dbg !2083
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2084 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2088, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2089, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2090, metadata !DIExpression()), !dbg !2096
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2091, metadata !DIExpression()), !dbg !2096
  %4 = icmp eq ptr %0, null, !dbg !2097
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2097
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2098
  %7 = lshr i8 %1, 5, !dbg !2099
  %8 = zext nneg i8 %7 to i64, !dbg !2099
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2100
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2092, metadata !DIExpression()), !dbg !2096
  %10 = and i8 %1, 31, !dbg !2101
  %11 = zext nneg i8 %10 to i32, !dbg !2101
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2094, metadata !DIExpression()), !dbg !2096
  %12 = load i32, ptr %9, align 4, !dbg !2102, !tbaa !879
  %13 = lshr i32 %12, %11, !dbg !2103
  %14 = and i32 %13, 1, !dbg !2104
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2095, metadata !DIExpression()), !dbg !2096
  %15 = xor i32 %13, %2, !dbg !2105
  %16 = and i32 %15, 1, !dbg !2105
  %17 = shl nuw i32 %16, %11, !dbg !2106
  %18 = xor i32 %17, %12, !dbg !2107
  store i32 %18, ptr %9, align 4, !dbg !2107, !tbaa !879
  ret i32 %14, !dbg !2108
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2109 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2113, metadata !DIExpression()), !dbg !2116
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2114, metadata !DIExpression()), !dbg !2116
  %3 = icmp eq ptr %0, null, !dbg !2117
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2119
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2113, metadata !DIExpression()), !dbg !2116
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2120
  %6 = load i32, ptr %5, align 4, !dbg !2120, !tbaa !2121
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2115, metadata !DIExpression()), !dbg !2116
  store i32 %1, ptr %5, align 4, !dbg !2122, !tbaa !2121
  ret i32 %6, !dbg !2123
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2124 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2128, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !2131
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2130, metadata !DIExpression()), !dbg !2131
  %4 = icmp eq ptr %0, null, !dbg !2132
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2134
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2128, metadata !DIExpression()), !dbg !2131
  store i32 10, ptr %5, align 8, !dbg !2135, !tbaa !2071
  %6 = icmp ne ptr %1, null, !dbg !2136
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2138
  br i1 %8, label %10, label %9, !dbg !2138

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2139
  unreachable, !dbg !2139

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2140
  store ptr %1, ptr %11, align 8, !dbg !2141, !tbaa !2142
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2143
  store ptr %2, ptr %12, align 8, !dbg !2144, !tbaa !2145
  ret void, !dbg !2146
}

; Function Attrs: noreturn nounwind
declare !dbg !2147 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2148 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2152, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2153, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2154, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2155, metadata !DIExpression()), !dbg !2160
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2156, metadata !DIExpression()), !dbg !2160
  %6 = icmp eq ptr %4, null, !dbg !2161
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2161
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2157, metadata !DIExpression()), !dbg !2160
  %8 = tail call ptr @__errno_location() #43, !dbg !2162
  %9 = load i32, ptr %8, align 4, !dbg !2162, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2158, metadata !DIExpression()), !dbg !2160
  %10 = load i32, ptr %7, align 8, !dbg !2163, !tbaa !2071
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2164
  %12 = load i32, ptr %11, align 4, !dbg !2164, !tbaa !2121
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2165
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2166
  %15 = load ptr, ptr %14, align 8, !dbg !2166, !tbaa !2142
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2167
  %17 = load ptr, ptr %16, align 8, !dbg !2167, !tbaa !2145
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2168
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2159, metadata !DIExpression()), !dbg !2160
  store i32 %9, ptr %8, align 4, !dbg !2169, !tbaa !879
  ret i64 %18, !dbg !2170
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2171 {
  %10 = alloca i32, align 4, !DIAssignID !2239
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2240
  %12 = alloca i32, align 4, !DIAssignID !2241
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2242
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2243
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2217, metadata !DIExpression(), metadata !2243, metadata ptr %14, metadata !DIExpression()), !dbg !2244
  %15 = alloca i32, align 4, !DIAssignID !2245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2220, metadata !DIExpression(), metadata !2245, metadata ptr %15, metadata !DIExpression()), !dbg !2246
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2177, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2179, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2180, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2181, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2182, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2183, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2184, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2185, metadata !DIExpression()), !dbg !2247
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2248
  %17 = icmp eq i64 %16, 1, !dbg !2249
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2186, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2189, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2190, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2192, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2194, metadata !DIExpression()), !dbg !2247
  %18 = and i32 %5, 2, !dbg !2250
  %19 = icmp ne i32 %18, 0, !dbg !2250
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2250

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !2251
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !2252
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !2253
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2194, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !2190, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2189, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !2180, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2185, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !2184, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !2181, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.label(metadata !2195), !dbg !2254
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2247
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
  ], !dbg !2255

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2181, metadata !DIExpression()), !dbg !2247
  br label %101, !dbg !2256

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2181, metadata !DIExpression()), !dbg !2247
  br i1 %36, label %101, label %42, !dbg !2256

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2257
  br i1 %43, label %101, label %44, !dbg !2261

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2257, !tbaa !888
  br label %101, !dbg !2257

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !2241, metadata ptr %12, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !2242, metadata ptr %13, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !535, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !2262
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #40, !dbg !2266
  call void @llvm.dbg.value(metadata ptr %46, metadata !537, metadata !DIExpression()), !dbg !2262
  %47 = icmp eq ptr %46, @.str.11.74, !dbg !2267
  br i1 %47, label %48, label %57, !dbg !2269

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %13, metadata !2272, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata ptr %13, metadata !2280, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i64 8, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i64 0, ptr %13, align 8, !dbg !2287
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2288
  %50 = icmp eq i64 %49, 3, !dbg !2290
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2291
  %54 = icmp eq i32 %28, 9, !dbg !2291
  %55 = select i1 %54, ptr @.str.10.76, ptr @.str.12.77, !dbg !2291
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2292
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2262
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !2184, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.assign(metadata i1 undef, metadata !538, metadata !DIExpression(), metadata !2239, metadata ptr %10, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !539, metadata !DIExpression(), metadata !2240, metadata ptr %11, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !535, metadata !DIExpression()), !dbg !2293
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !2293
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #40, !dbg !2295
  call void @llvm.dbg.value(metadata ptr %59, metadata !537, metadata !DIExpression()), !dbg !2293
  %60 = icmp eq ptr %59, @.str.12.77, !dbg !2296
  br i1 %60, label %61, label %70, !dbg !2297

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2298
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2299
  call void @llvm.dbg.value(metadata ptr %11, metadata !2272, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata ptr %11, metadata !2280, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata i64 8, metadata !2284, metadata !DIExpression()), !dbg !2302
  store i64 0, ptr %11, align 8, !dbg !2304
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2305
  %63 = icmp eq i64 %62, 3, !dbg !2306
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2307
  %67 = icmp eq i32 %28, 9, !dbg !2307
  %68 = select i1 %67, ptr @.str.10.76, ptr @.str.12.77, !dbg !2307
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2308
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2308
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2185, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2184, metadata !DIExpression()), !dbg !2247
  br i1 %36, label %88, label %73, !dbg !2309

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !2197, metadata !DIExpression()), !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2187, metadata !DIExpression()), !dbg !2247
  %74 = load i8, ptr %71, align 1, !dbg !2311, !tbaa !888
  %75 = icmp eq i8 %74, 0, !dbg !2313
  br i1 %75, label %88, label %.preheader11, !dbg !2313

.preheader11:                                     ; preds = %73
  br label %76, !dbg !2313

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !2197, metadata !DIExpression()), !dbg !2310
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !2187, metadata !DIExpression()), !dbg !2247
  %80 = icmp ult i64 %79, %39, !dbg !2314
  br i1 %80, label %81, label %83, !dbg !2317

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2314
  store i8 %77, ptr %82, align 1, !dbg !2314, !tbaa !888
  br label %83, !dbg !2314

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2317
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2187, metadata !DIExpression()), !dbg !2247
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2318
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !2197, metadata !DIExpression()), !dbg !2310
  %86 = load i8, ptr %85, align 1, !dbg !2311, !tbaa !888
  %87 = icmp eq i8 %86, 0, !dbg !2313
  br i1 %87, label %.loopexit12, label %76, !dbg !2313, !llvm.loop !2319

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !2317
  br label %88, !dbg !2321

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !2189, metadata !DIExpression()), !dbg !2247
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #41, !dbg !2321
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !2190, metadata !DIExpression()), !dbg !2247
  br label %101, !dbg !2323

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2192, metadata !DIExpression()), !dbg !2247
  br label %101, !dbg !2324

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2181, metadata !DIExpression()), !dbg !2247
  br label %101, !dbg !2325

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2191, metadata !DIExpression()), !dbg !2247
  br i1 %36, label %101, label %95, !dbg !2326

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2181, metadata !DIExpression()), !dbg !2247
  br i1 %36, label %101, label %95, !dbg !2325

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !2327
  br i1 %97, label %101, label %98, !dbg !2331

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !2327, !tbaa !888
  br label %101, !dbg !2327

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2192, metadata !DIExpression()), !dbg !2247
  br label %101, !dbg !2332

100:                                              ; preds = %27
  call void @abort() #42, !dbg !2333
  unreachable, !dbg !2333

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !2322
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.76, %42 ], [ @.str.10.76, %44 ], [ @.str.10.76, %41 ], [ %33, %27 ], [ @.str.12.77, %95 ], [ @.str.12.77, %98 ], [ @.str.12.77, %94 ], [ @.str.10.76, %40 ], [ @.str.12.77, %91 ], [ @.str.12.77, %92 ], [ @.str.12.77, %93 ], !dbg !2247
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !2247
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2192, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2191, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !2190, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !2189, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !2185, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !2184, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !2181, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2202, metadata !DIExpression()), !dbg !2334
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
  br label %121, !dbg !2335

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !2322
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !2251
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !2336
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2194, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !2180, metadata !DIExpression()), !dbg !2247
  %130 = icmp eq i64 %122, -1, !dbg !2337
  br i1 %130, label %131, label %135, !dbg !2338

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2339
  %133 = load i8, ptr %132, align 1, !dbg !2339, !tbaa !888
  %134 = icmp eq i8 %133, 0, !dbg !2340
  br i1 %134, label %573, label %137, !dbg !2341

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !2342
  br i1 %136, label %573, label %137, !dbg !2341

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2204, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2207, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2208, metadata !DIExpression()), !dbg !2343
  br i1 %113, label %138, label %151, !dbg !2344

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !2346
  %140 = select i1 %130, i1 %114, i1 false, !dbg !2347
  br i1 %140, label %141, label %143, !dbg !2347

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2348
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !2180, metadata !DIExpression()), !dbg !2247
  br label %143, !dbg !2349

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !2349
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !2180, metadata !DIExpression()), !dbg !2247
  %145 = icmp ugt i64 %139, %144, !dbg !2350
  br i1 %145, label %151, label %146, !dbg !2351

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2352
  call void @llvm.dbg.value(metadata ptr %147, metadata !2353, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata ptr %106, metadata !2356, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.value(metadata i64 %107, metadata !2357, metadata !DIExpression()), !dbg !2358
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !2360
  %149 = icmp eq i32 %148, 0, !dbg !2361
  %150 = and i1 %149, %109, !dbg !2362
  br i1 %150, label %.loopexit7, label %151, !dbg !2362

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !2180, metadata !DIExpression()), !dbg !2247
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !2363
  %155 = load i8, ptr %154, align 1, !dbg !2363, !tbaa !888
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !2209, metadata !DIExpression()), !dbg !2343
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
  ], !dbg !2364

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !2365

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !2366

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2343
  %159 = select i1 %110, i1 true, i1 %127, !dbg !2370
  br i1 %159, label %176, label %160, !dbg !2370

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !2372
  br i1 %161, label %162, label %164, !dbg !2376

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2372
  store i8 39, ptr %163, align 1, !dbg !2372, !tbaa !888
  br label %164, !dbg !2372

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !2376
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !2187, metadata !DIExpression()), !dbg !2247
  %166 = icmp ult i64 %165, %129, !dbg !2377
  br i1 %166, label %167, label %169, !dbg !2380

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !2377
  store i8 36, ptr %168, align 1, !dbg !2377, !tbaa !888
  br label %169, !dbg !2377

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !2380
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !2187, metadata !DIExpression()), !dbg !2247
  %171 = icmp ult i64 %170, %129, !dbg !2381
  br i1 %171, label %172, label %174, !dbg !2384

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !2381
  store i8 39, ptr %173, align 1, !dbg !2381, !tbaa !888
  br label %174, !dbg !2381

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !2384
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2247
  br label %176, !dbg !2385

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !2247
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !2187, metadata !DIExpression()), !dbg !2247
  %179 = icmp ult i64 %177, %129, !dbg !2386
  br i1 %179, label %180, label %182, !dbg !2389

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !2386
  store i8 92, ptr %181, align 1, !dbg !2386, !tbaa !888
  br label %182, !dbg !2386

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !2389
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !2187, metadata !DIExpression()), !dbg !2247
  br i1 %110, label %184, label %476, !dbg !2390

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !2392
  %186 = icmp ult i64 %185, %152, !dbg !2393
  br i1 %186, label %187, label %433, !dbg !2394

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !2395
  %189 = load i8, ptr %188, align 1, !dbg !2395, !tbaa !888
  %190 = add i8 %189, -48, !dbg !2396
  %191 = icmp ult i8 %190, 10, !dbg !2396
  br i1 %191, label %192, label %433, !dbg !2396

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !2397
  br i1 %193, label %194, label %196, !dbg !2401

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !2397
  store i8 48, ptr %195, align 1, !dbg !2397, !tbaa !888
  br label %196, !dbg !2397

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !2401
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2187, metadata !DIExpression()), !dbg !2247
  %198 = icmp ult i64 %197, %129, !dbg !2402
  br i1 %198, label %199, label %201, !dbg !2405

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !2402
  store i8 48, ptr %200, align 1, !dbg !2402, !tbaa !888
  br label %201, !dbg !2402

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !2405
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !2187, metadata !DIExpression()), !dbg !2247
  br label %433, !dbg !2406

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !2407

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !2408

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !2409

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !2411

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !2413
  %209 = icmp ult i64 %208, %152, !dbg !2414
  br i1 %209, label %210, label %433, !dbg !2415

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !2416
  %212 = load i8, ptr %211, align 1, !dbg !2416, !tbaa !888
  %213 = icmp eq i8 %212, 63, !dbg !2417
  br i1 %213, label %214, label %433, !dbg !2418

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !2419
  %216 = load i8, ptr %215, align 1, !dbg !2419, !tbaa !888
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
  ], !dbg !2420

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !2421

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !2202, metadata !DIExpression()), !dbg !2334
  %219 = icmp ult i64 %123, %129, !dbg !2423
  br i1 %219, label %220, label %222, !dbg !2426

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2423
  store i8 63, ptr %221, align 1, !dbg !2423, !tbaa !888
  br label %222, !dbg !2423

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !2426
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !2187, metadata !DIExpression()), !dbg !2247
  %224 = icmp ult i64 %223, %129, !dbg !2427
  br i1 %224, label %225, label %227, !dbg !2430

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !2427
  store i8 34, ptr %226, align 1, !dbg !2427, !tbaa !888
  br label %227, !dbg !2427

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !2430
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !2187, metadata !DIExpression()), !dbg !2247
  %229 = icmp ult i64 %228, %129, !dbg !2431
  br i1 %229, label %230, label %232, !dbg !2434

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !2431
  store i8 34, ptr %231, align 1, !dbg !2431, !tbaa !888
  br label %232, !dbg !2431

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !2434
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !2187, metadata !DIExpression()), !dbg !2247
  %234 = icmp ult i64 %233, %129, !dbg !2435
  br i1 %234, label %235, label %237, !dbg !2438

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !2435
  store i8 63, ptr %236, align 1, !dbg !2435, !tbaa !888
  br label %237, !dbg !2435

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !2438
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !2187, metadata !DIExpression()), !dbg !2247
  br label %433, !dbg !2439

239:                                              ; preds = %151
  br label %249, !dbg !2440

240:                                              ; preds = %151
  br label %249, !dbg !2441

241:                                              ; preds = %151
  br label %247, !dbg !2442

242:                                              ; preds = %151
  br label %247, !dbg !2443

243:                                              ; preds = %151
  br label %249, !dbg !2444

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !2445

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !2446

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !2449

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !2451
  call void @llvm.dbg.label(metadata !2210), !dbg !2452
  br i1 %118, label %.loopexit8, label %249, !dbg !2453

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !2451
  call void @llvm.dbg.label(metadata !2213), !dbg !2455
  br i1 %108, label %487, label %444, !dbg !2456

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !2457

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !2458, !tbaa !888
  %254 = icmp eq i8 %253, 0, !dbg !2460
  br i1 %254, label %255, label %433, !dbg !2461

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !2462
  br i1 %256, label %257, label %433, !dbg !2464

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2208, metadata !DIExpression()), !dbg !2343
  br label %258, !dbg !2465

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2343
  br i1 %115, label %260, label %433, !dbg !2466

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !2468

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2208, metadata !DIExpression()), !dbg !2343
  br i1 %115, label %262, label %433, !dbg !2469

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !2470

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !2473
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !2475
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !2475
  %268 = select i1 %266, i64 %129, i64 0, !dbg !2475
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !2188, metadata !DIExpression()), !dbg !2247
  %269 = icmp ult i64 %123, %268, !dbg !2476
  br i1 %269, label %270, label %272, !dbg !2479

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !2476
  store i8 39, ptr %271, align 1, !dbg !2476, !tbaa !888
  br label %272, !dbg !2476

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !2479
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !2187, metadata !DIExpression()), !dbg !2247
  %274 = icmp ult i64 %273, %268, !dbg !2480
  br i1 %274, label %275, label %277, !dbg !2483

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !2480
  store i8 92, ptr %276, align 1, !dbg !2480, !tbaa !888
  br label %277, !dbg !2480

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !2483
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !2187, metadata !DIExpression()), !dbg !2247
  %279 = icmp ult i64 %278, %268, !dbg !2484
  br i1 %279, label %280, label %282, !dbg !2487

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !2484
  store i8 39, ptr %281, align 1, !dbg !2484, !tbaa !888
  br label %282, !dbg !2484

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !2487
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2247
  br label %433, !dbg !2488

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !2489

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2214, metadata !DIExpression()), !dbg !2490
  %286 = tail call ptr @__ctype_b_loc() #43, !dbg !2491
  %287 = load ptr, ptr %286, align 8, !dbg !2491, !tbaa !819
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !2491
  %290 = load i16, ptr %289, align 2, !dbg !2491, !tbaa !920
  %291 = and i16 %290, 16384, !dbg !2491
  %292 = icmp ne i16 %291, 0, !dbg !2493
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !2216, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2490
  br label %334, !dbg !2494

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !2495
  call void @llvm.dbg.value(metadata ptr %14, metadata !2272, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %14, metadata !2280, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i64 8, metadata !2284, metadata !DIExpression()), !dbg !2498
  store i64 0, ptr %14, align 8, !dbg !2500
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2214, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2216, metadata !DIExpression()), !dbg !2490
  %294 = icmp eq i64 %152, -1, !dbg !2501
  br i1 %294, label %295, label %297, !dbg !2503

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2504
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !2180, metadata !DIExpression()), !dbg !2247
  br label %297, !dbg !2505

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !2180, metadata !DIExpression()), !dbg !2247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !2506
  %299 = sub i64 %298, %128, !dbg !2507
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #40, !dbg !2508
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2224, metadata !DIExpression()), !dbg !2246
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !2509

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2214, metadata !DIExpression()), !dbg !2490
  %302 = icmp ult i64 %128, %298, !dbg !2510
  br i1 %302, label %.preheader5, label %329, !dbg !2512

.preheader5:                                      ; preds = %301
  br label %304, !dbg !2513

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2216, metadata !DIExpression()), !dbg !2490
  br label %329, !dbg !2514

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !2214, metadata !DIExpression()), !dbg !2490
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !2516
  %308 = load i8, ptr %307, align 1, !dbg !2516, !tbaa !888
  %309 = icmp eq i8 %308, 0, !dbg !2512
  br i1 %309, label %.loopexit6, label %310, !dbg !2513

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !2517
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !2214, metadata !DIExpression()), !dbg !2490
  %312 = add i64 %311, %128, !dbg !2518
  %313 = icmp eq i64 %311, %299, !dbg !2510
  br i1 %313, label %.loopexit6, label %304, !dbg !2512, !llvm.loop !2519

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2225, metadata !DIExpression()), !dbg !2520
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !2521
  %317 = and i1 %316, %109, !dbg !2521
  br i1 %317, label %.preheader3, label %325, !dbg !2521

.preheader3:                                      ; preds = %314
  br label %318, !dbg !2522

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !2225, metadata !DIExpression()), !dbg !2520
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !2523
  %321 = load i8, ptr %320, align 1, !dbg !2523, !tbaa !888
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !2525

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !2526
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !2225, metadata !DIExpression()), !dbg !2520
  %324 = icmp eq i64 %323, %300, !dbg !2527
  br i1 %324, label %.loopexit4, label %318, !dbg !2522, !llvm.loop !2528

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !2530

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !2530, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %326, metadata !2532, metadata !DIExpression()), !dbg !2540
  %327 = call i32 @iswprint(i32 noundef %326) #40, !dbg !2542
  %328 = icmp ne i32 %327, 0, !dbg !2543
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2214, metadata !DIExpression()), !dbg !2490
  br label %329, !dbg !2544

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !2545

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !2214, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2545
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2546
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2214, metadata !DIExpression()), !dbg !2490
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !2545
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !2546
  call void @llvm.dbg.label(metadata !2238), !dbg !2547
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !2548
  br label %624, !dbg !2548

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !2343
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !2550
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2216, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !2214, metadata !DIExpression()), !dbg !2490
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !2180, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !2208, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2343
  %338 = icmp ult i64 %336, 2, !dbg !2551
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !2552
  br i1 %340, label %433, label %341, !dbg !2552

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !2553
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !2233, metadata !DIExpression()), !dbg !2554
  br label %343, !dbg !2555

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !2247
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !2334
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !2187, metadata !DIExpression()), !dbg !2247
  br i1 %339, label %394, label %350, !dbg !2556

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !2561

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2343
  %352 = select i1 %110, i1 true, i1 %345, !dbg !2564
  br i1 %352, label %369, label %353, !dbg !2564

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !2566
  br i1 %354, label %355, label %357, !dbg !2570

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2566
  store i8 39, ptr %356, align 1, !dbg !2566, !tbaa !888
  br label %357, !dbg !2566

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !2570
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !2187, metadata !DIExpression()), !dbg !2247
  %359 = icmp ult i64 %358, %129, !dbg !2571
  br i1 %359, label %360, label %362, !dbg !2574

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !2571
  store i8 36, ptr %361, align 1, !dbg !2571, !tbaa !888
  br label %362, !dbg !2571

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !2574
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2187, metadata !DIExpression()), !dbg !2247
  %364 = icmp ult i64 %363, %129, !dbg !2575
  br i1 %364, label %365, label %367, !dbg !2578

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !2575
  store i8 39, ptr %366, align 1, !dbg !2575, !tbaa !888
  br label %367, !dbg !2575

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !2578
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2247
  br label %369, !dbg !2579

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !2247
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !2187, metadata !DIExpression()), !dbg !2247
  %372 = icmp ult i64 %370, %129, !dbg !2580
  br i1 %372, label %373, label %375, !dbg !2583

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !2580
  store i8 92, ptr %374, align 1, !dbg !2580, !tbaa !888
  br label %375, !dbg !2580

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !2583
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !2187, metadata !DIExpression()), !dbg !2247
  %377 = icmp ult i64 %376, %129, !dbg !2584
  br i1 %377, label %378, label %382, !dbg !2587

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !2584
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !2584
  store i8 %380, ptr %381, align 1, !dbg !2584, !tbaa !888
  br label %382, !dbg !2584

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !2587
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !2187, metadata !DIExpression()), !dbg !2247
  %384 = icmp ult i64 %383, %129, !dbg !2588
  br i1 %384, label %385, label %390, !dbg !2591

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !2588
  %388 = or disjoint i8 %387, 48, !dbg !2588
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !2588
  store i8 %388, ptr %389, align 1, !dbg !2588, !tbaa !888
  br label %390, !dbg !2588

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !2591
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2187, metadata !DIExpression()), !dbg !2247
  %392 = and i8 %349, 7, !dbg !2592
  %393 = or disjoint i8 %392, 48, !dbg !2593
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !2209, metadata !DIExpression()), !dbg !2343
  br label %401, !dbg !2594

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !2595

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !2596
  br i1 %396, label %397, label %399, !dbg !2601

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !2596
  store i8 92, ptr %398, align 1, !dbg !2596, !tbaa !888
  br label %399, !dbg !2596

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !2601
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2204, metadata !DIExpression()), !dbg !2343
  br label %401, !dbg !2602

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !2247
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !2187, metadata !DIExpression()), !dbg !2247
  %407 = add i64 %346, 1, !dbg !2603
  %408 = icmp ugt i64 %342, %407, !dbg !2605
  br i1 %408, label %409, label %.loopexit2, !dbg !2606

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !2607
  %411 = select i1 %410, i1 true, i1 %405, !dbg !2607
  br i1 %411, label %423, label %412, !dbg !2607

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !2610
  br i1 %413, label %414, label %416, !dbg !2614

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !2610
  store i8 39, ptr %415, align 1, !dbg !2610, !tbaa !888
  br label %416, !dbg !2610

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !2614
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !2187, metadata !DIExpression()), !dbg !2247
  %418 = icmp ult i64 %417, %129, !dbg !2615
  br i1 %418, label %419, label %421, !dbg !2618

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !2615
  store i8 39, ptr %420, align 1, !dbg !2615, !tbaa !888
  br label %421, !dbg !2615

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !2618
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2247
  br label %423, !dbg !2619

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !2620
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !2187, metadata !DIExpression()), !dbg !2247
  %426 = icmp ult i64 %424, %129, !dbg !2621
  br i1 %426, label %427, label %429, !dbg !2624

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !2621
  store i8 %406, ptr %428, align 1, !dbg !2621, !tbaa !888
  br label %429, !dbg !2621

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !2624
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !2202, metadata !DIExpression()), !dbg !2334
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !2625
  %432 = load i8, ptr %431, align 1, !dbg !2625, !tbaa !888
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !2209, metadata !DIExpression()), !dbg !2343
  br label %343, !dbg !2626, !llvm.loop !2627

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !2630
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !2247
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !2251
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !2334
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !2343
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2204, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !2180, metadata !DIExpression()), !dbg !2247
  br i1 %111, label %455, label %444, !dbg !2631

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
  br i1 %120, label %456, label %476, !dbg !2633

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !2634

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
  %467 = lshr i8 %458, 5, !dbg !2635
  %468 = zext nneg i8 %467 to i64, !dbg !2635
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !2636
  %470 = load i32, ptr %469, align 4, !dbg !2636, !tbaa !879
  %471 = and i8 %458, 31, !dbg !2637
  %472 = zext nneg i8 %471 to i32, !dbg !2637
  %473 = shl nuw i32 1, %472, !dbg !2638
  %474 = and i32 %470, %473, !dbg !2638
  %475 = icmp eq i32 %474, 0, !dbg !2638
  br i1 %475, label %476, label %487, !dbg !2639

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
  br i1 %153, label %487, label %523, !dbg !2640

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !2630
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !2247
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !2251
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !2641
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !2343
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2180, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.label(metadata !2236), !dbg !2642
  br i1 %109, label %.loopexit8, label %497, !dbg !2643

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2207, metadata !DIExpression()), !dbg !2343
  %498 = select i1 %110, i1 true, i1 %492, !dbg !2645
  br i1 %498, label %515, label %499, !dbg !2645

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !2647
  br i1 %500, label %501, label %503, !dbg !2651

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !2647
  store i8 39, ptr %502, align 1, !dbg !2647, !tbaa !888
  br label %503, !dbg !2647

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !2651
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !2187, metadata !DIExpression()), !dbg !2247
  %505 = icmp ult i64 %504, %496, !dbg !2652
  br i1 %505, label %506, label %508, !dbg !2655

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !2652
  store i8 36, ptr %507, align 1, !dbg !2652, !tbaa !888
  br label %508, !dbg !2652

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !2655
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !2187, metadata !DIExpression()), !dbg !2247
  %510 = icmp ult i64 %509, %496, !dbg !2656
  br i1 %510, label %511, label %513, !dbg !2659

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !2656
  store i8 39, ptr %512, align 1, !dbg !2656, !tbaa !888
  br label %513, !dbg !2656

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2196, metadata !DIExpression()), !dbg !2247
  br label %515, !dbg !2660

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !2343
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !2187, metadata !DIExpression()), !dbg !2247
  %518 = icmp ult i64 %516, %496, !dbg !2661
  br i1 %518, label %519, label %521, !dbg !2664

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !2661
  store i8 92, ptr %520, align 1, !dbg !2661, !tbaa !888
  br label %521, !dbg !2661

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !2664
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !2180, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.label(metadata !2237), !dbg !2665
  br label %547, !dbg !2666

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !2247
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !2343
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !2334
  br label %523, !dbg !2666

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !2630
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !2247
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !2251
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !2641
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !2669
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !2209, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2208, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2207, metadata !DIExpression()), !dbg !2343
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !2180, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.label(metadata !2237), !dbg !2665
  %534 = xor i1 %528, true, !dbg !2666
  %535 = select i1 %534, i1 true, i1 %530, !dbg !2666
  br i1 %535, label %547, label %536, !dbg !2666

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !2670
  br i1 %537, label %538, label %540, !dbg !2674

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !2670
  store i8 39, ptr %539, align 1, !dbg !2670, !tbaa !888
  br label %540, !dbg !2670

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !2674
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !2187, metadata !DIExpression()), !dbg !2247
  %542 = icmp ult i64 %541, %533, !dbg !2675
  br i1 %542, label %543, label %545, !dbg !2678

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !2675
  store i8 39, ptr %544, align 1, !dbg !2675, !tbaa !888
  br label %545, !dbg !2675

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !2678
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2196, metadata !DIExpression()), !dbg !2247
  br label %547, !dbg !2679

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !2343
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !2187, metadata !DIExpression()), !dbg !2247
  %557 = icmp ult i64 %555, %548, !dbg !2680
  br i1 %557, label %558, label %560, !dbg !2683

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !2680
  store i8 %549, ptr %559, align 1, !dbg !2680, !tbaa !888
  br label %560, !dbg !2680

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !2683
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2187, metadata !DIExpression()), !dbg !2247
  %562 = select i1 %550, i1 %126, i1 false, !dbg !2684
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2194, metadata !DIExpression()), !dbg !2247
  br label %563, !dbg !2685

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !2630
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !2247
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !2251
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !2641
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !2202, metadata !DIExpression()), !dbg !2334
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2196, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2194, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2180, metadata !DIExpression()), !dbg !2247
  %572 = add i64 %570, 1, !dbg !2686
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !2202, metadata !DIExpression()), !dbg !2334
  br label %121, !dbg !2687, !llvm.loop !2688

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !2322
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !2251
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !2178, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2194, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2193, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !2188, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !2187, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !2180, metadata !DIExpression()), !dbg !2247
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !2690
  %575 = xor i1 %109, true, !dbg !2692
  %576 = or i1 %574, %575, !dbg !2692
  %577 = or i1 %576, %110, !dbg !2692
  br i1 %577, label %578, label %.loopexit13, !dbg !2692

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !2693
  %580 = xor i1 %.lcssa38, true, !dbg !2693
  %581 = select i1 %579, i1 true, i1 %580, !dbg !2693
  br i1 %581, label %589, label %582, !dbg !2693

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !2695

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !2251
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !2697
  br label %638, !dbg !2699

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !2700
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !2702
  br i1 %588, label %27, label %589, !dbg !2702

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !2247
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !2322
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !2703
  %592 = or i1 %591, %590, !dbg !2705
  br i1 %592, label %608, label %593, !dbg !2705

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !2189, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !2187, metadata !DIExpression()), !dbg !2247
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !2706, !tbaa !888
  %595 = icmp eq i8 %594, 0, !dbg !2709
  br i1 %595, label %608, label %.preheader, !dbg !2709

.preheader:                                       ; preds = %593
  br label %596, !dbg !2709

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !2189, metadata !DIExpression()), !dbg !2247
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2187, metadata !DIExpression()), !dbg !2247
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !2710
  br i1 %600, label %601, label %603, !dbg !2713

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !2710
  store i8 %597, ptr %602, align 1, !dbg !2710, !tbaa !888
  br label %603, !dbg !2710

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !2713
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2187, metadata !DIExpression()), !dbg !2247
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !2714
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !2189, metadata !DIExpression()), !dbg !2247
  %606 = load i8, ptr %605, align 1, !dbg !2706, !tbaa !888
  %607 = icmp eq i8 %606, 0, !dbg !2709
  br i1 %607, label %.loopexit, label %596, !dbg !2709, !llvm.loop !2715

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !2713
  br label %608, !dbg !2717

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !2322
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2187, metadata !DIExpression()), !dbg !2247
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !2717
  br i1 %610, label %611, label %638, !dbg !2719

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !2720
  store i8 0, ptr %612, align 1, !dbg !2721, !tbaa !888
  br label %638, !dbg !2720

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !2238), !dbg !2547
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !2722
  br i1 %614, label %624, label %630, !dbg !2548

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !2343
  br label %615, !dbg !2722

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !2722

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !2722

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !2238), !dbg !2547
  %622 = icmp eq i32 %616, 2, !dbg !2722
  %623 = select i1 %619, i32 4, i32 2, !dbg !2548
  br i1 %622, label %624, label %630, !dbg !2548

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !2548

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !2349
  br label %630, !dbg !2723

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !2181, metadata !DIExpression()), !dbg !2247
  %636 = and i32 %5, -3, !dbg !2723
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !2724
  br label %638, !dbg !2725

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !2726
}

; Function Attrs: nounwind
declare !dbg !2727 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2729 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2731 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2735, metadata !DIExpression()), !dbg !2738
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2736, metadata !DIExpression()), !dbg !2738
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2737, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr null, metadata !2745, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata ptr %2, metadata !2746, metadata !DIExpression()), !dbg !2752
  %4 = icmp eq ptr %2, null, !dbg !2754
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2754
  call void @llvm.dbg.value(metadata ptr %5, metadata !2747, metadata !DIExpression()), !dbg !2752
  %6 = tail call ptr @__errno_location() #43, !dbg !2755
  %7 = load i32, ptr %6, align 4, !dbg !2755, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %7, metadata !2748, metadata !DIExpression()), !dbg !2752
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2756
  %9 = load i32, ptr %8, align 4, !dbg !2756, !tbaa !2121
  %10 = or i32 %9, 1, !dbg !2757
  call void @llvm.dbg.value(metadata i32 %10, metadata !2749, metadata !DIExpression()), !dbg !2752
  %11 = load i32, ptr %5, align 8, !dbg !2758, !tbaa !2071
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2759
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2760
  %14 = load ptr, ptr %13, align 8, !dbg !2760, !tbaa !2142
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2761
  %16 = load ptr, ptr %15, align 8, !dbg !2761, !tbaa !2145
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2762
  %18 = add i64 %17, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %18, metadata !2750, metadata !DIExpression()), !dbg !2752
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #44, !dbg !2764
  call void @llvm.dbg.value(metadata ptr %19, metadata !2751, metadata !DIExpression()), !dbg !2752
  %20 = load i32, ptr %5, align 8, !dbg !2765, !tbaa !2071
  %21 = load ptr, ptr %13, align 8, !dbg !2766, !tbaa !2142
  %22 = load ptr, ptr %15, align 8, !dbg !2767, !tbaa !2145
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2768
  store i32 %7, ptr %6, align 4, !dbg !2769, !tbaa !879
  ret ptr %19, !dbg !2770
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2740 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2739, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2744, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2745, metadata !DIExpression()), !dbg !2771
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2746, metadata !DIExpression()), !dbg !2771
  %5 = icmp eq ptr %3, null, !dbg !2772
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2772
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2747, metadata !DIExpression()), !dbg !2771
  %7 = tail call ptr @__errno_location() #43, !dbg !2773
  %8 = load i32, ptr %7, align 4, !dbg !2773, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !2748, metadata !DIExpression()), !dbg !2771
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2774
  %10 = load i32, ptr %9, align 4, !dbg !2774, !tbaa !2121
  %11 = icmp eq ptr %2, null, !dbg !2775
  %12 = zext i1 %11 to i32, !dbg !2775
  %13 = or i32 %10, %12, !dbg !2776
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !2749, metadata !DIExpression()), !dbg !2771
  %14 = load i32, ptr %6, align 8, !dbg !2777, !tbaa !2071
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2778
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2779
  %17 = load ptr, ptr %16, align 8, !dbg !2779, !tbaa !2142
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2780
  %19 = load ptr, ptr %18, align 8, !dbg !2780, !tbaa !2145
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2781
  %21 = add i64 %20, 1, !dbg !2782
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2750, metadata !DIExpression()), !dbg !2771
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #44, !dbg !2783
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !2751, metadata !DIExpression()), !dbg !2771
  %23 = load i32, ptr %6, align 8, !dbg !2784, !tbaa !2071
  %24 = load ptr, ptr %16, align 8, !dbg !2785, !tbaa !2142
  %25 = load ptr, ptr %18, align 8, !dbg !2786, !tbaa !2145
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2787
  store i32 %8, ptr %7, align 4, !dbg !2788, !tbaa !879
  br i1 %11, label %28, label %27, !dbg !2789

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2790, !tbaa !2792
  br label %28, !dbg !2793

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2794
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2795 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2800, !tbaa !819
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2797, metadata !DIExpression()), !dbg !2801
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2798, metadata !DIExpression()), !dbg !2802
  %2 = load i32, ptr @nslots, align 4, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2798, metadata !DIExpression()), !dbg !2802
  %3 = icmp sgt i32 %2, 1, !dbg !2803
  br i1 %3, label %4, label %6, !dbg !2805

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !2803
  br label %10, !dbg !2805

.loopexit:                                        ; preds = %10
  br label %6, !dbg !2806

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2806
  %8 = load ptr, ptr %7, align 8, !dbg !2806, !tbaa !2808
  %9 = icmp eq ptr %8, @slot0, !dbg !2810
  br i1 %9, label %17, label %16, !dbg !2811

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2798, metadata !DIExpression()), !dbg !2802
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2812
  %13 = load ptr, ptr %12, align 8, !dbg !2812, !tbaa !2808
  tail call void @free(ptr noundef %13) #40, !dbg !2813
  %14 = add nuw nsw i64 %11, 1, !dbg !2814
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2798, metadata !DIExpression()), !dbg !2802
  %15 = icmp eq i64 %14, %5, !dbg !2803
  br i1 %15, label %.loopexit, label %10, !dbg !2805, !llvm.loop !2815

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !2817
  store i64 256, ptr @slotvec0, align 8, !dbg !2819, !tbaa !2820
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2821, !tbaa !2808
  br label %17, !dbg !2822

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2823
  br i1 %18, label %20, label %19, !dbg !2825

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !2826
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2828, !tbaa !819
  br label %20, !dbg !2829

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2830, !tbaa !879
  ret void, !dbg !2831
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2832 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2834, metadata !DIExpression()), !dbg !2836
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2835, metadata !DIExpression()), !dbg !2836
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2837
  ret ptr %3, !dbg !2838
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2839 {
  %5 = alloca i64, align 8, !DIAssignID !2859
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2853, metadata !DIExpression(), metadata !2859, metadata ptr %5, metadata !DIExpression()), !dbg !2860
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2843, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2844, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2845, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2846, metadata !DIExpression()), !dbg !2861
  %6 = tail call ptr @__errno_location() #43, !dbg !2862
  %7 = load i32, ptr %6, align 4, !dbg !2862, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !2847, metadata !DIExpression()), !dbg !2861
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2863, !tbaa !819
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2848, metadata !DIExpression()), !dbg !2861
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !2849, metadata !DIExpression()), !dbg !2861
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2864
  br i1 %9, label %10, label %11, !dbg !2864

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !2866
  unreachable, !dbg !2866

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2867, !tbaa !879
  %13 = icmp sgt i32 %12, %0, !dbg !2868
  br i1 %13, label %32, label %14, !dbg !2869

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2870
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !2850, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2860
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !2871
  %16 = sext i32 %12 to i64, !dbg !2872
  store i64 %16, ptr %5, align 8, !dbg !2873, !tbaa !2792, !DIAssignID !2874
  call void @llvm.dbg.assign(metadata i64 %16, metadata !2853, metadata !DIExpression(), metadata !2874, metadata ptr %5, metadata !DIExpression()), !dbg !2860
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2875
  %18 = add nuw nsw i32 %0, 1, !dbg !2876
  %19 = sub i32 %18, %12, !dbg !2877
  %20 = sext i32 %19 to i64, !dbg !2878
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !2879
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2848, metadata !DIExpression()), !dbg !2861
  store ptr %21, ptr @slotvec, align 8, !dbg !2880, !tbaa !819
  br i1 %15, label %22, label %23, !dbg !2881

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2882, !tbaa.struct !2884
  br label %23, !dbg !2885

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2886, !tbaa !879
  %25 = sext i32 %24 to i64, !dbg !2887
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2887
  %27 = load i64, ptr %5, align 8, !dbg !2888, !tbaa !2792
  %28 = sub nsw i64 %27, %25, !dbg !2889
  %29 = shl i64 %28, 4, !dbg !2890
  call void @llvm.dbg.value(metadata ptr %26, metadata !2280, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i32 0, metadata !2283, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %29, metadata !2284, metadata !DIExpression()), !dbg !2891
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !2893
  %30 = load i64, ptr %5, align 8, !dbg !2894, !tbaa !2792
  %31 = trunc i64 %30 to i32, !dbg !2894
  store i32 %31, ptr @nslots, align 4, !dbg !2895, !tbaa !879
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !2896
  br label %32, !dbg !2897

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2861
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !2848, metadata !DIExpression()), !dbg !2861
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2898
  %36 = load i64, ptr %35, align 8, !dbg !2899, !tbaa !2820
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2854, metadata !DIExpression()), !dbg !2900
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2901
  %38 = load ptr, ptr %37, align 8, !dbg !2901, !tbaa !2808
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2856, metadata !DIExpression()), !dbg !2900
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2902
  %40 = load i32, ptr %39, align 4, !dbg !2902, !tbaa !2121
  %41 = or i32 %40, 1, !dbg !2903
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !2857, metadata !DIExpression()), !dbg !2900
  %42 = load i32, ptr %3, align 8, !dbg !2904, !tbaa !2071
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2905
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2906
  %45 = load ptr, ptr %44, align 8, !dbg !2906, !tbaa !2142
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2907
  %47 = load ptr, ptr %46, align 8, !dbg !2907, !tbaa !2145
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2908
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2858, metadata !DIExpression()), !dbg !2900
  %49 = icmp ugt i64 %36, %48, !dbg !2909
  br i1 %49, label %60, label %50, !dbg !2911

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !2854, metadata !DIExpression()), !dbg !2900
  store i64 %51, ptr %35, align 8, !dbg !2914, !tbaa !2820
  %52 = icmp eq ptr %38, @slot0, !dbg !2915
  br i1 %52, label %54, label %53, !dbg !2917

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !2918
  br label %54, !dbg !2918

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #44, !dbg !2919
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !2856, metadata !DIExpression()), !dbg !2900
  store ptr %55, ptr %37, align 8, !dbg !2920, !tbaa !2808
  %56 = load i32, ptr %3, align 8, !dbg !2921, !tbaa !2071
  %57 = load ptr, ptr %44, align 8, !dbg !2922, !tbaa !2142
  %58 = load ptr, ptr %46, align 8, !dbg !2923, !tbaa !2145
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2924
  br label %60, !dbg !2925

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2900
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2856, metadata !DIExpression()), !dbg !2900
  store i32 %7, ptr %6, align 4, !dbg !2926, !tbaa !879
  ret ptr %61, !dbg !2927
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2928 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2932, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2933, metadata !DIExpression()), !dbg !2935
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2934, metadata !DIExpression()), !dbg !2935
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2936
  ret ptr %4, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2938 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2940, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.value(metadata i32 0, metadata !2834, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata ptr %0, metadata !2835, metadata !DIExpression()), !dbg !2942
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2944
  ret ptr %2, !dbg !2945
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2946 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2950, metadata !DIExpression()), !dbg !2952
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2951, metadata !DIExpression()), !dbg !2952
  call void @llvm.dbg.value(metadata i32 0, metadata !2932, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata ptr %0, metadata !2933, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %1, metadata !2934, metadata !DIExpression()), !dbg !2953
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2955
  ret ptr %3, !dbg !2956
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2957 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !2965
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2964, metadata !DIExpression(), metadata !2965, metadata ptr %4, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2961, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2962, metadata !DIExpression()), !dbg !2966
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2963, metadata !DIExpression()), !dbg !2966
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !2967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968), !dbg !2971
  call void @llvm.dbg.value(metadata i32 %1, metadata !2972, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2977, metadata !DIExpression()), !dbg !2980
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2980, !alias.scope !2968, !DIAssignID !2981
  call void @llvm.dbg.assign(metadata i8 0, metadata !2964, metadata !DIExpression(), metadata !2981, metadata ptr %4, metadata !DIExpression()), !dbg !2966
  %5 = icmp eq i32 %1, 10, !dbg !2982
  br i1 %5, label %6, label %7, !dbg !2984

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2985, !noalias !2968
  unreachable, !dbg !2985

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2986, !tbaa !2071, !alias.scope !2968, !DIAssignID !2987
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2964, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !2987, metadata ptr %4, metadata !DIExpression()), !dbg !2966
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2988
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !2989
  ret ptr %8, !dbg !2990
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2991 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2999, metadata !DIExpression(), metadata !3000, metadata ptr %5, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2995, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2996, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2997, metadata !DIExpression()), !dbg !3001
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2998, metadata !DIExpression()), !dbg !3001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3003), !dbg !3006
  call void @llvm.dbg.value(metadata i32 %1, metadata !2972, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2977, metadata !DIExpression()), !dbg !3009
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3009, !alias.scope !3003, !DIAssignID !3010
  call void @llvm.dbg.assign(metadata i8 0, metadata !2999, metadata !DIExpression(), metadata !3010, metadata ptr %5, metadata !DIExpression()), !dbg !3001
  %6 = icmp eq i32 %1, 10, !dbg !3011
  br i1 %6, label %7, label %8, !dbg !3012

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3013, !noalias !3003
  unreachable, !dbg !3013

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3014, !tbaa !2071, !alias.scope !3003, !DIAssignID !3015
  call void @llvm.dbg.assign(metadata i32 %1, metadata !2999, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3015, metadata ptr %5, metadata !DIExpression()), !dbg !3001
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3016
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3017
  ret ptr %9, !dbg !3018
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3019 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3025
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3023, metadata !DIExpression()), !dbg !3026
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3024, metadata !DIExpression()), !dbg !3026
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2964, metadata !DIExpression(), metadata !3025, metadata ptr %3, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !2961, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 %0, metadata !2962, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %1, metadata !2963, metadata !DIExpression()), !dbg !3027
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3029
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %0, metadata !2972, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2977, metadata !DIExpression()), !dbg !3036
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3036, !alias.scope !3030, !DIAssignID !3037
  call void @llvm.dbg.assign(metadata i8 0, metadata !2964, metadata !DIExpression(), metadata !3037, metadata ptr %3, metadata !DIExpression()), !dbg !3027
  %4 = icmp eq i32 %0, 10, !dbg !3038
  br i1 %4, label %5, label %6, !dbg !3039

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3040, !noalias !3030
  unreachable, !dbg !3040

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3041, !tbaa !2071, !alias.scope !3030, !DIAssignID !3042
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2964, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3042, metadata ptr %3, metadata !DIExpression()), !dbg !3027
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3043
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3044
  ret ptr %7, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3046 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3053
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3050, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3051, metadata !DIExpression()), !dbg !3054
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2999, metadata !DIExpression(), metadata !3053, metadata ptr %4, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 0, metadata !2995, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata ptr %1, metadata !2997, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()), !dbg !3055
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3057
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3058), !dbg !3061
  call void @llvm.dbg.value(metadata i32 %0, metadata !2972, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2977, metadata !DIExpression()), !dbg !3064
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3064, !alias.scope !3058, !DIAssignID !3065
  call void @llvm.dbg.assign(metadata i8 0, metadata !2999, metadata !DIExpression(), metadata !3065, metadata ptr %4, metadata !DIExpression()), !dbg !3055
  %5 = icmp eq i32 %0, 10, !dbg !3066
  br i1 %5, label %6, label %7, !dbg !3067

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3068, !noalias !3058
  unreachable, !dbg !3068

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3069, !tbaa !2071, !alias.scope !3058, !DIAssignID !3070
  call void @llvm.dbg.assign(metadata i32 %0, metadata !2999, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3070, metadata ptr %4, metadata !DIExpression()), !dbg !3055
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3071
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3072
  ret ptr %8, !dbg !3073
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3074 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3082, metadata ptr %4, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3080, metadata !DIExpression()), !dbg !3083
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3085, !tbaa.struct !3086, !DIAssignID !3087
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3087, metadata ptr %4, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2088, metadata !DIExpression()), !dbg !3088
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2089, metadata !DIExpression()), !dbg !3088
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2090, metadata !DIExpression()), !dbg !3088
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2091, metadata !DIExpression()), !dbg !3088
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3090
  %6 = lshr i8 %2, 5, !dbg !3091
  %7 = zext nneg i8 %6 to i64, !dbg !3091
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3092
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2092, metadata !DIExpression()), !dbg !3088
  %9 = and i8 %2, 31, !dbg !3093
  %10 = zext nneg i8 %9 to i32, !dbg !3093
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2094, metadata !DIExpression()), !dbg !3088
  %11 = load i32, ptr %8, align 4, !dbg !3094, !tbaa !879
  %12 = lshr i32 %11, %10, !dbg !3095
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2095, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3088
  %13 = and i32 %12, 1, !dbg !3096
  %14 = xor i32 %13, 1, !dbg !3096
  %15 = shl nuw i32 %14, %10, !dbg !3097
  %16 = xor i32 %15, %11, !dbg !3098
  store i32 %16, ptr %8, align 4, !dbg !3098, !tbaa !879
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3099
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3100
  ret ptr %17, !dbg !3101
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3102 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3108
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3106, metadata !DIExpression()), !dbg !3109
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3107, metadata !DIExpression()), !dbg !3109
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3108, metadata ptr %3, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i64 -1, metadata !3079, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !3110
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3113, !tbaa.struct !3086, !DIAssignID !3114
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3114, metadata ptr %3, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata ptr %3, metadata !2088, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %1, metadata !2089, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 1, metadata !2090, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8 %1, metadata !2091, metadata !DIExpression()), !dbg !3115
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3117
  %5 = lshr i8 %1, 5, !dbg !3118
  %6 = zext nneg i8 %5 to i64, !dbg !3118
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3119
  call void @llvm.dbg.value(metadata ptr %7, metadata !2092, metadata !DIExpression()), !dbg !3115
  %8 = and i8 %1, 31, !dbg !3120
  %9 = zext nneg i8 %8 to i32, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %9, metadata !2094, metadata !DIExpression()), !dbg !3115
  %10 = load i32, ptr %7, align 4, !dbg !3121, !tbaa !879
  %11 = lshr i32 %10, %9, !dbg !3122
  call void @llvm.dbg.value(metadata i32 %11, metadata !2095, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3115
  %12 = and i32 %11, 1, !dbg !3123
  %13 = xor i32 %12, 1, !dbg !3123
  %14 = shl nuw i32 %13, %9, !dbg !3124
  %15 = xor i32 %14, %10, !dbg !3125
  store i32 %15, ptr %7, align 4, !dbg !3125, !tbaa !879
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3126
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3127
  ret ptr %16, !dbg !3128
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3129 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3132
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3133
  call void @llvm.dbg.value(metadata ptr %0, metadata !3106, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8 58, metadata !3107, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3132, metadata ptr %2, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i64 -1, metadata !3079, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !3136
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3139, !tbaa.struct !3086, !DIAssignID !3140
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3140, metadata ptr %2, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata ptr %2, metadata !2088, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8 58, metadata !2089, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 1, metadata !2090, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i8 58, metadata !2091, metadata !DIExpression()), !dbg !3141
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3143
  call void @llvm.dbg.value(metadata ptr %3, metadata !2092, metadata !DIExpression()), !dbg !3141
  call void @llvm.dbg.value(metadata i32 26, metadata !2094, metadata !DIExpression()), !dbg !3141
  %4 = load i32, ptr %3, align 4, !dbg !3144, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %4, metadata !2095, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3141
  %5 = or i32 %4, 67108864, !dbg !3145
  store i32 %5, ptr %3, align 4, !dbg !3145, !tbaa !879
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3146
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3147
  ret ptr %6, !dbg !3148
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3149 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3153
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3151, metadata !DIExpression()), !dbg !3154
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3153, metadata ptr %3, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %0, metadata !3078, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3079, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !3155
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3158, !tbaa.struct !3086, !DIAssignID !3159
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3081, metadata !DIExpression(), metadata !3159, metadata ptr %3, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata ptr %3, metadata !2088, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8 58, metadata !2089, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 1, metadata !2090, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i8 58, metadata !2091, metadata !DIExpression()), !dbg !3160
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3162
  call void @llvm.dbg.value(metadata ptr %4, metadata !2092, metadata !DIExpression()), !dbg !3160
  call void @llvm.dbg.value(metadata i32 26, metadata !2094, metadata !DIExpression()), !dbg !3160
  %5 = load i32, ptr %4, align 4, !dbg !3163, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %5, metadata !2095, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3160
  %6 = or i32 %5, 67108864, !dbg !3164
  store i32 %6, ptr %4, align 4, !dbg !3164, !tbaa !879
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3165
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3166
  ret ptr %7, !dbg !3167
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3168 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3173, metadata !DIExpression(), metadata !3174, metadata ptr %4, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2977, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3176
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3170, metadata !DIExpression()), !dbg !3175
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3171, metadata !DIExpression()), !dbg !3175
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3172, metadata !DIExpression()), !dbg !3175
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3178
  call void @llvm.dbg.value(metadata i32 %1, metadata !2972, metadata !DIExpression()), !dbg !3179
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3179
  %5 = icmp eq i32 %1, 10, !dbg !3180
  br i1 %5, label %6, label %7, !dbg !3181

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3182, !noalias !3183
  unreachable, !dbg !3182

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2977, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3179
  store i32 %1, ptr %4, align 8, !dbg !3186, !tbaa.struct !3086, !DIAssignID !3187
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3186
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3186
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3173, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3187, metadata ptr %4, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3173, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3188, metadata ptr %8, metadata !DIExpression()), !dbg !3175
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2088, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2089, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2090, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2091, metadata !DIExpression()), !dbg !3189
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3191
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2092, metadata !DIExpression()), !dbg !3189
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2094, metadata !DIExpression()), !dbg !3189
  %10 = load i32, ptr %9, align 4, !dbg !3192, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2095, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3189
  %11 = or i32 %10, 67108864, !dbg !3193
  store i32 %11, ptr %9, align 4, !dbg !3193, !tbaa !879, !DIAssignID !3194
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3173, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3194, metadata ptr %9, metadata !DIExpression()), !dbg !3175
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3195
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3196
  ret ptr %12, !dbg !3197
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3198 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3206
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3202, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3203, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3204, metadata !DIExpression()), !dbg !3207
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3205, metadata !DIExpression()), !dbg !3207
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3206, metadata ptr %5, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %0, metadata !3213, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %1, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %2, metadata !3215, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %3, metadata !3216, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i64 -1, metadata !3217, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3221, !tbaa.struct !3086, !DIAssignID !3222
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3222, metadata ptr %5, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3223, metadata ptr undef, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata ptr %5, metadata !2128, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %2, metadata !2130, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %5, metadata !2128, metadata !DIExpression()), !dbg !3224
  store i32 10, ptr %5, align 8, !dbg !3226, !tbaa !2071, !DIAssignID !3227
  call void @llvm.dbg.assign(metadata i32 10, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3227, metadata ptr %5, metadata !DIExpression()), !dbg !3218
  %6 = icmp ne ptr %1, null, !dbg !3228
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3229
  br i1 %8, label %10, label %9, !dbg !3229

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3230
  unreachable, !dbg !3230

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3231
  store ptr %1, ptr %11, align 8, !dbg !3232, !tbaa !2142, !DIAssignID !3233
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3233, metadata ptr %11, metadata !DIExpression()), !dbg !3218
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3234
  store ptr %2, ptr %12, align 8, !dbg !3235, !tbaa !2145, !DIAssignID !3236
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3236, metadata ptr %12, metadata !DIExpression()), !dbg !3218
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3237
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3238
  ret ptr %13, !dbg !3239
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3209 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3240
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3240, metadata ptr %6, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3213, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3214, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3215, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3216, metadata !DIExpression()), !dbg !3241
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3217, metadata !DIExpression()), !dbg !3241
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3243, !tbaa.struct !3086, !DIAssignID !3244
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3244, metadata ptr %6, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3245, metadata ptr undef, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata ptr %6, metadata !2128, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %1, metadata !2129, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %2, metadata !2130, metadata !DIExpression()), !dbg !3246
  call void @llvm.dbg.value(metadata ptr %6, metadata !2128, metadata !DIExpression()), !dbg !3246
  store i32 10, ptr %6, align 8, !dbg !3248, !tbaa !2071, !DIAssignID !3249
  call void @llvm.dbg.assign(metadata i32 10, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3249, metadata ptr %6, metadata !DIExpression()), !dbg !3241
  %7 = icmp ne ptr %1, null, !dbg !3250
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3251
  br i1 %9, label %11, label %10, !dbg !3251

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3252
  unreachable, !dbg !3252

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3253
  store ptr %1, ptr %12, align 8, !dbg !3254, !tbaa !2142, !DIAssignID !3255
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3255, metadata ptr %12, metadata !DIExpression()), !dbg !3241
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3256
  store ptr %2, ptr %13, align 8, !dbg !3257, !tbaa !2145, !DIAssignID !3258
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3258, metadata ptr %13, metadata !DIExpression()), !dbg !3241
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3259
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3260
  ret ptr %14, !dbg !3261
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3262 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3269
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3266, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3267, metadata !DIExpression()), !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3268, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 0, metadata !3202, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %0, metadata !3203, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %1, metadata !3204, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %2, metadata !3205, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3269, metadata ptr %4, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 0, metadata !3213, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %0, metadata !3214, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %1, metadata !3215, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %2, metadata !3216, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 -1, metadata !3217, metadata !DIExpression()), !dbg !3273
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3276, !tbaa.struct !3086, !DIAssignID !3277
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3277, metadata ptr %4, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3278, metadata ptr undef, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata ptr %4, metadata !2128, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %0, metadata !2129, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %1, metadata !2130, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %4, metadata !2128, metadata !DIExpression()), !dbg !3279
  store i32 10, ptr %4, align 8, !dbg !3281, !tbaa !2071, !DIAssignID !3282
  call void @llvm.dbg.assign(metadata i32 10, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3282, metadata ptr %4, metadata !DIExpression()), !dbg !3273
  %5 = icmp ne ptr %0, null, !dbg !3283
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3284
  br i1 %7, label %9, label %8, !dbg !3284

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3285
  unreachable, !dbg !3285

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3286
  store ptr %0, ptr %10, align 8, !dbg !3287, !tbaa !2142, !DIAssignID !3288
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3288, metadata ptr %10, metadata !DIExpression()), !dbg !3273
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3289
  store ptr %1, ptr %11, align 8, !dbg !3290, !tbaa !2145, !DIAssignID !3291
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3291, metadata ptr %11, metadata !DIExpression()), !dbg !3273
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3292
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3293
  ret ptr %12, !dbg !3294
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3295 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3303
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3299, metadata !DIExpression()), !dbg !3304
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3300, metadata !DIExpression()), !dbg !3304
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3301, metadata !DIExpression()), !dbg !3304
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3303, metadata ptr %5, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i32 0, metadata !3213, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %0, metadata !3214, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %1, metadata !3215, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %2, metadata !3216, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata i64 %3, metadata !3217, metadata !DIExpression()), !dbg !3305
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3308, !tbaa.struct !3086, !DIAssignID !3309
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(), metadata !3309, metadata ptr %5, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3310, metadata ptr undef, metadata !DIExpression()), !dbg !3305
  call void @llvm.dbg.value(metadata ptr %5, metadata !2128, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %0, metadata !2129, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %1, metadata !2130, metadata !DIExpression()), !dbg !3311
  call void @llvm.dbg.value(metadata ptr %5, metadata !2128, metadata !DIExpression()), !dbg !3311
  store i32 10, ptr %5, align 8, !dbg !3313, !tbaa !2071, !DIAssignID !3314
  call void @llvm.dbg.assign(metadata i32 10, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3314, metadata ptr %5, metadata !DIExpression()), !dbg !3305
  %6 = icmp ne ptr %0, null, !dbg !3315
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3316
  br i1 %8, label %10, label %9, !dbg !3316

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3317
  unreachable, !dbg !3317

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3318
  store ptr %0, ptr %11, align 8, !dbg !3319, !tbaa !2142, !DIAssignID !3320
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3320, metadata ptr %11, metadata !DIExpression()), !dbg !3305
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3321
  store ptr %1, ptr %12, align 8, !dbg !3322, !tbaa !2145, !DIAssignID !3323
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3208, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3323, metadata ptr %12, metadata !DIExpression()), !dbg !3305
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3324
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3325
  ret ptr %13, !dbg !3326
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3327 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()), !dbg !3334
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3332, metadata !DIExpression()), !dbg !3334
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3333, metadata !DIExpression()), !dbg !3334
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3335
  ret ptr %4, !dbg !3336
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3337 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3341, metadata !DIExpression()), !dbg !3343
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3342, metadata !DIExpression()), !dbg !3343
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3333, metadata !DIExpression()), !dbg !3344
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3346
  ret ptr %3, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3348 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3352, metadata !DIExpression()), !dbg !3354
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3353, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i32 %0, metadata !3331, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata ptr %1, metadata !3332, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i64 -1, metadata !3333, metadata !DIExpression()), !dbg !3355
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3357
  ret ptr %3, !dbg !3358
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3359 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3363, metadata !DIExpression()), !dbg !3364
  call void @llvm.dbg.value(metadata i32 0, metadata !3352, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata ptr %0, metadata !3353, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.value(metadata i32 0, metadata !3331, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata ptr %0, metadata !3332, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.value(metadata i64 -1, metadata !3333, metadata !DIExpression()), !dbg !3367
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3369
  ret ptr %2, !dbg !3370
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #21 !dbg !3371 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3377, metadata !DIExpression()), !dbg !3385
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3378, metadata !DIExpression()), !dbg !3385
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3379, metadata !DIExpression()), !dbg !3385
  br label %4, !dbg !3386

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3387

6:                                                ; preds = %9, %4
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3379, metadata !DIExpression()), !dbg !3385
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #40, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3380, metadata !DIExpression()), !dbg !3389
  %8 = icmp sgt i64 %7, -1, !dbg !3390
  br i1 %8, label %.loopexit, label %9, !dbg !3387

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #43, !dbg !3392
  %11 = load i32, ptr %10, align 4, !dbg !3392, !tbaa !879
  %12 = icmp eq i32 %11, 4, !dbg !3392
  br i1 %12, label %6, label %13, !dbg !3394, !llvm.loop !3395

13:                                               ; preds = %9
  %.lcssa3 = phi i32 [ %11, %9 ], !dbg !3392
  %.lcssa2 = phi i64 [ %7, %9 ], !dbg !3388
  %14 = icmp ne i32 %.lcssa3, 22, !dbg !3398
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3400
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !3379, metadata !DIExpression()), !dbg !3385
  br i1 %16, label %.loopexit1, label %4

.loopexit:                                        ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3388
  br label %17, !dbg !3401

.loopexit1:                                       ; preds = %13
  %.lcssa2.lcssa = phi i64 [ %.lcssa2, %13 ], !dbg !3388
  br label %17, !dbg !3401

17:                                               ; preds = %.loopexit1, %.loopexit
  %18 = phi i64 [ %.lcssa2.lcssa, %.loopexit1 ], [ %.lcssa, %.loopexit ]
  ret i64 %18, !dbg !3401
}

; Function Attrs: nofree
declare !dbg !3402 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3405 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3444, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3445, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3446, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3447, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3448, metadata !DIExpression()), !dbg !3450
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !3449, metadata !DIExpression()), !dbg !3450
  %7 = icmp eq ptr %1, null, !dbg !3451
  br i1 %7, label %10, label %8, !dbg !3453

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !3454
  br label %12, !dbg !3454

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #40, !dbg !3455
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #40, !dbg !3456
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !3456
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3457
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #40, !dbg !3458
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #40, !dbg !3458
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3459
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
  ], !dbg !3460

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #40, !dbg !3461
  %21 = load ptr, ptr %4, align 8, !dbg !3461, !tbaa !819
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !3461
  br label %147, !dbg !3463

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #40, !dbg !3464
  %25 = load ptr, ptr %4, align 8, !dbg !3464, !tbaa !819
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3464
  %27 = load ptr, ptr %26, align 8, !dbg !3464, !tbaa !819
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !3464
  br label %147, !dbg !3465

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #40, !dbg !3466
  %31 = load ptr, ptr %4, align 8, !dbg !3466, !tbaa !819
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3466
  %33 = load ptr, ptr %32, align 8, !dbg !3466, !tbaa !819
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3466
  %35 = load ptr, ptr %34, align 8, !dbg !3466, !tbaa !819
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !3466
  br label %147, !dbg !3467

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #40, !dbg !3468
  %39 = load ptr, ptr %4, align 8, !dbg !3468, !tbaa !819
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3468
  %41 = load ptr, ptr %40, align 8, !dbg !3468, !tbaa !819
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3468
  %43 = load ptr, ptr %42, align 8, !dbg !3468, !tbaa !819
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3468
  %45 = load ptr, ptr %44, align 8, !dbg !3468, !tbaa !819
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !3468
  br label %147, !dbg !3469

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #40, !dbg !3470
  %49 = load ptr, ptr %4, align 8, !dbg !3470, !tbaa !819
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3470
  %51 = load ptr, ptr %50, align 8, !dbg !3470, !tbaa !819
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3470
  %53 = load ptr, ptr %52, align 8, !dbg !3470, !tbaa !819
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3470
  %55 = load ptr, ptr %54, align 8, !dbg !3470, !tbaa !819
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3470
  %57 = load ptr, ptr %56, align 8, !dbg !3470, !tbaa !819
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !3470
  br label %147, !dbg !3471

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #40, !dbg !3472
  %61 = load ptr, ptr %4, align 8, !dbg !3472, !tbaa !819
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3472
  %63 = load ptr, ptr %62, align 8, !dbg !3472, !tbaa !819
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3472
  %65 = load ptr, ptr %64, align 8, !dbg !3472, !tbaa !819
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3472
  %67 = load ptr, ptr %66, align 8, !dbg !3472, !tbaa !819
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3472
  %69 = load ptr, ptr %68, align 8, !dbg !3472, !tbaa !819
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3472
  %71 = load ptr, ptr %70, align 8, !dbg !3472, !tbaa !819
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !3472
  br label %147, !dbg !3473

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #40, !dbg !3474
  %75 = load ptr, ptr %4, align 8, !dbg !3474, !tbaa !819
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3474
  %77 = load ptr, ptr %76, align 8, !dbg !3474, !tbaa !819
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3474
  %79 = load ptr, ptr %78, align 8, !dbg !3474, !tbaa !819
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3474
  %81 = load ptr, ptr %80, align 8, !dbg !3474, !tbaa !819
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3474
  %83 = load ptr, ptr %82, align 8, !dbg !3474, !tbaa !819
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3474
  %85 = load ptr, ptr %84, align 8, !dbg !3474, !tbaa !819
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3474
  %87 = load ptr, ptr %86, align 8, !dbg !3474, !tbaa !819
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !3474
  br label %147, !dbg !3475

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #40, !dbg !3476
  %91 = load ptr, ptr %4, align 8, !dbg !3476, !tbaa !819
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3476
  %93 = load ptr, ptr %92, align 8, !dbg !3476, !tbaa !819
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3476
  %95 = load ptr, ptr %94, align 8, !dbg !3476, !tbaa !819
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3476
  %97 = load ptr, ptr %96, align 8, !dbg !3476, !tbaa !819
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3476
  %99 = load ptr, ptr %98, align 8, !dbg !3476, !tbaa !819
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3476
  %101 = load ptr, ptr %100, align 8, !dbg !3476, !tbaa !819
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3476
  %103 = load ptr, ptr %102, align 8, !dbg !3476, !tbaa !819
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3476
  %105 = load ptr, ptr %104, align 8, !dbg !3476, !tbaa !819
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !3476
  br label %147, !dbg !3477

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #40, !dbg !3478
  %109 = load ptr, ptr %4, align 8, !dbg !3478, !tbaa !819
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3478
  %111 = load ptr, ptr %110, align 8, !dbg !3478, !tbaa !819
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3478
  %113 = load ptr, ptr %112, align 8, !dbg !3478, !tbaa !819
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3478
  %115 = load ptr, ptr %114, align 8, !dbg !3478, !tbaa !819
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3478
  %117 = load ptr, ptr %116, align 8, !dbg !3478, !tbaa !819
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3478
  %119 = load ptr, ptr %118, align 8, !dbg !3478, !tbaa !819
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3478
  %121 = load ptr, ptr %120, align 8, !dbg !3478, !tbaa !819
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3478
  %123 = load ptr, ptr %122, align 8, !dbg !3478, !tbaa !819
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3478
  %125 = load ptr, ptr %124, align 8, !dbg !3478, !tbaa !819
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !3478
  br label %147, !dbg !3479

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #40, !dbg !3480
  %129 = load ptr, ptr %4, align 8, !dbg !3480, !tbaa !819
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3480
  %131 = load ptr, ptr %130, align 8, !dbg !3480, !tbaa !819
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3480
  %133 = load ptr, ptr %132, align 8, !dbg !3480, !tbaa !819
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3480
  %135 = load ptr, ptr %134, align 8, !dbg !3480, !tbaa !819
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3480
  %137 = load ptr, ptr %136, align 8, !dbg !3480, !tbaa !819
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3480
  %139 = load ptr, ptr %138, align 8, !dbg !3480, !tbaa !819
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3480
  %141 = load ptr, ptr %140, align 8, !dbg !3480, !tbaa !819
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3480
  %143 = load ptr, ptr %142, align 8, !dbg !3480, !tbaa !819
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3480
  %145 = load ptr, ptr %144, align 8, !dbg !3480, !tbaa !819
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !3480
  br label %147, !dbg !3481

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3482
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3483 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3487, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3488, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3489, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3490, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3491, metadata !DIExpression()), !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3492, metadata !DIExpression()), !dbg !3493
  br label %6, !dbg !3494

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3496
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !3492, metadata !DIExpression()), !dbg !3493
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3497
  %9 = load ptr, ptr %8, align 8, !dbg !3497, !tbaa !819
  %10 = icmp eq ptr %9, null, !dbg !3499
  %11 = add i64 %7, 1, !dbg !3500
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3492, metadata !DIExpression()), !dbg !3493
  br i1 %10, label %12, label %6, !dbg !3499, !llvm.loop !3501

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !3496
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !3503
  ret void, !dbg !3504
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3505 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !3527
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3525, metadata !DIExpression(), metadata !3527, metadata ptr %6, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3519, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3520, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3521, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3522, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3523, metadata !DIExpression(DW_OP_deref)), !dbg !3528
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !3529
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3524, metadata !DIExpression()), !dbg !3528
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3524, metadata !DIExpression()), !dbg !3528
  %10 = icmp sgt i32 %9, -1, !dbg !3530
  br i1 %10, label %18, label %11, !dbg !3530

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3530
  store i32 %12, ptr %7, align 8, !dbg !3530
  %13 = icmp ult i32 %9, -7, !dbg !3530
  br i1 %13, label %14, label %18, !dbg !3530

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3530
  %16 = sext i32 %9 to i64, !dbg !3530
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3530
  br label %22, !dbg !3530

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3530
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3530
  store ptr %21, ptr %4, align 8, !dbg !3530
  br label %22, !dbg !3530

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3530
  %25 = load ptr, ptr %24, align 8, !dbg !3530
  store ptr %25, ptr %6, align 8, !dbg !3533, !tbaa !819
  %26 = icmp eq ptr %25, null, !dbg !3534
  br i1 %26, label %197, label %27, !dbg !3535

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3524, metadata !DIExpression()), !dbg !3528
  %28 = icmp sgt i32 %23, -1, !dbg !3530
  br i1 %28, label %36, label %29, !dbg !3530

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3530
  store i32 %30, ptr %7, align 8, !dbg !3530
  %31 = icmp ult i32 %23, -7, !dbg !3530
  br i1 %31, label %32, label %36, !dbg !3530

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3530
  %34 = sext i32 %23 to i64, !dbg !3530
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3530
  br label %40, !dbg !3530

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3530
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3530
  store ptr %39, ptr %4, align 8, !dbg !3530
  br label %40, !dbg !3530

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3530
  %43 = load ptr, ptr %42, align 8, !dbg !3530
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3536
  store ptr %43, ptr %44, align 8, !dbg !3533, !tbaa !819
  %45 = icmp eq ptr %43, null, !dbg !3534
  br i1 %45, label %197, label %46, !dbg !3535

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 2, metadata !3524, metadata !DIExpression()), !dbg !3528
  %47 = icmp sgt i32 %41, -1, !dbg !3530
  br i1 %47, label %55, label %48, !dbg !3530

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3530
  store i32 %49, ptr %7, align 8, !dbg !3530
  %50 = icmp ult i32 %41, -7, !dbg !3530
  br i1 %50, label %51, label %55, !dbg !3530

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3530
  %53 = sext i32 %41 to i64, !dbg !3530
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3530
  br label %59, !dbg !3530

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3530
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3530
  store ptr %58, ptr %4, align 8, !dbg !3530
  br label %59, !dbg !3530

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3530
  %62 = load ptr, ptr %61, align 8, !dbg !3530
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3536
  store ptr %62, ptr %63, align 8, !dbg !3533, !tbaa !819
  %64 = icmp eq ptr %62, null, !dbg !3534
  br i1 %64, label %197, label %65, !dbg !3535

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 3, metadata !3524, metadata !DIExpression()), !dbg !3528
  %66 = icmp sgt i32 %60, -1, !dbg !3530
  br i1 %66, label %74, label %67, !dbg !3530

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3530
  store i32 %68, ptr %7, align 8, !dbg !3530
  %69 = icmp ult i32 %60, -7, !dbg !3530
  br i1 %69, label %70, label %74, !dbg !3530

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3530
  %72 = sext i32 %60 to i64, !dbg !3530
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3530
  br label %78, !dbg !3530

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3530
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3530
  store ptr %77, ptr %4, align 8, !dbg !3530
  br label %78, !dbg !3530

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3530
  %81 = load ptr, ptr %80, align 8, !dbg !3530
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3536
  store ptr %81, ptr %82, align 8, !dbg !3533, !tbaa !819
  %83 = icmp eq ptr %81, null, !dbg !3534
  br i1 %83, label %197, label %84, !dbg !3535

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 4, metadata !3524, metadata !DIExpression()), !dbg !3528
  %85 = icmp sgt i32 %79, -1, !dbg !3530
  br i1 %85, label %93, label %86, !dbg !3530

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3530
  store i32 %87, ptr %7, align 8, !dbg !3530
  %88 = icmp ult i32 %79, -7, !dbg !3530
  br i1 %88, label %89, label %93, !dbg !3530

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3530
  %91 = sext i32 %79 to i64, !dbg !3530
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3530
  br label %97, !dbg !3530

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3530
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3530
  store ptr %96, ptr %4, align 8, !dbg !3530
  br label %97, !dbg !3530

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3530
  %100 = load ptr, ptr %99, align 8, !dbg !3530
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3536
  store ptr %100, ptr %101, align 8, !dbg !3533, !tbaa !819
  %102 = icmp eq ptr %100, null, !dbg !3534
  br i1 %102, label %197, label %103, !dbg !3535

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 5, metadata !3524, metadata !DIExpression()), !dbg !3528
  %104 = icmp sgt i32 %98, -1, !dbg !3530
  br i1 %104, label %112, label %105, !dbg !3530

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3530
  store i32 %106, ptr %7, align 8, !dbg !3530
  %107 = icmp ult i32 %98, -7, !dbg !3530
  br i1 %107, label %108, label %112, !dbg !3530

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3530
  %110 = sext i32 %98 to i64, !dbg !3530
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3530
  br label %116, !dbg !3530

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3530
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3530
  store ptr %115, ptr %4, align 8, !dbg !3530
  br label %116, !dbg !3530

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3530
  %119 = load ptr, ptr %118, align 8, !dbg !3530
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3536
  store ptr %119, ptr %120, align 8, !dbg !3533, !tbaa !819
  %121 = icmp eq ptr %119, null, !dbg !3534
  br i1 %121, label %197, label %122, !dbg !3535

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 6, metadata !3524, metadata !DIExpression()), !dbg !3528
  %123 = icmp sgt i32 %117, -1, !dbg !3530
  br i1 %123, label %131, label %124, !dbg !3530

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3530
  store i32 %125, ptr %7, align 8, !dbg !3530
  %126 = icmp ult i32 %117, -7, !dbg !3530
  br i1 %126, label %127, label %131, !dbg !3530

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3530
  %129 = sext i32 %117 to i64, !dbg !3530
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3530
  br label %135, !dbg !3530

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3530
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3530
  store ptr %134, ptr %4, align 8, !dbg !3530
  br label %135, !dbg !3530

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3530
  %138 = load ptr, ptr %137, align 8, !dbg !3530
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3536
  store ptr %138, ptr %139, align 8, !dbg !3533, !tbaa !819
  %140 = icmp eq ptr %138, null, !dbg !3534
  br i1 %140, label %197, label %141, !dbg !3535

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 7, metadata !3524, metadata !DIExpression()), !dbg !3528
  %142 = icmp sgt i32 %136, -1, !dbg !3530
  br i1 %142, label %150, label %143, !dbg !3530

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3530
  store i32 %144, ptr %7, align 8, !dbg !3530
  %145 = icmp ult i32 %136, -7, !dbg !3530
  br i1 %145, label %146, label %150, !dbg !3530

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3530
  %148 = sext i32 %136 to i64, !dbg !3530
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3530
  br label %154, !dbg !3530

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3530
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3530
  store ptr %153, ptr %4, align 8, !dbg !3530
  br label %154, !dbg !3530

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3530
  %157 = load ptr, ptr %156, align 8, !dbg !3530
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3536
  store ptr %157, ptr %158, align 8, !dbg !3533, !tbaa !819
  %159 = icmp eq ptr %157, null, !dbg !3534
  br i1 %159, label %197, label %160, !dbg !3535

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 8, metadata !3524, metadata !DIExpression()), !dbg !3528
  %161 = icmp sgt i32 %155, -1, !dbg !3530
  br i1 %161, label %169, label %162, !dbg !3530

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3530
  store i32 %163, ptr %7, align 8, !dbg !3530
  %164 = icmp ult i32 %155, -7, !dbg !3530
  br i1 %164, label %165, label %169, !dbg !3530

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3530
  %167 = sext i32 %155 to i64, !dbg !3530
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3530
  br label %173, !dbg !3530

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3530
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3530
  store ptr %172, ptr %4, align 8, !dbg !3530
  br label %173, !dbg !3530

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3530
  %176 = load ptr, ptr %175, align 8, !dbg !3530
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3536
  store ptr %176, ptr %177, align 8, !dbg !3533, !tbaa !819
  %178 = icmp eq ptr %176, null, !dbg !3534
  br i1 %178, label %197, label %179, !dbg !3535

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3524, metadata !DIExpression()), !dbg !3528
  tail call void @llvm.dbg.value(metadata i64 9, metadata !3524, metadata !DIExpression()), !dbg !3528
  %180 = icmp sgt i32 %174, -1, !dbg !3530
  br i1 %180, label %188, label %181, !dbg !3530

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3530
  store i32 %182, ptr %7, align 8, !dbg !3530
  %183 = icmp ult i32 %174, -7, !dbg !3530
  br i1 %183, label %184, label %188, !dbg !3530

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3530
  %186 = sext i32 %174 to i64, !dbg !3530
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3530
  br label %191, !dbg !3530

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3530
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3530
  store ptr %190, ptr %4, align 8, !dbg !3530
  br label %191, !dbg !3530

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3530
  %193 = load ptr, ptr %192, align 8, !dbg !3530
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3536
  store ptr %193, ptr %194, align 8, !dbg !3533, !tbaa !819
  %195 = icmp eq ptr %193, null, !dbg !3534
  %196 = select i1 %195, i64 9, i64 10, !dbg !3535
  br label %197, !dbg !3535

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3537
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3538
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !3539
  ret void, !dbg !3539
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3540 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !3549
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3548, metadata !DIExpression(), metadata !3549, metadata ptr %5, metadata !DIExpression()), !dbg !3550
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3544, metadata !DIExpression()), !dbg !3550
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3545, metadata !DIExpression()), !dbg !3550
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3546, metadata !DIExpression()), !dbg !3550
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3547, metadata !DIExpression()), !dbg !3550
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #40, !dbg !3551
  call void @llvm.va_start(ptr nonnull %5), !dbg !3552
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #40, !dbg !3553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3553, !tbaa.struct !1445
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3553
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #40, !dbg !3553
  call void @llvm.va_end(ptr nonnull %5), !dbg !3554
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #40, !dbg !3555
  ret void, !dbg !3555
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3556 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3557, !tbaa !819
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3557
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #40, !dbg !3558
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #40, !dbg !3558
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !3559
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21) #40, !dbg !3559
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !3560
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #40, !dbg !3560
  ret void, !dbg !3561
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3562 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3567, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3568, metadata !DIExpression()), !dbg !3570
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata ptr %0, metadata !3571, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %1, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %2, metadata !3575, metadata !DIExpression()), !dbg !3576
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3578
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3584
  %5 = icmp eq ptr %4, null, !dbg !3586
  br i1 %5, label %6, label %7, !dbg !3588

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3589
  unreachable, !dbg !3589

7:                                                ; preds = %3
  ret ptr %4, !dbg !3590
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3572 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3571, metadata !DIExpression()), !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3574, metadata !DIExpression()), !dbg !3591
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3575, metadata !DIExpression()), !dbg !3591
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3592
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3593
  %5 = icmp eq ptr %4, null, !dbg !3595
  br i1 %5, label %6, label %7, !dbg !3596

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3597
  unreachable, !dbg !3597

7:                                                ; preds = %3
  ret ptr %4, !dbg !3598
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3599 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3603, metadata !DIExpression()), !dbg !3604
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3605
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3606
  %3 = icmp eq ptr %2, null, !dbg !3608
  br i1 %3, label %4, label %5, !dbg !3609

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3610
  unreachable, !dbg !3610

5:                                                ; preds = %1
  ret ptr %2, !dbg !3611
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3612 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3613 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3617, metadata !DIExpression()), !dbg !3618
  call void @llvm.dbg.value(metadata i64 %0, metadata !3619, metadata !DIExpression()), !dbg !3623
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3625
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3626
  %3 = icmp eq ptr %2, null, !dbg !3628
  br i1 %3, label %4, label %5, !dbg !3629

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3630
  unreachable, !dbg !3630

5:                                                ; preds = %1
  ret ptr %2, !dbg !3631
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3632 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i64 %0, metadata !3603, metadata !DIExpression()), !dbg !3638
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #44, !dbg !3640
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3641
  %3 = icmp eq ptr %2, null, !dbg !3643
  br i1 %3, label %4, label %5, !dbg !3644

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3645
  unreachable, !dbg !3645

5:                                                ; preds = %1
  ret ptr %2, !dbg !3646
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3647 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3653
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3659
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3659
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3661
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3662
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3663
  %5 = icmp eq ptr %4, null, !dbg !3665
  br i1 %5, label %6, label %7, !dbg !3666

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3667
  unreachable, !dbg !3667

7:                                                ; preds = %2
  ret ptr %4, !dbg !3668
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3669 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3670 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3674, metadata !DIExpression()), !dbg !3676
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3675, metadata !DIExpression()), !dbg !3676
  call void @llvm.dbg.value(metadata ptr %0, metadata !3677, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %1, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3658, metadata !DIExpression()), !dbg !3683
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !3685
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !3686
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3687
  %5 = icmp eq ptr %4, null, !dbg !3689
  br i1 %5, label %6, label %7, !dbg !3690

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3691
  unreachable, !dbg !3691

7:                                                ; preds = %2
  ret ptr %4, !dbg !3692
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3693 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3697, metadata !DIExpression()), !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()), !dbg !3700
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3699, metadata !DIExpression()), !dbg !3700
  call void @llvm.dbg.value(metadata ptr %0, metadata !3701, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %1, metadata !3704, metadata !DIExpression()), !dbg !3706
  call void @llvm.dbg.value(metadata i64 %2, metadata !3705, metadata !DIExpression()), !dbg !3706
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !3708
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3709
  %5 = icmp eq ptr %4, null, !dbg !3711
  br i1 %5, label %6, label %7, !dbg !3712

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !3713
  unreachable, !dbg !3713

7:                                                ; preds = %3
  ret ptr %4, !dbg !3714
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3715 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3717, metadata !DIExpression()), !dbg !3719
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata ptr null, metadata !3571, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %0, metadata !3574, metadata !DIExpression()), !dbg !3720
  call void @llvm.dbg.value(metadata i64 %1, metadata !3575, metadata !DIExpression()), !dbg !3720
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3722
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3723
  %4 = icmp eq ptr %3, null, !dbg !3725
  br i1 %4, label %5, label %6, !dbg !3726

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3727
  unreachable, !dbg !3727

6:                                                ; preds = %2
  ret ptr %3, !dbg !3728
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3729 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3733, metadata !DIExpression()), !dbg !3735
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3734, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata ptr null, metadata !3697, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %0, metadata !3698, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata i64 %1, metadata !3699, metadata !DIExpression()), !dbg !3736
  call void @llvm.dbg.value(metadata ptr null, metadata !3701, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %0, metadata !3704, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3738
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3741
  %4 = icmp eq ptr %3, null, !dbg !3743
  br i1 %4, label %5, label %6, !dbg !3744

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3745
  unreachable, !dbg !3745

6:                                                ; preds = %2
  ret ptr %3, !dbg !3746
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3747 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3751, metadata !DIExpression()), !dbg !3753
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3752, metadata !DIExpression()), !dbg !3753
  call void @llvm.dbg.value(metadata ptr %0, metadata !751, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %1, metadata !752, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata i64 1, metadata !753, metadata !DIExpression()), !dbg !3754
  %3 = load i64, ptr %1, align 8, !dbg !3756, !tbaa !2792
  call void @llvm.dbg.value(metadata i64 %3, metadata !754, metadata !DIExpression()), !dbg !3754
  %4 = icmp eq ptr %0, null, !dbg !3757
  br i1 %4, label %5, label %8, !dbg !3759

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3760
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3763
  br label %15, !dbg !3763

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3764
  %10 = add nuw i64 %9, 1, !dbg !3764
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3764
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3764
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %13, metadata !754, metadata !DIExpression()), !dbg !3754
  br i1 %12, label %14, label %15, !dbg !3767

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !3768
  unreachable, !dbg !3768

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3754
  call void @llvm.dbg.value(metadata i64 %16, metadata !754, metadata !DIExpression()), !dbg !3754
  call void @llvm.dbg.value(metadata ptr %0, metadata !3571, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %16, metadata !3574, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 1, metadata !3575, metadata !DIExpression()), !dbg !3769
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !3771
  call void @llvm.dbg.value(metadata ptr %17, metadata !3579, metadata !DIExpression()), !dbg !3772
  %18 = icmp eq ptr %17, null, !dbg !3774
  br i1 %18, label %19, label %20, !dbg !3775

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !3776
  unreachable, !dbg !3776

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !751, metadata !DIExpression()), !dbg !3754
  store i64 %16, ptr %1, align 8, !dbg !3777, !tbaa !2792
  ret ptr %17, !dbg !3778
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !746 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !751, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !752, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !753, metadata !DIExpression()), !dbg !3779
  %4 = load i64, ptr %1, align 8, !dbg !3780, !tbaa !2792
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !754, metadata !DIExpression()), !dbg !3779
  %5 = icmp eq ptr %0, null, !dbg !3781
  br i1 %5, label %6, label %13, !dbg !3782

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3783
  br i1 %7, label %8, label %20, !dbg !3784

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3785
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !754, metadata !DIExpression()), !dbg !3779
  %10 = icmp ugt i64 %2, 128, !dbg !3787
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !754, metadata !DIExpression()), !dbg !3779
  br label %20, !dbg !3789

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3790
  %15 = add nuw i64 %14, 1, !dbg !3790
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3790
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3790
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3790
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !754, metadata !DIExpression()), !dbg !3779
  br i1 %17, label %19, label %20, !dbg !3791

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !3792
  unreachable, !dbg !3792

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !754, metadata !DIExpression()), !dbg !3779
  call void @llvm.dbg.value(metadata ptr %0, metadata !3571, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %21, metadata !3574, metadata !DIExpression()), !dbg !3793
  call void @llvm.dbg.value(metadata i64 %2, metadata !3575, metadata !DIExpression()), !dbg !3793
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !3795
  call void @llvm.dbg.value(metadata ptr %22, metadata !3579, metadata !DIExpression()), !dbg !3796
  %23 = icmp eq ptr %22, null, !dbg !3798
  br i1 %23, label %24, label %25, !dbg !3799

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !3800
  unreachable, !dbg !3800

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !751, metadata !DIExpression()), !dbg !3779
  store i64 %21, ptr %1, align 8, !dbg !3801, !tbaa !2792
  ret ptr %22, !dbg !3802
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !758 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !767, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !768, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !769, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !770, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !771, metadata !DIExpression()), !dbg !3803
  %6 = load i64, ptr %1, align 8, !dbg !3804, !tbaa !2792
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !772, metadata !DIExpression()), !dbg !3803
  %7 = ashr i64 %6, 1, !dbg !3805
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3805
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3805
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3805
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !773, metadata !DIExpression()), !dbg !3803
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3807
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !773, metadata !DIExpression()), !dbg !3803
  %12 = icmp sgt i64 %3, -1, !dbg !3808
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !3810
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !3810
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !773, metadata !DIExpression()), !dbg !3803
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !3811
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !3811
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !774, metadata !DIExpression()), !dbg !3803
  %18 = icmp slt i64 %17, 128, !dbg !3811
  %19 = select i1 %18, i64 128, i64 0, !dbg !3811
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !3811
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !775, metadata !DIExpression()), !dbg !3803
  %21 = icmp eq i64 %20, 0, !dbg !3812
  br i1 %21, label %28, label %22, !dbg !3814

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !3815
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !773, metadata !DIExpression()), !dbg !3803
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !3817
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !774, metadata !DIExpression()), !dbg !3803
  br label %28, !dbg !3818

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !3803
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !774, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !773, metadata !DIExpression()), !dbg !3803
  %31 = icmp eq ptr %0, null, !dbg !3819
  br i1 %31, label %32, label %33, !dbg !3821

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !3822, !tbaa !2792
  br label %33, !dbg !3823

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !3824
  %35 = icmp slt i64 %34, %2, !dbg !3826
  br i1 %35, label %36, label %48, !dbg !3827

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3828
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !3828
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !3828
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !773, metadata !DIExpression()), !dbg !3803
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !3829
  br i1 %42, label %47, label %43, !dbg !3829

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !3830
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !3830
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !774, metadata !DIExpression()), !dbg !3803
  br i1 %45, label %47, label %48, !dbg !3831

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #42, !dbg !3832
  unreachable, !dbg !3832

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !3803
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !774, metadata !DIExpression()), !dbg !3803
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !773, metadata !DIExpression()), !dbg !3803
  call void @llvm.dbg.value(metadata ptr %0, metadata !3651, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata i64 %50, metadata !3652, metadata !DIExpression()), !dbg !3833
  call void @llvm.dbg.value(metadata ptr %0, metadata !3654, metadata !DIExpression()), !dbg !3835
  call void @llvm.dbg.value(metadata i64 %50, metadata !3658, metadata !DIExpression()), !dbg !3835
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !3837
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !3838
  call void @llvm.dbg.value(metadata ptr %52, metadata !3579, metadata !DIExpression()), !dbg !3839
  %53 = icmp eq ptr %52, null, !dbg !3841
  br i1 %53, label %54, label %55, !dbg !3842

54:                                               ; preds = %48
  tail call void @xalloc_die() #42, !dbg !3843
  unreachable, !dbg !3843

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !767, metadata !DIExpression()), !dbg !3803
  store i64 %49, ptr %1, align 8, !dbg !3844, !tbaa !2792
  ret ptr %52, !dbg !3845
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3846 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3848, metadata !DIExpression()), !dbg !3849
  call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 1, metadata !3853, metadata !DIExpression()), !dbg !3854
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3856
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3857
  %3 = icmp eq ptr %2, null, !dbg !3859
  br i1 %3, label %4, label %5, !dbg !3860

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3861
  unreachable, !dbg !3861

5:                                                ; preds = %1
  ret ptr %2, !dbg !3862
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3863 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3851 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3850, metadata !DIExpression()), !dbg !3864
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3864
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3865
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3866
  %4 = icmp eq ptr %3, null, !dbg !3868
  br i1 %4, label %5, label %6, !dbg !3869

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3870
  unreachable, !dbg !3870

6:                                                ; preds = %2
  ret ptr %3, !dbg !3871
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !3872 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3874, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.value(metadata i64 %0, metadata !3876, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 1, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 1, metadata !3885, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.value(metadata i64 1, metadata !3885, metadata !DIExpression()), !dbg !3886
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #47, !dbg !3888
  call void @llvm.dbg.value(metadata ptr %2, metadata !3579, metadata !DIExpression()), !dbg !3889
  %3 = icmp eq ptr %2, null, !dbg !3891
  br i1 %3, label %4, label %5, !dbg !3892

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3893
  unreachable, !dbg !3893

5:                                                ; preds = %1
  ret ptr %2, !dbg !3894
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !3877 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !3876, metadata !DIExpression()), !dbg !3895
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3895
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %1, metadata !3885, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %0, metadata !3882, metadata !DIExpression()), !dbg !3896
  call void @llvm.dbg.value(metadata i64 %1, metadata !3885, metadata !DIExpression()), !dbg !3896
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #47, !dbg !3898
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3899
  %4 = icmp eq ptr %3, null, !dbg !3901
  br i1 %4, label %5, label %6, !dbg !3902

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3903
  unreachable, !dbg !3903

6:                                                ; preds = %2
  ret ptr %3, !dbg !3904
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3905 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3911
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3910, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.value(metadata i64 %1, metadata !3603, metadata !DIExpression()), !dbg !3912
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3914
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3915
  %4 = icmp eq ptr %3, null, !dbg !3917
  br i1 %4, label %5, label %6, !dbg !3918

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3919
  unreachable, !dbg !3919

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3920, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata ptr %0, metadata !3923, metadata !DIExpression()), !dbg !3925
  call void @llvm.dbg.value(metadata i64 %1, metadata !3924, metadata !DIExpression()), !dbg !3925
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3927
  ret ptr %3, !dbg !3928
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !3929 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3933, metadata !DIExpression()), !dbg !3935
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3934, metadata !DIExpression()), !dbg !3935
  call void @llvm.dbg.value(metadata i64 %1, metadata !3617, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %1, metadata !3619, metadata !DIExpression()), !dbg !3938
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #44, !dbg !3940
  call void @llvm.dbg.value(metadata ptr %3, metadata !3579, metadata !DIExpression()), !dbg !3941
  %4 = icmp eq ptr %3, null, !dbg !3943
  br i1 %4, label %5, label %6, !dbg !3944

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3945
  unreachable, !dbg !3945

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3920, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata ptr %0, metadata !3923, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.value(metadata i64 %1, metadata !3924, metadata !DIExpression()), !dbg !3946
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3948
  ret ptr %3, !dbg !3949
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3954, metadata !DIExpression()), !dbg !3957
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3955, metadata !DIExpression()), !dbg !3957
  %3 = add nsw i64 %1, 1, !dbg !3958
  call void @llvm.dbg.value(metadata i64 %3, metadata !3617, metadata !DIExpression()), !dbg !3959
  call void @llvm.dbg.value(metadata i64 %3, metadata !3619, metadata !DIExpression()), !dbg !3961
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3963
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3964
  %5 = icmp eq ptr %4, null, !dbg !3966
  br i1 %5, label %6, label %7, !dbg !3967

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !3968
  unreachable, !dbg !3968

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3956, metadata !DIExpression()), !dbg !3957
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3969
  store i8 0, ptr %8, align 1, !dbg !3970, !tbaa !888
  call void @llvm.dbg.value(metadata ptr %4, metadata !3920, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata ptr %0, metadata !3923, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.value(metadata i64 %1, metadata !3924, metadata !DIExpression()), !dbg !3971
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !3973
  ret ptr %4, !dbg !3974
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3975 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3977, metadata !DIExpression()), !dbg !3978
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !3979
  %3 = add i64 %2, 1, !dbg !3980
  call void @llvm.dbg.value(metadata ptr %0, metadata !3909, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %3, metadata !3910, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64 %3, metadata !3603, metadata !DIExpression()), !dbg !3983
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #44, !dbg !3985
  call void @llvm.dbg.value(metadata ptr %4, metadata !3579, metadata !DIExpression()), !dbg !3986
  %5 = icmp eq ptr %4, null, !dbg !3988
  br i1 %5, label %6, label %7, !dbg !3989

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !3990
  unreachable, !dbg !3990

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3920, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata ptr %0, metadata !3923, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i64 %3, metadata !3924, metadata !DIExpression()), !dbg !3991
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !3993
  ret ptr %4, !dbg !3994
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3995 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4000, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3997, metadata !DIExpression()), !dbg !4001
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #40, !dbg !4000
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #40, !dbg !4000
  %3 = icmp eq i32 %1, 0, !dbg !4000
  tail call void @llvm.assume(i1 %3), !dbg !4000
  tail call void @abort() #42, !dbg !4002
  unreachable, !dbg !4002
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4003 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4041, metadata !DIExpression()), !dbg !4046
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4047
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4042, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4048, metadata !DIExpression()), !dbg !4051
  %3 = load i32, ptr %0, align 8, !dbg !4053, !tbaa !4054
  %4 = and i32 %3, 32, !dbg !4055
  %5 = icmp eq i32 %4, 0, !dbg !4055
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4044, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4056
  %7 = icmp eq i32 %6, 0, !dbg !4057
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4045, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  br i1 %5, label %8, label %18, !dbg !4058

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4060
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4042, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4046
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4061
  %11 = xor i1 %7, true, !dbg !4061
  %12 = sext i1 %11 to i32, !dbg !4061
  br i1 %10, label %21, label %13, !dbg !4061

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4062
  %15 = load i32, ptr %14, align 4, !dbg !4062, !tbaa !879
  %16 = icmp ne i32 %15, 9, !dbg !4063
  %17 = sext i1 %16 to i32, !dbg !4064
  br label %21, !dbg !4064

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4065

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4067
  store i32 0, ptr %20, align 4, !dbg !4069, !tbaa !879
  br label %21, !dbg !4067

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4046
  ret i32 %22, !dbg !4070
}

; Function Attrs: nounwind
declare !dbg !4071 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4075 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4113, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4114, metadata !DIExpression()), !dbg !4117
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4118
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4115, metadata !DIExpression()), !dbg !4117
  %3 = icmp slt i32 %2, 0, !dbg !4119
  br i1 %3, label %4, label %6, !dbg !4121

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4122
  br label %24, !dbg !4123

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4124
  %8 = icmp eq i32 %7, 0, !dbg !4124
  br i1 %8, label %13, label %9, !dbg !4126

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4127
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !4128
  %12 = icmp eq i64 %11, -1, !dbg !4129
  br i1 %12, label %16, label %13, !dbg !4130

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !4131
  %15 = icmp eq i32 %14, 0, !dbg !4131
  br i1 %15, label %16, label %18, !dbg !4132

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4114, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4116, metadata !DIExpression()), !dbg !4117
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4133
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4116, metadata !DIExpression()), !dbg !4117
  br label %24, !dbg !4134

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !4135
  %20 = load i32, ptr %19, align 4, !dbg !4135, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4114, metadata !DIExpression()), !dbg !4117
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4116, metadata !DIExpression()), !dbg !4117
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4133
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4116, metadata !DIExpression()), !dbg !4117
  %22 = icmp eq i32 %20, 0, !dbg !4136
  br i1 %22, label %24, label %23, !dbg !4134

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4138, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4116, metadata !DIExpression()), !dbg !4117
  br label %24, !dbg !4140

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4117
  ret i32 %25, !dbg !4141
}

; Function Attrs: nofree nounwind
declare !dbg !4142 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4143 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4144 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4145 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4148 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4150, metadata !DIExpression()), !dbg !4156
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4151, metadata !DIExpression()), !dbg !4156
  %3 = icmp ult i32 %0, 3, !dbg !4157
  br i1 %3, label %4, label %9, !dbg !4157

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #40, !dbg !4158
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4152, metadata !DIExpression()), !dbg !4159
  %6 = tail call ptr @__errno_location() #43, !dbg !4160
  %7 = load i32, ptr %6, align 4, !dbg !4160, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !4155, metadata !DIExpression()), !dbg !4159
  %8 = tail call i32 @close(i32 noundef %0) #40, !dbg !4161
  store i32 %7, ptr %6, align 4, !dbg !4162, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !4150, metadata !DIExpression()), !dbg !4156
  br label %9, !dbg !4163

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !4150, metadata !DIExpression()), !dbg !4156
  ret i32 %10, !dbg !4164
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4165 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4167, metadata !DIExpression()), !dbg !4169
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4168, metadata !DIExpression()), !dbg !4169
  %3 = and i32 %1, 524288, !dbg !4170
  %4 = icmp eq i32 %3, 0, !dbg !4171
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4171
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #40, !dbg !4172
  ret i32 %6, !dbg !4173
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4174 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4212, metadata !DIExpression()), !dbg !4213
  %2 = icmp eq ptr %0, null, !dbg !4214
  br i1 %2, label %6, label %3, !dbg !4216

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !4217
  %5 = icmp eq i32 %4, 0, !dbg !4217
  br i1 %5, label %6, label %8, !dbg !4218

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4219
  br label %16, !dbg !4220

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4221, metadata !DIExpression()), !dbg !4226
  %9 = load i32, ptr %0, align 8, !dbg !4228, !tbaa !4054
  %10 = and i32 %9, 256, !dbg !4230
  %11 = icmp eq i32 %10, 0, !dbg !4230
  br i1 %11, label %14, label %12, !dbg !4231

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !4232
  br label %14, !dbg !4232

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4233
  br label %16, !dbg !4234

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4213
  ret i32 %17, !dbg !4235
}

; Function Attrs: nofree nounwind
declare !dbg !4236 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4237 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4276, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4277, metadata !DIExpression()), !dbg !4282
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4278, metadata !DIExpression()), !dbg !4282
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4283
  %5 = load ptr, ptr %4, align 8, !dbg !4283, !tbaa !4284
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4285
  %7 = load ptr, ptr %6, align 8, !dbg !4285, !tbaa !4286
  %8 = icmp eq ptr %5, %7, !dbg !4287
  br i1 %8, label %9, label %27, !dbg !4288

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4289
  %11 = load ptr, ptr %10, align 8, !dbg !4289, !tbaa !1556
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4290
  %13 = load ptr, ptr %12, align 8, !dbg !4290, !tbaa !4291
  %14 = icmp eq ptr %11, %13, !dbg !4292
  br i1 %14, label %15, label %27, !dbg !4293

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4294
  %17 = load ptr, ptr %16, align 8, !dbg !4294, !tbaa !4295
  %18 = icmp eq ptr %17, null, !dbg !4296
  br i1 %18, label %19, label %27, !dbg !4297

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4298
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !4299
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !4279, metadata !DIExpression()), !dbg !4300
  %22 = icmp eq i64 %21, -1, !dbg !4301
  br i1 %22, label %29, label %23, !dbg !4303

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4304, !tbaa !4054
  %25 = and i32 %24, -17, !dbg !4304
  store i32 %25, ptr %0, align 8, !dbg !4304, !tbaa !4054
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4305
  store i64 %21, ptr %26, align 8, !dbg !4306, !tbaa !4307
  br label %29, !dbg !4308

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4309
  br label %29, !dbg !4310

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4282
  ret i32 %30, !dbg !4311
}

; Function Attrs: nofree nounwind
declare !dbg !4312 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4315 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4320, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4321, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4322, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4323, metadata !DIExpression()), !dbg !4325
  %5 = icmp eq ptr %1, null, !dbg !4326
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4328
  %7 = select i1 %5, ptr @.str.134, ptr %1, !dbg !4328
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4328
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !4322, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4321, metadata !DIExpression()), !dbg !4325
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4320, metadata !DIExpression()), !dbg !4325
  %9 = icmp eq ptr %3, null, !dbg !4329
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4331
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4323, metadata !DIExpression()), !dbg !4325
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !4332
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4324, metadata !DIExpression()), !dbg !4325
  %12 = icmp ult i64 %11, -3, !dbg !4333
  br i1 %12, label %13, label %17, !dbg !4335

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !4336
  %15 = icmp eq i32 %14, 0, !dbg !4336
  br i1 %15, label %16, label %29, !dbg !4337

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4338, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata ptr %10, metadata !4345, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 0, metadata !4348, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i64 8, metadata !4349, metadata !DIExpression()), !dbg !4350
  store i64 0, ptr %10, align 1, !dbg !4352
  br label %29, !dbg !4353

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4354
  br i1 %18, label %19, label %20, !dbg !4356

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !4357
  unreachable, !dbg !4357

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4358

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #40, !dbg !4360
  br i1 %23, label %29, label %24, !dbg !4361

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4362
  br i1 %25, label %29, label %26, !dbg !4365

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4366, !tbaa !888
  %28 = zext i8 %27 to i32, !dbg !4367
  store i32 %28, ptr %6, align 4, !dbg !4368, !tbaa !879
  br label %29, !dbg !4369

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4325
  ret i64 %30, !dbg !4370
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4371 i32 @mbsinit(ptr noundef) local_unnamed_addr #38

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_pipe2(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #10 !dbg !690 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !4377
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !698, metadata !DIExpression()), !dbg !4377
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !699, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4377
  %3 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !4378
  %4 = load <2 x i32>, ptr %0, align 4, !dbg !4379, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 undef, metadata !699, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4377
  %5 = load i32, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4380, !tbaa !879
  %6 = icmp sgt i32 %5, -1, !dbg !4381
  br i1 %6, label %7, label %16, !dbg !4382

7:                                                ; preds = %2
  %8 = tail call i32 @pipe2(ptr noundef nonnull %0, i32 noundef %1) #40, !dbg !4383
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !701, metadata !DIExpression()), !dbg !4384
  %9 = icmp slt i32 %8, 0, !dbg !4385
  br i1 %9, label %10, label %15, !dbg !4387

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #43, !dbg !4388
  %12 = load i32, ptr %11, align 4, !dbg !4388, !tbaa !879
  %13 = icmp eq i32 %12, 38, !dbg !4389
  br i1 %13, label %14, label %15, !dbg !4390

14:                                               ; preds = %10
  store i32 -1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4384, !tbaa !879
  br label %16

15:                                               ; preds = %7, %10
  store i32 1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4384, !tbaa !879
  br label %72

16:                                               ; preds = %14, %2
  %17 = and i32 %1, -526337, !dbg !4391
  %18 = icmp eq i32 %17, 0, !dbg !4393
  br i1 %18, label %21, label %19, !dbg !4394

19:                                               ; preds = %16
  %20 = tail call ptr @__errno_location() #43, !dbg !4395
  store i32 22, ptr %20, align 4, !dbg !4397, !tbaa !879
  br label %72, !dbg !4398

21:                                               ; preds = %16
  %22 = tail call i32 @pipe(ptr noundef nonnull %0) #40, !dbg !4399
  %23 = icmp slt i32 %22, 0, !dbg !4401
  br i1 %23, label %72, label %24, !dbg !4402

24:                                               ; preds = %21
  %25 = and i32 %1, 2048, !dbg !4403
  %26 = icmp eq i32 %25, 0, !dbg !4403
  br i1 %26, label %45, label %27, !dbg !4404

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4, !dbg !4405, !tbaa !879
  %29 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %28, i32 noundef 3, i32 noundef 0) #40, !dbg !4407
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !705, metadata !DIExpression()), !dbg !4408
  %30 = icmp slt i32 %29, 0, !dbg !4409
  br i1 %30, label %65, label %31, !dbg !4410

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4, !dbg !4411, !tbaa !879
  %33 = or i32 %29, 2048, !dbg !4412
  %34 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %32, i32 noundef 4, i32 noundef %33) #40, !dbg !4413
  %35 = icmp eq i32 %34, -1, !dbg !4414
  br i1 %35, label %65, label %36, !dbg !4415

36:                                               ; preds = %31
  %37 = load i32, ptr %0, align 4, !dbg !4416, !tbaa !879
  %38 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %37, i32 noundef 3, i32 noundef 0) #40, !dbg !4417
  tail call void @llvm.dbg.value(metadata i32 %38, metadata !705, metadata !DIExpression()), !dbg !4408
  %39 = icmp slt i32 %38, 0, !dbg !4418
  br i1 %39, label %65, label %40, !dbg !4419

40:                                               ; preds = %36
  %41 = load i32, ptr %0, align 4, !dbg !4420, !tbaa !879
  %42 = or i32 %38, 2048, !dbg !4421
  %43 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %41, i32 noundef 4, i32 noundef %42) #40, !dbg !4422
  %44 = icmp eq i32 %43, -1, !dbg !4423
  br i1 %44, label %65, label %45, !dbg !4424

45:                                               ; preds = %40, %24
  %46 = icmp ult i32 %1, 524288, !dbg !4425
  br i1 %46, label %72, label %47, !dbg !4426

47:                                               ; preds = %45
  %48 = load i32, ptr %3, align 4, !dbg !4427, !tbaa !879
  %49 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %48, i32 noundef 1, i32 noundef 0) #40, !dbg !4429
  tail call void @llvm.dbg.value(metadata i32 %49, metadata !708, metadata !DIExpression()), !dbg !4430
  %50 = icmp slt i32 %49, 0, !dbg !4431
  br i1 %50, label %65, label %51, !dbg !4432

51:                                               ; preds = %47
  %52 = load i32, ptr %3, align 4, !dbg !4433, !tbaa !879
  %53 = or i32 %49, 1, !dbg !4434
  %54 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %52, i32 noundef 2, i32 noundef %53) #40, !dbg !4435
  %55 = icmp eq i32 %54, -1, !dbg !4436
  br i1 %55, label %65, label %56, !dbg !4437

56:                                               ; preds = %51
  %57 = load i32, ptr %0, align 4, !dbg !4438, !tbaa !879
  %58 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %57, i32 noundef 1, i32 noundef 0) #40, !dbg !4439
  tail call void @llvm.dbg.value(metadata i32 %58, metadata !708, metadata !DIExpression()), !dbg !4430
  %59 = icmp slt i32 %58, 0, !dbg !4440
  br i1 %59, label %65, label %60, !dbg !4441

60:                                               ; preds = %56
  %61 = load i32, ptr %0, align 4, !dbg !4442, !tbaa !879
  %62 = or i32 %58, 1, !dbg !4443
  %63 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %62) #40, !dbg !4444
  %64 = icmp eq i32 %63, -1, !dbg !4445
  br i1 %64, label %65, label %72, !dbg !4446

65:                                               ; preds = %60, %47, %51, %56, %40, %27, %31, %36
  call void @llvm.dbg.label(metadata !711), !dbg !4447
  %66 = tail call ptr @__errno_location() #43, !dbg !4448
  %67 = load i32, ptr %66, align 4, !dbg !4448, !tbaa !879
  tail call void @llvm.dbg.value(metadata i32 %67, metadata !712, metadata !DIExpression()), !dbg !4449
  %68 = load i32, ptr %0, align 4, !dbg !4450, !tbaa !879
  %69 = tail call i32 @close(i32 noundef %68) #40, !dbg !4451
  %70 = load i32, ptr %3, align 4, !dbg !4452, !tbaa !879
  %71 = tail call i32 @close(i32 noundef %70) #40, !dbg !4453
  store <2 x i32> %4, ptr %0, align 4, !dbg !4454, !tbaa !879
  store i32 %67, ptr %66, align 4, !dbg !4455, !tbaa !879
  br label %72

72:                                               ; preds = %60, %45, %21, %15, %65, %19
  %73 = phi i32 [ -1, %19 ], [ -1, %65 ], [ %8, %15 ], [ -1, %21 ], [ 0, %45 ], [ 0, %60 ]
  ret i32 %73, !dbg !4456
}

; Function Attrs: nounwind
declare !dbg !4457 i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4458 i32 @pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !4461 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4463, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()), !dbg !4467
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4465, metadata !DIExpression()), !dbg !4467
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !4468
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !4468
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !4466, metadata !DIExpression()), !dbg !4467
  br i1 %5, label %6, label %8, !dbg !4470

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !4471
  store i32 12, ptr %7, align 4, !dbg !4473, !tbaa !879
  br label %12, !dbg !4474

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !4468
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !4466, metadata !DIExpression()), !dbg !4467
  call void @llvm.dbg.value(metadata ptr %0, metadata !4475, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64 %9, metadata !4478, metadata !DIExpression()), !dbg !4479
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !4481
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !4482
  br label %12, !dbg !4483

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !4467
  ret ptr %13, !dbg !4484
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4485 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !4494
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4490, metadata !DIExpression(), metadata !4494, metadata ptr %2, metadata !DIExpression()), !dbg !4495
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4489, metadata !DIExpression()), !dbg !4495
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !4496
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !4497
  %4 = icmp eq i32 %3, 0, !dbg !4497
  br i1 %4, label %5, label %12, !dbg !4499

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4500, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr @.str.141, metadata !4503, metadata !DIExpression()), !dbg !4504
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.141, i64 2), !dbg !4507
  %7 = icmp eq i32 %6, 0, !dbg !4508
  br i1 %7, label %11, label %8, !dbg !4509

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4500, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata ptr @.str.1.142, metadata !4503, metadata !DIExpression()), !dbg !4510
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.142, i64 6), !dbg !4512
  %10 = icmp eq i32 %9, 0, !dbg !4513
  br i1 %10, label %11, label %12, !dbg !4514

11:                                               ; preds = %8, %5
  br label %12, !dbg !4515

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4495
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !4516
  ret i1 %13, !dbg !4516
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4517 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4521, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4522, metadata !DIExpression()), !dbg !4524
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4523, metadata !DIExpression()), !dbg !4524
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !4525
  ret i32 %4, !dbg !4526
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4527 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4531, metadata !DIExpression()), !dbg !4532
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !4533
  ret ptr %2, !dbg !4534
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4535 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4537, metadata !DIExpression()), !dbg !4539
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4540
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4538, metadata !DIExpression()), !dbg !4539
  ret ptr %2, !dbg !4541
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4542 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4544, metadata !DIExpression()), !dbg !4551
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4545, metadata !DIExpression()), !dbg !4551
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4546, metadata !DIExpression()), !dbg !4551
  call void @llvm.dbg.value(metadata i32 %0, metadata !4537, metadata !DIExpression()), !dbg !4552
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !4554
  call void @llvm.dbg.value(metadata ptr %4, metadata !4538, metadata !DIExpression()), !dbg !4552
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4547, metadata !DIExpression()), !dbg !4551
  %5 = icmp eq ptr %4, null, !dbg !4555
  br i1 %5, label %6, label %9, !dbg !4556

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4557
  br i1 %7, label %19, label %8, !dbg !4560

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4561, !tbaa !888
  br label %19, !dbg !4562

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !4563
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !4548, metadata !DIExpression()), !dbg !4564
  %11 = icmp ult i64 %10, %2, !dbg !4565
  br i1 %11, label %12, label %14, !dbg !4567

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4568
  call void @llvm.dbg.value(metadata ptr %1, metadata !4570, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata ptr %4, metadata !4573, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %13, metadata !4574, metadata !DIExpression()), !dbg !4575
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !4577
  br label %19, !dbg !4578

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4579
  br i1 %15, label %19, label %16, !dbg !4582

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4583
  call void @llvm.dbg.value(metadata ptr %1, metadata !4570, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata ptr %4, metadata !4573, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.value(metadata i64 %17, metadata !4574, metadata !DIExpression()), !dbg !4585
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !4587
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4588
  store i8 0, ptr %18, align 1, !dbg !4589, !tbaa !888
  br label %19, !dbg !4590

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4591
  ret i32 %20, !dbg !4592
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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #40 = { nounwind }
attributes #41 = { nounwind willreturn memory(read) }
attributes #42 = { noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }
attributes #44 = { nounwind allocsize(0) }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { cold }
attributes #47 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !295, !299, !314, !659, !374, !719, !722, !724, !391, !726, !412, !426, !477, !728, !736, !651, !742, !777, !779, !781, !783, !785, !787, !789, !675, !694, !791, !793, !795, !797}
!llvm.ident = !{!799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799, !799}
!llvm.module.flags = !{!800, !801, !802, !803, !804, !805, !806, !807}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/yes.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e168110abf014226da6862ea552ec304")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 44, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 40)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 65)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 4)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 50)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 62)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 205, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 1)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 24)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 211, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 14)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 16)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 2)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !54, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !66, file: !67, line: 575, type: !95, isLocal: true, isDefinition: true)
!66 = distinct !DISubprogram(name: "oputs_", scope: !67, file: !67, line: 573, type: !68, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !212)
!67 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!68 = !DISubroutineType(cc: DW_CC_nocall, types: !69)
!69 = !{null, !70, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/yes.o -MD -MP -MF src/.deps/yes.Tpo -c src/yes.c -o src/.yes.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !93, globals: !102, splitDebugInlining: false, nameTableKind: None)
!73 = !{!74, !90}
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
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 81, baseType: !76, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIEnumerator(name: "SPLICE_PIPE_SIZE", value: 524288)
!93 = !{!70, !94, !95, !96, !97, !100, !101}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 18, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!102 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !64, !103, !108, !110, !112, !117, !119, !121, !123, !128, !130, !132, !134, !139, !144, !146, !148, !150, !152, !154, !156, !161, !163, !168, !173, !175, !177, !179, !181, !183, !188, !190, !192, !197, !202, !207}
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !67, line: 585, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 5)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !67, line: 586, type: !105, isLocal: true, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !67, line: 595, type: !19, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !67, line: 620, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 6)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !59, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !67, line: 648, type: !105, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !19, isLocal: true, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !67, line: 649, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 3)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !67, line: 650, type: !105, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !114, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !67, line: 651, type: !114, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !67, line: 652, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 7)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !67, line: 653, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !67, line: 654, type: !39, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !67, line: 655, type: !39, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !67, line: 656, type: !39, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !67, line: 657, type: !39, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !67, line: 663, type: !136, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !67, line: 664, type: !39, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 17)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !67, line: 669, type: !9, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 15)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !67, line: 676, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 61)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !67, line: 679, type: !125, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !67, line: 683, type: !105, isLocal: true, isDefinition: true)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !67, line: 688, type: !105, isLocal: true, isDefinition: true)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !67, line: 691, type: !141, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !67, line: 839, type: !54, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !67, line: 840, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 22)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !67, line: 841, type: !165, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !67, line: 862, type: !19, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !67, line: 868, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 71)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !67, line: 875, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 27)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 51)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !67, line: 877, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 12)
!212 = !{!213, !214, !215, !218, !220, !221, !222, !226, !227, !228, !229, !231, !284, !285, !286, !288, !289}
!213 = !DILocalVariable(name: "program", arg: 1, scope: !66, file: !67, line: 573, type: !70)
!214 = !DILocalVariable(name: "option", arg: 2, scope: !66, file: !67, line: 573, type: !70)
!215 = !DILocalVariable(name: "term", scope: !216, file: !67, line: 585, type: !70)
!216 = distinct !DILexicalBlock(scope: !217, file: !67, line: 582, column: 5)
!217 = distinct !DILexicalBlock(scope: !66, file: !67, line: 581, column: 7)
!218 = !DILocalVariable(name: "double_space", scope: !66, file: !67, line: 594, type: !219)
!219 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!220 = !DILocalVariable(name: "first_word", scope: !66, file: !67, line: 595, type: !70)
!221 = !DILocalVariable(name: "option_text", scope: !66, file: !67, line: 596, type: !70)
!222 = !DILocalVariable(name: "s", scope: !223, file: !67, line: 608, type: !70)
!223 = distinct !DILexicalBlock(scope: !224, file: !67, line: 605, column: 5)
!224 = distinct !DILexicalBlock(scope: !225, file: !67, line: 604, column: 12)
!225 = distinct !DILexicalBlock(scope: !66, file: !67, line: 597, column: 7)
!226 = !DILocalVariable(name: "spaces", scope: !223, file: !67, line: 609, type: !97)
!227 = !DILocalVariable(name: "anchor_len", scope: !66, file: !67, line: 620, type: !97)
!228 = !DILocalVariable(name: "desc_text", scope: !66, file: !67, line: 625, type: !70)
!229 = !DILocalVariable(name: "__ptr", scope: !230, file: !67, line: 644, type: !70)
!230 = distinct !DILexicalBlock(scope: !66, file: !67, line: 644, column: 3)
!231 = !DILocalVariable(name: "__stream", scope: !230, file: !67, line: 644, type: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !235)
!234 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !253, !255, !256, !257, !261, !262, !264, !265, !268, !270, !273, !276, !277, !278, !279, !280}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !235, file: !236, line: 51, baseType: !95, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !235, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !235, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !235, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !235, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !235, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !235, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !235, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !235, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !235, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !235, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !235, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !235, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !236, line: 36, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !235, file: !236, line: 70, baseType: !254, size: 64, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !235, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !235, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !235, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !259, line: 152, baseType: !260)
!259 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!260 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !235, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !235, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!263 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !235, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !235, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !236, line: 43, baseType: null)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !235, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !259, line: 153, baseType: !260)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !235, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !236, line: 37, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !235, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !236, line: 38, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !235, file: !236, line: 93, baseType: !254, size: 64, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !235, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !235, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !235, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !235, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 20)
!284 = !DILocalVariable(name: "__cnt", scope: !230, file: !67, line: 644, type: !97)
!285 = !DILocalVariable(name: "url_program", scope: !66, file: !67, line: 648, type: !70)
!286 = !DILocalVariable(name: "__ptr", scope: !287, file: !67, line: 686, type: !70)
!287 = distinct !DILexicalBlock(scope: !66, file: !67, line: 686, column: 3)
!288 = !DILocalVariable(name: "__stream", scope: !287, file: !67, line: 686, type: !232)
!289 = !DILocalVariable(name: "__cnt", scope: !287, file: !67, line: 686, type: !97)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !292, line: 3, type: !165, isLocal: true, isDefinition: true)
!292 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "Version", scope: !295, file: !292, line: 3, type: !70, isLocal: false, isDefinition: true)
!295 = distinct !DICompileUnit(language: DW_LANG_C11, file: !292, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !296, splitDebugInlining: false, nameTableKind: None)
!296 = !{!290, !293}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "file_name", scope: !299, file: !300, line: 45, type: !70, isLocal: true, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C11, file: !300, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !301, splitDebugInlining: false, nameTableKind: None)
!300 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!301 = !{!302, !304, !306, !308, !297, !310}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !300, line: 121, type: !136, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !300, line: 121, type: !209, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(scope: null, file: !300, line: 123, type: !136, isLocal: true, isDefinition: true)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !300, line: 126, type: !125, isLocal: true, isDefinition: true)
!310 = !DIGlobalVariableExpression(var: !311, expr: !DIExpression())
!311 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !299, file: !300, line: 55, type: !219, isLocal: true, isDefinition: true)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !314, file: !315, line: 66, type: !365, isLocal: false, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C11, file: !315, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !316, globals: !317, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!316 = !{!94, !100}
!317 = !{!318, !320, !344, !346, !348, !350, !312, !352, !354, !356, !358, !363}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !315, line: 272, type: !105, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "old_file_name", scope: !322, file: !315, line: 304, type: !70, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "verror_at_line", scope: !315, file: !315, line: 298, type: !323, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !337)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !95, !95, !70, !76, !70, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 52, baseType: !327)
!326 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !328, line: 12, baseType: !329)
!328 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !315, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !331)
!331 = !{!332, !333, !334, !335, !336}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !330, file: !315, baseType: !94, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !330, file: !315, baseType: !94, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !330, file: !315, baseType: !94, size: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !330, file: !315, baseType: !95, size: 32, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !330, file: !315, baseType: !95, size: 32, offset: 224)
!337 = !{!338, !339, !340, !341, !342, !343}
!338 = !DILocalVariable(name: "status", arg: 1, scope: !322, file: !315, line: 298, type: !95)
!339 = !DILocalVariable(name: "errnum", arg: 2, scope: !322, file: !315, line: 298, type: !95)
!340 = !DILocalVariable(name: "file_name", arg: 3, scope: !322, file: !315, line: 298, type: !70)
!341 = !DILocalVariable(name: "line_number", arg: 4, scope: !322, file: !315, line: 298, type: !76)
!342 = !DILocalVariable(name: "message", arg: 5, scope: !322, file: !315, line: 298, type: !70)
!343 = !DILocalVariable(name: "args", arg: 6, scope: !322, file: !315, line: 298, type: !325)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "old_line_number", scope: !322, file: !315, line: 305, type: !76, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !315, line: 338, type: !19, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !141, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !59, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "error_message_count", scope: !314, file: !315, line: 69, type: !76, isLocal: false, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !314, file: !315, line: 295, type: !95, isLocal: false, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !136, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 21)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !315, line: 214, type: !105, isLocal: true, isDefinition: true)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null}
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !370, file: !371, line: 506, type: !95, isLocal: true, isDefinition: true)
!370 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !371, file: !371, line: 485, type: !372, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !376)
!371 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!372 = !DISubroutineType(types: !373)
!373 = !{!95, !95, !95}
!374 = distinct !DICompileUnit(language: DW_LANG_C11, file: !371, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fcntl.o -MD -MP -MF lib/.deps/libcoreutils_a-fcntl.Tpo -c lib/fcntl.c -o lib/.libcoreutils_a-fcntl.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !375, splitDebugInlining: false, nameTableKind: None)
!375 = !{!368}
!376 = !{!377, !378, !379, !380, !383}
!377 = !DILocalVariable(name: "fd", arg: 1, scope: !370, file: !371, line: 485, type: !95)
!378 = !DILocalVariable(name: "target", arg: 2, scope: !370, file: !371, line: 485, type: !95)
!379 = !DILocalVariable(name: "result", scope: !370, file: !371, line: 487, type: !95)
!380 = !DILocalVariable(name: "flags", scope: !381, file: !371, line: 530, type: !95)
!381 = distinct !DILexicalBlock(scope: !382, file: !371, line: 529, column: 5)
!382 = distinct !DILexicalBlock(scope: !370, file: !371, line: 528, column: 7)
!383 = !DILocalVariable(name: "saved_errno", scope: !384, file: !371, line: 533, type: !95)
!384 = distinct !DILexicalBlock(scope: !385, file: !371, line: 532, column: 9)
!385 = distinct !DILexicalBlock(scope: !381, file: !371, line: 531, column: 11)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !388, line: 60, type: !59, isLocal: true, isDefinition: true)
!388 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "long_options", scope: !391, file: !388, line: 34, type: !400, isLocal: true, isDefinition: true)
!391 = distinct !DICompileUnit(language: DW_LANG_C11, file: !388, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-long-options.o -MD -MP -MF lib/.deps/libcoreutils_a-long-options.Tpo -c lib/long-options.c -o lib/.libcoreutils_a-long-options.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !392, globals: !393, splitDebugInlining: false, nameTableKind: None)
!392 = !{!94}
!393 = !{!386, !394, !396, !398, !389}
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !388, line: 112, type: !34, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !388, line: 36, type: !105, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !388, line: 37, type: !141, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 768, elements: !126)
!401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !403, line: 50, size: 256, elements: !404)
!403 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!404 = !{!405, !406, !407, !409}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !402, file: !403, line: 52, baseType: !70, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !402, file: !403, line: 55, baseType: !95, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !402, file: !403, line: 56, baseType: !408, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !402, file: !403, line: 57, baseType: !95, size: 32, offset: 192)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "program_name", scope: !412, file: !413, line: 31, type: !70, isLocal: false, isDefinition: true)
!412 = distinct !DICompileUnit(language: DW_LANG_C11, file: !413, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !414, globals: !415, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!414 = !{!94, !101}
!415 = !{!410, !416, !418}
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !413, line: 46, type: !141, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !413, line: 49, type: !19, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "utf07FF", scope: !422, file: !423, line: 46, type: !450, isLocal: true, isDefinition: true)
!422 = distinct !DISubprogram(name: "proper_name_lite", scope: !423, file: !423, line: 38, type: !424, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !428)
!423 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!424 = !DISubroutineType(types: !425)
!425 = !{!70, !70, !70}
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !427, splitDebugInlining: false, nameTableKind: None)
!427 = !{!420}
!428 = !{!429, !430, !431, !432, !437}
!429 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !422, file: !423, line: 38, type: !70)
!430 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !422, file: !423, line: 38, type: !70)
!431 = !DILocalVariable(name: "translation", scope: !422, file: !423, line: 40, type: !70)
!432 = !DILocalVariable(name: "w", scope: !422, file: !423, line: 47, type: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !434, line: 37, baseType: !435)
!434 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !259, line: 57, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !76)
!437 = !DILocalVariable(name: "mbs", scope: !422, file: !423, line: 48, type: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !440)
!439 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !442)
!441 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !442, file: !441, line: 15, baseType: !95, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !442, file: !441, line: 20, baseType: !446, size: 32, offset: 32)
!446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !442, file: !441, line: 16, size: 32, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !446, file: !441, line: 18, baseType: !76, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !446, file: !441, line: 19, baseType: !19, size: 32)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 16, elements: !60)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !453, line: 78, type: !141, isLocal: true, isDefinition: true)
!453 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !453, line: 79, type: !114, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !453, line: 80, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 13)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !453, line: 81, type: !458, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !453, line: 82, type: !281, isLocal: true, isDefinition: true)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !453, line: 83, type: !59, isLocal: true, isDefinition: true)
!467 = !DIGlobalVariableExpression(var: !468, expr: !DIExpression())
!468 = distinct !DIGlobalVariable(scope: null, file: !453, line: 84, type: !141, isLocal: true, isDefinition: true)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !453, line: 85, type: !136, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !453, line: 86, type: !136, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !453, line: 87, type: !141, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !477, file: !453, line: 76, type: !563, isLocal: false, isDefinition: true)
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!478 = !{!479, !493, !74}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !480, line: 42, baseType: !76, size: 32, elements: !481)
!480 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!481 = !{!482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!482 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!483 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!484 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!485 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!486 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!487 = !DIEnumerator(name: "c_quoting_style", value: 5)
!488 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!489 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!490 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!491 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!492 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !480, line: 254, baseType: !76, size: 32, elements: !494)
!494 = !{!495, !496, !497}
!495 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!496 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!497 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!498 = !{!94, !95, !96, !97}
!499 = !{!451, !454, !456, !461, !463, !465, !467, !469, !471, !473, !475, !500, !504, !514, !516, !521, !523, !525, !527, !529, !552, !559, !561}
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !477, file: !453, line: 92, type: !502, isLocal: false, isDefinition: true)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 320, elements: !40)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !479)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !477, file: !453, line: 1040, type: !506, isLocal: false, isDefinition: true)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !453, line: 56, size: 448, elements: !507)
!507 = !{!508, !509, !510, !512, !513}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !506, file: !453, line: 59, baseType: !479, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !453, line: 62, baseType: !95, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !506, file: !453, line: 66, baseType: !511, size: 256, offset: 64)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !142)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !506, file: !453, line: 69, baseType: !70, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !506, file: !453, line: 72, baseType: !70, size: 64, offset: 384)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !477, file: !453, line: 107, type: !506, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "slot0", scope: !477, file: !453, line: 831, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 256)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !453, line: 321, type: !59, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !453, line: 357, type: !59, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !453, line: 358, type: !59, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !453, line: 199, type: !136, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(name: "quote", scope: !531, file: !453, line: 228, type: !550, isLocal: true, isDefinition: true)
!531 = distinct !DISubprogram(name: "gettext_quote", scope: !453, file: !453, line: 197, type: !532, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!70, !70, !479}
!534 = !{!535, !536, !537, !538, !539}
!535 = !DILocalVariable(name: "msgid", arg: 1, scope: !531, file: !453, line: 197, type: !70)
!536 = !DILocalVariable(name: "s", arg: 2, scope: !531, file: !453, line: 197, type: !479)
!537 = !DILocalVariable(name: "translation", scope: !531, file: !453, line: 199, type: !70)
!538 = !DILocalVariable(name: "w", scope: !531, file: !453, line: 229, type: !433)
!539 = !DILocalVariable(name: "mbs", scope: !531, file: !453, line: 230, type: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !541)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !542)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !542, file: !441, line: 15, baseType: !95, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !542, file: !441, line: 20, baseType: !546, size: 32, offset: 32)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !441, line: 16, size: 32, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !546, file: !441, line: 18, baseType: !76, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !546, file: !441, line: 19, baseType: !19, size: 32)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !551)
!551 = !{!61, !21}
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "slotvec", scope: !477, file: !453, line: 834, type: !554, isLocal: true, isDefinition: true)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !453, line: 823, size: 128, elements: !556)
!556 = !{!557, !558}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !555, file: !453, line: 825, baseType: !97, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !555, file: !453, line: 826, baseType: !101, size: 64, offset: 64)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "nslots", scope: !477, file: !453, line: 832, type: !95, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "slotvec0", scope: !477, file: !453, line: 833, type: !555, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 704, elements: !565)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!565 = !{!566}
!566 = !DISubrange(count: 11)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !569, line: 67, type: !209, isLocal: true, isDefinition: true)
!569 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !569, line: 69, type: !136, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !569, line: 83, type: !136, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !569, line: 83, type: !19, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !569, line: 85, type: !59, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !569, line: 88, type: !580, isLocal: true, isDefinition: true)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: 171)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !569, line: 88, type: !585, isLocal: true, isDefinition: true)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: 34)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !569, line: 105, type: !54, isLocal: true, isDefinition: true)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(scope: null, file: !569, line: 109, type: !592, isLocal: true, isDefinition: true)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 23)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(scope: null, file: !569, line: 113, type: !597, isLocal: true, isDefinition: true)
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 28)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !569, line: 120, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 32)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !569, line: 127, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 36)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !569, line: 134, type: !9, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !569, line: 142, type: !614, isLocal: true, isDefinition: true)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 44)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !569, line: 150, type: !619, isLocal: true, isDefinition: true)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 48)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !569, line: 159, type: !624, isLocal: true, isDefinition: true)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 52)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !569, line: 170, type: !629, isLocal: true, isDefinition: true)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 60)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !569, line: 248, type: !281, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !569, line: 248, type: !185, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !569, line: 254, type: !281, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !569, line: 254, type: !49, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !569, line: 254, type: !9, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !569, line: 259, type: !3, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !569, line: 259, type: !646, isLocal: true, isDefinition: true)
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !647)
!647 = !{!648}
!648 = !DISubrange(count: 29)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !651, file: !652, line: 26, type: !654, isLocal: false, isDefinition: true)
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !653, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!653 = !{!649}
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 47)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "exit_failure", scope: !659, file: !660, line: 24, type: !662, isLocal: false, isDefinition: true)
!659 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !661, splitDebugInlining: false, nameTableKind: None)
!660 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!661 = !{!657}
!662 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !665, line: 34, type: !125, isLocal: true, isDefinition: true)
!665 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !665, line: 34, type: !136, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !665, line: 34, type: !158, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !672, line: 108, type: !34, isLocal: true, isDefinition: true)
!672 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(name: "internal_state", scope: !675, file: !672, line: 97, type: !678, isLocal: true, isDefinition: true)
!675 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !676, globals: !677, splitDebugInlining: false, nameTableKind: None)
!676 = !{!94, !97, !100}
!677 = !{!670, !673}
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !439, line: 6, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !441, line: 21, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 13, size: 64, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !680, file: !441, line: 15, baseType: !95, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !680, file: !441, line: 20, baseType: !684, size: 32, offset: 32)
!684 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !441, line: 16, size: 32, elements: !685)
!685 = !{!686, !687}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !684, file: !441, line: 18, baseType: !76, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !684, file: !441, line: 19, baseType: !19, size: 32)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(name: "have_pipe2_really", scope: !690, file: !691, line: 54, type: !95, isLocal: true, isDefinition: true)
!690 = distinct !DISubprogram(name: "rpl_pipe2", scope: !691, file: !691, line: 39, type: !692, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !694, retainedNodes: !696)
!691 = !DIFile(filename: "lib/pipe2.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b2941420442dd7afd7b1a45758b7ccee")
!692 = !DISubroutineType(types: !693)
!693 = !{!95, !408, !95}
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-pipe2.o -MD -MP -MF lib/.deps/libcoreutils_a-pipe2.Tpo -c lib/pipe2.c -o lib/.libcoreutils_a-pipe2.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !695, splitDebugInlining: false, nameTableKind: None)
!695 = !{!688}
!696 = !{!697, !698, !699, !701, !705, !708, !711, !712}
!697 = !DILocalVariable(name: "fd", arg: 1, scope: !690, file: !691, line: 39, type: !408)
!698 = !DILocalVariable(name: "flags", arg: 2, scope: !690, file: !691, line: 39, type: !95)
!699 = !DILocalVariable(name: "tmp", scope: !690, file: !691, line: 44, type: !700)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !60)
!701 = !DILocalVariable(name: "result", scope: !702, file: !691, line: 57, type: !95)
!702 = distinct !DILexicalBlock(scope: !703, file: !691, line: 56, column: 7)
!703 = distinct !DILexicalBlock(scope: !704, file: !691, line: 55, column: 9)
!704 = distinct !DILexicalBlock(scope: !690, file: !691, line: 52, column: 3)
!705 = !DILocalVariable(name: "fcntl_flags", scope: !706, file: !691, line: 117, type: !95)
!706 = distinct !DILexicalBlock(scope: !707, file: !691, line: 116, column: 5)
!707 = distinct !DILexicalBlock(scope: !690, file: !691, line: 115, column: 7)
!708 = !DILocalVariable(name: "fcntl_flags", scope: !709, file: !691, line: 128, type: !95)
!709 = distinct !DILexicalBlock(scope: !710, file: !691, line: 127, column: 5)
!710 = distinct !DILexicalBlock(scope: !690, file: !691, line: 126, column: 7)
!711 = !DILabel(scope: !690, name: "fail", file: !691, line: 155)
!712 = !DILocalVariable(name: "saved_errno", scope: !713, file: !691, line: 157, type: !95)
!713 = distinct !DILexicalBlock(scope: !690, file: !691, line: 156, column: 3)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !716, line: 35, type: !59, isLocal: true, isDefinition: true)
!716 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !716, line: 35, type: !114, isLocal: true, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-full-write.o -MD -MP -MF lib/.deps/libcoreutils_a-full-write.Tpo -c lib/full-write.c -o lib/.libcoreutils_a-full-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!721 = !{!70}
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-isapipe.o -MD -MP -MF lib/.deps/libcoreutils_a-isapipe.Tpo -c lib/isapipe.c -o lib/.libcoreutils_a-isapipe.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-pipe2-safer.o -MD -MP -MF lib/.deps/libcoreutils_a-pipe2-safer.Tpo -c lib/pipe2-safer.c -o lib/.libcoreutils_a-pipe2-safer.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-safe-write.o -MD -MP -MF lib/.deps/libcoreutils_a-safe-write.Tpo -c lib/safe-write.c -o lib/.libcoreutils_a-safe-write.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !732, line: 36, baseType: !76, size: 32, elements: !733)
!732 = !DIFile(filename: "lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!733 = !{!734}
!734 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!735 = !{!97}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !569, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !737, retainedTypes: !392, globals: !741, splitDebugInlining: false, nameTableKind: None)
!737 = !{!738}
!738 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !569, line: 40, baseType: !76, size: 32, elements: !739)
!739 = !{!740}
!740 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!741 = !{!567, !570, !572, !574, !576, !578, !583, !588, !590, !595, !600, !605, !610, !612, !617, !622, !627, !632, !634, !636, !638, !640, !642, !644}
!742 = distinct !DICompileUnit(language: DW_LANG_C11, file: !743, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !744, retainedTypes: !776, splitDebugInlining: false, nameTableKind: None)
!743 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!744 = !{!745, !757}
!745 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !746, file: !743, line: 188, baseType: !76, size: 32, elements: !755)
!746 = distinct !DISubprogram(name: "x2nrealloc", scope: !743, file: !743, line: 176, type: !747, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !750)
!747 = !DISubroutineType(types: !748)
!748 = !{!94, !94, !749, !97}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!750 = !{!751, !752, !753, !754}
!751 = !DILocalVariable(name: "p", arg: 1, scope: !746, file: !743, line: 176, type: !94)
!752 = !DILocalVariable(name: "pn", arg: 2, scope: !746, file: !743, line: 176, type: !749)
!753 = !DILocalVariable(name: "s", arg: 3, scope: !746, file: !743, line: 176, type: !97)
!754 = !DILocalVariable(name: "n", scope: !746, file: !743, line: 178, type: !97)
!755 = !{!756}
!756 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!757 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !758, file: !743, line: 228, baseType: !76, size: 32, elements: !755)
!758 = distinct !DISubprogram(name: "xpalloc", scope: !743, file: !743, line: 223, type: !759, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !766)
!759 = !DISubroutineType(types: !760)
!760 = !{!94, !94, !761, !762, !764, !762}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !763, line: 130, baseType: !764)
!763 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !765, line: 18, baseType: !260)
!765 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775}
!767 = !DILocalVariable(name: "pa", arg: 1, scope: !758, file: !743, line: 223, type: !94)
!768 = !DILocalVariable(name: "pn", arg: 2, scope: !758, file: !743, line: 223, type: !761)
!769 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !758, file: !743, line: 223, type: !762)
!770 = !DILocalVariable(name: "n_max", arg: 4, scope: !758, file: !743, line: 223, type: !764)
!771 = !DILocalVariable(name: "s", arg: 5, scope: !758, file: !743, line: 223, type: !762)
!772 = !DILocalVariable(name: "n0", scope: !758, file: !743, line: 230, type: !762)
!773 = !DILocalVariable(name: "n", scope: !758, file: !743, line: 237, type: !762)
!774 = !DILocalVariable(name: "nbytes", scope: !758, file: !743, line: 248, type: !762)
!775 = !DILocalVariable(name: "adjusted_nbytes", scope: !758, file: !743, line: 252, type: !762)
!776 = !{!101, !94}
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !665, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !778, splitDebugInlining: false, nameTableKind: None)
!778 = !{!663, !666, !668}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fd-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-fd-safer-flag.Tpo -c lib/fd-safer-flag.c -o lib/.libcoreutils_a-fd-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-dup-safer-flag.o -MD -MP -MF lib/.deps/libcoreutils_a-dup-safer-flag.Tpo -c lib/dup-safer-flag.c -o lib/.libcoreutils_a-dup-safer-flag.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!793 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !794, splitDebugInlining: false, nameTableKind: None)
!794 = !{!714, !717}
!795 = distinct !DICompileUnit(language: DW_LANG_C11, file: !796, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!796 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!797 = distinct !DICompileUnit(language: DW_LANG_C11, file: !798, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!798 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!799 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!800 = !{i32 7, !"Dwarf Version", i32 5}
!801 = !{i32 2, !"Debug Info Version", i32 3}
!802 = !{i32 1, !"wchar_size", i32 4}
!803 = !{i32 8, !"PIC Level", i32 2}
!804 = !{i32 7, !"PIE Level", i32 2}
!805 = !{i32 7, !"uwtable", i32 2}
!806 = !{i32 7, !"frame-pointer", i32 1}
!807 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!808 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 38, type: !809, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !811)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !95}
!811 = !{!812}
!812 = !DILocalVariable(name: "status", arg: 1, scope: !808, file: !2, line: 38, type: !95)
!813 = !DILocation(line: 0, scope: !808)
!814 = !DILocation(line: 40, column: 14, scope: !815)
!815 = distinct !DILexicalBlock(scope: !808, file: !2, line: 40, column: 7)
!816 = !DILocation(line: 40, column: 7, scope: !808)
!817 = !DILocation(line: 41, column: 5, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !2, line: 41, column: 5)
!819 = !{!820, !820, i64 0}
!820 = !{!"any pointer", !821, i64 0}
!821 = !{!"omnipotent char", !822, i64 0}
!822 = !{!"Simple C/C++ TBAA"}
!823 = !DILocation(line: 44, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !815, file: !2, line: 43, column: 5)
!825 = !DILocation(line: 50, column: 7, scope: !824)
!826 = !DILocation(line: 54, column: 7, scope: !824)
!827 = !DILocation(line: 55, column: 7, scope: !824)
!828 = !DILocalVariable(name: "program", arg: 1, scope: !829, file: !67, line: 836, type: !70)
!829 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !67, file: !67, line: 836, type: !830, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !832)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !70}
!832 = !{!828, !833, !840, !841, !843, !844}
!833 = !DILocalVariable(name: "infomap", scope: !829, file: !67, line: 838, type: !834)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 896, elements: !137)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !829, file: !67, line: 838, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !836, file: !67, line: 838, baseType: !70, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !836, file: !67, line: 838, baseType: !70, size: 64, offset: 64)
!840 = !DILocalVariable(name: "node", scope: !829, file: !67, line: 848, type: !70)
!841 = !DILocalVariable(name: "map_prog", scope: !829, file: !67, line: 849, type: !842)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!843 = !DILocalVariable(name: "lc_messages", scope: !829, file: !67, line: 861, type: !70)
!844 = !DILocalVariable(name: "url_program", scope: !829, file: !67, line: 874, type: !70)
!845 = !DILocation(line: 0, scope: !829, inlinedAt: !846)
!846 = distinct !DILocation(line: 56, column: 7, scope: !824)
!847 = !{}
!848 = !DILocation(line: 857, column: 3, scope: !829, inlinedAt: !846)
!849 = !DILocation(line: 861, column: 29, scope: !829, inlinedAt: !846)
!850 = !DILocation(line: 862, column: 7, scope: !851, inlinedAt: !846)
!851 = distinct !DILexicalBlock(scope: !829, file: !67, line: 862, column: 7)
!852 = !DILocation(line: 862, column: 19, scope: !851, inlinedAt: !846)
!853 = !DILocation(line: 862, column: 22, scope: !851, inlinedAt: !846)
!854 = !DILocation(line: 862, column: 7, scope: !829, inlinedAt: !846)
!855 = !DILocation(line: 868, column: 7, scope: !856, inlinedAt: !846)
!856 = distinct !DILexicalBlock(scope: !851, file: !67, line: 863, column: 5)
!857 = !DILocation(line: 870, column: 5, scope: !856, inlinedAt: !846)
!858 = !DILocation(line: 875, column: 3, scope: !829, inlinedAt: !846)
!859 = !DILocation(line: 877, column: 3, scope: !829, inlinedAt: !846)
!860 = !DILocation(line: 58, column: 3, scope: !808)
!861 = !DISubprogram(name: "dcgettext", scope: !862, file: !862, line: 51, type: !863, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!862 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!863 = !DISubroutineType(types: !864)
!864 = !{!101, !70, !70, !95}
!865 = !DISubprogram(name: "__fprintf_chk", scope: !866, file: !866, line: 93, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!866 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!867 = !DISubroutineType(types: !868)
!868 = !{!95, !869, !95, !870, null}
!869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!870 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!871 = !DISubprogram(name: "__printf_chk", scope: !866, file: !866, line: 95, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!872 = !DISubroutineType(types: !873)
!873 = !{!95, !95, !870, null}
!874 = !DISubprogram(name: "fputs_unlocked", scope: !326, file: !326, line: 691, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!875 = !DISubroutineType(types: !876)
!876 = !{!95, !870, !869}
!877 = !DILocation(line: 0, scope: !66)
!878 = !DILocation(line: 581, column: 7, scope: !217)
!879 = !{!880, !880, i64 0}
!880 = !{!"int", !821, i64 0}
!881 = !DILocation(line: 581, column: 19, scope: !217)
!882 = !DILocation(line: 581, column: 7, scope: !66)
!883 = !DILocation(line: 585, column: 26, scope: !216)
!884 = !DILocation(line: 0, scope: !216)
!885 = !DILocation(line: 586, column: 23, scope: !216)
!886 = !DILocation(line: 586, column: 28, scope: !216)
!887 = !DILocation(line: 586, column: 32, scope: !216)
!888 = !{!821, !821, i64 0}
!889 = !DILocation(line: 586, column: 38, scope: !216)
!890 = !DILocalVariable(name: "__s1", arg: 1, scope: !891, file: !892, line: 1359, type: !70)
!891 = distinct !DISubprogram(name: "streq", scope: !892, file: !892, line: 1359, type: !893, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !895)
!892 = !DIFile(filename: "./lib/string.h", directory: "/src")
!893 = !DISubroutineType(types: !894)
!894 = !{!219, !70, !70}
!895 = !{!890, !896}
!896 = !DILocalVariable(name: "__s2", arg: 2, scope: !891, file: !892, line: 1359, type: !70)
!897 = !DILocation(line: 0, scope: !891, inlinedAt: !898)
!898 = distinct !DILocation(line: 586, column: 41, scope: !216)
!899 = !DILocation(line: 1361, column: 11, scope: !891, inlinedAt: !898)
!900 = !DILocation(line: 1361, column: 10, scope: !891, inlinedAt: !898)
!901 = !DILocation(line: 586, column: 19, scope: !216)
!902 = !DILocation(line: 587, column: 5, scope: !216)
!903 = !DILocation(line: 588, column: 7, scope: !904)
!904 = distinct !DILexicalBlock(scope: !66, file: !67, line: 588, column: 7)
!905 = !DILocation(line: 588, column: 7, scope: !66)
!906 = !DILocation(line: 590, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !67, line: 589, column: 5)
!908 = !DILocation(line: 591, column: 7, scope: !907)
!909 = !DILocation(line: 595, column: 37, scope: !66)
!910 = !DILocation(line: 595, column: 35, scope: !66)
!911 = !DILocation(line: 596, column: 29, scope: !66)
!912 = !DILocation(line: 597, column: 8, scope: !225)
!913 = !DILocation(line: 597, column: 7, scope: !66)
!914 = !DILocation(line: 604, column: 24, scope: !224)
!915 = !DILocation(line: 604, column: 12, scope: !225)
!916 = !DILocation(line: 0, scope: !223)
!917 = !DILocation(line: 610, column: 16, scope: !223)
!918 = !DILocation(line: 610, column: 7, scope: !223)
!919 = !DILocation(line: 611, column: 21, scope: !223)
!920 = !{!921, !921, i64 0}
!921 = !{!"short", !821, i64 0}
!922 = !DILocation(line: 611, column: 19, scope: !223)
!923 = !DILocation(line: 611, column: 16, scope: !223)
!924 = !DILocation(line: 610, column: 30, scope: !223)
!925 = distinct !{!925, !918, !919, !926}
!926 = !{!"llvm.loop.mustprogress"}
!927 = !DILocation(line: 612, column: 18, scope: !928)
!928 = distinct !DILexicalBlock(scope: !223, file: !67, line: 612, column: 11)
!929 = !DILocation(line: 612, column: 11, scope: !223)
!930 = !DILocation(line: 620, column: 23, scope: !66)
!931 = !DILocation(line: 625, column: 39, scope: !66)
!932 = !DILocation(line: 626, column: 3, scope: !66)
!933 = !DILocation(line: 626, column: 10, scope: !66)
!934 = !DILocation(line: 626, column: 21, scope: !66)
!935 = !DILocation(line: 628, column: 44, scope: !936)
!936 = distinct !DILexicalBlock(scope: !937, file: !67, line: 628, column: 11)
!937 = distinct !DILexicalBlock(scope: !66, file: !67, line: 627, column: 5)
!938 = !DILocation(line: 628, column: 32, scope: !936)
!939 = !DILocation(line: 628, column: 49, scope: !936)
!940 = !DILocation(line: 628, column: 11, scope: !937)
!941 = !DILocation(line: 630, column: 11, scope: !942)
!942 = distinct !DILexicalBlock(scope: !937, file: !67, line: 630, column: 11)
!943 = !DILocation(line: 630, column: 11, scope: !937)
!944 = !DILocation(line: 632, column: 26, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !67, line: 632, column: 15)
!946 = distinct !DILexicalBlock(scope: !942, file: !67, line: 631, column: 9)
!947 = !DILocation(line: 632, column: 34, scope: !945)
!948 = !DILocation(line: 632, column: 37, scope: !945)
!949 = !DILocation(line: 632, column: 15, scope: !946)
!950 = !DILocation(line: 640, column: 16, scope: !937)
!951 = distinct !{!951, !932, !952, !926}
!952 = !DILocation(line: 641, column: 5, scope: !66)
!953 = !DILocation(line: 644, column: 3, scope: !66)
!954 = !DILocation(line: 0, scope: !891, inlinedAt: !955)
!955 = distinct !DILocation(line: 648, column: 31, scope: !66)
!956 = !DILocation(line: 0, scope: !891, inlinedAt: !957)
!957 = distinct !DILocation(line: 649, column: 31, scope: !66)
!958 = !DILocation(line: 0, scope: !891, inlinedAt: !959)
!959 = distinct !DILocation(line: 650, column: 31, scope: !66)
!960 = !DILocation(line: 0, scope: !891, inlinedAt: !961)
!961 = distinct !DILocation(line: 651, column: 31, scope: !66)
!962 = !DILocation(line: 0, scope: !891, inlinedAt: !963)
!963 = distinct !DILocation(line: 652, column: 31, scope: !66)
!964 = !DILocation(line: 0, scope: !891, inlinedAt: !965)
!965 = distinct !DILocation(line: 653, column: 31, scope: !66)
!966 = !DILocation(line: 0, scope: !891, inlinedAt: !967)
!967 = distinct !DILocation(line: 654, column: 31, scope: !66)
!968 = !DILocation(line: 0, scope: !891, inlinedAt: !969)
!969 = distinct !DILocation(line: 655, column: 31, scope: !66)
!970 = !DILocation(line: 0, scope: !891, inlinedAt: !971)
!971 = distinct !DILocation(line: 656, column: 31, scope: !66)
!972 = !DILocation(line: 0, scope: !891, inlinedAt: !973)
!973 = distinct !DILocation(line: 657, column: 31, scope: !66)
!974 = !DILocation(line: 663, column: 7, scope: !975)
!975 = distinct !DILexicalBlock(scope: !66, file: !67, line: 663, column: 7)
!976 = !DILocation(line: 664, column: 7, scope: !975)
!977 = !DILocation(line: 664, column: 10, scope: !975)
!978 = !DILocation(line: 663, column: 7, scope: !66)
!979 = !DILocation(line: 669, column: 7, scope: !980)
!980 = distinct !DILexicalBlock(scope: !975, file: !67, line: 665, column: 5)
!981 = !DILocation(line: 671, column: 5, scope: !980)
!982 = !DILocation(line: 676, column: 7, scope: !983)
!983 = distinct !DILexicalBlock(scope: !975, file: !67, line: 673, column: 5)
!984 = !DILocation(line: 679, column: 3, scope: !66)
!985 = !DILocation(line: 683, column: 3, scope: !66)
!986 = !DILocation(line: 686, column: 3, scope: !66)
!987 = !DILocation(line: 688, column: 3, scope: !66)
!988 = !DILocation(line: 691, column: 3, scope: !66)
!989 = !DILocation(line: 695, column: 3, scope: !66)
!990 = !DILocation(line: 696, column: 1, scope: !66)
!991 = !DISubprogram(name: "setlocale", scope: !992, file: !992, line: 122, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!992 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!993 = !DISubroutineType(types: !994)
!994 = !{!101, !95, !70}
!995 = !DISubprogram(name: "strncmp", scope: !996, file: !996, line: 159, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!996 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!997 = !DISubroutineType(types: !998)
!998 = !{!95, !70, !70, !97}
!999 = !DISubprogram(name: "exit", scope: !1000, file: !1000, line: 624, type: !809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1000 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1001 = !DISubprogram(name: "getenv", scope: !1000, file: !1000, line: 641, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!101, !70}
!1004 = !DISubprogram(name: "strcmp", scope: !996, file: !996, line: 156, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!95, !70, !70}
!1007 = !DISubprogram(name: "strspn", scope: !996, file: !996, line: 297, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!99, !70, !70}
!1010 = !DISubprogram(name: "strchr", scope: !996, file: !996, line: 246, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!101, !70, !95}
!1013 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1019 = !DISubprogram(name: "strcspn", scope: !996, file: !996, line: 293, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1020 = !DISubprogram(name: "fwrite_unlocked", scope: !326, file: !326, line: 704, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!97, !1023, !97, !97, !869}
!1023 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1024)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1026 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 201, type: !1027, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1030)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!95, !95, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1040, !1041, !1042, !1044}
!1031 = !DILocalVariable(name: "argc", arg: 1, scope: !1026, file: !2, line: 201, type: !95)
!1032 = !DILocalVariable(name: "argv", arg: 2, scope: !1026, file: !2, line: 201, type: !1029)
!1033 = !DILocalVariable(name: "operands", scope: !1026, file: !2, line: 215, type: !1029)
!1034 = !DILocalVariable(name: "operand_lim", scope: !1026, file: !2, line: 216, type: !1029)
!1035 = !DILocalVariable(name: "bufalloc", scope: !1026, file: !2, line: 222, type: !97)
!1036 = !DILocalVariable(name: "reuse_operand_strings", scope: !1026, file: !2, line: 223, type: !219)
!1037 = !DILocalVariable(name: "operandp", scope: !1026, file: !2, line: 224, type: !1029)
!1038 = !DILocalVariable(name: "operand_len", scope: !1039, file: !2, line: 227, type: !97)
!1039 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 226, column: 5)
!1040 = !DILocalVariable(name: "buf", scope: !1026, file: !2, line: 249, type: !101)
!1041 = !DILocalVariable(name: "bufused", scope: !1026, file: !2, line: 250, type: !97)
!1042 = !DILocalVariable(name: "operand_len", scope: !1043, file: !2, line: 254, type: !97)
!1043 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 253, column: 5)
!1044 = !DILocalVariable(name: "copysize", scope: !1026, file: !2, line: 263, type: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1046, line: 130, baseType: !764)
!1046 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1047 = distinct !DIAssignID()
!1048 = distinct !DIAssignID()
!1049 = !DILocation(line: 0, scope: !1026)
!1050 = !DILocation(line: 204, column: 21, scope: !1026)
!1051 = !DILocation(line: 204, column: 3, scope: !1026)
!1052 = !DILocation(line: 205, column: 3, scope: !1026)
!1053 = !DILocation(line: 206, column: 3, scope: !1026)
!1054 = !DILocation(line: 207, column: 3, scope: !1026)
!1055 = !DILocation(line: 209, column: 3, scope: !1026)
!1056 = !DILocation(line: 212, column: 36, scope: !1026)
!1057 = !DILocation(line: 212, column: 58, scope: !1026)
!1058 = !DILocation(line: 211, column: 3, scope: !1026)
!1059 = !DILocation(line: 215, column: 28, scope: !1026)
!1060 = !DILocation(line: 215, column: 26, scope: !1026)
!1061 = !DILocation(line: 216, column: 29, scope: !1026)
!1062 = !DILocation(line: 217, column: 14, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 217, column: 7)
!1064 = !DILocation(line: 217, column: 7, scope: !1026)
!1065 = !DILocation(line: 218, column: 17, scope: !1063)
!1066 = !DILocation(line: 218, column: 20, scope: !1063)
!1067 = !DILocation(line: 218, column: 5, scope: !1063)
!1068 = !DILocation(line: 227, column: 36, scope: !1039)
!1069 = !DILocation(line: 227, column: 28, scope: !1039)
!1070 = !DILocation(line: 0, scope: !1039)
!1071 = !DILocation(line: 228, column: 16, scope: !1039)
!1072 = !DILocation(line: 229, column: 20, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 229, column: 11)
!1074 = !DILocation(line: 229, column: 24, scope: !1073)
!1075 = !DILocation(line: 230, column: 11, scope: !1073)
!1076 = !DILocation(line: 230, column: 24, scope: !1073)
!1077 = !DILocation(line: 230, column: 38, scope: !1073)
!1078 = !DILocation(line: 230, column: 45, scope: !1073)
!1079 = !DILocation(line: 230, column: 42, scope: !1073)
!1080 = !DILocation(line: 229, column: 11, scope: !1039)
!1081 = !DILocation(line: 228, column: 31, scope: !1039)
!1082 = !DILocation(line: 236, column: 16, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 236, column: 7)
!1084 = !DILocation(line: 236, column: 7, scope: !1026)
!1085 = !DILocation(line: 272, column: 37, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 270, column: 5)
!1087 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 268, column: 7)
!1088 = !DILocation(line: 249, column: 15, scope: !1026)
!1089 = !DILocation(line: 249, column: 51, scope: !1026)
!1090 = !DILocation(line: 252, column: 3, scope: !1026)
!1091 = !DILocation(line: 254, column: 36, scope: !1043)
!1092 = !DILocation(line: 254, column: 28, scope: !1043)
!1093 = !DILocation(line: 0, scope: !1043)
!1094 = !DILocation(line: 255, column: 11, scope: !1043)
!1095 = !DILocation(line: 256, column: 21, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 255, column: 11)
!1097 = !DILocalVariable(name: "__dest", arg: 1, scope: !1098, file: !1099, line: 26, type: !1102)
!1098 = distinct !DISubprogram(name: "memcpy", scope: !1099, file: !1099, line: 26, type: !1100, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1103)
!1099 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!94, !1102, !1023, !97}
!1102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!1103 = !{!1097, !1104, !1105}
!1104 = !DILocalVariable(name: "__src", arg: 2, scope: !1098, file: !1099, line: 26, type: !1023)
!1105 = !DILocalVariable(name: "__len", arg: 3, scope: !1098, file: !1099, line: 26, type: !97)
!1106 = !DILocation(line: 0, scope: !1098, inlinedAt: !1107)
!1107 = distinct !DILocation(line: 256, column: 9, scope: !1096)
!1108 = !DILocation(line: 29, column: 10, scope: !1098, inlinedAt: !1107)
!1109 = !DILocation(line: 256, column: 9, scope: !1096)
!1110 = !DILocation(line: 257, column: 15, scope: !1043)
!1111 = !DILocation(line: 258, column: 18, scope: !1043)
!1112 = !DILocation(line: 258, column: 7, scope: !1043)
!1113 = !DILocation(line: 258, column: 22, scope: !1043)
!1114 = !DILocation(line: 260, column: 10, scope: !1026)
!1115 = !DILocation(line: 260, column: 21, scope: !1026)
!1116 = !DILocation(line: 259, column: 5, scope: !1043)
!1117 = distinct !{!1117, !1090, !1118, !926}
!1118 = !DILocation(line: 260, column: 34, scope: !1026)
!1119 = !DILocation(line: 261, column: 20, scope: !1026)
!1120 = !DILocation(line: 268, column: 7, scope: !1087)
!1121 = !DILocation(line: 268, column: 49, scope: !1087)
!1122 = !DILocation(line: 269, column: 7, scope: !1087)
!1123 = !DILocalVariable(name: "pipefd", scope: !1124, file: !2, line: 123, type: !700)
!1124 = distinct !DISubprogram(name: "splice_write", scope: !2, file: !2, line: 113, type: !1125, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1127)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!219, !70, !1045}
!1127 = !{!1128, !1129, !1130, !1131, !1132, !1123, !1133, !1134, !1135, !1136, !1145, !1147, !1150, !1153, !1155, !1156}
!1128 = !DILocalVariable(name: "buf", arg: 1, scope: !1124, file: !2, line: 113, type: !70)
!1129 = !DILocalVariable(name: "copysize", arg: 2, scope: !1124, file: !2, line: 113, type: !1045)
!1130 = !DILocalVariable(name: "output_started", scope: !1124, file: !2, line: 115, type: !219)
!1131 = !DILocalVariable(name: "page_size", scope: !1124, file: !2, line: 117, type: !1045)
!1132 = !DILocalVariable(name: "stdout_is_pipe", scope: !1124, file: !2, line: 119, type: !219)
!1133 = !DILocalVariable(name: "splice_bufsize", scope: !1124, file: !2, line: 124, type: !1045)
!1134 = !DILocalVariable(name: "splice_buf", scope: !1124, file: !2, line: 125, type: !101)
!1135 = !DILocalVariable(name: "vmsplice_fd", scope: !1124, file: !2, line: 149, type: !95)
!1136 = !DILocalVariable(name: "iov", scope: !1137, file: !2, line: 153, type: !1140)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !2, line: 152, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !2, line: 151, column: 3)
!1139 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 151, column: 3)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1141, line: 26, size: 128, elements: !1142)
!1141 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1140, file: !1141, line: 28, baseType: !94, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1140, file: !1141, line: 29, baseType: !97, size: 64, offset: 64)
!1145 = !DILocalVariable(name: "flags", scope: !1146, file: !2, line: 161, type: !76)
!1146 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 157, column: 9)
!1147 = !DILocalVariable(name: "n", scope: !1146, file: !2, line: 162, type: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !326, line: 77, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !259, line: 194, baseType: !260)
!1150 = !DILocalVariable(name: "remaining", scope: !1151, file: !2, line: 174, type: !1045)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 173, column: 9)
!1152 = distinct !DILexicalBlock(scope: !1137, file: !2, line: 172, column: 11)
!1153 = !DILocalVariable(name: "s", scope: !1154, file: !2, line: 177, type: !1148)
!1154 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 176, column: 13)
!1155 = !DILabel(scope: !1124, name: "done", file: !2, line: 187)
!1156 = !DILocalVariable(name: "saved_errno", scope: !1157, file: !2, line: 190, type: !95)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !2, line: 189, column: 5)
!1158 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 188, column: 7)
!1159 = !DILocation(line: 0, scope: !1124, inlinedAt: !1160)
!1160 = distinct !DILocation(line: 269, column: 10, scope: !1087)
!1161 = !DILocation(line: 0, scope: !1137, inlinedAt: !1160)
!1162 = !DILocation(line: 117, column: 21, scope: !1124, inlinedAt: !1160)
!1163 = !DILocation(line: 119, column: 25, scope: !1124, inlinedAt: !1160)
!1164 = !DILocation(line: 119, column: 49, scope: !1124, inlinedAt: !1160)
!1165 = !DILocation(line: 123, column: 3, scope: !1124, inlinedAt: !1160)
!1166 = !DILocation(line: 123, column: 7, scope: !1124, inlinedAt: !1160)
!1167 = distinct !DIAssignID()
!1168 = !DILocation(line: 127, column: 7, scope: !1124, inlinedAt: !1160)
!1169 = !DILocalVariable(name: "fd", arg: 1, scope: !1170, file: !2, line: 89, type: !95)
!1170 = distinct !DISubprogram(name: "pipe_splice_size", scope: !2, file: !2, line: 89, type: !1171, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1173)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!1045, !95, !1045}
!1173 = !{!1169, !1174, !1175, !1176}
!1174 = !DILocalVariable(name: "copysize", arg: 2, scope: !1170, file: !2, line: 89, type: !1045)
!1175 = !DILocalVariable(name: "pipe_cap", scope: !1170, file: !2, line: 91, type: !95)
!1176 = !DILocalVariable(name: "buf_cap", scope: !1170, file: !2, line: 99, type: !97)
!1177 = !DILocation(line: 0, scope: !1170, inlinedAt: !1178)
!1178 = distinct !DILocation(line: 128, column: 22, scope: !1179, inlinedAt: !1160)
!1179 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 127, column: 7)
!1180 = !DILocation(line: 93, column: 19, scope: !1181, inlinedAt: !1178)
!1181 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 93, column: 7)
!1182 = !DILocation(line: 93, column: 63, scope: !1181, inlinedAt: !1178)
!1183 = !DILocation(line: 93, column: 7, scope: !1170, inlinedAt: !1178)
!1184 = !DILocation(line: 94, column: 16, scope: !1181, inlinedAt: !1178)
!1185 = !DILocation(line: 94, column: 5, scope: !1181, inlinedAt: !1178)
!1186 = !DILocation(line: 131, column: 11, scope: !1187, inlinedAt: !1160)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !2, line: 131, column: 11)
!1188 = distinct !DILexicalBlock(scope: !1179, file: !2, line: 130, column: 5)
!1189 = !DILocation(line: 131, column: 29, scope: !1187, inlinedAt: !1160)
!1190 = !DILocation(line: 131, column: 11, scope: !1188, inlinedAt: !1160)
!1191 = !DILocation(line: 198, column: 1, scope: !1124, inlinedAt: !1160)
!1192 = !DILocation(line: 268, column: 7, scope: !1026)
!1193 = !DILocation(line: 133, column: 42, scope: !1188, inlinedAt: !1160)
!1194 = !DILocation(line: 0, scope: !1170, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 133, column: 24, scope: !1188, inlinedAt: !1160)
!1196 = !DILocation(line: 93, column: 19, scope: !1181, inlinedAt: !1195)
!1197 = !DILocation(line: 93, column: 63, scope: !1181, inlinedAt: !1195)
!1198 = !DILocation(line: 93, column: 7, scope: !1170, inlinedAt: !1195)
!1199 = !DILocation(line: 94, column: 16, scope: !1181, inlinedAt: !1195)
!1200 = !DILocation(line: 94, column: 5, scope: !1181, inlinedAt: !1195)
!1201 = !DILocation(line: 96, column: 16, scope: !1202, inlinedAt: !1203)
!1202 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 96, column: 7)
!1203 = distinct !DILocation(line: 0, scope: !1179, inlinedAt: !1160)
!1204 = !DILocation(line: 99, column: 29, scope: !1170, inlinedAt: !1203)
!1205 = !DILocation(line: 99, column: 20, scope: !1170, inlinedAt: !1203)
!1206 = !DILocation(line: 100, column: 29, scope: !1170, inlinedAt: !1203)
!1207 = !DILocation(line: 136, column: 22, scope: !1208, inlinedAt: !1160)
!1208 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 136, column: 7)
!1209 = !DILocation(line: 136, column: 7, scope: !1124, inlinedAt: !1160)
!1210 = !DILocalVariable(name: "alignment", arg: 1, scope: !1211, file: !1212, line: 90, type: !1045)
!1211 = distinct !DISubprogram(name: "alignalloc", scope: !1212, file: !1212, line: 90, type: !1213, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1215)
!1212 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!94, !1045, !1045}
!1215 = !{!1210, !1216}
!1216 = !DILocalVariable(name: "size", arg: 2, scope: !1211, file: !1212, line: 90, type: !1045)
!1217 = !DILocation(line: 0, scope: !1211, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 141, column: 23, scope: !1219, inlinedAt: !1160)
!1219 = distinct !DILexicalBlock(scope: !1124, file: !2, line: 141, column: 7)
!1220 = !DILocation(line: 98, column: 10, scope: !1211, inlinedAt: !1218)
!1221 = !DILocation(line: 141, column: 21, scope: !1219, inlinedAt: !1160)
!1222 = !DILocation(line: 141, column: 7, scope: !1124, inlinedAt: !1160)
!1223 = !DILocalVariable(name: "dest", arg: 1, scope: !1224, file: !2, line: 65, type: !101)
!1224 = distinct !DISubprogram(name: "repeat_pattern", scope: !2, file: !2, line: 65, type: !1225, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1227)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !101, !70, !1045, !1045}
!1227 = !{!1223, !1228, !1229, !1230, !1231, !1233}
!1228 = !DILocalVariable(name: "src", arg: 2, scope: !1224, file: !2, line: 65, type: !70)
!1229 = !DILocalVariable(name: "srcsize", arg: 3, scope: !1224, file: !2, line: 65, type: !1045)
!1230 = !DILocalVariable(name: "bufsize", arg: 4, scope: !1224, file: !2, line: 65, type: !1045)
!1231 = !DILocalVariable(name: "filled", scope: !1232, file: !2, line: 69, type: !1045)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 69, column: 3)
!1233 = !DILocalVariable(name: "chunk", scope: !1234, file: !2, line: 71, type: !1045)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !2, line: 70, column: 5)
!1235 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 69, column: 3)
!1236 = !DILocation(line: 0, scope: !1224, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 144, column: 3, scope: !1124, inlinedAt: !1160)
!1238 = !DILocation(line: 67, column: 12, scope: !1239, inlinedAt: !1237)
!1239 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 67, column: 7)
!1240 = !DILocation(line: 67, column: 7, scope: !1224, inlinedAt: !1237)
!1241 = !DILocation(line: 0, scope: !1098, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 68, column: 5, scope: !1239, inlinedAt: !1237)
!1243 = !DILocation(line: 29, column: 10, scope: !1098, inlinedAt: !1242)
!1244 = !DILocation(line: 68, column: 5, scope: !1239, inlinedAt: !1237)
!1245 = !DILocation(line: 0, scope: !1232, inlinedAt: !1237)
!1246 = !DILocation(line: 69, column: 39, scope: !1235, inlinedAt: !1237)
!1247 = !DILocation(line: 69, column: 3, scope: !1232, inlinedAt: !1237)
!1248 = !DILocation(line: 71, column: 21, scope: !1234, inlinedAt: !1237)
!1249 = !DILocation(line: 0, scope: !1234, inlinedAt: !1237)
!1250 = !DILocation(line: 72, column: 20, scope: !1234, inlinedAt: !1237)
!1251 = !DILocation(line: 0, scope: !1098, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 72, column: 7, scope: !1234, inlinedAt: !1237)
!1253 = !DILocation(line: 29, column: 10, scope: !1098, inlinedAt: !1252)
!1254 = !DILocation(line: 73, column: 14, scope: !1234, inlinedAt: !1237)
!1255 = distinct !{!1255, !1247, !1256, !926}
!1256 = !DILocation(line: 74, column: 5, scope: !1232, inlinedAt: !1237)
!1257 = !DILocation(line: 149, column: 21, scope: !1124, inlinedAt: !1160)
!1258 = !DILocation(line: 151, column: 3, scope: !1124, inlinedAt: !1160)
!1259 = !DILocation(line: 153, column: 7, scope: !1137, inlinedAt: !1160)
!1260 = !DILocation(line: 153, column: 26, scope: !1137, inlinedAt: !1160)
!1261 = !{!1262, !820, i64 0}
!1262 = !{!"iovec", !820, i64 0, !1263, i64 8}
!1263 = !{!"long", !821, i64 0}
!1264 = distinct !DIAssignID()
!1265 = distinct !DIAssignID()
!1266 = !{!1262, !1263, i64 8}
!1267 = !DILocation(line: 156, column: 7, scope: !1137, inlinedAt: !1160)
!1268 = !DILocation(line: 165, column: 15, scope: !1146, inlinedAt: !1160)
!1269 = !DILocation(line: 167, column: 39, scope: !1146, inlinedAt: !1160)
!1270 = !DILocation(line: 167, column: 48, scope: !1146, inlinedAt: !1160)
!1271 = !DILocation(line: 167, column: 24, scope: !1146, inlinedAt: !1160)
!1272 = distinct !DIAssignID()
!1273 = !DILocation(line: 168, column: 23, scope: !1146, inlinedAt: !1160)
!1274 = !DILocation(line: 156, column: 26, scope: !1137, inlinedAt: !1160)
!1275 = !DILocation(line: 161, column: 44, scope: !1146, inlinedAt: !1160)
!1276 = !DILocation(line: 161, column: 32, scope: !1146, inlinedAt: !1160)
!1277 = !DILocation(line: 0, scope: !1146, inlinedAt: !1160)
!1278 = !DILocation(line: 162, column: 23, scope: !1146, inlinedAt: !1160)
!1279 = !DILocation(line: 163, column: 17, scope: !1280, inlinedAt: !1160)
!1280 = distinct !DILexicalBlock(scope: !1146, file: !2, line: 163, column: 15)
!1281 = !DILocation(line: 163, column: 15, scope: !1146, inlinedAt: !1160)
!1282 = distinct !{!1282, !1267, !1283, !926}
!1283 = !DILocation(line: 169, column: 9, scope: !1137, inlinedAt: !1160)
!1284 = !DILocation(line: 185, column: 5, scope: !1138, inlinedAt: !1160)
!1285 = !DILocation(line: 172, column: 11, scope: !1137, inlinedAt: !1160)
!1286 = !DILocation(line: 0, scope: !1151, inlinedAt: !1160)
!1287 = !DILocation(line: 177, column: 35, scope: !1154, inlinedAt: !1160)
!1288 = !DILocation(line: 177, column: 27, scope: !1154, inlinedAt: !1160)
!1289 = !DILocation(line: 0, scope: !1154, inlinedAt: !1160)
!1290 = !DILocation(line: 179, column: 21, scope: !1291, inlinedAt: !1160)
!1291 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 179, column: 19)
!1292 = distinct !{!1292, !1293, !1294, !926}
!1293 = !DILocation(line: 175, column: 11, scope: !1151, inlinedAt: !1160)
!1294 = !DILocation(line: 183, column: 13, scope: !1151, inlinedAt: !1160)
!1295 = !DILocation(line: 179, column: 19, scope: !1154, inlinedAt: !1160)
!1296 = !DILocation(line: 175, column: 28, scope: !1151, inlinedAt: !1160)
!1297 = distinct !{!1297, !1293, !1294, !926, !1298}
!1298 = !{!"llvm.loop.peeled.count", i32 1}
!1299 = distinct !{!1299, !1293, !1294, !926}
!1300 = !DILocation(line: 188, column: 7, scope: !1158, inlinedAt: !1160)
!1301 = !DILocation(line: 187, column: 1, scope: !1124, inlinedAt: !1160)
!1302 = !DILocation(line: 188, column: 17, scope: !1158, inlinedAt: !1160)
!1303 = !DILocation(line: 188, column: 7, scope: !1124, inlinedAt: !1160)
!1304 = !DILocation(line: 190, column: 25, scope: !1157, inlinedAt: !1160)
!1305 = !DILocation(line: 0, scope: !1157, inlinedAt: !1160)
!1306 = !DILocation(line: 191, column: 7, scope: !1157, inlinedAt: !1160)
!1307 = !DILocation(line: 192, column: 14, scope: !1157, inlinedAt: !1160)
!1308 = !DILocation(line: 192, column: 7, scope: !1157, inlinedAt: !1160)
!1309 = !DILocation(line: 193, column: 13, scope: !1157, inlinedAt: !1160)
!1310 = !DILocation(line: 194, column: 5, scope: !1157, inlinedAt: !1160)
!1311 = !DILocalVariable(name: "ptr", arg: 1, scope: !1312, file: !1212, line: 75, type: !94)
!1312 = distinct !DISubprogram(name: "alignfree", scope: !1212, file: !1212, line: 75, type: !1313, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1315)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !94}
!1315 = !{!1311}
!1316 = !DILocation(line: 0, scope: !1312, inlinedAt: !1317)
!1317 = distinct !DILocation(line: 195, column: 3, scope: !1124, inlinedAt: !1160)
!1318 = !DILocation(line: 77, column: 3, scope: !1312, inlinedAt: !1317)
!1319 = !DILocation(line: 273, column: 19, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 273, column: 11)
!1321 = !DILocation(line: 0, scope: !1224, inlinedAt: !1322)
!1322 = distinct !DILocation(line: 274, column: 9, scope: !1320)
!1323 = !DILocation(line: 0, scope: !1232, inlinedAt: !1322)
!1324 = !DILocation(line: 273, column: 11, scope: !1086)
!1325 = !DILocation(line: 69, column: 3, scope: !1232, inlinedAt: !1322)
!1326 = !DILocation(line: 71, column: 21, scope: !1234, inlinedAt: !1322)
!1327 = !DILocation(line: 0, scope: !1234, inlinedAt: !1322)
!1328 = !DILocation(line: 72, column: 20, scope: !1234, inlinedAt: !1322)
!1329 = !DILocation(line: 0, scope: !1098, inlinedAt: !1330)
!1330 = distinct !DILocation(line: 72, column: 7, scope: !1234, inlinedAt: !1322)
!1331 = !DILocation(line: 29, column: 10, scope: !1098, inlinedAt: !1330)
!1332 = !DILocation(line: 73, column: 14, scope: !1234, inlinedAt: !1322)
!1333 = !DILocation(line: 69, column: 39, scope: !1235, inlinedAt: !1322)
!1334 = distinct !{!1334, !1325, !1335, !926}
!1335 = !DILocation(line: 74, column: 5, scope: !1232, inlinedAt: !1322)
!1336 = !DILocation(line: 275, column: 7, scope: !1086)
!1337 = !DILocation(line: 275, column: 14, scope: !1086)
!1338 = !DILocation(line: 275, column: 55, scope: !1086)
!1339 = distinct !{!1339, !1336, !1340, !926}
!1340 = !DILocation(line: 276, column: 9, scope: !1086)
!1341 = !DILocation(line: 279, column: 3, scope: !1026)
!1342 = !DILocation(line: 280, column: 3, scope: !1026)
!1343 = !DISubprogram(name: "bindtextdomain", scope: !862, file: !862, line: 86, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!101, !70, !70}
!1346 = !DISubprogram(name: "textdomain", scope: !862, file: !862, line: 82, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1347 = !DISubprogram(name: "atexit", scope: !1000, file: !1000, line: 602, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!95, !365}
!1350 = !DISubprogram(name: "strlen", scope: !996, file: !996, line: 407, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!99, !70}
!1353 = !DISubprogram(name: "getpagesize", scope: !1354, file: !1354, line: 1011, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1354 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!95}
!1357 = !DISubprogram(name: "aligned_alloc", scope: !1000, file: !1000, line: 592, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!94, !97, !97}
!1360 = !DISubprogram(name: "vmsplice", scope: !1361, file: !1361, line: 414, type: !1362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1361 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/fcntl-linux.h", directory: "", checksumkind: CSK_MD5, checksum: "1c3bf9fc3309d17651ecfc421f385bcf")
!1362 = !DISubroutineType(types: !1363)
!1363 = !{!1149, !95, !1364, !97, !76}
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1366 = !DISubprogram(name: "splice", scope: !1361, file: !1361, line: 421, type: !1367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1149, !95, !1369, !95, !1369, !97, !76}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1370 = !DISubprogram(name: "__errno_location", scope: !1371, file: !1371, line: 37, type: !1372, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1371 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!408}
!1374 = !DISubprogram(name: "close", scope: !1354, file: !1354, line: 358, type: !1375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!95, !95}
!1377 = !DISubprogram(name: "free", scope: !1000, file: !1000, line: 555, type: !1313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1378 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !300, file: !300, line: 50, type: !830, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1379)
!1379 = !{!1380}
!1380 = !DILocalVariable(name: "file", arg: 1, scope: !1378, file: !300, line: 50, type: !70)
!1381 = !DILocation(line: 0, scope: !1378)
!1382 = !DILocation(line: 52, column: 13, scope: !1378)
!1383 = !DILocation(line: 53, column: 1, scope: !1378)
!1384 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !300, file: !300, line: 87, type: !1385, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1387)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{null, !219}
!1387 = !{!1388}
!1388 = !DILocalVariable(name: "ignore", arg: 1, scope: !1384, file: !300, line: 87, type: !219)
!1389 = !DILocation(line: 0, scope: !1384)
!1390 = !DILocation(line: 89, column: 16, scope: !1384)
!1391 = !{!1392, !1392, i64 0}
!1392 = !{!"_Bool", !821, i64 0}
!1393 = !DILocation(line: 90, column: 1, scope: !1384)
!1394 = distinct !DISubprogram(name: "close_stdout", scope: !300, file: !300, line: 116, type: !366, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1395)
!1395 = !{!1396}
!1396 = !DILocalVariable(name: "write_error", scope: !1397, file: !300, line: 121, type: !70)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !300, line: 120, column: 5)
!1398 = distinct !DILexicalBlock(scope: !1394, file: !300, line: 118, column: 7)
!1399 = !DILocation(line: 118, column: 21, scope: !1398)
!1400 = !DILocation(line: 118, column: 7, scope: !1398)
!1401 = !DILocation(line: 118, column: 29, scope: !1398)
!1402 = !DILocation(line: 119, column: 7, scope: !1398)
!1403 = !DILocation(line: 119, column: 12, scope: !1398)
!1404 = !{i8 0, i8 2}
!1405 = !DILocation(line: 119, column: 25, scope: !1398)
!1406 = !DILocation(line: 119, column: 28, scope: !1398)
!1407 = !DILocation(line: 119, column: 34, scope: !1398)
!1408 = !DILocation(line: 118, column: 7, scope: !1394)
!1409 = !DILocation(line: 121, column: 33, scope: !1397)
!1410 = !DILocation(line: 0, scope: !1397)
!1411 = !DILocation(line: 122, column: 11, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1397, file: !300, line: 122, column: 11)
!1413 = !DILocation(line: 0, scope: !1412)
!1414 = !DILocation(line: 122, column: 11, scope: !1397)
!1415 = !DILocation(line: 123, column: 9, scope: !1412)
!1416 = !DILocation(line: 126, column: 9, scope: !1412)
!1417 = !DILocation(line: 128, column: 14, scope: !1397)
!1418 = !DILocation(line: 128, column: 7, scope: !1397)
!1419 = !DILocation(line: 133, column: 42, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1394, file: !300, line: 133, column: 7)
!1421 = !DILocation(line: 133, column: 28, scope: !1420)
!1422 = !DILocation(line: 133, column: 50, scope: !1420)
!1423 = !DILocation(line: 133, column: 7, scope: !1394)
!1424 = !DILocation(line: 134, column: 12, scope: !1420)
!1425 = !DILocation(line: 134, column: 5, scope: !1420)
!1426 = !DILocation(line: 135, column: 1, scope: !1394)
!1427 = !DISubprogram(name: "_exit", scope: !1354, file: !1354, line: 624, type: !809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1428 = distinct !DISubprogram(name: "verror", scope: !315, file: !315, line: 251, type: !1429, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1431)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !95, !95, !70, !325}
!1431 = !{!1432, !1433, !1434, !1435}
!1432 = !DILocalVariable(name: "status", arg: 1, scope: !1428, file: !315, line: 251, type: !95)
!1433 = !DILocalVariable(name: "errnum", arg: 2, scope: !1428, file: !315, line: 251, type: !95)
!1434 = !DILocalVariable(name: "message", arg: 3, scope: !1428, file: !315, line: 251, type: !70)
!1435 = !DILocalVariable(name: "args", arg: 4, scope: !1428, file: !315, line: 251, type: !325)
!1436 = !DILocation(line: 0, scope: !1428)
!1437 = !DILocation(line: 261, column: 3, scope: !1428)
!1438 = !DILocation(line: 265, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1428, file: !315, line: 265, column: 7)
!1440 = !DILocation(line: 265, column: 7, scope: !1428)
!1441 = !DILocation(line: 266, column: 5, scope: !1439)
!1442 = !DILocation(line: 272, column: 7, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1439, file: !315, line: 268, column: 5)
!1444 = !DILocation(line: 276, column: 3, scope: !1428)
!1445 = !{i64 0, i64 8, !819, i64 8, i64 8, !819, i64 16, i64 8, !819, i64 24, i64 4, !879, i64 28, i64 4, !879}
!1446 = !DILocation(line: 282, column: 1, scope: !1428)
!1447 = distinct !DISubprogram(name: "flush_stdout", scope: !315, file: !315, line: 163, type: !366, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1448)
!1448 = !{!1449}
!1449 = !DILocalVariable(name: "stdout_fd", scope: !1447, file: !315, line: 166, type: !95)
!1450 = !DILocation(line: 0, scope: !1447)
!1451 = !DILocalVariable(name: "fd", arg: 1, scope: !1452, file: !315, line: 145, type: !95)
!1452 = distinct !DISubprogram(name: "is_open", scope: !315, file: !315, line: 145, type: !1375, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1453)
!1453 = !{!1451}
!1454 = !DILocation(line: 0, scope: !1452, inlinedAt: !1455)
!1455 = distinct !DILocation(line: 182, column: 25, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1447, file: !315, line: 182, column: 7)
!1457 = !DILocation(line: 157, column: 15, scope: !1452, inlinedAt: !1455)
!1458 = !DILocation(line: 157, column: 12, scope: !1452, inlinedAt: !1455)
!1459 = !DILocation(line: 182, column: 7, scope: !1447)
!1460 = !DILocation(line: 184, column: 5, scope: !1456)
!1461 = !DILocation(line: 185, column: 1, scope: !1447)
!1462 = distinct !DISubprogram(name: "error_tail", scope: !315, file: !315, line: 219, type: !1429, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1463)
!1463 = !{!1464, !1465, !1466, !1467}
!1464 = !DILocalVariable(name: "status", arg: 1, scope: !1462, file: !315, line: 219, type: !95)
!1465 = !DILocalVariable(name: "errnum", arg: 2, scope: !1462, file: !315, line: 219, type: !95)
!1466 = !DILocalVariable(name: "message", arg: 3, scope: !1462, file: !315, line: 219, type: !70)
!1467 = !DILocalVariable(name: "args", arg: 4, scope: !1462, file: !315, line: 219, type: !325)
!1468 = distinct !DIAssignID()
!1469 = !DILocation(line: 0, scope: !1462)
!1470 = !DILocation(line: 229, column: 13, scope: !1462)
!1471 = !DILocation(line: 135, column: 10, scope: !1472, inlinedAt: !1514)
!1472 = distinct !DISubprogram(name: "vfprintf", scope: !866, file: !866, line: 132, type: !1473, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1510)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!95, !1475, !870, !327}
!1475 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1478, file: !236, line: 51, baseType: !95, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1478, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1478, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1478, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1478, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1478, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1478, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1478, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1478, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1478, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1478, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1478, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1478, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1478, file: !236, line: 70, baseType: !1494, size: 64, offset: 832)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1478, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1478, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1478, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1478, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1478, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1478, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1478, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1478, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1478, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1478, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1478, file: !236, line: 93, baseType: !1494, size: 64, offset: 1344)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1478, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1478, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1478, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1478, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!1510 = !{!1511, !1512, !1513}
!1511 = !DILocalVariable(name: "__stream", arg: 1, scope: !1472, file: !866, line: 132, type: !1475)
!1512 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1472, file: !866, line: 133, type: !870)
!1513 = !DILocalVariable(name: "__ap", arg: 3, scope: !1472, file: !866, line: 133, type: !327)
!1514 = distinct !DILocation(line: 229, column: 3, scope: !1462)
!1515 = !{!1516, !1518}
!1516 = distinct !{!1516, !1517, !"vfprintf.inline: argument 0"}
!1517 = distinct !{!1517, !"vfprintf.inline"}
!1518 = distinct !{!1518, !1517, !"vfprintf.inline: argument 1"}
!1519 = !DILocation(line: 229, column: 3, scope: !1462)
!1520 = !DILocation(line: 0, scope: !1472, inlinedAt: !1514)
!1521 = !DILocation(line: 232, column: 3, scope: !1462)
!1522 = !DILocation(line: 233, column: 7, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1462, file: !315, line: 233, column: 7)
!1524 = !DILocation(line: 233, column: 7, scope: !1462)
!1525 = !DILocalVariable(name: "errbuf", scope: !1526, file: !315, line: 193, type: !1530)
!1526 = distinct !DISubprogram(name: "print_errno_message", scope: !315, file: !315, line: 188, type: !809, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1527)
!1527 = !{!1528, !1529, !1525}
!1528 = !DILocalVariable(name: "errnum", arg: 1, scope: !1526, file: !315, line: 188, type: !95)
!1529 = !DILocalVariable(name: "s", scope: !1526, file: !315, line: 190, type: !70)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 1024)
!1533 = !DILocation(line: 0, scope: !1526, inlinedAt: !1534)
!1534 = distinct !DILocation(line: 234, column: 5, scope: !1523)
!1535 = !DILocation(line: 193, column: 3, scope: !1526, inlinedAt: !1534)
!1536 = !DILocation(line: 195, column: 7, scope: !1526, inlinedAt: !1534)
!1537 = !DILocation(line: 207, column: 9, scope: !1538, inlinedAt: !1534)
!1538 = distinct !DILexicalBlock(scope: !1526, file: !315, line: 207, column: 7)
!1539 = !DILocation(line: 207, column: 7, scope: !1526, inlinedAt: !1534)
!1540 = !DILocation(line: 208, column: 9, scope: !1538, inlinedAt: !1534)
!1541 = !DILocation(line: 208, column: 5, scope: !1538, inlinedAt: !1534)
!1542 = !DILocation(line: 214, column: 3, scope: !1526, inlinedAt: !1534)
!1543 = !DILocation(line: 216, column: 1, scope: !1526, inlinedAt: !1534)
!1544 = !DILocation(line: 234, column: 5, scope: !1523)
!1545 = !DILocation(line: 238, column: 3, scope: !1462)
!1546 = !DILocalVariable(name: "__c", arg: 1, scope: !1547, file: !1548, line: 101, type: !95)
!1547 = distinct !DISubprogram(name: "putc_unlocked", scope: !1548, file: !1548, line: 101, type: !1549, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1551)
!1548 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!95, !95, !1476}
!1551 = !{!1546, !1552}
!1552 = !DILocalVariable(name: "__stream", arg: 2, scope: !1547, file: !1548, line: 101, type: !1476)
!1553 = !DILocation(line: 0, scope: !1547, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 238, column: 3, scope: !1462)
!1555 = !DILocation(line: 103, column: 10, scope: !1547, inlinedAt: !1554)
!1556 = !{!1557, !820, i64 40}
!1557 = !{!"_IO_FILE", !880, i64 0, !820, i64 8, !820, i64 16, !820, i64 24, !820, i64 32, !820, i64 40, !820, i64 48, !820, i64 56, !820, i64 64, !820, i64 72, !820, i64 80, !820, i64 88, !820, i64 96, !820, i64 104, !880, i64 112, !880, i64 116, !1263, i64 120, !921, i64 128, !821, i64 130, !821, i64 131, !820, i64 136, !1263, i64 144, !820, i64 152, !820, i64 160, !820, i64 168, !820, i64 176, !1263, i64 184, !880, i64 192, !821, i64 196}
!1558 = !{!1557, !820, i64 48}
!1559 = !{!"branch_weights", i32 2000, i32 1}
!1560 = !DILocation(line: 240, column: 3, scope: !1462)
!1561 = !DILocation(line: 241, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1462, file: !315, line: 241, column: 7)
!1563 = !DILocation(line: 241, column: 7, scope: !1462)
!1564 = !DILocation(line: 242, column: 5, scope: !1562)
!1565 = !DILocation(line: 243, column: 1, scope: !1462)
!1566 = !DISubprogram(name: "__vfprintf_chk", scope: !866, file: !866, line: 96, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!95, !1475, !95, !870, !327}
!1569 = !DISubprogram(name: "strerror_r", scope: !996, file: !996, line: 444, type: !1570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!101, !95, !101, !97}
!1572 = !DISubprogram(name: "__overflow", scope: !326, file: !326, line: 886, type: !1573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!95, !1476, !95}
!1575 = !DISubprogram(name: "fflush_unlocked", scope: !326, file: !326, line: 239, type: !1576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!95, !1476}
!1578 = !DISubprogram(name: "fcntl", scope: !1579, file: !1579, line: 149, type: !1580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1579 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!95, !95, !95, null}
!1582 = distinct !DISubprogram(name: "error", scope: !315, file: !315, line: 285, type: !1583, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !95, !95, !70, null}
!1585 = !{!1586, !1587, !1588, !1589}
!1586 = !DILocalVariable(name: "status", arg: 1, scope: !1582, file: !315, line: 285, type: !95)
!1587 = !DILocalVariable(name: "errnum", arg: 2, scope: !1582, file: !315, line: 285, type: !95)
!1588 = !DILocalVariable(name: "message", arg: 3, scope: !1582, file: !315, line: 285, type: !70)
!1589 = !DILocalVariable(name: "ap", scope: !1582, file: !315, line: 287, type: !325)
!1590 = distinct !DIAssignID()
!1591 = !DILocation(line: 0, scope: !1582)
!1592 = !DILocation(line: 287, column: 3, scope: !1582)
!1593 = !DILocation(line: 288, column: 3, scope: !1582)
!1594 = !DILocation(line: 289, column: 3, scope: !1582)
!1595 = !DILocation(line: 290, column: 3, scope: !1582)
!1596 = !DILocation(line: 291, column: 1, scope: !1582)
!1597 = !DILocation(line: 0, scope: !322)
!1598 = !DILocation(line: 302, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !322, file: !315, line: 302, column: 7)
!1600 = !DILocation(line: 302, column: 7, scope: !322)
!1601 = !DILocation(line: 307, column: 11, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !315, line: 307, column: 11)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !315, line: 303, column: 5)
!1604 = !DILocation(line: 307, column: 27, scope: !1602)
!1605 = !DILocation(line: 308, column: 11, scope: !1602)
!1606 = !DILocation(line: 308, column: 28, scope: !1602)
!1607 = !DILocation(line: 308, column: 25, scope: !1602)
!1608 = !DILocation(line: 309, column: 15, scope: !1602)
!1609 = !DILocation(line: 309, column: 33, scope: !1602)
!1610 = !DILocation(line: 310, column: 19, scope: !1602)
!1611 = !DILocation(line: 311, column: 22, scope: !1602)
!1612 = !DILocation(line: 311, column: 56, scope: !1602)
!1613 = !DILocation(line: 307, column: 11, scope: !1603)
!1614 = !DILocation(line: 316, column: 21, scope: !1603)
!1615 = !DILocation(line: 317, column: 23, scope: !1603)
!1616 = !DILocation(line: 318, column: 5, scope: !1603)
!1617 = !DILocation(line: 327, column: 3, scope: !322)
!1618 = !DILocation(line: 331, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !322, file: !315, line: 331, column: 7)
!1620 = !DILocation(line: 331, column: 7, scope: !322)
!1621 = !DILocation(line: 332, column: 5, scope: !1619)
!1622 = !DILocation(line: 338, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1619, file: !315, line: 334, column: 5)
!1624 = !DILocation(line: 346, column: 3, scope: !322)
!1625 = !DILocation(line: 350, column: 3, scope: !322)
!1626 = !DILocation(line: 356, column: 1, scope: !322)
!1627 = distinct !DISubprogram(name: "error_at_line", scope: !315, file: !315, line: 359, type: !1628, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !95, !95, !70, !76, !70, null}
!1630 = !{!1631, !1632, !1633, !1634, !1635, !1636}
!1631 = !DILocalVariable(name: "status", arg: 1, scope: !1627, file: !315, line: 359, type: !95)
!1632 = !DILocalVariable(name: "errnum", arg: 2, scope: !1627, file: !315, line: 359, type: !95)
!1633 = !DILocalVariable(name: "file_name", arg: 3, scope: !1627, file: !315, line: 359, type: !70)
!1634 = !DILocalVariable(name: "line_number", arg: 4, scope: !1627, file: !315, line: 360, type: !76)
!1635 = !DILocalVariable(name: "message", arg: 5, scope: !1627, file: !315, line: 360, type: !70)
!1636 = !DILocalVariable(name: "ap", scope: !1627, file: !315, line: 362, type: !325)
!1637 = distinct !DIAssignID()
!1638 = !DILocation(line: 0, scope: !1627)
!1639 = !DILocation(line: 362, column: 3, scope: !1627)
!1640 = !DILocation(line: 363, column: 3, scope: !1627)
!1641 = !DILocation(line: 364, column: 3, scope: !1627)
!1642 = !DILocation(line: 366, column: 3, scope: !1627)
!1643 = !DILocation(line: 367, column: 1, scope: !1627)
!1644 = distinct !DISubprogram(name: "rpl_fcntl", scope: !371, file: !371, line: 202, type: !1580, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !1645)
!1645 = !{!1646, !1647, !1648, !1659, !1660, !1663, !1665, !1669}
!1646 = !DILocalVariable(name: "fd", arg: 1, scope: !1644, file: !371, line: 202, type: !95)
!1647 = !DILocalVariable(name: "action", arg: 2, scope: !1644, file: !371, line: 202, type: !95)
!1648 = !DILocalVariable(name: "arg", scope: !1644, file: !371, line: 208, type: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1650, line: 12, baseType: !1651)
!1650 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !371, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1653)
!1653 = !{!1654, !1655, !1656, !1657, !1658}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1652, file: !371, line: 208, baseType: !94, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1652, file: !371, line: 208, baseType: !94, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1652, file: !371, line: 208, baseType: !94, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1652, file: !371, line: 208, baseType: !95, size: 32, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1652, file: !371, line: 208, baseType: !95, size: 32, offset: 224)
!1659 = !DILocalVariable(name: "result", scope: !1644, file: !371, line: 211, type: !95)
!1660 = !DILocalVariable(name: "target", scope: !1661, file: !371, line: 216, type: !95)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !371, line: 215, column: 7)
!1662 = distinct !DILexicalBlock(scope: !1644, file: !371, line: 213, column: 5)
!1663 = !DILocalVariable(name: "target", scope: !1664, file: !371, line: 223, type: !95)
!1664 = distinct !DILexicalBlock(scope: !1662, file: !371, line: 222, column: 7)
!1665 = !DILocalVariable(name: "x", scope: !1666, file: !371, line: 418, type: !95)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !371, line: 417, column: 13)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !371, line: 261, column: 11)
!1668 = distinct !DILexicalBlock(scope: !1662, file: !371, line: 258, column: 7)
!1669 = !DILocalVariable(name: "p", scope: !1670, file: !371, line: 426, type: !94)
!1670 = distinct !DILexicalBlock(scope: !1667, file: !371, line: 425, column: 13)
!1671 = distinct !DIAssignID()
!1672 = !DILocation(line: 0, scope: !1644)
!1673 = !DILocation(line: 208, column: 3, scope: !1644)
!1674 = !DILocation(line: 209, column: 3, scope: !1644)
!1675 = !DILocation(line: 212, column: 3, scope: !1644)
!1676 = !DILocation(line: 216, column: 22, scope: !1661)
!1677 = distinct !DIAssignID()
!1678 = distinct !DIAssignID()
!1679 = !DILocation(line: 0, scope: !1661)
!1680 = !DILocalVariable(name: "fd", arg: 1, scope: !1681, file: !371, line: 444, type: !95)
!1681 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !371, file: !371, line: 444, type: !372, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !374, retainedNodes: !1682)
!1682 = !{!1680, !1683, !1684}
!1683 = !DILocalVariable(name: "target", arg: 2, scope: !1681, file: !371, line: 444, type: !95)
!1684 = !DILocalVariable(name: "result", scope: !1681, file: !371, line: 446, type: !95)
!1685 = !DILocation(line: 0, scope: !1681, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 217, column: 18, scope: !1661)
!1687 = !DILocation(line: 479, column: 12, scope: !1681, inlinedAt: !1686)
!1688 = !DILocation(line: 223, column: 22, scope: !1664)
!1689 = distinct !DIAssignID()
!1690 = distinct !DIAssignID()
!1691 = !DILocation(line: 0, scope: !1664)
!1692 = !DILocation(line: 0, scope: !370, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 224, column: 18, scope: !1664)
!1694 = !DILocation(line: 507, column: 12, scope: !1695, inlinedAt: !1693)
!1695 = distinct !DILexicalBlock(scope: !370, file: !371, line: 507, column: 7)
!1696 = !DILocation(line: 507, column: 9, scope: !1695, inlinedAt: !1693)
!1697 = !DILocation(line: 507, column: 7, scope: !370, inlinedAt: !1693)
!1698 = !DILocation(line: 509, column: 16, scope: !1699, inlinedAt: !1693)
!1699 = distinct !DILexicalBlock(scope: !1695, file: !371, line: 508, column: 5)
!1700 = !DILocation(line: 510, column: 13, scope: !1701, inlinedAt: !1693)
!1701 = distinct !DILexicalBlock(scope: !1699, file: !371, line: 510, column: 11)
!1702 = !DILocation(line: 510, column: 23, scope: !1701, inlinedAt: !1693)
!1703 = !DILocation(line: 510, column: 26, scope: !1701, inlinedAt: !1693)
!1704 = !DILocation(line: 510, column: 32, scope: !1701, inlinedAt: !1693)
!1705 = !DILocation(line: 510, column: 11, scope: !1699, inlinedAt: !1693)
!1706 = !DILocation(line: 512, column: 30, scope: !1707, inlinedAt: !1693)
!1707 = distinct !DILexicalBlock(scope: !1701, file: !371, line: 511, column: 9)
!1708 = !DILocation(line: 528, column: 19, scope: !382, inlinedAt: !1693)
!1709 = !DILocation(line: 0, scope: !1681, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 520, column: 20, scope: !1711, inlinedAt: !1693)
!1711 = distinct !DILexicalBlock(scope: !1701, file: !371, line: 519, column: 9)
!1712 = !DILocation(line: 479, column: 12, scope: !1681, inlinedAt: !1710)
!1713 = !DILocation(line: 521, column: 22, scope: !1714, inlinedAt: !1693)
!1714 = distinct !DILexicalBlock(scope: !1711, file: !371, line: 521, column: 15)
!1715 = !DILocation(line: 521, column: 15, scope: !1711, inlinedAt: !1693)
!1716 = !DILocation(line: 522, column: 32, scope: !1714, inlinedAt: !1693)
!1717 = !DILocation(line: 522, column: 13, scope: !1714, inlinedAt: !1693)
!1718 = !DILocation(line: 0, scope: !1681, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 527, column: 14, scope: !1695, inlinedAt: !1693)
!1720 = !DILocation(line: 479, column: 12, scope: !1681, inlinedAt: !1719)
!1721 = !DILocation(line: 0, scope: !1695, inlinedAt: !1693)
!1722 = !DILocation(line: 528, column: 9, scope: !382, inlinedAt: !1693)
!1723 = !DILocation(line: 530, column: 19, scope: !381, inlinedAt: !1693)
!1724 = !DILocation(line: 0, scope: !381, inlinedAt: !1693)
!1725 = !DILocation(line: 531, column: 17, scope: !385, inlinedAt: !1693)
!1726 = !DILocation(line: 531, column: 21, scope: !385, inlinedAt: !1693)
!1727 = !DILocation(line: 531, column: 54, scope: !385, inlinedAt: !1693)
!1728 = !DILocation(line: 531, column: 24, scope: !385, inlinedAt: !1693)
!1729 = !DILocation(line: 531, column: 68, scope: !385, inlinedAt: !1693)
!1730 = !DILocation(line: 531, column: 11, scope: !381, inlinedAt: !1693)
!1731 = !DILocation(line: 533, column: 29, scope: !384, inlinedAt: !1693)
!1732 = !DILocation(line: 0, scope: !384, inlinedAt: !1693)
!1733 = !DILocation(line: 534, column: 11, scope: !384, inlinedAt: !1693)
!1734 = !DILocation(line: 535, column: 17, scope: !384, inlinedAt: !1693)
!1735 = !DILocation(line: 537, column: 9, scope: !384, inlinedAt: !1693)
!1736 = !DILocation(line: 329, column: 22, scope: !1667)
!1737 = !DILocation(line: 330, column: 13, scope: !1667)
!1738 = !DILocation(line: 418, column: 23, scope: !1666)
!1739 = distinct !DIAssignID()
!1740 = distinct !DIAssignID()
!1741 = !DILocation(line: 0, scope: !1666)
!1742 = !DILocation(line: 419, column: 24, scope: !1666)
!1743 = !DILocation(line: 421, column: 13, scope: !1667)
!1744 = !DILocation(line: 426, column: 25, scope: !1670)
!1745 = distinct !DIAssignID()
!1746 = distinct !DIAssignID()
!1747 = !DILocation(line: 0, scope: !1670)
!1748 = !DILocation(line: 427, column: 24, scope: !1670)
!1749 = !DILocation(line: 429, column: 13, scope: !1667)
!1750 = !DILocation(line: 0, scope: !1662)
!1751 = !DILocation(line: 438, column: 3, scope: !1644)
!1752 = !DILocation(line: 441, column: 1, scope: !1644)
!1753 = !DILocation(line: 440, column: 3, scope: !1644)
!1754 = distinct !DISubprogram(name: "full_write", scope: !720, file: !720, line: 58, type: !1755, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !1757)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!762, !95, !1024, !762}
!1757 = !{!1758, !1759, !1760, !1761, !1762, !1763}
!1758 = !DILocalVariable(name: "fd", arg: 1, scope: !1754, file: !720, line: 58, type: !95)
!1759 = !DILocalVariable(name: "buf", arg: 2, scope: !1754, file: !720, line: 58, type: !1024)
!1760 = !DILocalVariable(name: "count", arg: 3, scope: !1754, file: !720, line: 58, type: !762)
!1761 = !DILocalVariable(name: "total", scope: !1754, file: !720, line: 60, type: !762)
!1762 = !DILocalVariable(name: "ptr", scope: !1754, file: !720, line: 61, type: !70)
!1763 = !DILocalVariable(name: "n_rw", scope: !1764, file: !720, line: 65, type: !764)
!1764 = distinct !DILexicalBlock(scope: !1754, file: !720, line: 64, column: 5)
!1765 = !DILocation(line: 0, scope: !1754)
!1766 = !DILocation(line: 63, column: 16, scope: !1754)
!1767 = !DILocation(line: 63, column: 3, scope: !1754)
!1768 = !DILocation(line: 66, column: 11, scope: !1764)
!1769 = !DILocation(line: 65, column: 24, scope: !1764)
!1770 = !DILocation(line: 0, scope: !1764)
!1771 = !DILocation(line: 66, column: 16, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1764, file: !720, line: 66, column: 11)
!1773 = !DILocation(line: 68, column: 16, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1764, file: !720, line: 68, column: 11)
!1775 = !DILocation(line: 68, column: 11, scope: !1764)
!1776 = !DILocation(line: 70, column: 11, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1774, file: !720, line: 69, column: 9)
!1778 = !DILocation(line: 70, column: 17, scope: !1777)
!1779 = !DILocation(line: 71, column: 11, scope: !1777)
!1780 = !DILocation(line: 73, column: 13, scope: !1764)
!1781 = !DILocation(line: 74, column: 11, scope: !1764)
!1782 = !DILocation(line: 75, column: 13, scope: !1764)
!1783 = !DILocation(line: 78, column: 3, scope: !1754)
!1784 = distinct !DISubprogram(name: "getprogname", scope: !723, file: !723, line: 54, type: !1785, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722)
!1785 = !DISubroutineType(types: !721)
!1786 = !DILocation(line: 58, column: 10, scope: !1784)
!1787 = !DILocation(line: 58, column: 3, scope: !1784)
!1788 = distinct !DISubprogram(name: "isapipe", scope: !725, file: !725, line: 72, type: !1375, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !1789)
!1789 = !{!1790, !1791, !1795, !1796, !1830}
!1790 = !DILocalVariable(name: "fd", arg: 1, scope: !1788, file: !725, line: 72, type: !95)
!1791 = !DILocalVariable(name: "pipe_link_count_max", scope: !1788, file: !725, line: 74, type: !1792)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1793, line: 74, baseType: !1794)
!1793 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !259, line: 151, baseType: !76)
!1795 = !DILocalVariable(name: "check_for_fifo", scope: !1788, file: !725, line: 75, type: !219)
!1796 = !DILocalVariable(name: "st", scope: !1788, file: !725, line: 77, type: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1798, line: 44, size: 1024, elements: !1799)
!1798 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1799 = !{!1800, !1802, !1804, !1806, !1807, !1809, !1811, !1812, !1813, !1814, !1816, !1817, !1819, !1827, !1828, !1829}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1797, file: !1798, line: 46, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !259, line: 145, baseType: !99)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1797, file: !1798, line: 47, baseType: !1803, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !259, line: 148, baseType: !99)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1797, file: !1798, line: 48, baseType: !1805, size: 32, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !259, line: 150, baseType: !76)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1797, file: !1798, line: 49, baseType: !1794, size: 32, offset: 160)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1797, file: !1798, line: 50, baseType: !1808, size: 32, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !259, line: 146, baseType: !76)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1797, file: !1798, line: 51, baseType: !1810, size: 32, offset: 224)
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !259, line: 147, baseType: !76)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1797, file: !1798, line: 52, baseType: !1801, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1797, file: !1798, line: 53, baseType: !1801, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1797, file: !1798, line: 54, baseType: !258, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1797, file: !1798, line: 55, baseType: !1815, size: 32, offset: 448)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !259, line: 175, baseType: !95)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1797, file: !1798, line: 56, baseType: !95, size: 32, offset: 480)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1797, file: !1798, line: 57, baseType: !1818, size: 64, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !259, line: 180, baseType: !260)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1797, file: !1798, line: 65, baseType: !1820, size: 128, offset: 576)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1821, line: 11, size: 128, elements: !1822)
!1821 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1822 = !{!1823, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1820, file: !1821, line: 16, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !259, line: 160, baseType: !260)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1820, file: !1821, line: 21, baseType: !1826, size: 64, offset: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !259, line: 197, baseType: !260)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1797, file: !1798, line: 66, baseType: !1820, size: 128, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1797, file: !1798, line: 67, baseType: !1820, size: 128, offset: 832)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1797, file: !1798, line: 79, baseType: !700, size: 64, offset: 960)
!1830 = !DILocalVariable(name: "fstat_result", scope: !1788, file: !725, line: 78, type: !95)
!1831 = distinct !DIAssignID()
!1832 = !DILocation(line: 0, scope: !1788)
!1833 = !DILocation(line: 77, column: 3, scope: !1788)
!1834 = !DILocation(line: 78, column: 22, scope: !1788)
!1835 = !DILocation(line: 79, column: 20, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1788, file: !725, line: 79, column: 7)
!1837 = !DILocation(line: 79, column: 7, scope: !1788)
!1838 = !DILocation(line: 118, column: 9, scope: !1788)
!1839 = !{!1840, !880, i64 20}
!1840 = !{!"stat", !1263, i64 0, !1263, i64 8, !880, i64 16, !880, i64 20, !880, i64 24, !880, i64 28, !1263, i64 32, !1263, i64 40, !1263, i64 48, !880, i64 56, !880, i64 60, !1263, i64 64, !1841, i64 72, !1841, i64 88, !1841, i64 104, !821, i64 120}
!1841 = !{!"timespec", !1263, i64 0, !1263, i64 8}
!1842 = !DILocation(line: 118, column: 18, scope: !1788)
!1843 = !DILocation(line: 119, column: 6, scope: !1788)
!1844 = !DILocation(line: 117, column: 3, scope: !1788)
!1845 = !DILocation(line: 120, column: 1, scope: !1788)
!1846 = !DISubprogram(name: "fstat", scope: !1847, file: !1847, line: 210, type: !1848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1847 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!95, !95, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1851 = distinct !DISubprogram(name: "parse_long_options", scope: !388, file: !388, line: 45, type: !1852, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1855)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{null, !95, !1029, !70, !70, !70, !1854, null}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1866}
!1856 = !DILocalVariable(name: "argc", arg: 1, scope: !1851, file: !388, line: 45, type: !95)
!1857 = !DILocalVariable(name: "argv", arg: 2, scope: !1851, file: !388, line: 46, type: !1029)
!1858 = !DILocalVariable(name: "command_name", arg: 3, scope: !1851, file: !388, line: 47, type: !70)
!1859 = !DILocalVariable(name: "package", arg: 4, scope: !1851, file: !388, line: 48, type: !70)
!1860 = !DILocalVariable(name: "version", arg: 5, scope: !1851, file: !388, line: 49, type: !70)
!1861 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1851, file: !388, line: 50, type: !1854)
!1862 = !DILocalVariable(name: "saved_opterr", scope: !1851, file: !388, line: 53, type: !95)
!1863 = !DILocalVariable(name: "c", scope: !1864, file: !388, line: 60, type: !95)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !388, line: 59, column: 5)
!1865 = distinct !DILexicalBlock(scope: !1851, file: !388, line: 58, column: 7)
!1866 = !DILocalVariable(name: "authors", scope: !1867, file: !388, line: 71, type: !1871)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !388, line: 70, column: 15)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !388, line: 64, column: 13)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !388, line: 62, column: 9)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !388, line: 61, column: 11)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 52, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !328, line: 12, baseType: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !388, baseType: !1874)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1874, file: !388, line: 71, baseType: !94, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1874, file: !388, line: 71, baseType: !94, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1874, file: !388, line: 71, baseType: !94, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1874, file: !388, line: 71, baseType: !95, size: 32, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1874, file: !388, line: 71, baseType: !95, size: 32, offset: 224)
!1881 = distinct !DIAssignID()
!1882 = !DILocation(line: 0, scope: !1867)
!1883 = !DILocation(line: 0, scope: !1851)
!1884 = !DILocation(line: 53, column: 22, scope: !1851)
!1885 = !DILocation(line: 56, column: 10, scope: !1851)
!1886 = !DILocation(line: 58, column: 12, scope: !1865)
!1887 = !DILocation(line: 58, column: 7, scope: !1851)
!1888 = !DILocation(line: 60, column: 15, scope: !1864)
!1889 = !DILocation(line: 0, scope: !1864)
!1890 = !DILocation(line: 61, column: 11, scope: !1864)
!1891 = !DILocation(line: 66, column: 15, scope: !1868)
!1892 = !DILocation(line: 67, column: 15, scope: !1868)
!1893 = !DILocation(line: 71, column: 17, scope: !1867)
!1894 = !DILocation(line: 72, column: 17, scope: !1867)
!1895 = !DILocation(line: 73, column: 33, scope: !1867)
!1896 = !DILocation(line: 73, column: 17, scope: !1867)
!1897 = !DILocation(line: 74, column: 17, scope: !1867)
!1898 = !DILocation(line: 85, column: 10, scope: !1851)
!1899 = !DILocation(line: 89, column: 10, scope: !1851)
!1900 = !DILocation(line: 90, column: 1, scope: !1851)
!1901 = !DISubprogram(name: "getopt_long", scope: !403, file: !403, line: 66, type: !1902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!95, !95, !1904, !70, !1906, !408}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1907 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !388, file: !388, line: 98, type: !1908, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !1910)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !95, !1029, !70, !70, !70, !219, !1854, null}
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921}
!1911 = !DILocalVariable(name: "argc", arg: 1, scope: !1907, file: !388, line: 98, type: !95)
!1912 = !DILocalVariable(name: "argv", arg: 2, scope: !1907, file: !388, line: 99, type: !1029)
!1913 = !DILocalVariable(name: "command_name", arg: 3, scope: !1907, file: !388, line: 100, type: !70)
!1914 = !DILocalVariable(name: "package", arg: 4, scope: !1907, file: !388, line: 101, type: !70)
!1915 = !DILocalVariable(name: "version", arg: 5, scope: !1907, file: !388, line: 102, type: !70)
!1916 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1907, file: !388, line: 103, type: !219)
!1917 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1907, file: !388, line: 104, type: !1854)
!1918 = !DILocalVariable(name: "saved_opterr", scope: !1907, file: !388, line: 107, type: !95)
!1919 = !DILocalVariable(name: "optstring", scope: !1907, file: !388, line: 112, type: !70)
!1920 = !DILocalVariable(name: "c", scope: !1907, file: !388, line: 114, type: !95)
!1921 = !DILocalVariable(name: "authors", scope: !1922, file: !388, line: 125, type: !1871)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !388, line: 124, column: 11)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !388, line: 118, column: 9)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !388, line: 116, column: 5)
!1925 = distinct !DILexicalBlock(scope: !1907, file: !388, line: 115, column: 7)
!1926 = distinct !DIAssignID()
!1927 = !DILocation(line: 0, scope: !1922)
!1928 = !DILocation(line: 0, scope: !1907)
!1929 = !DILocation(line: 107, column: 22, scope: !1907)
!1930 = !DILocation(line: 110, column: 10, scope: !1907)
!1931 = !DILocation(line: 112, column: 27, scope: !1907)
!1932 = !DILocation(line: 114, column: 11, scope: !1907)
!1933 = !DILocation(line: 115, column: 7, scope: !1907)
!1934 = !DILocation(line: 125, column: 13, scope: !1922)
!1935 = !DILocation(line: 126, column: 13, scope: !1922)
!1936 = !DILocation(line: 127, column: 29, scope: !1922)
!1937 = !DILocation(line: 127, column: 13, scope: !1922)
!1938 = !DILocation(line: 128, column: 13, scope: !1922)
!1939 = !DILocation(line: 132, column: 26, scope: !1923)
!1940 = !DILocation(line: 133, column: 11, scope: !1923)
!1941 = !DILocation(line: 0, scope: !1923)
!1942 = !DILocation(line: 138, column: 10, scope: !1907)
!1943 = !DILocation(line: 139, column: 1, scope: !1907)
!1944 = distinct !DISubprogram(name: "pipe2_safer", scope: !727, file: !727, line: 31, type: !692, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !1945)
!1945 = !{!1946, !1947, !1948, !1952}
!1946 = !DILocalVariable(name: "fd", arg: 1, scope: !1944, file: !727, line: 31, type: !408)
!1947 = !DILocalVariable(name: "flags", arg: 2, scope: !1944, file: !727, line: 31, type: !95)
!1948 = !DILocalVariable(name: "i", scope: !1949, file: !727, line: 36, type: !95)
!1949 = distinct !DILexicalBlock(scope: !1950, file: !727, line: 36, column: 7)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !727, line: 35, column: 5)
!1951 = distinct !DILexicalBlock(scope: !1944, file: !727, line: 34, column: 7)
!1952 = !DILocalVariable(name: "saved_errno", scope: !1953, file: !727, line: 41, type: !95)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !727, line: 40, column: 13)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !727, line: 39, column: 15)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !727, line: 37, column: 9)
!1956 = distinct !DILexicalBlock(scope: !1949, file: !727, line: 36, column: 7)
!1957 = !DILocation(line: 0, scope: !1944)
!1958 = !DILocation(line: 34, column: 7, scope: !1951)
!1959 = !DILocation(line: 34, column: 25, scope: !1951)
!1960 = !DILocation(line: 34, column: 7, scope: !1944)
!1961 = !DILocation(line: 0, scope: !1949)
!1962 = !DILocation(line: 38, column: 34, scope: !1955)
!1963 = !DILocation(line: 38, column: 19, scope: !1955)
!1964 = !DILocation(line: 38, column: 17, scope: !1955)
!1965 = !DILocation(line: 39, column: 21, scope: !1954)
!1966 = !DILocation(line: 39, column: 15, scope: !1955)
!1967 = !DILocation(line: 41, column: 33, scope: !1953)
!1968 = !DILocation(line: 0, scope: !1953)
!1969 = !DILocation(line: 42, column: 22, scope: !1953)
!1970 = !DILocation(line: 42, column: 15, scope: !1953)
!1971 = !DILocation(line: 43, column: 21, scope: !1953)
!1972 = !DILocation(line: 51, column: 1, scope: !1944)
!1973 = distinct !DISubprogram(name: "set_program_name", scope: !413, file: !413, line: 37, type: !830, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1974)
!1974 = !{!1975, !1976, !1977}
!1975 = !DILocalVariable(name: "argv0", arg: 1, scope: !1973, file: !413, line: 37, type: !70)
!1976 = !DILocalVariable(name: "slash", scope: !1973, file: !413, line: 44, type: !70)
!1977 = !DILocalVariable(name: "base", scope: !1973, file: !413, line: 45, type: !70)
!1978 = !DILocation(line: 0, scope: !1973)
!1979 = !DILocation(line: 44, column: 23, scope: !1973)
!1980 = !DILocation(line: 45, column: 22, scope: !1973)
!1981 = !DILocation(line: 46, column: 17, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1973, file: !413, line: 46, column: 7)
!1983 = !DILocation(line: 46, column: 9, scope: !1982)
!1984 = !DILocation(line: 46, column: 25, scope: !1982)
!1985 = !DILocation(line: 46, column: 40, scope: !1982)
!1986 = !DILocalVariable(name: "__s1", arg: 1, scope: !1987, file: !892, line: 974, type: !1024)
!1987 = distinct !DISubprogram(name: "memeq", scope: !892, file: !892, line: 974, type: !1988, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!219, !1024, !1024, !97}
!1990 = !{!1986, !1991, !1992}
!1991 = !DILocalVariable(name: "__s2", arg: 2, scope: !1987, file: !892, line: 974, type: !1024)
!1992 = !DILocalVariable(name: "__n", arg: 3, scope: !1987, file: !892, line: 974, type: !97)
!1993 = !DILocation(line: 0, scope: !1987, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 46, column: 28, scope: !1982)
!1995 = !DILocation(line: 976, column: 11, scope: !1987, inlinedAt: !1994)
!1996 = !DILocation(line: 976, column: 10, scope: !1987, inlinedAt: !1994)
!1997 = !DILocation(line: 46, column: 7, scope: !1973)
!1998 = !DILocation(line: 49, column: 11, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !413, line: 49, column: 11)
!2000 = distinct !DILexicalBlock(scope: !1982, file: !413, line: 47, column: 5)
!2001 = !DILocation(line: 49, column: 36, scope: !1999)
!2002 = !DILocation(line: 49, column: 11, scope: !2000)
!2003 = !DILocation(line: 65, column: 16, scope: !1973)
!2004 = !DILocation(line: 71, column: 27, scope: !1973)
!2005 = !DILocation(line: 74, column: 33, scope: !1973)
!2006 = !DILocation(line: 76, column: 1, scope: !1973)
!2007 = !DISubprogram(name: "strrchr", scope: !996, file: !996, line: 273, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2008 = distinct !DIAssignID()
!2009 = !DILocation(line: 0, scope: !422)
!2010 = distinct !DIAssignID()
!2011 = !DILocation(line: 40, column: 29, scope: !422)
!2012 = !DILocation(line: 41, column: 19, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !422, file: !423, line: 41, column: 7)
!2014 = !DILocation(line: 41, column: 7, scope: !422)
!2015 = !DILocation(line: 47, column: 3, scope: !422)
!2016 = !DILocation(line: 48, column: 3, scope: !422)
!2017 = !DILocalVariable(name: "ps", arg: 1, scope: !2018, file: !2019, line: 1135, type: !2022)
!2018 = distinct !DISubprogram(name: "mbszero", scope: !2019, file: !2019, line: 1135, type: !2020, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2023)
!2019 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !2022}
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2023 = !{!2017}
!2024 = !DILocation(line: 0, scope: !2018, inlinedAt: !2025)
!2025 = distinct !DILocation(line: 48, column: 18, scope: !422)
!2026 = !DILocalVariable(name: "__dest", arg: 1, scope: !2027, file: !1099, line: 57, type: !94)
!2027 = distinct !DISubprogram(name: "memset", scope: !1099, file: !1099, line: 57, type: !2028, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2030)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!94, !94, !95, !97}
!2030 = !{!2026, !2031, !2032}
!2031 = !DILocalVariable(name: "__ch", arg: 2, scope: !2027, file: !1099, line: 57, type: !95)
!2032 = !DILocalVariable(name: "__len", arg: 3, scope: !2027, file: !1099, line: 57, type: !97)
!2033 = !DILocation(line: 0, scope: !2027, inlinedAt: !2034)
!2034 = distinct !DILocation(line: 1137, column: 3, scope: !2018, inlinedAt: !2025)
!2035 = !DILocation(line: 59, column: 10, scope: !2027, inlinedAt: !2034)
!2036 = !DILocation(line: 49, column: 7, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !422, file: !423, line: 49, column: 7)
!2038 = !DILocation(line: 49, column: 39, scope: !2037)
!2039 = !DILocation(line: 49, column: 44, scope: !2037)
!2040 = !DILocation(line: 54, column: 1, scope: !422)
!2041 = !DISubprogram(name: "mbrtoc32", scope: !434, file: !434, line: 57, type: !2042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!97, !2044, !870, !97, !2046}
!2044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2022)
!2047 = distinct !DISubprogram(name: "clone_quoting_options", scope: !453, file: !453, line: 113, type: !2048, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2051)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2050, !2050}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2051 = !{!2052, !2053, !2054}
!2052 = !DILocalVariable(name: "o", arg: 1, scope: !2047, file: !453, line: 113, type: !2050)
!2053 = !DILocalVariable(name: "saved_errno", scope: !2047, file: !453, line: 115, type: !95)
!2054 = !DILocalVariable(name: "p", scope: !2047, file: !453, line: 116, type: !2050)
!2055 = !DILocation(line: 0, scope: !2047)
!2056 = !DILocation(line: 115, column: 21, scope: !2047)
!2057 = !DILocation(line: 116, column: 40, scope: !2047)
!2058 = !DILocation(line: 116, column: 31, scope: !2047)
!2059 = !DILocation(line: 118, column: 9, scope: !2047)
!2060 = !DILocation(line: 119, column: 3, scope: !2047)
!2061 = distinct !DISubprogram(name: "get_quoting_style", scope: !453, file: !453, line: 124, type: !2062, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2066)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!479, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "o", arg: 1, scope: !2061, file: !453, line: 124, type: !2064)
!2068 = !DILocation(line: 0, scope: !2061)
!2069 = !DILocation(line: 126, column: 11, scope: !2061)
!2070 = !DILocation(line: 126, column: 46, scope: !2061)
!2071 = !{!2072, !880, i64 0}
!2072 = !{!"quoting_options", !880, i64 0, !880, i64 4, !821, i64 8, !820, i64 40, !820, i64 48}
!2073 = !DILocation(line: 126, column: 3, scope: !2061)
!2074 = distinct !DISubprogram(name: "set_quoting_style", scope: !453, file: !453, line: 132, type: !2075, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2077)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !2050, !479}
!2077 = !{!2078, !2079}
!2078 = !DILocalVariable(name: "o", arg: 1, scope: !2074, file: !453, line: 132, type: !2050)
!2079 = !DILocalVariable(name: "s", arg: 2, scope: !2074, file: !453, line: 132, type: !479)
!2080 = !DILocation(line: 0, scope: !2074)
!2081 = !DILocation(line: 134, column: 4, scope: !2074)
!2082 = !DILocation(line: 134, column: 45, scope: !2074)
!2083 = !DILocation(line: 135, column: 1, scope: !2074)
!2084 = distinct !DISubprogram(name: "set_char_quoting", scope: !453, file: !453, line: 143, type: !2085, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!95, !2050, !4, !95}
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2094, !2095}
!2088 = !DILocalVariable(name: "o", arg: 1, scope: !2084, file: !453, line: 143, type: !2050)
!2089 = !DILocalVariable(name: "c", arg: 2, scope: !2084, file: !453, line: 143, type: !4)
!2090 = !DILocalVariable(name: "i", arg: 3, scope: !2084, file: !453, line: 143, type: !95)
!2091 = !DILocalVariable(name: "uc", scope: !2084, file: !453, line: 145, type: !100)
!2092 = !DILocalVariable(name: "p", scope: !2084, file: !453, line: 146, type: !2093)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2094 = !DILocalVariable(name: "shift", scope: !2084, file: !453, line: 148, type: !95)
!2095 = !DILocalVariable(name: "r", scope: !2084, file: !453, line: 149, type: !76)
!2096 = !DILocation(line: 0, scope: !2084)
!2097 = !DILocation(line: 147, column: 6, scope: !2084)
!2098 = !DILocation(line: 147, column: 41, scope: !2084)
!2099 = !DILocation(line: 147, column: 62, scope: !2084)
!2100 = !DILocation(line: 147, column: 57, scope: !2084)
!2101 = !DILocation(line: 148, column: 15, scope: !2084)
!2102 = !DILocation(line: 149, column: 21, scope: !2084)
!2103 = !DILocation(line: 149, column: 24, scope: !2084)
!2104 = !DILocation(line: 149, column: 34, scope: !2084)
!2105 = !DILocation(line: 150, column: 19, scope: !2084)
!2106 = !DILocation(line: 150, column: 24, scope: !2084)
!2107 = !DILocation(line: 150, column: 6, scope: !2084)
!2108 = !DILocation(line: 151, column: 3, scope: !2084)
!2109 = distinct !DISubprogram(name: "set_quoting_flags", scope: !453, file: !453, line: 159, type: !2110, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!95, !2050, !95}
!2112 = !{!2113, !2114, !2115}
!2113 = !DILocalVariable(name: "o", arg: 1, scope: !2109, file: !453, line: 159, type: !2050)
!2114 = !DILocalVariable(name: "i", arg: 2, scope: !2109, file: !453, line: 159, type: !95)
!2115 = !DILocalVariable(name: "r", scope: !2109, file: !453, line: 163, type: !95)
!2116 = !DILocation(line: 0, scope: !2109)
!2117 = !DILocation(line: 161, column: 8, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2109, file: !453, line: 161, column: 7)
!2119 = !DILocation(line: 161, column: 7, scope: !2109)
!2120 = !DILocation(line: 163, column: 14, scope: !2109)
!2121 = !{!2072, !880, i64 4}
!2122 = !DILocation(line: 164, column: 12, scope: !2109)
!2123 = !DILocation(line: 165, column: 3, scope: !2109)
!2124 = distinct !DISubprogram(name: "set_custom_quoting", scope: !453, file: !453, line: 169, type: !2125, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2127)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !2050, !70, !70}
!2127 = !{!2128, !2129, !2130}
!2128 = !DILocalVariable(name: "o", arg: 1, scope: !2124, file: !453, line: 169, type: !2050)
!2129 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2124, file: !453, line: 170, type: !70)
!2130 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2124, file: !453, line: 170, type: !70)
!2131 = !DILocation(line: 0, scope: !2124)
!2132 = !DILocation(line: 172, column: 8, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2124, file: !453, line: 172, column: 7)
!2134 = !DILocation(line: 172, column: 7, scope: !2124)
!2135 = !DILocation(line: 174, column: 12, scope: !2124)
!2136 = !DILocation(line: 175, column: 8, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2124, file: !453, line: 175, column: 7)
!2138 = !DILocation(line: 175, column: 19, scope: !2137)
!2139 = !DILocation(line: 176, column: 5, scope: !2137)
!2140 = !DILocation(line: 177, column: 6, scope: !2124)
!2141 = !DILocation(line: 177, column: 17, scope: !2124)
!2142 = !{!2072, !820, i64 40}
!2143 = !DILocation(line: 178, column: 6, scope: !2124)
!2144 = !DILocation(line: 178, column: 18, scope: !2124)
!2145 = !{!2072, !820, i64 48}
!2146 = !DILocation(line: 179, column: 1, scope: !2124)
!2147 = !DISubprogram(name: "abort", scope: !1000, file: !1000, line: 598, type: !366, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2148 = distinct !DISubprogram(name: "quotearg_buffer", scope: !453, file: !453, line: 774, type: !2149, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!97, !101, !97, !70, !97, !2064}
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159}
!2152 = !DILocalVariable(name: "buffer", arg: 1, scope: !2148, file: !453, line: 774, type: !101)
!2153 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2148, file: !453, line: 774, type: !97)
!2154 = !DILocalVariable(name: "arg", arg: 3, scope: !2148, file: !453, line: 775, type: !70)
!2155 = !DILocalVariable(name: "argsize", arg: 4, scope: !2148, file: !453, line: 775, type: !97)
!2156 = !DILocalVariable(name: "o", arg: 5, scope: !2148, file: !453, line: 776, type: !2064)
!2157 = !DILocalVariable(name: "p", scope: !2148, file: !453, line: 778, type: !2064)
!2158 = !DILocalVariable(name: "saved_errno", scope: !2148, file: !453, line: 779, type: !95)
!2159 = !DILocalVariable(name: "r", scope: !2148, file: !453, line: 780, type: !97)
!2160 = !DILocation(line: 0, scope: !2148)
!2161 = !DILocation(line: 778, column: 37, scope: !2148)
!2162 = !DILocation(line: 779, column: 21, scope: !2148)
!2163 = !DILocation(line: 781, column: 43, scope: !2148)
!2164 = !DILocation(line: 781, column: 53, scope: !2148)
!2165 = !DILocation(line: 781, column: 63, scope: !2148)
!2166 = !DILocation(line: 782, column: 43, scope: !2148)
!2167 = !DILocation(line: 782, column: 58, scope: !2148)
!2168 = !DILocation(line: 780, column: 14, scope: !2148)
!2169 = !DILocation(line: 783, column: 9, scope: !2148)
!2170 = !DILocation(line: 784, column: 3, scope: !2148)
!2171 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !453, file: !453, line: 251, type: !2172, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2176)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!97, !101, !97, !70, !97, !479, !95, !2174, !70, !70}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2202, !2204, !2207, !2208, !2209, !2210, !2213, !2214, !2216, !2217, !2220, !2224, !2225, !2233, !2236, !2237, !2238}
!2177 = !DILocalVariable(name: "buffer", arg: 1, scope: !2171, file: !453, line: 251, type: !101)
!2178 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2171, file: !453, line: 251, type: !97)
!2179 = !DILocalVariable(name: "arg", arg: 3, scope: !2171, file: !453, line: 252, type: !70)
!2180 = !DILocalVariable(name: "argsize", arg: 4, scope: !2171, file: !453, line: 252, type: !97)
!2181 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2171, file: !453, line: 253, type: !479)
!2182 = !DILocalVariable(name: "flags", arg: 6, scope: !2171, file: !453, line: 253, type: !95)
!2183 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2171, file: !453, line: 254, type: !2174)
!2184 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2171, file: !453, line: 255, type: !70)
!2185 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2171, file: !453, line: 256, type: !70)
!2186 = !DILocalVariable(name: "unibyte_locale", scope: !2171, file: !453, line: 258, type: !219)
!2187 = !DILocalVariable(name: "len", scope: !2171, file: !453, line: 260, type: !97)
!2188 = !DILocalVariable(name: "orig_buffersize", scope: !2171, file: !453, line: 261, type: !97)
!2189 = !DILocalVariable(name: "quote_string", scope: !2171, file: !453, line: 262, type: !70)
!2190 = !DILocalVariable(name: "quote_string_len", scope: !2171, file: !453, line: 263, type: !97)
!2191 = !DILocalVariable(name: "backslash_escapes", scope: !2171, file: !453, line: 264, type: !219)
!2192 = !DILocalVariable(name: "elide_outer_quotes", scope: !2171, file: !453, line: 265, type: !219)
!2193 = !DILocalVariable(name: "encountered_single_quote", scope: !2171, file: !453, line: 266, type: !219)
!2194 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2171, file: !453, line: 267, type: !219)
!2195 = !DILabel(scope: !2171, name: "process_input", file: !453, line: 308)
!2196 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2171, file: !453, line: 309, type: !219)
!2197 = !DILocalVariable(name: "lq", scope: !2198, file: !453, line: 361, type: !70)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !453, line: 361, column: 11)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !453, line: 360, column: 13)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !453, line: 333, column: 7)
!2201 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 312, column: 5)
!2202 = !DILocalVariable(name: "i", scope: !2203, file: !453, line: 395, type: !97)
!2203 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 395, column: 3)
!2204 = !DILocalVariable(name: "is_right_quote", scope: !2205, file: !453, line: 397, type: !219)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !453, line: 396, column: 5)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !453, line: 395, column: 3)
!2207 = !DILocalVariable(name: "escaping", scope: !2205, file: !453, line: 398, type: !219)
!2208 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2205, file: !453, line: 399, type: !219)
!2209 = !DILocalVariable(name: "c", scope: !2205, file: !453, line: 417, type: !100)
!2210 = !DILabel(scope: !2211, name: "c_and_shell_escape", file: !453, line: 502)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 478, column: 9)
!2212 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 419, column: 9)
!2213 = !DILabel(scope: !2211, name: "c_escape", file: !453, line: 507)
!2214 = !DILocalVariable(name: "m", scope: !2215, file: !453, line: 598, type: !97)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 596, column: 11)
!2216 = !DILocalVariable(name: "printable", scope: !2215, file: !453, line: 600, type: !219)
!2217 = !DILocalVariable(name: "mbs", scope: !2218, file: !453, line: 609, type: !540)
!2218 = distinct !DILexicalBlock(scope: !2219, file: !453, line: 608, column: 15)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !453, line: 602, column: 17)
!2220 = !DILocalVariable(name: "w", scope: !2221, file: !453, line: 618, type: !433)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !453, line: 617, column: 19)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !453, line: 616, column: 17)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !453, line: 616, column: 17)
!2224 = !DILocalVariable(name: "bytes", scope: !2221, file: !453, line: 619, type: !97)
!2225 = !DILocalVariable(name: "j", scope: !2226, file: !453, line: 648, type: !97)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !453, line: 648, column: 29)
!2227 = distinct !DILexicalBlock(scope: !2228, file: !453, line: 647, column: 27)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !453, line: 645, column: 29)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !453, line: 636, column: 23)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !453, line: 628, column: 30)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !453, line: 623, column: 30)
!2232 = distinct !DILexicalBlock(scope: !2221, file: !453, line: 621, column: 25)
!2233 = !DILocalVariable(name: "ilim", scope: !2234, file: !453, line: 674, type: !97)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !453, line: 671, column: 15)
!2235 = distinct !DILexicalBlock(scope: !2215, file: !453, line: 670, column: 17)
!2236 = !DILabel(scope: !2205, name: "store_escape", file: !453, line: 709)
!2237 = !DILabel(scope: !2205, name: "store_c", file: !453, line: 712)
!2238 = !DILabel(scope: !2171, name: "force_outer_quoting_style", file: !453, line: 753)
!2239 = distinct !DIAssignID()
!2240 = distinct !DIAssignID()
!2241 = distinct !DIAssignID()
!2242 = distinct !DIAssignID()
!2243 = distinct !DIAssignID()
!2244 = !DILocation(line: 0, scope: !2218)
!2245 = distinct !DIAssignID()
!2246 = !DILocation(line: 0, scope: !2221)
!2247 = !DILocation(line: 0, scope: !2171)
!2248 = !DILocation(line: 258, column: 25, scope: !2171)
!2249 = !DILocation(line: 258, column: 36, scope: !2171)
!2250 = !DILocation(line: 267, column: 3, scope: !2171)
!2251 = !DILocation(line: 261, column: 10, scope: !2171)
!2252 = !DILocation(line: 262, column: 15, scope: !2171)
!2253 = !DILocation(line: 263, column: 10, scope: !2171)
!2254 = !DILocation(line: 308, column: 2, scope: !2171)
!2255 = !DILocation(line: 311, column: 3, scope: !2171)
!2256 = !DILocation(line: 318, column: 11, scope: !2201)
!2257 = !DILocation(line: 319, column: 9, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !453, line: 319, column: 9)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !453, line: 319, column: 9)
!2260 = distinct !DILexicalBlock(scope: !2201, file: !453, line: 318, column: 11)
!2261 = !DILocation(line: 319, column: 9, scope: !2259)
!2262 = !DILocation(line: 0, scope: !531, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 357, column: 26, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !453, line: 335, column: 11)
!2265 = distinct !DILexicalBlock(scope: !2200, file: !453, line: 334, column: 13)
!2266 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !2263)
!2267 = !DILocation(line: 201, column: 19, scope: !2268, inlinedAt: !2263)
!2268 = distinct !DILexicalBlock(scope: !531, file: !453, line: 201, column: 7)
!2269 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !2263)
!2270 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !2263)
!2271 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !2263)
!2272 = !DILocalVariable(name: "ps", arg: 1, scope: !2273, file: !2019, line: 1135, type: !2276)
!2273 = distinct !DISubprogram(name: "mbszero", scope: !2019, file: !2019, line: 1135, type: !2274, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2277)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2276}
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!2277 = !{!2272}
!2278 = !DILocation(line: 0, scope: !2273, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !2263)
!2280 = !DILocalVariable(name: "__dest", arg: 1, scope: !2281, file: !1099, line: 57, type: !94)
!2281 = distinct !DISubprogram(name: "memset", scope: !1099, file: !1099, line: 57, type: !2028, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2282)
!2282 = !{!2280, !2283, !2284}
!2283 = !DILocalVariable(name: "__ch", arg: 2, scope: !2281, file: !1099, line: 57, type: !95)
!2284 = !DILocalVariable(name: "__len", arg: 3, scope: !2281, file: !1099, line: 57, type: !97)
!2285 = !DILocation(line: 0, scope: !2281, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 1137, column: 3, scope: !2273, inlinedAt: !2279)
!2287 = !DILocation(line: 59, column: 10, scope: !2281, inlinedAt: !2286)
!2288 = !DILocation(line: 231, column: 7, scope: !2289, inlinedAt: !2263)
!2289 = distinct !DILexicalBlock(scope: !531, file: !453, line: 231, column: 7)
!2290 = !DILocation(line: 231, column: 40, scope: !2289, inlinedAt: !2263)
!2291 = !DILocation(line: 231, column: 45, scope: !2289, inlinedAt: !2263)
!2292 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !2263)
!2293 = !DILocation(line: 0, scope: !531, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 358, column: 27, scope: !2264)
!2295 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !2294)
!2296 = !DILocation(line: 201, column: 19, scope: !2268, inlinedAt: !2294)
!2297 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !2294)
!2298 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !2294)
!2299 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !2294)
!2300 = !DILocation(line: 0, scope: !2273, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !2294)
!2302 = !DILocation(line: 0, scope: !2281, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 1137, column: 3, scope: !2273, inlinedAt: !2301)
!2304 = !DILocation(line: 59, column: 10, scope: !2281, inlinedAt: !2303)
!2305 = !DILocation(line: 231, column: 7, scope: !2289, inlinedAt: !2294)
!2306 = !DILocation(line: 231, column: 40, scope: !2289, inlinedAt: !2294)
!2307 = !DILocation(line: 231, column: 45, scope: !2289, inlinedAt: !2294)
!2308 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !2294)
!2309 = !DILocation(line: 360, column: 13, scope: !2200)
!2310 = !DILocation(line: 0, scope: !2198)
!2311 = !DILocation(line: 361, column: 45, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2198, file: !453, line: 361, column: 11)
!2313 = !DILocation(line: 361, column: 11, scope: !2198)
!2314 = !DILocation(line: 362, column: 13, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !453, line: 362, column: 13)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !453, line: 362, column: 13)
!2317 = !DILocation(line: 362, column: 13, scope: !2316)
!2318 = !DILocation(line: 361, column: 52, scope: !2312)
!2319 = distinct !{!2319, !2313, !2320, !926}
!2320 = !DILocation(line: 362, column: 13, scope: !2198)
!2321 = !DILocation(line: 365, column: 28, scope: !2200)
!2322 = !DILocation(line: 260, column: 10, scope: !2171)
!2323 = !DILocation(line: 367, column: 7, scope: !2201)
!2324 = !DILocation(line: 373, column: 7, scope: !2201)
!2325 = !DILocation(line: 381, column: 11, scope: !2201)
!2326 = !DILocation(line: 376, column: 11, scope: !2201)
!2327 = !DILocation(line: 382, column: 9, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !453, line: 382, column: 9)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !453, line: 382, column: 9)
!2330 = distinct !DILexicalBlock(scope: !2201, file: !453, line: 381, column: 11)
!2331 = !DILocation(line: 382, column: 9, scope: !2329)
!2332 = !DILocation(line: 389, column: 7, scope: !2201)
!2333 = !DILocation(line: 392, column: 7, scope: !2201)
!2334 = !DILocation(line: 0, scope: !2203)
!2335 = !DILocation(line: 395, column: 8, scope: !2203)
!2336 = !DILocation(line: 395, scope: !2203)
!2337 = !DILocation(line: 395, column: 34, scope: !2206)
!2338 = !DILocation(line: 395, column: 26, scope: !2206)
!2339 = !DILocation(line: 395, column: 48, scope: !2206)
!2340 = !DILocation(line: 395, column: 55, scope: !2206)
!2341 = !DILocation(line: 395, column: 3, scope: !2203)
!2342 = !DILocation(line: 395, column: 67, scope: !2206)
!2343 = !DILocation(line: 0, scope: !2205)
!2344 = !DILocation(line: 402, column: 11, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 401, column: 11)
!2346 = !DILocation(line: 404, column: 17, scope: !2345)
!2347 = !DILocation(line: 405, column: 39, scope: !2345)
!2348 = !DILocation(line: 409, column: 32, scope: !2345)
!2349 = !DILocation(line: 405, column: 19, scope: !2345)
!2350 = !DILocation(line: 405, column: 15, scope: !2345)
!2351 = !DILocation(line: 410, column: 11, scope: !2345)
!2352 = !DILocation(line: 410, column: 25, scope: !2345)
!2353 = !DILocalVariable(name: "__s1", arg: 1, scope: !2354, file: !892, line: 974, type: !1024)
!2354 = distinct !DISubprogram(name: "memeq", scope: !892, file: !892, line: 974, type: !1988, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2355)
!2355 = !{!2353, !2356, !2357}
!2356 = !DILocalVariable(name: "__s2", arg: 2, scope: !2354, file: !892, line: 974, type: !1024)
!2357 = !DILocalVariable(name: "__n", arg: 3, scope: !2354, file: !892, line: 974, type: !97)
!2358 = !DILocation(line: 0, scope: !2354, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 410, column: 14, scope: !2345)
!2360 = !DILocation(line: 976, column: 11, scope: !2354, inlinedAt: !2359)
!2361 = !DILocation(line: 976, column: 10, scope: !2354, inlinedAt: !2359)
!2362 = !DILocation(line: 401, column: 11, scope: !2205)
!2363 = !DILocation(line: 417, column: 25, scope: !2205)
!2364 = !DILocation(line: 418, column: 7, scope: !2205)
!2365 = !DILocation(line: 421, column: 15, scope: !2212)
!2366 = !DILocation(line: 423, column: 15, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !453, line: 423, column: 15)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !453, line: 422, column: 13)
!2369 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 421, column: 15)
!2370 = !DILocation(line: 423, column: 15, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !453, line: 423, column: 15)
!2372 = !DILocation(line: 423, column: 15, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !453, line: 423, column: 15)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !453, line: 423, column: 15)
!2375 = distinct !DILexicalBlock(scope: !2371, file: !453, line: 423, column: 15)
!2376 = !DILocation(line: 423, column: 15, scope: !2374)
!2377 = !DILocation(line: 423, column: 15, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !453, line: 423, column: 15)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !453, line: 423, column: 15)
!2380 = !DILocation(line: 423, column: 15, scope: !2379)
!2381 = !DILocation(line: 423, column: 15, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2383, file: !453, line: 423, column: 15)
!2383 = distinct !DILexicalBlock(scope: !2375, file: !453, line: 423, column: 15)
!2384 = !DILocation(line: 423, column: 15, scope: !2383)
!2385 = !DILocation(line: 423, column: 15, scope: !2375)
!2386 = !DILocation(line: 423, column: 15, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !453, line: 423, column: 15)
!2388 = distinct !DILexicalBlock(scope: !2367, file: !453, line: 423, column: 15)
!2389 = !DILocation(line: 423, column: 15, scope: !2388)
!2390 = !DILocation(line: 431, column: 19, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2368, file: !453, line: 430, column: 19)
!2392 = !DILocation(line: 431, column: 24, scope: !2391)
!2393 = !DILocation(line: 431, column: 28, scope: !2391)
!2394 = !DILocation(line: 431, column: 38, scope: !2391)
!2395 = !DILocation(line: 431, column: 48, scope: !2391)
!2396 = !DILocation(line: 431, column: 59, scope: !2391)
!2397 = !DILocation(line: 433, column: 19, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !453, line: 433, column: 19)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !453, line: 433, column: 19)
!2400 = distinct !DILexicalBlock(scope: !2391, file: !453, line: 432, column: 17)
!2401 = !DILocation(line: 433, column: 19, scope: !2399)
!2402 = !DILocation(line: 434, column: 19, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !453, line: 434, column: 19)
!2404 = distinct !DILexicalBlock(scope: !2400, file: !453, line: 434, column: 19)
!2405 = !DILocation(line: 434, column: 19, scope: !2404)
!2406 = !DILocation(line: 435, column: 17, scope: !2400)
!2407 = !DILocation(line: 442, column: 20, scope: !2369)
!2408 = !DILocation(line: 447, column: 11, scope: !2212)
!2409 = !DILocation(line: 450, column: 19, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 448, column: 13)
!2411 = !DILocation(line: 456, column: 19, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2410, file: !453, line: 455, column: 19)
!2413 = !DILocation(line: 456, column: 24, scope: !2412)
!2414 = !DILocation(line: 456, column: 28, scope: !2412)
!2415 = !DILocation(line: 456, column: 38, scope: !2412)
!2416 = !DILocation(line: 456, column: 41, scope: !2412)
!2417 = !DILocation(line: 456, column: 52, scope: !2412)
!2418 = !DILocation(line: 455, column: 19, scope: !2410)
!2419 = !DILocation(line: 457, column: 25, scope: !2412)
!2420 = !DILocation(line: 457, column: 17, scope: !2412)
!2421 = !DILocation(line: 464, column: 25, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2412, file: !453, line: 458, column: 19)
!2423 = !DILocation(line: 468, column: 21, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !453, line: 468, column: 21)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !453, line: 468, column: 21)
!2426 = !DILocation(line: 468, column: 21, scope: !2425)
!2427 = !DILocation(line: 469, column: 21, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !453, line: 469, column: 21)
!2429 = distinct !DILexicalBlock(scope: !2422, file: !453, line: 469, column: 21)
!2430 = !DILocation(line: 469, column: 21, scope: !2429)
!2431 = !DILocation(line: 470, column: 21, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !453, line: 470, column: 21)
!2433 = distinct !DILexicalBlock(scope: !2422, file: !453, line: 470, column: 21)
!2434 = !DILocation(line: 470, column: 21, scope: !2433)
!2435 = !DILocation(line: 471, column: 21, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !453, line: 471, column: 21)
!2437 = distinct !DILexicalBlock(scope: !2422, file: !453, line: 471, column: 21)
!2438 = !DILocation(line: 471, column: 21, scope: !2437)
!2439 = !DILocation(line: 472, column: 21, scope: !2422)
!2440 = !DILocation(line: 482, column: 33, scope: !2211)
!2441 = !DILocation(line: 483, column: 33, scope: !2211)
!2442 = !DILocation(line: 485, column: 33, scope: !2211)
!2443 = !DILocation(line: 486, column: 33, scope: !2211)
!2444 = !DILocation(line: 487, column: 33, scope: !2211)
!2445 = !DILocation(line: 490, column: 17, scope: !2211)
!2446 = !DILocation(line: 492, column: 21, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !453, line: 491, column: 15)
!2448 = distinct !DILexicalBlock(scope: !2211, file: !453, line: 490, column: 17)
!2449 = !DILocation(line: 499, column: 35, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2211, file: !453, line: 499, column: 17)
!2451 = !DILocation(line: 0, scope: !2211)
!2452 = !DILocation(line: 502, column: 11, scope: !2211)
!2453 = !DILocation(line: 504, column: 17, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2211, file: !453, line: 503, column: 17)
!2455 = !DILocation(line: 507, column: 11, scope: !2211)
!2456 = !DILocation(line: 508, column: 17, scope: !2211)
!2457 = !DILocation(line: 517, column: 15, scope: !2212)
!2458 = !DILocation(line: 517, column: 40, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 517, column: 15)
!2460 = !DILocation(line: 517, column: 47, scope: !2459)
!2461 = !DILocation(line: 517, column: 18, scope: !2459)
!2462 = !DILocation(line: 521, column: 17, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 521, column: 15)
!2464 = !DILocation(line: 521, column: 15, scope: !2212)
!2465 = !DILocation(line: 525, column: 11, scope: !2212)
!2466 = !DILocation(line: 537, column: 15, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 536, column: 15)
!2468 = !DILocation(line: 536, column: 15, scope: !2212)
!2469 = !DILocation(line: 544, column: 15, scope: !2212)
!2470 = !DILocation(line: 546, column: 19, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2472, file: !453, line: 545, column: 13)
!2472 = distinct !DILexicalBlock(scope: !2212, file: !453, line: 544, column: 15)
!2473 = !DILocation(line: 549, column: 19, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !453, line: 549, column: 19)
!2475 = !DILocation(line: 549, column: 30, scope: !2474)
!2476 = !DILocation(line: 558, column: 15, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !453, line: 558, column: 15)
!2478 = distinct !DILexicalBlock(scope: !2471, file: !453, line: 558, column: 15)
!2479 = !DILocation(line: 558, column: 15, scope: !2478)
!2480 = !DILocation(line: 559, column: 15, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !453, line: 559, column: 15)
!2482 = distinct !DILexicalBlock(scope: !2471, file: !453, line: 559, column: 15)
!2483 = !DILocation(line: 559, column: 15, scope: !2482)
!2484 = !DILocation(line: 560, column: 15, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !453, line: 560, column: 15)
!2486 = distinct !DILexicalBlock(scope: !2471, file: !453, line: 560, column: 15)
!2487 = !DILocation(line: 560, column: 15, scope: !2486)
!2488 = !DILocation(line: 562, column: 13, scope: !2471)
!2489 = !DILocation(line: 602, column: 17, scope: !2215)
!2490 = !DILocation(line: 0, scope: !2215)
!2491 = !DILocation(line: 605, column: 29, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2219, file: !453, line: 603, column: 15)
!2493 = !DILocation(line: 605, column: 41, scope: !2492)
!2494 = !DILocation(line: 606, column: 15, scope: !2492)
!2495 = !DILocation(line: 609, column: 17, scope: !2218)
!2496 = !DILocation(line: 0, scope: !2273, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 609, column: 32, scope: !2218)
!2498 = !DILocation(line: 0, scope: !2281, inlinedAt: !2499)
!2499 = distinct !DILocation(line: 1137, column: 3, scope: !2273, inlinedAt: !2497)
!2500 = !DILocation(line: 59, column: 10, scope: !2281, inlinedAt: !2499)
!2501 = !DILocation(line: 613, column: 29, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2218, file: !453, line: 613, column: 21)
!2503 = !DILocation(line: 613, column: 21, scope: !2218)
!2504 = !DILocation(line: 614, column: 29, scope: !2502)
!2505 = !DILocation(line: 614, column: 19, scope: !2502)
!2506 = !DILocation(line: 618, column: 21, scope: !2221)
!2507 = !DILocation(line: 620, column: 54, scope: !2221)
!2508 = !DILocation(line: 619, column: 36, scope: !2221)
!2509 = !DILocation(line: 621, column: 25, scope: !2221)
!2510 = !DILocation(line: 631, column: 38, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2230, file: !453, line: 629, column: 23)
!2512 = !DILocation(line: 631, column: 48, scope: !2511)
!2513 = !DILocation(line: 631, column: 25, scope: !2511)
!2514 = !DILocation(line: 626, column: 25, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2231, file: !453, line: 624, column: 23)
!2516 = !DILocation(line: 631, column: 51, scope: !2511)
!2517 = !DILocation(line: 632, column: 28, scope: !2511)
!2518 = !DILocation(line: 631, column: 34, scope: !2511)
!2519 = distinct !{!2519, !2513, !2517, !926}
!2520 = !DILocation(line: 0, scope: !2226)
!2521 = !DILocation(line: 646, column: 29, scope: !2228)
!2522 = !DILocation(line: 648, column: 29, scope: !2226)
!2523 = !DILocation(line: 649, column: 39, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2226, file: !453, line: 648, column: 29)
!2525 = !DILocation(line: 649, column: 31, scope: !2524)
!2526 = !DILocation(line: 648, column: 60, scope: !2524)
!2527 = !DILocation(line: 648, column: 50, scope: !2524)
!2528 = distinct !{!2528, !2522, !2529, !926}
!2529 = !DILocation(line: 654, column: 33, scope: !2226)
!2530 = !DILocation(line: 657, column: 43, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2229, file: !453, line: 657, column: 29)
!2532 = !DILocalVariable(name: "wc", arg: 1, scope: !2533, file: !2534, line: 865, type: !2537)
!2533 = distinct !DISubprogram(name: "c32isprint", scope: !2534, file: !2534, line: 865, type: !2535, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2539)
!2534 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!95, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2538, line: 20, baseType: !76)
!2538 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2539 = !{!2532}
!2540 = !DILocation(line: 0, scope: !2533, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 657, column: 31, scope: !2531)
!2542 = !DILocation(line: 871, column: 10, scope: !2533, inlinedAt: !2541)
!2543 = !DILocation(line: 657, column: 31, scope: !2531)
!2544 = !DILocation(line: 664, column: 23, scope: !2221)
!2545 = !DILocation(line: 665, column: 19, scope: !2222)
!2546 = !DILocation(line: 666, column: 15, scope: !2219)
!2547 = !DILocation(line: 753, column: 2, scope: !2171)
!2548 = !DILocation(line: 756, column: 51, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 756, column: 7)
!2550 = !DILocation(line: 0, scope: !2219)
!2551 = !DILocation(line: 670, column: 19, scope: !2235)
!2552 = !DILocation(line: 670, column: 23, scope: !2235)
!2553 = !DILocation(line: 674, column: 33, scope: !2234)
!2554 = !DILocation(line: 0, scope: !2234)
!2555 = !DILocation(line: 676, column: 17, scope: !2234)
!2556 = !DILocation(line: 678, column: 43, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !453, line: 678, column: 25)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !453, line: 677, column: 19)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !453, line: 676, column: 17)
!2560 = distinct !DILexicalBlock(scope: !2234, file: !453, line: 676, column: 17)
!2561 = !DILocation(line: 680, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !453, line: 680, column: 25)
!2563 = distinct !DILexicalBlock(scope: !2557, file: !453, line: 679, column: 23)
!2564 = !DILocation(line: 680, column: 25, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2562, file: !453, line: 680, column: 25)
!2566 = !DILocation(line: 680, column: 25, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !453, line: 680, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !453, line: 680, column: 25)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !453, line: 680, column: 25)
!2570 = !DILocation(line: 680, column: 25, scope: !2568)
!2571 = !DILocation(line: 680, column: 25, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !453, line: 680, column: 25)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !453, line: 680, column: 25)
!2574 = !DILocation(line: 680, column: 25, scope: !2573)
!2575 = !DILocation(line: 680, column: 25, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !453, line: 680, column: 25)
!2577 = distinct !DILexicalBlock(scope: !2569, file: !453, line: 680, column: 25)
!2578 = !DILocation(line: 680, column: 25, scope: !2577)
!2579 = !DILocation(line: 680, column: 25, scope: !2569)
!2580 = !DILocation(line: 680, column: 25, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !453, line: 680, column: 25)
!2582 = distinct !DILexicalBlock(scope: !2562, file: !453, line: 680, column: 25)
!2583 = !DILocation(line: 680, column: 25, scope: !2582)
!2584 = !DILocation(line: 681, column: 25, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2586, file: !453, line: 681, column: 25)
!2586 = distinct !DILexicalBlock(scope: !2563, file: !453, line: 681, column: 25)
!2587 = !DILocation(line: 681, column: 25, scope: !2586)
!2588 = !DILocation(line: 682, column: 25, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !453, line: 682, column: 25)
!2590 = distinct !DILexicalBlock(scope: !2563, file: !453, line: 682, column: 25)
!2591 = !DILocation(line: 682, column: 25, scope: !2590)
!2592 = !DILocation(line: 683, column: 38, scope: !2563)
!2593 = !DILocation(line: 683, column: 33, scope: !2563)
!2594 = !DILocation(line: 684, column: 23, scope: !2563)
!2595 = !DILocation(line: 685, column: 30, scope: !2557)
!2596 = !DILocation(line: 687, column: 25, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !453, line: 687, column: 25)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !453, line: 687, column: 25)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !453, line: 686, column: 23)
!2600 = distinct !DILexicalBlock(scope: !2557, file: !453, line: 685, column: 30)
!2601 = !DILocation(line: 687, column: 25, scope: !2598)
!2602 = !DILocation(line: 689, column: 23, scope: !2599)
!2603 = !DILocation(line: 690, column: 35, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2558, file: !453, line: 690, column: 25)
!2605 = !DILocation(line: 690, column: 30, scope: !2604)
!2606 = !DILocation(line: 690, column: 25, scope: !2558)
!2607 = !DILocation(line: 692, column: 21, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !453, line: 692, column: 21)
!2609 = distinct !DILexicalBlock(scope: !2558, file: !453, line: 692, column: 21)
!2610 = !DILocation(line: 692, column: 21, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !453, line: 692, column: 21)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !453, line: 692, column: 21)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !453, line: 692, column: 21)
!2614 = !DILocation(line: 692, column: 21, scope: !2612)
!2615 = !DILocation(line: 692, column: 21, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !453, line: 692, column: 21)
!2617 = distinct !DILexicalBlock(scope: !2613, file: !453, line: 692, column: 21)
!2618 = !DILocation(line: 692, column: 21, scope: !2617)
!2619 = !DILocation(line: 692, column: 21, scope: !2613)
!2620 = !DILocation(line: 0, scope: !2558)
!2621 = !DILocation(line: 693, column: 21, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !453, line: 693, column: 21)
!2623 = distinct !DILexicalBlock(scope: !2558, file: !453, line: 693, column: 21)
!2624 = !DILocation(line: 693, column: 21, scope: !2623)
!2625 = !DILocation(line: 694, column: 25, scope: !2558)
!2626 = !DILocation(line: 676, column: 17, scope: !2559)
!2627 = distinct !{!2627, !2628, !2629}
!2628 = !DILocation(line: 676, column: 17, scope: !2560)
!2629 = !DILocation(line: 695, column: 19, scope: !2560)
!2630 = !DILocation(line: 409, column: 30, scope: !2345)
!2631 = !DILocation(line: 702, column: 34, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 702, column: 11)
!2633 = !DILocation(line: 704, column: 14, scope: !2632)
!2634 = !DILocation(line: 705, column: 14, scope: !2632)
!2635 = !DILocation(line: 705, column: 35, scope: !2632)
!2636 = !DILocation(line: 705, column: 17, scope: !2632)
!2637 = !DILocation(line: 705, column: 47, scope: !2632)
!2638 = !DILocation(line: 705, column: 65, scope: !2632)
!2639 = !DILocation(line: 706, column: 11, scope: !2632)
!2640 = !DILocation(line: 702, column: 11, scope: !2205)
!2641 = !DILocation(line: 395, column: 15, scope: !2203)
!2642 = !DILocation(line: 709, column: 5, scope: !2205)
!2643 = !DILocation(line: 710, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 710, column: 7)
!2645 = !DILocation(line: 710, column: 7, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2644, file: !453, line: 710, column: 7)
!2647 = !DILocation(line: 710, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !453, line: 710, column: 7)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !453, line: 710, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2646, file: !453, line: 710, column: 7)
!2651 = !DILocation(line: 710, column: 7, scope: !2649)
!2652 = !DILocation(line: 710, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !453, line: 710, column: 7)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !453, line: 710, column: 7)
!2655 = !DILocation(line: 710, column: 7, scope: !2654)
!2656 = !DILocation(line: 710, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !453, line: 710, column: 7)
!2658 = distinct !DILexicalBlock(scope: !2650, file: !453, line: 710, column: 7)
!2659 = !DILocation(line: 710, column: 7, scope: !2658)
!2660 = !DILocation(line: 710, column: 7, scope: !2650)
!2661 = !DILocation(line: 710, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !453, line: 710, column: 7)
!2663 = distinct !DILexicalBlock(scope: !2644, file: !453, line: 710, column: 7)
!2664 = !DILocation(line: 710, column: 7, scope: !2663)
!2665 = !DILocation(line: 712, column: 5, scope: !2205)
!2666 = !DILocation(line: 713, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !453, line: 713, column: 7)
!2668 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 713, column: 7)
!2669 = !DILocation(line: 417, column: 21, scope: !2205)
!2670 = !DILocation(line: 713, column: 7, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !453, line: 713, column: 7)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !453, line: 713, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2667, file: !453, line: 713, column: 7)
!2674 = !DILocation(line: 713, column: 7, scope: !2672)
!2675 = !DILocation(line: 713, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !453, line: 713, column: 7)
!2677 = distinct !DILexicalBlock(scope: !2673, file: !453, line: 713, column: 7)
!2678 = !DILocation(line: 713, column: 7, scope: !2677)
!2679 = !DILocation(line: 713, column: 7, scope: !2673)
!2680 = !DILocation(line: 714, column: 7, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !453, line: 714, column: 7)
!2682 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 714, column: 7)
!2683 = !DILocation(line: 714, column: 7, scope: !2682)
!2684 = !DILocation(line: 716, column: 11, scope: !2205)
!2685 = !DILocation(line: 718, column: 5, scope: !2206)
!2686 = !DILocation(line: 395, column: 82, scope: !2206)
!2687 = !DILocation(line: 395, column: 3, scope: !2206)
!2688 = distinct !{!2688, !2341, !2689, !926}
!2689 = !DILocation(line: 718, column: 5, scope: !2203)
!2690 = !DILocation(line: 720, column: 11, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 720, column: 7)
!2692 = !DILocation(line: 720, column: 16, scope: !2691)
!2693 = !DILocation(line: 728, column: 51, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 728, column: 7)
!2695 = !DILocation(line: 731, column: 11, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2694, file: !453, line: 730, column: 5)
!2697 = !DILocation(line: 732, column: 16, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2696, file: !453, line: 731, column: 11)
!2699 = !DILocation(line: 732, column: 9, scope: !2698)
!2700 = !DILocation(line: 736, column: 18, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !453, line: 736, column: 16)
!2702 = !DILocation(line: 736, column: 29, scope: !2701)
!2703 = !DILocation(line: 745, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 745, column: 7)
!2705 = !DILocation(line: 745, column: 20, scope: !2704)
!2706 = !DILocation(line: 746, column: 12, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !453, line: 746, column: 5)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !453, line: 746, column: 5)
!2709 = !DILocation(line: 746, column: 5, scope: !2708)
!2710 = !DILocation(line: 747, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !453, line: 747, column: 7)
!2712 = distinct !DILexicalBlock(scope: !2707, file: !453, line: 747, column: 7)
!2713 = !DILocation(line: 747, column: 7, scope: !2712)
!2714 = !DILocation(line: 746, column: 39, scope: !2707)
!2715 = distinct !{!2715, !2709, !2716, !926}
!2716 = !DILocation(line: 747, column: 7, scope: !2708)
!2717 = !DILocation(line: 749, column: 11, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2171, file: !453, line: 749, column: 7)
!2719 = !DILocation(line: 749, column: 7, scope: !2171)
!2720 = !DILocation(line: 750, column: 5, scope: !2718)
!2721 = !DILocation(line: 750, column: 17, scope: !2718)
!2722 = !DILocation(line: 756, column: 21, scope: !2549)
!2723 = !DILocation(line: 760, column: 42, scope: !2171)
!2724 = !DILocation(line: 758, column: 10, scope: !2171)
!2725 = !DILocation(line: 758, column: 3, scope: !2171)
!2726 = !DILocation(line: 762, column: 1, scope: !2171)
!2727 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1000, file: !1000, line: 98, type: !2728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2728 = !DISubroutineType(types: !735)
!2729 = !DISubprogram(name: "iswprint", scope: !2730, file: !2730, line: 120, type: !2535, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2730 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2731 = distinct !DISubprogram(name: "quotearg_alloc", scope: !453, file: !453, line: 788, type: !2732, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!101, !70, !97, !2064}
!2734 = !{!2735, !2736, !2737}
!2735 = !DILocalVariable(name: "arg", arg: 1, scope: !2731, file: !453, line: 788, type: !70)
!2736 = !DILocalVariable(name: "argsize", arg: 2, scope: !2731, file: !453, line: 788, type: !97)
!2737 = !DILocalVariable(name: "o", arg: 3, scope: !2731, file: !453, line: 789, type: !2064)
!2738 = !DILocation(line: 0, scope: !2731)
!2739 = !DILocalVariable(name: "arg", arg: 1, scope: !2740, file: !453, line: 801, type: !70)
!2740 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !453, file: !453, line: 801, type: !2741, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2743)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!101, !70, !97, !749, !2064}
!2743 = !{!2739, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2744 = !DILocalVariable(name: "argsize", arg: 2, scope: !2740, file: !453, line: 801, type: !97)
!2745 = !DILocalVariable(name: "size", arg: 3, scope: !2740, file: !453, line: 801, type: !749)
!2746 = !DILocalVariable(name: "o", arg: 4, scope: !2740, file: !453, line: 802, type: !2064)
!2747 = !DILocalVariable(name: "p", scope: !2740, file: !453, line: 804, type: !2064)
!2748 = !DILocalVariable(name: "saved_errno", scope: !2740, file: !453, line: 805, type: !95)
!2749 = !DILocalVariable(name: "flags", scope: !2740, file: !453, line: 807, type: !95)
!2750 = !DILocalVariable(name: "bufsize", scope: !2740, file: !453, line: 808, type: !97)
!2751 = !DILocalVariable(name: "buf", scope: !2740, file: !453, line: 812, type: !101)
!2752 = !DILocation(line: 0, scope: !2740, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 791, column: 10, scope: !2731)
!2754 = !DILocation(line: 804, column: 37, scope: !2740, inlinedAt: !2753)
!2755 = !DILocation(line: 805, column: 21, scope: !2740, inlinedAt: !2753)
!2756 = !DILocation(line: 807, column: 18, scope: !2740, inlinedAt: !2753)
!2757 = !DILocation(line: 807, column: 24, scope: !2740, inlinedAt: !2753)
!2758 = !DILocation(line: 808, column: 72, scope: !2740, inlinedAt: !2753)
!2759 = !DILocation(line: 809, column: 56, scope: !2740, inlinedAt: !2753)
!2760 = !DILocation(line: 810, column: 49, scope: !2740, inlinedAt: !2753)
!2761 = !DILocation(line: 811, column: 49, scope: !2740, inlinedAt: !2753)
!2762 = !DILocation(line: 808, column: 20, scope: !2740, inlinedAt: !2753)
!2763 = !DILocation(line: 811, column: 62, scope: !2740, inlinedAt: !2753)
!2764 = !DILocation(line: 812, column: 15, scope: !2740, inlinedAt: !2753)
!2765 = !DILocation(line: 813, column: 60, scope: !2740, inlinedAt: !2753)
!2766 = !DILocation(line: 815, column: 32, scope: !2740, inlinedAt: !2753)
!2767 = !DILocation(line: 815, column: 47, scope: !2740, inlinedAt: !2753)
!2768 = !DILocation(line: 813, column: 3, scope: !2740, inlinedAt: !2753)
!2769 = !DILocation(line: 816, column: 9, scope: !2740, inlinedAt: !2753)
!2770 = !DILocation(line: 791, column: 3, scope: !2731)
!2771 = !DILocation(line: 0, scope: !2740)
!2772 = !DILocation(line: 804, column: 37, scope: !2740)
!2773 = !DILocation(line: 805, column: 21, scope: !2740)
!2774 = !DILocation(line: 807, column: 18, scope: !2740)
!2775 = !DILocation(line: 807, column: 27, scope: !2740)
!2776 = !DILocation(line: 807, column: 24, scope: !2740)
!2777 = !DILocation(line: 808, column: 72, scope: !2740)
!2778 = !DILocation(line: 809, column: 56, scope: !2740)
!2779 = !DILocation(line: 810, column: 49, scope: !2740)
!2780 = !DILocation(line: 811, column: 49, scope: !2740)
!2781 = !DILocation(line: 808, column: 20, scope: !2740)
!2782 = !DILocation(line: 811, column: 62, scope: !2740)
!2783 = !DILocation(line: 812, column: 15, scope: !2740)
!2784 = !DILocation(line: 813, column: 60, scope: !2740)
!2785 = !DILocation(line: 815, column: 32, scope: !2740)
!2786 = !DILocation(line: 815, column: 47, scope: !2740)
!2787 = !DILocation(line: 813, column: 3, scope: !2740)
!2788 = !DILocation(line: 816, column: 9, scope: !2740)
!2789 = !DILocation(line: 817, column: 7, scope: !2740)
!2790 = !DILocation(line: 818, column: 11, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2740, file: !453, line: 817, column: 7)
!2792 = !{!1263, !1263, i64 0}
!2793 = !DILocation(line: 818, column: 5, scope: !2791)
!2794 = !DILocation(line: 819, column: 3, scope: !2740)
!2795 = distinct !DISubprogram(name: "quotearg_free", scope: !453, file: !453, line: 837, type: !366, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2796)
!2796 = !{!2797, !2798}
!2797 = !DILocalVariable(name: "sv", scope: !2795, file: !453, line: 839, type: !554)
!2798 = !DILocalVariable(name: "i", scope: !2799, file: !453, line: 840, type: !95)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !453, line: 840, column: 3)
!2800 = !DILocation(line: 839, column: 24, scope: !2795)
!2801 = !DILocation(line: 0, scope: !2795)
!2802 = !DILocation(line: 0, scope: !2799)
!2803 = !DILocation(line: 840, column: 21, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2799, file: !453, line: 840, column: 3)
!2805 = !DILocation(line: 840, column: 3, scope: !2799)
!2806 = !DILocation(line: 842, column: 13, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2795, file: !453, line: 842, column: 7)
!2808 = !{!2809, !820, i64 8}
!2809 = !{!"slotvec", !1263, i64 0, !820, i64 8}
!2810 = !DILocation(line: 842, column: 17, scope: !2807)
!2811 = !DILocation(line: 842, column: 7, scope: !2795)
!2812 = !DILocation(line: 841, column: 17, scope: !2804)
!2813 = !DILocation(line: 841, column: 5, scope: !2804)
!2814 = !DILocation(line: 840, column: 32, scope: !2804)
!2815 = distinct !{!2815, !2805, !2816, !926}
!2816 = !DILocation(line: 841, column: 20, scope: !2799)
!2817 = !DILocation(line: 844, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2807, file: !453, line: 843, column: 5)
!2819 = !DILocation(line: 845, column: 21, scope: !2818)
!2820 = !{!2809, !1263, i64 0}
!2821 = !DILocation(line: 846, column: 20, scope: !2818)
!2822 = !DILocation(line: 847, column: 5, scope: !2818)
!2823 = !DILocation(line: 848, column: 10, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2795, file: !453, line: 848, column: 7)
!2825 = !DILocation(line: 848, column: 7, scope: !2795)
!2826 = !DILocation(line: 850, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2824, file: !453, line: 849, column: 5)
!2828 = !DILocation(line: 851, column: 15, scope: !2827)
!2829 = !DILocation(line: 852, column: 5, scope: !2827)
!2830 = !DILocation(line: 853, column: 10, scope: !2795)
!2831 = !DILocation(line: 854, column: 1, scope: !2795)
!2832 = distinct !DISubprogram(name: "quotearg_n", scope: !453, file: !453, line: 919, type: !993, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2833)
!2833 = !{!2834, !2835}
!2834 = !DILocalVariable(name: "n", arg: 1, scope: !2832, file: !453, line: 919, type: !95)
!2835 = !DILocalVariable(name: "arg", arg: 2, scope: !2832, file: !453, line: 919, type: !70)
!2836 = !DILocation(line: 0, scope: !2832)
!2837 = !DILocation(line: 921, column: 10, scope: !2832)
!2838 = !DILocation(line: 921, column: 3, scope: !2832)
!2839 = distinct !DISubprogram(name: "quotearg_n_options", scope: !453, file: !453, line: 866, type: !2840, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!101, !95, !70, !97, !2064}
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2853, !2854, !2856, !2857, !2858}
!2843 = !DILocalVariable(name: "n", arg: 1, scope: !2839, file: !453, line: 866, type: !95)
!2844 = !DILocalVariable(name: "arg", arg: 2, scope: !2839, file: !453, line: 866, type: !70)
!2845 = !DILocalVariable(name: "argsize", arg: 3, scope: !2839, file: !453, line: 866, type: !97)
!2846 = !DILocalVariable(name: "options", arg: 4, scope: !2839, file: !453, line: 867, type: !2064)
!2847 = !DILocalVariable(name: "saved_errno", scope: !2839, file: !453, line: 869, type: !95)
!2848 = !DILocalVariable(name: "sv", scope: !2839, file: !453, line: 871, type: !554)
!2849 = !DILocalVariable(name: "nslots_max", scope: !2839, file: !453, line: 873, type: !95)
!2850 = !DILocalVariable(name: "preallocated", scope: !2851, file: !453, line: 879, type: !219)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !453, line: 878, column: 5)
!2852 = distinct !DILexicalBlock(scope: !2839, file: !453, line: 877, column: 7)
!2853 = !DILocalVariable(name: "new_nslots", scope: !2851, file: !453, line: 880, type: !762)
!2854 = !DILocalVariable(name: "size", scope: !2855, file: !453, line: 891, type: !97)
!2855 = distinct !DILexicalBlock(scope: !2839, file: !453, line: 890, column: 3)
!2856 = !DILocalVariable(name: "val", scope: !2855, file: !453, line: 892, type: !101)
!2857 = !DILocalVariable(name: "flags", scope: !2855, file: !453, line: 894, type: !95)
!2858 = !DILocalVariable(name: "qsize", scope: !2855, file: !453, line: 895, type: !97)
!2859 = distinct !DIAssignID()
!2860 = !DILocation(line: 0, scope: !2851)
!2861 = !DILocation(line: 0, scope: !2839)
!2862 = !DILocation(line: 869, column: 21, scope: !2839)
!2863 = !DILocation(line: 871, column: 24, scope: !2839)
!2864 = !DILocation(line: 874, column: 17, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2839, file: !453, line: 874, column: 7)
!2866 = !DILocation(line: 875, column: 5, scope: !2865)
!2867 = !DILocation(line: 877, column: 7, scope: !2852)
!2868 = !DILocation(line: 877, column: 14, scope: !2852)
!2869 = !DILocation(line: 877, column: 7, scope: !2839)
!2870 = !DILocation(line: 879, column: 31, scope: !2851)
!2871 = !DILocation(line: 880, column: 7, scope: !2851)
!2872 = !DILocation(line: 880, column: 26, scope: !2851)
!2873 = !DILocation(line: 880, column: 13, scope: !2851)
!2874 = distinct !DIAssignID()
!2875 = !DILocation(line: 882, column: 31, scope: !2851)
!2876 = !DILocation(line: 883, column: 33, scope: !2851)
!2877 = !DILocation(line: 883, column: 42, scope: !2851)
!2878 = !DILocation(line: 883, column: 31, scope: !2851)
!2879 = !DILocation(line: 882, column: 22, scope: !2851)
!2880 = !DILocation(line: 882, column: 15, scope: !2851)
!2881 = !DILocation(line: 884, column: 11, scope: !2851)
!2882 = !DILocation(line: 885, column: 15, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2851, file: !453, line: 884, column: 11)
!2884 = !{i64 0, i64 8, !2792, i64 8, i64 8, !819}
!2885 = !DILocation(line: 885, column: 9, scope: !2883)
!2886 = !DILocation(line: 886, column: 20, scope: !2851)
!2887 = !DILocation(line: 886, column: 18, scope: !2851)
!2888 = !DILocation(line: 886, column: 32, scope: !2851)
!2889 = !DILocation(line: 886, column: 43, scope: !2851)
!2890 = !DILocation(line: 886, column: 53, scope: !2851)
!2891 = !DILocation(line: 0, scope: !2281, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 886, column: 7, scope: !2851)
!2893 = !DILocation(line: 59, column: 10, scope: !2281, inlinedAt: !2892)
!2894 = !DILocation(line: 887, column: 16, scope: !2851)
!2895 = !DILocation(line: 887, column: 14, scope: !2851)
!2896 = !DILocation(line: 888, column: 5, scope: !2852)
!2897 = !DILocation(line: 888, column: 5, scope: !2851)
!2898 = !DILocation(line: 891, column: 19, scope: !2855)
!2899 = !DILocation(line: 891, column: 25, scope: !2855)
!2900 = !DILocation(line: 0, scope: !2855)
!2901 = !DILocation(line: 892, column: 23, scope: !2855)
!2902 = !DILocation(line: 894, column: 26, scope: !2855)
!2903 = !DILocation(line: 894, column: 32, scope: !2855)
!2904 = !DILocation(line: 896, column: 55, scope: !2855)
!2905 = !DILocation(line: 897, column: 55, scope: !2855)
!2906 = !DILocation(line: 898, column: 55, scope: !2855)
!2907 = !DILocation(line: 899, column: 55, scope: !2855)
!2908 = !DILocation(line: 895, column: 20, scope: !2855)
!2909 = !DILocation(line: 901, column: 14, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2855, file: !453, line: 901, column: 9)
!2911 = !DILocation(line: 901, column: 9, scope: !2855)
!2912 = !DILocation(line: 903, column: 35, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2910, file: !453, line: 902, column: 7)
!2914 = !DILocation(line: 903, column: 20, scope: !2913)
!2915 = !DILocation(line: 904, column: 17, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2913, file: !453, line: 904, column: 13)
!2917 = !DILocation(line: 904, column: 13, scope: !2913)
!2918 = !DILocation(line: 905, column: 11, scope: !2916)
!2919 = !DILocation(line: 906, column: 27, scope: !2913)
!2920 = !DILocation(line: 906, column: 19, scope: !2913)
!2921 = !DILocation(line: 907, column: 69, scope: !2913)
!2922 = !DILocation(line: 909, column: 44, scope: !2913)
!2923 = !DILocation(line: 910, column: 44, scope: !2913)
!2924 = !DILocation(line: 907, column: 9, scope: !2913)
!2925 = !DILocation(line: 911, column: 7, scope: !2913)
!2926 = !DILocation(line: 913, column: 11, scope: !2855)
!2927 = !DILocation(line: 914, column: 5, scope: !2855)
!2928 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !453, file: !453, line: 925, type: !2929, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2931)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!101, !95, !70, !97}
!2931 = !{!2932, !2933, !2934}
!2932 = !DILocalVariable(name: "n", arg: 1, scope: !2928, file: !453, line: 925, type: !95)
!2933 = !DILocalVariable(name: "arg", arg: 2, scope: !2928, file: !453, line: 925, type: !70)
!2934 = !DILocalVariable(name: "argsize", arg: 3, scope: !2928, file: !453, line: 925, type: !97)
!2935 = !DILocation(line: 0, scope: !2928)
!2936 = !DILocation(line: 927, column: 10, scope: !2928)
!2937 = !DILocation(line: 927, column: 3, scope: !2928)
!2938 = distinct !DISubprogram(name: "quotearg", scope: !453, file: !453, line: 931, type: !1002, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2939)
!2939 = !{!2940}
!2940 = !DILocalVariable(name: "arg", arg: 1, scope: !2938, file: !453, line: 931, type: !70)
!2941 = !DILocation(line: 0, scope: !2938)
!2942 = !DILocation(line: 0, scope: !2832, inlinedAt: !2943)
!2943 = distinct !DILocation(line: 933, column: 10, scope: !2938)
!2944 = !DILocation(line: 921, column: 10, scope: !2832, inlinedAt: !2943)
!2945 = !DILocation(line: 933, column: 3, scope: !2938)
!2946 = distinct !DISubprogram(name: "quotearg_mem", scope: !453, file: !453, line: 937, type: !2947, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2949)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!101, !70, !97}
!2949 = !{!2950, !2951}
!2950 = !DILocalVariable(name: "arg", arg: 1, scope: !2946, file: !453, line: 937, type: !70)
!2951 = !DILocalVariable(name: "argsize", arg: 2, scope: !2946, file: !453, line: 937, type: !97)
!2952 = !DILocation(line: 0, scope: !2946)
!2953 = !DILocation(line: 0, scope: !2928, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 939, column: 10, scope: !2946)
!2955 = !DILocation(line: 927, column: 10, scope: !2928, inlinedAt: !2954)
!2956 = !DILocation(line: 939, column: 3, scope: !2946)
!2957 = distinct !DISubprogram(name: "quotearg_n_style", scope: !453, file: !453, line: 943, type: !2958, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!101, !95, !479, !70}
!2960 = !{!2961, !2962, !2963, !2964}
!2961 = !DILocalVariable(name: "n", arg: 1, scope: !2957, file: !453, line: 943, type: !95)
!2962 = !DILocalVariable(name: "s", arg: 2, scope: !2957, file: !453, line: 943, type: !479)
!2963 = !DILocalVariable(name: "arg", arg: 3, scope: !2957, file: !453, line: 943, type: !70)
!2964 = !DILocalVariable(name: "o", scope: !2957, file: !453, line: 945, type: !2065)
!2965 = distinct !DIAssignID()
!2966 = !DILocation(line: 0, scope: !2957)
!2967 = !DILocation(line: 945, column: 3, scope: !2957)
!2968 = !{!2969}
!2969 = distinct !{!2969, !2970, !"quoting_options_from_style: argument 0"}
!2970 = distinct !{!2970, !"quoting_options_from_style"}
!2971 = !DILocation(line: 945, column: 36, scope: !2957)
!2972 = !DILocalVariable(name: "style", arg: 1, scope: !2973, file: !453, line: 183, type: !479)
!2973 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !453, file: !453, line: 183, type: !2974, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!506, !479}
!2976 = !{!2972, !2977}
!2977 = !DILocalVariable(name: "o", scope: !2973, file: !453, line: 185, type: !506)
!2978 = !DILocation(line: 0, scope: !2973, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 945, column: 36, scope: !2957)
!2980 = !DILocation(line: 185, column: 26, scope: !2973, inlinedAt: !2979)
!2981 = distinct !DIAssignID()
!2982 = !DILocation(line: 186, column: 13, scope: !2983, inlinedAt: !2979)
!2983 = distinct !DILexicalBlock(scope: !2973, file: !453, line: 186, column: 7)
!2984 = !DILocation(line: 186, column: 7, scope: !2973, inlinedAt: !2979)
!2985 = !DILocation(line: 187, column: 5, scope: !2983, inlinedAt: !2979)
!2986 = !DILocation(line: 188, column: 11, scope: !2973, inlinedAt: !2979)
!2987 = distinct !DIAssignID()
!2988 = !DILocation(line: 946, column: 10, scope: !2957)
!2989 = !DILocation(line: 947, column: 1, scope: !2957)
!2990 = !DILocation(line: 946, column: 3, scope: !2957)
!2991 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !453, file: !453, line: 950, type: !2992, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2994)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!101, !95, !479, !70, !97}
!2994 = !{!2995, !2996, !2997, !2998, !2999}
!2995 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !453, line: 950, type: !95)
!2996 = !DILocalVariable(name: "s", arg: 2, scope: !2991, file: !453, line: 950, type: !479)
!2997 = !DILocalVariable(name: "arg", arg: 3, scope: !2991, file: !453, line: 951, type: !70)
!2998 = !DILocalVariable(name: "argsize", arg: 4, scope: !2991, file: !453, line: 951, type: !97)
!2999 = !DILocalVariable(name: "o", scope: !2991, file: !453, line: 953, type: !2065)
!3000 = distinct !DIAssignID()
!3001 = !DILocation(line: 0, scope: !2991)
!3002 = !DILocation(line: 953, column: 3, scope: !2991)
!3003 = !{!3004}
!3004 = distinct !{!3004, !3005, !"quoting_options_from_style: argument 0"}
!3005 = distinct !{!3005, !"quoting_options_from_style"}
!3006 = !DILocation(line: 953, column: 36, scope: !2991)
!3007 = !DILocation(line: 0, scope: !2973, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 953, column: 36, scope: !2991)
!3009 = !DILocation(line: 185, column: 26, scope: !2973, inlinedAt: !3008)
!3010 = distinct !DIAssignID()
!3011 = !DILocation(line: 186, column: 13, scope: !2983, inlinedAt: !3008)
!3012 = !DILocation(line: 186, column: 7, scope: !2973, inlinedAt: !3008)
!3013 = !DILocation(line: 187, column: 5, scope: !2983, inlinedAt: !3008)
!3014 = !DILocation(line: 188, column: 11, scope: !2973, inlinedAt: !3008)
!3015 = distinct !DIAssignID()
!3016 = !DILocation(line: 954, column: 10, scope: !2991)
!3017 = !DILocation(line: 955, column: 1, scope: !2991)
!3018 = !DILocation(line: 954, column: 3, scope: !2991)
!3019 = distinct !DISubprogram(name: "quotearg_style", scope: !453, file: !453, line: 958, type: !3020, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!101, !479, !70}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "s", arg: 1, scope: !3019, file: !453, line: 958, type: !479)
!3024 = !DILocalVariable(name: "arg", arg: 2, scope: !3019, file: !453, line: 958, type: !70)
!3025 = distinct !DIAssignID()
!3026 = !DILocation(line: 0, scope: !3019)
!3027 = !DILocation(line: 0, scope: !2957, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 960, column: 10, scope: !3019)
!3029 = !DILocation(line: 945, column: 3, scope: !2957, inlinedAt: !3028)
!3030 = !{!3031}
!3031 = distinct !{!3031, !3032, !"quoting_options_from_style: argument 0"}
!3032 = distinct !{!3032, !"quoting_options_from_style"}
!3033 = !DILocation(line: 945, column: 36, scope: !2957, inlinedAt: !3028)
!3034 = !DILocation(line: 0, scope: !2973, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 945, column: 36, scope: !2957, inlinedAt: !3028)
!3036 = !DILocation(line: 185, column: 26, scope: !2973, inlinedAt: !3035)
!3037 = distinct !DIAssignID()
!3038 = !DILocation(line: 186, column: 13, scope: !2983, inlinedAt: !3035)
!3039 = !DILocation(line: 186, column: 7, scope: !2973, inlinedAt: !3035)
!3040 = !DILocation(line: 187, column: 5, scope: !2983, inlinedAt: !3035)
!3041 = !DILocation(line: 188, column: 11, scope: !2973, inlinedAt: !3035)
!3042 = distinct !DIAssignID()
!3043 = !DILocation(line: 946, column: 10, scope: !2957, inlinedAt: !3028)
!3044 = !DILocation(line: 947, column: 1, scope: !2957, inlinedAt: !3028)
!3045 = !DILocation(line: 960, column: 3, scope: !3019)
!3046 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !453, file: !453, line: 964, type: !3047, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!101, !479, !70, !97}
!3049 = !{!3050, !3051, !3052}
!3050 = !DILocalVariable(name: "s", arg: 1, scope: !3046, file: !453, line: 964, type: !479)
!3051 = !DILocalVariable(name: "arg", arg: 2, scope: !3046, file: !453, line: 964, type: !70)
!3052 = !DILocalVariable(name: "argsize", arg: 3, scope: !3046, file: !453, line: 964, type: !97)
!3053 = distinct !DIAssignID()
!3054 = !DILocation(line: 0, scope: !3046)
!3055 = !DILocation(line: 0, scope: !2991, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 966, column: 10, scope: !3046)
!3057 = !DILocation(line: 953, column: 3, scope: !2991, inlinedAt: !3056)
!3058 = !{!3059}
!3059 = distinct !{!3059, !3060, !"quoting_options_from_style: argument 0"}
!3060 = distinct !{!3060, !"quoting_options_from_style"}
!3061 = !DILocation(line: 953, column: 36, scope: !2991, inlinedAt: !3056)
!3062 = !DILocation(line: 0, scope: !2973, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 953, column: 36, scope: !2991, inlinedAt: !3056)
!3064 = !DILocation(line: 185, column: 26, scope: !2973, inlinedAt: !3063)
!3065 = distinct !DIAssignID()
!3066 = !DILocation(line: 186, column: 13, scope: !2983, inlinedAt: !3063)
!3067 = !DILocation(line: 186, column: 7, scope: !2973, inlinedAt: !3063)
!3068 = !DILocation(line: 187, column: 5, scope: !2983, inlinedAt: !3063)
!3069 = !DILocation(line: 188, column: 11, scope: !2973, inlinedAt: !3063)
!3070 = distinct !DIAssignID()
!3071 = !DILocation(line: 954, column: 10, scope: !2991, inlinedAt: !3056)
!3072 = !DILocation(line: 955, column: 1, scope: !2991, inlinedAt: !3056)
!3073 = !DILocation(line: 966, column: 3, scope: !3046)
!3074 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !453, file: !453, line: 970, type: !3075, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3077)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!101, !70, !97, !4}
!3077 = !{!3078, !3079, !3080, !3081}
!3078 = !DILocalVariable(name: "arg", arg: 1, scope: !3074, file: !453, line: 970, type: !70)
!3079 = !DILocalVariable(name: "argsize", arg: 2, scope: !3074, file: !453, line: 970, type: !97)
!3080 = !DILocalVariable(name: "ch", arg: 3, scope: !3074, file: !453, line: 970, type: !4)
!3081 = !DILocalVariable(name: "options", scope: !3074, file: !453, line: 972, type: !506)
!3082 = distinct !DIAssignID()
!3083 = !DILocation(line: 0, scope: !3074)
!3084 = !DILocation(line: 972, column: 3, scope: !3074)
!3085 = !DILocation(line: 973, column: 13, scope: !3074)
!3086 = !{i64 0, i64 4, !879, i64 4, i64 4, !879, i64 8, i64 32, !888, i64 40, i64 8, !819, i64 48, i64 8, !819}
!3087 = distinct !DIAssignID()
!3088 = !DILocation(line: 0, scope: !2084, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 974, column: 3, scope: !3074)
!3090 = !DILocation(line: 147, column: 41, scope: !2084, inlinedAt: !3089)
!3091 = !DILocation(line: 147, column: 62, scope: !2084, inlinedAt: !3089)
!3092 = !DILocation(line: 147, column: 57, scope: !2084, inlinedAt: !3089)
!3093 = !DILocation(line: 148, column: 15, scope: !2084, inlinedAt: !3089)
!3094 = !DILocation(line: 149, column: 21, scope: !2084, inlinedAt: !3089)
!3095 = !DILocation(line: 149, column: 24, scope: !2084, inlinedAt: !3089)
!3096 = !DILocation(line: 150, column: 19, scope: !2084, inlinedAt: !3089)
!3097 = !DILocation(line: 150, column: 24, scope: !2084, inlinedAt: !3089)
!3098 = !DILocation(line: 150, column: 6, scope: !2084, inlinedAt: !3089)
!3099 = !DILocation(line: 975, column: 10, scope: !3074)
!3100 = !DILocation(line: 976, column: 1, scope: !3074)
!3101 = !DILocation(line: 975, column: 3, scope: !3074)
!3102 = distinct !DISubprogram(name: "quotearg_char", scope: !453, file: !453, line: 979, type: !3103, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3105)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!101, !70, !4}
!3105 = !{!3106, !3107}
!3106 = !DILocalVariable(name: "arg", arg: 1, scope: !3102, file: !453, line: 979, type: !70)
!3107 = !DILocalVariable(name: "ch", arg: 2, scope: !3102, file: !453, line: 979, type: !4)
!3108 = distinct !DIAssignID()
!3109 = !DILocation(line: 0, scope: !3102)
!3110 = !DILocation(line: 0, scope: !3074, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 981, column: 10, scope: !3102)
!3112 = !DILocation(line: 972, column: 3, scope: !3074, inlinedAt: !3111)
!3113 = !DILocation(line: 973, column: 13, scope: !3074, inlinedAt: !3111)
!3114 = distinct !DIAssignID()
!3115 = !DILocation(line: 0, scope: !2084, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 974, column: 3, scope: !3074, inlinedAt: !3111)
!3117 = !DILocation(line: 147, column: 41, scope: !2084, inlinedAt: !3116)
!3118 = !DILocation(line: 147, column: 62, scope: !2084, inlinedAt: !3116)
!3119 = !DILocation(line: 147, column: 57, scope: !2084, inlinedAt: !3116)
!3120 = !DILocation(line: 148, column: 15, scope: !2084, inlinedAt: !3116)
!3121 = !DILocation(line: 149, column: 21, scope: !2084, inlinedAt: !3116)
!3122 = !DILocation(line: 149, column: 24, scope: !2084, inlinedAt: !3116)
!3123 = !DILocation(line: 150, column: 19, scope: !2084, inlinedAt: !3116)
!3124 = !DILocation(line: 150, column: 24, scope: !2084, inlinedAt: !3116)
!3125 = !DILocation(line: 150, column: 6, scope: !2084, inlinedAt: !3116)
!3126 = !DILocation(line: 975, column: 10, scope: !3074, inlinedAt: !3111)
!3127 = !DILocation(line: 976, column: 1, scope: !3074, inlinedAt: !3111)
!3128 = !DILocation(line: 981, column: 3, scope: !3102)
!3129 = distinct !DISubprogram(name: "quotearg_colon", scope: !453, file: !453, line: 985, type: !1002, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3130)
!3130 = !{!3131}
!3131 = !DILocalVariable(name: "arg", arg: 1, scope: !3129, file: !453, line: 985, type: !70)
!3132 = distinct !DIAssignID()
!3133 = !DILocation(line: 0, scope: !3129)
!3134 = !DILocation(line: 0, scope: !3102, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 987, column: 10, scope: !3129)
!3136 = !DILocation(line: 0, scope: !3074, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 981, column: 10, scope: !3102, inlinedAt: !3135)
!3138 = !DILocation(line: 972, column: 3, scope: !3074, inlinedAt: !3137)
!3139 = !DILocation(line: 973, column: 13, scope: !3074, inlinedAt: !3137)
!3140 = distinct !DIAssignID()
!3141 = !DILocation(line: 0, scope: !2084, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 974, column: 3, scope: !3074, inlinedAt: !3137)
!3143 = !DILocation(line: 147, column: 57, scope: !2084, inlinedAt: !3142)
!3144 = !DILocation(line: 149, column: 21, scope: !2084, inlinedAt: !3142)
!3145 = !DILocation(line: 150, column: 6, scope: !2084, inlinedAt: !3142)
!3146 = !DILocation(line: 975, column: 10, scope: !3074, inlinedAt: !3137)
!3147 = !DILocation(line: 976, column: 1, scope: !3074, inlinedAt: !3137)
!3148 = !DILocation(line: 987, column: 3, scope: !3129)
!3149 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !453, file: !453, line: 991, type: !2947, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3150)
!3150 = !{!3151, !3152}
!3151 = !DILocalVariable(name: "arg", arg: 1, scope: !3149, file: !453, line: 991, type: !70)
!3152 = !DILocalVariable(name: "argsize", arg: 2, scope: !3149, file: !453, line: 991, type: !97)
!3153 = distinct !DIAssignID()
!3154 = !DILocation(line: 0, scope: !3149)
!3155 = !DILocation(line: 0, scope: !3074, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 993, column: 10, scope: !3149)
!3157 = !DILocation(line: 972, column: 3, scope: !3074, inlinedAt: !3156)
!3158 = !DILocation(line: 973, column: 13, scope: !3074, inlinedAt: !3156)
!3159 = distinct !DIAssignID()
!3160 = !DILocation(line: 0, scope: !2084, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 974, column: 3, scope: !3074, inlinedAt: !3156)
!3162 = !DILocation(line: 147, column: 57, scope: !2084, inlinedAt: !3161)
!3163 = !DILocation(line: 149, column: 21, scope: !2084, inlinedAt: !3161)
!3164 = !DILocation(line: 150, column: 6, scope: !2084, inlinedAt: !3161)
!3165 = !DILocation(line: 975, column: 10, scope: !3074, inlinedAt: !3156)
!3166 = !DILocation(line: 976, column: 1, scope: !3074, inlinedAt: !3156)
!3167 = !DILocation(line: 993, column: 3, scope: !3149)
!3168 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !453, file: !453, line: 997, type: !2958, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3169)
!3169 = !{!3170, !3171, !3172, !3173}
!3170 = !DILocalVariable(name: "n", arg: 1, scope: !3168, file: !453, line: 997, type: !95)
!3171 = !DILocalVariable(name: "s", arg: 2, scope: !3168, file: !453, line: 997, type: !479)
!3172 = !DILocalVariable(name: "arg", arg: 3, scope: !3168, file: !453, line: 997, type: !70)
!3173 = !DILocalVariable(name: "options", scope: !3168, file: !453, line: 999, type: !506)
!3174 = distinct !DIAssignID()
!3175 = !DILocation(line: 0, scope: !3168)
!3176 = !DILocation(line: 185, column: 26, scope: !2973, inlinedAt: !3177)
!3177 = distinct !DILocation(line: 1000, column: 13, scope: !3168)
!3178 = !DILocation(line: 999, column: 3, scope: !3168)
!3179 = !DILocation(line: 0, scope: !2973, inlinedAt: !3177)
!3180 = !DILocation(line: 186, column: 13, scope: !2983, inlinedAt: !3177)
!3181 = !DILocation(line: 186, column: 7, scope: !2973, inlinedAt: !3177)
!3182 = !DILocation(line: 187, column: 5, scope: !2983, inlinedAt: !3177)
!3183 = !{!3184}
!3184 = distinct !{!3184, !3185, !"quoting_options_from_style: argument 0"}
!3185 = distinct !{!3185, !"quoting_options_from_style"}
!3186 = !DILocation(line: 1000, column: 13, scope: !3168)
!3187 = distinct !DIAssignID()
!3188 = distinct !DIAssignID()
!3189 = !DILocation(line: 0, scope: !2084, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1001, column: 3, scope: !3168)
!3191 = !DILocation(line: 147, column: 57, scope: !2084, inlinedAt: !3190)
!3192 = !DILocation(line: 149, column: 21, scope: !2084, inlinedAt: !3190)
!3193 = !DILocation(line: 150, column: 6, scope: !2084, inlinedAt: !3190)
!3194 = distinct !DIAssignID()
!3195 = !DILocation(line: 1002, column: 10, scope: !3168)
!3196 = !DILocation(line: 1003, column: 1, scope: !3168)
!3197 = !DILocation(line: 1002, column: 3, scope: !3168)
!3198 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !453, file: !453, line: 1006, type: !3199, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!101, !95, !70, !70, !70}
!3201 = !{!3202, !3203, !3204, !3205}
!3202 = !DILocalVariable(name: "n", arg: 1, scope: !3198, file: !453, line: 1006, type: !95)
!3203 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3198, file: !453, line: 1006, type: !70)
!3204 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3198, file: !453, line: 1007, type: !70)
!3205 = !DILocalVariable(name: "arg", arg: 4, scope: !3198, file: !453, line: 1007, type: !70)
!3206 = distinct !DIAssignID()
!3207 = !DILocation(line: 0, scope: !3198)
!3208 = !DILocalVariable(name: "o", scope: !3209, file: !453, line: 1018, type: !506)
!3209 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !453, file: !453, line: 1014, type: !3210, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!101, !95, !70, !70, !70, !97}
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3208}
!3213 = !DILocalVariable(name: "n", arg: 1, scope: !3209, file: !453, line: 1014, type: !95)
!3214 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3209, file: !453, line: 1014, type: !70)
!3215 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3209, file: !453, line: 1015, type: !70)
!3216 = !DILocalVariable(name: "arg", arg: 4, scope: !3209, file: !453, line: 1016, type: !70)
!3217 = !DILocalVariable(name: "argsize", arg: 5, scope: !3209, file: !453, line: 1016, type: !97)
!3218 = !DILocation(line: 0, scope: !3209, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 1009, column: 10, scope: !3198)
!3220 = !DILocation(line: 1018, column: 3, scope: !3209, inlinedAt: !3219)
!3221 = !DILocation(line: 1018, column: 30, scope: !3209, inlinedAt: !3219)
!3222 = distinct !DIAssignID()
!3223 = distinct !DIAssignID()
!3224 = !DILocation(line: 0, scope: !2124, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 1019, column: 3, scope: !3209, inlinedAt: !3219)
!3226 = !DILocation(line: 174, column: 12, scope: !2124, inlinedAt: !3225)
!3227 = distinct !DIAssignID()
!3228 = !DILocation(line: 175, column: 8, scope: !2137, inlinedAt: !3225)
!3229 = !DILocation(line: 175, column: 19, scope: !2137, inlinedAt: !3225)
!3230 = !DILocation(line: 176, column: 5, scope: !2137, inlinedAt: !3225)
!3231 = !DILocation(line: 177, column: 6, scope: !2124, inlinedAt: !3225)
!3232 = !DILocation(line: 177, column: 17, scope: !2124, inlinedAt: !3225)
!3233 = distinct !DIAssignID()
!3234 = !DILocation(line: 178, column: 6, scope: !2124, inlinedAt: !3225)
!3235 = !DILocation(line: 178, column: 18, scope: !2124, inlinedAt: !3225)
!3236 = distinct !DIAssignID()
!3237 = !DILocation(line: 1020, column: 10, scope: !3209, inlinedAt: !3219)
!3238 = !DILocation(line: 1021, column: 1, scope: !3209, inlinedAt: !3219)
!3239 = !DILocation(line: 1009, column: 3, scope: !3198)
!3240 = distinct !DIAssignID()
!3241 = !DILocation(line: 0, scope: !3209)
!3242 = !DILocation(line: 1018, column: 3, scope: !3209)
!3243 = !DILocation(line: 1018, column: 30, scope: !3209)
!3244 = distinct !DIAssignID()
!3245 = distinct !DIAssignID()
!3246 = !DILocation(line: 0, scope: !2124, inlinedAt: !3247)
!3247 = distinct !DILocation(line: 1019, column: 3, scope: !3209)
!3248 = !DILocation(line: 174, column: 12, scope: !2124, inlinedAt: !3247)
!3249 = distinct !DIAssignID()
!3250 = !DILocation(line: 175, column: 8, scope: !2137, inlinedAt: !3247)
!3251 = !DILocation(line: 175, column: 19, scope: !2137, inlinedAt: !3247)
!3252 = !DILocation(line: 176, column: 5, scope: !2137, inlinedAt: !3247)
!3253 = !DILocation(line: 177, column: 6, scope: !2124, inlinedAt: !3247)
!3254 = !DILocation(line: 177, column: 17, scope: !2124, inlinedAt: !3247)
!3255 = distinct !DIAssignID()
!3256 = !DILocation(line: 178, column: 6, scope: !2124, inlinedAt: !3247)
!3257 = !DILocation(line: 178, column: 18, scope: !2124, inlinedAt: !3247)
!3258 = distinct !DIAssignID()
!3259 = !DILocation(line: 1020, column: 10, scope: !3209)
!3260 = !DILocation(line: 1021, column: 1, scope: !3209)
!3261 = !DILocation(line: 1020, column: 3, scope: !3209)
!3262 = distinct !DISubprogram(name: "quotearg_custom", scope: !453, file: !453, line: 1024, type: !3263, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3265)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!101, !70, !70, !70}
!3265 = !{!3266, !3267, !3268}
!3266 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3262, file: !453, line: 1024, type: !70)
!3267 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3262, file: !453, line: 1024, type: !70)
!3268 = !DILocalVariable(name: "arg", arg: 3, scope: !3262, file: !453, line: 1025, type: !70)
!3269 = distinct !DIAssignID()
!3270 = !DILocation(line: 0, scope: !3262)
!3271 = !DILocation(line: 0, scope: !3198, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 1027, column: 10, scope: !3262)
!3273 = !DILocation(line: 0, scope: !3209, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 1009, column: 10, scope: !3198, inlinedAt: !3272)
!3275 = !DILocation(line: 1018, column: 3, scope: !3209, inlinedAt: !3274)
!3276 = !DILocation(line: 1018, column: 30, scope: !3209, inlinedAt: !3274)
!3277 = distinct !DIAssignID()
!3278 = distinct !DIAssignID()
!3279 = !DILocation(line: 0, scope: !2124, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 1019, column: 3, scope: !3209, inlinedAt: !3274)
!3281 = !DILocation(line: 174, column: 12, scope: !2124, inlinedAt: !3280)
!3282 = distinct !DIAssignID()
!3283 = !DILocation(line: 175, column: 8, scope: !2137, inlinedAt: !3280)
!3284 = !DILocation(line: 175, column: 19, scope: !2137, inlinedAt: !3280)
!3285 = !DILocation(line: 176, column: 5, scope: !2137, inlinedAt: !3280)
!3286 = !DILocation(line: 177, column: 6, scope: !2124, inlinedAt: !3280)
!3287 = !DILocation(line: 177, column: 17, scope: !2124, inlinedAt: !3280)
!3288 = distinct !DIAssignID()
!3289 = !DILocation(line: 178, column: 6, scope: !2124, inlinedAt: !3280)
!3290 = !DILocation(line: 178, column: 18, scope: !2124, inlinedAt: !3280)
!3291 = distinct !DIAssignID()
!3292 = !DILocation(line: 1020, column: 10, scope: !3209, inlinedAt: !3274)
!3293 = !DILocation(line: 1021, column: 1, scope: !3209, inlinedAt: !3274)
!3294 = !DILocation(line: 1027, column: 3, scope: !3262)
!3295 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !453, file: !453, line: 1031, type: !3296, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3298)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!101, !70, !70, !70, !97}
!3298 = !{!3299, !3300, !3301, !3302}
!3299 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3295, file: !453, line: 1031, type: !70)
!3300 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3295, file: !453, line: 1031, type: !70)
!3301 = !DILocalVariable(name: "arg", arg: 3, scope: !3295, file: !453, line: 1032, type: !70)
!3302 = !DILocalVariable(name: "argsize", arg: 4, scope: !3295, file: !453, line: 1032, type: !97)
!3303 = distinct !DIAssignID()
!3304 = !DILocation(line: 0, scope: !3295)
!3305 = !DILocation(line: 0, scope: !3209, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 1034, column: 10, scope: !3295)
!3307 = !DILocation(line: 1018, column: 3, scope: !3209, inlinedAt: !3306)
!3308 = !DILocation(line: 1018, column: 30, scope: !3209, inlinedAt: !3306)
!3309 = distinct !DIAssignID()
!3310 = distinct !DIAssignID()
!3311 = !DILocation(line: 0, scope: !2124, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 1019, column: 3, scope: !3209, inlinedAt: !3306)
!3313 = !DILocation(line: 174, column: 12, scope: !2124, inlinedAt: !3312)
!3314 = distinct !DIAssignID()
!3315 = !DILocation(line: 175, column: 8, scope: !2137, inlinedAt: !3312)
!3316 = !DILocation(line: 175, column: 19, scope: !2137, inlinedAt: !3312)
!3317 = !DILocation(line: 176, column: 5, scope: !2137, inlinedAt: !3312)
!3318 = !DILocation(line: 177, column: 6, scope: !2124, inlinedAt: !3312)
!3319 = !DILocation(line: 177, column: 17, scope: !2124, inlinedAt: !3312)
!3320 = distinct !DIAssignID()
!3321 = !DILocation(line: 178, column: 6, scope: !2124, inlinedAt: !3312)
!3322 = !DILocation(line: 178, column: 18, scope: !2124, inlinedAt: !3312)
!3323 = distinct !DIAssignID()
!3324 = !DILocation(line: 1020, column: 10, scope: !3209, inlinedAt: !3306)
!3325 = !DILocation(line: 1021, column: 1, scope: !3209, inlinedAt: !3306)
!3326 = !DILocation(line: 1034, column: 3, scope: !3295)
!3327 = distinct !DISubprogram(name: "quote_n_mem", scope: !453, file: !453, line: 1049, type: !3328, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!70, !95, !70, !97}
!3330 = !{!3331, !3332, !3333}
!3331 = !DILocalVariable(name: "n", arg: 1, scope: !3327, file: !453, line: 1049, type: !95)
!3332 = !DILocalVariable(name: "arg", arg: 2, scope: !3327, file: !453, line: 1049, type: !70)
!3333 = !DILocalVariable(name: "argsize", arg: 3, scope: !3327, file: !453, line: 1049, type: !97)
!3334 = !DILocation(line: 0, scope: !3327)
!3335 = !DILocation(line: 1051, column: 10, scope: !3327)
!3336 = !DILocation(line: 1051, column: 3, scope: !3327)
!3337 = distinct !DISubprogram(name: "quote_mem", scope: !453, file: !453, line: 1055, type: !3338, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3340)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!70, !70, !97}
!3340 = !{!3341, !3342}
!3341 = !DILocalVariable(name: "arg", arg: 1, scope: !3337, file: !453, line: 1055, type: !70)
!3342 = !DILocalVariable(name: "argsize", arg: 2, scope: !3337, file: !453, line: 1055, type: !97)
!3343 = !DILocation(line: 0, scope: !3337)
!3344 = !DILocation(line: 0, scope: !3327, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 1057, column: 10, scope: !3337)
!3346 = !DILocation(line: 1051, column: 10, scope: !3327, inlinedAt: !3345)
!3347 = !DILocation(line: 1057, column: 3, scope: !3337)
!3348 = distinct !DISubprogram(name: "quote_n", scope: !453, file: !453, line: 1061, type: !3349, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3351)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!70, !95, !70}
!3351 = !{!3352, !3353}
!3352 = !DILocalVariable(name: "n", arg: 1, scope: !3348, file: !453, line: 1061, type: !95)
!3353 = !DILocalVariable(name: "arg", arg: 2, scope: !3348, file: !453, line: 1061, type: !70)
!3354 = !DILocation(line: 0, scope: !3348)
!3355 = !DILocation(line: 0, scope: !3327, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 1063, column: 10, scope: !3348)
!3357 = !DILocation(line: 1051, column: 10, scope: !3327, inlinedAt: !3356)
!3358 = !DILocation(line: 1063, column: 3, scope: !3348)
!3359 = distinct !DISubprogram(name: "quote", scope: !453, file: !453, line: 1067, type: !3360, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3362)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!70, !70}
!3362 = !{!3363}
!3363 = !DILocalVariable(name: "arg", arg: 1, scope: !3359, file: !453, line: 1067, type: !70)
!3364 = !DILocation(line: 0, scope: !3359)
!3365 = !DILocation(line: 0, scope: !3348, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 1069, column: 10, scope: !3359)
!3367 = !DILocation(line: 0, scope: !3327, inlinedAt: !3368)
!3368 = distinct !DILocation(line: 1063, column: 10, scope: !3348, inlinedAt: !3366)
!3369 = !DILocation(line: 1051, column: 10, scope: !3327, inlinedAt: !3368)
!3370 = !DILocation(line: 1069, column: 3, scope: !3359)
!3371 = distinct !DISubprogram(name: "safe_write", scope: !3372, file: !3372, line: 56, type: !3373, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3376)
!3372 = !DIFile(filename: "lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!764, !95, !3375, !762}
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3372, line: 45, baseType: !1024)
!3376 = !{!3377, !3378, !3379, !3380}
!3377 = !DILocalVariable(name: "fd", arg: 1, scope: !3371, file: !3372, line: 56, type: !95)
!3378 = !DILocalVariable(name: "buf", arg: 2, scope: !3371, file: !3372, line: 56, type: !3375)
!3379 = !DILocalVariable(name: "count", arg: 3, scope: !3371, file: !3372, line: 56, type: !762)
!3380 = !DILocalVariable(name: "result", scope: !3381, file: !3372, line: 60, type: !3384)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3372, line: 59, column: 5)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !3372, line: 58, column: 3)
!3383 = distinct !DILexicalBlock(scope: !3371, file: !3372, line: 58, column: 3)
!3384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1793, line: 108, baseType: !1149)
!3385 = !DILocation(line: 0, scope: !3371)
!3386 = !DILocation(line: 58, column: 3, scope: !3371)
!3387 = !DILocation(line: 62, column: 11, scope: !3381)
!3388 = !DILocation(line: 60, column: 24, scope: !3381)
!3389 = !DILocation(line: 0, scope: !3381)
!3390 = !DILocation(line: 62, column: 13, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3381, file: !3372, line: 62, column: 11)
!3392 = !DILocation(line: 64, column: 16, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3391, file: !3372, line: 64, column: 16)
!3394 = !DILocation(line: 64, column: 16, scope: !3391)
!3395 = distinct !{!3395, !3396, !3397}
!3396 = !DILocation(line: 58, column: 3, scope: !3383)
!3397 = !DILocation(line: 70, column: 5, scope: !3383)
!3398 = !DILocation(line: 66, column: 22, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3393, file: !3372, line: 66, column: 16)
!3400 = !DILocation(line: 0, scope: !3382)
!3401 = !DILocation(line: 71, column: 1, scope: !3371)
!3402 = !DISubprogram(name: "write", scope: !1354, file: !1354, line: 378, type: !3403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3403 = !DISubroutineType(types: !3404)
!3404 = !{!3384, !95, !1024, !97}
!3405 = distinct !DISubprogram(name: "version_etc_arn", scope: !569, file: !569, line: 61, type: !3406, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3443)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{null, !3408, !70, !70, !70, !3442, !97}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3410)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3411)
!3411 = !{!3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3410, file: !236, line: 51, baseType: !95, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3410, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3410, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3410, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3410, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3410, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3410, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3410, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3410, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3410, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3410, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3410, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3410, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3410, file: !236, line: 70, baseType: !3426, size: 64, offset: 832)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3410, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3410, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3410, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3410, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3410, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3410, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3410, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3410, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3410, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3410, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3410, file: !236, line: 93, baseType: !3426, size: 64, offset: 1344)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3410, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3410, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3410, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3410, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!3443 = !{!3444, !3445, !3446, !3447, !3448, !3449}
!3444 = !DILocalVariable(name: "stream", arg: 1, scope: !3405, file: !569, line: 61, type: !3408)
!3445 = !DILocalVariable(name: "command_name", arg: 2, scope: !3405, file: !569, line: 62, type: !70)
!3446 = !DILocalVariable(name: "package", arg: 3, scope: !3405, file: !569, line: 62, type: !70)
!3447 = !DILocalVariable(name: "version", arg: 4, scope: !3405, file: !569, line: 63, type: !70)
!3448 = !DILocalVariable(name: "authors", arg: 5, scope: !3405, file: !569, line: 64, type: !3442)
!3449 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3405, file: !569, line: 64, type: !97)
!3450 = !DILocation(line: 0, scope: !3405)
!3451 = !DILocation(line: 66, column: 7, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3405, file: !569, line: 66, column: 7)
!3453 = !DILocation(line: 66, column: 7, scope: !3405)
!3454 = !DILocation(line: 67, column: 5, scope: !3452)
!3455 = !DILocation(line: 69, column: 5, scope: !3452)
!3456 = !DILocation(line: 83, column: 3, scope: !3405)
!3457 = !DILocation(line: 85, column: 3, scope: !3405)
!3458 = !DILocation(line: 88, column: 3, scope: !3405)
!3459 = !DILocation(line: 95, column: 3, scope: !3405)
!3460 = !DILocation(line: 97, column: 3, scope: !3405)
!3461 = !DILocation(line: 105, column: 7, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3405, file: !569, line: 98, column: 5)
!3463 = !DILocation(line: 106, column: 7, scope: !3462)
!3464 = !DILocation(line: 109, column: 7, scope: !3462)
!3465 = !DILocation(line: 110, column: 7, scope: !3462)
!3466 = !DILocation(line: 113, column: 7, scope: !3462)
!3467 = !DILocation(line: 115, column: 7, scope: !3462)
!3468 = !DILocation(line: 120, column: 7, scope: !3462)
!3469 = !DILocation(line: 122, column: 7, scope: !3462)
!3470 = !DILocation(line: 127, column: 7, scope: !3462)
!3471 = !DILocation(line: 129, column: 7, scope: !3462)
!3472 = !DILocation(line: 134, column: 7, scope: !3462)
!3473 = !DILocation(line: 137, column: 7, scope: !3462)
!3474 = !DILocation(line: 142, column: 7, scope: !3462)
!3475 = !DILocation(line: 145, column: 7, scope: !3462)
!3476 = !DILocation(line: 150, column: 7, scope: !3462)
!3477 = !DILocation(line: 154, column: 7, scope: !3462)
!3478 = !DILocation(line: 159, column: 7, scope: !3462)
!3479 = !DILocation(line: 163, column: 7, scope: !3462)
!3480 = !DILocation(line: 170, column: 7, scope: !3462)
!3481 = !DILocation(line: 174, column: 7, scope: !3462)
!3482 = !DILocation(line: 176, column: 1, scope: !3405)
!3483 = distinct !DISubprogram(name: "version_etc_ar", scope: !569, file: !569, line: 183, type: !3484, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3486)
!3484 = !DISubroutineType(types: !3485)
!3485 = !{null, !3408, !70, !70, !70, !3442}
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492}
!3487 = !DILocalVariable(name: "stream", arg: 1, scope: !3483, file: !569, line: 183, type: !3408)
!3488 = !DILocalVariable(name: "command_name", arg: 2, scope: !3483, file: !569, line: 184, type: !70)
!3489 = !DILocalVariable(name: "package", arg: 3, scope: !3483, file: !569, line: 184, type: !70)
!3490 = !DILocalVariable(name: "version", arg: 4, scope: !3483, file: !569, line: 185, type: !70)
!3491 = !DILocalVariable(name: "authors", arg: 5, scope: !3483, file: !569, line: 185, type: !3442)
!3492 = !DILocalVariable(name: "n_authors", scope: !3483, file: !569, line: 187, type: !97)
!3493 = !DILocation(line: 0, scope: !3483)
!3494 = !DILocation(line: 189, column: 8, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3483, file: !569, line: 189, column: 3)
!3496 = !DILocation(line: 189, scope: !3495)
!3497 = !DILocation(line: 189, column: 23, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3495, file: !569, line: 189, column: 3)
!3499 = !DILocation(line: 189, column: 3, scope: !3495)
!3500 = !DILocation(line: 189, column: 52, scope: !3498)
!3501 = distinct !{!3501, !3499, !3502, !926}
!3502 = !DILocation(line: 190, column: 5, scope: !3495)
!3503 = !DILocation(line: 191, column: 3, scope: !3483)
!3504 = !DILocation(line: 192, column: 1, scope: !3483)
!3505 = distinct !DISubprogram(name: "version_etc_va", scope: !569, file: !569, line: 199, type: !3506, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3518)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !3408, !70, !70, !70, !3508}
!3508 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 52, baseType: !3509)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !328, line: 12, baseType: !3510)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !569, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3511, file: !569, line: 192, baseType: !94, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3511, file: !569, line: 192, baseType: !94, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3511, file: !569, line: 192, baseType: !94, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3511, file: !569, line: 192, baseType: !95, size: 32, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3511, file: !569, line: 192, baseType: !95, size: 32, offset: 224)
!3518 = !{!3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3519 = !DILocalVariable(name: "stream", arg: 1, scope: !3505, file: !569, line: 199, type: !3408)
!3520 = !DILocalVariable(name: "command_name", arg: 2, scope: !3505, file: !569, line: 200, type: !70)
!3521 = !DILocalVariable(name: "package", arg: 3, scope: !3505, file: !569, line: 200, type: !70)
!3522 = !DILocalVariable(name: "version", arg: 4, scope: !3505, file: !569, line: 201, type: !70)
!3523 = !DILocalVariable(name: "authors", arg: 5, scope: !3505, file: !569, line: 201, type: !3508)
!3524 = !DILocalVariable(name: "n_authors", scope: !3505, file: !569, line: 203, type: !97)
!3525 = !DILocalVariable(name: "authtab", scope: !3505, file: !569, line: 204, type: !3526)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!3527 = distinct !DIAssignID()
!3528 = !DILocation(line: 0, scope: !3505)
!3529 = !DILocation(line: 204, column: 3, scope: !3505)
!3530 = !DILocation(line: 208, column: 35, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !569, line: 206, column: 3)
!3532 = distinct !DILexicalBlock(scope: !3505, file: !569, line: 206, column: 3)
!3533 = !DILocation(line: 208, column: 33, scope: !3531)
!3534 = !DILocation(line: 208, column: 67, scope: !3531)
!3535 = !DILocation(line: 206, column: 3, scope: !3532)
!3536 = !DILocation(line: 208, column: 14, scope: !3531)
!3537 = !DILocation(line: 0, scope: !3532)
!3538 = !DILocation(line: 211, column: 3, scope: !3505)
!3539 = !DILocation(line: 213, column: 1, scope: !3505)
!3540 = distinct !DISubprogram(name: "version_etc", scope: !569, file: !569, line: 230, type: !3541, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3543)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3408, !70, !70, !70, null}
!3543 = !{!3544, !3545, !3546, !3547, !3548}
!3544 = !DILocalVariable(name: "stream", arg: 1, scope: !3540, file: !569, line: 230, type: !3408)
!3545 = !DILocalVariable(name: "command_name", arg: 2, scope: !3540, file: !569, line: 231, type: !70)
!3546 = !DILocalVariable(name: "package", arg: 3, scope: !3540, file: !569, line: 231, type: !70)
!3547 = !DILocalVariable(name: "version", arg: 4, scope: !3540, file: !569, line: 232, type: !70)
!3548 = !DILocalVariable(name: "authors", scope: !3540, file: !569, line: 234, type: !3508)
!3549 = distinct !DIAssignID()
!3550 = !DILocation(line: 0, scope: !3540)
!3551 = !DILocation(line: 234, column: 3, scope: !3540)
!3552 = !DILocation(line: 235, column: 3, scope: !3540)
!3553 = !DILocation(line: 236, column: 3, scope: !3540)
!3554 = !DILocation(line: 237, column: 3, scope: !3540)
!3555 = !DILocation(line: 238, column: 1, scope: !3540)
!3556 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !569, file: !569, line: 241, type: !366, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736)
!3557 = !DILocation(line: 243, column: 3, scope: !3556)
!3558 = !DILocation(line: 248, column: 3, scope: !3556)
!3559 = !DILocation(line: 254, column: 3, scope: !3556)
!3560 = !DILocation(line: 259, column: 3, scope: !3556)
!3561 = !DILocation(line: 261, column: 1, scope: !3556)
!3562 = distinct !DISubprogram(name: "xnrealloc", scope: !3563, file: !3563, line: 147, type: !3564, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3566)
!3563 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!94, !94, !97, !97}
!3566 = !{!3567, !3568, !3569}
!3567 = !DILocalVariable(name: "p", arg: 1, scope: !3562, file: !3563, line: 147, type: !94)
!3568 = !DILocalVariable(name: "n", arg: 2, scope: !3562, file: !3563, line: 147, type: !97)
!3569 = !DILocalVariable(name: "s", arg: 3, scope: !3562, file: !3563, line: 147, type: !97)
!3570 = !DILocation(line: 0, scope: !3562)
!3571 = !DILocalVariable(name: "p", arg: 1, scope: !3572, file: !743, line: 83, type: !94)
!3572 = distinct !DISubprogram(name: "xreallocarray", scope: !743, file: !743, line: 83, type: !3564, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3573)
!3573 = !{!3571, !3574, !3575}
!3574 = !DILocalVariable(name: "n", arg: 2, scope: !3572, file: !743, line: 83, type: !97)
!3575 = !DILocalVariable(name: "s", arg: 3, scope: !3572, file: !743, line: 83, type: !97)
!3576 = !DILocation(line: 0, scope: !3572, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 149, column: 10, scope: !3562)
!3578 = !DILocation(line: 85, column: 25, scope: !3572, inlinedAt: !3577)
!3579 = !DILocalVariable(name: "p", arg: 1, scope: !3580, file: !743, line: 37, type: !94)
!3580 = distinct !DISubprogram(name: "check_nonnull", scope: !743, file: !743, line: 37, type: !3581, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!94, !94}
!3583 = !{!3579}
!3584 = !DILocation(line: 0, scope: !3580, inlinedAt: !3585)
!3585 = distinct !DILocation(line: 85, column: 10, scope: !3572, inlinedAt: !3577)
!3586 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3585)
!3587 = distinct !DILexicalBlock(scope: !3580, file: !743, line: 39, column: 7)
!3588 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3585)
!3589 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3585)
!3590 = !DILocation(line: 149, column: 3, scope: !3562)
!3591 = !DILocation(line: 0, scope: !3572)
!3592 = !DILocation(line: 85, column: 25, scope: !3572)
!3593 = !DILocation(line: 0, scope: !3580, inlinedAt: !3594)
!3594 = distinct !DILocation(line: 85, column: 10, scope: !3572)
!3595 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3594)
!3596 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3594)
!3597 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3594)
!3598 = !DILocation(line: 85, column: 3, scope: !3572)
!3599 = distinct !DISubprogram(name: "xmalloc", scope: !743, file: !743, line: 47, type: !3600, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3602)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!94, !97}
!3602 = !{!3603}
!3603 = !DILocalVariable(name: "s", arg: 1, scope: !3599, file: !743, line: 47, type: !97)
!3604 = !DILocation(line: 0, scope: !3599)
!3605 = !DILocation(line: 49, column: 25, scope: !3599)
!3606 = !DILocation(line: 0, scope: !3580, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 49, column: 10, scope: !3599)
!3608 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3607)
!3609 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3607)
!3610 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3607)
!3611 = !DILocation(line: 49, column: 3, scope: !3599)
!3612 = !DISubprogram(name: "malloc", scope: !1000, file: !1000, line: 540, type: !3600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3613 = distinct !DISubprogram(name: "ximalloc", scope: !743, file: !743, line: 53, type: !3614, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3616)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!94, !762}
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "s", arg: 1, scope: !3613, file: !743, line: 53, type: !762)
!3618 = !DILocation(line: 0, scope: !3613)
!3619 = !DILocalVariable(name: "s", arg: 1, scope: !3620, file: !3621, line: 55, type: !762)
!3620 = distinct !DISubprogram(name: "imalloc", scope: !3621, file: !3621, line: 55, type: !3614, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3622)
!3621 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3622 = !{!3619}
!3623 = !DILocation(line: 0, scope: !3620, inlinedAt: !3624)
!3624 = distinct !DILocation(line: 55, column: 25, scope: !3613)
!3625 = !DILocation(line: 57, column: 26, scope: !3620, inlinedAt: !3624)
!3626 = !DILocation(line: 0, scope: !3580, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 55, column: 10, scope: !3613)
!3628 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3627)
!3629 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3627)
!3630 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3627)
!3631 = !DILocation(line: 55, column: 3, scope: !3613)
!3632 = distinct !DISubprogram(name: "xcharalloc", scope: !743, file: !743, line: 59, type: !3633, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3635)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!101, !97}
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "n", arg: 1, scope: !3632, file: !743, line: 59, type: !97)
!3637 = !DILocation(line: 0, scope: !3632)
!3638 = !DILocation(line: 0, scope: !3599, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 61, column: 10, scope: !3632)
!3640 = !DILocation(line: 49, column: 25, scope: !3599, inlinedAt: !3639)
!3641 = !DILocation(line: 0, scope: !3580, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 49, column: 10, scope: !3599, inlinedAt: !3639)
!3643 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3642)
!3644 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3642)
!3645 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3642)
!3646 = !DILocation(line: 61, column: 3, scope: !3632)
!3647 = distinct !DISubprogram(name: "xrealloc", scope: !743, file: !743, line: 68, type: !3648, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!94, !94, !97}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "p", arg: 1, scope: !3647, file: !743, line: 68, type: !94)
!3652 = !DILocalVariable(name: "s", arg: 2, scope: !3647, file: !743, line: 68, type: !97)
!3653 = !DILocation(line: 0, scope: !3647)
!3654 = !DILocalVariable(name: "ptr", arg: 1, scope: !3655, file: !3656, line: 2057, type: !94)
!3655 = distinct !DISubprogram(name: "rpl_realloc", scope: !3656, file: !3656, line: 2057, type: !3648, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3657)
!3656 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3657 = !{!3654, !3658}
!3658 = !DILocalVariable(name: "size", arg: 2, scope: !3655, file: !3656, line: 2057, type: !97)
!3659 = !DILocation(line: 0, scope: !3655, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 70, column: 25, scope: !3647)
!3661 = !DILocation(line: 2059, column: 24, scope: !3655, inlinedAt: !3660)
!3662 = !DILocation(line: 2059, column: 10, scope: !3655, inlinedAt: !3660)
!3663 = !DILocation(line: 0, scope: !3580, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 70, column: 10, scope: !3647)
!3665 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3664)
!3666 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3664)
!3667 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3664)
!3668 = !DILocation(line: 70, column: 3, scope: !3647)
!3669 = !DISubprogram(name: "realloc", scope: !1000, file: !1000, line: 551, type: !3648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3670 = distinct !DISubprogram(name: "xirealloc", scope: !743, file: !743, line: 74, type: !3671, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3673)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!94, !94, !762}
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "p", arg: 1, scope: !3670, file: !743, line: 74, type: !94)
!3675 = !DILocalVariable(name: "s", arg: 2, scope: !3670, file: !743, line: 74, type: !762)
!3676 = !DILocation(line: 0, scope: !3670)
!3677 = !DILocalVariable(name: "p", arg: 1, scope: !3678, file: !3621, line: 66, type: !94)
!3678 = distinct !DISubprogram(name: "irealloc", scope: !3621, file: !3621, line: 66, type: !3671, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3679)
!3679 = !{!3677, !3680}
!3680 = !DILocalVariable(name: "s", arg: 2, scope: !3678, file: !3621, line: 66, type: !762)
!3681 = !DILocation(line: 0, scope: !3678, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 76, column: 25, scope: !3670)
!3683 = !DILocation(line: 0, scope: !3655, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 68, column: 26, scope: !3678, inlinedAt: !3682)
!3685 = !DILocation(line: 2059, column: 24, scope: !3655, inlinedAt: !3684)
!3686 = !DILocation(line: 2059, column: 10, scope: !3655, inlinedAt: !3684)
!3687 = !DILocation(line: 0, scope: !3580, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 76, column: 10, scope: !3670)
!3689 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3688)
!3690 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3688)
!3691 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3688)
!3692 = !DILocation(line: 76, column: 3, scope: !3670)
!3693 = distinct !DISubprogram(name: "xireallocarray", scope: !743, file: !743, line: 89, type: !3694, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3696)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!94, !94, !762, !762}
!3696 = !{!3697, !3698, !3699}
!3697 = !DILocalVariable(name: "p", arg: 1, scope: !3693, file: !743, line: 89, type: !94)
!3698 = !DILocalVariable(name: "n", arg: 2, scope: !3693, file: !743, line: 89, type: !762)
!3699 = !DILocalVariable(name: "s", arg: 3, scope: !3693, file: !743, line: 89, type: !762)
!3700 = !DILocation(line: 0, scope: !3693)
!3701 = !DILocalVariable(name: "p", arg: 1, scope: !3702, file: !3621, line: 98, type: !94)
!3702 = distinct !DISubprogram(name: "ireallocarray", scope: !3621, file: !3621, line: 98, type: !3694, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3703)
!3703 = !{!3701, !3704, !3705}
!3704 = !DILocalVariable(name: "n", arg: 2, scope: !3702, file: !3621, line: 98, type: !762)
!3705 = !DILocalVariable(name: "s", arg: 3, scope: !3702, file: !3621, line: 98, type: !762)
!3706 = !DILocation(line: 0, scope: !3702, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 91, column: 25, scope: !3693)
!3708 = !DILocation(line: 101, column: 13, scope: !3702, inlinedAt: !3707)
!3709 = !DILocation(line: 0, scope: !3580, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 91, column: 10, scope: !3693)
!3711 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3710)
!3712 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3710)
!3713 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3710)
!3714 = !DILocation(line: 91, column: 3, scope: !3693)
!3715 = distinct !DISubprogram(name: "xnmalloc", scope: !743, file: !743, line: 98, type: !1358, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3716)
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "n", arg: 1, scope: !3715, file: !743, line: 98, type: !97)
!3718 = !DILocalVariable(name: "s", arg: 2, scope: !3715, file: !743, line: 98, type: !97)
!3719 = !DILocation(line: 0, scope: !3715)
!3720 = !DILocation(line: 0, scope: !3572, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 100, column: 10, scope: !3715)
!3722 = !DILocation(line: 85, column: 25, scope: !3572, inlinedAt: !3721)
!3723 = !DILocation(line: 0, scope: !3580, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 85, column: 10, scope: !3572, inlinedAt: !3721)
!3725 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3724)
!3726 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3724)
!3727 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3724)
!3728 = !DILocation(line: 100, column: 3, scope: !3715)
!3729 = distinct !DISubprogram(name: "xinmalloc", scope: !743, file: !743, line: 104, type: !3730, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3732)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!94, !762, !762}
!3732 = !{!3733, !3734}
!3733 = !DILocalVariable(name: "n", arg: 1, scope: !3729, file: !743, line: 104, type: !762)
!3734 = !DILocalVariable(name: "s", arg: 2, scope: !3729, file: !743, line: 104, type: !762)
!3735 = !DILocation(line: 0, scope: !3729)
!3736 = !DILocation(line: 0, scope: !3693, inlinedAt: !3737)
!3737 = distinct !DILocation(line: 106, column: 10, scope: !3729)
!3738 = !DILocation(line: 0, scope: !3702, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 91, column: 25, scope: !3693, inlinedAt: !3737)
!3740 = !DILocation(line: 101, column: 13, scope: !3702, inlinedAt: !3739)
!3741 = !DILocation(line: 0, scope: !3580, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 91, column: 10, scope: !3693, inlinedAt: !3737)
!3743 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3742)
!3744 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3742)
!3745 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3742)
!3746 = !DILocation(line: 106, column: 3, scope: !3729)
!3747 = distinct !DISubprogram(name: "x2realloc", scope: !743, file: !743, line: 116, type: !3748, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3750)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!94, !94, !749}
!3750 = !{!3751, !3752}
!3751 = !DILocalVariable(name: "p", arg: 1, scope: !3747, file: !743, line: 116, type: !94)
!3752 = !DILocalVariable(name: "ps", arg: 2, scope: !3747, file: !743, line: 116, type: !749)
!3753 = !DILocation(line: 0, scope: !3747)
!3754 = !DILocation(line: 0, scope: !746, inlinedAt: !3755)
!3755 = distinct !DILocation(line: 118, column: 10, scope: !3747)
!3756 = !DILocation(line: 178, column: 14, scope: !746, inlinedAt: !3755)
!3757 = !DILocation(line: 180, column: 9, scope: !3758, inlinedAt: !3755)
!3758 = distinct !DILexicalBlock(scope: !746, file: !743, line: 180, column: 7)
!3759 = !DILocation(line: 180, column: 7, scope: !746, inlinedAt: !3755)
!3760 = !DILocation(line: 182, column: 13, scope: !3761, inlinedAt: !3755)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !743, line: 182, column: 11)
!3762 = distinct !DILexicalBlock(scope: !3758, file: !743, line: 181, column: 5)
!3763 = !DILocation(line: 182, column: 11, scope: !3762, inlinedAt: !3755)
!3764 = !DILocation(line: 197, column: 11, scope: !3765, inlinedAt: !3755)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !743, line: 197, column: 11)
!3766 = distinct !DILexicalBlock(scope: !3758, file: !743, line: 195, column: 5)
!3767 = !DILocation(line: 197, column: 11, scope: !3766, inlinedAt: !3755)
!3768 = !DILocation(line: 198, column: 9, scope: !3765, inlinedAt: !3755)
!3769 = !DILocation(line: 0, scope: !3572, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 201, column: 7, scope: !746, inlinedAt: !3755)
!3771 = !DILocation(line: 85, column: 25, scope: !3572, inlinedAt: !3770)
!3772 = !DILocation(line: 0, scope: !3580, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 85, column: 10, scope: !3572, inlinedAt: !3770)
!3774 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3773)
!3775 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3773)
!3776 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3773)
!3777 = !DILocation(line: 202, column: 7, scope: !746, inlinedAt: !3755)
!3778 = !DILocation(line: 118, column: 3, scope: !3747)
!3779 = !DILocation(line: 0, scope: !746)
!3780 = !DILocation(line: 178, column: 14, scope: !746)
!3781 = !DILocation(line: 180, column: 9, scope: !3758)
!3782 = !DILocation(line: 180, column: 7, scope: !746)
!3783 = !DILocation(line: 182, column: 13, scope: !3761)
!3784 = !DILocation(line: 182, column: 11, scope: !3762)
!3785 = !DILocation(line: 190, column: 30, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3761, file: !743, line: 183, column: 9)
!3787 = !DILocation(line: 191, column: 16, scope: !3786)
!3788 = !DILocation(line: 191, column: 13, scope: !3786)
!3789 = !DILocation(line: 192, column: 9, scope: !3786)
!3790 = !DILocation(line: 197, column: 11, scope: !3765)
!3791 = !DILocation(line: 197, column: 11, scope: !3766)
!3792 = !DILocation(line: 198, column: 9, scope: !3765)
!3793 = !DILocation(line: 0, scope: !3572, inlinedAt: !3794)
!3794 = distinct !DILocation(line: 201, column: 7, scope: !746)
!3795 = !DILocation(line: 85, column: 25, scope: !3572, inlinedAt: !3794)
!3796 = !DILocation(line: 0, scope: !3580, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 85, column: 10, scope: !3572, inlinedAt: !3794)
!3798 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3797)
!3799 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3797)
!3800 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3797)
!3801 = !DILocation(line: 202, column: 7, scope: !746)
!3802 = !DILocation(line: 203, column: 3, scope: !746)
!3803 = !DILocation(line: 0, scope: !758)
!3804 = !DILocation(line: 230, column: 14, scope: !758)
!3805 = !DILocation(line: 238, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !758, file: !743, line: 238, column: 7)
!3807 = !DILocation(line: 238, column: 7, scope: !758)
!3808 = !DILocation(line: 240, column: 9, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !758, file: !743, line: 240, column: 7)
!3810 = !DILocation(line: 240, column: 18, scope: !3809)
!3811 = !DILocation(line: 253, column: 8, scope: !758)
!3812 = !DILocation(line: 256, column: 7, scope: !3813)
!3813 = distinct !DILexicalBlock(scope: !758, file: !743, line: 256, column: 7)
!3814 = !DILocation(line: 256, column: 7, scope: !758)
!3815 = !DILocation(line: 258, column: 27, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3813, file: !743, line: 257, column: 5)
!3817 = !DILocation(line: 259, column: 32, scope: !3816)
!3818 = !DILocation(line: 260, column: 5, scope: !3816)
!3819 = !DILocation(line: 262, column: 9, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !758, file: !743, line: 262, column: 7)
!3821 = !DILocation(line: 262, column: 7, scope: !758)
!3822 = !DILocation(line: 263, column: 9, scope: !3820)
!3823 = !DILocation(line: 263, column: 5, scope: !3820)
!3824 = !DILocation(line: 264, column: 9, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !758, file: !743, line: 264, column: 7)
!3826 = !DILocation(line: 264, column: 14, scope: !3825)
!3827 = !DILocation(line: 265, column: 7, scope: !3825)
!3828 = !DILocation(line: 265, column: 11, scope: !3825)
!3829 = !DILocation(line: 266, column: 11, scope: !3825)
!3830 = !DILocation(line: 267, column: 14, scope: !3825)
!3831 = !DILocation(line: 264, column: 7, scope: !758)
!3832 = !DILocation(line: 268, column: 5, scope: !3825)
!3833 = !DILocation(line: 0, scope: !3647, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 269, column: 8, scope: !758)
!3835 = !DILocation(line: 0, scope: !3655, inlinedAt: !3836)
!3836 = distinct !DILocation(line: 70, column: 25, scope: !3647, inlinedAt: !3834)
!3837 = !DILocation(line: 2059, column: 24, scope: !3655, inlinedAt: !3836)
!3838 = !DILocation(line: 2059, column: 10, scope: !3655, inlinedAt: !3836)
!3839 = !DILocation(line: 0, scope: !3580, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 70, column: 10, scope: !3647, inlinedAt: !3834)
!3841 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3840)
!3842 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3840)
!3843 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3840)
!3844 = !DILocation(line: 270, column: 7, scope: !758)
!3845 = !DILocation(line: 271, column: 3, scope: !758)
!3846 = distinct !DISubprogram(name: "xzalloc", scope: !743, file: !743, line: 279, type: !3600, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3847)
!3847 = !{!3848}
!3848 = !DILocalVariable(name: "s", arg: 1, scope: !3846, file: !743, line: 279, type: !97)
!3849 = !DILocation(line: 0, scope: !3846)
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3851, file: !743, line: 294, type: !97)
!3851 = distinct !DISubprogram(name: "xcalloc", scope: !743, file: !743, line: 294, type: !1358, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3852)
!3852 = !{!3850, !3853}
!3853 = !DILocalVariable(name: "s", arg: 2, scope: !3851, file: !743, line: 294, type: !97)
!3854 = !DILocation(line: 0, scope: !3851, inlinedAt: !3855)
!3855 = distinct !DILocation(line: 281, column: 10, scope: !3846)
!3856 = !DILocation(line: 296, column: 25, scope: !3851, inlinedAt: !3855)
!3857 = !DILocation(line: 0, scope: !3580, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 296, column: 10, scope: !3851, inlinedAt: !3855)
!3859 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3858)
!3860 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3858)
!3861 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3858)
!3862 = !DILocation(line: 281, column: 3, scope: !3846)
!3863 = !DISubprogram(name: "calloc", scope: !1000, file: !1000, line: 543, type: !1358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3864 = !DILocation(line: 0, scope: !3851)
!3865 = !DILocation(line: 296, column: 25, scope: !3851)
!3866 = !DILocation(line: 0, scope: !3580, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 296, column: 10, scope: !3851)
!3868 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3867)
!3869 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3867)
!3870 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3867)
!3871 = !DILocation(line: 296, column: 3, scope: !3851)
!3872 = distinct !DISubprogram(name: "xizalloc", scope: !743, file: !743, line: 285, type: !3614, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3873)
!3873 = !{!3874}
!3874 = !DILocalVariable(name: "s", arg: 1, scope: !3872, file: !743, line: 285, type: !762)
!3875 = !DILocation(line: 0, scope: !3872)
!3876 = !DILocalVariable(name: "n", arg: 1, scope: !3877, file: !743, line: 300, type: !762)
!3877 = distinct !DISubprogram(name: "xicalloc", scope: !743, file: !743, line: 300, type: !3730, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3878)
!3878 = !{!3876, !3879}
!3879 = !DILocalVariable(name: "s", arg: 2, scope: !3877, file: !743, line: 300, type: !762)
!3880 = !DILocation(line: 0, scope: !3877, inlinedAt: !3881)
!3881 = distinct !DILocation(line: 287, column: 10, scope: !3872)
!3882 = !DILocalVariable(name: "n", arg: 1, scope: !3883, file: !3621, line: 77, type: !762)
!3883 = distinct !DISubprogram(name: "icalloc", scope: !3621, file: !3621, line: 77, type: !3730, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3884)
!3884 = !{!3882, !3885}
!3885 = !DILocalVariable(name: "s", arg: 2, scope: !3883, file: !3621, line: 77, type: !762)
!3886 = !DILocation(line: 0, scope: !3883, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 302, column: 25, scope: !3877, inlinedAt: !3881)
!3888 = !DILocation(line: 91, column: 10, scope: !3883, inlinedAt: !3887)
!3889 = !DILocation(line: 0, scope: !3580, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 302, column: 10, scope: !3877, inlinedAt: !3881)
!3891 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3890)
!3892 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3890)
!3893 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3890)
!3894 = !DILocation(line: 287, column: 3, scope: !3872)
!3895 = !DILocation(line: 0, scope: !3877)
!3896 = !DILocation(line: 0, scope: !3883, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 302, column: 25, scope: !3877)
!3898 = !DILocation(line: 91, column: 10, scope: !3883, inlinedAt: !3897)
!3899 = !DILocation(line: 0, scope: !3580, inlinedAt: !3900)
!3900 = distinct !DILocation(line: 302, column: 10, scope: !3877)
!3901 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3900)
!3902 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3900)
!3903 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3900)
!3904 = !DILocation(line: 302, column: 3, scope: !3877)
!3905 = distinct !DISubprogram(name: "xmemdup", scope: !743, file: !743, line: 310, type: !3906, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!94, !1024, !97}
!3908 = !{!3909, !3910}
!3909 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !743, line: 310, type: !1024)
!3910 = !DILocalVariable(name: "s", arg: 2, scope: !3905, file: !743, line: 310, type: !97)
!3911 = !DILocation(line: 0, scope: !3905)
!3912 = !DILocation(line: 0, scope: !3599, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 312, column: 18, scope: !3905)
!3914 = !DILocation(line: 49, column: 25, scope: !3599, inlinedAt: !3913)
!3915 = !DILocation(line: 0, scope: !3580, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 49, column: 10, scope: !3599, inlinedAt: !3913)
!3917 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3916)
!3918 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3916)
!3919 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3916)
!3920 = !DILocalVariable(name: "__dest", arg: 1, scope: !3921, file: !1099, line: 26, type: !1102)
!3921 = distinct !DISubprogram(name: "memcpy", scope: !1099, file: !1099, line: 26, type: !1100, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3922)
!3922 = !{!3920, !3923, !3924}
!3923 = !DILocalVariable(name: "__src", arg: 2, scope: !3921, file: !1099, line: 26, type: !1023)
!3924 = !DILocalVariable(name: "__len", arg: 3, scope: !3921, file: !1099, line: 26, type: !97)
!3925 = !DILocation(line: 0, scope: !3921, inlinedAt: !3926)
!3926 = distinct !DILocation(line: 312, column: 10, scope: !3905)
!3927 = !DILocation(line: 29, column: 10, scope: !3921, inlinedAt: !3926)
!3928 = !DILocation(line: 312, column: 3, scope: !3905)
!3929 = distinct !DISubprogram(name: "ximemdup", scope: !743, file: !743, line: 316, type: !3930, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!94, !1024, !762}
!3932 = !{!3933, !3934}
!3933 = !DILocalVariable(name: "p", arg: 1, scope: !3929, file: !743, line: 316, type: !1024)
!3934 = !DILocalVariable(name: "s", arg: 2, scope: !3929, file: !743, line: 316, type: !762)
!3935 = !DILocation(line: 0, scope: !3929)
!3936 = !DILocation(line: 0, scope: !3613, inlinedAt: !3937)
!3937 = distinct !DILocation(line: 318, column: 18, scope: !3929)
!3938 = !DILocation(line: 0, scope: !3620, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 55, column: 25, scope: !3613, inlinedAt: !3937)
!3940 = !DILocation(line: 57, column: 26, scope: !3620, inlinedAt: !3939)
!3941 = !DILocation(line: 0, scope: !3580, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 55, column: 10, scope: !3613, inlinedAt: !3937)
!3943 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3942)
!3944 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3942)
!3945 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3942)
!3946 = !DILocation(line: 0, scope: !3921, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 318, column: 10, scope: !3929)
!3948 = !DILocation(line: 29, column: 10, scope: !3921, inlinedAt: !3947)
!3949 = !DILocation(line: 318, column: 3, scope: !3929)
!3950 = distinct !DISubprogram(name: "ximemdup0", scope: !743, file: !743, line: 325, type: !3951, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3953)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!101, !1024, !762}
!3953 = !{!3954, !3955, !3956}
!3954 = !DILocalVariable(name: "p", arg: 1, scope: !3950, file: !743, line: 325, type: !1024)
!3955 = !DILocalVariable(name: "s", arg: 2, scope: !3950, file: !743, line: 325, type: !762)
!3956 = !DILocalVariable(name: "result", scope: !3950, file: !743, line: 327, type: !101)
!3957 = !DILocation(line: 0, scope: !3950)
!3958 = !DILocation(line: 327, column: 30, scope: !3950)
!3959 = !DILocation(line: 0, scope: !3613, inlinedAt: !3960)
!3960 = distinct !DILocation(line: 327, column: 18, scope: !3950)
!3961 = !DILocation(line: 0, scope: !3620, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 55, column: 25, scope: !3613, inlinedAt: !3960)
!3963 = !DILocation(line: 57, column: 26, scope: !3620, inlinedAt: !3962)
!3964 = !DILocation(line: 0, scope: !3580, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 55, column: 10, scope: !3613, inlinedAt: !3960)
!3966 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3965)
!3967 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3965)
!3968 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3965)
!3969 = !DILocation(line: 328, column: 3, scope: !3950)
!3970 = !DILocation(line: 328, column: 13, scope: !3950)
!3971 = !DILocation(line: 0, scope: !3921, inlinedAt: !3972)
!3972 = distinct !DILocation(line: 329, column: 10, scope: !3950)
!3973 = !DILocation(line: 29, column: 10, scope: !3921, inlinedAt: !3972)
!3974 = !DILocation(line: 329, column: 3, scope: !3950)
!3975 = distinct !DISubprogram(name: "xstrdup", scope: !743, file: !743, line: 335, type: !1002, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !742, retainedNodes: !3976)
!3976 = !{!3977}
!3977 = !DILocalVariable(name: "string", arg: 1, scope: !3975, file: !743, line: 335, type: !70)
!3978 = !DILocation(line: 0, scope: !3975)
!3979 = !DILocation(line: 337, column: 27, scope: !3975)
!3980 = !DILocation(line: 337, column: 43, scope: !3975)
!3981 = !DILocation(line: 0, scope: !3905, inlinedAt: !3982)
!3982 = distinct !DILocation(line: 337, column: 10, scope: !3975)
!3983 = !DILocation(line: 0, scope: !3599, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 312, column: 18, scope: !3905, inlinedAt: !3982)
!3985 = !DILocation(line: 49, column: 25, scope: !3599, inlinedAt: !3984)
!3986 = !DILocation(line: 0, scope: !3580, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 49, column: 10, scope: !3599, inlinedAt: !3984)
!3988 = !DILocation(line: 39, column: 8, scope: !3587, inlinedAt: !3987)
!3989 = !DILocation(line: 39, column: 7, scope: !3580, inlinedAt: !3987)
!3990 = !DILocation(line: 40, column: 5, scope: !3587, inlinedAt: !3987)
!3991 = !DILocation(line: 0, scope: !3921, inlinedAt: !3992)
!3992 = distinct !DILocation(line: 312, column: 10, scope: !3905, inlinedAt: !3982)
!3993 = !DILocation(line: 29, column: 10, scope: !3921, inlinedAt: !3992)
!3994 = !DILocation(line: 337, column: 3, scope: !3975)
!3995 = distinct !DISubprogram(name: "xalloc_die", scope: !665, file: !665, line: 32, type: !366, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3996)
!3996 = !{!3997}
!3997 = !DILocalVariable(name: "__errstatus", scope: !3998, file: !665, line: 34, type: !3999)
!3998 = distinct !DILexicalBlock(scope: !3995, file: !665, line: 34, column: 3)
!3999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!4000 = !DILocation(line: 34, column: 3, scope: !3998)
!4001 = !DILocation(line: 0, scope: !3998)
!4002 = !DILocation(line: 40, column: 3, scope: !3995)
!4003 = distinct !DISubprogram(name: "close_stream", scope: !780, file: !780, line: 55, type: !4004, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4040)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!95, !4006}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4009)
!4009 = !{!4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4008, file: !236, line: 51, baseType: !95, size: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4008, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4008, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4008, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4008, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4008, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4008, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4008, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4008, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4008, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4008, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4008, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4008, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4008, file: !236, line: 70, baseType: !4024, size: 64, offset: 832)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4008, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4008, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4008, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4008, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4008, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4008, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4008, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4008, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4008, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4008, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4008, file: !236, line: 93, baseType: !4024, size: 64, offset: 1344)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4008, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4008, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4008, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4008, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4040 = !{!4041, !4042, !4044, !4045}
!4041 = !DILocalVariable(name: "stream", arg: 1, scope: !4003, file: !780, line: 55, type: !4006)
!4042 = !DILocalVariable(name: "some_pending", scope: !4003, file: !780, line: 57, type: !4043)
!4043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!4044 = !DILocalVariable(name: "prev_fail", scope: !4003, file: !780, line: 58, type: !4043)
!4045 = !DILocalVariable(name: "fclose_fail", scope: !4003, file: !780, line: 59, type: !4043)
!4046 = !DILocation(line: 0, scope: !4003)
!4047 = !DILocation(line: 57, column: 30, scope: !4003)
!4048 = !DILocalVariable(name: "__stream", arg: 1, scope: !4049, file: !1548, line: 135, type: !4006)
!4049 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1548, file: !1548, line: 135, type: !4004, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !4050)
!4050 = !{!4048}
!4051 = !DILocation(line: 0, scope: !4049, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 58, column: 27, scope: !4003)
!4053 = !DILocation(line: 137, column: 10, scope: !4049, inlinedAt: !4052)
!4054 = !{!1557, !880, i64 0}
!4055 = !DILocation(line: 58, column: 43, scope: !4003)
!4056 = !DILocation(line: 59, column: 29, scope: !4003)
!4057 = !DILocation(line: 59, column: 45, scope: !4003)
!4058 = !DILocation(line: 69, column: 17, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4003, file: !780, line: 69, column: 7)
!4060 = !DILocation(line: 57, column: 50, scope: !4003)
!4061 = !DILocation(line: 69, column: 33, scope: !4059)
!4062 = !DILocation(line: 69, column: 53, scope: !4059)
!4063 = !DILocation(line: 69, column: 59, scope: !4059)
!4064 = !DILocation(line: 69, column: 7, scope: !4003)
!4065 = !DILocation(line: 71, column: 11, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4059, file: !780, line: 70, column: 5)
!4067 = !DILocation(line: 72, column: 9, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4066, file: !780, line: 71, column: 11)
!4069 = !DILocation(line: 72, column: 15, scope: !4068)
!4070 = !DILocation(line: 77, column: 1, scope: !4003)
!4071 = !DISubprogram(name: "__fpending", scope: !4072, file: !4072, line: 75, type: !4073, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4072 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!97, !4006}
!4075 = distinct !DISubprogram(name: "rpl_fclose", scope: !782, file: !782, line: 58, type: !4076, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4112)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!95, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4080)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4081)
!4081 = !{!4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4080, file: !236, line: 51, baseType: !95, size: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4080, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4080, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4080, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4080, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4080, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4080, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4080, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4080, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4080, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4080, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4080, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4080, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4080, file: !236, line: 70, baseType: !4096, size: 64, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4080, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4080, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4080, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4080, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4080, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4080, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4080, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4080, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4080, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4080, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4080, file: !236, line: 93, baseType: !4096, size: 64, offset: 1344)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4080, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4080, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4080, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4080, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "fp", arg: 1, scope: !4075, file: !782, line: 58, type: !4078)
!4114 = !DILocalVariable(name: "saved_errno", scope: !4075, file: !782, line: 60, type: !95)
!4115 = !DILocalVariable(name: "fd", scope: !4075, file: !782, line: 63, type: !95)
!4116 = !DILocalVariable(name: "result", scope: !4075, file: !782, line: 74, type: !95)
!4117 = !DILocation(line: 0, scope: !4075)
!4118 = !DILocation(line: 63, column: 12, scope: !4075)
!4119 = !DILocation(line: 64, column: 10, scope: !4120)
!4120 = distinct !DILexicalBlock(scope: !4075, file: !782, line: 64, column: 7)
!4121 = !DILocation(line: 64, column: 7, scope: !4075)
!4122 = !DILocation(line: 65, column: 12, scope: !4120)
!4123 = !DILocation(line: 65, column: 5, scope: !4120)
!4124 = !DILocation(line: 70, column: 9, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4075, file: !782, line: 70, column: 7)
!4126 = !DILocation(line: 70, column: 23, scope: !4125)
!4127 = !DILocation(line: 70, column: 33, scope: !4125)
!4128 = !DILocation(line: 70, column: 26, scope: !4125)
!4129 = !DILocation(line: 70, column: 59, scope: !4125)
!4130 = !DILocation(line: 71, column: 7, scope: !4125)
!4131 = !DILocation(line: 71, column: 10, scope: !4125)
!4132 = !DILocation(line: 70, column: 7, scope: !4075)
!4133 = !DILocation(line: 100, column: 12, scope: !4075)
!4134 = !DILocation(line: 105, column: 7, scope: !4075)
!4135 = !DILocation(line: 72, column: 19, scope: !4125)
!4136 = !DILocation(line: 105, column: 19, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4075, file: !782, line: 105, column: 7)
!4138 = !DILocation(line: 107, column: 13, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4137, file: !782, line: 106, column: 5)
!4140 = !DILocation(line: 109, column: 5, scope: !4139)
!4141 = !DILocation(line: 112, column: 1, scope: !4075)
!4142 = !DISubprogram(name: "fileno", scope: !326, file: !326, line: 809, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4143 = !DISubprogram(name: "fclose", scope: !326, file: !326, line: 178, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4144 = !DISubprogram(name: "__freading", scope: !4072, file: !4072, line: 51, type: !4076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4145 = !DISubprogram(name: "lseek", scope: !1354, file: !1354, line: 339, type: !4146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!258, !95, !258, !95}
!4148 = distinct !DISubprogram(name: "fd_safer_flag", scope: !784, file: !784, line: 40, type: !372, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4149)
!4149 = !{!4150, !4151, !4152, !4155}
!4150 = !DILocalVariable(name: "fd", arg: 1, scope: !4148, file: !784, line: 40, type: !95)
!4151 = !DILocalVariable(name: "flag", arg: 2, scope: !4148, file: !784, line: 40, type: !95)
!4152 = !DILocalVariable(name: "f", scope: !4153, file: !784, line: 44, type: !95)
!4153 = distinct !DILexicalBlock(scope: !4154, file: !784, line: 43, column: 5)
!4154 = distinct !DILexicalBlock(scope: !4148, file: !784, line: 42, column: 7)
!4155 = !DILocalVariable(name: "saved_errno", scope: !4153, file: !784, line: 45, type: !95)
!4156 = !DILocation(line: 0, scope: !4148)
!4157 = !DILocation(line: 42, column: 26, scope: !4154)
!4158 = !DILocation(line: 44, column: 15, scope: !4153)
!4159 = !DILocation(line: 0, scope: !4153)
!4160 = !DILocation(line: 45, column: 25, scope: !4153)
!4161 = !DILocation(line: 46, column: 7, scope: !4153)
!4162 = !DILocation(line: 47, column: 13, scope: !4153)
!4163 = !DILocation(line: 49, column: 5, scope: !4153)
!4164 = !DILocation(line: 51, column: 3, scope: !4148)
!4165 = distinct !DISubprogram(name: "dup_safer_flag", scope: !786, file: !786, line: 34, type: !372, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4166)
!4166 = !{!4167, !4168}
!4167 = !DILocalVariable(name: "fd", arg: 1, scope: !4165, file: !786, line: 34, type: !95)
!4168 = !DILocalVariable(name: "flag", arg: 2, scope: !4165, file: !786, line: 34, type: !95)
!4169 = !DILocation(line: 0, scope: !4165)
!4170 = !DILocation(line: 36, column: 27, scope: !4165)
!4171 = !DILocation(line: 36, column: 21, scope: !4165)
!4172 = !DILocation(line: 36, column: 10, scope: !4165)
!4173 = !DILocation(line: 36, column: 3, scope: !4165)
!4174 = distinct !DISubprogram(name: "rpl_fflush", scope: !788, file: !788, line: 130, type: !4175, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4211)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{!95, !4177}
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4179)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4179, file: !236, line: 51, baseType: !95, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4179, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4179, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4179, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4179, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4179, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4179, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4179, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4179, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4179, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4179, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4179, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4179, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4179, file: !236, line: 70, baseType: !4195, size: 64, offset: 832)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4179, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4179, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4179, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4179, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4179, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4179, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4179, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4179, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4179, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4179, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4179, file: !236, line: 93, baseType: !4195, size: 64, offset: 1344)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4179, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4179, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4179, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4179, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4211 = !{!4212}
!4212 = !DILocalVariable(name: "stream", arg: 1, scope: !4174, file: !788, line: 130, type: !4177)
!4213 = !DILocation(line: 0, scope: !4174)
!4214 = !DILocation(line: 151, column: 14, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4174, file: !788, line: 151, column: 7)
!4216 = !DILocation(line: 151, column: 22, scope: !4215)
!4217 = !DILocation(line: 151, column: 27, scope: !4215)
!4218 = !DILocation(line: 151, column: 7, scope: !4174)
!4219 = !DILocation(line: 152, column: 12, scope: !4215)
!4220 = !DILocation(line: 152, column: 5, scope: !4215)
!4221 = !DILocalVariable(name: "fp", arg: 1, scope: !4222, file: !788, line: 42, type: !4177)
!4222 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !788, file: !788, line: 42, type: !4223, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{null, !4177}
!4225 = !{!4221}
!4226 = !DILocation(line: 0, scope: !4222, inlinedAt: !4227)
!4227 = distinct !DILocation(line: 157, column: 3, scope: !4174)
!4228 = !DILocation(line: 44, column: 12, scope: !4229, inlinedAt: !4227)
!4229 = distinct !DILexicalBlock(scope: !4222, file: !788, line: 44, column: 7)
!4230 = !DILocation(line: 44, column: 19, scope: !4229, inlinedAt: !4227)
!4231 = !DILocation(line: 44, column: 7, scope: !4222, inlinedAt: !4227)
!4232 = !DILocation(line: 46, column: 5, scope: !4229, inlinedAt: !4227)
!4233 = !DILocation(line: 159, column: 10, scope: !4174)
!4234 = !DILocation(line: 159, column: 3, scope: !4174)
!4235 = !DILocation(line: 236, column: 1, scope: !4174)
!4236 = !DISubprogram(name: "fflush", scope: !326, file: !326, line: 230, type: !4175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4237 = distinct !DISubprogram(name: "rpl_fseeko", scope: !790, file: !790, line: 28, type: !4238, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4275)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!95, !4240, !4274, !95}
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4242)
!4242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4243)
!4243 = !{!4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4242, file: !236, line: 51, baseType: !95, size: 32)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4242, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4242, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4242, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4242, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4242, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4242, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4242, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4242, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4242, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4242, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4242, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4242, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4242, file: !236, line: 70, baseType: !4258, size: 64, offset: 832)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4242, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4242, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4242, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4242, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4242, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4242, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4242, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4242, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4242, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4242, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4242, file: !236, line: 93, baseType: !4258, size: 64, offset: 1344)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4242, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4242, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4242, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4242, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4274 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !326, line: 63, baseType: !258)
!4275 = !{!4276, !4277, !4278, !4279}
!4276 = !DILocalVariable(name: "fp", arg: 1, scope: !4237, file: !790, line: 28, type: !4240)
!4277 = !DILocalVariable(name: "offset", arg: 2, scope: !4237, file: !790, line: 28, type: !4274)
!4278 = !DILocalVariable(name: "whence", arg: 3, scope: !4237, file: !790, line: 28, type: !95)
!4279 = !DILocalVariable(name: "pos", scope: !4280, file: !790, line: 123, type: !4274)
!4280 = distinct !DILexicalBlock(scope: !4281, file: !790, line: 119, column: 5)
!4281 = distinct !DILexicalBlock(scope: !4237, file: !790, line: 55, column: 7)
!4282 = !DILocation(line: 0, scope: !4237)
!4283 = !DILocation(line: 55, column: 12, scope: !4281)
!4284 = !{!1557, !820, i64 16}
!4285 = !DILocation(line: 55, column: 33, scope: !4281)
!4286 = !{!1557, !820, i64 8}
!4287 = !DILocation(line: 55, column: 25, scope: !4281)
!4288 = !DILocation(line: 56, column: 7, scope: !4281)
!4289 = !DILocation(line: 56, column: 15, scope: !4281)
!4290 = !DILocation(line: 56, column: 37, scope: !4281)
!4291 = !{!1557, !820, i64 32}
!4292 = !DILocation(line: 56, column: 29, scope: !4281)
!4293 = !DILocation(line: 57, column: 7, scope: !4281)
!4294 = !DILocation(line: 57, column: 15, scope: !4281)
!4295 = !{!1557, !820, i64 72}
!4296 = !DILocation(line: 57, column: 29, scope: !4281)
!4297 = !DILocation(line: 55, column: 7, scope: !4237)
!4298 = !DILocation(line: 123, column: 26, scope: !4280)
!4299 = !DILocation(line: 123, column: 19, scope: !4280)
!4300 = !DILocation(line: 0, scope: !4280)
!4301 = !DILocation(line: 124, column: 15, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4280, file: !790, line: 124, column: 11)
!4303 = !DILocation(line: 124, column: 11, scope: !4280)
!4304 = !DILocation(line: 135, column: 19, scope: !4280)
!4305 = !DILocation(line: 136, column: 12, scope: !4280)
!4306 = !DILocation(line: 136, column: 20, scope: !4280)
!4307 = !{!1557, !1263, i64 144}
!4308 = !DILocation(line: 167, column: 7, scope: !4280)
!4309 = !DILocation(line: 169, column: 10, scope: !4237)
!4310 = !DILocation(line: 169, column: 3, scope: !4237)
!4311 = !DILocation(line: 170, column: 1, scope: !4237)
!4312 = !DISubprogram(name: "fseeko", scope: !326, file: !326, line: 736, type: !4313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!95, !4240, !258, !95}
!4315 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !672, file: !672, line: 100, type: !4316, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4319)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!97, !2045, !70, !97, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!4319 = !{!4320, !4321, !4322, !4323, !4324}
!4320 = !DILocalVariable(name: "pwc", arg: 1, scope: !4315, file: !672, line: 100, type: !2045)
!4321 = !DILocalVariable(name: "s", arg: 2, scope: !4315, file: !672, line: 100, type: !70)
!4322 = !DILocalVariable(name: "n", arg: 3, scope: !4315, file: !672, line: 100, type: !97)
!4323 = !DILocalVariable(name: "ps", arg: 4, scope: !4315, file: !672, line: 100, type: !4318)
!4324 = !DILocalVariable(name: "ret", scope: !4315, file: !672, line: 130, type: !97)
!4325 = !DILocation(line: 0, scope: !4315)
!4326 = !DILocation(line: 105, column: 9, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4315, file: !672, line: 105, column: 7)
!4328 = !DILocation(line: 105, column: 7, scope: !4315)
!4329 = !DILocation(line: 117, column: 10, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4315, file: !672, line: 117, column: 7)
!4331 = !DILocation(line: 117, column: 7, scope: !4315)
!4332 = !DILocation(line: 130, column: 16, scope: !4315)
!4333 = !DILocation(line: 135, column: 11, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4315, file: !672, line: 135, column: 7)
!4335 = !DILocation(line: 135, column: 25, scope: !4334)
!4336 = !DILocation(line: 135, column: 30, scope: !4334)
!4337 = !DILocation(line: 135, column: 7, scope: !4315)
!4338 = !DILocalVariable(name: "ps", arg: 1, scope: !4339, file: !2019, line: 1135, type: !4318)
!4339 = distinct !DISubprogram(name: "mbszero", scope: !2019, file: !2019, line: 1135, type: !4340, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4342)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4318}
!4342 = !{!4338}
!4343 = !DILocation(line: 0, scope: !4339, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 137, column: 5, scope: !4334)
!4345 = !DILocalVariable(name: "__dest", arg: 1, scope: !4346, file: !1099, line: 57, type: !94)
!4346 = distinct !DISubprogram(name: "memset", scope: !1099, file: !1099, line: 57, type: !2028, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4347)
!4347 = !{!4345, !4348, !4349}
!4348 = !DILocalVariable(name: "__ch", arg: 2, scope: !4346, file: !1099, line: 57, type: !95)
!4349 = !DILocalVariable(name: "__len", arg: 3, scope: !4346, file: !1099, line: 57, type: !97)
!4350 = !DILocation(line: 0, scope: !4346, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 1137, column: 3, scope: !4339, inlinedAt: !4344)
!4352 = !DILocation(line: 59, column: 10, scope: !4346, inlinedAt: !4351)
!4353 = !DILocation(line: 137, column: 5, scope: !4334)
!4354 = !DILocation(line: 138, column: 11, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4315, file: !672, line: 138, column: 7)
!4356 = !DILocation(line: 138, column: 7, scope: !4315)
!4357 = !DILocation(line: 139, column: 5, scope: !4355)
!4358 = !DILocation(line: 143, column: 26, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !4315, file: !672, line: 143, column: 7)
!4360 = !DILocation(line: 143, column: 41, scope: !4359)
!4361 = !DILocation(line: 143, column: 7, scope: !4315)
!4362 = !DILocation(line: 145, column: 15, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !672, line: 145, column: 11)
!4364 = distinct !DILexicalBlock(scope: !4359, file: !672, line: 144, column: 5)
!4365 = !DILocation(line: 145, column: 11, scope: !4364)
!4366 = !DILocation(line: 146, column: 32, scope: !4363)
!4367 = !DILocation(line: 146, column: 16, scope: !4363)
!4368 = !DILocation(line: 146, column: 14, scope: !4363)
!4369 = !DILocation(line: 146, column: 9, scope: !4363)
!4370 = !DILocation(line: 286, column: 1, scope: !4315)
!4371 = !DISubprogram(name: "mbsinit", scope: !4372, file: !4372, line: 293, type: !4373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4372 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!95, !4375}
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!4377 = !DILocation(line: 0, scope: !690)
!4378 = !DILocation(line: 46, column: 12, scope: !690)
!4379 = !DILocation(line: 45, column: 12, scope: !690)
!4380 = !DILocation(line: 55, column: 9, scope: !703)
!4381 = !DILocation(line: 55, column: 27, scope: !703)
!4382 = !DILocation(line: 55, column: 9, scope: !704)
!4383 = !DILocation(line: 57, column: 22, scope: !702)
!4384 = !DILocation(line: 0, scope: !702)
!4385 = !DILocation(line: 58, column: 22, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !702, file: !691, line: 58, column: 13)
!4387 = !DILocation(line: 58, column: 26, scope: !4386)
!4388 = !DILocation(line: 58, column: 29, scope: !4386)
!4389 = !DILocation(line: 58, column: 35, scope: !4386)
!4390 = !DILocation(line: 58, column: 13, scope: !702)
!4391 = !DILocation(line: 69, column: 14, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !690, file: !691, line: 69, column: 7)
!4393 = !DILocation(line: 69, column: 63, scope: !4392)
!4394 = !DILocation(line: 69, column: 7, scope: !690)
!4395 = !DILocation(line: 71, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4392, file: !691, line: 70, column: 5)
!4397 = !DILocation(line: 71, column: 13, scope: !4396)
!4398 = !DILocation(line: 72, column: 7, scope: !4396)
!4399 = !DILocation(line: 106, column: 7, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !690, file: !691, line: 106, column: 7)
!4401 = !DILocation(line: 106, column: 17, scope: !4400)
!4402 = !DILocation(line: 106, column: 7, scope: !690)
!4403 = !DILocation(line: 115, column: 13, scope: !707)
!4404 = !DILocation(line: 115, column: 7, scope: !690)
!4405 = !DILocation(line: 119, column: 33, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !706, file: !691, line: 119, column: 11)
!4407 = !DILocation(line: 119, column: 26, scope: !4406)
!4408 = !DILocation(line: 0, scope: !706)
!4409 = !DILocation(line: 119, column: 53, scope: !4406)
!4410 = !DILocation(line: 120, column: 11, scope: !4406)
!4411 = !DILocation(line: 120, column: 21, scope: !4406)
!4412 = !DILocation(line: 120, column: 49, scope: !4406)
!4413 = !DILocation(line: 120, column: 14, scope: !4406)
!4414 = !DILocation(line: 120, column: 63, scope: !4406)
!4415 = !DILocation(line: 121, column: 11, scope: !4406)
!4416 = !DILocation(line: 121, column: 36, scope: !4406)
!4417 = !DILocation(line: 121, column: 29, scope: !4406)
!4418 = !DILocation(line: 121, column: 56, scope: !4406)
!4419 = !DILocation(line: 122, column: 11, scope: !4406)
!4420 = !DILocation(line: 122, column: 21, scope: !4406)
!4421 = !DILocation(line: 122, column: 49, scope: !4406)
!4422 = !DILocation(line: 122, column: 14, scope: !4406)
!4423 = !DILocation(line: 122, column: 63, scope: !4406)
!4424 = !DILocation(line: 119, column: 11, scope: !706)
!4425 = !DILocation(line: 126, column: 13, scope: !710)
!4426 = !DILocation(line: 126, column: 7, scope: !690)
!4427 = !DILocation(line: 130, column: 33, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !709, file: !691, line: 130, column: 11)
!4429 = !DILocation(line: 130, column: 26, scope: !4428)
!4430 = !DILocation(line: 0, scope: !709)
!4431 = !DILocation(line: 130, column: 53, scope: !4428)
!4432 = !DILocation(line: 131, column: 11, scope: !4428)
!4433 = !DILocation(line: 131, column: 21, scope: !4428)
!4434 = !DILocation(line: 131, column: 49, scope: !4428)
!4435 = !DILocation(line: 131, column: 14, scope: !4428)
!4436 = !DILocation(line: 131, column: 63, scope: !4428)
!4437 = !DILocation(line: 132, column: 11, scope: !4428)
!4438 = !DILocation(line: 132, column: 36, scope: !4428)
!4439 = !DILocation(line: 132, column: 29, scope: !4428)
!4440 = !DILocation(line: 132, column: 56, scope: !4428)
!4441 = !DILocation(line: 133, column: 11, scope: !4428)
!4442 = !DILocation(line: 133, column: 21, scope: !4428)
!4443 = !DILocation(line: 133, column: 49, scope: !4428)
!4444 = !DILocation(line: 133, column: 14, scope: !4428)
!4445 = !DILocation(line: 133, column: 63, scope: !4428)
!4446 = !DILocation(line: 130, column: 11, scope: !709)
!4447 = !DILocation(line: 155, column: 2, scope: !690)
!4448 = !DILocation(line: 157, column: 23, scope: !713)
!4449 = !DILocation(line: 0, scope: !713)
!4450 = !DILocation(line: 158, column: 12, scope: !713)
!4451 = !DILocation(line: 158, column: 5, scope: !713)
!4452 = !DILocation(line: 159, column: 12, scope: !713)
!4453 = !DILocation(line: 159, column: 5, scope: !713)
!4454 = !DILocation(line: 160, column: 11, scope: !713)
!4455 = !DILocation(line: 162, column: 11, scope: !713)
!4456 = !DILocation(line: 166, column: 1, scope: !690)
!4457 = !DISubprogram(name: "pipe2", scope: !1354, file: !1354, line: 442, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4458 = !DISubprogram(name: "pipe", scope: !1354, file: !1354, line: 437, type: !4459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!95, !408}
!4461 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !792, file: !792, line: 27, type: !3564, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4462)
!4462 = !{!4463, !4464, !4465, !4466}
!4463 = !DILocalVariable(name: "ptr", arg: 1, scope: !4461, file: !792, line: 27, type: !94)
!4464 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4461, file: !792, line: 27, type: !97)
!4465 = !DILocalVariable(name: "size", arg: 3, scope: !4461, file: !792, line: 27, type: !97)
!4466 = !DILocalVariable(name: "nbytes", scope: !4461, file: !792, line: 29, type: !97)
!4467 = !DILocation(line: 0, scope: !4461)
!4468 = !DILocation(line: 30, column: 7, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4461, file: !792, line: 30, column: 7)
!4470 = !DILocation(line: 30, column: 7, scope: !4461)
!4471 = !DILocation(line: 32, column: 7, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4469, file: !792, line: 31, column: 5)
!4473 = !DILocation(line: 32, column: 13, scope: !4472)
!4474 = !DILocation(line: 33, column: 7, scope: !4472)
!4475 = !DILocalVariable(name: "ptr", arg: 1, scope: !4476, file: !3656, line: 2057, type: !94)
!4476 = distinct !DISubprogram(name: "rpl_realloc", scope: !3656, file: !3656, line: 2057, type: !3648, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4477)
!4477 = !{!4475, !4478}
!4478 = !DILocalVariable(name: "size", arg: 2, scope: !4476, file: !3656, line: 2057, type: !97)
!4479 = !DILocation(line: 0, scope: !4476, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 37, column: 10, scope: !4461)
!4481 = !DILocation(line: 2059, column: 24, scope: !4476, inlinedAt: !4480)
!4482 = !DILocation(line: 2059, column: 10, scope: !4476, inlinedAt: !4480)
!4483 = !DILocation(line: 37, column: 3, scope: !4461)
!4484 = !DILocation(line: 38, column: 1, scope: !4461)
!4485 = distinct !DISubprogram(name: "hard_locale", scope: !716, file: !716, line: 28, type: !4486, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4488)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!219, !95}
!4488 = !{!4489, !4490}
!4489 = !DILocalVariable(name: "category", arg: 1, scope: !4485, file: !716, line: 28, type: !95)
!4490 = !DILocalVariable(name: "locale", scope: !4485, file: !716, line: 30, type: !4491)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4492)
!4492 = !{!4493}
!4493 = !DISubrange(count: 257)
!4494 = distinct !DIAssignID()
!4495 = !DILocation(line: 0, scope: !4485)
!4496 = !DILocation(line: 30, column: 3, scope: !4485)
!4497 = !DILocation(line: 32, column: 7, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4485, file: !716, line: 32, column: 7)
!4499 = !DILocation(line: 32, column: 7, scope: !4485)
!4500 = !DILocalVariable(name: "__s1", arg: 1, scope: !4501, file: !892, line: 1359, type: !70)
!4501 = distinct !DISubprogram(name: "streq", scope: !892, file: !892, line: 1359, type: !893, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !793, retainedNodes: !4502)
!4502 = !{!4500, !4503}
!4503 = !DILocalVariable(name: "__s2", arg: 2, scope: !4501, file: !892, line: 1359, type: !70)
!4504 = !DILocation(line: 0, scope: !4501, inlinedAt: !4505)
!4505 = distinct !DILocation(line: 35, column: 9, scope: !4506)
!4506 = distinct !DILexicalBlock(scope: !4485, file: !716, line: 35, column: 7)
!4507 = !DILocation(line: 1361, column: 11, scope: !4501, inlinedAt: !4505)
!4508 = !DILocation(line: 1361, column: 10, scope: !4501, inlinedAt: !4505)
!4509 = !DILocation(line: 35, column: 29, scope: !4506)
!4510 = !DILocation(line: 0, scope: !4501, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 35, column: 32, scope: !4506)
!4512 = !DILocation(line: 1361, column: 11, scope: !4501, inlinedAt: !4511)
!4513 = !DILocation(line: 1361, column: 10, scope: !4501, inlinedAt: !4511)
!4514 = !DILocation(line: 35, column: 7, scope: !4485)
!4515 = !DILocation(line: 46, column: 3, scope: !4485)
!4516 = !DILocation(line: 47, column: 1, scope: !4485)
!4517 = distinct !DISubprogram(name: "setlocale_null_r", scope: !796, file: !796, line: 154, type: !4518, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4520)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!95, !95, !101, !97}
!4520 = !{!4521, !4522, !4523}
!4521 = !DILocalVariable(name: "category", arg: 1, scope: !4517, file: !796, line: 154, type: !95)
!4522 = !DILocalVariable(name: "buf", arg: 2, scope: !4517, file: !796, line: 154, type: !101)
!4523 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4517, file: !796, line: 154, type: !97)
!4524 = !DILocation(line: 0, scope: !4517)
!4525 = !DILocation(line: 159, column: 10, scope: !4517)
!4526 = !DILocation(line: 159, column: 3, scope: !4517)
!4527 = distinct !DISubprogram(name: "setlocale_null", scope: !796, file: !796, line: 186, type: !4528, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !795, retainedNodes: !4530)
!4528 = !DISubroutineType(types: !4529)
!4529 = !{!70, !95}
!4530 = !{!4531}
!4531 = !DILocalVariable(name: "category", arg: 1, scope: !4527, file: !796, line: 186, type: !95)
!4532 = !DILocation(line: 0, scope: !4527)
!4533 = !DILocation(line: 189, column: 10, scope: !4527)
!4534 = !DILocation(line: 189, column: 3, scope: !4527)
!4535 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !798, file: !798, line: 35, type: !4528, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4536)
!4536 = !{!4537, !4538}
!4537 = !DILocalVariable(name: "category", arg: 1, scope: !4535, file: !798, line: 35, type: !95)
!4538 = !DILocalVariable(name: "result", scope: !4535, file: !798, line: 37, type: !70)
!4539 = !DILocation(line: 0, scope: !4535)
!4540 = !DILocation(line: 37, column: 24, scope: !4535)
!4541 = !DILocation(line: 62, column: 3, scope: !4535)
!4542 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !798, file: !798, line: 66, type: !4518, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4543)
!4543 = !{!4544, !4545, !4546, !4547, !4548}
!4544 = !DILocalVariable(name: "category", arg: 1, scope: !4542, file: !798, line: 66, type: !95)
!4545 = !DILocalVariable(name: "buf", arg: 2, scope: !4542, file: !798, line: 66, type: !101)
!4546 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4542, file: !798, line: 66, type: !97)
!4547 = !DILocalVariable(name: "result", scope: !4542, file: !798, line: 111, type: !70)
!4548 = !DILocalVariable(name: "length", scope: !4549, file: !798, line: 125, type: !97)
!4549 = distinct !DILexicalBlock(scope: !4550, file: !798, line: 124, column: 5)
!4550 = distinct !DILexicalBlock(scope: !4542, file: !798, line: 113, column: 7)
!4551 = !DILocation(line: 0, scope: !4542)
!4552 = !DILocation(line: 0, scope: !4535, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 111, column: 24, scope: !4542)
!4554 = !DILocation(line: 37, column: 24, scope: !4535, inlinedAt: !4553)
!4555 = !DILocation(line: 113, column: 14, scope: !4550)
!4556 = !DILocation(line: 113, column: 7, scope: !4542)
!4557 = !DILocation(line: 116, column: 19, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !798, line: 116, column: 11)
!4559 = distinct !DILexicalBlock(scope: !4550, file: !798, line: 114, column: 5)
!4560 = !DILocation(line: 116, column: 11, scope: !4559)
!4561 = !DILocation(line: 120, column: 16, scope: !4558)
!4562 = !DILocation(line: 120, column: 9, scope: !4558)
!4563 = !DILocation(line: 125, column: 23, scope: !4549)
!4564 = !DILocation(line: 0, scope: !4549)
!4565 = !DILocation(line: 126, column: 18, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4549, file: !798, line: 126, column: 11)
!4567 = !DILocation(line: 126, column: 11, scope: !4549)
!4568 = !DILocation(line: 128, column: 39, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4566, file: !798, line: 127, column: 9)
!4570 = !DILocalVariable(name: "__dest", arg: 1, scope: !4571, file: !1099, line: 26, type: !1102)
!4571 = distinct !DISubprogram(name: "memcpy", scope: !1099, file: !1099, line: 26, type: !1100, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !797, retainedNodes: !4572)
!4572 = !{!4570, !4573, !4574}
!4573 = !DILocalVariable(name: "__src", arg: 2, scope: !4571, file: !1099, line: 26, type: !1023)
!4574 = !DILocalVariable(name: "__len", arg: 3, scope: !4571, file: !1099, line: 26, type: !97)
!4575 = !DILocation(line: 0, scope: !4571, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 128, column: 11, scope: !4569)
!4577 = !DILocation(line: 29, column: 10, scope: !4571, inlinedAt: !4576)
!4578 = !DILocation(line: 129, column: 11, scope: !4569)
!4579 = !DILocation(line: 133, column: 23, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !798, line: 133, column: 15)
!4581 = distinct !DILexicalBlock(scope: !4566, file: !798, line: 132, column: 9)
!4582 = !DILocation(line: 133, column: 15, scope: !4581)
!4583 = !DILocation(line: 138, column: 44, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4580, file: !798, line: 134, column: 13)
!4585 = !DILocation(line: 0, scope: !4571, inlinedAt: !4586)
!4586 = distinct !DILocation(line: 138, column: 15, scope: !4584)
!4587 = !DILocation(line: 29, column: 10, scope: !4571, inlinedAt: !4586)
!4588 = !DILocation(line: 139, column: 15, scope: !4584)
!4589 = !DILocation(line: 139, column: 32, scope: !4584)
!4590 = !DILocation(line: 140, column: 13, scope: !4584)
!4591 = !DILocation(line: 0, scope: !4550)
!4592 = !DILocation(line: 145, column: 1, scope: !4542)
