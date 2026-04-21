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
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !355
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !320
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !345
@.str.1.30 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !347
@.str.2.32 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !349
@.str.3.31 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !351
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !353
@.str.4.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !357
@.str.5.26 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !359
@.str.6.27 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !364
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !369
@opterr = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [2 x i8] c"+\00", align 1, !dbg !387
@long_options = internal constant [3 x %struct.option] [%struct.option { ptr @.str.2.49, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.3.50, i32 0, ptr null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !390
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !812, metadata !DIExpression()), !dbg !813
  %2 = icmp eq i32 %0, 0, !dbg !814
  br i1 %2, label %8, label %3, !dbg !816

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !817, !tbaa !819
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !817
  %6 = load ptr, ptr @program_name, align 8, !dbg !817, !tbaa !819
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !817
  br label %31, !dbg !817

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !823
  %10 = load ptr, ptr @program_name, align 8, !dbg !823, !tbaa !819
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef %10) #39, !dbg !823
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !825
  %13 = load ptr, ptr @stdout, align 8, !dbg !825, !tbaa !819
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !825
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !826
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !826
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !827
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !827
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !828, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !840, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr poison, metadata !840, metadata !DIExpression()), !dbg !845
  tail call void @emit_bug_reporting_address() #39, !dbg !847
  %17 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !848
  call void @llvm.dbg.value(metadata ptr %17, metadata !843, metadata !DIExpression()), !dbg !845
  %18 = icmp eq ptr %17, null, !dbg !849
  br i1 %18, label %26, label %19, !dbg !851

19:                                               ; preds = %8
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(4) @.str.43, i64 noundef 3) #40, !dbg !852
  %21 = icmp eq i32 %20, 0, !dbg !852
  br i1 %21, label %26, label %22, !dbg !853

22:                                               ; preds = %19
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #39, !dbg !854
  %24 = load ptr, ptr @stdout, align 8, !dbg !854, !tbaa !819
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !854
  br label %26, !dbg !856

26:                                               ; preds = %8, %19, %22
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !840, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !844, metadata !DIExpression()), !dbg !845
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !857
  %28 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %27, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3) #39, !dbg !857
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !858
  %30 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #39, !dbg !858
  br label %31

31:                                               ; preds = %26, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !859
  unreachable, !dbg !859
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !860 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !865 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !871 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !874 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !66 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !213, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr %0, metadata !214, metadata !DIExpression()), !dbg !877
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !878, !tbaa !879
  %3 = icmp eq i32 %2, -1, !dbg !881
  br i1 %3, label %4, label %16, !dbg !882

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.13) #39, !dbg !883
  call void @llvm.dbg.value(metadata ptr %5, metadata !215, metadata !DIExpression()), !dbg !884
  %6 = icmp eq ptr %5, null, !dbg !885
  br i1 %6, label %14, label %7, !dbg !886

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !887, !tbaa !888
  %9 = icmp eq i8 %8, 0, !dbg !887
  br i1 %9, label %14, label %10, !dbg !889

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !890, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.value(metadata ptr @.str.14, metadata !896, metadata !DIExpression()), !dbg !897
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.14) #40, !dbg !899
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
  br label %122, !dbg !908

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !218, metadata !DIExpression()), !dbg !877
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.15) #40, !dbg !909
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !910
  call void @llvm.dbg.value(metadata ptr %24, metadata !220, metadata !DIExpression()), !dbg !877
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !911
  call void @llvm.dbg.value(metadata ptr %25, metadata !221, metadata !DIExpression()), !dbg !877
  %26 = icmp eq ptr %25, null, !dbg !912
  br i1 %26, label %54, label %27, !dbg !913

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !914
  br i1 %28, label %54, label %29, !dbg !915

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !222, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 0, metadata !226, metadata !DIExpression()), !dbg !916
  %30 = icmp ult ptr %24, %25, !dbg !917
  br i1 %30, label %31, label %52, !dbg !918

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !877
  %33 = load ptr, ptr %32, align 8, !tbaa !819
  br label %34, !dbg !918

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !222, metadata !DIExpression()), !dbg !916
  call void @llvm.dbg.value(metadata i64 %36, metadata !226, metadata !DIExpression()), !dbg !916
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !919
  call void @llvm.dbg.value(metadata ptr %37, metadata !222, metadata !DIExpression()), !dbg !916
  %38 = load i8, ptr %35, align 1, !dbg !919, !tbaa !888
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !919
  %41 = load i16, ptr %40, align 2, !dbg !919, !tbaa !920
  %42 = freeze i16 %41, !dbg !922
  %43 = lshr i16 %42, 13, !dbg !922
  %44 = and i16 %43, 1, !dbg !922
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !923
  call void @llvm.dbg.value(metadata i64 %46, metadata !226, metadata !DIExpression()), !dbg !916
  %47 = icmp ult ptr %37, %25, !dbg !917
  %48 = icmp ult i64 %46, 2, !dbg !924
  %49 = select i1 %47, i1 %48, i1 false, !dbg !924
  br i1 %49, label %34, label %50, !dbg !918, !llvm.loop !925

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !927
  br i1 %51, label %52, label %54, !dbg !929

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !929

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !877
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr %55, metadata !221, metadata !DIExpression()), !dbg !877
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.16) #40, !dbg !930
  call void @llvm.dbg.value(metadata i64 %57, metadata !227, metadata !DIExpression()), !dbg !877
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !931
  call void @llvm.dbg.value(metadata ptr %58, metadata !228, metadata !DIExpression()), !dbg !877
  br label %59, !dbg !932

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !877
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !877
  call void @llvm.dbg.value(metadata ptr %60, metadata !228, metadata !DIExpression()), !dbg !877
  %62 = load i8, ptr %60, align 1, !dbg !933, !tbaa !888
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !934

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !935
  %65 = load i8, ptr %64, align 1, !dbg !938, !tbaa !888
  %66 = icmp ne i8 %65, 45, !dbg !939
  %67 = select i1 %66, i1 %61, i1 false, !dbg !940
  br label %68, !dbg !940

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !218, metadata !DIExpression()), !dbg !877
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !941
  %71 = load ptr, ptr %70, align 8, !dbg !941, !tbaa !819
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !941
  %74 = load i16, ptr %73, align 2, !dbg !941, !tbaa !920
  %75 = and i16 %74, 8192, !dbg !941
  %76 = icmp eq i16 %75, 0, !dbg !941
  br i1 %76, label %90, label %77, !dbg !943

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !944
  br i1 %78, label %92, label %79, !dbg !947

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !948
  %81 = load i8, ptr %80, align 1, !dbg !948, !tbaa !888
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !948
  %84 = load i16, ptr %83, align 2, !dbg !948, !tbaa !920
  %85 = and i16 %84, 8192, !dbg !948
  %86 = icmp eq i16 %85, 0, !dbg !948
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !949
  br i1 %89, label %90, label %92, !dbg !949

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !950
  call void @llvm.dbg.value(metadata ptr %91, metadata !228, metadata !DIExpression()), !dbg !877
  br label %59, !dbg !932, !llvm.loop !951

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !953
  %94 = load ptr, ptr @stdout, align 8, !dbg !953, !tbaa !819
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !953
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !964
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !968
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !970
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !890, metadata !DIExpression()), !dbg !972
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !285, metadata !DIExpression()), !dbg !877
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.30, i64 noundef 6) #40, !dbg !974
  %97 = icmp eq i32 %96, 0, !dbg !974
  br i1 %97, label %101, label %98, !dbg !976

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.31, i64 noundef 9) #40, !dbg !977
  %100 = icmp eq i32 %99, 0, !dbg !977
  br i1 %100, label %101, label %104, !dbg !978

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !979
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !979
  br label %107, !dbg !981

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !982
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !982
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !819
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.36, ptr noundef %108), !dbg !984
  %110 = load ptr, ptr @stdout, align 8, !dbg !985, !tbaa !819
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.37, ptr noundef %110), !dbg !985
  %112 = ptrtoint ptr %60 to i64, !dbg !986
  %113 = sub i64 %112, %93, !dbg !986
  %114 = load ptr, ptr @stdout, align 8, !dbg !986, !tbaa !819
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !986
  %116 = load ptr, ptr @stdout, align 8, !dbg !987, !tbaa !819
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %116), !dbg !987
  %118 = load ptr, ptr @stdout, align 8, !dbg !988, !tbaa !819
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %118), !dbg !988
  %120 = load ptr, ptr @stdout, align 8, !dbg !989, !tbaa !819
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !989
  br label %122, !dbg !990

122:                                              ; preds = %107, %19
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
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1026 {
  %3 = alloca [2 x i32], align 8
  %4 = alloca %struct.iovec, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1031, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %1, metadata !1032, metadata !DIExpression()), !dbg !1045
  %5 = load ptr, ptr %1, align 8, !dbg !1046, !tbaa !819
  tail call void @set_program_name(ptr noundef %5) #39, !dbg !1047
  %6 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.6) #39, !dbg !1048
  %7 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #39, !dbg !1049
  %8 = tail call ptr @textdomain(ptr noundef nonnull @.str.7) #39, !dbg !1050
  %9 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1051
  %10 = load ptr, ptr @Version, align 8, !dbg !1052, !tbaa !819
  %11 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.10) #39, !dbg !1053
  tail call void (i32, ptr, ptr, ptr, ptr, i1, ptr, ...) @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.9, ptr noundef %10, i1 noundef true, ptr noundef nonnull @usage, ptr noundef %11, ptr noundef null) #39, !dbg !1054
  %12 = load i32, ptr @optind, align 4, !dbg !1055, !tbaa !879
  %13 = sext i32 %12 to i64, !dbg !1056
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13, !dbg !1056
  call void @llvm.dbg.value(metadata ptr %14, metadata !1033, metadata !DIExpression()), !dbg !1045
  %15 = sext i32 %0 to i64, !dbg !1057
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15, !dbg !1057
  call void @llvm.dbg.value(metadata ptr %16, metadata !1034, metadata !DIExpression()), !dbg !1045
  %17 = icmp eq i32 %12, %0, !dbg !1058
  br i1 %17, label %18, label %20, !dbg !1060

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %16, i64 1, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %19, metadata !1034, metadata !DIExpression()), !dbg !1045
  store ptr @.str.11, ptr %16, align 8, !dbg !1062, !tbaa !819
  br label %20, !dbg !1063

20:                                               ; preds = %18, %2
  %21 = phi ptr [ %19, %18 ], [ %16, %2 ], !dbg !1045
  call void @llvm.dbg.value(metadata ptr %21, metadata !1034, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8 1, metadata !1036, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %14, metadata !1037, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1045
  %22 = load ptr, ptr %14, align 8, !dbg !1064, !tbaa !819
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #40, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %23, metadata !1038, metadata !DIExpression()), !dbg !1066
  %24 = add i64 %23, 1, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %24, metadata !1035, metadata !DIExpression()), !dbg !1045
  %25 = getelementptr inbounds ptr, ptr %14, i64 1, !dbg !1068
  %26 = icmp ult ptr %25, %21, !dbg !1070
  br i1 %26, label %27, label %43, !dbg !1071

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %41, %27 ], [ %25, %20 ]
  %29 = phi i64 [ %40, %27 ], [ %24, %20 ]
  %30 = phi i64 [ %38, %27 ], [ %23, %20 ]
  %31 = phi ptr [ %35, %27 ], [ %22, %20 ]
  %32 = phi i1 [ %37, %27 ], [ true, %20 ]
  %33 = getelementptr i8, ptr %31, i64 1, !dbg !1072
  %34 = getelementptr i8, ptr %33, i64 %30, !dbg !1073
  %35 = load ptr, ptr %28, align 8, !dbg !1074, !tbaa !819
  %36 = icmp eq ptr %34, %35, !dbg !1075
  %37 = select i1 %36, i1 %32, i1 false, !dbg !1076
  call void @llvm.dbg.value(metadata i64 %29, metadata !1035, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %28, metadata !1037, metadata !DIExpression()), !dbg !1045
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %35) #40, !dbg !1065
  call void @llvm.dbg.value(metadata i64 %38, metadata !1038, metadata !DIExpression()), !dbg !1066
  %39 = add i64 %29, 1, !dbg !1077
  %40 = add i64 %39, %38, !dbg !1067
  call void @llvm.dbg.value(metadata i64 %40, metadata !1035, metadata !DIExpression()), !dbg !1045
  %41 = getelementptr inbounds ptr, ptr %28, i64 1, !dbg !1068
  %42 = icmp ult ptr %41, %21, !dbg !1070
  br i1 %42, label %27, label %43, !dbg !1071

43:                                               ; preds = %27, %20
  %44 = phi i1 [ true, %20 ], [ %37, %27 ]
  %45 = phi i64 [ %24, %20 ], [ %40, %27 ], !dbg !1067
  call void @llvm.dbg.value(metadata i8 poison, metadata !1036, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr undef, metadata !1037, metadata !DIExpression()), !dbg !1045
  %46 = icmp ugt i64 %45, 4096, !dbg !1078
  %47 = select i1 %46, i1 %44, i1 false, !dbg !1080
  %48 = select i1 %46, i64 %45, i64 8192, !dbg !1080
  %49 = freeze i64 %48, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %48, metadata !1035, metadata !DIExpression()), !dbg !1045
  br i1 %47, label %52, label %50, !dbg !1084

50:                                               ; preds = %43
  %51 = tail call noalias nonnull ptr @xmalloc(i64 noundef %49) #43, !dbg !1085
  br label %52, !dbg !1084

52:                                               ; preds = %43, %50
  %53 = phi ptr [ %51, %50 ], [ %22, %43 ], !dbg !1084
  call void @llvm.dbg.value(metadata ptr %53, metadata !1040, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata i64 0, metadata !1041, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %14, metadata !1037, metadata !DIExpression()), !dbg !1045
  br label %54, !dbg !1086

54:                                               ; preds = %61, %52
  %55 = phi ptr [ %14, %52 ], [ %65, %61 ], !dbg !1045
  %56 = phi i64 [ 0, %52 ], [ %63, %61 ], !dbg !1045
  call void @llvm.dbg.value(metadata i64 %56, metadata !1041, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.value(metadata ptr %55, metadata !1037, metadata !DIExpression()), !dbg !1045
  %57 = load ptr, ptr %55, align 8, !dbg !1087, !tbaa !819
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %57) #40, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %58, metadata !1042, metadata !DIExpression()), !dbg !1089
  br i1 %47, label %61, label %59, !dbg !1090

59:                                               ; preds = %54
  %60 = getelementptr inbounds i8, ptr %53, i64 %56, !dbg !1091
  call void @llvm.dbg.value(metadata ptr %60, metadata !1093, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata ptr %57, metadata !1100, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %58, metadata !1101, metadata !DIExpression()), !dbg !1102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %60, ptr noundef nonnull align 1 %57, i64 noundef %58, i1 noundef false) #39, !dbg !1104
  br label %61, !dbg !1105

61:                                               ; preds = %59, %54
  %62 = add i64 %58, %56, !dbg !1106
  call void @llvm.dbg.value(metadata i64 %62, metadata !1041, metadata !DIExpression()), !dbg !1045
  %63 = add i64 %62, 1, !dbg !1107
  call void @llvm.dbg.value(metadata i64 %63, metadata !1041, metadata !DIExpression()), !dbg !1045
  %64 = getelementptr inbounds i8, ptr %53, i64 %62, !dbg !1108
  store i8 32, ptr %64, align 1, !dbg !1109, !tbaa !888
  %65 = getelementptr inbounds ptr, ptr %55, i64 1, !dbg !1110
  call void @llvm.dbg.value(metadata ptr %65, metadata !1037, metadata !DIExpression()), !dbg !1045
  %66 = icmp ult ptr %65, %21, !dbg !1111
  br i1 %66, label %54, label %67, !dbg !1112, !llvm.loop !1113

67:                                               ; preds = %61
  %68 = getelementptr inbounds i8, ptr %53, i64 %62, !dbg !1108
  store i8 10, ptr %68, align 1, !dbg !1115, !tbaa !888
  call void @llvm.dbg.value(metadata i64 %63, metadata !1044, metadata !DIExpression()), !dbg !1045
  %69 = tail call i64 @full_write(i32 noundef 1, ptr noundef nonnull %53, i64 noundef %63) #39, !dbg !1116
  %70 = icmp eq i64 %69, %63, !dbg !1117
  br i1 %70, label %71, label %196, !dbg !1118

71:                                               ; preds = %67
  call void @llvm.dbg.value(metadata ptr %53, metadata !1119, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %63, metadata !1124, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i8 0, metadata !1125, metadata !DIExpression()), !dbg !1155
  %72 = tail call i32 @getpagesize() #42, !dbg !1157
  %73 = sext i32 %72 to i64, !dbg !1157
  call void @llvm.dbg.value(metadata i64 %73, metadata !1126, metadata !DIExpression()), !dbg !1155
  %74 = tail call i32 @isapipe(i32 noundef 1) #39, !dbg !1158
  %75 = icmp sgt i32 %74, 0, !dbg !1159
  call void @llvm.dbg.value(metadata i1 %75, metadata !1127, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #39, !dbg !1160
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1128, metadata !DIExpression()), !dbg !1161
  store i64 -1, ptr %3, align 8, !dbg !1161
  call void @llvm.dbg.value(metadata ptr null, metadata !1130, metadata !DIExpression()), !dbg !1155
  br i1 %75, label %76, label %81, !dbg !1162

76:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i32 1, metadata !1163, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i64 %63, metadata !1168, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.value(metadata i32 0, metadata !1169, metadata !DIExpression()), !dbg !1171
  %77 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1031, i32 noundef 524288) #39, !dbg !1174
  call void @llvm.dbg.value(metadata i32 %77, metadata !1169, metadata !DIExpression()), !dbg !1171
  %78 = icmp slt i32 %77, 0, !dbg !1176
  br i1 %78, label %79, label %91, !dbg !1177

79:                                               ; preds = %76
  %80 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 1, i32 noundef 1032) #39, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %80, metadata !1169, metadata !DIExpression()), !dbg !1171
  br label %91, !dbg !1179

81:                                               ; preds = %71
  %82 = call i32 @pipe2_safer(ptr noundef nonnull %3, i32 noundef 0) #39, !dbg !1180
  %83 = icmp slt i32 %82, 0, !dbg !1183
  br i1 %83, label %84, label %85, !dbg !1184

84:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1185
  br label %179, !dbg !1186

85:                                               ; preds = %81
  %86 = load i32, ptr %3, align 8, !dbg !1187, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %86, metadata !1163, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i64 %63, metadata !1168, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 0, metadata !1169, metadata !DIExpression()), !dbg !1188
  %87 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %86, i32 noundef 1031, i32 noundef 524288) #39, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %87, metadata !1169, metadata !DIExpression()), !dbg !1188
  %88 = icmp slt i32 %87, 0, !dbg !1191
  br i1 %88, label %89, label %91, !dbg !1192

89:                                               ; preds = %85
  %90 = call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %86, i32 noundef 1032) #39, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %90, metadata !1169, metadata !DIExpression()), !dbg !1188
  br label %91, !dbg !1194

91:                                               ; preds = %89, %85, %79, %76
  %92 = phi i32 [ %80, %79 ], [ %77, %76 ], [ %90, %89 ], [ %87, %85 ]
  %93 = icmp slt i32 %92, 1, !dbg !1195
  %94 = lshr i32 %92, 2, !dbg !1195
  %95 = select i1 %93, i32 16384, i32 %94, !dbg !1195
  %96 = freeze i32 %95, !dbg !1195
  %97 = sext i32 %96 to i64, !dbg !1195
  %98 = urem i64 %97, %63, !dbg !1195
  %99 = sub nuw i64 %97, %98, !dbg !1195
  call void @llvm.dbg.value(metadata i64 %99, metadata !1129, metadata !DIExpression()), !dbg !1155
  %100 = icmp eq i64 %99, 0, !dbg !1196
  br i1 %100, label %166, label %101, !dbg !1198

101:                                              ; preds = %91
  call void @llvm.dbg.value(metadata i64 %73, metadata !1199, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i64 %99, metadata !1205, metadata !DIExpression()), !dbg !1206
  %102 = call noalias ptr @aligned_alloc(i64 noundef %73, i64 noundef %99) #44, !dbg !1209
  call void @llvm.assume(i1 true) [ "align"(ptr %102, i64 %73) ], !dbg !1209
  call void @llvm.dbg.value(metadata ptr %102, metadata !1130, metadata !DIExpression()), !dbg !1155
  %103 = icmp eq ptr %102, null, !dbg !1210
  br i1 %103, label %166, label %104, !dbg !1211

104:                                              ; preds = %101
  call void @llvm.dbg.value(metadata ptr %102, metadata !1212, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr %53, metadata !1217, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %63, metadata !1218, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata i64 %99, metadata !1219, metadata !DIExpression()), !dbg !1225
  %105 = icmp eq ptr %102, %53, !dbg !1227
  br i1 %105, label %107, label %106, !dbg !1229

106:                                              ; preds = %104
  call void @llvm.dbg.value(metadata ptr %102, metadata !1093, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata ptr %53, metadata !1100, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %63, metadata !1101, metadata !DIExpression()), !dbg !1230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %102, ptr noundef nonnull align 1 %53, i64 noundef %63, i1 noundef false) #39, !dbg !1232
  br label %107, !dbg !1233

107:                                              ; preds = %106, %104
  call void @llvm.dbg.value(metadata i64 %63, metadata !1220, metadata !DIExpression()), !dbg !1234
  %108 = icmp sgt i64 %99, %63, !dbg !1235
  br i1 %108, label %109, label %116, !dbg !1236

109:                                              ; preds = %107, %109
  %110 = phi i64 [ %114, %109 ], [ %63, %107 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !1220, metadata !DIExpression()), !dbg !1234
  %111 = sub nsw i64 %99, %110, !dbg !1237
  %112 = call i64 @llvm.smin.i64(i64 %110, i64 %111), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %112, metadata !1222, metadata !DIExpression()), !dbg !1238
  %113 = getelementptr inbounds i8, ptr %102, i64 %110, !dbg !1239
  call void @llvm.dbg.value(metadata ptr %113, metadata !1093, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr %102, metadata !1100, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i64 %112, metadata !1101, metadata !DIExpression()), !dbg !1240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %113, ptr noundef nonnull align 1 %102, i64 noundef %112, i1 noundef false) #39, !dbg !1242
  %114 = add nsw i64 %112, %110, !dbg !1243
  call void @llvm.dbg.value(metadata i64 %114, metadata !1220, metadata !DIExpression()), !dbg !1234
  %115 = icmp slt i64 %114, %99, !dbg !1235
  br i1 %115, label %109, label %116, !dbg !1236, !llvm.loop !1244

116:                                              ; preds = %109, %107
  %117 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1246
  %118 = load i32, ptr %117, align 4, !dbg !1246
  %119 = select i1 %75, i32 1, i32 %118, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %119, metadata !1131, metadata !DIExpression()), !dbg !1155
  %120 = getelementptr inbounds %struct.iovec, ptr %4, i64 0, i32 1
  %121 = icmp slt i64 %99, 1
  %122 = select i1 %75, i1 true, i1 %121
  br label %123, !dbg !1247

123:                                              ; preds = %159, %116
  %124 = phi i8 [ 0, %116 ], [ %160, %159 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8 %124, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #39, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1132, metadata !DIExpression()), !dbg !1250
  store ptr %102, ptr %4, align 8, !dbg !1251, !tbaa !1252
  store i64 %99, ptr %120, align 8, !dbg !1255, !tbaa !1256
  br label %132, !dbg !1257

125:                                              ; preds = %132
  %126 = select i1 %75, i8 1, i8 %133, !dbg !1258
  call void @llvm.dbg.value(metadata i8 %126, metadata !1125, metadata !DIExpression()), !dbg !1155
  %127 = load ptr, ptr %4, align 8, !dbg !1259, !tbaa !1252
  %128 = getelementptr inbounds i8, ptr %127, i64 %138, !dbg !1260
  store ptr %128, ptr %4, align 8, !dbg !1261, !tbaa !1252
  %129 = load i64, ptr %120, align 8, !dbg !1262, !tbaa !1256
  %130 = sub i64 %129, %138, !dbg !1262
  store i64 %130, ptr %120, align 8, !dbg !1255, !tbaa !1256
  %131 = icmp eq i64 %130, 0, !dbg !1263
  br i1 %131, label %143, label %132, !dbg !1257

132:                                              ; preds = %125, %123
  %133 = phi i8 [ %124, %123 ], [ %126, %125 ]
  %134 = phi i64 [ %99, %123 ], [ %130, %125 ]
  call void @llvm.dbg.value(metadata i8 %133, metadata !1125, metadata !DIExpression()), !dbg !1155
  %135 = urem i64 %134, %73, !dbg !1264
  %136 = icmp eq i64 %135, 0, !dbg !1265
  %137 = select i1 %136, i32 8, i32 0, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %137, metadata !1141, metadata !DIExpression()), !dbg !1266
  %138 = call i64 @vmsplice(i32 noundef %119, ptr noundef nonnull %4, i64 noundef 1, i32 noundef %137) #39, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %138, metadata !1143, metadata !DIExpression()), !dbg !1266
  %139 = icmp sgt i64 %138, 0, !dbg !1268
  br i1 %139, label %125, label %140, !dbg !1270, !llvm.loop !1271

140:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i8 %133, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39, !dbg !1273
  %141 = and i8 %133, 1
  %142 = icmp ne i8 %141, 0
  br label %166

143:                                              ; preds = %125
  br i1 %122, label %159, label %144, !dbg !1274

144:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8 %126, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %99, metadata !1146, metadata !DIExpression()), !dbg !1275
  %145 = load i32, ptr %3, align 8, !dbg !1276, !tbaa !879
  %146 = call i64 @splice(i32 noundef %145, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %99, i32 noundef 1) #39, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %146, metadata !1149, metadata !DIExpression()), !dbg !1278
  %147 = icmp sgt i64 %146, 0, !dbg !1279
  call void @llvm.dbg.value(metadata i8 poison, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 poison, metadata !1146, metadata !DIExpression()), !dbg !1275
  br i1 %147, label %148, label %161, !llvm.loop !1281

148:                                              ; preds = %144
  %149 = sub nsw i64 %99, %146, !dbg !1284
  call void @llvm.dbg.value(metadata i8 1, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 poison, metadata !1146, metadata !DIExpression()), !dbg !1275
  %150 = icmp sgt i64 %149, 0, !dbg !1285
  br i1 %150, label %154, label %159, !dbg !1282

151:                                              ; preds = %154
  %152 = sub nsw i64 %155, %157, !dbg !1284
  call void @llvm.dbg.value(metadata i8 1, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 poison, metadata !1146, metadata !DIExpression()), !dbg !1275
  %153 = icmp sgt i64 %152, 0, !dbg !1285
  br i1 %153, label %154, label %159, !dbg !1282, !llvm.loop !1286

154:                                              ; preds = %148, %151
  %155 = phi i64 [ %152, %151 ], [ %149, %148 ]
  call void @llvm.dbg.value(metadata i8 1, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 %155, metadata !1146, metadata !DIExpression()), !dbg !1275
  %156 = load i32, ptr %3, align 8, !dbg !1276, !tbaa !879
  %157 = call i64 @splice(i32 noundef %156, ptr noundef null, i32 noundef 1, ptr noundef null, i64 noundef %155, i32 noundef 1) #39, !dbg !1277
  call void @llvm.dbg.value(metadata i64 %157, metadata !1149, metadata !DIExpression()), !dbg !1278
  %158 = icmp sgt i64 %157, 0, !dbg !1279
  call void @llvm.dbg.value(metadata i8 poison, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata i64 poison, metadata !1146, metadata !DIExpression()), !dbg !1275
  br i1 %158, label %151, label %164, !llvm.loop !1288

159:                                              ; preds = %151, %148, %143
  %160 = phi i8 [ %126, %143 ], [ 1, %148 ], [ 1, %151 ], !dbg !1248
  call void @llvm.dbg.value(metadata i8 %160, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39, !dbg !1273
  br label %123

161:                                              ; preds = %144
  %162 = and i8 %126, 1
  %163 = icmp ne i8 %162, 0
  br label %164, !dbg !1273

164:                                              ; preds = %154, %161
  %165 = phi i1 [ %163, %161 ], [ true, %154 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #39, !dbg !1273
  br label %166, !dbg !1289

166:                                              ; preds = %164, %140, %101, %91
  %167 = phi ptr [ null, %91 ], [ null, %101 ], [ %102, %140 ], [ %102, %164 ], !dbg !1155
  %168 = phi i1 [ false, %91 ], [ false, %101 ], [ %142, %140 ], [ %165, %164 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1125, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %167, metadata !1130, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.label(metadata !1154), !dbg !1290
  %169 = load i32, ptr %3, align 8, !dbg !1289, !tbaa !879
  %170 = icmp sgt i32 %169, -1, !dbg !1291
  br i1 %170, label %171, label %178, !dbg !1292

171:                                              ; preds = %166
  %172 = tail call ptr @__errno_location() #42, !dbg !1293
  %173 = load i32, ptr %172, align 4, !dbg !1293, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %173, metadata !1151, metadata !DIExpression()), !dbg !1294
  %174 = call i32 @close(i32 noundef %169) #39, !dbg !1295
  %175 = getelementptr inbounds [2 x i32], ptr %3, i64 0, i64 1, !dbg !1296
  %176 = load i32, ptr %175, align 4, !dbg !1296, !tbaa !879
  %177 = call i32 @close(i32 noundef %176) #39, !dbg !1297
  store i32 %173, ptr %172, align 4, !dbg !1298, !tbaa !879
  br label %178, !dbg !1299

178:                                              ; preds = %166, %171
  call void @llvm.dbg.value(metadata ptr %167, metadata !1300, metadata !DIExpression()), !dbg !1305
  call void @free(ptr noundef %167) #39, !dbg !1307
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #39, !dbg !1185
  br i1 %168, label %196, label %179, !dbg !1186

179:                                              ; preds = %84, %178
  %180 = urem i64 %49, %63, !dbg !1081
  %181 = sub nuw i64 %49, %180, !dbg !1081
  call void @llvm.dbg.value(metadata i64 %181, metadata !1041, metadata !DIExpression()), !dbg !1045
  %182 = icmp ugt i64 %181, %63, !dbg !1308
  %183 = icmp slt i64 %63, %181
  %184 = and i1 %182, %183, !dbg !1310
  call void @llvm.dbg.value(metadata ptr %53, metadata !1212, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata ptr %53, metadata !1217, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %63, metadata !1218, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %181, metadata !1219, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %63, metadata !1220, metadata !DIExpression()), !dbg !1313
  br i1 %184, label %185, label %192, !dbg !1310

185:                                              ; preds = %179, %185
  %186 = phi i64 [ %190, %185 ], [ %63, %179 ]
  call void @llvm.dbg.value(metadata i64 %186, metadata !1220, metadata !DIExpression()), !dbg !1313
  %187 = sub nsw i64 %181, %186, !dbg !1314
  %188 = call i64 @llvm.smin.i64(i64 %186, i64 %187), !dbg !1314
  call void @llvm.dbg.value(metadata i64 %188, metadata !1222, metadata !DIExpression()), !dbg !1315
  %189 = getelementptr inbounds i8, ptr %53, i64 %186, !dbg !1316
  call void @llvm.dbg.value(metadata ptr %189, metadata !1093, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr %53, metadata !1100, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata i64 %188, metadata !1101, metadata !DIExpression()), !dbg !1317
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %189, ptr noundef nonnull align 1 %53, i64 noundef %188, i1 noundef false) #39, !dbg !1319
  %190 = add nsw i64 %188, %186, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %190, metadata !1220, metadata !DIExpression()), !dbg !1313
  %191 = icmp slt i64 %190, %181, !dbg !1321
  br i1 %191, label %185, label %192, !dbg !1322, !llvm.loop !1323

192:                                              ; preds = %185, %179
  br label %193, !dbg !1325

193:                                              ; preds = %192, %193
  %194 = call i64 @full_write(i32 noundef 1, ptr noundef %53, i64 noundef %181) #39, !dbg !1326
  %195 = icmp eq i64 %194, %181, !dbg !1327
  br i1 %195, label %193, label %196, !dbg !1325, !llvm.loop !1328

196:                                              ; preds = %193, %178, %67
  %197 = tail call ptr @__errno_location() #42, !dbg !1330
  %198 = load i32, ptr %197, align 4, !dbg !1330, !tbaa !879
  %199 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !1330
  call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %198, ptr noundef %199) #39, !dbg !1330
  ret i32 1, !dbg !1331
}

; Function Attrs: nounwind
declare !dbg !1332 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1335 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1336 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1339 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1342 i32 @getpagesize() local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized,aligned") allocsize(1) memory(inaccessiblemem: readwrite)
declare !dbg !1346 noalias noundef ptr @aligned_alloc(i64 allocalign noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

declare !dbg !1349 i64 @vmsplice(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1355 i64 @splice(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1359 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1363 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1366 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !1367 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1369, metadata !DIExpression()), !dbg !1370
  store ptr %0, ptr @file_name, align 8, !dbg !1371, !tbaa !819
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1373 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !1379, !tbaa !1380
  ret void, !dbg !1382
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !1383 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !1388, !tbaa !819
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !1389
  %3 = icmp eq i32 %2, 0, !dbg !1390
  br i1 %3, label %22, label %4, !dbg !1391

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !1392, !tbaa !1380, !range !1393, !noundef !864
  %6 = icmp eq i8 %5, 0, !dbg !1392
  br i1 %6, label %11, label %7, !dbg !1394

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !1395
  %9 = load i32, ptr %8, align 4, !dbg !1395, !tbaa !879
  %10 = icmp eq i32 %9, 32, !dbg !1396
  br i1 %10, label %22, label %11, !dbg !1397

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1.21, i32 noundef 5) #39, !dbg !1398
  call void @llvm.dbg.value(metadata ptr %12, metadata !1385, metadata !DIExpression()), !dbg !1399
  %13 = load ptr, ptr @file_name, align 8, !dbg !1400, !tbaa !819
  %14 = icmp eq ptr %13, null, !dbg !1400
  %15 = tail call ptr @__errno_location() #42, !dbg !1402
  %16 = load i32, ptr %15, align 4, !dbg !1402, !tbaa !879
  br i1 %14, label %19, label %17, !dbg !1403

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !1404
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.22, ptr noundef %18, ptr noundef %12) #39, !dbg !1404
  br label %20, !dbg !1404

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.23, ptr noundef %12) #39, !dbg !1405
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !1406, !tbaa !879
  tail call void @_exit(i32 noundef %21) #41, !dbg !1407
  unreachable, !dbg !1407

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !1408, !tbaa !819
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !1410
  %25 = icmp eq i32 %24, 0, !dbg !1411
  br i1 %25, label %28, label %26, !dbg !1412

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !1413, !tbaa !879
  tail call void @_exit(i32 noundef %27) #41, !dbg !1414
  unreachable, !dbg !1414

28:                                               ; preds = %22
  ret void, !dbg !1415
}

; Function Attrs: noreturn
declare !dbg !1416 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1417 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1421, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata i32 %1, metadata !1422, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.value(metadata ptr %2, metadata !1423, metadata !DIExpression()), !dbg !1425
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1424, metadata !DIExpression()), !dbg !1426
  tail call fastcc void @flush_stdout(), !dbg !1427
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !1428, !tbaa !819
  %7 = icmp eq ptr %6, null, !dbg !1428
  br i1 %7, label %9, label %8, !dbg !1430

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !1431
  br label %13, !dbg !1431

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !1432, !tbaa !819
  %11 = tail call ptr @getprogname() #40, !dbg !1432
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef %11) #39, !dbg !1432
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1434
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1434, !tbaa.struct !1435
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !1434
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1434
  ret void, !dbg !1436
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !1437 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1439, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i32 1, metadata !1441, metadata !DIExpression()), !dbg !1444
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !1447
  %2 = icmp slt i32 %1, 0, !dbg !1448
  br i1 %2, label %6, label %3, !dbg !1449

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !1450, !tbaa !819
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !1450
  br label %6, !dbg !1450

6:                                                ; preds = %3, %0
  ret void, !dbg !1451
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !1452 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1454, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i32 %1, metadata !1455, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata ptr %2, metadata !1456, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1457, metadata !DIExpression()), !dbg !1459
  %7 = load ptr, ptr @stderr, align 8, !dbg !1460, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1461, !noalias !1505
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !1509
  call void @llvm.dbg.value(metadata ptr %7, metadata !1501, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata ptr %2, metadata !1502, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.declare(metadata ptr poison, metadata !1503, metadata !DIExpression()), !dbg !1511
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !1461
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1461, !noalias !1505
  %9 = load i32, ptr @error_message_count, align 4, !dbg !1512, !tbaa !879
  %10 = add i32 %9, 1, !dbg !1512
  store i32 %10, ptr @error_message_count, align 4, !dbg !1512, !tbaa !879
  %11 = icmp eq i32 %1, 0, !dbg !1513
  br i1 %11, label %21, label %12, !dbg !1515

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1516, metadata !DIExpression()), !dbg !1524
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1520, metadata !DIExpression()), !dbg !1527
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !1528
  call void @llvm.dbg.value(metadata ptr %13, metadata !1519, metadata !DIExpression()), !dbg !1524
  %14 = icmp eq ptr %13, null, !dbg !1529
  br i1 %14, label %15, label %17, !dbg !1531

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.25, ptr noundef nonnull @.str.5.26, i32 noundef 5) #39, !dbg !1532
  call void @llvm.dbg.value(metadata ptr %16, metadata !1519, metadata !DIExpression()), !dbg !1524
  br label %17, !dbg !1533

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !1524
  call void @llvm.dbg.value(metadata ptr %18, metadata !1519, metadata !DIExpression()), !dbg !1524
  %19 = load ptr, ptr @stderr, align 8, !dbg !1534, !tbaa !819
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.27, ptr noundef %18) #39, !dbg !1534
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !1535
  br label %21, !dbg !1536

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !1537, !tbaa !819
  call void @llvm.dbg.value(metadata i32 10, metadata !1538, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata ptr %22, metadata !1544, metadata !DIExpression()), !dbg !1545
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !1547
  %24 = load ptr, ptr %23, align 8, !dbg !1547, !tbaa !1548
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !1547
  %26 = load ptr, ptr %25, align 8, !dbg !1547, !tbaa !1550
  %27 = icmp ult ptr %24, %26, !dbg !1547
  br i1 %27, label %30, label %28, !dbg !1547, !prof !1551

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !1547
  br label %32, !dbg !1547

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1547
  store ptr %31, ptr %23, align 8, !dbg !1547, !tbaa !1548
  store i8 10, ptr %24, align 1, !dbg !1547, !tbaa !888
  br label %32, !dbg !1547

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !1552, !tbaa !819
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !1552
  %35 = icmp eq i32 %0, 0, !dbg !1553
  br i1 %35, label %37, label %36, !dbg !1555

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !1556
  unreachable, !dbg !1556

37:                                               ; preds = %32
  ret void, !dbg !1557
}

declare !dbg !1558 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1561 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1564 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1567 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !1570 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !1574 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1578, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %1, metadata !1579, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata ptr %2, metadata !1580, metadata !DIExpression()), !dbg !1582
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !1583
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1581, metadata !DIExpression()), !dbg !1584
  call void @llvm.va_start(ptr nonnull %4), !dbg !1585
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !1586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !1586, !tbaa.struct !1435
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !1586
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !1586
  call void @llvm.va_end(ptr nonnull %4), !dbg !1587
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !1588
  ret void, !dbg !1588
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !322 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !339, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %1, metadata !340, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata ptr %2, metadata !341, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata i32 %3, metadata !342, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.value(metadata ptr %4, metadata !343, metadata !DIExpression()), !dbg !1589
  call void @llvm.dbg.declare(metadata ptr %5, metadata !344, metadata !DIExpression()), !dbg !1590
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !1591, !tbaa !879
  %9 = icmp eq i32 %8, 0, !dbg !1591
  br i1 %9, label %24, label %10, !dbg !1593

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !1594, !tbaa !879
  %12 = icmp eq i32 %11, %3, !dbg !1597
  br i1 %12, label %13, label %23, !dbg !1598

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !1599, !tbaa !819
  %15 = icmp eq ptr %14, %2, !dbg !1600
  br i1 %15, label %37, label %16, !dbg !1601

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !1602
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !1603
  br i1 %19, label %20, label %23, !dbg !1603

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !1604
  %22 = icmp eq i32 %21, 0, !dbg !1605
  br i1 %22, label %37, label %23, !dbg !1606

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !1607, !tbaa !819
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !1608, !tbaa !879
  br label %24, !dbg !1609

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1610
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !1611, !tbaa !819
  %26 = icmp eq ptr %25, null, !dbg !1611
  br i1 %26, label %28, label %27, !dbg !1613

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !1614
  br label %32, !dbg !1614

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !1615, !tbaa !819
  %30 = tail call ptr @getprogname() #40, !dbg !1615
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.30, ptr noundef %30) #39, !dbg !1615
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !1617, !tbaa !819
  %34 = icmp eq ptr %2, null, !dbg !1617
  %35 = select i1 %34, ptr @.str.3.31, ptr @.str.2.32, !dbg !1617
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !1617
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1618, !tbaa.struct !1435
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !1618
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1618
  br label %37, !dbg !1619

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !1619
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !1620 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1624, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %1, metadata !1625, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %2, metadata !1626, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i32 %3, metadata !1627, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata ptr %4, metadata !1628, metadata !DIExpression()), !dbg !1630
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !1631
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1629, metadata !DIExpression()), !dbg !1632
  call void @llvm.va_start(ptr nonnull %6), !dbg !1633
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1634
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1634, !tbaa.struct !1435
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !1634
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !1634
  call void @llvm.va_end(ptr nonnull %6), !dbg !1635
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !1636
  ret void, !dbg !1636
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #10 !dbg !1637 {
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1639, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i32 %1, metadata !1640, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1641, metadata !DIExpression()), !dbg !1666
  call void @llvm.va_start(ptr nonnull %3), !dbg !1667
  call void @llvm.dbg.value(metadata i32 -1, metadata !1652, metadata !DIExpression()), !dbg !1664
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
  ], !dbg !1668

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1669
  %6 = load i32, ptr %5, align 8, !dbg !1669
  %7 = icmp sgt i32 %6, -1, !dbg !1669
  br i1 %7, label %16, label %8, !dbg !1669

8:                                                ; preds = %4
  %9 = add nsw i32 %6, 8, !dbg !1669
  store i32 %9, ptr %5, align 8, !dbg !1669
  %10 = icmp ult i32 %6, -7, !dbg !1669
  br i1 %10, label %11, label %16, !dbg !1669

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1669
  %13 = load ptr, ptr %12, align 8, !dbg !1669
  %14 = sext i32 %6 to i64, !dbg !1669
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !1669
  br label %19, !dbg !1669

16:                                               ; preds = %8, %4
  %17 = load ptr, ptr %3, align 8, !dbg !1669
  %18 = getelementptr inbounds i8, ptr %17, i64 8, !dbg !1669
  store ptr %18, ptr %3, align 8, !dbg !1669
  br label %19, !dbg !1669

19:                                               ; preds = %16, %11
  %20 = phi ptr [ %15, %11 ], [ %17, %16 ], !dbg !1669
  %21 = load i32, ptr %20, align 8, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %21, metadata !1653, metadata !DIExpression()), !dbg !1670
  call void @llvm.dbg.value(metadata i32 %0, metadata !1671, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %21, metadata !1674, metadata !DIExpression()), !dbg !1676
  %22 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %21) #39, !dbg !1678
  call void @llvm.dbg.value(metadata i32 %22, metadata !1675, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %22, metadata !1652, metadata !DIExpression()), !dbg !1664
  br label %115

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1679
  %25 = load i32, ptr %24, align 8, !dbg !1679
  %26 = icmp sgt i32 %25, -1, !dbg !1679
  br i1 %26, label %35, label %27, !dbg !1679

27:                                               ; preds = %23
  %28 = add nsw i32 %25, 8, !dbg !1679
  store i32 %28, ptr %24, align 8, !dbg !1679
  %29 = icmp ult i32 %25, -7, !dbg !1679
  br i1 %29, label %30, label %35, !dbg !1679

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1679
  %32 = load ptr, ptr %31, align 8, !dbg !1679
  %33 = sext i32 %25 to i64, !dbg !1679
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !1679
  br label %38, !dbg !1679

35:                                               ; preds = %27, %23
  %36 = load ptr, ptr %3, align 8, !dbg !1679
  %37 = getelementptr inbounds i8, ptr %36, i64 8, !dbg !1679
  store ptr %37, ptr %3, align 8, !dbg !1679
  br label %38, !dbg !1679

38:                                               ; preds = %35, %30
  %39 = phi ptr [ %34, %30 ], [ %36, %35 ], !dbg !1679
  %40 = load i32, ptr %39, align 8, !dbg !1679
  call void @llvm.dbg.value(metadata i32 %40, metadata !1656, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.value(metadata i32 %0, metadata !378, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i32 %40, metadata !379, metadata !DIExpression()), !dbg !1681
  %41 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1683, !tbaa !879
  %42 = icmp sgt i32 %41, -1, !dbg !1685
  br i1 %42, label %43, label %55, !dbg !1686

43:                                               ; preds = %38
  %44 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %40) #39, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %44, metadata !380, metadata !DIExpression()), !dbg !1681
  %45 = icmp sgt i32 %44, -1, !dbg !1689
  br i1 %45, label %50, label %46, !dbg !1691

46:                                               ; preds = %43
  %47 = tail call ptr @__errno_location() #42, !dbg !1692
  %48 = load i32, ptr %47, align 4, !dbg !1692, !tbaa !879
  %49 = icmp eq i32 %48, 22, !dbg !1693
  br i1 %49, label %51, label %50, !dbg !1694

50:                                               ; preds = %46, %43
  store i32 1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1695, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %44, metadata !380, metadata !DIExpression()), !dbg !1681
  br label %115, !dbg !1697

51:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 %0, metadata !1671, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %40, metadata !1674, metadata !DIExpression()), !dbg !1698
  %52 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !1701
  call void @llvm.dbg.value(metadata i32 %52, metadata !1675, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %52, metadata !380, metadata !DIExpression()), !dbg !1681
  %53 = icmp sgt i32 %52, -1, !dbg !1702
  br i1 %53, label %54, label %115, !dbg !1704

54:                                               ; preds = %51
  store i32 -1, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1705, !tbaa !879
  br label %59, !dbg !1706

55:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 %0, metadata !1671, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %40, metadata !1674, metadata !DIExpression()), !dbg !1707
  %56 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %40) #39, !dbg !1709
  call void @llvm.dbg.value(metadata i32 %56, metadata !1675, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %56, metadata !380, metadata !DIExpression()), !dbg !1681
  %57 = load i32, ptr @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %58 = icmp eq i32 %57, -1
  br label %59

59:                                               ; preds = %55, %54
  %60 = phi i1 [ true, %54 ], [ %58, %55 ]
  %61 = phi i32 [ %52, %54 ], [ %56, %55 ], !dbg !1710
  call void @llvm.dbg.value(metadata i32 %61, metadata !380, metadata !DIExpression()), !dbg !1681
  %62 = icmp sgt i32 %61, -1, !dbg !1711
  %63 = select i1 %62, i1 %60, i1 false, !dbg !1697
  br i1 %63, label %64, label %115, !dbg !1697

64:                                               ; preds = %59
  %65 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 1) #39, !dbg !1712
  call void @llvm.dbg.value(metadata i32 %65, metadata !381, metadata !DIExpression()), !dbg !1713
  %66 = icmp slt i32 %65, 0, !dbg !1714
  br i1 %66, label %71, label %67, !dbg !1715

67:                                               ; preds = %64
  %68 = or i32 %65, 1, !dbg !1716
  %69 = call i32 (i32, i32, ...) @fcntl(i32 noundef %61, i32 noundef 2, i32 noundef %68) #39, !dbg !1717
  %70 = icmp eq i32 %69, -1, !dbg !1718
  br i1 %70, label %71, label %115, !dbg !1719

71:                                               ; preds = %67, %64
  %72 = tail call ptr @__errno_location() #42, !dbg !1720
  %73 = load i32, ptr %72, align 4, !dbg !1720, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %73, metadata !384, metadata !DIExpression()), !dbg !1721
  %74 = call i32 @close(i32 noundef %61) #39, !dbg !1722
  store i32 %73, ptr %72, align 4, !dbg !1723, !tbaa !879
  call void @llvm.dbg.value(metadata i32 -1, metadata !380, metadata !DIExpression()), !dbg !1681
  br label %115, !dbg !1724

75:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %76 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #39, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %76, metadata !1652, metadata !DIExpression()), !dbg !1664
  br label %115, !dbg !1726

77:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %78 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1727
  %79 = load i32, ptr %78, align 8, !dbg !1727
  %80 = icmp sgt i32 %79, -1, !dbg !1727
  br i1 %80, label %89, label %81, !dbg !1727

81:                                               ; preds = %77
  %82 = add nsw i32 %79, 8, !dbg !1727
  store i32 %82, ptr %78, align 8, !dbg !1727
  %83 = icmp ult i32 %79, -7, !dbg !1727
  br i1 %83, label %84, label %89, !dbg !1727

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1727
  %86 = load ptr, ptr %85, align 8, !dbg !1727
  %87 = sext i32 %79 to i64, !dbg !1727
  %88 = getelementptr inbounds i8, ptr %86, i64 %87, !dbg !1727
  br label %92, !dbg !1727

89:                                               ; preds = %81, %77
  %90 = load ptr, ptr %3, align 8, !dbg !1727
  %91 = getelementptr inbounds i8, ptr %90, i64 8, !dbg !1727
  store ptr %91, ptr %3, align 8, !dbg !1727
  br label %92, !dbg !1727

92:                                               ; preds = %89, %84
  %93 = phi ptr [ %88, %84 ], [ %90, %89 ], !dbg !1727
  %94 = load i32, ptr %93, align 8, !dbg !1727
  call void @llvm.dbg.value(metadata i32 %94, metadata !1658, metadata !DIExpression()), !dbg !1728
  %95 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %94) #39, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %95, metadata !1652, metadata !DIExpression()), !dbg !1664
  br label %115, !dbg !1730

96:                                               ; preds = %2
  %97 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 3, !dbg !1731
  %98 = load i32, ptr %97, align 8, !dbg !1731
  %99 = icmp sgt i32 %98, -1, !dbg !1731
  br i1 %99, label %108, label %100, !dbg !1731

100:                                              ; preds = %96
  %101 = add nsw i32 %98, 8, !dbg !1731
  store i32 %101, ptr %97, align 8, !dbg !1731
  %102 = icmp ult i32 %98, -7, !dbg !1731
  br i1 %102, label %103, label %108, !dbg !1731

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.__va_list, ptr %3, i64 0, i32 1, !dbg !1731
  %105 = load ptr, ptr %104, align 8, !dbg !1731
  %106 = sext i32 %98 to i64, !dbg !1731
  %107 = getelementptr inbounds i8, ptr %105, i64 %106, !dbg !1731
  br label %111, !dbg !1731

108:                                              ; preds = %100, %96
  %109 = load ptr, ptr %3, align 8, !dbg !1731
  %110 = getelementptr inbounds i8, ptr %109, i64 8, !dbg !1731
  store ptr %110, ptr %3, align 8, !dbg !1731
  br label %111, !dbg !1731

111:                                              ; preds = %108, %103
  %112 = phi ptr [ %107, %103 ], [ %109, %108 ], !dbg !1731
  %113 = load ptr, ptr %112, align 8, !dbg !1731
  call void @llvm.dbg.value(metadata ptr %113, metadata !1662, metadata !DIExpression()), !dbg !1732
  %114 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, ptr noundef %113) #39, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %114, metadata !1652, metadata !DIExpression()), !dbg !1664
  br label %115, !dbg !1734

115:                                              ; preds = %71, %67, %59, %51, %50, %75, %92, %111, %19
  %116 = phi i32 [ %114, %111 ], [ %95, %92 ], [ %76, %75 ], [ %22, %19 ], [ %61, %59 ], [ -1, %71 ], [ %61, %67 ], [ %52, %51 ], [ %44, %50 ], !dbg !1735
  call void @llvm.dbg.value(metadata i32 %116, metadata !1652, metadata !DIExpression()), !dbg !1664
  call void @llvm.va_end(ptr nonnull %3), !dbg !1736
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !1737
  ret i32 %116, !dbg !1738
}

; Function Attrs: nounwind uwtable
define dso_local i64 @full_write(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1739 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1743, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %1, metadata !1744, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %2, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1746, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %1, metadata !1747, metadata !DIExpression()), !dbg !1750
  %4 = icmp sgt i64 %2, 0, !dbg !1751
  br i1 %4, label %5, label %20, !dbg !1752

5:                                                ; preds = %3, %15
  %6 = phi i64 [ %18, %15 ], [ %2, %3 ]
  %7 = phi ptr [ %17, %15 ], [ %1, %3 ]
  %8 = phi i64 [ %16, %15 ], [ 0, %3 ]
  call void @llvm.dbg.value(metadata i64 %6, metadata !1745, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata ptr %7, metadata !1747, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i64 %8, metadata !1746, metadata !DIExpression()), !dbg !1750
  %9 = tail call i64 @safe_write(i32 noundef %0, ptr noundef %7, i64 noundef %6) #39, !dbg !1753
  call void @llvm.dbg.value(metadata i64 %9, metadata !1748, metadata !DIExpression()), !dbg !1754
  %10 = icmp slt i64 %9, 0, !dbg !1755
  br i1 %10, label %20, label %11, !dbg !1757

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0, !dbg !1758
  br i1 %12, label %13, label %15, !dbg !1760

13:                                               ; preds = %11
  %14 = tail call ptr @__errno_location() #42, !dbg !1761
  store i32 28, ptr %14, align 4, !dbg !1763, !tbaa !879
  br label %20, !dbg !1764

15:                                               ; preds = %11
  %16 = add nsw i64 %9, %8, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %16, metadata !1746, metadata !DIExpression()), !dbg !1750
  %17 = getelementptr inbounds i8, ptr %7, i64 %9, !dbg !1766
  call void @llvm.dbg.value(metadata ptr %17, metadata !1747, metadata !DIExpression()), !dbg !1750
  %18 = sub nsw i64 %6, %9, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %18, metadata !1745, metadata !DIExpression()), !dbg !1750
  %19 = icmp sgt i64 %18, 0, !dbg !1751
  br i1 %19, label %5, label %20, !dbg !1752

20:                                               ; preds = %15, %5, %3, %13
  %21 = phi i64 [ %8, %13 ], [ 0, %3 ], [ %16, %15 ], [ %8, %5 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !1746, metadata !DIExpression()), !dbg !1750
  ret i64 %21, !dbg !1768
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !1769 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !1771, !tbaa !819
  ret ptr %1, !dbg !1772
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @isapipe(i32 noundef %0) local_unnamed_addr #21 !dbg !1773 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1775, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i32 1, metadata !1776, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 1, metadata !1780, metadata !DIExpression()), !dbg !1816
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #39, !dbg !1817
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1781, metadata !DIExpression()), !dbg !1818
  %3 = call i32 @fstat(i32 noundef %0, ptr noundef nonnull %2) #39, !dbg !1819
  call void @llvm.dbg.value(metadata i32 %3, metadata !1815, metadata !DIExpression()), !dbg !1816
  %4 = icmp eq i32 %3, 0, !dbg !1820
  br i1 %4, label %5, label %15, !dbg !1822

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1823
  %7 = load i32, ptr %6, align 4, !dbg !1823, !tbaa !1824
  %8 = icmp ult i32 %7, 2, !dbg !1827
  %9 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1828
  %10 = load i32, ptr %9, align 8, !dbg !1828
  %11 = and i32 %10, 61440, !dbg !1828
  %12 = icmp eq i32 %11, 4096, !dbg !1828
  %13 = select i1 %8, i1 %12, i1 false, !dbg !1828
  %14 = zext i1 %13 to i32, !dbg !1828
  br label %15, !dbg !1829

15:                                               ; preds = %1, %5
  %16 = phi i32 [ %14, %5 ], [ %3, %1 ], !dbg !1816
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #39, !dbg !1830
  ret i32 %16, !dbg !1830
}

; Function Attrs: nofree nounwind
declare !dbg !1831 noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5, ...) local_unnamed_addr #10 !dbg !1836 {
  %7 = alloca %struct.__va_list, align 8
  %8 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1841, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %1, metadata !1842, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %2, metadata !1843, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %3, metadata !1844, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %4, metadata !1845, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata ptr %5, metadata !1846, metadata !DIExpression()), !dbg !1867
  %9 = load i32, ptr @opterr, align 4, !dbg !1868, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %9, metadata !1847, metadata !DIExpression()), !dbg !1867
  store i32 0, ptr @opterr, align 4, !dbg !1869, !tbaa !879
  %10 = icmp eq i32 %0, 2, !dbg !1870
  br i1 %10, label %11, label %16, !dbg !1871

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %12, metadata !1848, metadata !DIExpression()), !dbg !1873
  switch i32 %12, label %16 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1874

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #39, !dbg !1875
  br label %16, !dbg !1876

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !1877
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1851, metadata !DIExpression()), !dbg !1878
  call void @llvm.va_start(ptr nonnull %7), !dbg !1879
  %15 = load ptr, ptr @stdout, align 8, !dbg !1880, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !1881, !tbaa.struct !1435
  call void @version_etc_va(ptr noundef %15, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %8) #39, !dbg !1881
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #39, !dbg !1881
  call void @exit(i32 noundef 0) #41, !dbg !1882
  unreachable, !dbg !1882

16:                                               ; preds = %13, %11, %6
  store i32 %9, ptr @opterr, align 4, !dbg !1883, !tbaa !879
  store i32 0, ptr @optind, align 4, !dbg !1884, !tbaa !879
  ret void, !dbg !1885
}

; Function Attrs: nounwind
declare !dbg !1886 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i1 noundef %5, ptr nocapture noundef readonly %6, ...) local_unnamed_addr #10 !dbg !1892 {
  %8 = alloca %struct.__va_list, align 8
  %9 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1896, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %1, metadata !1897, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %2, metadata !1898, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %3, metadata !1899, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %4, metadata !1900, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i1 %5, metadata !1901, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1911
  call void @llvm.dbg.value(metadata ptr %6, metadata !1902, metadata !DIExpression()), !dbg !1911
  %10 = load i32, ptr @opterr, align 4, !dbg !1912, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %10, metadata !1903, metadata !DIExpression()), !dbg !1911
  store i32 1, ptr @opterr, align 4, !dbg !1913, !tbaa !879
  %11 = select i1 %5, ptr @.str.1.53, ptr @.str.48, !dbg !1914
  call void @llvm.dbg.value(metadata ptr %11, metadata !1904, metadata !DIExpression()), !dbg !1911
  %12 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull @long_options, ptr noundef null) #39, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %12, metadata !1905, metadata !DIExpression()), !dbg !1911
  switch i32 %12, label %15 [
    i32 -1, label %19
    i32 104, label %17
    i32 118, label %13
  ], !dbg !1916

13:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #39, !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1906, metadata !DIExpression()), !dbg !1918
  call void @llvm.va_start(ptr nonnull %8), !dbg !1919
  %14 = load ptr, ptr @stdout, align 8, !dbg !1920, !tbaa !819
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #39, !dbg !1921
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1921, !tbaa.struct !1435
  call void @version_etc_va(ptr noundef %14, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9) #39, !dbg !1921
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #39, !dbg !1921
  call void @exit(i32 noundef 0) #41, !dbg !1922
  unreachable, !dbg !1922

15:                                               ; preds = %7
  %16 = load volatile i32, ptr @exit_failure, align 4, !dbg !1923, !tbaa !879
  br label %17, !dbg !1924

17:                                               ; preds = %7, %15
  %18 = phi i32 [ %16, %15 ], [ 0, %7 ]
  tail call void %6(i32 noundef %18) #39, !dbg !1925
  br label %19, !dbg !1926

19:                                               ; preds = %17, %7
  store i32 %10, ptr @opterr, align 4, !dbg !1926, !tbaa !879
  ret void, !dbg !1927
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pipe2_safer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !1928 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1930, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %1, metadata !1931, metadata !DIExpression()), !dbg !1941
  %3 = tail call i32 @rpl_pipe2(ptr noundef %0, i32 noundef %1) #39, !dbg !1942
  %4 = icmp eq i32 %3, 0, !dbg !1943
  br i1 %4, label %5, label %21, !dbg !1944

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i64 0, metadata !1932, metadata !DIExpression()), !dbg !1945
  %6 = load i32, ptr %0, align 4, !dbg !1946, !tbaa !879
  %7 = tail call i32 @fd_safer_flag(i32 noundef %6, i32 noundef %1) #39, !dbg !1947
  store i32 %7, ptr %0, align 4, !dbg !1948, !tbaa !879
  %8 = icmp slt i32 %7, 0, !dbg !1949
  br i1 %8, label %9, label %16, !dbg !1950

9:                                                ; preds = %16, %5
  %10 = phi i64 [ 1, %5 ], [ 0, %16 ]
  %11 = tail call ptr @__errno_location() #42, !dbg !1951
  %12 = load i32, ptr %11, align 4, !dbg !1951, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %12, metadata !1936, metadata !DIExpression()), !dbg !1952
  %13 = getelementptr inbounds i32, ptr %0, i64 %10, !dbg !1953
  %14 = load i32, ptr %13, align 4, !dbg !1953, !tbaa !879
  %15 = tail call i32 @close(i32 noundef %14) #39, !dbg !1954
  store i32 %12, ptr %11, align 4, !dbg !1955, !tbaa !879
  br label %21

16:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64 1, metadata !1932, metadata !DIExpression()), !dbg !1945
  call void @llvm.dbg.value(metadata i64 1, metadata !1932, metadata !DIExpression()), !dbg !1945
  %17 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !1946
  %18 = load i32, ptr %17, align 4, !dbg !1946, !tbaa !879
  %19 = tail call i32 @fd_safer_flag(i32 noundef %18, i32 noundef %1) #39, !dbg !1947
  store i32 %19, ptr %17, align 4, !dbg !1948, !tbaa !879
  %20 = icmp slt i32 %19, 0, !dbg !1949
  br i1 %20, label %9, label %21, !dbg !1950

21:                                               ; preds = %9, %16, %2
  %22 = phi i32 [ -1, %2 ], [ -1, %9 ], [ 0, %16 ], !dbg !1941
  ret i32 %22, !dbg !1956
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !1957 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1959, metadata !DIExpression()), !dbg !1962
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #40, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %2, metadata !1960, metadata !DIExpression()), !dbg !1962
  %3 = icmp eq ptr %2, null, !dbg !1964
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !1964
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !1964
  call void @llvm.dbg.value(metadata ptr %5, metadata !1961, metadata !DIExpression()), !dbg !1962
  %6 = ptrtoint ptr %5 to i64, !dbg !1965
  %7 = ptrtoint ptr %0 to i64, !dbg !1965
  %8 = sub i64 %6, %7, !dbg !1965
  %9 = icmp sgt i64 %8, 6, !dbg !1967
  br i1 %9, label %10, label %19, !dbg !1968

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !1969
  call void @llvm.dbg.value(metadata ptr %11, metadata !1970, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata ptr @.str.60, metadata !1975, metadata !DIExpression()), !dbg !1977
  call void @llvm.dbg.value(metadata i64 7, metadata !1976, metadata !DIExpression()), !dbg !1977
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.60, i64 7), !dbg !1979
  %13 = icmp eq i32 %12, 0, !dbg !1980
  br i1 %13, label %14, label %19, !dbg !1981

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !1959, metadata !DIExpression()), !dbg !1962
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.61, i64 noundef 3) #40, !dbg !1982
  %16 = icmp eq i32 %15, 0, !dbg !1985
  %17 = select i1 %16, i64 3, i64 0, !dbg !1986
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !1986
  br label %19, !dbg !1986

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1962
  call void @llvm.dbg.value(metadata ptr %21, metadata !1961, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.value(metadata ptr %20, metadata !1959, metadata !DIExpression()), !dbg !1962
  store ptr %20, ptr @program_name, align 8, !dbg !1987, !tbaa !819
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !1988, !tbaa !819
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !1989, !tbaa !819
  ret void, !dbg !1990
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1991 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !422 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !429, metadata !DIExpression()), !dbg !1992
  call void @llvm.dbg.value(metadata ptr %1, metadata !430, metadata !DIExpression()), !dbg !1992
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #39, !dbg !1993
  call void @llvm.dbg.value(metadata ptr %5, metadata !431, metadata !DIExpression()), !dbg !1992
  %6 = icmp eq ptr %5, %0, !dbg !1994
  br i1 %6, label %7, label %14, !dbg !1996

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #39, !dbg !1997
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #39, !dbg !1998
  call void @llvm.dbg.declare(metadata ptr %4, metadata !437, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata ptr %4, metadata !2000, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata ptr %4, metadata !2009, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i32 0, metadata !2014, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i64 8, metadata !2015, metadata !DIExpression()), !dbg !2016
  store i64 0, ptr %4, align 8, !dbg !2018
  call void @llvm.dbg.value(metadata ptr %3, metadata !432, metadata !DIExpression(DW_OP_deref)), !dbg !1992
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #39, !dbg !2019
  %9 = icmp eq i64 %8, 2, !dbg !2021
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !432, metadata !DIExpression()), !dbg !1992
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2022
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !1992
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #39, !dbg !2023
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #39, !dbg !2023
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !1992
  ret ptr %15, !dbg !2023
}

; Function Attrs: nounwind
declare !dbg !2024 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2030 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2035, metadata !DIExpression()), !dbg !2038
  %2 = tail call ptr @__errno_location() #42, !dbg !2039
  %3 = load i32, ptr %2, align 4, !dbg !2039, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %3, metadata !2036, metadata !DIExpression()), !dbg !2038
  %4 = icmp eq ptr %0, null, !dbg !2040
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2040
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !2041
  call void @llvm.dbg.value(metadata ptr %6, metadata !2037, metadata !DIExpression()), !dbg !2038
  store i32 %3, ptr %2, align 4, !dbg !2042, !tbaa !879
  ret ptr %6, !dbg !2043
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2044 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2050, metadata !DIExpression()), !dbg !2051
  %2 = icmp eq ptr %0, null, !dbg !2052
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2052
  %4 = load i32, ptr %3, align 8, !dbg !2053, !tbaa !2054
  ret i32 %4, !dbg !2056
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2057 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2061, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata i32 %1, metadata !2062, metadata !DIExpression()), !dbg !2063
  %3 = icmp eq ptr %0, null, !dbg !2064
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2064
  store i32 %1, ptr %4, align 8, !dbg !2065, !tbaa !2054
  ret void, !dbg !2066
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2067 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2071, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %1, metadata !2072, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i32 %2, metadata !2073, metadata !DIExpression()), !dbg !2079
  call void @llvm.dbg.value(metadata i8 %1, metadata !2074, metadata !DIExpression()), !dbg !2079
  %4 = icmp eq ptr %0, null, !dbg !2080
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2080
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2081
  %7 = lshr i8 %1, 5, !dbg !2082
  %8 = zext i8 %7 to i64, !dbg !2082
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2083
  call void @llvm.dbg.value(metadata ptr %9, metadata !2075, metadata !DIExpression()), !dbg !2079
  %10 = and i8 %1, 31, !dbg !2084
  %11 = zext i8 %10 to i32, !dbg !2084
  call void @llvm.dbg.value(metadata i32 %11, metadata !2077, metadata !DIExpression()), !dbg !2079
  %12 = load i32, ptr %9, align 4, !dbg !2085, !tbaa !879
  %13 = lshr i32 %12, %11, !dbg !2086
  %14 = and i32 %13, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i32 %14, metadata !2078, metadata !DIExpression()), !dbg !2079
  %15 = xor i32 %13, %2, !dbg !2088
  %16 = and i32 %15, 1, !dbg !2088
  %17 = shl nuw i32 %16, %11, !dbg !2089
  %18 = xor i32 %17, %12, !dbg !2090
  store i32 %18, ptr %9, align 4, !dbg !2090, !tbaa !879
  ret i32 %14, !dbg !2091
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2092 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2096, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1, metadata !2097, metadata !DIExpression()), !dbg !2099
  %3 = icmp eq ptr %0, null, !dbg !2100
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2102
  call void @llvm.dbg.value(metadata ptr %4, metadata !2096, metadata !DIExpression()), !dbg !2099
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2103
  %6 = load i32, ptr %5, align 4, !dbg !2103, !tbaa !2104
  call void @llvm.dbg.value(metadata i32 %6, metadata !2098, metadata !DIExpression()), !dbg !2099
  store i32 %1, ptr %5, align 4, !dbg !2105, !tbaa !2104
  ret i32 %6, !dbg !2106
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2107 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %1, metadata !2112, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata ptr %2, metadata !2113, metadata !DIExpression()), !dbg !2114
  %4 = icmp eq ptr %0, null, !dbg !2115
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2117
  call void @llvm.dbg.value(metadata ptr %5, metadata !2111, metadata !DIExpression()), !dbg !2114
  store i32 10, ptr %5, align 8, !dbg !2118, !tbaa !2054
  %6 = icmp ne ptr %1, null, !dbg !2119
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2121
  br i1 %8, label %10, label %9, !dbg !2121

9:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2122
  unreachable, !dbg !2122

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2123
  store ptr %1, ptr %11, align 8, !dbg !2124, !tbaa !2125
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2126
  store ptr %2, ptr %12, align 8, !dbg !2127, !tbaa !2128
  ret void, !dbg !2129
}

; Function Attrs: noreturn nounwind
declare !dbg !2130 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2131 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2135, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %1, metadata !2136, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr %2, metadata !2137, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i64 %3, metadata !2138, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata ptr %4, metadata !2139, metadata !DIExpression()), !dbg !2143
  %6 = icmp eq ptr %4, null, !dbg !2144
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2144
  call void @llvm.dbg.value(metadata ptr %7, metadata !2140, metadata !DIExpression()), !dbg !2143
  %8 = tail call ptr @__errno_location() #42, !dbg !2145
  %9 = load i32, ptr %8, align 4, !dbg !2145, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %9, metadata !2141, metadata !DIExpression()), !dbg !2143
  %10 = load i32, ptr %7, align 8, !dbg !2146, !tbaa !2054
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2147
  %12 = load i32, ptr %11, align 4, !dbg !2147, !tbaa !2104
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2148
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2149
  %15 = load ptr, ptr %14, align 8, !dbg !2149, !tbaa !2125
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2150
  %17 = load ptr, ptr %16, align 8, !dbg !2150, !tbaa !2128
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %18, metadata !2142, metadata !DIExpression()), !dbg !2143
  store i32 %9, ptr %8, align 4, !dbg !2152, !tbaa !879
  ret i64 %18, !dbg !2153
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2154 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !2160, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %1, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %2, metadata !2162, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %3, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %4, metadata !2164, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %5, metadata !2165, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %6, metadata !2166, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %7, metadata !2167, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %8, metadata !2168, metadata !DIExpression()), !dbg !2222
  %16 = tail call i64 @__ctype_get_mb_cur_max() #39, !dbg !2223
  %17 = icmp eq i64 %16, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i1 %17, metadata !2169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2222
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 0, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr null, metadata !2172, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 0, metadata !2173, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2174, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %5, metadata !2175, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 1, metadata !2177, metadata !DIExpression()), !dbg !2222
  %18 = and i32 %5, 2, !dbg !2225
  %19 = icmp ne i32 %18, 0, !dbg !2225
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2225

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2226
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2227
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2228
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2177, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %34, metadata !2173, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %33, metadata !2172, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %32, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %31, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %30, metadata !2168, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %29, metadata !2167, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %28, metadata !2164, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.label(metadata !2215), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2222
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
  ], !dbg !2230

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 5, metadata !2164, metadata !DIExpression()), !dbg !2222
  br label %102, !dbg !2231

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 5, metadata !2164, metadata !DIExpression()), !dbg !2222
  br i1 %36, label %102, label %42, !dbg !2231

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2232
  br i1 %43, label %102, label %44, !dbg !2236

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2232, !tbaa !888
  br label %102, !dbg !2232

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.74, metadata !535, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !2237
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.11.74, i32 noundef 5) #39, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %46, metadata !537, metadata !DIExpression()), !dbg !2237
  %47 = icmp eq ptr %46, @.str.11.74, !dbg !2242
  br i1 %47, label %48, label %57, !dbg !2244

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2245
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2246
  call void @llvm.dbg.declare(metadata ptr %13, metadata !539, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %13, metadata !2248, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata ptr %13, metadata !2256, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 8, metadata !2260, metadata !DIExpression()), !dbg !2261
  store i64 0, ptr %13, align 8, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %12, metadata !538, metadata !DIExpression(DW_OP_deref)), !dbg !2237
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2264
  %50 = icmp eq i64 %49, 3, !dbg !2266
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !538, metadata !DIExpression()), !dbg !2237
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2267
  %54 = icmp eq i32 %28, 9, !dbg !2267
  %55 = select i1 %54, ptr @.str.10.76, ptr @.str.12.77, !dbg !2267
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2267
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2268
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2268
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2237
  call void @llvm.dbg.value(metadata ptr %58, metadata !2167, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr @.str.12.77, metadata !535, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i32 %28, metadata !536, metadata !DIExpression()), !dbg !2269
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.75, ptr noundef nonnull @.str.12.77, i32 noundef 5) #39, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %59, metadata !537, metadata !DIExpression()), !dbg !2269
  %60 = icmp eq ptr %59, @.str.12.77, !dbg !2272
  br i1 %60, label %61, label %70, !dbg !2273

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %11, metadata !539, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.value(metadata ptr %11, metadata !2248, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata ptr %11, metadata !2256, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2279
  call void @llvm.dbg.value(metadata i64 8, metadata !2260, metadata !DIExpression()), !dbg !2279
  store i64 0, ptr %11, align 8, !dbg !2281
  call void @llvm.dbg.value(metadata ptr %10, metadata !538, metadata !DIExpression(DW_OP_deref)), !dbg !2269
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2282
  %63 = icmp eq i64 %62, 3, !dbg !2283
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !538, metadata !DIExpression()), !dbg !2269
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2284
  %67 = icmp eq i32 %28, 9, !dbg !2284
  %68 = select i1 %67, ptr @.str.10.76, ptr @.str.12.77, !dbg !2284
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2284
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2285
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2285
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2168, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %71, metadata !2167, metadata !DIExpression()), !dbg !2222
  br i1 %36, label %88, label %73, !dbg !2286

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2179, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 0, metadata !2170, metadata !DIExpression()), !dbg !2222
  %74 = load i8, ptr %71, align 1, !dbg !2288, !tbaa !888
  %75 = icmp eq i8 %74, 0, !dbg !2290
  br i1 %75, label %88, label %76, !dbg !2290

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2179, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata i64 %79, metadata !2170, metadata !DIExpression()), !dbg !2222
  %80 = icmp ult i64 %79, %39, !dbg !2291
  br i1 %80, label %81, label %83, !dbg !2294

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !2291
  store i8 %77, ptr %82, align 1, !dbg !2291, !tbaa !888
  br label %83, !dbg !2291

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %84, metadata !2170, metadata !DIExpression()), !dbg !2222
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !2295
  call void @llvm.dbg.value(metadata ptr %85, metadata !2179, metadata !DIExpression()), !dbg !2287
  %86 = load i8, ptr %85, align 1, !dbg !2288, !tbaa !888
  %87 = icmp eq i8 %86, 0, !dbg !2290
  br i1 %87, label %88, label %76, !dbg !2290, !llvm.loop !2296

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !2298
  call void @llvm.dbg.value(metadata i64 %89, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 1, metadata !2174, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %72, metadata !2172, metadata !DIExpression()), !dbg !2222
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !2299
  call void @llvm.dbg.value(metadata i64 %90, metadata !2173, metadata !DIExpression()), !dbg !2222
  br label %102, !dbg !2300

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2174, metadata !DIExpression()), !dbg !2222
  br label %93, !dbg !2301

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2222
  br i1 %36, label %102, label %96, !dbg !2302

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2222
  br label %102, !dbg !2303

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 2, metadata !2164, metadata !DIExpression()), !dbg !2222
  br i1 %36, label %102, label %96, !dbg !2303

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !2304
  br i1 %98, label %102, label %99, !dbg !2308

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !2304, !tbaa !888
  br label %102, !dbg !2304

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2175, metadata !DIExpression()), !dbg !2222
  br label %102, !dbg !2309

101:                                              ; preds = %27
  call void @abort() #41, !dbg !2310
  unreachable, !dbg !2310

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !2298
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.76, %42 ], [ @.str.10.76, %44 ], [ @.str.10.76, %41 ], [ %33, %27 ], [ @.str.12.77, %96 ], [ @.str.12.77, %99 ], [ @.str.12.77, %95 ], [ @.str.10.76, %40 ], [ @.str.12.77, %93 ], [ @.str.12.77, %92 ], !dbg !2222
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2222
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2175, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2174, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %108, metadata !2173, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %107, metadata !2172, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %106, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %105, metadata !2168, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata ptr %104, metadata !2167, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i32 %103, metadata !2164, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 0, metadata !2184, metadata !DIExpression()), !dbg !2311
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
  br label %122, !dbg !2312

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !2298
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2226
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !2313
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %129, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2177, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %123, metadata !2163, metadata !DIExpression()), !dbg !2222
  %131 = icmp eq i64 %123, -1, !dbg !2314
  br i1 %131, label %132, label %136, !dbg !2315

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2316
  %134 = load i8, ptr %133, align 1, !dbg !2316, !tbaa !888
  %135 = icmp eq i8 %134, 0, !dbg !2317
  br i1 %135, label %579, label %138, !dbg !2318

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !2319
  br i1 %137, label %579, label %138, !dbg !2318

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 0, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 0, metadata !2190, metadata !DIExpression()), !dbg !2320
  br i1 %114, label %139, label %152, !dbg !2321

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !2323
  %141 = select i1 %131, i1 %115, i1 false, !dbg !2324
  br i1 %141, label %142, label %144, !dbg !2324

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %143, metadata !2163, metadata !DIExpression()), !dbg !2222
  br label %144, !dbg !2326

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !2326
  call void @llvm.dbg.value(metadata i64 %145, metadata !2163, metadata !DIExpression()), !dbg !2222
  %146 = icmp ugt i64 %140, %145, !dbg !2327
  br i1 %146, label %152, label %147, !dbg !2328

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2329
  call void @llvm.dbg.value(metadata ptr %148, metadata !2330, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata ptr %107, metadata !2333, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i64 %108, metadata !2334, metadata !DIExpression()), !dbg !2335
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !2337
  %150 = icmp eq i32 %149, 0, !dbg !2338
  %151 = and i1 %150, %110, !dbg !2339
  br i1 %151, label %630, label %152, !dbg !2339

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2186, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %153, metadata !2163, metadata !DIExpression()), !dbg !2222
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !2340
  %156 = load i8, ptr %155, align 1, !dbg !2340, !tbaa !888
  call void @llvm.dbg.value(metadata i8 %156, metadata !2191, metadata !DIExpression()), !dbg !2320
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
  ], !dbg !2341

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !2342

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !2343

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2189, metadata !DIExpression()), !dbg !2320
  %160 = select i1 %111, i1 true, i1 %128, !dbg !2347
  br i1 %160, label %177, label %161, !dbg !2347

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !2349
  br i1 %162, label %163, label %165, !dbg !2353

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2349
  store i8 39, ptr %164, align 1, !dbg !2349, !tbaa !888
  br label %165, !dbg !2349

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %166, metadata !2170, metadata !DIExpression()), !dbg !2222
  %167 = icmp ult i64 %166, %130, !dbg !2354
  br i1 %167, label %168, label %170, !dbg !2357

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !2354
  store i8 36, ptr %169, align 1, !dbg !2354, !tbaa !888
  br label %170, !dbg !2354

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !2357
  call void @llvm.dbg.value(metadata i64 %171, metadata !2170, metadata !DIExpression()), !dbg !2222
  %172 = icmp ult i64 %171, %130, !dbg !2358
  br i1 %172, label %173, label %175, !dbg !2361

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !2358
  store i8 39, ptr %174, align 1, !dbg !2358, !tbaa !888
  br label %175, !dbg !2358

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !2361
  call void @llvm.dbg.value(metadata i64 %176, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2222
  br label %177, !dbg !2362

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2222
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %178, metadata !2170, metadata !DIExpression()), !dbg !2222
  %180 = icmp ult i64 %178, %130, !dbg !2363
  br i1 %180, label %181, label %183, !dbg !2366

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !2363
  store i8 92, ptr %182, align 1, !dbg !2363, !tbaa !888
  br label %183, !dbg !2363

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i64 %184, metadata !2170, metadata !DIExpression()), !dbg !2222
  br i1 %111, label %185, label %482, !dbg !2367

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !2369
  %187 = icmp ult i64 %186, %153, !dbg !2370
  br i1 %187, label %188, label %439, !dbg !2371

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !2372
  %190 = load i8, ptr %189, align 1, !dbg !2372, !tbaa !888
  %191 = add i8 %190, -48, !dbg !2373
  %192 = icmp ult i8 %191, 10, !dbg !2373
  br i1 %192, label %193, label %439, !dbg !2373

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !2374
  br i1 %194, label %195, label %197, !dbg !2378

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !2374
  store i8 48, ptr %196, align 1, !dbg !2374, !tbaa !888
  br label %197, !dbg !2374

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !2378
  call void @llvm.dbg.value(metadata i64 %198, metadata !2170, metadata !DIExpression()), !dbg !2222
  %199 = icmp ult i64 %198, %130, !dbg !2379
  br i1 %199, label %200, label %202, !dbg !2382

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !2379
  store i8 48, ptr %201, align 1, !dbg !2379, !tbaa !888
  br label %202, !dbg !2379

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !2382
  call void @llvm.dbg.value(metadata i64 %203, metadata !2170, metadata !DIExpression()), !dbg !2222
  br label %439, !dbg !2383

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !2384

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !2385

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !2386

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !2388

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !2390
  %210 = icmp ult i64 %209, %153, !dbg !2391
  br i1 %210, label %211, label %439, !dbg !2392

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !2393
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !2394
  %214 = load i8, ptr %213, align 1, !dbg !2394, !tbaa !888
  %215 = icmp eq i8 %214, 63, !dbg !2395
  br i1 %215, label %216, label %439, !dbg !2396

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !2397
  %218 = load i8, ptr %217, align 1, !dbg !2397, !tbaa !888
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
  ], !dbg !2398

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !2399

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %209, metadata !2184, metadata !DIExpression()), !dbg !2311
  %221 = icmp ult i64 %124, %130, !dbg !2401
  br i1 %221, label %222, label %224, !dbg !2404

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2401
  store i8 63, ptr %223, align 1, !dbg !2401, !tbaa !888
  br label %224, !dbg !2401

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !2404
  call void @llvm.dbg.value(metadata i64 %225, metadata !2170, metadata !DIExpression()), !dbg !2222
  %226 = icmp ult i64 %225, %130, !dbg !2405
  br i1 %226, label %227, label %229, !dbg !2408

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !2405
  store i8 34, ptr %228, align 1, !dbg !2405, !tbaa !888
  br label %229, !dbg !2405

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %230, metadata !2170, metadata !DIExpression()), !dbg !2222
  %231 = icmp ult i64 %230, %130, !dbg !2409
  br i1 %231, label %232, label %234, !dbg !2412

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !2409
  store i8 34, ptr %233, align 1, !dbg !2409, !tbaa !888
  br label %234, !dbg !2409

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !2412
  call void @llvm.dbg.value(metadata i64 %235, metadata !2170, metadata !DIExpression()), !dbg !2222
  %236 = icmp ult i64 %235, %130, !dbg !2413
  br i1 %236, label %237, label %239, !dbg !2416

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !2413
  store i8 63, ptr %238, align 1, !dbg !2413, !tbaa !888
  br label %239, !dbg !2413

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %240, metadata !2170, metadata !DIExpression()), !dbg !2222
  br label %439, !dbg !2417

241:                                              ; preds = %152
  br label %251, !dbg !2418

242:                                              ; preds = %152
  br label %251, !dbg !2419

243:                                              ; preds = %152
  br label %249, !dbg !2420

244:                                              ; preds = %152
  br label %249, !dbg !2421

245:                                              ; preds = %152
  br label %251, !dbg !2422

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !2423

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !2424

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !2427

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !2429
  call void @llvm.dbg.label(metadata !2216), !dbg !2430
  br i1 %119, label %621, label %251, !dbg !2431

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !2429
  call void @llvm.dbg.label(metadata !2218), !dbg !2433
  br i1 %109, label %493, label %450, !dbg !2434

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !2435

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !2436, !tbaa !888
  %256 = icmp eq i8 %255, 0, !dbg !2438
  br i1 %256, label %257, label %439, !dbg !2439

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !2440
  br i1 %258, label %259, label %439, !dbg !2442

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2320
  br label %260, !dbg !2443

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2190, metadata !DIExpression()), !dbg !2320
  br i1 %116, label %262, label %439, !dbg !2444

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !2446

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 1, metadata !2190, metadata !DIExpression()), !dbg !2320
  br i1 %116, label %264, label %439, !dbg !2447

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !2448

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !2451
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !2453
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !2453
  %270 = select i1 %268, i64 %130, i64 0, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %270, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %269, metadata !2171, metadata !DIExpression()), !dbg !2222
  %271 = icmp ult i64 %124, %270, !dbg !2454
  br i1 %271, label %272, label %274, !dbg !2457

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !2454
  store i8 39, ptr %273, align 1, !dbg !2454, !tbaa !888
  br label %274, !dbg !2454

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i64 %275, metadata !2170, metadata !DIExpression()), !dbg !2222
  %276 = icmp ult i64 %275, %270, !dbg !2458
  br i1 %276, label %277, label %279, !dbg !2461

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !2458
  store i8 92, ptr %278, align 1, !dbg !2458, !tbaa !888
  br label %279, !dbg !2458

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !2461
  call void @llvm.dbg.value(metadata i64 %280, metadata !2170, metadata !DIExpression()), !dbg !2222
  %281 = icmp ult i64 %280, %270, !dbg !2462
  br i1 %281, label %282, label %284, !dbg !2465

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !2462
  store i8 39, ptr %283, align 1, !dbg !2462, !tbaa !888
  br label %284, !dbg !2462

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !2465
  call void @llvm.dbg.value(metadata i64 %285, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2222
  br label %439, !dbg !2466

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !2467

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2192, metadata !DIExpression()), !dbg !2468
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !2469
  %289 = load ptr, ptr %288, align 8, !dbg !2469, !tbaa !819
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !2469
  %292 = load i16, ptr %291, align 2, !dbg !2469, !tbaa !920
  %293 = and i16 %292, 16384, !dbg !2469
  %294 = icmp ne i16 %293, 0, !dbg !2471
  call void @llvm.dbg.value(metadata i1 %294, metadata !2195, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2468
  br label %337, !dbg !2472

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2196, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %14, metadata !2248, metadata !DIExpression()), !dbg !2475
  call void @llvm.dbg.value(metadata ptr %14, metadata !2256, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i64 8, metadata !2260, metadata !DIExpression()), !dbg !2477
  store i64 0, ptr %14, align 8, !dbg !2479
  call void @llvm.dbg.value(metadata i64 0, metadata !2192, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i8 1, metadata !2195, metadata !DIExpression()), !dbg !2468
  %296 = icmp eq i64 %153, -1, !dbg !2480
  br i1 %296, label %297, label %299, !dbg !2482

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %298, metadata !2163, metadata !DIExpression()), !dbg !2222
  br label %299, !dbg !2484

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !2320
  call void @llvm.dbg.value(metadata i64 %300, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !2485
  %301 = sub i64 %300, %129, !dbg !2486
  call void @llvm.dbg.value(metadata ptr %15, metadata !2199, metadata !DIExpression(DW_OP_deref)), !dbg !2487
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %302, metadata !2203, metadata !DIExpression()), !dbg !2487
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !2489

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2192, metadata !DIExpression()), !dbg !2468
  %304 = icmp ugt i64 %300, %129, !dbg !2490
  br i1 %304, label %306, label %332, !dbg !2492

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2195, metadata !DIExpression()), !dbg !2468
  br label %332, !dbg !2493

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2192, metadata !DIExpression()), !dbg !2468
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !2495
  %310 = load i8, ptr %309, align 1, !dbg !2495, !tbaa !888
  %311 = icmp eq i8 %310, 0, !dbg !2492
  br i1 %311, label %332, label %312, !dbg !2496

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !2497
  call void @llvm.dbg.value(metadata i64 %313, metadata !2192, metadata !DIExpression()), !dbg !2468
  %314 = add i64 %313, %129, !dbg !2498
  %315 = icmp eq i64 %313, %301, !dbg !2490
  br i1 %315, label %332, label %306, !dbg !2492, !llvm.loop !2499

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !2500
  %319 = and i1 %318, %110, !dbg !2500
  call void @llvm.dbg.value(metadata i64 1, metadata !2204, metadata !DIExpression()), !dbg !2501
  br i1 %319, label %320, label %328, !dbg !2500

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2204, metadata !DIExpression()), !dbg !2501
  %322 = add i64 %321, %129, !dbg !2502
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !2504
  %324 = load i8, ptr %323, align 1, !dbg !2504, !tbaa !888
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !2505

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %326, metadata !2204, metadata !DIExpression()), !dbg !2501
  %327 = icmp eq i64 %326, %302, !dbg !2507
  br i1 %327, label %328, label %320, !dbg !2508, !llvm.loop !2509

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !2511, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %329, metadata !2199, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i32 %329, metadata !2513, metadata !DIExpression()), !dbg !2521
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !2523
  %331 = icmp ne i32 %330, 0, !dbg !2524
  call void @llvm.dbg.value(metadata i8 poison, metadata !2195, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %302, metadata !2192, metadata !DIExpression()), !dbg !2468
  br label %332, !dbg !2525

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2195, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %333, metadata !2192, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2527
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2195, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 0, metadata !2192, metadata !DIExpression()), !dbg !2468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !2526
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !2527
  call void @llvm.dbg.label(metadata !2221), !dbg !2528
  %336 = select i1 %109, i32 4, i32 2, !dbg !2529
  br label %626, !dbg !2529

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !2320
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !2531
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2195, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %339, metadata !2192, metadata !DIExpression()), !dbg !2468
  call void @llvm.dbg.value(metadata i64 %338, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i1 %340, metadata !2190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2320
  %341 = icmp ult i64 %339, 2, !dbg !2532
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !2533
  br i1 %343, label %439, label %344, !dbg !2533

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %345, metadata !2212, metadata !DIExpression()), !dbg !2535
  br label %346, !dbg !2536

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2222
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !2311
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !2537
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !2320
  call void @llvm.dbg.value(metadata i8 %352, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 %351, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2186, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %349, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %347, metadata !2170, metadata !DIExpression()), !dbg !2222
  br i1 %342, label %397, label %353, !dbg !2538

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !2543

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2189, metadata !DIExpression()), !dbg !2320
  %355 = select i1 %111, i1 true, i1 %348, !dbg !2546
  br i1 %355, label %372, label %356, !dbg !2546

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !2548
  br i1 %357, label %358, label %360, !dbg !2552

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2548
  store i8 39, ptr %359, align 1, !dbg !2548, !tbaa !888
  br label %360, !dbg !2548

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %361, metadata !2170, metadata !DIExpression()), !dbg !2222
  %362 = icmp ult i64 %361, %130, !dbg !2553
  br i1 %362, label %363, label %365, !dbg !2556

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !2553
  store i8 36, ptr %364, align 1, !dbg !2553, !tbaa !888
  br label %365, !dbg !2553

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !2556
  call void @llvm.dbg.value(metadata i64 %366, metadata !2170, metadata !DIExpression()), !dbg !2222
  %367 = icmp ult i64 %366, %130, !dbg !2557
  br i1 %367, label %368, label %370, !dbg !2560

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !2557
  store i8 39, ptr %369, align 1, !dbg !2557, !tbaa !888
  br label %370, !dbg !2557

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !2560
  call void @llvm.dbg.value(metadata i64 %371, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2222
  br label %372, !dbg !2561

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2222
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %373, metadata !2170, metadata !DIExpression()), !dbg !2222
  %375 = icmp ult i64 %373, %130, !dbg !2562
  br i1 %375, label %376, label %378, !dbg !2565

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !2562
  store i8 92, ptr %377, align 1, !dbg !2562, !tbaa !888
  br label %378, !dbg !2562

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %379, metadata !2170, metadata !DIExpression()), !dbg !2222
  %380 = icmp ult i64 %379, %130, !dbg !2566
  br i1 %380, label %381, label %385, !dbg !2569

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !2566
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !2566
  store i8 %383, ptr %384, align 1, !dbg !2566, !tbaa !888
  br label %385, !dbg !2566

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %386, metadata !2170, metadata !DIExpression()), !dbg !2222
  %387 = icmp ult i64 %386, %130, !dbg !2570
  br i1 %387, label %388, label %393, !dbg !2573

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !2570
  %391 = or i8 %390, 48, !dbg !2570
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !2570
  store i8 %391, ptr %392, align 1, !dbg !2570, !tbaa !888
  br label %393, !dbg !2570

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %394, metadata !2170, metadata !DIExpression()), !dbg !2222
  %395 = and i8 %352, 7, !dbg !2574
  %396 = or i8 %395, 48, !dbg !2575
  call void @llvm.dbg.value(metadata i8 %396, metadata !2191, metadata !DIExpression()), !dbg !2320
  br label %404, !dbg !2576

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !2577

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !2578
  br i1 %399, label %400, label %402, !dbg !2583

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !2578
  store i8 92, ptr %401, align 1, !dbg !2578, !tbaa !888
  br label %402, !dbg !2578

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !2583
  call void @llvm.dbg.value(metadata i64 %403, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2186, metadata !DIExpression()), !dbg !2320
  br label %404, !dbg !2584

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2222
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !2320
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !2320
  call void @llvm.dbg.value(metadata i8 %409, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 %408, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2186, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %405, metadata !2170, metadata !DIExpression()), !dbg !2222
  %410 = add i64 %349, 1, !dbg !2585
  %411 = icmp ugt i64 %345, %410, !dbg !2587
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !2588

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !2589
  %415 = select i1 %406, i1 %414, i1 false, !dbg !2589
  br i1 %415, label %416, label %427, !dbg !2589

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !2592
  br i1 %417, label %418, label %420, !dbg !2596

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !2592
  store i8 39, ptr %419, align 1, !dbg !2592, !tbaa !888
  br label %420, !dbg !2592

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %421, metadata !2170, metadata !DIExpression()), !dbg !2222
  %422 = icmp ult i64 %421, %130, !dbg !2597
  br i1 %422, label %423, label %425, !dbg !2600

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !2597
  store i8 39, ptr %424, align 1, !dbg !2597, !tbaa !888
  br label %425, !dbg !2597

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !2600
  call void @llvm.dbg.value(metadata i64 %426, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2222
  br label %427, !dbg !2601

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !2602
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %428, metadata !2170, metadata !DIExpression()), !dbg !2222
  %430 = icmp ult i64 %428, %130, !dbg !2603
  br i1 %430, label %431, label %433, !dbg !2606

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !2603
  store i8 %409, ptr %432, align 1, !dbg !2603, !tbaa !888
  br label %433, !dbg !2603

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %434, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %410, metadata !2184, metadata !DIExpression()), !dbg !2311
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !2607
  %436 = load i8, ptr %435, align 1, !dbg !2607, !tbaa !888
  call void @llvm.dbg.value(metadata i8 %436, metadata !2191, metadata !DIExpression()), !dbg !2320
  br label %346, !dbg !2608, !llvm.loop !2609

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i1 %340, metadata !2190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2320
  call void @llvm.dbg.value(metadata i8 %408, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2186, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %349, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %405, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %338, metadata !2163, metadata !DIExpression()), !dbg !2222
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !2612
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2222
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2226
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !2311
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !2320
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %448, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2186, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %445, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %442, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %441, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %440, metadata !2163, metadata !DIExpression()), !dbg !2222
  br i1 %112, label %461, label %450, !dbg !2613

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
  br i1 %121, label %462, label %482, !dbg !2615

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !2616

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
  %473 = lshr i8 %464, 5, !dbg !2617
  %474 = zext i8 %473 to i64, !dbg !2617
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !2618
  %476 = load i32, ptr %475, align 4, !dbg !2618, !tbaa !879
  %477 = and i8 %464, 31, !dbg !2619
  %478 = zext i8 %477 to i32, !dbg !2619
  %479 = shl nuw i32 1, %478, !dbg !2620
  %480 = and i32 %476, %479, !dbg !2620
  %481 = icmp eq i32 %480, 0, !dbg !2620
  br i1 %481, label %482, label %493, !dbg !2621

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
  br i1 %154, label %493, label %529, !dbg !2622

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !2612
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2222
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2226
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !2623
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !2320
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %501, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %499, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %496, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %495, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %494, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.label(metadata !2219), !dbg !2624
  br i1 %110, label %621, label %503, !dbg !2625

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2189, metadata !DIExpression()), !dbg !2320
  %504 = select i1 %111, i1 true, i1 %498, !dbg !2627
  br i1 %504, label %521, label %505, !dbg !2627

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !2629
  br i1 %506, label %507, label %509, !dbg !2633

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !2629
  store i8 39, ptr %508, align 1, !dbg !2629, !tbaa !888
  br label %509, !dbg !2629

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %510, metadata !2170, metadata !DIExpression()), !dbg !2222
  %511 = icmp ult i64 %510, %502, !dbg !2634
  br i1 %511, label %512, label %514, !dbg !2637

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !2634
  store i8 36, ptr %513, align 1, !dbg !2634, !tbaa !888
  br label %514, !dbg !2634

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %515, metadata !2170, metadata !DIExpression()), !dbg !2222
  %516 = icmp ult i64 %515, %502, !dbg !2638
  br i1 %516, label %517, label %519, !dbg !2641

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !2638
  store i8 39, ptr %518, align 1, !dbg !2638, !tbaa !888
  br label %519, !dbg !2638

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !2641
  call void @llvm.dbg.value(metadata i64 %520, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 1, metadata !2178, metadata !DIExpression()), !dbg !2222
  br label %521, !dbg !2642

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !2320
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %522, metadata !2170, metadata !DIExpression()), !dbg !2222
  %524 = icmp ult i64 %522, %502, !dbg !2643
  br i1 %524, label %525, label %527, !dbg !2646

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !2643
  store i8 92, ptr %526, align 1, !dbg !2643, !tbaa !888
  br label %527, !dbg !2643

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !2646
  call void @llvm.dbg.value(metadata i64 %502, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %501, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %499, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %496, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %528, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %494, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.label(metadata !2220), !dbg !2647
  br label %553, !dbg !2648

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !2612
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2222
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2226
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !2623
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !2651
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 %538, metadata !2191, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2190, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2189, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.value(metadata i64 %535, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %532, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %531, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %530, metadata !2163, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.label(metadata !2220), !dbg !2647
  %540 = xor i1 %534, true, !dbg !2648
  %541 = select i1 %540, i1 true, i1 %536, !dbg !2648
  br i1 %541, label %553, label %542, !dbg !2648

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !2652
  br i1 %543, label %544, label %546, !dbg !2656

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !2652
  store i8 39, ptr %545, align 1, !dbg !2652, !tbaa !888
  br label %546, !dbg !2652

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !2656
  call void @llvm.dbg.value(metadata i64 %547, metadata !2170, metadata !DIExpression()), !dbg !2222
  %548 = icmp ult i64 %547, %539, !dbg !2657
  br i1 %548, label %549, label %551, !dbg !2660

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !2657
  store i8 39, ptr %550, align 1, !dbg !2657, !tbaa !888
  br label %551, !dbg !2657

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !2660
  call void @llvm.dbg.value(metadata i64 %552, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2222
  br label %553, !dbg !2661

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !2320
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %561, metadata !2170, metadata !DIExpression()), !dbg !2222
  %563 = icmp ult i64 %561, %554, !dbg !2662
  br i1 %563, label %564, label %566, !dbg !2665

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !2662
  store i8 %555, ptr %565, align 1, !dbg !2662, !tbaa !888
  br label %566, !dbg !2662

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %567, metadata !2170, metadata !DIExpression()), !dbg !2222
  %568 = select i1 %556, i1 %127, i1 false, !dbg !2666
  call void @llvm.dbg.value(metadata i8 poison, metadata !2177, metadata !DIExpression()), !dbg !2222
  br label %569, !dbg !2667

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !2612
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2222
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2226
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !2623
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %576, metadata !2184, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata i8 poison, metadata !2178, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2177, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %572, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %571, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %570, metadata !2163, metadata !DIExpression()), !dbg !2222
  %578 = add i64 %576, 1, !dbg !2668
  call void @llvm.dbg.value(metadata i64 %578, metadata !2184, metadata !DIExpression()), !dbg !2311
  br label %122, !dbg !2669, !llvm.loop !2670

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2161, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2177, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i8 poison, metadata !2176, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %125, metadata !2171, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %123, metadata !2163, metadata !DIExpression()), !dbg !2222
  %580 = icmp ne i64 %124, 0, !dbg !2672
  %581 = xor i1 %110, true, !dbg !2674
  %582 = or i1 %580, %581, !dbg !2674
  %583 = or i1 %582, %111, !dbg !2674
  br i1 %583, label %584, label %621, !dbg !2674

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !2675
  %586 = xor i1 %126, true, !dbg !2675
  %587 = select i1 %585, i1 true, i1 %586, !dbg !2675
  br i1 %587, label %595, label %588, !dbg !2675

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !2677

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !2679
  br label %636, !dbg !2681

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !2682
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !2684
  br i1 %594, label %27, label %595, !dbg !2684

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !2685
  %598 = or i1 %597, %596, !dbg !2687
  br i1 %598, label %614, label %599, !dbg !2687

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2172, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %124, metadata !2170, metadata !DIExpression()), !dbg !2222
  %600 = load i8, ptr %107, align 1, !dbg !2688, !tbaa !888
  %601 = icmp eq i8 %600, 0, !dbg !2691
  br i1 %601, label %614, label %602, !dbg !2691

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2172, metadata !DIExpression()), !dbg !2222
  call void @llvm.dbg.value(metadata i64 %605, metadata !2170, metadata !DIExpression()), !dbg !2222
  %606 = icmp ult i64 %605, %130, !dbg !2692
  br i1 %606, label %607, label %609, !dbg !2695

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !2692
  store i8 %603, ptr %608, align 1, !dbg !2692, !tbaa !888
  br label %609, !dbg !2692

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !2695
  call void @llvm.dbg.value(metadata i64 %610, metadata !2170, metadata !DIExpression()), !dbg !2222
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !2696
  call void @llvm.dbg.value(metadata ptr %611, metadata !2172, metadata !DIExpression()), !dbg !2222
  %612 = load i8, ptr %611, align 1, !dbg !2688, !tbaa !888
  %613 = icmp eq i8 %612, 0, !dbg !2691
  br i1 %613, label %614, label %602, !dbg !2691, !llvm.loop !2697

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !2298
  call void @llvm.dbg.value(metadata i64 %615, metadata !2170, metadata !DIExpression()), !dbg !2222
  %616 = icmp ult i64 %615, %130, !dbg !2699
  br i1 %616, label %617, label %636, !dbg !2701

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !2702
  store i8 0, ptr %618, align 1, !dbg !2703, !tbaa !888
  br label %636, !dbg !2702

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2221), !dbg !2528
  %620 = icmp eq i32 %103, 2, !dbg !2704
  br i1 %620, label %626, label %630, !dbg !2529

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2221), !dbg !2528
  %624 = icmp eq i32 %103, 2, !dbg !2704
  %625 = select i1 %109, i32 4, i32 2, !dbg !2529
  br i1 %624, label %626, label %630, !dbg !2529

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !2529

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2164, metadata !DIExpression()), !dbg !2222
  %634 = and i32 %5, -3, !dbg !2705
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !2706
  br label %636, !dbg !2707

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !2708
}

; Function Attrs: nounwind
declare !dbg !2709 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2711 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2713 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2718, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %2, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr null, metadata !2727, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata ptr %2, metadata !2728, metadata !DIExpression()), !dbg !2734
  %4 = icmp eq ptr %2, null, !dbg !2736
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !2736
  call void @llvm.dbg.value(metadata ptr %5, metadata !2729, metadata !DIExpression()), !dbg !2734
  %6 = tail call ptr @__errno_location() #42, !dbg !2737
  %7 = load i32, ptr %6, align 4, !dbg !2737, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %7, metadata !2730, metadata !DIExpression()), !dbg !2734
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !2738
  %9 = load i32, ptr %8, align 4, !dbg !2738, !tbaa !2104
  %10 = or i32 %9, 1, !dbg !2739
  call void @llvm.dbg.value(metadata i32 %10, metadata !2731, metadata !DIExpression()), !dbg !2734
  %11 = load i32, ptr %5, align 8, !dbg !2740, !tbaa !2054
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2741
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2742
  %14 = load ptr, ptr %13, align 8, !dbg !2742, !tbaa !2125
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2743
  %16 = load ptr, ptr %15, align 8, !dbg !2743, !tbaa !2128
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !2744
  %18 = add i64 %17, 1, !dbg !2745
  call void @llvm.dbg.value(metadata i64 %18, metadata !2732, metadata !DIExpression()), !dbg !2734
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !2746
  call void @llvm.dbg.value(metadata ptr %19, metadata !2733, metadata !DIExpression()), !dbg !2734
  %20 = load i32, ptr %5, align 8, !dbg !2747, !tbaa !2054
  %21 = load ptr, ptr %13, align 8, !dbg !2748, !tbaa !2125
  %22 = load ptr, ptr %15, align 8, !dbg !2749, !tbaa !2128
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !2750
  store i32 %7, ptr %6, align 4, !dbg !2751, !tbaa !879
  ret ptr %19, !dbg !2752
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !2722 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2721, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2726, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %2, metadata !2727, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata ptr %3, metadata !2728, metadata !DIExpression()), !dbg !2753
  %5 = icmp eq ptr %3, null, !dbg !2754
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !2754
  call void @llvm.dbg.value(metadata ptr %6, metadata !2729, metadata !DIExpression()), !dbg !2753
  %7 = tail call ptr @__errno_location() #42, !dbg !2755
  %8 = load i32, ptr %7, align 4, !dbg !2755, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %8, metadata !2730, metadata !DIExpression()), !dbg !2753
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !2756
  %10 = load i32, ptr %9, align 4, !dbg !2756, !tbaa !2104
  %11 = icmp eq ptr %2, null, !dbg !2757
  %12 = zext i1 %11 to i32, !dbg !2757
  %13 = or i32 %10, %12, !dbg !2758
  call void @llvm.dbg.value(metadata i32 %13, metadata !2731, metadata !DIExpression()), !dbg !2753
  %14 = load i32, ptr %6, align 8, !dbg !2759, !tbaa !2054
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !2760
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !2761
  %17 = load ptr, ptr %16, align 8, !dbg !2761, !tbaa !2125
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !2762
  %19 = load ptr, ptr %18, align 8, !dbg !2762, !tbaa !2128
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !2763
  %21 = add i64 %20, 1, !dbg !2764
  call void @llvm.dbg.value(metadata i64 %21, metadata !2732, metadata !DIExpression()), !dbg !2753
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !2765
  call void @llvm.dbg.value(metadata ptr %22, metadata !2733, metadata !DIExpression()), !dbg !2753
  %23 = load i32, ptr %6, align 8, !dbg !2766, !tbaa !2054
  %24 = load ptr, ptr %16, align 8, !dbg !2767, !tbaa !2125
  %25 = load ptr, ptr %18, align 8, !dbg !2768, !tbaa !2128
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !2769
  store i32 %8, ptr %7, align 4, !dbg !2770, !tbaa !879
  br i1 %11, label %28, label %27, !dbg !2771

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !2772, !tbaa !2774
  br label %28, !dbg !2775

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !2776
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !2777 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !2782, !tbaa !819
  call void @llvm.dbg.value(metadata ptr %1, metadata !2779, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i32 1, metadata !2780, metadata !DIExpression()), !dbg !2784
  %2 = load i32, ptr @nslots, align 4, !tbaa !879
  call void @llvm.dbg.value(metadata i32 1, metadata !2780, metadata !DIExpression()), !dbg !2784
  %3 = icmp sgt i32 %2, 1, !dbg !2785
  br i1 %3, label %4, label %6, !dbg !2787

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2785
  br label %10, !dbg !2787

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !2788
  %8 = load ptr, ptr %7, align 8, !dbg !2788, !tbaa !2790
  %9 = icmp eq ptr %8, @slot0, !dbg !2792
  br i1 %9, label %17, label %16, !dbg !2793

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2780, metadata !DIExpression()), !dbg !2784
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !2794
  %13 = load ptr, ptr %12, align 8, !dbg !2794, !tbaa !2790
  tail call void @free(ptr noundef %13) #39, !dbg !2795
  %14 = add nuw nsw i64 %11, 1, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %14, metadata !2780, metadata !DIExpression()), !dbg !2784
  %15 = icmp eq i64 %14, %5, !dbg !2785
  br i1 %15, label %6, label %10, !dbg !2787, !llvm.loop !2797

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !2799
  store i64 256, ptr @slotvec0, align 8, !dbg !2801, !tbaa !2802
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !2803, !tbaa !2790
  br label %17, !dbg !2804

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !2805
  br i1 %18, label %20, label %19, !dbg !2807

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !2808
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !2810, !tbaa !819
  br label %20, !dbg !2811

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !2812, !tbaa !879
  ret void, !dbg !2813
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata ptr %1, metadata !2817, metadata !DIExpression()), !dbg !2818
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2819
  ret ptr %3, !dbg !2820
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !2821 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2825, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %1, metadata !2826, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i64 %2, metadata !2827, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata ptr %3, metadata !2828, metadata !DIExpression()), !dbg !2841
  %6 = tail call ptr @__errno_location() #42, !dbg !2842
  %7 = load i32, ptr %6, align 4, !dbg !2842, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %7, metadata !2829, metadata !DIExpression()), !dbg !2841
  %8 = load ptr, ptr @slotvec, align 8, !dbg !2843, !tbaa !819
  call void @llvm.dbg.value(metadata ptr %8, metadata !2830, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2831, metadata !DIExpression()), !dbg !2841
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2844
  br i1 %9, label %10, label %11, !dbg !2844

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !2846
  unreachable, !dbg !2846

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !2847, !tbaa !879
  %13 = icmp sgt i32 %12, %0, !dbg !2848
  br i1 %13, label %32, label %14, !dbg !2849

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !2850
  call void @llvm.dbg.value(metadata i1 %15, metadata !2832, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2851
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !2852
  %16 = sext i32 %12 to i64, !dbg !2853
  call void @llvm.dbg.value(metadata i64 %16, metadata !2835, metadata !DIExpression()), !dbg !2851
  store i64 %16, ptr %5, align 8, !dbg !2854, !tbaa !2774
  %17 = select i1 %15, ptr null, ptr %8, !dbg !2855
  %18 = add nuw nsw i32 %0, 1, !dbg !2856
  %19 = sub i32 %18, %12, !dbg !2857
  %20 = sext i32 %19 to i64, !dbg !2858
  call void @llvm.dbg.value(metadata ptr %5, metadata !2835, metadata !DIExpression(DW_OP_deref)), !dbg !2851
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !2859
  call void @llvm.dbg.value(metadata ptr %21, metadata !2830, metadata !DIExpression()), !dbg !2841
  store ptr %21, ptr @slotvec, align 8, !dbg !2860, !tbaa !819
  br i1 %15, label %22, label %23, !dbg !2861

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !2862, !tbaa.struct !2864
  br label %23, !dbg !2865

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !2866, !tbaa !879
  %25 = sext i32 %24 to i64, !dbg !2867
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !2867
  %27 = load i64, ptr %5, align 8, !dbg !2868, !tbaa !2774
  call void @llvm.dbg.value(metadata i64 %27, metadata !2835, metadata !DIExpression()), !dbg !2851
  %28 = sub nsw i64 %27, %25, !dbg !2869
  %29 = shl i64 %28, 4, !dbg !2870
  call void @llvm.dbg.value(metadata ptr %26, metadata !2256, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i32 0, metadata !2259, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.value(metadata i64 %29, metadata !2260, metadata !DIExpression()), !dbg !2871
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !2873
  %30 = load i64, ptr %5, align 8, !dbg !2874, !tbaa !2774
  call void @llvm.dbg.value(metadata i64 %30, metadata !2835, metadata !DIExpression()), !dbg !2851
  %31 = trunc i64 %30 to i32, !dbg !2874
  store i32 %31, ptr @nslots, align 4, !dbg !2875, !tbaa !879
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !2876
  br label %32, !dbg !2877

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !2841
  call void @llvm.dbg.value(metadata ptr %33, metadata !2830, metadata !DIExpression()), !dbg !2841
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !2878
  %36 = load i64, ptr %35, align 8, !dbg !2879, !tbaa !2802
  call void @llvm.dbg.value(metadata i64 %36, metadata !2836, metadata !DIExpression()), !dbg !2880
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !2881
  %38 = load ptr, ptr %37, align 8, !dbg !2881, !tbaa !2790
  call void @llvm.dbg.value(metadata ptr %38, metadata !2838, metadata !DIExpression()), !dbg !2880
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !2882
  %40 = load i32, ptr %39, align 4, !dbg !2882, !tbaa !2104
  %41 = or i32 %40, 1, !dbg !2883
  call void @llvm.dbg.value(metadata i32 %41, metadata !2839, metadata !DIExpression()), !dbg !2880
  %42 = load i32, ptr %3, align 8, !dbg !2884, !tbaa !2054
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !2885
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !2886
  %45 = load ptr, ptr %44, align 8, !dbg !2886, !tbaa !2125
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !2887
  %47 = load ptr, ptr %46, align 8, !dbg !2887, !tbaa !2128
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !2888
  call void @llvm.dbg.value(metadata i64 %48, metadata !2840, metadata !DIExpression()), !dbg !2880
  %49 = icmp ugt i64 %36, %48, !dbg !2889
  br i1 %49, label %60, label %50, !dbg !2891

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !2892
  call void @llvm.dbg.value(metadata i64 %51, metadata !2836, metadata !DIExpression()), !dbg !2880
  store i64 %51, ptr %35, align 8, !dbg !2894, !tbaa !2802
  %52 = icmp eq ptr %38, @slot0, !dbg !2895
  br i1 %52, label %54, label %53, !dbg !2897

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !2898
  br label %54, !dbg !2898

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !2899
  call void @llvm.dbg.value(metadata ptr %55, metadata !2838, metadata !DIExpression()), !dbg !2880
  store ptr %55, ptr %37, align 8, !dbg !2900, !tbaa !2790
  %56 = load i32, ptr %3, align 8, !dbg !2901, !tbaa !2054
  %57 = load ptr, ptr %44, align 8, !dbg !2902, !tbaa !2125
  %58 = load ptr, ptr %46, align 8, !dbg !2903, !tbaa !2128
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !2904
  br label %60, !dbg !2905

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !2880
  call void @llvm.dbg.value(metadata ptr %61, metadata !2838, metadata !DIExpression()), !dbg !2880
  store i32 %7, ptr %6, align 4, !dbg !2906, !tbaa !879
  ret ptr %61, !dbg !2907
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !2908 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2912, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata ptr %1, metadata !2913, metadata !DIExpression()), !dbg !2915
  call void @llvm.dbg.value(metadata i64 %2, metadata !2914, metadata !DIExpression()), !dbg !2915
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !2916
  ret ptr %4, !dbg !2917
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !2918 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i32 0, metadata !2816, metadata !DIExpression()), !dbg !2922
  call void @llvm.dbg.value(metadata ptr %0, metadata !2817, metadata !DIExpression()), !dbg !2922
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !2924
  ret ptr %2, !dbg !2925
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !2926 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i32 0, metadata !2912, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata ptr %0, metadata !2913, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2914, metadata !DIExpression()), !dbg !2933
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !2935
  ret ptr %3, !dbg !2936
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2937 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2941, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 %1, metadata !2942, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata ptr %2, metadata !2943, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !2946
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2944, metadata !DIExpression()), !dbg !2947
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2948), !dbg !2951
  call void @llvm.dbg.value(metadata i32 %1, metadata !2952, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !2960
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !2960, !alias.scope !2948
  %5 = icmp eq i32 %1, 10, !dbg !2961
  br i1 %5, label %6, label %7, !dbg !2963

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !2964, !noalias !2948
  unreachable, !dbg !2964

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !2965, !tbaa !2054, !alias.scope !2948
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !2966
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !2967
  ret ptr %8, !dbg !2968
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !2969 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2973, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i32 %1, metadata !2974, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata ptr %2, metadata !2975, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.value(metadata i64 %3, metadata !2976, metadata !DIExpression()), !dbg !2978
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !2979
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2977, metadata !DIExpression()), !dbg !2980
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2981), !dbg !2984
  call void @llvm.dbg.value(metadata i32 %1, metadata !2952, metadata !DIExpression()), !dbg !2985
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2957, metadata !DIExpression()), !dbg !2987
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !2987, !alias.scope !2981
  %6 = icmp eq i32 %1, 10, !dbg !2988
  br i1 %6, label %7, label %8, !dbg !2989

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !2990, !noalias !2981
  unreachable, !dbg !2990

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !2991, !tbaa !2054, !alias.scope !2981
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !2992
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !2993
  ret ptr %9, !dbg !2994
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !2995 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2999, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata ptr %1, metadata !3000, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 0, metadata !2941, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i32 %0, metadata !2942, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata ptr %1, metadata !2943, metadata !DIExpression()), !dbg !3002
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3004
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2944, metadata !DIExpression()), !dbg !3005
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3006), !dbg !3009
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2957, metadata !DIExpression()), !dbg !3012
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3012, !alias.scope !3006
  %4 = icmp eq i32 %0, 10, !dbg !3013
  br i1 %4, label %5, label %6, !dbg !3014

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3015, !noalias !3006
  unreachable, !dbg !3015

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3016, !tbaa !2054, !alias.scope !3006
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3017
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3018
  ret ptr %7, !dbg !3019
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3020 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata ptr %1, metadata !3025, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %2, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i32 0, metadata !2973, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i32 %0, metadata !2974, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata ptr %1, metadata !2975, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %2, metadata !2976, metadata !DIExpression()), !dbg !3028
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3030
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2977, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3032), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %0, metadata !2952, metadata !DIExpression()), !dbg !3036
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2957, metadata !DIExpression()), !dbg !3038
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3038, !alias.scope !3032
  %5 = icmp eq i32 %0, 10, !dbg !3039
  br i1 %5, label %6, label %7, !dbg !3040

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3041, !noalias !3032
  unreachable, !dbg !3041

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3042, !tbaa !2054, !alias.scope !3032
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3043
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3044
  ret ptr %8, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3046 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i8 %2, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3053, metadata !DIExpression()), !dbg !3056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3057, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %4, metadata !2071, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 %2, metadata !2072, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i32 1, metadata !2073, metadata !DIExpression()), !dbg !3059
  call void @llvm.dbg.value(metadata i8 %2, metadata !2074, metadata !DIExpression()), !dbg !3059
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3061
  %6 = lshr i8 %2, 5, !dbg !3062
  %7 = zext i8 %6 to i64, !dbg !3062
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3063
  call void @llvm.dbg.value(metadata ptr %8, metadata !2075, metadata !DIExpression()), !dbg !3059
  %9 = and i8 %2, 31, !dbg !3064
  %10 = zext i8 %9 to i32, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %10, metadata !2077, metadata !DIExpression()), !dbg !3059
  %11 = load i32, ptr %8, align 4, !dbg !3065, !tbaa !879
  %12 = lshr i32 %11, %10, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %12, metadata !2078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3059
  %13 = and i32 %12, 1, !dbg !3067
  %14 = xor i32 %13, 1, !dbg !3067
  %15 = shl nuw i32 %14, %10, !dbg !3068
  %16 = xor i32 %15, %11, !dbg !3069
  store i32 %16, ptr %8, align 4, !dbg !3069, !tbaa !879
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3070
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3071
  ret ptr %17, !dbg !3072
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3073 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata i8 %1, metadata !3078, metadata !DIExpression()), !dbg !3079
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i64 -1, metadata !3051, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata i8 %1, metadata !3052, metadata !DIExpression()), !dbg !3080
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3082
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3053, metadata !DIExpression()), !dbg !3083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3084, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %3, metadata !2071, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8 %1, metadata !2072, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i32 1, metadata !2073, metadata !DIExpression()), !dbg !3085
  call void @llvm.dbg.value(metadata i8 %1, metadata !2074, metadata !DIExpression()), !dbg !3085
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3087
  %5 = lshr i8 %1, 5, !dbg !3088
  %6 = zext i8 %5 to i64, !dbg !3088
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3089
  call void @llvm.dbg.value(metadata ptr %7, metadata !2075, metadata !DIExpression()), !dbg !3085
  %8 = and i8 %1, 31, !dbg !3090
  %9 = zext i8 %8 to i32, !dbg !3090
  call void @llvm.dbg.value(metadata i32 %9, metadata !2077, metadata !DIExpression()), !dbg !3085
  %10 = load i32, ptr %7, align 4, !dbg !3091, !tbaa !879
  %11 = lshr i32 %10, %9, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %11, metadata !2078, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3085
  %12 = and i32 %11, 1, !dbg !3093
  %13 = xor i32 %12, 1, !dbg !3093
  %14 = shl nuw i32 %13, %9, !dbg !3094
  %15 = xor i32 %14, %10, !dbg !3095
  store i32 %15, ptr %7, align 4, !dbg !3095, !tbaa !879
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3096
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3097
  ret ptr %16, !dbg !3098
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3099 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.value(metadata ptr %0, metadata !3077, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8 58, metadata !3078, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i64 -1, metadata !3051, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.value(metadata i8 58, metadata !3052, metadata !DIExpression()), !dbg !3105
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3107
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3053, metadata !DIExpression()), !dbg !3108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3109, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %2, metadata !2071, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 58, metadata !2072, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 1, metadata !2073, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i8 58, metadata !2074, metadata !DIExpression()), !dbg !3110
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3112
  call void @llvm.dbg.value(metadata ptr %3, metadata !2075, metadata !DIExpression()), !dbg !3110
  call void @llvm.dbg.value(metadata i32 26, metadata !2077, metadata !DIExpression()), !dbg !3110
  %4 = load i32, ptr %3, align 4, !dbg !3113, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %4, metadata !2078, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3110
  %5 = or i32 %4, 67108864, !dbg !3114
  store i32 %5, ptr %3, align 4, !dbg !3114, !tbaa !879
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3115
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3116
  ret ptr %6, !dbg !3117
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3118 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3051, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata i8 58, metadata !3052, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3125
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3053, metadata !DIExpression()), !dbg !3126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3127, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %3, metadata !2071, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 58, metadata !2072, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 1, metadata !2073, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8 58, metadata !2074, metadata !DIExpression()), !dbg !3128
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3130
  call void @llvm.dbg.value(metadata ptr %4, metadata !2075, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i32 26, metadata !2077, metadata !DIExpression()), !dbg !3128
  %5 = load i32, ptr %4, align 4, !dbg !3131, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %5, metadata !2078, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3128
  %6 = or i32 %5, 67108864, !dbg !3132
  store i32 %6, ptr %4, align 4, !dbg !3132, !tbaa !879
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3133
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3134
  ret ptr %7, !dbg !3135
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3136 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2957, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %0, metadata !3138, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i32 %1, metadata !3139, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata ptr %2, metadata !3140, metadata !DIExpression()), !dbg !3144
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3145
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3141, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata i32 %1, metadata !2952, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.value(metadata i32 0, metadata !2957, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3147
  %5 = icmp eq i32 %1, 10, !dbg !3148
  br i1 %5, label %6, label %7, !dbg !3149

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3150, !noalias !3151
  unreachable, !dbg !3150

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2957, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3147
  store i32 %1, ptr %4, align 8, !dbg !3154, !tbaa.struct !3058
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3154
  call void @llvm.dbg.value(metadata ptr %4, metadata !2071, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !2072, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 1, metadata !2073, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i8 58, metadata !2074, metadata !DIExpression()), !dbg !3155
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3157
  call void @llvm.dbg.value(metadata ptr %9, metadata !2075, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.value(metadata i32 26, metadata !2077, metadata !DIExpression()), !dbg !3155
  %10 = load i32, ptr %9, align 4, !dbg !3158, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %10, metadata !2078, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3155
  %11 = or i32 %10, 67108864, !dbg !3159
  store i32 %11, ptr %9, align 4, !dbg !3159, !tbaa !879
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3160
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3161
  ret ptr %12, !dbg !3162
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3163 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3167, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %1, metadata !3168, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %2, metadata !3169, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata ptr %3, metadata !3170, metadata !DIExpression()), !dbg !3171
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %2, metadata !3178, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 -1, metadata !3180, metadata !DIExpression()), !dbg !3182
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3184
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3181, metadata !DIExpression()), !dbg !3185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3186, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %5, metadata !2111, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %1, metadata !2112, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %2, metadata !2113, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %5, metadata !2111, metadata !DIExpression()), !dbg !3187
  store i32 10, ptr %5, align 8, !dbg !3189, !tbaa !2054
  %6 = icmp ne ptr %1, null, !dbg !3190
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3191
  br i1 %8, label %10, label %9, !dbg !3191

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3192
  unreachable, !dbg !3192

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3193
  store ptr %1, ptr %11, align 8, !dbg !3194, !tbaa !2125
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3195
  store ptr %2, ptr %12, align 8, !dbg !3196, !tbaa !2128
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3197
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3198
  ret ptr %13, !dbg !3199
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3173 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3172, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %1, metadata !3177, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %2, metadata !3178, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata ptr %3, metadata !3179, metadata !DIExpression()), !dbg !3200
  call void @llvm.dbg.value(metadata i64 %4, metadata !3180, metadata !DIExpression()), !dbg !3200
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3201
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3181, metadata !DIExpression()), !dbg !3202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3203, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %6, metadata !2111, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %1, metadata !2112, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %2, metadata !2113, metadata !DIExpression()), !dbg !3204
  call void @llvm.dbg.value(metadata ptr %6, metadata !2111, metadata !DIExpression()), !dbg !3204
  store i32 10, ptr %6, align 8, !dbg !3206, !tbaa !2054
  %7 = icmp ne ptr %1, null, !dbg !3207
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3208
  br i1 %9, label %11, label %10, !dbg !3208

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3209
  unreachable, !dbg !3209

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3210
  store ptr %1, ptr %12, align 8, !dbg !3211, !tbaa !2125
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3212
  store ptr %2, ptr %13, align 8, !dbg !3213, !tbaa !2128
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3214
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3215
  ret ptr %14, !dbg !3216
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3217 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3221, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %1, metadata !3222, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata ptr %2, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i32 0, metadata !3167, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %1, metadata !3169, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata ptr %2, metadata !3170, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 0, metadata !3172, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr %0, metadata !3177, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr %1, metadata !3178, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata ptr %2, metadata !3179, metadata !DIExpression()), !dbg !3227
  call void @llvm.dbg.value(metadata i64 -1, metadata !3180, metadata !DIExpression()), !dbg !3227
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3181, metadata !DIExpression()), !dbg !3230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3231, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %4, metadata !2111, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %0, metadata !2112, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %1, metadata !2113, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata ptr %4, metadata !2111, metadata !DIExpression()), !dbg !3232
  store i32 10, ptr %4, align 8, !dbg !3234, !tbaa !2054
  %5 = icmp ne ptr %0, null, !dbg !3235
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3236
  br i1 %7, label %9, label %8, !dbg !3236

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3237
  unreachable, !dbg !3237

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3238
  store ptr %0, ptr %10, align 8, !dbg !3239, !tbaa !2125
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3240
  store ptr %1, ptr %11, align 8, !dbg !3241, !tbaa !2128
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3242
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3243
  ret ptr %12, !dbg !3244
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3245 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3249, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata ptr %1, metadata !3250, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata ptr %2, metadata !3251, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %3, metadata !3252, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 0, metadata !3172, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %0, metadata !3177, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %1, metadata !3178, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata ptr %2, metadata !3179, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64 %3, metadata !3180, metadata !DIExpression()), !dbg !3254
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3256
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3181, metadata !DIExpression()), !dbg !3257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3258, !tbaa.struct !3058
  call void @llvm.dbg.value(metadata ptr %5, metadata !2111, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata ptr %0, metadata !2112, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata ptr %1, metadata !2113, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.value(metadata ptr %5, metadata !2111, metadata !DIExpression()), !dbg !3259
  store i32 10, ptr %5, align 8, !dbg !3261, !tbaa !2054
  %6 = icmp ne ptr %0, null, !dbg !3262
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3263
  br i1 %8, label %10, label %9, !dbg !3263

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3264
  unreachable, !dbg !3264

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3265
  store ptr %0, ptr %11, align 8, !dbg !3266, !tbaa !2125
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3267
  store ptr %1, ptr %12, align 8, !dbg !3268, !tbaa !2128
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3269
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3270
  ret ptr %13, !dbg !3271
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3276, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata ptr %1, metadata !3277, metadata !DIExpression()), !dbg !3279
  call void @llvm.dbg.value(metadata i64 %2, metadata !3278, metadata !DIExpression()), !dbg !3279
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3280
  ret ptr %4, !dbg !3281
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3282 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3286, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3287, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()), !dbg !3289
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !3291
  ret ptr %3, !dbg !3292
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3297, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata ptr %1, metadata !3298, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i32 %0, metadata !3276, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata ptr %1, metadata !3277, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.value(metadata i64 -1, metadata !3278, metadata !DIExpression()), !dbg !3300
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3302
  ret ptr %3, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !3304 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3308, metadata !DIExpression()), !dbg !3309
  call void @llvm.dbg.value(metadata i32 0, metadata !3297, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata ptr %0, metadata !3298, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3276, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata ptr %0, metadata !3277, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 -1, metadata !3278, metadata !DIExpression()), !dbg !3312
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !3314
  ret ptr %2, !dbg !3315
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @safe_write(i32 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #21 !dbg !3316 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3322, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata ptr %1, metadata !3323, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %2, metadata !3324, metadata !DIExpression()), !dbg !3330
  br label %4, !dbg !3331

4:                                                ; preds = %13, %3
  %5 = phi i64 [ 2146435072, %13 ], [ %2, %3 ]
  br label %6, !dbg !3332

6:                                                ; preds = %9, %4
  call void @llvm.dbg.value(metadata i64 %5, metadata !3324, metadata !DIExpression()), !dbg !3330
  %7 = tail call i64 @write(i32 noundef %0, ptr noundef %1, i64 noundef %5) #39, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %7, metadata !3325, metadata !DIExpression()), !dbg !3334
  %8 = icmp sgt i64 %7, -1, !dbg !3335
  br i1 %8, label %17, label %9, !dbg !3332

9:                                                ; preds = %6
  %10 = tail call ptr @__errno_location() #42, !dbg !3337
  %11 = load i32, ptr %10, align 4, !dbg !3337, !tbaa !879
  %12 = icmp eq i32 %11, 4, !dbg !3337
  br i1 %12, label %6, label %13, !dbg !3339, !llvm.loop !3340

13:                                               ; preds = %9
  %14 = icmp ne i32 %11, 22, !dbg !3343
  %15 = icmp slt i64 %5, 2146435073
  %16 = or i1 %15, %14, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %5, metadata !3324, metadata !DIExpression()), !dbg !3330
  br i1 %16, label %17, label %4

17:                                               ; preds = %13, %6
  ret i64 %7, !dbg !3346
}

; Function Attrs: nofree
declare !dbg !3347 noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !3350 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3389, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %1, metadata !3390, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %2, metadata !3391, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %3, metadata !3392, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata ptr %4, metadata !3393, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i64 %5, metadata !3394, metadata !DIExpression()), !dbg !3395
  %7 = icmp eq ptr %1, null, !dbg !3396
  br i1 %7, label %10, label %8, !dbg !3398

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.82, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !3399
  br label %12, !dbg !3399

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.83, ptr noundef %2, ptr noundef %3) #39, !dbg !3400
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.3.85, i32 noundef 5) #39, !dbg !3401
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !3401
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3402
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.5.87, i32 noundef 5) #39, !dbg !3403
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.88) #39, !dbg !3403
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %0), !dbg !3404
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
  ], !dbg !3405

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.7.89, i32 noundef 5) #39, !dbg !3406
  %21 = load ptr, ptr %4, align 8, !dbg !3406, !tbaa !819
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !3406
  br label %147, !dbg !3408

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.8.90, i32 noundef 5) #39, !dbg !3409
  %25 = load ptr, ptr %4, align 8, !dbg !3409, !tbaa !819
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3409
  %27 = load ptr, ptr %26, align 8, !dbg !3409, !tbaa !819
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !3409
  br label %147, !dbg !3410

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.9.91, i32 noundef 5) #39, !dbg !3411
  %31 = load ptr, ptr %4, align 8, !dbg !3411, !tbaa !819
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3411
  %33 = load ptr, ptr %32, align 8, !dbg !3411, !tbaa !819
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3411
  %35 = load ptr, ptr %34, align 8, !dbg !3411, !tbaa !819
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !3411
  br label %147, !dbg !3412

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.10.92, i32 noundef 5) #39, !dbg !3413
  %39 = load ptr, ptr %4, align 8, !dbg !3413, !tbaa !819
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3413
  %41 = load ptr, ptr %40, align 8, !dbg !3413, !tbaa !819
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3413
  %43 = load ptr, ptr %42, align 8, !dbg !3413, !tbaa !819
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3413
  %45 = load ptr, ptr %44, align 8, !dbg !3413, !tbaa !819
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !3413
  br label %147, !dbg !3414

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.11.93, i32 noundef 5) #39, !dbg !3415
  %49 = load ptr, ptr %4, align 8, !dbg !3415, !tbaa !819
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3415
  %51 = load ptr, ptr %50, align 8, !dbg !3415, !tbaa !819
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3415
  %53 = load ptr, ptr %52, align 8, !dbg !3415, !tbaa !819
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3415
  %55 = load ptr, ptr %54, align 8, !dbg !3415, !tbaa !819
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3415
  %57 = load ptr, ptr %56, align 8, !dbg !3415, !tbaa !819
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !3415
  br label %147, !dbg !3416

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.12.94, i32 noundef 5) #39, !dbg !3417
  %61 = load ptr, ptr %4, align 8, !dbg !3417, !tbaa !819
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3417
  %63 = load ptr, ptr %62, align 8, !dbg !3417, !tbaa !819
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3417
  %65 = load ptr, ptr %64, align 8, !dbg !3417, !tbaa !819
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3417
  %67 = load ptr, ptr %66, align 8, !dbg !3417, !tbaa !819
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3417
  %69 = load ptr, ptr %68, align 8, !dbg !3417, !tbaa !819
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3417
  %71 = load ptr, ptr %70, align 8, !dbg !3417, !tbaa !819
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !3417
  br label %147, !dbg !3418

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.13.95, i32 noundef 5) #39, !dbg !3419
  %75 = load ptr, ptr %4, align 8, !dbg !3419, !tbaa !819
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3419
  %77 = load ptr, ptr %76, align 8, !dbg !3419, !tbaa !819
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3419
  %79 = load ptr, ptr %78, align 8, !dbg !3419, !tbaa !819
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3419
  %81 = load ptr, ptr %80, align 8, !dbg !3419, !tbaa !819
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3419
  %83 = load ptr, ptr %82, align 8, !dbg !3419, !tbaa !819
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3419
  %85 = load ptr, ptr %84, align 8, !dbg !3419, !tbaa !819
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3419
  %87 = load ptr, ptr %86, align 8, !dbg !3419, !tbaa !819
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !3419
  br label %147, !dbg !3420

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.14.96, i32 noundef 5) #39, !dbg !3421
  %91 = load ptr, ptr %4, align 8, !dbg !3421, !tbaa !819
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3421
  %93 = load ptr, ptr %92, align 8, !dbg !3421, !tbaa !819
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3421
  %95 = load ptr, ptr %94, align 8, !dbg !3421, !tbaa !819
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3421
  %97 = load ptr, ptr %96, align 8, !dbg !3421, !tbaa !819
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3421
  %99 = load ptr, ptr %98, align 8, !dbg !3421, !tbaa !819
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3421
  %101 = load ptr, ptr %100, align 8, !dbg !3421, !tbaa !819
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3421
  %103 = load ptr, ptr %102, align 8, !dbg !3421, !tbaa !819
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3421
  %105 = load ptr, ptr %104, align 8, !dbg !3421, !tbaa !819
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !3421
  br label %147, !dbg !3422

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.15.97, i32 noundef 5) #39, !dbg !3423
  %109 = load ptr, ptr %4, align 8, !dbg !3423, !tbaa !819
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3423
  %111 = load ptr, ptr %110, align 8, !dbg !3423, !tbaa !819
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3423
  %113 = load ptr, ptr %112, align 8, !dbg !3423, !tbaa !819
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3423
  %115 = load ptr, ptr %114, align 8, !dbg !3423, !tbaa !819
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3423
  %117 = load ptr, ptr %116, align 8, !dbg !3423, !tbaa !819
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3423
  %119 = load ptr, ptr %118, align 8, !dbg !3423, !tbaa !819
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3423
  %121 = load ptr, ptr %120, align 8, !dbg !3423, !tbaa !819
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3423
  %123 = load ptr, ptr %122, align 8, !dbg !3423, !tbaa !819
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3423
  %125 = load ptr, ptr %124, align 8, !dbg !3423, !tbaa !819
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !3423
  br label %147, !dbg !3424

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.16.98, i32 noundef 5) #39, !dbg !3425
  %129 = load ptr, ptr %4, align 8, !dbg !3425, !tbaa !819
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !3425
  %131 = load ptr, ptr %130, align 8, !dbg !3425, !tbaa !819
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !3425
  %133 = load ptr, ptr %132, align 8, !dbg !3425, !tbaa !819
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !3425
  %135 = load ptr, ptr %134, align 8, !dbg !3425, !tbaa !819
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !3425
  %137 = load ptr, ptr %136, align 8, !dbg !3425, !tbaa !819
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !3425
  %139 = load ptr, ptr %138, align 8, !dbg !3425, !tbaa !819
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !3425
  %141 = load ptr, ptr %140, align 8, !dbg !3425, !tbaa !819
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !3425
  %143 = load ptr, ptr %142, align 8, !dbg !3425, !tbaa !819
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !3425
  %145 = load ptr, ptr %144, align 8, !dbg !3425, !tbaa !819
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !3425
  br label %147, !dbg !3426

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3427
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !3428 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3432, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %1, metadata !3433, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %2, metadata !3434, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %3, metadata !3435, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata ptr %4, metadata !3436, metadata !DIExpression()), !dbg !3438
  call void @llvm.dbg.value(metadata i64 0, metadata !3437, metadata !DIExpression()), !dbg !3438
  br label %6, !dbg !3439

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3441
  call void @llvm.dbg.value(metadata i64 %7, metadata !3437, metadata !DIExpression()), !dbg !3438
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !3442
  %9 = load ptr, ptr %8, align 8, !dbg !3442, !tbaa !819
  %10 = icmp eq ptr %9, null, !dbg !3444
  %11 = add i64 %7, 1, !dbg !3445
  call void @llvm.dbg.value(metadata i64 %11, metadata !3437, metadata !DIExpression()), !dbg !3438
  br i1 %10, label %12, label %6, !dbg !3444, !llvm.loop !3446

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !3448
  ret void, !dbg !3449
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !3450 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3465, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %1, metadata !3466, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %2, metadata !3467, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata ptr %3, metadata !3468, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3469, metadata !DIExpression()), !dbg !3474
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !3475
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3471, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i64 0, metadata !3470, metadata !DIExpression()), !dbg !3473
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !3470, metadata !DIExpression()), !dbg !3473
  %10 = icmp sgt i32 %9, -1, !dbg !3477
  br i1 %10, label %18, label %11, !dbg !3477

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !3477
  store i32 %12, ptr %7, align 8, !dbg !3477
  %13 = icmp ult i32 %9, -7, !dbg !3477
  br i1 %13, label %14, label %18, !dbg !3477

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !3477
  %16 = sext i32 %9 to i64, !dbg !3477
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !3477
  br label %22, !dbg !3477

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !3477
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !3477
  store ptr %21, ptr %4, align 8, !dbg !3477
  br label %22, !dbg !3477

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !3477
  %25 = load ptr, ptr %24, align 8, !dbg !3477
  store ptr %25, ptr %6, align 8, !dbg !3480, !tbaa !819
  %26 = icmp eq ptr %25, null, !dbg !3481
  br i1 %26, label %197, label %27, !dbg !3482

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 1, metadata !3470, metadata !DIExpression()), !dbg !3473
  %28 = icmp sgt i32 %23, -1, !dbg !3477
  br i1 %28, label %36, label %29, !dbg !3477

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !3477
  store i32 %30, ptr %7, align 8, !dbg !3477
  %31 = icmp ult i32 %23, -7, !dbg !3477
  br i1 %31, label %32, label %36, !dbg !3477

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !3477
  %34 = sext i32 %23 to i64, !dbg !3477
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !3477
  br label %40, !dbg !3477

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !3477
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !3477
  store ptr %39, ptr %4, align 8, !dbg !3477
  br label %40, !dbg !3477

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !3477
  %43 = load ptr, ptr %42, align 8, !dbg !3477
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !3483
  store ptr %43, ptr %44, align 8, !dbg !3480, !tbaa !819
  %45 = icmp eq ptr %43, null, !dbg !3481
  br i1 %45, label %197, label %46, !dbg !3482

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 2, metadata !3470, metadata !DIExpression()), !dbg !3473
  %47 = icmp sgt i32 %41, -1, !dbg !3477
  br i1 %47, label %55, label %48, !dbg !3477

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !3477
  store i32 %49, ptr %7, align 8, !dbg !3477
  %50 = icmp ult i32 %41, -7, !dbg !3477
  br i1 %50, label %51, label %55, !dbg !3477

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !3477
  %53 = sext i32 %41 to i64, !dbg !3477
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !3477
  br label %59, !dbg !3477

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !3477
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !3477
  store ptr %58, ptr %4, align 8, !dbg !3477
  br label %59, !dbg !3477

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !3477
  %62 = load ptr, ptr %61, align 8, !dbg !3477
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !3483
  store ptr %62, ptr %63, align 8, !dbg !3480, !tbaa !819
  %64 = icmp eq ptr %62, null, !dbg !3481
  br i1 %64, label %197, label %65, !dbg !3482

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 3, metadata !3470, metadata !DIExpression()), !dbg !3473
  %66 = icmp sgt i32 %60, -1, !dbg !3477
  br i1 %66, label %74, label %67, !dbg !3477

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !3477
  store i32 %68, ptr %7, align 8, !dbg !3477
  %69 = icmp ult i32 %60, -7, !dbg !3477
  br i1 %69, label %70, label %74, !dbg !3477

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !3477
  %72 = sext i32 %60 to i64, !dbg !3477
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !3477
  br label %78, !dbg !3477

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !3477
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !3477
  store ptr %77, ptr %4, align 8, !dbg !3477
  br label %78, !dbg !3477

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !3477
  %81 = load ptr, ptr %80, align 8, !dbg !3477
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !3483
  store ptr %81, ptr %82, align 8, !dbg !3480, !tbaa !819
  %83 = icmp eq ptr %81, null, !dbg !3481
  br i1 %83, label %197, label %84, !dbg !3482

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 4, metadata !3470, metadata !DIExpression()), !dbg !3473
  %85 = icmp sgt i32 %79, -1, !dbg !3477
  br i1 %85, label %93, label %86, !dbg !3477

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !3477
  store i32 %87, ptr %7, align 8, !dbg !3477
  %88 = icmp ult i32 %79, -7, !dbg !3477
  br i1 %88, label %89, label %93, !dbg !3477

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !3477
  %91 = sext i32 %79 to i64, !dbg !3477
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !3477
  br label %97, !dbg !3477

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !3477
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !3477
  store ptr %96, ptr %4, align 8, !dbg !3477
  br label %97, !dbg !3477

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !3477
  %100 = load ptr, ptr %99, align 8, !dbg !3477
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !3483
  store ptr %100, ptr %101, align 8, !dbg !3480, !tbaa !819
  %102 = icmp eq ptr %100, null, !dbg !3481
  br i1 %102, label %197, label %103, !dbg !3482

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 5, metadata !3470, metadata !DIExpression()), !dbg !3473
  %104 = icmp sgt i32 %98, -1, !dbg !3477
  br i1 %104, label %112, label %105, !dbg !3477

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !3477
  store i32 %106, ptr %7, align 8, !dbg !3477
  %107 = icmp ult i32 %98, -7, !dbg !3477
  br i1 %107, label %108, label %112, !dbg !3477

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !3477
  %110 = sext i32 %98 to i64, !dbg !3477
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !3477
  br label %116, !dbg !3477

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !3477
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !3477
  store ptr %115, ptr %4, align 8, !dbg !3477
  br label %116, !dbg !3477

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !3477
  %119 = load ptr, ptr %118, align 8, !dbg !3477
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !3483
  store ptr %119, ptr %120, align 8, !dbg !3480, !tbaa !819
  %121 = icmp eq ptr %119, null, !dbg !3481
  br i1 %121, label %197, label %122, !dbg !3482

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 6, metadata !3470, metadata !DIExpression()), !dbg !3473
  %123 = icmp sgt i32 %117, -1, !dbg !3477
  br i1 %123, label %131, label %124, !dbg !3477

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !3477
  store i32 %125, ptr %7, align 8, !dbg !3477
  %126 = icmp ult i32 %117, -7, !dbg !3477
  br i1 %126, label %127, label %131, !dbg !3477

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !3477
  %129 = sext i32 %117 to i64, !dbg !3477
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !3477
  br label %135, !dbg !3477

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !3477
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !3477
  store ptr %134, ptr %4, align 8, !dbg !3477
  br label %135, !dbg !3477

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !3477
  %138 = load ptr, ptr %137, align 8, !dbg !3477
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !3483
  store ptr %138, ptr %139, align 8, !dbg !3480, !tbaa !819
  %140 = icmp eq ptr %138, null, !dbg !3481
  br i1 %140, label %197, label %141, !dbg !3482

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 7, metadata !3470, metadata !DIExpression()), !dbg !3473
  %142 = icmp sgt i32 %136, -1, !dbg !3477
  br i1 %142, label %150, label %143, !dbg !3477

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !3477
  store i32 %144, ptr %7, align 8, !dbg !3477
  %145 = icmp ult i32 %136, -7, !dbg !3477
  br i1 %145, label %146, label %150, !dbg !3477

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !3477
  %148 = sext i32 %136 to i64, !dbg !3477
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !3477
  br label %154, !dbg !3477

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !3477
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !3477
  store ptr %153, ptr %4, align 8, !dbg !3477
  br label %154, !dbg !3477

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !3477
  %157 = load ptr, ptr %156, align 8, !dbg !3477
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !3483
  store ptr %157, ptr %158, align 8, !dbg !3480, !tbaa !819
  %159 = icmp eq ptr %157, null, !dbg !3481
  br i1 %159, label %197, label %160, !dbg !3482

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 8, metadata !3470, metadata !DIExpression()), !dbg !3473
  %161 = icmp sgt i32 %155, -1, !dbg !3477
  br i1 %161, label %169, label %162, !dbg !3477

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !3477
  store i32 %163, ptr %7, align 8, !dbg !3477
  %164 = icmp ult i32 %155, -7, !dbg !3477
  br i1 %164, label %165, label %169, !dbg !3477

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !3477
  %167 = sext i32 %155 to i64, !dbg !3477
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !3477
  br label %173, !dbg !3477

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !3477
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !3477
  store ptr %172, ptr %4, align 8, !dbg !3477
  br label %173, !dbg !3477

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !3477
  %176 = load ptr, ptr %175, align 8, !dbg !3477
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !3483
  store ptr %176, ptr %177, align 8, !dbg !3480, !tbaa !819
  %178 = icmp eq ptr %176, null, !dbg !3481
  br i1 %178, label %197, label %179, !dbg !3482

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.value(metadata i64 9, metadata !3470, metadata !DIExpression()), !dbg !3473
  %180 = icmp sgt i32 %174, -1, !dbg !3477
  br i1 %180, label %188, label %181, !dbg !3477

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !3477
  store i32 %182, ptr %7, align 8, !dbg !3477
  %183 = icmp ult i32 %174, -7, !dbg !3477
  br i1 %183, label %184, label %188, !dbg !3477

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !3477
  %186 = sext i32 %174 to i64, !dbg !3477
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !3477
  br label %191, !dbg !3477

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !3477
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !3477
  store ptr %190, ptr %4, align 8, !dbg !3477
  br label %191, !dbg !3477

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !3477
  %193 = load ptr, ptr %192, align 8, !dbg !3477
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !3483
  store ptr %193, ptr %194, align 8, !dbg !3480, !tbaa !819
  %195 = icmp eq ptr %193, null, !dbg !3481
  %196 = select i1 %195, i64 9, i64 10, !dbg !3482
  br label %197, !dbg !3482

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !3484
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !3485
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !3486
  ret void, !dbg !3486
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !3487 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3491, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %1, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %2, metadata !3493, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata ptr %3, metadata !3494, metadata !DIExpression()), !dbg !3496
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !3497
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3495, metadata !DIExpression()), !dbg !3498
  call void @llvm.va_start(ptr nonnull %5), !dbg !3499
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !3500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !3500, !tbaa.struct !1435
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !3500
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !3500
  call void @llvm.va_end(ptr nonnull %5), !dbg !3501
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !3502
  ret void, !dbg !3502
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !3503 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !3504, !tbaa !819
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.86, ptr noundef %1), !dbg !3504
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.17.103, i32 noundef 5) #39, !dbg !3505
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18) #39, !dbg !3505
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !3506
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.104, ptr noundef nonnull @.str.21) #39, !dbg !3506
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.84, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !3507
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23) #39, !dbg !3507
  ret void, !dbg !3508
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3509 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3514, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %1, metadata !3515, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata i64 %2, metadata !3516, metadata !DIExpression()), !dbg !3517
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %1, metadata !3521, metadata !DIExpression()), !dbg !3523
  call void @llvm.dbg.value(metadata i64 %2, metadata !3522, metadata !DIExpression()), !dbg !3523
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3525
  call void @llvm.dbg.value(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3531
  %5 = icmp eq ptr %4, null, !dbg !3533
  br i1 %5, label %6, label %7, !dbg !3535

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3536
  unreachable, !dbg !3536

7:                                                ; preds = %3
  ret ptr %4, !dbg !3537
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3519 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %1, metadata !3521, metadata !DIExpression()), !dbg !3538
  call void @llvm.dbg.value(metadata i64 %2, metadata !3522, metadata !DIExpression()), !dbg !3538
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3539
  call void @llvm.dbg.value(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3540
  %5 = icmp eq ptr %4, null, !dbg !3542
  br i1 %5, label %6, label %7, !dbg !3543

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3544
  unreachable, !dbg !3544

7:                                                ; preds = %3
  ret ptr %4, !dbg !3545
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3550, metadata !DIExpression()), !dbg !3551
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3552
  call void @llvm.dbg.value(metadata ptr %2, metadata !3526, metadata !DIExpression()), !dbg !3553
  %3 = icmp eq ptr %2, null, !dbg !3555
  br i1 %3, label %4, label %5, !dbg !3556

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3557
  unreachable, !dbg !3557

5:                                                ; preds = %1
  ret ptr %2, !dbg !3558
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !3559 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3560 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3564, metadata !DIExpression()), !dbg !3565
  call void @llvm.dbg.value(metadata i64 %0, metadata !3566, metadata !DIExpression()), !dbg !3570
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3572
  call void @llvm.dbg.value(metadata ptr %2, metadata !3526, metadata !DIExpression()), !dbg !3573
  %3 = icmp eq ptr %2, null, !dbg !3575
  br i1 %3, label %4, label %5, !dbg !3576

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3577
  unreachable, !dbg !3577

5:                                                ; preds = %1
  ret ptr %2, !dbg !3578
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3579 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3583, metadata !DIExpression()), !dbg !3584
  call void @llvm.dbg.value(metadata i64 %0, metadata !3550, metadata !DIExpression()), !dbg !3585
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !3587
  call void @llvm.dbg.value(metadata ptr %2, metadata !3526, metadata !DIExpression()), !dbg !3588
  %3 = icmp eq ptr %2, null, !dbg !3590
  br i1 %3, label %4, label %5, !dbg !3591

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3592
  unreachable, !dbg !3592

5:                                                ; preds = %1
  ret ptr %2, !dbg !3593
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3594 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata i64 %1, metadata !3599, metadata !DIExpression()), !dbg !3600
  call void @llvm.dbg.value(metadata ptr %0, metadata !3601, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3606
  %3 = icmp eq i64 %1, 0, !dbg !3608
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3608
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3609
  call void @llvm.dbg.value(metadata ptr %5, metadata !3526, metadata !DIExpression()), !dbg !3610
  %6 = icmp eq ptr %5, null, !dbg !3612
  br i1 %6, label %7, label %8, !dbg !3613

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3614
  unreachable, !dbg !3614

8:                                                ; preds = %2
  ret ptr %5, !dbg !3615
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3616 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3617 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3621, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata i64 %1, metadata !3622, metadata !DIExpression()), !dbg !3623
  call void @llvm.dbg.value(metadata ptr %0, metadata !3624, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i64 %1, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata ptr %0, metadata !3601, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3630
  %3 = icmp eq i64 %1, 0, !dbg !3632
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3632
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !3633
  call void @llvm.dbg.value(metadata ptr %5, metadata !3526, metadata !DIExpression()), !dbg !3634
  %6 = icmp eq ptr %5, null, !dbg !3636
  br i1 %6, label %7, label %8, !dbg !3637

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3638
  unreachable, !dbg !3638

8:                                                ; preds = %2
  ret ptr %5, !dbg !3639
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3640 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3644, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %1, metadata !3645, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata i64 %2, metadata !3646, metadata !DIExpression()), !dbg !3647
  call void @llvm.dbg.value(metadata ptr %0, metadata !3648, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %2, metadata !3652, metadata !DIExpression()), !dbg !3653
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !3655
  call void @llvm.dbg.value(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3656
  %5 = icmp eq ptr %4, null, !dbg !3658
  br i1 %5, label %6, label %7, !dbg !3659

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !3660
  unreachable, !dbg !3660

7:                                                ; preds = %3
  ret ptr %4, !dbg !3661
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3662 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3664, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata i64 %1, metadata !3665, metadata !DIExpression()), !dbg !3666
  call void @llvm.dbg.value(metadata ptr null, metadata !3518, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %0, metadata !3521, metadata !DIExpression()), !dbg !3667
  call void @llvm.dbg.value(metadata i64 %1, metadata !3522, metadata !DIExpression()), !dbg !3667
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3669
  call void @llvm.dbg.value(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3670
  %4 = icmp eq ptr %3, null, !dbg !3672
  br i1 %4, label %5, label %6, !dbg !3673

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3674
  unreachable, !dbg !3674

6:                                                ; preds = %2
  ret ptr %3, !dbg !3675
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3676 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3678, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata i64 %1, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.value(metadata ptr null, metadata !3644, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %0, metadata !3645, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata i64 %1, metadata !3646, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.value(metadata ptr null, metadata !3648, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %0, metadata !3651, metadata !DIExpression()), !dbg !3683
  call void @llvm.dbg.value(metadata i64 %1, metadata !3652, metadata !DIExpression()), !dbg !3683
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !3685
  call void @llvm.dbg.value(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3686
  %4 = icmp eq ptr %3, null, !dbg !3688
  br i1 %4, label %5, label %6, !dbg !3689

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3690
  unreachable, !dbg !3690

6:                                                ; preds = %2
  ret ptr %3, !dbg !3691
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !3692 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3696, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata ptr %1, metadata !3697, metadata !DIExpression()), !dbg !3698
  call void @llvm.dbg.value(metadata ptr %0, metadata !752, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %1, metadata !753, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 1, metadata !754, metadata !DIExpression()), !dbg !3699
  %3 = load i64, ptr %1, align 8, !dbg !3701, !tbaa !2774
  call void @llvm.dbg.value(metadata i64 %3, metadata !755, metadata !DIExpression()), !dbg !3699
  %4 = icmp eq ptr %0, null, !dbg !3702
  br i1 %4, label %5, label %8, !dbg !3704

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3705
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3708
  br label %15, !dbg !3708

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3709
  %10 = add nuw i64 %9, 1, !dbg !3709
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !3709
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3709
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %13, metadata !755, metadata !DIExpression()), !dbg !3699
  br i1 %12, label %14, label %15, !dbg !3712

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !3713
  unreachable, !dbg !3713

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3699
  call void @llvm.dbg.value(metadata i64 %16, metadata !755, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 %16, metadata !3521, metadata !DIExpression()), !dbg !3714
  call void @llvm.dbg.value(metadata i64 1, metadata !3522, metadata !DIExpression()), !dbg !3714
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !3716
  call void @llvm.dbg.value(metadata ptr %17, metadata !3526, metadata !DIExpression()), !dbg !3717
  %18 = icmp eq ptr %17, null, !dbg !3719
  br i1 %18, label %19, label %20, !dbg !3720

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !3721
  unreachable, !dbg !3721

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !752, metadata !DIExpression()), !dbg !3699
  store i64 %16, ptr %1, align 8, !dbg !3722, !tbaa !2774
  ret ptr %17, !dbg !3723
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !747 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !752, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %1, metadata !753, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata i64 %2, metadata !754, metadata !DIExpression()), !dbg !3724
  %4 = load i64, ptr %1, align 8, !dbg !3725, !tbaa !2774
  call void @llvm.dbg.value(metadata i64 %4, metadata !755, metadata !DIExpression()), !dbg !3724
  %5 = icmp eq ptr %0, null, !dbg !3726
  br i1 %5, label %6, label %13, !dbg !3727

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3728
  br i1 %7, label %8, label %20, !dbg !3729

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3730
  call void @llvm.dbg.value(metadata i64 %9, metadata !755, metadata !DIExpression()), !dbg !3724
  %10 = icmp ugt i64 %2, 128, !dbg !3732
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %12, metadata !755, metadata !DIExpression()), !dbg !3724
  br label %20, !dbg !3734

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3735
  %15 = add nuw i64 %14, 1, !dbg !3735
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3735
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3735
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %18, metadata !755, metadata !DIExpression()), !dbg !3724
  br i1 %17, label %19, label %20, !dbg !3736

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !3737
  unreachable, !dbg !3737

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3724
  call void @llvm.dbg.value(metadata i64 %21, metadata !755, metadata !DIExpression()), !dbg !3724
  call void @llvm.dbg.value(metadata ptr %0, metadata !3518, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %21, metadata !3521, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i64 %2, metadata !3522, metadata !DIExpression()), !dbg !3738
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !3740
  call void @llvm.dbg.value(metadata ptr %22, metadata !3526, metadata !DIExpression()), !dbg !3741
  %23 = icmp eq ptr %22, null, !dbg !3743
  br i1 %23, label %24, label %25, !dbg !3744

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !3745
  unreachable, !dbg !3745

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !752, metadata !DIExpression()), !dbg !3724
  store i64 %21, ptr %1, align 8, !dbg !3746, !tbaa !2774
  ret ptr %22, !dbg !3747
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !759 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !767, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %1, metadata !768, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %2, metadata !769, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %3, metadata !770, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %4, metadata !771, metadata !DIExpression()), !dbg !3748
  %6 = load i64, ptr %1, align 8, !dbg !3749, !tbaa !2774
  call void @llvm.dbg.value(metadata i64 %6, metadata !772, metadata !DIExpression()), !dbg !3748
  %7 = ashr i64 %6, 1, !dbg !3750
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3750
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3750
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3750
  call void @llvm.dbg.value(metadata i64 %10, metadata !773, metadata !DIExpression()), !dbg !3748
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3752
  call void @llvm.dbg.value(metadata i64 %11, metadata !773, metadata !DIExpression()), !dbg !3748
  %12 = icmp sgt i64 %3, -1, !dbg !3753
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3755
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3755
  call void @llvm.dbg.value(metadata i64 %15, metadata !773, metadata !DIExpression()), !dbg !3748
  %16 = icmp slt i64 %4, 0, !dbg !3756
  br i1 %16, label %17, label %30, !dbg !3756

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3756
  br i1 %18, label %19, label %24, !dbg !3756

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3756
  %21 = udiv i64 9223372036854775807, %20, !dbg !3756
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3756
  br i1 %23, label %46, label %43, !dbg !3756

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3756
  br i1 %25, label %43, label %26, !dbg !3756

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3756
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3756
  %29 = icmp ult i64 %28, %15, !dbg !3756
  br i1 %29, label %46, label %43, !dbg !3756

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3756
  br i1 %31, label %43, label %32, !dbg !3756

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3756
  br i1 %33, label %34, label %40, !dbg !3756

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3756
  br i1 %35, label %43, label %36, !dbg !3756

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3756
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3756
  %39 = icmp ult i64 %38, %4, !dbg !3756
  br i1 %39, label %46, label %43, !dbg !3756

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !3756
  br i1 %42, label %46, label %43, !dbg !3756

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !774, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3748
  %44 = mul i64 %15, %4, !dbg !3756
  call void @llvm.dbg.value(metadata i64 %44, metadata !774, metadata !DIExpression()), !dbg !3748
  %45 = icmp slt i64 %44, 128, !dbg !3756
  br i1 %45, label %46, label %52, !dbg !3756

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !775, metadata !DIExpression()), !dbg !3748
  %48 = sdiv i64 %47, %4, !dbg !3757
  call void @llvm.dbg.value(metadata i64 %48, metadata !773, metadata !DIExpression()), !dbg !3748
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %51, metadata !774, metadata !DIExpression()), !dbg !3748
  br label %52, !dbg !3761

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3748
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3748
  call void @llvm.dbg.value(metadata i64 %54, metadata !774, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %53, metadata !773, metadata !DIExpression()), !dbg !3748
  %55 = icmp eq ptr %0, null, !dbg !3762
  br i1 %55, label %56, label %57, !dbg !3764

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !3765, !tbaa !2774
  br label %57, !dbg !3766

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3767
  %59 = icmp slt i64 %58, %2, !dbg !3769
  br i1 %59, label %60, label %97, !dbg !3770

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3771
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3771
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3771
  call void @llvm.dbg.value(metadata i64 %63, metadata !773, metadata !DIExpression()), !dbg !3748
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !3772
  br i1 %66, label %96, label %67, !dbg !3772

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !3773

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3773
  br i1 %69, label %70, label %75, !dbg !3773

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3773
  %72 = udiv i64 9223372036854775807, %71, !dbg !3773
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3773
  br i1 %74, label %96, label %94, !dbg !3773

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3773
  br i1 %76, label %94, label %77, !dbg !3773

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3773
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3773
  %80 = icmp ult i64 %79, %63, !dbg !3773
  br i1 %80, label %96, label %94, !dbg !3773

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3773
  br i1 %82, label %94, label %83, !dbg !3773

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3773
  br i1 %84, label %85, label %91, !dbg !3773

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3773
  br i1 %86, label %94, label %87, !dbg !3773

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3773
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3773
  %90 = icmp ult i64 %89, %4, !dbg !3773
  br i1 %90, label %96, label %94, !dbg !3773

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !3773
  br i1 %93, label %96, label %94, !dbg !3773

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !774, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3748
  %95 = mul i64 %63, %4, !dbg !3773
  call void @llvm.dbg.value(metadata i64 %95, metadata !774, metadata !DIExpression()), !dbg !3748
  br label %97, !dbg !3774

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !3775
  unreachable, !dbg !3775

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3748
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3748
  call void @llvm.dbg.value(metadata i64 %99, metadata !774, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata i64 %98, metadata !773, metadata !DIExpression()), !dbg !3748
  call void @llvm.dbg.value(metadata ptr %0, metadata !3598, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata i64 %99, metadata !3599, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.value(metadata ptr %0, metadata !3601, metadata !DIExpression()), !dbg !3778
  call void @llvm.dbg.value(metadata i64 %99, metadata !3605, metadata !DIExpression()), !dbg !3778
  %100 = icmp eq i64 %99, 0, !dbg !3780
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3780
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !3781
  call void @llvm.dbg.value(metadata ptr %102, metadata !3526, metadata !DIExpression()), !dbg !3782
  %103 = icmp eq ptr %102, null, !dbg !3784
  br i1 %103, label %104, label %105, !dbg !3785

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !3786
  unreachable, !dbg !3786

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !767, metadata !DIExpression()), !dbg !3748
  store i64 %98, ptr %1, align 8, !dbg !3787, !tbaa !2774
  ret ptr %102, !dbg !3788
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3789 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3791, metadata !DIExpression()), !dbg !3792
  call void @llvm.dbg.value(metadata i64 %0, metadata !3793, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.value(metadata i64 1, metadata !3796, metadata !DIExpression()), !dbg !3797
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3799
  call void @llvm.dbg.value(metadata ptr %2, metadata !3526, metadata !DIExpression()), !dbg !3800
  %3 = icmp eq ptr %2, null, !dbg !3802
  br i1 %3, label %4, label %5, !dbg !3803

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3804
  unreachable, !dbg !3804

5:                                                ; preds = %1
  ret ptr %2, !dbg !3805
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !3806 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3794 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3793, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %1, metadata !3796, metadata !DIExpression()), !dbg !3807
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3808
  call void @llvm.dbg.value(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3809
  %4 = icmp eq ptr %3, null, !dbg !3811
  br i1 %4, label %5, label %6, !dbg !3812

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3813
  unreachable, !dbg !3813

6:                                                ; preds = %2
  ret ptr %3, !dbg !3814
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3815 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i64 %0, metadata !3819, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 1, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 1, metadata !3828, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i64 1, metadata !3828, metadata !DIExpression()), !dbg !3829
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !3831
  call void @llvm.dbg.value(metadata ptr %2, metadata !3526, metadata !DIExpression()), !dbg !3832
  %3 = icmp eq ptr %2, null, !dbg !3834
  br i1 %3, label %4, label %5, !dbg !3835

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3836
  unreachable, !dbg !3836

5:                                                ; preds = %1
  ret ptr %2, !dbg !3837
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #35 !dbg !3820 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3819, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %1, metadata !3822, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %0, metadata !3825, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()), !dbg !3839
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !3841
  call void @llvm.dbg.value(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3842
  %4 = icmp eq ptr %3, null, !dbg !3844
  br i1 %4, label %5, label %6, !dbg !3845

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3846
  unreachable, !dbg !3846

6:                                                ; preds = %2
  ret ptr %3, !dbg !3847
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3848 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %1, metadata !3853, metadata !DIExpression()), !dbg !3854
  call void @llvm.dbg.value(metadata i64 %1, metadata !3550, metadata !DIExpression()), !dbg !3855
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3857
  call void @llvm.dbg.value(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3858
  %4 = icmp eq ptr %3, null, !dbg !3860
  br i1 %4, label %5, label %6, !dbg !3861

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3862
  unreachable, !dbg !3862

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3863, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata ptr %0, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i64 %1, metadata !3867, metadata !DIExpression()), !dbg !3868
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3870
  ret ptr %3, !dbg !3871
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3872 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3876, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3877, metadata !DIExpression()), !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3564, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.value(metadata i64 %1, metadata !3566, metadata !DIExpression()), !dbg !3881
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !3883
  call void @llvm.dbg.value(metadata ptr %3, metadata !3526, metadata !DIExpression()), !dbg !3884
  %4 = icmp eq ptr %3, null, !dbg !3886
  br i1 %4, label %5, label %6, !dbg !3887

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3888
  unreachable, !dbg !3888

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !3863, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata ptr %0, metadata !3866, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3867, metadata !DIExpression()), !dbg !3889
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3891
  ret ptr %3, !dbg !3892
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3893 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3897, metadata !DIExpression()), !dbg !3900
  call void @llvm.dbg.value(metadata i64 %1, metadata !3898, metadata !DIExpression()), !dbg !3900
  %3 = add nsw i64 %1, 1, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %3, metadata !3564, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 %3, metadata !3566, metadata !DIExpression()), !dbg !3904
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3906
  call void @llvm.dbg.value(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3907
  %5 = icmp eq ptr %4, null, !dbg !3909
  br i1 %5, label %6, label %7, !dbg !3910

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !3911
  unreachable, !dbg !3911

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !3899, metadata !DIExpression()), !dbg !3900
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !3912
  store i8 0, ptr %8, align 1, !dbg !3913, !tbaa !888
  call void @llvm.dbg.value(metadata ptr %4, metadata !3863, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %0, metadata !3866, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 %1, metadata !3867, metadata !DIExpression()), !dbg !3914
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !3916
  ret ptr %4, !dbg !3917
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !3918 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3920, metadata !DIExpression()), !dbg !3921
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !3922
  %3 = add i64 %2, 1, !dbg !3923
  call void @llvm.dbg.value(metadata ptr %0, metadata !3852, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %3, metadata !3853, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %3, metadata !3550, metadata !DIExpression()), !dbg !3926
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !3928
  call void @llvm.dbg.value(metadata ptr %4, metadata !3526, metadata !DIExpression()), !dbg !3929
  %5 = icmp eq ptr %4, null, !dbg !3931
  br i1 %5, label %6, label %7, !dbg !3932

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !3933
  unreachable, !dbg !3933

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !3863, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata ptr %0, metadata !3866, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.value(metadata i64 %3, metadata !3867, metadata !DIExpression()), !dbg !3934
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !3936
  ret ptr %4, !dbg !3937
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3938 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !3943, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %1, metadata !3940, metadata !DIExpression()), !dbg !3944
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.117, ptr noundef nonnull @.str.2.118, i32 noundef 5) #39, !dbg !3943
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.119, ptr noundef %2) #39, !dbg !3943
  %3 = icmp eq i32 %1, 0, !dbg !3943
  tail call void @llvm.assume(i1 %3), !dbg !3943
  tail call void @abort() #41, !dbg !3945
  unreachable, !dbg !3945
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !3946 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3984, metadata !DIExpression()), !dbg !3989
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !3990
  call void @llvm.dbg.value(metadata i1 poison, metadata !3985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3989
  call void @llvm.dbg.value(metadata ptr %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  %3 = load i32, ptr %0, align 8, !dbg !3996, !tbaa !3997
  %4 = and i32 %3, 32, !dbg !3998
  %5 = icmp eq i32 %4, 0, !dbg !3998
  call void @llvm.dbg.value(metadata i1 %5, metadata !3987, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3989
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !3999
  %7 = icmp eq i32 %6, 0, !dbg !4000
  call void @llvm.dbg.value(metadata i1 %7, metadata !3988, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3989
  br i1 %5, label %8, label %18, !dbg !4001

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4003
  call void @llvm.dbg.value(metadata i1 %9, metadata !3985, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3989
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4004
  %11 = xor i1 %7, true, !dbg !4004
  %12 = sext i1 %11 to i32, !dbg !4004
  br i1 %10, label %21, label %13, !dbg !4004

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4005
  %15 = load i32, ptr %14, align 4, !dbg !4005, !tbaa !879
  %16 = icmp ne i32 %15, 9, !dbg !4006
  %17 = sext i1 %16 to i32, !dbg !4007
  br label %21, !dbg !4007

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4008

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4010
  store i32 0, ptr %20, align 4, !dbg !4012, !tbaa !879
  br label %21, !dbg !4010

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !3989
  ret i32 %22, !dbg !4013
}

; Function Attrs: nounwind
declare !dbg !4014 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4018 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4056, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 0, metadata !4057, metadata !DIExpression()), !dbg !4060
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4061
  call void @llvm.dbg.value(metadata i32 %2, metadata !4058, metadata !DIExpression()), !dbg !4060
  %3 = icmp slt i32 %2, 0, !dbg !4062
  br i1 %3, label %4, label %6, !dbg !4064

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4065
  br label %24, !dbg !4066

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4067
  %8 = icmp eq i32 %7, 0, !dbg !4067
  br i1 %8, label %13, label %9, !dbg !4069

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4070
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4071
  %12 = icmp eq i64 %11, -1, !dbg !4072
  br i1 %12, label %16, label %13, !dbg !4073

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4074
  %15 = icmp eq i32 %14, 0, !dbg !4074
  br i1 %15, label %16, label %18, !dbg !4075

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 0, metadata !4059, metadata !DIExpression()), !dbg !4060
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4076
  call void @llvm.dbg.value(metadata i32 %17, metadata !4059, metadata !DIExpression()), !dbg !4060
  br label %24, !dbg !4077

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4078
  %20 = load i32, ptr %19, align 4, !dbg !4078, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %20, metadata !4057, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.value(metadata i32 0, metadata !4059, metadata !DIExpression()), !dbg !4060
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4076
  call void @llvm.dbg.value(metadata i32 %21, metadata !4059, metadata !DIExpression()), !dbg !4060
  %22 = icmp eq i32 %20, 0, !dbg !4079
  br i1 %22, label %24, label %23, !dbg !4077

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4081, !tbaa !879
  call void @llvm.dbg.value(metadata i32 -1, metadata !4059, metadata !DIExpression()), !dbg !4060
  br label %24, !dbg !4083

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4060
  ret i32 %25, !dbg !4084
}

; Function Attrs: nofree nounwind
declare !dbg !4085 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4086 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4087 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4088 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4091 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4093, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i32 %1, metadata !4094, metadata !DIExpression()), !dbg !4099
  %3 = icmp ult i32 %0, 3, !dbg !4100
  br i1 %3, label %4, label %9, !dbg !4100

4:                                                ; preds = %2
  %5 = tail call i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) #39, !dbg !4101
  call void @llvm.dbg.value(metadata i32 %5, metadata !4095, metadata !DIExpression()), !dbg !4102
  %6 = tail call ptr @__errno_location() #42, !dbg !4103
  %7 = load i32, ptr %6, align 4, !dbg !4103, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %7, metadata !4098, metadata !DIExpression()), !dbg !4102
  %8 = tail call i32 @close(i32 noundef %0) #39, !dbg !4104
  store i32 %7, ptr %6, align 4, !dbg !4105, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %5, metadata !4093, metadata !DIExpression()), !dbg !4099
  br label %9, !dbg !4106

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %5, %4 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4093, metadata !DIExpression()), !dbg !4099
  ret i32 %10, !dbg !4107
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer_flag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !4108 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4110, metadata !DIExpression()), !dbg !4112
  call void @llvm.dbg.value(metadata i32 %1, metadata !4111, metadata !DIExpression()), !dbg !4112
  %3 = and i32 %1, 524288, !dbg !4113
  %4 = icmp eq i32 %3, 0, !dbg !4114
  %5 = select i1 %4, i32 0, i32 1030, !dbg !4114
  %6 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef %5, i32 noundef 3) #39, !dbg !4115
  ret i32 %6, !dbg !4116
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4155, metadata !DIExpression()), !dbg !4156
  %2 = icmp eq ptr %0, null, !dbg !4157
  br i1 %2, label %6, label %3, !dbg !4159

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4160
  %5 = icmp eq i32 %4, 0, !dbg !4160
  br i1 %5, label %6, label %8, !dbg !4161

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !4162
  br label %16, !dbg !4163

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !4164, metadata !DIExpression()), !dbg !4169
  %9 = load i32, ptr %0, align 8, !dbg !4171, !tbaa !3997
  %10 = and i32 %9, 256, !dbg !4173
  %11 = icmp eq i32 %10, 0, !dbg !4173
  br i1 %11, label %14, label %12, !dbg !4174

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !4175
  br label %14, !dbg !4175

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !4176
  br label %16, !dbg !4177

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !4156
  ret i32 %17, !dbg !4178
}

; Function Attrs: nofree nounwind
declare !dbg !4179 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !4180 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4219, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i64 %1, metadata !4220, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata i32 %2, metadata !4221, metadata !DIExpression()), !dbg !4225
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !4226
  %5 = load ptr, ptr %4, align 8, !dbg !4226, !tbaa !4227
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !4228
  %7 = load ptr, ptr %6, align 8, !dbg !4228, !tbaa !4229
  %8 = icmp eq ptr %5, %7, !dbg !4230
  br i1 %8, label %9, label %27, !dbg !4231

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !4232
  %11 = load ptr, ptr %10, align 8, !dbg !4232, !tbaa !1548
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !4233
  %13 = load ptr, ptr %12, align 8, !dbg !4233, !tbaa !4234
  %14 = icmp eq ptr %11, %13, !dbg !4235
  br i1 %14, label %15, label %27, !dbg !4236

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !4237
  %17 = load ptr, ptr %16, align 8, !dbg !4237, !tbaa !4238
  %18 = icmp eq ptr %17, null, !dbg !4239
  br i1 %18, label %19, label %27, !dbg !4240

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4241
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !4242
  call void @llvm.dbg.value(metadata i64 %21, metadata !4222, metadata !DIExpression()), !dbg !4243
  %22 = icmp eq i64 %21, -1, !dbg !4244
  br i1 %22, label %29, label %23, !dbg !4246

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !4247, !tbaa !3997
  %25 = and i32 %24, -17, !dbg !4247
  store i32 %25, ptr %0, align 8, !dbg !4247, !tbaa !3997
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !4248
  store i64 %21, ptr %26, align 8, !dbg !4249, !tbaa !4250
  br label %29, !dbg !4251

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4252
  br label %29, !dbg !4253

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !4225
  ret i32 %30, !dbg !4254
}

; Function Attrs: nofree nounwind
declare !dbg !4255 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4258 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4263, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr %1, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata i64 %2, metadata !4265, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr %3, metadata !4266, metadata !DIExpression()), !dbg !4268
  %5 = icmp eq ptr %1, null, !dbg !4269
  %6 = select i1 %5, ptr null, ptr %0, !dbg !4271
  %7 = select i1 %5, ptr @.str.134, ptr %1, !dbg !4271
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4271
  call void @llvm.dbg.value(metadata i64 %8, metadata !4265, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr %7, metadata !4264, metadata !DIExpression()), !dbg !4268
  call void @llvm.dbg.value(metadata ptr %6, metadata !4263, metadata !DIExpression()), !dbg !4268
  %9 = icmp eq ptr %3, null, !dbg !4272
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !4274
  call void @llvm.dbg.value(metadata ptr %10, metadata !4266, metadata !DIExpression()), !dbg !4268
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !4275
  call void @llvm.dbg.value(metadata i64 %11, metadata !4267, metadata !DIExpression()), !dbg !4268
  %12 = icmp ult i64 %11, -3, !dbg !4276
  br i1 %12, label %13, label %17, !dbg !4278

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !4279
  %15 = icmp eq i32 %14, 0, !dbg !4279
  br i1 %15, label %16, label %29, !dbg !4280

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !4281, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr %10, metadata !4288, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i32 0, metadata !4291, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.value(metadata i64 8, metadata !4292, metadata !DIExpression()), !dbg !4293
  store i64 0, ptr %10, align 1, !dbg !4295
  br label %29, !dbg !4296

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !4297
  br i1 %18, label %19, label %20, !dbg !4299

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !4300
  unreachable, !dbg !4300

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !4301

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !4303
  br i1 %23, label %29, label %24, !dbg !4304

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !4305
  br i1 %25, label %29, label %26, !dbg !4308

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !4309, !tbaa !888
  %28 = zext i8 %27 to i32, !dbg !4310
  store i32 %28, ptr %6, align 4, !dbg !4311, !tbaa !879
  br label %29, !dbg !4312

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !4268
  ret i64 %30, !dbg !4313
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !4314 i32 @mbsinit(ptr noundef) local_unnamed_addr #37

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_pipe2(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #10 !dbg !690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !697, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 %1, metadata !698, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 undef, metadata !699, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4320
  %3 = getelementptr inbounds i32, ptr %0, i64 1, !dbg !4321
  %4 = load <2 x i32>, ptr %0, align 4, !dbg !4322, !tbaa !879
  call void @llvm.dbg.value(metadata i32 undef, metadata !699, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 32)), !dbg !4320
  %5 = load i32, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4323, !tbaa !879
  %6 = icmp sgt i32 %5, -1, !dbg !4324
  br i1 %6, label %7, label %16, !dbg !4325

7:                                                ; preds = %2
  %8 = tail call i32 @pipe2(ptr noundef nonnull %0, i32 noundef %1) #39, !dbg !4326
  call void @llvm.dbg.value(metadata i32 %8, metadata !701, metadata !DIExpression()), !dbg !4327
  %9 = icmp slt i32 %8, 0, !dbg !4328
  br i1 %9, label %10, label %15, !dbg !4330

10:                                               ; preds = %7
  %11 = tail call ptr @__errno_location() #42, !dbg !4331
  %12 = load i32, ptr %11, align 4, !dbg !4331, !tbaa !879
  %13 = icmp eq i32 %12, 38, !dbg !4332
  br i1 %13, label %14, label %15, !dbg !4333

14:                                               ; preds = %10
  store i32 -1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4327, !tbaa !879
  br label %16

15:                                               ; preds = %7, %10
  store i32 1, ptr @rpl_pipe2.have_pipe2_really, align 4, !dbg !4327, !tbaa !879
  br label %73

16:                                               ; preds = %14, %2
  %17 = and i32 %1, -526337, !dbg !4334
  %18 = icmp eq i32 %17, 0, !dbg !4336
  br i1 %18, label %21, label %19, !dbg !4337

19:                                               ; preds = %16
  %20 = tail call ptr @__errno_location() #42, !dbg !4338
  store i32 22, ptr %20, align 4, !dbg !4340, !tbaa !879
  br label %73, !dbg !4341

21:                                               ; preds = %16
  %22 = tail call i32 @pipe(ptr noundef nonnull %0) #39, !dbg !4342
  %23 = icmp slt i32 %22, 0, !dbg !4344
  br i1 %23, label %73, label %24, !dbg !4345

24:                                               ; preds = %21
  %25 = and i32 %1, 2048, !dbg !4346
  %26 = icmp eq i32 %25, 0, !dbg !4346
  br i1 %26, label %45, label %27, !dbg !4347

27:                                               ; preds = %24
  %28 = load i32, ptr %3, align 4, !dbg !4348, !tbaa !879
  %29 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %28, i32 noundef 3, i32 noundef 0) #39, !dbg !4350
  call void @llvm.dbg.value(metadata i32 %29, metadata !705, metadata !DIExpression()), !dbg !4351
  %30 = icmp slt i32 %29, 0, !dbg !4352
  br i1 %30, label %66, label %31, !dbg !4353

31:                                               ; preds = %27
  %32 = load i32, ptr %3, align 4, !dbg !4354, !tbaa !879
  %33 = or i32 %29, 2048, !dbg !4355
  %34 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %32, i32 noundef 4, i32 noundef %33) #39, !dbg !4356
  %35 = icmp eq i32 %34, -1, !dbg !4357
  br i1 %35, label %66, label %36, !dbg !4358

36:                                               ; preds = %31
  %37 = load i32, ptr %0, align 4, !dbg !4359, !tbaa !879
  %38 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %37, i32 noundef 3, i32 noundef 0) #39, !dbg !4360
  call void @llvm.dbg.value(metadata i32 %38, metadata !705, metadata !DIExpression()), !dbg !4351
  %39 = icmp slt i32 %38, 0, !dbg !4361
  br i1 %39, label %66, label %40, !dbg !4362

40:                                               ; preds = %36
  %41 = load i32, ptr %0, align 4, !dbg !4363, !tbaa !879
  %42 = or i32 %38, 2048, !dbg !4364
  %43 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %41, i32 noundef 4, i32 noundef %42) #39, !dbg !4365
  %44 = icmp eq i32 %43, -1, !dbg !4366
  br i1 %44, label %66, label %45, !dbg !4367

45:                                               ; preds = %40, %24
  %46 = and i32 %1, 524288, !dbg !4368
  %47 = icmp eq i32 %46, 0, !dbg !4368
  br i1 %47, label %73, label %48, !dbg !4369

48:                                               ; preds = %45
  %49 = load i32, ptr %3, align 4, !dbg !4370, !tbaa !879
  %50 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %49, i32 noundef 1, i32 noundef 0) #39, !dbg !4372
  call void @llvm.dbg.value(metadata i32 %50, metadata !708, metadata !DIExpression()), !dbg !4373
  %51 = icmp slt i32 %50, 0, !dbg !4374
  br i1 %51, label %66, label %52, !dbg !4375

52:                                               ; preds = %48
  %53 = load i32, ptr %3, align 4, !dbg !4376, !tbaa !879
  %54 = or i32 %50, 1, !dbg !4377
  %55 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %53, i32 noundef 2, i32 noundef %54) #39, !dbg !4378
  %56 = icmp eq i32 %55, -1, !dbg !4379
  br i1 %56, label %66, label %57, !dbg !4380

57:                                               ; preds = %52
  %58 = load i32, ptr %0, align 4, !dbg !4381, !tbaa !879
  %59 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %58, i32 noundef 1, i32 noundef 0) #39, !dbg !4382
  call void @llvm.dbg.value(metadata i32 %59, metadata !708, metadata !DIExpression()), !dbg !4373
  %60 = icmp slt i32 %59, 0, !dbg !4383
  br i1 %60, label %66, label %61, !dbg !4384

61:                                               ; preds = %57
  %62 = load i32, ptr %0, align 4, !dbg !4385, !tbaa !879
  %63 = or i32 %59, 1, !dbg !4386
  %64 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %62, i32 noundef 2, i32 noundef %63) #39, !dbg !4387
  %65 = icmp eq i32 %64, -1, !dbg !4388
  br i1 %65, label %66, label %73, !dbg !4389

66:                                               ; preds = %61, %48, %52, %57, %40, %27, %31, %36
  call void @llvm.dbg.label(metadata !713), !dbg !4390
  %67 = tail call ptr @__errno_location() #42, !dbg !4391
  %68 = load i32, ptr %67, align 4, !dbg !4391, !tbaa !879
  call void @llvm.dbg.value(metadata i32 %68, metadata !711, metadata !DIExpression()), !dbg !4392
  %69 = load i32, ptr %0, align 4, !dbg !4393, !tbaa !879
  %70 = tail call i32 @close(i32 noundef %69) #39, !dbg !4394
  %71 = load i32, ptr %3, align 4, !dbg !4395, !tbaa !879
  %72 = tail call i32 @close(i32 noundef %71) #39, !dbg !4396
  store <2 x i32> %4, ptr %0, align 4, !dbg !4397, !tbaa !879
  store i32 %68, ptr %67, align 4, !dbg !4398, !tbaa !879
  br label %73

73:                                               ; preds = %61, %45, %21, %15, %66, %19
  %74 = phi i32 [ -1, %19 ], [ -1, %66 ], [ %8, %15 ], [ -1, %21 ], [ 0, %45 ], [ 0, %61 ]
  ret i32 %74, !dbg !4399
}

; Function Attrs: nounwind
declare !dbg !4400 i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4401 i32 @pipe(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !4404 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4406, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %1, metadata !4407, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata i64 %2, metadata !4408, metadata !DIExpression()), !dbg !4410
  %4 = icmp eq i64 %2, 0, !dbg !4411
  br i1 %4, label %8, label %5, !dbg !4411

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4411
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4411
  br i1 %7, label %13, label %8, !dbg !4411

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4410
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4410
  %9 = mul i64 %2, %1, !dbg !4411
  call void @llvm.dbg.value(metadata i64 %9, metadata !4409, metadata !DIExpression()), !dbg !4410
  call void @llvm.dbg.value(metadata ptr %0, metadata !4413, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i64 %9, metadata !4416, metadata !DIExpression()), !dbg !4417
  %10 = icmp eq i64 %9, 0, !dbg !4419
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4419
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !4420
  br label %15, !dbg !4421

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4409, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4410
  %14 = tail call ptr @__errno_location() #42, !dbg !4422
  store i32 12, ptr %14, align 4, !dbg !4424, !tbaa !879
  br label %15, !dbg !4425

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !4410
  ret ptr %16, !dbg !4426
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !4427 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4431, metadata !DIExpression()), !dbg !4436
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4432, metadata !DIExpression()), !dbg !4438
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !4439
  %4 = icmp eq i32 %3, 0, !dbg !4439
  br i1 %4, label %5, label %12, !dbg !4441

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !4442, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata ptr @.str.141, metadata !4445, metadata !DIExpression()), !dbg !4446
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.141, i64 2), !dbg !4449
  %7 = icmp eq i32 %6, 0, !dbg !4450
  br i1 %7, label %11, label %8, !dbg !4451

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !4442, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata ptr @.str.1.142, metadata !4445, metadata !DIExpression()), !dbg !4452
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.142, i64 6), !dbg !4454
  %10 = icmp eq i32 %9, 0, !dbg !4455
  br i1 %10, label %11, label %12, !dbg !4456

11:                                               ; preds = %8, %5
  br label %12, !dbg !4457

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !4436
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !4458
  ret i1 %13, !dbg !4458
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4459 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4463, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata ptr %1, metadata !4464, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64 %2, metadata !4465, metadata !DIExpression()), !dbg !4466
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !4467
  ret i32 %4, !dbg !4468
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !4469 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4473, metadata !DIExpression()), !dbg !4474
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !4475
  ret ptr %2, !dbg !4476
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !4477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4479, metadata !DIExpression()), !dbg !4481
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4482
  call void @llvm.dbg.value(metadata ptr %2, metadata !4480, metadata !DIExpression()), !dbg !4481
  ret ptr %2, !dbg !4483
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4484 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4486, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata ptr %1, metadata !4487, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i64 %2, metadata !4488, metadata !DIExpression()), !dbg !4493
  call void @llvm.dbg.value(metadata i32 %0, metadata !4479, metadata !DIExpression()), !dbg !4494
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !4496
  call void @llvm.dbg.value(metadata ptr %4, metadata !4480, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata ptr %4, metadata !4489, metadata !DIExpression()), !dbg !4493
  %5 = icmp eq ptr %4, null, !dbg !4497
  br i1 %5, label %6, label %9, !dbg !4498

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4499
  br i1 %7, label %19, label %8, !dbg !4502

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !4503, !tbaa !888
  br label %19, !dbg !4504

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !4505
  call void @llvm.dbg.value(metadata i64 %10, metadata !4490, metadata !DIExpression()), !dbg !4506
  %11 = icmp ult i64 %10, %2, !dbg !4507
  br i1 %11, label %12, label %14, !dbg !4509

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4510
  call void @llvm.dbg.value(metadata ptr %1, metadata !4512, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %13, metadata !4516, metadata !DIExpression()), !dbg !4517
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !4519
  br label %19, !dbg !4520

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4521
  br i1 %15, label %19, label %16, !dbg !4524

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4525
  call void @llvm.dbg.value(metadata ptr %1, metadata !4512, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata ptr %4, metadata !4515, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.value(metadata i64 %17, metadata !4516, metadata !DIExpression()), !dbg !4527
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !4529
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !4530
  store i8 0, ptr %18, align 1, !dbg !4531, !tbaa !888
  br label %19, !dbg !4532

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4533
  ret i32 %20, !dbg !4534
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
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
attributes #28 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #39 = { nounwind }
attributes #40 = { nounwind willreturn memory(read) }
attributes #41 = { noreturn nounwind }
attributes #42 = { nounwind willreturn memory(none) }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { cold }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!72, !295, !299, !314, !659, !375, !719, !722, !724, !392, !726, !412, !426, !477, !728, !736, !651, !743, !777, !779, !781, !783, !785, !787, !789, !675, !694, !791, !794, !796, !798}
!llvm.ident = !{!800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800, !800}
!llvm.module.flags = !{!801, !802, !803, !804, !805, !806, !807}

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
!72 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !93, globals: !102, splitDebugInlining: false, nameTableKind: None)
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
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 46, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
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
!295 = distinct !DICompileUnit(language: DW_LANG_C11, file: !292, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !296, splitDebugInlining: false, nameTableKind: None)
!296 = !{!290, !293}
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "file_name", scope: !299, file: !300, line: 45, type: !70, isLocal: true, isDefinition: true)
!299 = distinct !DICompileUnit(language: DW_LANG_C11, file: !300, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !301, splitDebugInlining: false, nameTableKind: None)
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
!313 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !314, file: !315, line: 66, type: !366, isLocal: false, isDefinition: true)
!314 = distinct !DICompileUnit(language: DW_LANG_C11, file: !315, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !316, globals: !317, splitDebugInlining: false, nameTableKind: None)
!315 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!316 = !{!94, !100}
!317 = !{!318, !320, !345, !347, !349, !351, !312, !353, !355, !357, !359, !364}
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !315, line: 272, type: !105, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "old_file_name", scope: !322, file: !315, line: 304, type: !70, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "verror_at_line", scope: !315, file: !315, line: 298, type: !323, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !338)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !95, !95, !70, !76, !70, !325}
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 52, baseType: !327)
!326 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !328, line: 14, baseType: !329)
!328 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !330, baseType: !331)
!330 = !DIFile(filename: "lib/error.c", directory: "/src")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !332)
!332 = !{!333, !334, !335, !336, !337}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !331, file: !330, baseType: !94, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !331, file: !330, baseType: !94, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !331, file: !330, baseType: !94, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !331, file: !330, baseType: !95, size: 32, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !331, file: !330, baseType: !95, size: 32, offset: 224)
!338 = !{!339, !340, !341, !342, !343, !344}
!339 = !DILocalVariable(name: "status", arg: 1, scope: !322, file: !315, line: 298, type: !95)
!340 = !DILocalVariable(name: "errnum", arg: 2, scope: !322, file: !315, line: 298, type: !95)
!341 = !DILocalVariable(name: "file_name", arg: 3, scope: !322, file: !315, line: 298, type: !70)
!342 = !DILocalVariable(name: "line_number", arg: 4, scope: !322, file: !315, line: 298, type: !76)
!343 = !DILocalVariable(name: "message", arg: 5, scope: !322, file: !315, line: 298, type: !70)
!344 = !DILocalVariable(name: "args", arg: 6, scope: !322, file: !315, line: 298, type: !325)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "old_line_number", scope: !322, file: !315, line: 305, type: !76, isLocal: true, isDefinition: true)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(scope: null, file: !315, line: 338, type: !19, isLocal: true, isDefinition: true)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !141, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !315, line: 346, type: !59, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "error_message_count", scope: !314, file: !315, line: 69, type: !76, isLocal: false, isDefinition: true)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !314, file: !315, line: 295, type: !95, isLocal: false, isDefinition: true)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !136, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !315, line: 208, type: !361, isLocal: true, isDefinition: true)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 21)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !315, line: 214, type: !105, isLocal: true, isDefinition: true)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null}
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !371, file: !372, line: 506, type: !95, isLocal: true, isDefinition: true)
!371 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !372, file: !372, line: 485, type: !373, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !377)
!372 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!373 = !DISubroutineType(types: !374)
!374 = !{!95, !95, !95}
!375 = distinct !DICompileUnit(language: DW_LANG_C11, file: !372, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !376, splitDebugInlining: false, nameTableKind: None)
!376 = !{!369}
!377 = !{!378, !379, !380, !381, !384}
!378 = !DILocalVariable(name: "fd", arg: 1, scope: !371, file: !372, line: 485, type: !95)
!379 = !DILocalVariable(name: "target", arg: 2, scope: !371, file: !372, line: 485, type: !95)
!380 = !DILocalVariable(name: "result", scope: !371, file: !372, line: 487, type: !95)
!381 = !DILocalVariable(name: "flags", scope: !382, file: !372, line: 530, type: !95)
!382 = distinct !DILexicalBlock(scope: !383, file: !372, line: 529, column: 5)
!383 = distinct !DILexicalBlock(scope: !371, file: !372, line: 528, column: 7)
!384 = !DILocalVariable(name: "saved_errno", scope: !385, file: !372, line: 533, type: !95)
!385 = distinct !DILexicalBlock(scope: !386, file: !372, line: 532, column: 9)
!386 = distinct !DILexicalBlock(scope: !382, file: !372, line: 531, column: 11)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !389, line: 60, type: !59, isLocal: true, isDefinition: true)
!389 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "long_options", scope: !392, file: !389, line: 34, type: !400, isLocal: true, isDefinition: true)
!392 = distinct !DICompileUnit(language: DW_LANG_C11, file: !389, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !393, splitDebugInlining: false, nameTableKind: None)
!393 = !{!387, !394, !396, !398, !390}
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !389, line: 112, type: !34, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !389, line: 36, type: !105, isLocal: true, isDefinition: true)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !389, line: 37, type: !141, isLocal: true, isDefinition: true)
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
!412 = distinct !DICompileUnit(language: DW_LANG_C11, file: !413, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !414, globals: !415, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!414 = !{!101}
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
!426 = distinct !DICompileUnit(language: DW_LANG_C11, file: !423, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !427, splitDebugInlining: false, nameTableKind: None)
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
!477 = distinct !DICompileUnit(language: DW_LANG_C11, file: !453, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !478, retainedTypes: !498, globals: !499, splitDebugInlining: false, nameTableKind: None)
!478 = !{!479, !493, !74}
!479 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !480, line: 42, baseType: !76, size: 32, elements: !481)
!480 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
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
!498 = !{!95, !96, !97}
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
!651 = distinct !DICompileUnit(language: DW_LANG_C11, file: !652, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !653, splitDebugInlining: false, nameTableKind: None)
!652 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!653 = !{!649}
!654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 376, elements: !655)
!655 = !{!656}
!656 = !DISubrange(count: 47)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(name: "exit_failure", scope: !659, file: !660, line: 24, type: !662, isLocal: false, isDefinition: true)
!659 = distinct !DICompileUnit(language: DW_LANG_C11, file: !660, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !661, splitDebugInlining: false, nameTableKind: None)
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
!675 = distinct !DICompileUnit(language: DW_LANG_C11, file: !672, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !676, globals: !677, splitDebugInlining: false, nameTableKind: None)
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
!694 = distinct !DICompileUnit(language: DW_LANG_C11, file: !691, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !695, splitDebugInlining: false, nameTableKind: None)
!695 = !{!688}
!696 = !{!697, !698, !699, !701, !705, !708, !711, !713}
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
!711 = !DILocalVariable(name: "saved_errno", scope: !712, file: !691, line: 157, type: !95)
!712 = distinct !DILexicalBlock(scope: !690, file: !691, line: 156, column: 3)
!713 = !DILabel(scope: !690, name: "fail", file: !691, line: 155)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !716, line: 35, type: !59, isLocal: true, isDefinition: true)
!716 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!717 = !DIGlobalVariableExpression(var: !718, expr: !DIExpression())
!718 = distinct !DIGlobalVariable(scope: null, file: !716, line: 35, type: !114, isLocal: true, isDefinition: true)
!719 = distinct !DICompileUnit(language: DW_LANG_C11, file: !720, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !721, splitDebugInlining: false, nameTableKind: None)
!720 = !DIFile(filename: "lib/full-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3e4d1fbb34cc594bb17b421b58eed3ca")
!721 = !{!70}
!722 = distinct !DICompileUnit(language: DW_LANG_C11, file: !723, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!723 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!724 = distinct !DICompileUnit(language: DW_LANG_C11, file: !725, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!725 = !DIFile(filename: "lib/isapipe.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5445de1f00883805631d924b7433dad7")
!726 = distinct !DICompileUnit(language: DW_LANG_C11, file: !727, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!727 = !DIFile(filename: "lib/pipe2-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f5a0d0feff89b6f036d8f7a6e8480abb")
!728 = distinct !DICompileUnit(language: DW_LANG_C11, file: !729, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !730, retainedTypes: !735, splitDebugInlining: false, nameTableKind: None)
!729 = !DIFile(filename: "lib/safe-write.c", directory: "/src", checksumkind: CSK_MD5, checksum: "868d9fdfbe37109ce7387a63f56e5cc3")
!730 = !{!731}
!731 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !732, line: 36, baseType: !76, size: 32, elements: !733)
!732 = !DIFile(filename: "./lib/sys-limits.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6cbf2bea168df2a7bb951ccec5cf6fff")
!733 = !{!734}
!734 = !DIEnumerator(name: "SYS_BUFSIZE_MAX", value: 2146435072)
!735 = !{!97}
!736 = distinct !DICompileUnit(language: DW_LANG_C11, file: !569, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !737, retainedTypes: !741, globals: !742, splitDebugInlining: false, nameTableKind: None)
!737 = !{!738}
!738 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !569, line: 40, baseType: !76, size: 32, elements: !739)
!739 = !{!740}
!740 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!741 = !{!94}
!742 = !{!567, !570, !572, !574, !576, !578, !583, !588, !590, !595, !600, !605, !610, !612, !617, !622, !627, !632, !634, !636, !638, !640, !642, !644}
!743 = distinct !DICompileUnit(language: DW_LANG_C11, file: !744, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !745, retainedTypes: !776, splitDebugInlining: false, nameTableKind: None)
!744 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!745 = !{!746, !758}
!746 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !747, file: !744, line: 188, baseType: !76, size: 32, elements: !756)
!747 = distinct !DISubprogram(name: "x2nrealloc", scope: !744, file: !744, line: 176, type: !748, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !751)
!748 = !DISubroutineType(types: !749)
!749 = !{!94, !94, !750, !97}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!751 = !{!752, !753, !754, !755}
!752 = !DILocalVariable(name: "p", arg: 1, scope: !747, file: !744, line: 176, type: !94)
!753 = !DILocalVariable(name: "pn", arg: 2, scope: !747, file: !744, line: 176, type: !750)
!754 = !DILocalVariable(name: "s", arg: 3, scope: !747, file: !744, line: 176, type: !97)
!755 = !DILocalVariable(name: "n", scope: !747, file: !744, line: 178, type: !97)
!756 = !{!757}
!757 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!758 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !759, file: !744, line: 228, baseType: !76, size: 32, elements: !756)
!759 = distinct !DISubprogram(name: "xpalloc", scope: !744, file: !744, line: 223, type: !760, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !766)
!760 = !DISubroutineType(types: !761)
!761 = !{!94, !94, !762, !763, !765, !763}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !764, line: 130, baseType: !765)
!764 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !98, line: 35, baseType: !260)
!766 = !{!767, !768, !769, !770, !771, !772, !773, !774, !775}
!767 = !DILocalVariable(name: "pa", arg: 1, scope: !759, file: !744, line: 223, type: !94)
!768 = !DILocalVariable(name: "pn", arg: 2, scope: !759, file: !744, line: 223, type: !762)
!769 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !759, file: !744, line: 223, type: !763)
!770 = !DILocalVariable(name: "n_max", arg: 4, scope: !759, file: !744, line: 223, type: !765)
!771 = !DILocalVariable(name: "s", arg: 5, scope: !759, file: !744, line: 223, type: !763)
!772 = !DILocalVariable(name: "n0", scope: !759, file: !744, line: 230, type: !763)
!773 = !DILocalVariable(name: "n", scope: !759, file: !744, line: 237, type: !763)
!774 = !DILocalVariable(name: "nbytes", scope: !759, file: !744, line: 248, type: !763)
!775 = !DILocalVariable(name: "adjusted_nbytes", scope: !759, file: !744, line: 252, type: !763)
!776 = !{!101, !94, !219, !260, !99}
!777 = distinct !DICompileUnit(language: DW_LANG_C11, file: !665, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !778, splitDebugInlining: false, nameTableKind: None)
!778 = !{!663, !666, !668}
!779 = distinct !DICompileUnit(language: DW_LANG_C11, file: !780, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!780 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!781 = distinct !DICompileUnit(language: DW_LANG_C11, file: !782, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!782 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!783 = distinct !DICompileUnit(language: DW_LANG_C11, file: !784, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!784 = !DIFile(filename: "lib/fd-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "63ab878cf4b441e9798f87a8e3963108")
!785 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!786 = !DIFile(filename: "lib/dup-safer-flag.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad0f64dd333db5cafacb6809a74d5848")
!787 = distinct !DICompileUnit(language: DW_LANG_C11, file: !788, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !741, splitDebugInlining: false, nameTableKind: None)
!788 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!789 = distinct !DICompileUnit(language: DW_LANG_C11, file: !790, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !741, splitDebugInlining: false, nameTableKind: None)
!790 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!791 = distinct !DICompileUnit(language: DW_LANG_C11, file: !792, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !793, splitDebugInlining: false, nameTableKind: None)
!792 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!793 = !{!219, !99, !94}
!794 = distinct !DICompileUnit(language: DW_LANG_C11, file: !716, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !795, splitDebugInlining: false, nameTableKind: None)
!795 = !{!714, !717}
!796 = distinct !DICompileUnit(language: DW_LANG_C11, file: !797, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!797 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!798 = distinct !DICompileUnit(language: DW_LANG_C11, file: !799, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !741, splitDebugInlining: false, nameTableKind: None)
!799 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!800 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!801 = !{i32 7, !"Dwarf Version", i32 5}
!802 = !{i32 2, !"Debug Info Version", i32 3}
!803 = !{i32 1, !"wchar_size", i32 4}
!804 = !{i32 8, !"PIC Level", i32 2}
!805 = !{i32 7, !"PIE Level", i32 2}
!806 = !{i32 7, !"uwtable", i32 2}
!807 = !{i32 7, !"frame-pointer", i32 1}
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
!847 = !DILocation(line: 857, column: 3, scope: !829, inlinedAt: !846)
!848 = !DILocation(line: 861, column: 29, scope: !829, inlinedAt: !846)
!849 = !DILocation(line: 862, column: 7, scope: !850, inlinedAt: !846)
!850 = distinct !DILexicalBlock(scope: !829, file: !67, line: 862, column: 7)
!851 = !DILocation(line: 862, column: 19, scope: !850, inlinedAt: !846)
!852 = !DILocation(line: 862, column: 22, scope: !850, inlinedAt: !846)
!853 = !DILocation(line: 862, column: 7, scope: !829, inlinedAt: !846)
!854 = !DILocation(line: 868, column: 7, scope: !855, inlinedAt: !846)
!855 = distinct !DILexicalBlock(scope: !850, file: !67, line: 863, column: 5)
!856 = !DILocation(line: 870, column: 5, scope: !855, inlinedAt: !846)
!857 = !DILocation(line: 875, column: 3, scope: !829, inlinedAt: !846)
!858 = !DILocation(line: 877, column: 3, scope: !829, inlinedAt: !846)
!859 = !DILocation(line: 58, column: 3, scope: !808)
!860 = !DISubprogram(name: "dcgettext", scope: !861, file: !861, line: 51, type: !862, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!861 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!862 = !DISubroutineType(types: !863)
!863 = !{!101, !70, !70, !95}
!864 = !{}
!865 = !DISubprogram(name: "__fprintf_chk", scope: !866, file: !866, line: 93, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!866 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!867 = !DISubroutineType(types: !868)
!868 = !{!95, !869, !95, !870, null}
!869 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !232)
!870 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!871 = !DISubprogram(name: "__printf_chk", scope: !866, file: !866, line: 95, type: !872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!872 = !DISubroutineType(types: !873)
!873 = !{!95, !95, !870, null}
!874 = !DISubprogram(name: "fputs_unlocked", scope: !326, file: !326, line: 691, type: !875, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
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
!991 = !DISubprogram(name: "setlocale", scope: !992, file: !992, line: 122, type: !993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!992 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!993 = !DISubroutineType(types: !994)
!994 = !{!101, !95, !70}
!995 = !DISubprogram(name: "strncmp", scope: !996, file: !996, line: 159, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!996 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!997 = !DISubroutineType(types: !998)
!998 = !{!95, !70, !70, !97}
!999 = !DISubprogram(name: "exit", scope: !1000, file: !1000, line: 624, type: !809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1000 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1001 = !DISubprogram(name: "getenv", scope: !1000, file: !1000, line: 641, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!101, !70}
!1004 = !DISubprogram(name: "strcmp", scope: !996, file: !996, line: 156, type: !1005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!95, !70, !70}
!1007 = !DISubprogram(name: "strspn", scope: !996, file: !996, line: 297, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!99, !70, !70}
!1010 = !DISubprogram(name: "strchr", scope: !996, file: !996, line: 246, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!101, !70, !95}
!1013 = !DISubprogram(name: "__ctype_b_loc", scope: !75, file: !75, line: 79, type: !1014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1019 = !DISubprogram(name: "strcspn", scope: !996, file: !996, line: 293, type: !1008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1020 = !DISubprogram(name: "fwrite_unlocked", scope: !326, file: !326, line: 704, type: !1021, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
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
!1044 = !DILocalVariable(name: "copysize", scope: !1026, file: !2, line: 263, type: !763)
!1045 = !DILocation(line: 0, scope: !1026)
!1046 = !DILocation(line: 204, column: 21, scope: !1026)
!1047 = !DILocation(line: 204, column: 3, scope: !1026)
!1048 = !DILocation(line: 205, column: 3, scope: !1026)
!1049 = !DILocation(line: 206, column: 3, scope: !1026)
!1050 = !DILocation(line: 207, column: 3, scope: !1026)
!1051 = !DILocation(line: 209, column: 3, scope: !1026)
!1052 = !DILocation(line: 212, column: 36, scope: !1026)
!1053 = !DILocation(line: 212, column: 58, scope: !1026)
!1054 = !DILocation(line: 211, column: 3, scope: !1026)
!1055 = !DILocation(line: 215, column: 28, scope: !1026)
!1056 = !DILocation(line: 215, column: 26, scope: !1026)
!1057 = !DILocation(line: 216, column: 29, scope: !1026)
!1058 = !DILocation(line: 217, column: 14, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 217, column: 7)
!1060 = !DILocation(line: 217, column: 7, scope: !1026)
!1061 = !DILocation(line: 218, column: 17, scope: !1059)
!1062 = !DILocation(line: 218, column: 20, scope: !1059)
!1063 = !DILocation(line: 218, column: 5, scope: !1059)
!1064 = !DILocation(line: 227, column: 36, scope: !1039)
!1065 = !DILocation(line: 227, column: 28, scope: !1039)
!1066 = !DILocation(line: 0, scope: !1039)
!1067 = !DILocation(line: 228, column: 16, scope: !1039)
!1068 = !DILocation(line: 229, column: 20, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 229, column: 11)
!1070 = !DILocation(line: 229, column: 24, scope: !1069)
!1071 = !DILocation(line: 230, column: 11, scope: !1069)
!1072 = !DILocation(line: 230, column: 24, scope: !1069)
!1073 = !DILocation(line: 230, column: 38, scope: !1069)
!1074 = !DILocation(line: 230, column: 45, scope: !1069)
!1075 = !DILocation(line: 230, column: 42, scope: !1069)
!1076 = !DILocation(line: 229, column: 11, scope: !1039)
!1077 = !DILocation(line: 228, column: 31, scope: !1039)
!1078 = !DILocation(line: 236, column: 16, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 236, column: 7)
!1080 = !DILocation(line: 236, column: 7, scope: !1026)
!1081 = !DILocation(line: 272, column: 37, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 270, column: 5)
!1083 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 268, column: 7)
!1084 = !DILocation(line: 249, column: 15, scope: !1026)
!1085 = !DILocation(line: 249, column: 51, scope: !1026)
!1086 = !DILocation(line: 252, column: 3, scope: !1026)
!1087 = !DILocation(line: 254, column: 36, scope: !1043)
!1088 = !DILocation(line: 254, column: 28, scope: !1043)
!1089 = !DILocation(line: 0, scope: !1043)
!1090 = !DILocation(line: 255, column: 11, scope: !1043)
!1091 = !DILocation(line: 256, column: 21, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 255, column: 11)
!1093 = !DILocalVariable(name: "__dest", arg: 1, scope: !1094, file: !1095, line: 26, type: !1098)
!1094 = distinct !DISubprogram(name: "memcpy", scope: !1095, file: !1095, line: 26, type: !1096, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1099)
!1095 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!94, !1098, !1023, !97}
!1098 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!1099 = !{!1093, !1100, !1101}
!1100 = !DILocalVariable(name: "__src", arg: 2, scope: !1094, file: !1095, line: 26, type: !1023)
!1101 = !DILocalVariable(name: "__len", arg: 3, scope: !1094, file: !1095, line: 26, type: !97)
!1102 = !DILocation(line: 0, scope: !1094, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 256, column: 9, scope: !1092)
!1104 = !DILocation(line: 29, column: 10, scope: !1094, inlinedAt: !1103)
!1105 = !DILocation(line: 256, column: 9, scope: !1092)
!1106 = !DILocation(line: 257, column: 15, scope: !1043)
!1107 = !DILocation(line: 258, column: 18, scope: !1043)
!1108 = !DILocation(line: 258, column: 7, scope: !1043)
!1109 = !DILocation(line: 258, column: 22, scope: !1043)
!1110 = !DILocation(line: 260, column: 10, scope: !1026)
!1111 = !DILocation(line: 260, column: 21, scope: !1026)
!1112 = !DILocation(line: 259, column: 5, scope: !1043)
!1113 = distinct !{!1113, !1086, !1114, !926}
!1114 = !DILocation(line: 260, column: 34, scope: !1026)
!1115 = !DILocation(line: 261, column: 20, scope: !1026)
!1116 = !DILocation(line: 268, column: 7, scope: !1083)
!1117 = !DILocation(line: 268, column: 49, scope: !1083)
!1118 = !DILocation(line: 269, column: 7, scope: !1083)
!1119 = !DILocalVariable(name: "buf", arg: 1, scope: !1120, file: !2, line: 113, type: !70)
!1120 = distinct !DISubprogram(name: "splice_write", scope: !2, file: !2, line: 113, type: !1121, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!219, !70, !763}
!1123 = !{!1119, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1141, !1143, !1146, !1149, !1151, !1154}
!1124 = !DILocalVariable(name: "copysize", arg: 2, scope: !1120, file: !2, line: 113, type: !763)
!1125 = !DILocalVariable(name: "output_started", scope: !1120, file: !2, line: 115, type: !219)
!1126 = !DILocalVariable(name: "page_size", scope: !1120, file: !2, line: 117, type: !763)
!1127 = !DILocalVariable(name: "stdout_is_pipe", scope: !1120, file: !2, line: 119, type: !219)
!1128 = !DILocalVariable(name: "pipefd", scope: !1120, file: !2, line: 123, type: !700)
!1129 = !DILocalVariable(name: "splice_bufsize", scope: !1120, file: !2, line: 124, type: !763)
!1130 = !DILocalVariable(name: "splice_buf", scope: !1120, file: !2, line: 125, type: !101)
!1131 = !DILocalVariable(name: "vmsplice_fd", scope: !1120, file: !2, line: 149, type: !95)
!1132 = !DILocalVariable(name: "iov", scope: !1133, file: !2, line: 153, type: !1136)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 152, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 151, column: 3)
!1135 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 151, column: 3)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1137, line: 26, size: 128, elements: !1138)
!1137 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1136, file: !1137, line: 28, baseType: !94, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1136, file: !1137, line: 29, baseType: !97, size: 64, offset: 64)
!1141 = !DILocalVariable(name: "flags", scope: !1142, file: !2, line: 161, type: !76)
!1142 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 157, column: 9)
!1143 = !DILocalVariable(name: "n", scope: !1142, file: !2, line: 162, type: !1144)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !326, line: 77, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !259, line: 194, baseType: !260)
!1146 = !DILocalVariable(name: "remaining", scope: !1147, file: !2, line: 174, type: !763)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !2, line: 173, column: 9)
!1148 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 172, column: 11)
!1149 = !DILocalVariable(name: "s", scope: !1150, file: !2, line: 177, type: !1144)
!1150 = distinct !DILexicalBlock(scope: !1147, file: !2, line: 176, column: 13)
!1151 = !DILocalVariable(name: "saved_errno", scope: !1152, file: !2, line: 190, type: !95)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !2, line: 189, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 188, column: 7)
!1154 = !DILabel(scope: !1120, name: "done", file: !2, line: 187)
!1155 = !DILocation(line: 0, scope: !1120, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 269, column: 10, scope: !1083)
!1157 = !DILocation(line: 117, column: 21, scope: !1120, inlinedAt: !1156)
!1158 = !DILocation(line: 119, column: 25, scope: !1120, inlinedAt: !1156)
!1159 = !DILocation(line: 119, column: 49, scope: !1120, inlinedAt: !1156)
!1160 = !DILocation(line: 123, column: 3, scope: !1120, inlinedAt: !1156)
!1161 = !DILocation(line: 123, column: 7, scope: !1120, inlinedAt: !1156)
!1162 = !DILocation(line: 127, column: 7, scope: !1120, inlinedAt: !1156)
!1163 = !DILocalVariable(name: "fd", arg: 1, scope: !1164, file: !2, line: 89, type: !95)
!1164 = distinct !DISubprogram(name: "pipe_splice_size", scope: !2, file: !2, line: 89, type: !1165, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1167)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!763, !95, !763}
!1167 = !{!1163, !1168, !1169, !1170}
!1168 = !DILocalVariable(name: "copysize", arg: 2, scope: !1164, file: !2, line: 89, type: !763)
!1169 = !DILocalVariable(name: "pipe_cap", scope: !1164, file: !2, line: 91, type: !95)
!1170 = !DILocalVariable(name: "buf_cap", scope: !1164, file: !2, line: 99, type: !97)
!1171 = !DILocation(line: 0, scope: !1164, inlinedAt: !1172)
!1172 = distinct !DILocation(line: 128, column: 22, scope: !1173, inlinedAt: !1156)
!1173 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 127, column: 7)
!1174 = !DILocation(line: 93, column: 19, scope: !1175, inlinedAt: !1172)
!1175 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 93, column: 7)
!1176 = !DILocation(line: 93, column: 63, scope: !1175, inlinedAt: !1172)
!1177 = !DILocation(line: 93, column: 7, scope: !1164, inlinedAt: !1172)
!1178 = !DILocation(line: 94, column: 16, scope: !1175, inlinedAt: !1172)
!1179 = !DILocation(line: 94, column: 5, scope: !1175, inlinedAt: !1172)
!1180 = !DILocation(line: 131, column: 11, scope: !1181, inlinedAt: !1156)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 131, column: 11)
!1182 = distinct !DILexicalBlock(scope: !1173, file: !2, line: 130, column: 5)
!1183 = !DILocation(line: 131, column: 29, scope: !1181, inlinedAt: !1156)
!1184 = !DILocation(line: 131, column: 11, scope: !1182, inlinedAt: !1156)
!1185 = !DILocation(line: 198, column: 1, scope: !1120, inlinedAt: !1156)
!1186 = !DILocation(line: 268, column: 7, scope: !1026)
!1187 = !DILocation(line: 133, column: 42, scope: !1182, inlinedAt: !1156)
!1188 = !DILocation(line: 0, scope: !1164, inlinedAt: !1189)
!1189 = distinct !DILocation(line: 133, column: 24, scope: !1182, inlinedAt: !1156)
!1190 = !DILocation(line: 93, column: 19, scope: !1175, inlinedAt: !1189)
!1191 = !DILocation(line: 93, column: 63, scope: !1175, inlinedAt: !1189)
!1192 = !DILocation(line: 93, column: 7, scope: !1164, inlinedAt: !1189)
!1193 = !DILocation(line: 94, column: 16, scope: !1175, inlinedAt: !1189)
!1194 = !DILocation(line: 94, column: 5, scope: !1175, inlinedAt: !1189)
!1195 = !DILocation(line: 0, scope: !1173, inlinedAt: !1156)
!1196 = !DILocation(line: 136, column: 22, scope: !1197, inlinedAt: !1156)
!1197 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 136, column: 7)
!1198 = !DILocation(line: 136, column: 7, scope: !1120, inlinedAt: !1156)
!1199 = !DILocalVariable(name: "alignment", arg: 1, scope: !1200, file: !1201, line: 90, type: !763)
!1200 = distinct !DISubprogram(name: "alignalloc", scope: !1201, file: !1201, line: 90, type: !1202, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1204)
!1201 = !DIFile(filename: "./lib/alignalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0a7d01653c1483fdd96283992acf95d0")
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!94, !763, !763}
!1204 = !{!1199, !1205}
!1205 = !DILocalVariable(name: "size", arg: 2, scope: !1200, file: !1201, line: 90, type: !763)
!1206 = !DILocation(line: 0, scope: !1200, inlinedAt: !1207)
!1207 = distinct !DILocation(line: 141, column: 23, scope: !1208, inlinedAt: !1156)
!1208 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 141, column: 7)
!1209 = !DILocation(line: 98, column: 10, scope: !1200, inlinedAt: !1207)
!1210 = !DILocation(line: 141, column: 21, scope: !1208, inlinedAt: !1156)
!1211 = !DILocation(line: 141, column: 7, scope: !1120, inlinedAt: !1156)
!1212 = !DILocalVariable(name: "dest", arg: 1, scope: !1213, file: !2, line: 65, type: !101)
!1213 = distinct !DISubprogram(name: "repeat_pattern", scope: !2, file: !2, line: 65, type: !1214, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1216)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !101, !70, !763, !763}
!1216 = !{!1212, !1217, !1218, !1219, !1220, !1222}
!1217 = !DILocalVariable(name: "src", arg: 2, scope: !1213, file: !2, line: 65, type: !70)
!1218 = !DILocalVariable(name: "srcsize", arg: 3, scope: !1213, file: !2, line: 65, type: !763)
!1219 = !DILocalVariable(name: "bufsize", arg: 4, scope: !1213, file: !2, line: 65, type: !763)
!1220 = !DILocalVariable(name: "filled", scope: !1221, file: !2, line: 69, type: !763)
!1221 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 69, column: 3)
!1222 = !DILocalVariable(name: "chunk", scope: !1223, file: !2, line: 71, type: !763)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 70, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1221, file: !2, line: 69, column: 3)
!1225 = !DILocation(line: 0, scope: !1213, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 144, column: 3, scope: !1120, inlinedAt: !1156)
!1227 = !DILocation(line: 67, column: 12, scope: !1228, inlinedAt: !1226)
!1228 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 67, column: 7)
!1229 = !DILocation(line: 67, column: 7, scope: !1213, inlinedAt: !1226)
!1230 = !DILocation(line: 0, scope: !1094, inlinedAt: !1231)
!1231 = distinct !DILocation(line: 68, column: 5, scope: !1228, inlinedAt: !1226)
!1232 = !DILocation(line: 29, column: 10, scope: !1094, inlinedAt: !1231)
!1233 = !DILocation(line: 68, column: 5, scope: !1228, inlinedAt: !1226)
!1234 = !DILocation(line: 0, scope: !1221, inlinedAt: !1226)
!1235 = !DILocation(line: 69, column: 39, scope: !1224, inlinedAt: !1226)
!1236 = !DILocation(line: 69, column: 3, scope: !1221, inlinedAt: !1226)
!1237 = !DILocation(line: 71, column: 21, scope: !1223, inlinedAt: !1226)
!1238 = !DILocation(line: 0, scope: !1223, inlinedAt: !1226)
!1239 = !DILocation(line: 72, column: 20, scope: !1223, inlinedAt: !1226)
!1240 = !DILocation(line: 0, scope: !1094, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 72, column: 7, scope: !1223, inlinedAt: !1226)
!1242 = !DILocation(line: 29, column: 10, scope: !1094, inlinedAt: !1241)
!1243 = !DILocation(line: 73, column: 14, scope: !1223, inlinedAt: !1226)
!1244 = distinct !{!1244, !1236, !1245, !926}
!1245 = !DILocation(line: 74, column: 5, scope: !1221, inlinedAt: !1226)
!1246 = !DILocation(line: 149, column: 21, scope: !1120, inlinedAt: !1156)
!1247 = !DILocation(line: 151, column: 3, scope: !1120, inlinedAt: !1156)
!1248 = !DILocation(line: 115, column: 8, scope: !1120, inlinedAt: !1156)
!1249 = !DILocation(line: 153, column: 7, scope: !1133, inlinedAt: !1156)
!1250 = !DILocation(line: 153, column: 20, scope: !1133, inlinedAt: !1156)
!1251 = !DILocation(line: 153, column: 26, scope: !1133, inlinedAt: !1156)
!1252 = !{!1253, !820, i64 0}
!1253 = !{!"iovec", !820, i64 0, !1254, i64 8}
!1254 = !{!"long", !821, i64 0}
!1255 = !DILocation(line: 0, scope: !1133, inlinedAt: !1156)
!1256 = !{!1253, !1254, i64 8}
!1257 = !DILocation(line: 156, column: 7, scope: !1133, inlinedAt: !1156)
!1258 = !DILocation(line: 165, column: 15, scope: !1142, inlinedAt: !1156)
!1259 = !DILocation(line: 167, column: 39, scope: !1142, inlinedAt: !1156)
!1260 = !DILocation(line: 167, column: 48, scope: !1142, inlinedAt: !1156)
!1261 = !DILocation(line: 167, column: 24, scope: !1142, inlinedAt: !1156)
!1262 = !DILocation(line: 168, column: 23, scope: !1142, inlinedAt: !1156)
!1263 = !DILocation(line: 156, column: 26, scope: !1133, inlinedAt: !1156)
!1264 = !DILocation(line: 161, column: 44, scope: !1142, inlinedAt: !1156)
!1265 = !DILocation(line: 161, column: 32, scope: !1142, inlinedAt: !1156)
!1266 = !DILocation(line: 0, scope: !1142, inlinedAt: !1156)
!1267 = !DILocation(line: 162, column: 23, scope: !1142, inlinedAt: !1156)
!1268 = !DILocation(line: 163, column: 17, scope: !1269, inlinedAt: !1156)
!1269 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 163, column: 15)
!1270 = !DILocation(line: 163, column: 15, scope: !1142, inlinedAt: !1156)
!1271 = distinct !{!1271, !1257, !1272, !926}
!1272 = !DILocation(line: 169, column: 9, scope: !1133, inlinedAt: !1156)
!1273 = !DILocation(line: 185, column: 5, scope: !1134, inlinedAt: !1156)
!1274 = !DILocation(line: 172, column: 11, scope: !1133, inlinedAt: !1156)
!1275 = !DILocation(line: 0, scope: !1147, inlinedAt: !1156)
!1276 = !DILocation(line: 177, column: 35, scope: !1150, inlinedAt: !1156)
!1277 = !DILocation(line: 177, column: 27, scope: !1150, inlinedAt: !1156)
!1278 = !DILocation(line: 0, scope: !1150, inlinedAt: !1156)
!1279 = !DILocation(line: 179, column: 21, scope: !1280, inlinedAt: !1156)
!1280 = distinct !DILexicalBlock(scope: !1150, file: !2, line: 179, column: 19)
!1281 = distinct !{!1281, !1282, !1283, !926}
!1282 = !DILocation(line: 175, column: 11, scope: !1147, inlinedAt: !1156)
!1283 = !DILocation(line: 183, column: 13, scope: !1147, inlinedAt: !1156)
!1284 = !DILocation(line: 179, column: 19, scope: !1150, inlinedAt: !1156)
!1285 = !DILocation(line: 175, column: 28, scope: !1147, inlinedAt: !1156)
!1286 = distinct !{!1286, !1282, !1283, !926, !1287}
!1287 = !{!"llvm.loop.peeled.count", i32 1}
!1288 = distinct !{!1288, !1282, !1283, !926}
!1289 = !DILocation(line: 188, column: 7, scope: !1153, inlinedAt: !1156)
!1290 = !DILocation(line: 187, column: 1, scope: !1120, inlinedAt: !1156)
!1291 = !DILocation(line: 188, column: 17, scope: !1153, inlinedAt: !1156)
!1292 = !DILocation(line: 188, column: 7, scope: !1120, inlinedAt: !1156)
!1293 = !DILocation(line: 190, column: 25, scope: !1152, inlinedAt: !1156)
!1294 = !DILocation(line: 0, scope: !1152, inlinedAt: !1156)
!1295 = !DILocation(line: 191, column: 7, scope: !1152, inlinedAt: !1156)
!1296 = !DILocation(line: 192, column: 14, scope: !1152, inlinedAt: !1156)
!1297 = !DILocation(line: 192, column: 7, scope: !1152, inlinedAt: !1156)
!1298 = !DILocation(line: 193, column: 13, scope: !1152, inlinedAt: !1156)
!1299 = !DILocation(line: 194, column: 5, scope: !1152, inlinedAt: !1156)
!1300 = !DILocalVariable(name: "ptr", arg: 1, scope: !1301, file: !1201, line: 75, type: !94)
!1301 = distinct !DISubprogram(name: "alignfree", scope: !1201, file: !1201, line: 75, type: !1302, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !72, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !94}
!1304 = !{!1300}
!1305 = !DILocation(line: 0, scope: !1301, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 195, column: 3, scope: !1120, inlinedAt: !1156)
!1307 = !DILocation(line: 77, column: 3, scope: !1301, inlinedAt: !1306)
!1308 = !DILocation(line: 273, column: 19, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 273, column: 11)
!1310 = !DILocation(line: 273, column: 11, scope: !1082)
!1311 = !DILocation(line: 0, scope: !1213, inlinedAt: !1312)
!1312 = distinct !DILocation(line: 274, column: 9, scope: !1309)
!1313 = !DILocation(line: 0, scope: !1221, inlinedAt: !1312)
!1314 = !DILocation(line: 71, column: 21, scope: !1223, inlinedAt: !1312)
!1315 = !DILocation(line: 0, scope: !1223, inlinedAt: !1312)
!1316 = !DILocation(line: 72, column: 20, scope: !1223, inlinedAt: !1312)
!1317 = !DILocation(line: 0, scope: !1094, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 72, column: 7, scope: !1223, inlinedAt: !1312)
!1319 = !DILocation(line: 29, column: 10, scope: !1094, inlinedAt: !1318)
!1320 = !DILocation(line: 73, column: 14, scope: !1223, inlinedAt: !1312)
!1321 = !DILocation(line: 69, column: 39, scope: !1224, inlinedAt: !1312)
!1322 = !DILocation(line: 69, column: 3, scope: !1221, inlinedAt: !1312)
!1323 = distinct !{!1323, !1322, !1324, !926}
!1324 = !DILocation(line: 74, column: 5, scope: !1221, inlinedAt: !1312)
!1325 = !DILocation(line: 275, column: 7, scope: !1082)
!1326 = !DILocation(line: 275, column: 14, scope: !1082)
!1327 = !DILocation(line: 275, column: 55, scope: !1082)
!1328 = distinct !{!1328, !1325, !1329, !926}
!1329 = !DILocation(line: 276, column: 9, scope: !1082)
!1330 = !DILocation(line: 279, column: 3, scope: !1026)
!1331 = !DILocation(line: 280, column: 3, scope: !1026)
!1332 = !DISubprogram(name: "bindtextdomain", scope: !861, file: !861, line: 86, type: !1333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!101, !70, !70}
!1335 = !DISubprogram(name: "textdomain", scope: !861, file: !861, line: 82, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1336 = !DISubprogram(name: "atexit", scope: !1000, file: !1000, line: 602, type: !1337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!95, !366}
!1339 = !DISubprogram(name: "strlen", scope: !996, file: !996, line: 407, type: !1340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!99, !70}
!1342 = !DISubprogram(name: "getpagesize", scope: !1343, file: !1343, line: 1011, type: !1344, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1343 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!95}
!1346 = !DISubprogram(name: "aligned_alloc", scope: !1000, file: !1000, line: 592, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!94, !97, !97}
!1349 = !DISubprogram(name: "vmsplice", scope: !1350, file: !1350, line: 414, type: !1351, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1350 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/fcntl-linux.h", directory: "", checksumkind: CSK_MD5, checksum: "1c3bf9fc3309d17651ecfc421f385bcf")
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!1145, !95, !1353, !97, !76}
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1355 = !DISubprogram(name: "splice", scope: !1350, file: !1350, line: 421, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!1145, !95, !1358, !95, !1358, !97, !76}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!1359 = !DISubprogram(name: "__errno_location", scope: !1360, file: !1360, line: 37, type: !1361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1360 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!408}
!1363 = !DISubprogram(name: "close", scope: !1343, file: !1343, line: 358, type: !1364, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!95, !95}
!1366 = !DISubprogram(name: "free", scope: !1000, file: !1000, line: 555, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1367 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !300, file: !300, line: 50, type: !830, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1368)
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "file", arg: 1, scope: !1367, file: !300, line: 50, type: !70)
!1370 = !DILocation(line: 0, scope: !1367)
!1371 = !DILocation(line: 52, column: 13, scope: !1367)
!1372 = !DILocation(line: 53, column: 1, scope: !1367)
!1373 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !300, file: !300, line: 87, type: !1374, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !219}
!1376 = !{!1377}
!1377 = !DILocalVariable(name: "ignore", arg: 1, scope: !1373, file: !300, line: 87, type: !219)
!1378 = !DILocation(line: 0, scope: !1373)
!1379 = !DILocation(line: 89, column: 16, scope: !1373)
!1380 = !{!1381, !1381, i64 0}
!1381 = !{!"_Bool", !821, i64 0}
!1382 = !DILocation(line: 90, column: 1, scope: !1373)
!1383 = distinct !DISubprogram(name: "close_stdout", scope: !300, file: !300, line: 116, type: !367, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !299, retainedNodes: !1384)
!1384 = !{!1385}
!1385 = !DILocalVariable(name: "write_error", scope: !1386, file: !300, line: 121, type: !70)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !300, line: 120, column: 5)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !300, line: 118, column: 7)
!1388 = !DILocation(line: 118, column: 21, scope: !1387)
!1389 = !DILocation(line: 118, column: 7, scope: !1387)
!1390 = !DILocation(line: 118, column: 29, scope: !1387)
!1391 = !DILocation(line: 119, column: 7, scope: !1387)
!1392 = !DILocation(line: 119, column: 12, scope: !1387)
!1393 = !{i8 0, i8 2}
!1394 = !DILocation(line: 119, column: 25, scope: !1387)
!1395 = !DILocation(line: 119, column: 28, scope: !1387)
!1396 = !DILocation(line: 119, column: 34, scope: !1387)
!1397 = !DILocation(line: 118, column: 7, scope: !1383)
!1398 = !DILocation(line: 121, column: 33, scope: !1386)
!1399 = !DILocation(line: 0, scope: !1386)
!1400 = !DILocation(line: 122, column: 11, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1386, file: !300, line: 122, column: 11)
!1402 = !DILocation(line: 0, scope: !1401)
!1403 = !DILocation(line: 122, column: 11, scope: !1386)
!1404 = !DILocation(line: 123, column: 9, scope: !1401)
!1405 = !DILocation(line: 126, column: 9, scope: !1401)
!1406 = !DILocation(line: 128, column: 14, scope: !1386)
!1407 = !DILocation(line: 128, column: 7, scope: !1386)
!1408 = !DILocation(line: 133, column: 42, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1383, file: !300, line: 133, column: 7)
!1410 = !DILocation(line: 133, column: 28, scope: !1409)
!1411 = !DILocation(line: 133, column: 50, scope: !1409)
!1412 = !DILocation(line: 133, column: 7, scope: !1383)
!1413 = !DILocation(line: 134, column: 12, scope: !1409)
!1414 = !DILocation(line: 134, column: 5, scope: !1409)
!1415 = !DILocation(line: 135, column: 1, scope: !1383)
!1416 = !DISubprogram(name: "_exit", scope: !1343, file: !1343, line: 624, type: !809, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1417 = distinct !DISubprogram(name: "verror", scope: !315, file: !315, line: 251, type: !1418, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1420)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !95, !95, !70, !325}
!1420 = !{!1421, !1422, !1423, !1424}
!1421 = !DILocalVariable(name: "status", arg: 1, scope: !1417, file: !315, line: 251, type: !95)
!1422 = !DILocalVariable(name: "errnum", arg: 2, scope: !1417, file: !315, line: 251, type: !95)
!1423 = !DILocalVariable(name: "message", arg: 3, scope: !1417, file: !315, line: 251, type: !70)
!1424 = !DILocalVariable(name: "args", arg: 4, scope: !1417, file: !315, line: 251, type: !325)
!1425 = !DILocation(line: 0, scope: !1417)
!1426 = !DILocation(line: 251, column: 1, scope: !1417)
!1427 = !DILocation(line: 261, column: 3, scope: !1417)
!1428 = !DILocation(line: 265, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1417, file: !315, line: 265, column: 7)
!1430 = !DILocation(line: 265, column: 7, scope: !1417)
!1431 = !DILocation(line: 266, column: 5, scope: !1429)
!1432 = !DILocation(line: 272, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !315, line: 268, column: 5)
!1434 = !DILocation(line: 276, column: 3, scope: !1417)
!1435 = !{i64 0, i64 8, !819, i64 8, i64 8, !819, i64 16, i64 8, !819, i64 24, i64 4, !879, i64 28, i64 4, !879}
!1436 = !DILocation(line: 282, column: 1, scope: !1417)
!1437 = distinct !DISubprogram(name: "flush_stdout", scope: !315, file: !315, line: 163, type: !367, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1438)
!1438 = !{!1439}
!1439 = !DILocalVariable(name: "stdout_fd", scope: !1437, file: !315, line: 166, type: !95)
!1440 = !DILocation(line: 0, scope: !1437)
!1441 = !DILocalVariable(name: "fd", arg: 1, scope: !1442, file: !315, line: 145, type: !95)
!1442 = distinct !DISubprogram(name: "is_open", scope: !315, file: !315, line: 145, type: !1364, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1443)
!1443 = !{!1441}
!1444 = !DILocation(line: 0, scope: !1442, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 182, column: 25, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1437, file: !315, line: 182, column: 7)
!1447 = !DILocation(line: 157, column: 15, scope: !1442, inlinedAt: !1445)
!1448 = !DILocation(line: 157, column: 12, scope: !1442, inlinedAt: !1445)
!1449 = !DILocation(line: 182, column: 7, scope: !1437)
!1450 = !DILocation(line: 184, column: 5, scope: !1446)
!1451 = !DILocation(line: 185, column: 1, scope: !1437)
!1452 = distinct !DISubprogram(name: "error_tail", scope: !315, file: !315, line: 219, type: !1418, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1453)
!1453 = !{!1454, !1455, !1456, !1457}
!1454 = !DILocalVariable(name: "status", arg: 1, scope: !1452, file: !315, line: 219, type: !95)
!1455 = !DILocalVariable(name: "errnum", arg: 2, scope: !1452, file: !315, line: 219, type: !95)
!1456 = !DILocalVariable(name: "message", arg: 3, scope: !1452, file: !315, line: 219, type: !70)
!1457 = !DILocalVariable(name: "args", arg: 4, scope: !1452, file: !315, line: 219, type: !325)
!1458 = !DILocation(line: 0, scope: !1452)
!1459 = !DILocation(line: 219, column: 1, scope: !1452)
!1460 = !DILocation(line: 229, column: 13, scope: !1452)
!1461 = !DILocation(line: 135, column: 10, scope: !1462, inlinedAt: !1504)
!1462 = distinct !DISubprogram(name: "vfprintf", scope: !866, file: !866, line: 132, type: !1463, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1500)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!95, !1465, !870, !327}
!1465 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !1469)
!1469 = !{!1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1468, file: !236, line: 51, baseType: !95, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1468, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1468, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1468, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1468, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1468, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1468, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1468, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1468, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1468, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1468, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1468, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1468, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1468, file: !236, line: 70, baseType: !1484, size: 64, offset: 832)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1468, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1468, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1468, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1468, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1468, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1468, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1468, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1468, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1468, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1468, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1468, file: !236, line: 93, baseType: !1484, size: 64, offset: 1344)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1468, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1468, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1468, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1468, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!1500 = !{!1501, !1502, !1503}
!1501 = !DILocalVariable(name: "__stream", arg: 1, scope: !1462, file: !866, line: 132, type: !1465)
!1502 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1462, file: !866, line: 133, type: !870)
!1503 = !DILocalVariable(name: "__ap", arg: 3, scope: !1462, file: !866, line: 133, type: !327)
!1504 = distinct !DILocation(line: 229, column: 3, scope: !1452)
!1505 = !{!1506, !1508}
!1506 = distinct !{!1506, !1507, !"vfprintf.inline: argument 0"}
!1507 = distinct !{!1507, !"vfprintf.inline"}
!1508 = distinct !{!1508, !1507, !"vfprintf.inline: argument 1"}
!1509 = !DILocation(line: 229, column: 3, scope: !1452)
!1510 = !DILocation(line: 0, scope: !1462, inlinedAt: !1504)
!1511 = !DILocation(line: 133, column: 49, scope: !1462, inlinedAt: !1504)
!1512 = !DILocation(line: 232, column: 3, scope: !1452)
!1513 = !DILocation(line: 233, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1452, file: !315, line: 233, column: 7)
!1515 = !DILocation(line: 233, column: 7, scope: !1452)
!1516 = !DILocalVariable(name: "errnum", arg: 1, scope: !1517, file: !315, line: 188, type: !95)
!1517 = distinct !DISubprogram(name: "print_errno_message", scope: !315, file: !315, line: 188, type: !809, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1518)
!1518 = !{!1516, !1519, !1520}
!1519 = !DILocalVariable(name: "s", scope: !1517, file: !315, line: 190, type: !70)
!1520 = !DILocalVariable(name: "errbuf", scope: !1517, file: !315, line: 193, type: !1521)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1522)
!1522 = !{!1523}
!1523 = !DISubrange(count: 1024)
!1524 = !DILocation(line: 0, scope: !1517, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 234, column: 5, scope: !1514)
!1526 = !DILocation(line: 193, column: 3, scope: !1517, inlinedAt: !1525)
!1527 = !DILocation(line: 193, column: 8, scope: !1517, inlinedAt: !1525)
!1528 = !DILocation(line: 195, column: 7, scope: !1517, inlinedAt: !1525)
!1529 = !DILocation(line: 207, column: 9, scope: !1530, inlinedAt: !1525)
!1530 = distinct !DILexicalBlock(scope: !1517, file: !315, line: 207, column: 7)
!1531 = !DILocation(line: 207, column: 7, scope: !1517, inlinedAt: !1525)
!1532 = !DILocation(line: 208, column: 9, scope: !1530, inlinedAt: !1525)
!1533 = !DILocation(line: 208, column: 5, scope: !1530, inlinedAt: !1525)
!1534 = !DILocation(line: 214, column: 3, scope: !1517, inlinedAt: !1525)
!1535 = !DILocation(line: 216, column: 1, scope: !1517, inlinedAt: !1525)
!1536 = !DILocation(line: 234, column: 5, scope: !1514)
!1537 = !DILocation(line: 238, column: 3, scope: !1452)
!1538 = !DILocalVariable(name: "__c", arg: 1, scope: !1539, file: !1540, line: 101, type: !95)
!1539 = distinct !DISubprogram(name: "putc_unlocked", scope: !1540, file: !1540, line: 101, type: !1541, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1543)
!1540 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!95, !95, !1466}
!1543 = !{!1538, !1544}
!1544 = !DILocalVariable(name: "__stream", arg: 2, scope: !1539, file: !1540, line: 101, type: !1466)
!1545 = !DILocation(line: 0, scope: !1539, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 238, column: 3, scope: !1452)
!1547 = !DILocation(line: 103, column: 10, scope: !1539, inlinedAt: !1546)
!1548 = !{!1549, !820, i64 40}
!1549 = !{!"_IO_FILE", !880, i64 0, !820, i64 8, !820, i64 16, !820, i64 24, !820, i64 32, !820, i64 40, !820, i64 48, !820, i64 56, !820, i64 64, !820, i64 72, !820, i64 80, !820, i64 88, !820, i64 96, !820, i64 104, !880, i64 112, !880, i64 116, !1254, i64 120, !921, i64 128, !821, i64 130, !821, i64 131, !820, i64 136, !1254, i64 144, !820, i64 152, !820, i64 160, !820, i64 168, !820, i64 176, !1254, i64 184, !880, i64 192, !821, i64 196}
!1550 = !{!1549, !820, i64 48}
!1551 = !{!"branch_weights", i32 2000, i32 1}
!1552 = !DILocation(line: 240, column: 3, scope: !1452)
!1553 = !DILocation(line: 241, column: 7, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1452, file: !315, line: 241, column: 7)
!1555 = !DILocation(line: 241, column: 7, scope: !1452)
!1556 = !DILocation(line: 242, column: 5, scope: !1554)
!1557 = !DILocation(line: 243, column: 1, scope: !1452)
!1558 = !DISubprogram(name: "__vfprintf_chk", scope: !866, file: !866, line: 96, type: !1559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!95, !1465, !95, !870, !327}
!1561 = !DISubprogram(name: "strerror_r", scope: !996, file: !996, line: 444, type: !1562, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!101, !95, !101, !97}
!1564 = !DISubprogram(name: "__overflow", scope: !326, file: !326, line: 886, type: !1565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!95, !1466, !95}
!1567 = !DISubprogram(name: "fflush_unlocked", scope: !326, file: !326, line: 239, type: !1568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!95, !1466}
!1570 = !DISubprogram(name: "fcntl", scope: !1571, file: !1571, line: 149, type: !1572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1571 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!95, !95, !95, null}
!1574 = distinct !DISubprogram(name: "error", scope: !315, file: !315, line: 285, type: !1575, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1577)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !95, !95, !70, null}
!1577 = !{!1578, !1579, !1580, !1581}
!1578 = !DILocalVariable(name: "status", arg: 1, scope: !1574, file: !315, line: 285, type: !95)
!1579 = !DILocalVariable(name: "errnum", arg: 2, scope: !1574, file: !315, line: 285, type: !95)
!1580 = !DILocalVariable(name: "message", arg: 3, scope: !1574, file: !315, line: 285, type: !70)
!1581 = !DILocalVariable(name: "ap", scope: !1574, file: !315, line: 287, type: !325)
!1582 = !DILocation(line: 0, scope: !1574)
!1583 = !DILocation(line: 287, column: 3, scope: !1574)
!1584 = !DILocation(line: 287, column: 11, scope: !1574)
!1585 = !DILocation(line: 288, column: 3, scope: !1574)
!1586 = !DILocation(line: 289, column: 3, scope: !1574)
!1587 = !DILocation(line: 290, column: 3, scope: !1574)
!1588 = !DILocation(line: 291, column: 1, scope: !1574)
!1589 = !DILocation(line: 0, scope: !322)
!1590 = !DILocation(line: 298, column: 1, scope: !322)
!1591 = !DILocation(line: 302, column: 7, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !322, file: !315, line: 302, column: 7)
!1593 = !DILocation(line: 302, column: 7, scope: !322)
!1594 = !DILocation(line: 307, column: 11, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !315, line: 307, column: 11)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !315, line: 303, column: 5)
!1597 = !DILocation(line: 307, column: 27, scope: !1595)
!1598 = !DILocation(line: 308, column: 11, scope: !1595)
!1599 = !DILocation(line: 308, column: 28, scope: !1595)
!1600 = !DILocation(line: 308, column: 25, scope: !1595)
!1601 = !DILocation(line: 309, column: 15, scope: !1595)
!1602 = !DILocation(line: 309, column: 33, scope: !1595)
!1603 = !DILocation(line: 310, column: 19, scope: !1595)
!1604 = !DILocation(line: 311, column: 22, scope: !1595)
!1605 = !DILocation(line: 311, column: 56, scope: !1595)
!1606 = !DILocation(line: 307, column: 11, scope: !1596)
!1607 = !DILocation(line: 316, column: 21, scope: !1596)
!1608 = !DILocation(line: 317, column: 23, scope: !1596)
!1609 = !DILocation(line: 318, column: 5, scope: !1596)
!1610 = !DILocation(line: 327, column: 3, scope: !322)
!1611 = !DILocation(line: 331, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !322, file: !315, line: 331, column: 7)
!1613 = !DILocation(line: 331, column: 7, scope: !322)
!1614 = !DILocation(line: 332, column: 5, scope: !1612)
!1615 = !DILocation(line: 338, column: 7, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1612, file: !315, line: 334, column: 5)
!1617 = !DILocation(line: 346, column: 3, scope: !322)
!1618 = !DILocation(line: 350, column: 3, scope: !322)
!1619 = !DILocation(line: 356, column: 1, scope: !322)
!1620 = distinct !DISubprogram(name: "error_at_line", scope: !315, file: !315, line: 359, type: !1621, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !314, retainedNodes: !1623)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !95, !95, !70, !76, !70, null}
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629}
!1624 = !DILocalVariable(name: "status", arg: 1, scope: !1620, file: !315, line: 359, type: !95)
!1625 = !DILocalVariable(name: "errnum", arg: 2, scope: !1620, file: !315, line: 359, type: !95)
!1626 = !DILocalVariable(name: "file_name", arg: 3, scope: !1620, file: !315, line: 359, type: !70)
!1627 = !DILocalVariable(name: "line_number", arg: 4, scope: !1620, file: !315, line: 360, type: !76)
!1628 = !DILocalVariable(name: "message", arg: 5, scope: !1620, file: !315, line: 360, type: !70)
!1629 = !DILocalVariable(name: "ap", scope: !1620, file: !315, line: 362, type: !325)
!1630 = !DILocation(line: 0, scope: !1620)
!1631 = !DILocation(line: 362, column: 3, scope: !1620)
!1632 = !DILocation(line: 362, column: 11, scope: !1620)
!1633 = !DILocation(line: 363, column: 3, scope: !1620)
!1634 = !DILocation(line: 364, column: 3, scope: !1620)
!1635 = !DILocation(line: 366, column: 3, scope: !1620)
!1636 = !DILocation(line: 367, column: 1, scope: !1620)
!1637 = distinct !DISubprogram(name: "rpl_fcntl", scope: !372, file: !372, line: 202, type: !1572, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1638)
!1638 = !{!1639, !1640, !1641, !1652, !1653, !1656, !1658, !1662}
!1639 = !DILocalVariable(name: "fd", arg: 1, scope: !1637, file: !372, line: 202, type: !95)
!1640 = !DILocalVariable(name: "action", arg: 2, scope: !1637, file: !372, line: 202, type: !95)
!1641 = !DILocalVariable(name: "arg", scope: !1637, file: !372, line: 208, type: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !328, line: 22, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1644, baseType: !1645)
!1644 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1645, file: !1644, line: 208, baseType: !94, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1645, file: !1644, line: 208, baseType: !94, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1645, file: !1644, line: 208, baseType: !94, size: 64, offset: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1645, file: !1644, line: 208, baseType: !95, size: 32, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1645, file: !1644, line: 208, baseType: !95, size: 32, offset: 224)
!1652 = !DILocalVariable(name: "result", scope: !1637, file: !372, line: 211, type: !95)
!1653 = !DILocalVariable(name: "target", scope: !1654, file: !372, line: 216, type: !95)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !372, line: 215, column: 7)
!1655 = distinct !DILexicalBlock(scope: !1637, file: !372, line: 213, column: 5)
!1656 = !DILocalVariable(name: "target", scope: !1657, file: !372, line: 223, type: !95)
!1657 = distinct !DILexicalBlock(scope: !1655, file: !372, line: 222, column: 7)
!1658 = !DILocalVariable(name: "x", scope: !1659, file: !372, line: 418, type: !95)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !372, line: 417, column: 13)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !372, line: 261, column: 11)
!1661 = distinct !DILexicalBlock(scope: !1655, file: !372, line: 258, column: 7)
!1662 = !DILocalVariable(name: "p", scope: !1663, file: !372, line: 426, type: !94)
!1663 = distinct !DILexicalBlock(scope: !1660, file: !372, line: 425, column: 13)
!1664 = !DILocation(line: 0, scope: !1637)
!1665 = !DILocation(line: 208, column: 3, scope: !1637)
!1666 = !DILocation(line: 208, column: 11, scope: !1637)
!1667 = !DILocation(line: 209, column: 3, scope: !1637)
!1668 = !DILocation(line: 212, column: 3, scope: !1637)
!1669 = !DILocation(line: 216, column: 22, scope: !1654)
!1670 = !DILocation(line: 0, scope: !1654)
!1671 = !DILocalVariable(name: "fd", arg: 1, scope: !1672, file: !372, line: 444, type: !95)
!1672 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !372, file: !372, line: 444, type: !373, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !1673)
!1673 = !{!1671, !1674, !1675}
!1674 = !DILocalVariable(name: "target", arg: 2, scope: !1672, file: !372, line: 444, type: !95)
!1675 = !DILocalVariable(name: "result", scope: !1672, file: !372, line: 446, type: !95)
!1676 = !DILocation(line: 0, scope: !1672, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 217, column: 18, scope: !1654)
!1678 = !DILocation(line: 479, column: 12, scope: !1672, inlinedAt: !1677)
!1679 = !DILocation(line: 223, column: 22, scope: !1657)
!1680 = !DILocation(line: 0, scope: !1657)
!1681 = !DILocation(line: 0, scope: !371, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 224, column: 18, scope: !1657)
!1683 = !DILocation(line: 507, column: 12, scope: !1684, inlinedAt: !1682)
!1684 = distinct !DILexicalBlock(scope: !371, file: !372, line: 507, column: 7)
!1685 = !DILocation(line: 507, column: 9, scope: !1684, inlinedAt: !1682)
!1686 = !DILocation(line: 507, column: 7, scope: !371, inlinedAt: !1682)
!1687 = !DILocation(line: 509, column: 16, scope: !1688, inlinedAt: !1682)
!1688 = distinct !DILexicalBlock(scope: !1684, file: !372, line: 508, column: 5)
!1689 = !DILocation(line: 510, column: 13, scope: !1690, inlinedAt: !1682)
!1690 = distinct !DILexicalBlock(scope: !1688, file: !372, line: 510, column: 11)
!1691 = !DILocation(line: 510, column: 23, scope: !1690, inlinedAt: !1682)
!1692 = !DILocation(line: 510, column: 26, scope: !1690, inlinedAt: !1682)
!1693 = !DILocation(line: 510, column: 32, scope: !1690, inlinedAt: !1682)
!1694 = !DILocation(line: 510, column: 11, scope: !1688, inlinedAt: !1682)
!1695 = !DILocation(line: 512, column: 30, scope: !1696, inlinedAt: !1682)
!1696 = distinct !DILexicalBlock(scope: !1690, file: !372, line: 511, column: 9)
!1697 = !DILocation(line: 528, column: 19, scope: !383, inlinedAt: !1682)
!1698 = !DILocation(line: 0, scope: !1672, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 520, column: 20, scope: !1700, inlinedAt: !1682)
!1700 = distinct !DILexicalBlock(scope: !1690, file: !372, line: 519, column: 9)
!1701 = !DILocation(line: 479, column: 12, scope: !1672, inlinedAt: !1699)
!1702 = !DILocation(line: 521, column: 22, scope: !1703, inlinedAt: !1682)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !372, line: 521, column: 15)
!1704 = !DILocation(line: 521, column: 15, scope: !1700, inlinedAt: !1682)
!1705 = !DILocation(line: 522, column: 32, scope: !1703, inlinedAt: !1682)
!1706 = !DILocation(line: 522, column: 13, scope: !1703, inlinedAt: !1682)
!1707 = !DILocation(line: 0, scope: !1672, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 527, column: 14, scope: !1684, inlinedAt: !1682)
!1709 = !DILocation(line: 479, column: 12, scope: !1672, inlinedAt: !1708)
!1710 = !DILocation(line: 0, scope: !1684, inlinedAt: !1682)
!1711 = !DILocation(line: 528, column: 9, scope: !383, inlinedAt: !1682)
!1712 = !DILocation(line: 530, column: 19, scope: !382, inlinedAt: !1682)
!1713 = !DILocation(line: 0, scope: !382, inlinedAt: !1682)
!1714 = !DILocation(line: 531, column: 17, scope: !386, inlinedAt: !1682)
!1715 = !DILocation(line: 531, column: 21, scope: !386, inlinedAt: !1682)
!1716 = !DILocation(line: 531, column: 54, scope: !386, inlinedAt: !1682)
!1717 = !DILocation(line: 531, column: 24, scope: !386, inlinedAt: !1682)
!1718 = !DILocation(line: 531, column: 68, scope: !386, inlinedAt: !1682)
!1719 = !DILocation(line: 531, column: 11, scope: !382, inlinedAt: !1682)
!1720 = !DILocation(line: 533, column: 29, scope: !385, inlinedAt: !1682)
!1721 = !DILocation(line: 0, scope: !385, inlinedAt: !1682)
!1722 = !DILocation(line: 534, column: 11, scope: !385, inlinedAt: !1682)
!1723 = !DILocation(line: 535, column: 17, scope: !385, inlinedAt: !1682)
!1724 = !DILocation(line: 537, column: 9, scope: !385, inlinedAt: !1682)
!1725 = !DILocation(line: 329, column: 22, scope: !1660)
!1726 = !DILocation(line: 330, column: 13, scope: !1660)
!1727 = !DILocation(line: 418, column: 23, scope: !1659)
!1728 = !DILocation(line: 0, scope: !1659)
!1729 = !DILocation(line: 419, column: 24, scope: !1659)
!1730 = !DILocation(line: 421, column: 13, scope: !1660)
!1731 = !DILocation(line: 426, column: 25, scope: !1663)
!1732 = !DILocation(line: 0, scope: !1663)
!1733 = !DILocation(line: 427, column: 24, scope: !1663)
!1734 = !DILocation(line: 429, column: 13, scope: !1660)
!1735 = !DILocation(line: 0, scope: !1655)
!1736 = !DILocation(line: 438, column: 3, scope: !1637)
!1737 = !DILocation(line: 441, column: 1, scope: !1637)
!1738 = !DILocation(line: 440, column: 3, scope: !1637)
!1739 = distinct !DISubprogram(name: "full_write", scope: !720, file: !720, line: 58, type: !1740, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !719, retainedNodes: !1742)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!763, !95, !1024, !763}
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748}
!1743 = !DILocalVariable(name: "fd", arg: 1, scope: !1739, file: !720, line: 58, type: !95)
!1744 = !DILocalVariable(name: "buf", arg: 2, scope: !1739, file: !720, line: 58, type: !1024)
!1745 = !DILocalVariable(name: "count", arg: 3, scope: !1739, file: !720, line: 58, type: !763)
!1746 = !DILocalVariable(name: "total", scope: !1739, file: !720, line: 60, type: !763)
!1747 = !DILocalVariable(name: "ptr", scope: !1739, file: !720, line: 61, type: !70)
!1748 = !DILocalVariable(name: "n_rw", scope: !1749, file: !720, line: 65, type: !765)
!1749 = distinct !DILexicalBlock(scope: !1739, file: !720, line: 64, column: 5)
!1750 = !DILocation(line: 0, scope: !1739)
!1751 = !DILocation(line: 63, column: 16, scope: !1739)
!1752 = !DILocation(line: 63, column: 3, scope: !1739)
!1753 = !DILocation(line: 65, column: 24, scope: !1749)
!1754 = !DILocation(line: 0, scope: !1749)
!1755 = !DILocation(line: 66, column: 16, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1749, file: !720, line: 66, column: 11)
!1757 = !DILocation(line: 66, column: 11, scope: !1749)
!1758 = !DILocation(line: 68, column: 16, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1749, file: !720, line: 68, column: 11)
!1760 = !DILocation(line: 68, column: 11, scope: !1749)
!1761 = !DILocation(line: 70, column: 11, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !720, line: 69, column: 9)
!1763 = !DILocation(line: 70, column: 17, scope: !1762)
!1764 = !DILocation(line: 71, column: 11, scope: !1762)
!1765 = !DILocation(line: 73, column: 13, scope: !1749)
!1766 = !DILocation(line: 74, column: 11, scope: !1749)
!1767 = !DILocation(line: 75, column: 13, scope: !1749)
!1768 = !DILocation(line: 78, column: 3, scope: !1739)
!1769 = distinct !DISubprogram(name: "getprogname", scope: !723, file: !723, line: 54, type: !1770, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !722, retainedNodes: !864)
!1770 = !DISubroutineType(types: !721)
!1771 = !DILocation(line: 58, column: 10, scope: !1769)
!1772 = !DILocation(line: 58, column: 3, scope: !1769)
!1773 = distinct !DISubprogram(name: "isapipe", scope: !725, file: !725, line: 72, type: !1364, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !724, retainedNodes: !1774)
!1774 = !{!1775, !1776, !1780, !1781, !1815}
!1775 = !DILocalVariable(name: "fd", arg: 1, scope: !1773, file: !725, line: 72, type: !95)
!1776 = !DILocalVariable(name: "pipe_link_count_max", scope: !1773, file: !725, line: 74, type: !1777)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1778, line: 74, baseType: !1779)
!1778 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !259, line: 151, baseType: !76)
!1780 = !DILocalVariable(name: "check_for_fifo", scope: !1773, file: !725, line: 75, type: !219)
!1781 = !DILocalVariable(name: "st", scope: !1773, file: !725, line: 77, type: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1783, line: 44, size: 1024, elements: !1784)
!1783 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1784 = !{!1785, !1787, !1789, !1791, !1792, !1794, !1796, !1797, !1798, !1799, !1801, !1802, !1804, !1812, !1813, !1814}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1782, file: !1783, line: 46, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !259, line: 145, baseType: !99)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1782, file: !1783, line: 47, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !259, line: 148, baseType: !99)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1782, file: !1783, line: 48, baseType: !1790, size: 32, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !259, line: 150, baseType: !76)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1782, file: !1783, line: 49, baseType: !1779, size: 32, offset: 160)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1782, file: !1783, line: 50, baseType: !1793, size: 32, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !259, line: 146, baseType: !76)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1782, file: !1783, line: 51, baseType: !1795, size: 32, offset: 224)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !259, line: 147, baseType: !76)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1782, file: !1783, line: 52, baseType: !1786, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1782, file: !1783, line: 53, baseType: !1786, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1782, file: !1783, line: 54, baseType: !258, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1782, file: !1783, line: 55, baseType: !1800, size: 32, offset: 448)
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !259, line: 175, baseType: !95)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1782, file: !1783, line: 56, baseType: !95, size: 32, offset: 480)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1782, file: !1783, line: 57, baseType: !1803, size: 64, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !259, line: 180, baseType: !260)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1782, file: !1783, line: 65, baseType: !1805, size: 128, offset: 576)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1806, line: 11, size: 128, elements: !1807)
!1806 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1807 = !{!1808, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1805, file: !1806, line: 16, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !259, line: 160, baseType: !260)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1805, file: !1806, line: 21, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !259, line: 197, baseType: !260)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1782, file: !1783, line: 66, baseType: !1805, size: 128, offset: 704)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1782, file: !1783, line: 67, baseType: !1805, size: 128, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1782, file: !1783, line: 79, baseType: !700, size: 64, offset: 960)
!1815 = !DILocalVariable(name: "fstat_result", scope: !1773, file: !725, line: 78, type: !95)
!1816 = !DILocation(line: 0, scope: !1773)
!1817 = !DILocation(line: 77, column: 3, scope: !1773)
!1818 = !DILocation(line: 77, column: 15, scope: !1773)
!1819 = !DILocation(line: 78, column: 22, scope: !1773)
!1820 = !DILocation(line: 79, column: 20, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1773, file: !725, line: 79, column: 7)
!1822 = !DILocation(line: 79, column: 7, scope: !1773)
!1823 = !DILocation(line: 118, column: 9, scope: !1773)
!1824 = !{!1825, !880, i64 20}
!1825 = !{!"stat", !1254, i64 0, !1254, i64 8, !880, i64 16, !880, i64 20, !880, i64 24, !880, i64 28, !1254, i64 32, !1254, i64 40, !1254, i64 48, !880, i64 56, !880, i64 60, !1254, i64 64, !1826, i64 72, !1826, i64 88, !1826, i64 104, !821, i64 120}
!1826 = !{!"timespec", !1254, i64 0, !1254, i64 8}
!1827 = !DILocation(line: 118, column: 18, scope: !1773)
!1828 = !DILocation(line: 119, column: 6, scope: !1773)
!1829 = !DILocation(line: 117, column: 3, scope: !1773)
!1830 = !DILocation(line: 120, column: 1, scope: !1773)
!1831 = !DISubprogram(name: "fstat", scope: !1832, file: !1832, line: 210, type: !1833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1832 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!95, !95, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1836 = distinct !DISubprogram(name: "parse_long_options", scope: !389, file: !389, line: 45, type: !1837, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1840)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !95, !1029, !70, !70, !70, !1839, null}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!1840 = !{!1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1851}
!1841 = !DILocalVariable(name: "argc", arg: 1, scope: !1836, file: !389, line: 45, type: !95)
!1842 = !DILocalVariable(name: "argv", arg: 2, scope: !1836, file: !389, line: 46, type: !1029)
!1843 = !DILocalVariable(name: "command_name", arg: 3, scope: !1836, file: !389, line: 47, type: !70)
!1844 = !DILocalVariable(name: "package", arg: 4, scope: !1836, file: !389, line: 48, type: !70)
!1845 = !DILocalVariable(name: "version", arg: 5, scope: !1836, file: !389, line: 49, type: !70)
!1846 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1836, file: !389, line: 50, type: !1839)
!1847 = !DILocalVariable(name: "saved_opterr", scope: !1836, file: !389, line: 53, type: !95)
!1848 = !DILocalVariable(name: "c", scope: !1849, file: !389, line: 60, type: !95)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !389, line: 59, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1836, file: !389, line: 58, column: 7)
!1851 = !DILocalVariable(name: "authors", scope: !1852, file: !389, line: 71, type: !1856)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !389, line: 70, column: 15)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !389, line: 64, column: 13)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !389, line: 62, column: 9)
!1855 = distinct !DILexicalBlock(scope: !1849, file: !389, line: 61, column: 11)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 52, baseType: !1857)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !328, line: 14, baseType: !1858)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1859, baseType: !1860)
!1859 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1861)
!1861 = !{!1862, !1863, !1864, !1865, !1866}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1860, file: !1859, line: 71, baseType: !94, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1860, file: !1859, line: 71, baseType: !94, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1860, file: !1859, line: 71, baseType: !94, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1860, file: !1859, line: 71, baseType: !95, size: 32, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1860, file: !1859, line: 71, baseType: !95, size: 32, offset: 224)
!1867 = !DILocation(line: 0, scope: !1836)
!1868 = !DILocation(line: 53, column: 22, scope: !1836)
!1869 = !DILocation(line: 56, column: 10, scope: !1836)
!1870 = !DILocation(line: 58, column: 12, scope: !1850)
!1871 = !DILocation(line: 58, column: 7, scope: !1836)
!1872 = !DILocation(line: 60, column: 15, scope: !1849)
!1873 = !DILocation(line: 0, scope: !1849)
!1874 = !DILocation(line: 61, column: 11, scope: !1849)
!1875 = !DILocation(line: 66, column: 15, scope: !1853)
!1876 = !DILocation(line: 67, column: 15, scope: !1853)
!1877 = !DILocation(line: 71, column: 17, scope: !1852)
!1878 = !DILocation(line: 71, column: 25, scope: !1852)
!1879 = !DILocation(line: 72, column: 17, scope: !1852)
!1880 = !DILocation(line: 73, column: 33, scope: !1852)
!1881 = !DILocation(line: 73, column: 17, scope: !1852)
!1882 = !DILocation(line: 74, column: 17, scope: !1852)
!1883 = !DILocation(line: 85, column: 10, scope: !1836)
!1884 = !DILocation(line: 89, column: 10, scope: !1836)
!1885 = !DILocation(line: 90, column: 1, scope: !1836)
!1886 = !DISubprogram(name: "getopt_long", scope: !403, file: !403, line: 66, type: !1887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!95, !95, !1889, !70, !1891, !408}
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1892 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !389, file: !389, line: 98, type: !1893, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !392, retainedNodes: !1895)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !95, !1029, !70, !70, !70, !219, !1839, null}
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906}
!1896 = !DILocalVariable(name: "argc", arg: 1, scope: !1892, file: !389, line: 98, type: !95)
!1897 = !DILocalVariable(name: "argv", arg: 2, scope: !1892, file: !389, line: 99, type: !1029)
!1898 = !DILocalVariable(name: "command_name", arg: 3, scope: !1892, file: !389, line: 100, type: !70)
!1899 = !DILocalVariable(name: "package", arg: 4, scope: !1892, file: !389, line: 101, type: !70)
!1900 = !DILocalVariable(name: "version", arg: 5, scope: !1892, file: !389, line: 102, type: !70)
!1901 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1892, file: !389, line: 103, type: !219)
!1902 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1892, file: !389, line: 104, type: !1839)
!1903 = !DILocalVariable(name: "saved_opterr", scope: !1892, file: !389, line: 107, type: !95)
!1904 = !DILocalVariable(name: "optstring", scope: !1892, file: !389, line: 112, type: !70)
!1905 = !DILocalVariable(name: "c", scope: !1892, file: !389, line: 114, type: !95)
!1906 = !DILocalVariable(name: "authors", scope: !1907, file: !389, line: 125, type: !1856)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !389, line: 124, column: 11)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !389, line: 118, column: 9)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !389, line: 116, column: 5)
!1910 = distinct !DILexicalBlock(scope: !1892, file: !389, line: 115, column: 7)
!1911 = !DILocation(line: 0, scope: !1892)
!1912 = !DILocation(line: 107, column: 22, scope: !1892)
!1913 = !DILocation(line: 110, column: 10, scope: !1892)
!1914 = !DILocation(line: 112, column: 27, scope: !1892)
!1915 = !DILocation(line: 114, column: 11, scope: !1892)
!1916 = !DILocation(line: 115, column: 7, scope: !1892)
!1917 = !DILocation(line: 125, column: 13, scope: !1907)
!1918 = !DILocation(line: 125, column: 21, scope: !1907)
!1919 = !DILocation(line: 126, column: 13, scope: !1907)
!1920 = !DILocation(line: 127, column: 29, scope: !1907)
!1921 = !DILocation(line: 127, column: 13, scope: !1907)
!1922 = !DILocation(line: 128, column: 13, scope: !1907)
!1923 = !DILocation(line: 132, column: 26, scope: !1908)
!1924 = !DILocation(line: 133, column: 11, scope: !1908)
!1925 = !DILocation(line: 0, scope: !1908)
!1926 = !DILocation(line: 138, column: 10, scope: !1892)
!1927 = !DILocation(line: 139, column: 1, scope: !1892)
!1928 = distinct !DISubprogram(name: "pipe2_safer", scope: !727, file: !727, line: 31, type: !692, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !726, retainedNodes: !1929)
!1929 = !{!1930, !1931, !1932, !1936}
!1930 = !DILocalVariable(name: "fd", arg: 1, scope: !1928, file: !727, line: 31, type: !408)
!1931 = !DILocalVariable(name: "flags", arg: 2, scope: !1928, file: !727, line: 31, type: !95)
!1932 = !DILocalVariable(name: "i", scope: !1933, file: !727, line: 36, type: !95)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !727, line: 36, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !727, line: 35, column: 5)
!1935 = distinct !DILexicalBlock(scope: !1928, file: !727, line: 34, column: 7)
!1936 = !DILocalVariable(name: "saved_errno", scope: !1937, file: !727, line: 41, type: !95)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !727, line: 40, column: 13)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !727, line: 39, column: 15)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !727, line: 37, column: 9)
!1940 = distinct !DILexicalBlock(scope: !1933, file: !727, line: 36, column: 7)
!1941 = !DILocation(line: 0, scope: !1928)
!1942 = !DILocation(line: 34, column: 7, scope: !1935)
!1943 = !DILocation(line: 34, column: 25, scope: !1935)
!1944 = !DILocation(line: 34, column: 7, scope: !1928)
!1945 = !DILocation(line: 0, scope: !1933)
!1946 = !DILocation(line: 38, column: 34, scope: !1939)
!1947 = !DILocation(line: 38, column: 19, scope: !1939)
!1948 = !DILocation(line: 38, column: 17, scope: !1939)
!1949 = !DILocation(line: 39, column: 21, scope: !1938)
!1950 = !DILocation(line: 39, column: 15, scope: !1939)
!1951 = !DILocation(line: 41, column: 33, scope: !1937)
!1952 = !DILocation(line: 0, scope: !1937)
!1953 = !DILocation(line: 42, column: 22, scope: !1937)
!1954 = !DILocation(line: 42, column: 15, scope: !1937)
!1955 = !DILocation(line: 43, column: 21, scope: !1937)
!1956 = !DILocation(line: 51, column: 1, scope: !1928)
!1957 = distinct !DISubprogram(name: "set_program_name", scope: !413, file: !413, line: 37, type: !830, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DILocalVariable(name: "argv0", arg: 1, scope: !1957, file: !413, line: 37, type: !70)
!1960 = !DILocalVariable(name: "slash", scope: !1957, file: !413, line: 44, type: !70)
!1961 = !DILocalVariable(name: "base", scope: !1957, file: !413, line: 45, type: !70)
!1962 = !DILocation(line: 0, scope: !1957)
!1963 = !DILocation(line: 44, column: 23, scope: !1957)
!1964 = !DILocation(line: 45, column: 22, scope: !1957)
!1965 = !DILocation(line: 46, column: 17, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1957, file: !413, line: 46, column: 7)
!1967 = !DILocation(line: 46, column: 9, scope: !1966)
!1968 = !DILocation(line: 46, column: 25, scope: !1966)
!1969 = !DILocation(line: 46, column: 40, scope: !1966)
!1970 = !DILocalVariable(name: "__s1", arg: 1, scope: !1971, file: !892, line: 974, type: !1024)
!1971 = distinct !DISubprogram(name: "memeq", scope: !892, file: !892, line: 974, type: !1972, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !1974)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!219, !1024, !1024, !97}
!1974 = !{!1970, !1975, !1976}
!1975 = !DILocalVariable(name: "__s2", arg: 2, scope: !1971, file: !892, line: 974, type: !1024)
!1976 = !DILocalVariable(name: "__n", arg: 3, scope: !1971, file: !892, line: 974, type: !97)
!1977 = !DILocation(line: 0, scope: !1971, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 46, column: 28, scope: !1966)
!1979 = !DILocation(line: 976, column: 11, scope: !1971, inlinedAt: !1978)
!1980 = !DILocation(line: 976, column: 10, scope: !1971, inlinedAt: !1978)
!1981 = !DILocation(line: 46, column: 7, scope: !1957)
!1982 = !DILocation(line: 49, column: 11, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !413, line: 49, column: 11)
!1984 = distinct !DILexicalBlock(scope: !1966, file: !413, line: 47, column: 5)
!1985 = !DILocation(line: 49, column: 36, scope: !1983)
!1986 = !DILocation(line: 49, column: 11, scope: !1984)
!1987 = !DILocation(line: 65, column: 16, scope: !1957)
!1988 = !DILocation(line: 71, column: 27, scope: !1957)
!1989 = !DILocation(line: 74, column: 33, scope: !1957)
!1990 = !DILocation(line: 76, column: 1, scope: !1957)
!1991 = !DISubprogram(name: "strrchr", scope: !996, file: !996, line: 273, type: !1011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!1992 = !DILocation(line: 0, scope: !422)
!1993 = !DILocation(line: 40, column: 29, scope: !422)
!1994 = !DILocation(line: 41, column: 19, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !422, file: !423, line: 41, column: 7)
!1996 = !DILocation(line: 41, column: 7, scope: !422)
!1997 = !DILocation(line: 47, column: 3, scope: !422)
!1998 = !DILocation(line: 48, column: 3, scope: !422)
!1999 = !DILocation(line: 48, column: 13, scope: !422)
!2000 = !DILocalVariable(name: "ps", arg: 1, scope: !2001, file: !2002, line: 1135, type: !2005)
!2001 = distinct !DISubprogram(name: "mbszero", scope: !2002, file: !2002, line: 1135, type: !2003, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2006)
!2002 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2003 = !DISubroutineType(types: !2004)
!2004 = !{null, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!2006 = !{!2000}
!2007 = !DILocation(line: 0, scope: !2001, inlinedAt: !2008)
!2008 = distinct !DILocation(line: 48, column: 18, scope: !422)
!2009 = !DILocalVariable(name: "__dest", arg: 1, scope: !2010, file: !1095, line: 57, type: !94)
!2010 = distinct !DISubprogram(name: "memset", scope: !1095, file: !1095, line: 57, type: !2011, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!94, !94, !95, !97}
!2013 = !{!2009, !2014, !2015}
!2014 = !DILocalVariable(name: "__ch", arg: 2, scope: !2010, file: !1095, line: 57, type: !95)
!2015 = !DILocalVariable(name: "__len", arg: 3, scope: !2010, file: !1095, line: 57, type: !97)
!2016 = !DILocation(line: 0, scope: !2010, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 1137, column: 3, scope: !2001, inlinedAt: !2008)
!2018 = !DILocation(line: 59, column: 10, scope: !2010, inlinedAt: !2017)
!2019 = !DILocation(line: 49, column: 7, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !422, file: !423, line: 49, column: 7)
!2021 = !DILocation(line: 49, column: 39, scope: !2020)
!2022 = !DILocation(line: 49, column: 44, scope: !2020)
!2023 = !DILocation(line: 54, column: 1, scope: !422)
!2024 = !DISubprogram(name: "mbrtoc32", scope: !434, file: !434, line: 57, type: !2025, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!97, !2027, !870, !97, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2005)
!2030 = distinct !DISubprogram(name: "clone_quoting_options", scope: !453, file: !453, line: 113, type: !2031, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2034)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !2033}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2034 = !{!2035, !2036, !2037}
!2035 = !DILocalVariable(name: "o", arg: 1, scope: !2030, file: !453, line: 113, type: !2033)
!2036 = !DILocalVariable(name: "saved_errno", scope: !2030, file: !453, line: 115, type: !95)
!2037 = !DILocalVariable(name: "p", scope: !2030, file: !453, line: 116, type: !2033)
!2038 = !DILocation(line: 0, scope: !2030)
!2039 = !DILocation(line: 115, column: 21, scope: !2030)
!2040 = !DILocation(line: 116, column: 40, scope: !2030)
!2041 = !DILocation(line: 116, column: 31, scope: !2030)
!2042 = !DILocation(line: 118, column: 9, scope: !2030)
!2043 = !DILocation(line: 119, column: 3, scope: !2030)
!2044 = distinct !DISubprogram(name: "get_quoting_style", scope: !453, file: !453, line: 124, type: !2045, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2049)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!479, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!2049 = !{!2050}
!2050 = !DILocalVariable(name: "o", arg: 1, scope: !2044, file: !453, line: 124, type: !2047)
!2051 = !DILocation(line: 0, scope: !2044)
!2052 = !DILocation(line: 126, column: 11, scope: !2044)
!2053 = !DILocation(line: 126, column: 46, scope: !2044)
!2054 = !{!2055, !821, i64 0}
!2055 = !{!"quoting_options", !821, i64 0, !880, i64 4, !821, i64 8, !820, i64 40, !820, i64 48}
!2056 = !DILocation(line: 126, column: 3, scope: !2044)
!2057 = distinct !DISubprogram(name: "set_quoting_style", scope: !453, file: !453, line: 132, type: !2058, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2060)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !2033, !479}
!2060 = !{!2061, !2062}
!2061 = !DILocalVariable(name: "o", arg: 1, scope: !2057, file: !453, line: 132, type: !2033)
!2062 = !DILocalVariable(name: "s", arg: 2, scope: !2057, file: !453, line: 132, type: !479)
!2063 = !DILocation(line: 0, scope: !2057)
!2064 = !DILocation(line: 134, column: 4, scope: !2057)
!2065 = !DILocation(line: 134, column: 45, scope: !2057)
!2066 = !DILocation(line: 135, column: 1, scope: !2057)
!2067 = distinct !DISubprogram(name: "set_char_quoting", scope: !453, file: !453, line: 143, type: !2068, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!95, !2033, !4, !95}
!2070 = !{!2071, !2072, !2073, !2074, !2075, !2077, !2078}
!2071 = !DILocalVariable(name: "o", arg: 1, scope: !2067, file: !453, line: 143, type: !2033)
!2072 = !DILocalVariable(name: "c", arg: 2, scope: !2067, file: !453, line: 143, type: !4)
!2073 = !DILocalVariable(name: "i", arg: 3, scope: !2067, file: !453, line: 143, type: !95)
!2074 = !DILocalVariable(name: "uc", scope: !2067, file: !453, line: 145, type: !100)
!2075 = !DILocalVariable(name: "p", scope: !2067, file: !453, line: 146, type: !2076)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2077 = !DILocalVariable(name: "shift", scope: !2067, file: !453, line: 148, type: !95)
!2078 = !DILocalVariable(name: "r", scope: !2067, file: !453, line: 149, type: !76)
!2079 = !DILocation(line: 0, scope: !2067)
!2080 = !DILocation(line: 147, column: 6, scope: !2067)
!2081 = !DILocation(line: 147, column: 41, scope: !2067)
!2082 = !DILocation(line: 147, column: 62, scope: !2067)
!2083 = !DILocation(line: 147, column: 57, scope: !2067)
!2084 = !DILocation(line: 148, column: 15, scope: !2067)
!2085 = !DILocation(line: 149, column: 21, scope: !2067)
!2086 = !DILocation(line: 149, column: 24, scope: !2067)
!2087 = !DILocation(line: 149, column: 34, scope: !2067)
!2088 = !DILocation(line: 150, column: 19, scope: !2067)
!2089 = !DILocation(line: 150, column: 24, scope: !2067)
!2090 = !DILocation(line: 150, column: 6, scope: !2067)
!2091 = !DILocation(line: 151, column: 3, scope: !2067)
!2092 = distinct !DISubprogram(name: "set_quoting_flags", scope: !453, file: !453, line: 159, type: !2093, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2095)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!95, !2033, !95}
!2095 = !{!2096, !2097, !2098}
!2096 = !DILocalVariable(name: "o", arg: 1, scope: !2092, file: !453, line: 159, type: !2033)
!2097 = !DILocalVariable(name: "i", arg: 2, scope: !2092, file: !453, line: 159, type: !95)
!2098 = !DILocalVariable(name: "r", scope: !2092, file: !453, line: 163, type: !95)
!2099 = !DILocation(line: 0, scope: !2092)
!2100 = !DILocation(line: 161, column: 8, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2092, file: !453, line: 161, column: 7)
!2102 = !DILocation(line: 161, column: 7, scope: !2092)
!2103 = !DILocation(line: 163, column: 14, scope: !2092)
!2104 = !{!2055, !880, i64 4}
!2105 = !DILocation(line: 164, column: 12, scope: !2092)
!2106 = !DILocation(line: 165, column: 3, scope: !2092)
!2107 = distinct !DISubprogram(name: "set_custom_quoting", scope: !453, file: !453, line: 169, type: !2108, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2110)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null, !2033, !70, !70}
!2110 = !{!2111, !2112, !2113}
!2111 = !DILocalVariable(name: "o", arg: 1, scope: !2107, file: !453, line: 169, type: !2033)
!2112 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2107, file: !453, line: 170, type: !70)
!2113 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2107, file: !453, line: 170, type: !70)
!2114 = !DILocation(line: 0, scope: !2107)
!2115 = !DILocation(line: 172, column: 8, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2107, file: !453, line: 172, column: 7)
!2117 = !DILocation(line: 172, column: 7, scope: !2107)
!2118 = !DILocation(line: 174, column: 12, scope: !2107)
!2119 = !DILocation(line: 175, column: 8, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2107, file: !453, line: 175, column: 7)
!2121 = !DILocation(line: 175, column: 19, scope: !2120)
!2122 = !DILocation(line: 176, column: 5, scope: !2120)
!2123 = !DILocation(line: 177, column: 6, scope: !2107)
!2124 = !DILocation(line: 177, column: 17, scope: !2107)
!2125 = !{!2055, !820, i64 40}
!2126 = !DILocation(line: 178, column: 6, scope: !2107)
!2127 = !DILocation(line: 178, column: 18, scope: !2107)
!2128 = !{!2055, !820, i64 48}
!2129 = !DILocation(line: 179, column: 1, scope: !2107)
!2130 = !DISubprogram(name: "abort", scope: !1000, file: !1000, line: 598, type: !367, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !864)
!2131 = distinct !DISubprogram(name: "quotearg_buffer", scope: !453, file: !453, line: 774, type: !2132, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!97, !101, !97, !70, !97, !2047}
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142}
!2135 = !DILocalVariable(name: "buffer", arg: 1, scope: !2131, file: !453, line: 774, type: !101)
!2136 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2131, file: !453, line: 774, type: !97)
!2137 = !DILocalVariable(name: "arg", arg: 3, scope: !2131, file: !453, line: 775, type: !70)
!2138 = !DILocalVariable(name: "argsize", arg: 4, scope: !2131, file: !453, line: 775, type: !97)
!2139 = !DILocalVariable(name: "o", arg: 5, scope: !2131, file: !453, line: 776, type: !2047)
!2140 = !DILocalVariable(name: "p", scope: !2131, file: !453, line: 778, type: !2047)
!2141 = !DILocalVariable(name: "saved_errno", scope: !2131, file: !453, line: 779, type: !95)
!2142 = !DILocalVariable(name: "r", scope: !2131, file: !453, line: 780, type: !97)
!2143 = !DILocation(line: 0, scope: !2131)
!2144 = !DILocation(line: 778, column: 37, scope: !2131)
!2145 = !DILocation(line: 779, column: 21, scope: !2131)
!2146 = !DILocation(line: 781, column: 43, scope: !2131)
!2147 = !DILocation(line: 781, column: 53, scope: !2131)
!2148 = !DILocation(line: 781, column: 63, scope: !2131)
!2149 = !DILocation(line: 782, column: 43, scope: !2131)
!2150 = !DILocation(line: 782, column: 58, scope: !2131)
!2151 = !DILocation(line: 780, column: 14, scope: !2131)
!2152 = !DILocation(line: 783, column: 9, scope: !2131)
!2153 = !DILocation(line: 784, column: 3, scope: !2131)
!2154 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !453, file: !453, line: 251, type: !2155, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2159)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!97, !101, !97, !70, !97, !479, !95, !2157, !70, !70}
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!2159 = !{!2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2184, !2186, !2189, !2190, !2191, !2192, !2195, !2196, !2199, !2203, !2204, !2212, !2215, !2216, !2218, !2219, !2220, !2221}
!2160 = !DILocalVariable(name: "buffer", arg: 1, scope: !2154, file: !453, line: 251, type: !101)
!2161 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2154, file: !453, line: 251, type: !97)
!2162 = !DILocalVariable(name: "arg", arg: 3, scope: !2154, file: !453, line: 252, type: !70)
!2163 = !DILocalVariable(name: "argsize", arg: 4, scope: !2154, file: !453, line: 252, type: !97)
!2164 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2154, file: !453, line: 253, type: !479)
!2165 = !DILocalVariable(name: "flags", arg: 6, scope: !2154, file: !453, line: 253, type: !95)
!2166 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2154, file: !453, line: 254, type: !2157)
!2167 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2154, file: !453, line: 255, type: !70)
!2168 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2154, file: !453, line: 256, type: !70)
!2169 = !DILocalVariable(name: "unibyte_locale", scope: !2154, file: !453, line: 258, type: !219)
!2170 = !DILocalVariable(name: "len", scope: !2154, file: !453, line: 260, type: !97)
!2171 = !DILocalVariable(name: "orig_buffersize", scope: !2154, file: !453, line: 261, type: !97)
!2172 = !DILocalVariable(name: "quote_string", scope: !2154, file: !453, line: 262, type: !70)
!2173 = !DILocalVariable(name: "quote_string_len", scope: !2154, file: !453, line: 263, type: !97)
!2174 = !DILocalVariable(name: "backslash_escapes", scope: !2154, file: !453, line: 264, type: !219)
!2175 = !DILocalVariable(name: "elide_outer_quotes", scope: !2154, file: !453, line: 265, type: !219)
!2176 = !DILocalVariable(name: "encountered_single_quote", scope: !2154, file: !453, line: 266, type: !219)
!2177 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2154, file: !453, line: 267, type: !219)
!2178 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2154, file: !453, line: 309, type: !219)
!2179 = !DILocalVariable(name: "lq", scope: !2180, file: !453, line: 361, type: !70)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !453, line: 361, column: 11)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !453, line: 360, column: 13)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !453, line: 333, column: 7)
!2183 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 312, column: 5)
!2184 = !DILocalVariable(name: "i", scope: !2185, file: !453, line: 395, type: !97)
!2185 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 395, column: 3)
!2186 = !DILocalVariable(name: "is_right_quote", scope: !2187, file: !453, line: 397, type: !219)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !453, line: 396, column: 5)
!2188 = distinct !DILexicalBlock(scope: !2185, file: !453, line: 395, column: 3)
!2189 = !DILocalVariable(name: "escaping", scope: !2187, file: !453, line: 398, type: !219)
!2190 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2187, file: !453, line: 399, type: !219)
!2191 = !DILocalVariable(name: "c", scope: !2187, file: !453, line: 417, type: !100)
!2192 = !DILocalVariable(name: "m", scope: !2193, file: !453, line: 598, type: !97)
!2193 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 596, column: 11)
!2194 = distinct !DILexicalBlock(scope: !2187, file: !453, line: 419, column: 9)
!2195 = !DILocalVariable(name: "printable", scope: !2193, file: !453, line: 600, type: !219)
!2196 = !DILocalVariable(name: "mbs", scope: !2197, file: !453, line: 609, type: !540)
!2197 = distinct !DILexicalBlock(scope: !2198, file: !453, line: 608, column: 15)
!2198 = distinct !DILexicalBlock(scope: !2193, file: !453, line: 602, column: 17)
!2199 = !DILocalVariable(name: "w", scope: !2200, file: !453, line: 618, type: !433)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !453, line: 617, column: 19)
!2201 = distinct !DILexicalBlock(scope: !2202, file: !453, line: 616, column: 17)
!2202 = distinct !DILexicalBlock(scope: !2197, file: !453, line: 616, column: 17)
!2203 = !DILocalVariable(name: "bytes", scope: !2200, file: !453, line: 619, type: !97)
!2204 = !DILocalVariable(name: "j", scope: !2205, file: !453, line: 648, type: !97)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !453, line: 648, column: 29)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !453, line: 647, column: 27)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !453, line: 645, column: 29)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !453, line: 636, column: 23)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !453, line: 628, column: 30)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !453, line: 623, column: 30)
!2211 = distinct !DILexicalBlock(scope: !2200, file: !453, line: 621, column: 25)
!2212 = !DILocalVariable(name: "ilim", scope: !2213, file: !453, line: 674, type: !97)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !453, line: 671, column: 15)
!2214 = distinct !DILexicalBlock(scope: !2193, file: !453, line: 670, column: 17)
!2215 = !DILabel(scope: !2154, name: "process_input", file: !453, line: 308)
!2216 = !DILabel(scope: !2217, name: "c_and_shell_escape", file: !453, line: 502)
!2217 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 478, column: 9)
!2218 = !DILabel(scope: !2217, name: "c_escape", file: !453, line: 507)
!2219 = !DILabel(scope: !2187, name: "store_escape", file: !453, line: 709)
!2220 = !DILabel(scope: !2187, name: "store_c", file: !453, line: 712)
!2221 = !DILabel(scope: !2154, name: "force_outer_quoting_style", file: !453, line: 753)
!2222 = !DILocation(line: 0, scope: !2154)
!2223 = !DILocation(line: 258, column: 25, scope: !2154)
!2224 = !DILocation(line: 258, column: 36, scope: !2154)
!2225 = !DILocation(line: 267, column: 3, scope: !2154)
!2226 = !DILocation(line: 261, column: 10, scope: !2154)
!2227 = !DILocation(line: 262, column: 15, scope: !2154)
!2228 = !DILocation(line: 263, column: 10, scope: !2154)
!2229 = !DILocation(line: 308, column: 2, scope: !2154)
!2230 = !DILocation(line: 311, column: 3, scope: !2154)
!2231 = !DILocation(line: 318, column: 11, scope: !2183)
!2232 = !DILocation(line: 319, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !453, line: 319, column: 9)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !453, line: 319, column: 9)
!2235 = distinct !DILexicalBlock(scope: !2183, file: !453, line: 318, column: 11)
!2236 = !DILocation(line: 319, column: 9, scope: !2234)
!2237 = !DILocation(line: 0, scope: !531, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 357, column: 26, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !453, line: 335, column: 11)
!2240 = distinct !DILexicalBlock(scope: !2182, file: !453, line: 334, column: 13)
!2241 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !2238)
!2242 = !DILocation(line: 201, column: 19, scope: !2243, inlinedAt: !2238)
!2243 = distinct !DILexicalBlock(scope: !531, file: !453, line: 201, column: 7)
!2244 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !2238)
!2245 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !2238)
!2246 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !2238)
!2247 = !DILocation(line: 230, column: 13, scope: !531, inlinedAt: !2238)
!2248 = !DILocalVariable(name: "ps", arg: 1, scope: !2249, file: !2002, line: 1135, type: !2252)
!2249 = distinct !DISubprogram(name: "mbszero", scope: !2002, file: !2002, line: 1135, type: !2250, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2253)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!2253 = !{!2248}
!2254 = !DILocation(line: 0, scope: !2249, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !2238)
!2256 = !DILocalVariable(name: "__dest", arg: 1, scope: !2257, file: !1095, line: 57, type: !94)
!2257 = distinct !DISubprogram(name: "memset", scope: !1095, file: !1095, line: 57, type: !2011, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2258)
!2258 = !{!2256, !2259, !2260}
!2259 = !DILocalVariable(name: "__ch", arg: 2, scope: !2257, file: !1095, line: 57, type: !95)
!2260 = !DILocalVariable(name: "__len", arg: 3, scope: !2257, file: !1095, line: 57, type: !97)
!2261 = !DILocation(line: 0, scope: !2257, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 1137, column: 3, scope: !2249, inlinedAt: !2255)
!2263 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2262)
!2264 = !DILocation(line: 231, column: 7, scope: !2265, inlinedAt: !2238)
!2265 = distinct !DILexicalBlock(scope: !531, file: !453, line: 231, column: 7)
!2266 = !DILocation(line: 231, column: 40, scope: !2265, inlinedAt: !2238)
!2267 = !DILocation(line: 231, column: 45, scope: !2265, inlinedAt: !2238)
!2268 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !2238)
!2269 = !DILocation(line: 0, scope: !531, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 358, column: 27, scope: !2239)
!2271 = !DILocation(line: 199, column: 29, scope: !531, inlinedAt: !2270)
!2272 = !DILocation(line: 201, column: 19, scope: !2243, inlinedAt: !2270)
!2273 = !DILocation(line: 201, column: 7, scope: !531, inlinedAt: !2270)
!2274 = !DILocation(line: 229, column: 3, scope: !531, inlinedAt: !2270)
!2275 = !DILocation(line: 230, column: 3, scope: !531, inlinedAt: !2270)
!2276 = !DILocation(line: 230, column: 13, scope: !531, inlinedAt: !2270)
!2277 = !DILocation(line: 0, scope: !2249, inlinedAt: !2278)
!2278 = distinct !DILocation(line: 230, column: 18, scope: !531, inlinedAt: !2270)
!2279 = !DILocation(line: 0, scope: !2257, inlinedAt: !2280)
!2280 = distinct !DILocation(line: 1137, column: 3, scope: !2249, inlinedAt: !2278)
!2281 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2280)
!2282 = !DILocation(line: 231, column: 7, scope: !2265, inlinedAt: !2270)
!2283 = !DILocation(line: 231, column: 40, scope: !2265, inlinedAt: !2270)
!2284 = !DILocation(line: 231, column: 45, scope: !2265, inlinedAt: !2270)
!2285 = !DILocation(line: 235, column: 1, scope: !531, inlinedAt: !2270)
!2286 = !DILocation(line: 360, column: 13, scope: !2182)
!2287 = !DILocation(line: 0, scope: !2180)
!2288 = !DILocation(line: 361, column: 45, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2180, file: !453, line: 361, column: 11)
!2290 = !DILocation(line: 361, column: 11, scope: !2180)
!2291 = !DILocation(line: 362, column: 13, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !453, line: 362, column: 13)
!2293 = distinct !DILexicalBlock(scope: !2289, file: !453, line: 362, column: 13)
!2294 = !DILocation(line: 362, column: 13, scope: !2293)
!2295 = !DILocation(line: 361, column: 52, scope: !2289)
!2296 = distinct !{!2296, !2290, !2297, !926}
!2297 = !DILocation(line: 362, column: 13, scope: !2180)
!2298 = !DILocation(line: 260, column: 10, scope: !2154)
!2299 = !DILocation(line: 365, column: 28, scope: !2182)
!2300 = !DILocation(line: 367, column: 7, scope: !2183)
!2301 = !DILocation(line: 370, column: 7, scope: !2183)
!2302 = !DILocation(line: 376, column: 11, scope: !2183)
!2303 = !DILocation(line: 381, column: 11, scope: !2183)
!2304 = !DILocation(line: 382, column: 9, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !453, line: 382, column: 9)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !453, line: 382, column: 9)
!2307 = distinct !DILexicalBlock(scope: !2183, file: !453, line: 381, column: 11)
!2308 = !DILocation(line: 382, column: 9, scope: !2306)
!2309 = !DILocation(line: 389, column: 7, scope: !2183)
!2310 = !DILocation(line: 392, column: 7, scope: !2183)
!2311 = !DILocation(line: 0, scope: !2185)
!2312 = !DILocation(line: 395, column: 8, scope: !2185)
!2313 = !DILocation(line: 395, scope: !2185)
!2314 = !DILocation(line: 395, column: 34, scope: !2188)
!2315 = !DILocation(line: 395, column: 26, scope: !2188)
!2316 = !DILocation(line: 395, column: 48, scope: !2188)
!2317 = !DILocation(line: 395, column: 55, scope: !2188)
!2318 = !DILocation(line: 395, column: 3, scope: !2185)
!2319 = !DILocation(line: 395, column: 67, scope: !2188)
!2320 = !DILocation(line: 0, scope: !2187)
!2321 = !DILocation(line: 402, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2187, file: !453, line: 401, column: 11)
!2323 = !DILocation(line: 404, column: 17, scope: !2322)
!2324 = !DILocation(line: 405, column: 39, scope: !2322)
!2325 = !DILocation(line: 409, column: 32, scope: !2322)
!2326 = !DILocation(line: 405, column: 19, scope: !2322)
!2327 = !DILocation(line: 405, column: 15, scope: !2322)
!2328 = !DILocation(line: 410, column: 11, scope: !2322)
!2329 = !DILocation(line: 410, column: 25, scope: !2322)
!2330 = !DILocalVariable(name: "__s1", arg: 1, scope: !2331, file: !892, line: 974, type: !1024)
!2331 = distinct !DISubprogram(name: "memeq", scope: !892, file: !892, line: 974, type: !1972, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2332)
!2332 = !{!2330, !2333, !2334}
!2333 = !DILocalVariable(name: "__s2", arg: 2, scope: !2331, file: !892, line: 974, type: !1024)
!2334 = !DILocalVariable(name: "__n", arg: 3, scope: !2331, file: !892, line: 974, type: !97)
!2335 = !DILocation(line: 0, scope: !2331, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 410, column: 14, scope: !2322)
!2337 = !DILocation(line: 976, column: 11, scope: !2331, inlinedAt: !2336)
!2338 = !DILocation(line: 976, column: 10, scope: !2331, inlinedAt: !2336)
!2339 = !DILocation(line: 401, column: 11, scope: !2187)
!2340 = !DILocation(line: 417, column: 25, scope: !2187)
!2341 = !DILocation(line: 418, column: 7, scope: !2187)
!2342 = !DILocation(line: 421, column: 15, scope: !2194)
!2343 = !DILocation(line: 423, column: 15, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !453, line: 423, column: 15)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !453, line: 422, column: 13)
!2346 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 421, column: 15)
!2347 = !DILocation(line: 423, column: 15, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2344, file: !453, line: 423, column: 15)
!2349 = !DILocation(line: 423, column: 15, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2351, file: !453, line: 423, column: 15)
!2351 = distinct !DILexicalBlock(scope: !2352, file: !453, line: 423, column: 15)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !453, line: 423, column: 15)
!2353 = !DILocation(line: 423, column: 15, scope: !2351)
!2354 = !DILocation(line: 423, column: 15, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !453, line: 423, column: 15)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !453, line: 423, column: 15)
!2357 = !DILocation(line: 423, column: 15, scope: !2356)
!2358 = !DILocation(line: 423, column: 15, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2360, file: !453, line: 423, column: 15)
!2360 = distinct !DILexicalBlock(scope: !2352, file: !453, line: 423, column: 15)
!2361 = !DILocation(line: 423, column: 15, scope: !2360)
!2362 = !DILocation(line: 423, column: 15, scope: !2352)
!2363 = !DILocation(line: 423, column: 15, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2365, file: !453, line: 423, column: 15)
!2365 = distinct !DILexicalBlock(scope: !2344, file: !453, line: 423, column: 15)
!2366 = !DILocation(line: 423, column: 15, scope: !2365)
!2367 = !DILocation(line: 431, column: 19, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2345, file: !453, line: 430, column: 19)
!2369 = !DILocation(line: 431, column: 24, scope: !2368)
!2370 = !DILocation(line: 431, column: 28, scope: !2368)
!2371 = !DILocation(line: 431, column: 38, scope: !2368)
!2372 = !DILocation(line: 431, column: 48, scope: !2368)
!2373 = !DILocation(line: 431, column: 59, scope: !2368)
!2374 = !DILocation(line: 433, column: 19, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !453, line: 433, column: 19)
!2376 = distinct !DILexicalBlock(scope: !2377, file: !453, line: 433, column: 19)
!2377 = distinct !DILexicalBlock(scope: !2368, file: !453, line: 432, column: 17)
!2378 = !DILocation(line: 433, column: 19, scope: !2376)
!2379 = !DILocation(line: 434, column: 19, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !453, line: 434, column: 19)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !453, line: 434, column: 19)
!2382 = !DILocation(line: 434, column: 19, scope: !2381)
!2383 = !DILocation(line: 435, column: 17, scope: !2377)
!2384 = !DILocation(line: 442, column: 20, scope: !2346)
!2385 = !DILocation(line: 447, column: 11, scope: !2194)
!2386 = !DILocation(line: 450, column: 19, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 448, column: 13)
!2388 = !DILocation(line: 456, column: 19, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2387, file: !453, line: 455, column: 19)
!2390 = !DILocation(line: 456, column: 24, scope: !2389)
!2391 = !DILocation(line: 456, column: 28, scope: !2389)
!2392 = !DILocation(line: 456, column: 38, scope: !2389)
!2393 = !DILocation(line: 456, column: 47, scope: !2389)
!2394 = !DILocation(line: 456, column: 41, scope: !2389)
!2395 = !DILocation(line: 456, column: 52, scope: !2389)
!2396 = !DILocation(line: 455, column: 19, scope: !2387)
!2397 = !DILocation(line: 457, column: 25, scope: !2389)
!2398 = !DILocation(line: 457, column: 17, scope: !2389)
!2399 = !DILocation(line: 464, column: 25, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2389, file: !453, line: 458, column: 19)
!2401 = !DILocation(line: 468, column: 21, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !453, line: 468, column: 21)
!2403 = distinct !DILexicalBlock(scope: !2400, file: !453, line: 468, column: 21)
!2404 = !DILocation(line: 468, column: 21, scope: !2403)
!2405 = !DILocation(line: 469, column: 21, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !453, line: 469, column: 21)
!2407 = distinct !DILexicalBlock(scope: !2400, file: !453, line: 469, column: 21)
!2408 = !DILocation(line: 469, column: 21, scope: !2407)
!2409 = !DILocation(line: 470, column: 21, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !453, line: 470, column: 21)
!2411 = distinct !DILexicalBlock(scope: !2400, file: !453, line: 470, column: 21)
!2412 = !DILocation(line: 470, column: 21, scope: !2411)
!2413 = !DILocation(line: 471, column: 21, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !453, line: 471, column: 21)
!2415 = distinct !DILexicalBlock(scope: !2400, file: !453, line: 471, column: 21)
!2416 = !DILocation(line: 471, column: 21, scope: !2415)
!2417 = !DILocation(line: 472, column: 21, scope: !2400)
!2418 = !DILocation(line: 482, column: 33, scope: !2217)
!2419 = !DILocation(line: 483, column: 33, scope: !2217)
!2420 = !DILocation(line: 485, column: 33, scope: !2217)
!2421 = !DILocation(line: 486, column: 33, scope: !2217)
!2422 = !DILocation(line: 487, column: 33, scope: !2217)
!2423 = !DILocation(line: 490, column: 17, scope: !2217)
!2424 = !DILocation(line: 492, column: 21, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !453, line: 491, column: 15)
!2426 = distinct !DILexicalBlock(scope: !2217, file: !453, line: 490, column: 17)
!2427 = !DILocation(line: 499, column: 35, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2217, file: !453, line: 499, column: 17)
!2429 = !DILocation(line: 0, scope: !2217)
!2430 = !DILocation(line: 502, column: 11, scope: !2217)
!2431 = !DILocation(line: 504, column: 17, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2217, file: !453, line: 503, column: 17)
!2433 = !DILocation(line: 507, column: 11, scope: !2217)
!2434 = !DILocation(line: 508, column: 17, scope: !2217)
!2435 = !DILocation(line: 517, column: 15, scope: !2194)
!2436 = !DILocation(line: 517, column: 40, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 517, column: 15)
!2438 = !DILocation(line: 517, column: 47, scope: !2437)
!2439 = !DILocation(line: 517, column: 18, scope: !2437)
!2440 = !DILocation(line: 521, column: 17, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 521, column: 15)
!2442 = !DILocation(line: 521, column: 15, scope: !2194)
!2443 = !DILocation(line: 525, column: 11, scope: !2194)
!2444 = !DILocation(line: 537, column: 15, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 536, column: 15)
!2446 = !DILocation(line: 536, column: 15, scope: !2194)
!2447 = !DILocation(line: 544, column: 15, scope: !2194)
!2448 = !DILocation(line: 546, column: 19, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !453, line: 545, column: 13)
!2450 = distinct !DILexicalBlock(scope: !2194, file: !453, line: 544, column: 15)
!2451 = !DILocation(line: 549, column: 19, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !453, line: 549, column: 19)
!2453 = !DILocation(line: 549, column: 30, scope: !2452)
!2454 = !DILocation(line: 558, column: 15, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !453, line: 558, column: 15)
!2456 = distinct !DILexicalBlock(scope: !2449, file: !453, line: 558, column: 15)
!2457 = !DILocation(line: 558, column: 15, scope: !2456)
!2458 = !DILocation(line: 559, column: 15, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !453, line: 559, column: 15)
!2460 = distinct !DILexicalBlock(scope: !2449, file: !453, line: 559, column: 15)
!2461 = !DILocation(line: 559, column: 15, scope: !2460)
!2462 = !DILocation(line: 560, column: 15, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !453, line: 560, column: 15)
!2464 = distinct !DILexicalBlock(scope: !2449, file: !453, line: 560, column: 15)
!2465 = !DILocation(line: 560, column: 15, scope: !2464)
!2466 = !DILocation(line: 562, column: 13, scope: !2449)
!2467 = !DILocation(line: 602, column: 17, scope: !2193)
!2468 = !DILocation(line: 0, scope: !2193)
!2469 = !DILocation(line: 605, column: 29, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2198, file: !453, line: 603, column: 15)
!2471 = !DILocation(line: 605, column: 41, scope: !2470)
!2472 = !DILocation(line: 606, column: 15, scope: !2470)
!2473 = !DILocation(line: 609, column: 17, scope: !2197)
!2474 = !DILocation(line: 609, column: 27, scope: !2197)
!2475 = !DILocation(line: 0, scope: !2249, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 609, column: 32, scope: !2197)
!2477 = !DILocation(line: 0, scope: !2257, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 1137, column: 3, scope: !2249, inlinedAt: !2476)
!2479 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2478)
!2480 = !DILocation(line: 613, column: 29, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2197, file: !453, line: 613, column: 21)
!2482 = !DILocation(line: 613, column: 21, scope: !2197)
!2483 = !DILocation(line: 614, column: 29, scope: !2481)
!2484 = !DILocation(line: 614, column: 19, scope: !2481)
!2485 = !DILocation(line: 618, column: 21, scope: !2200)
!2486 = !DILocation(line: 620, column: 54, scope: !2200)
!2487 = !DILocation(line: 0, scope: !2200)
!2488 = !DILocation(line: 619, column: 36, scope: !2200)
!2489 = !DILocation(line: 621, column: 25, scope: !2200)
!2490 = !DILocation(line: 631, column: 38, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2209, file: !453, line: 629, column: 23)
!2492 = !DILocation(line: 631, column: 48, scope: !2491)
!2493 = !DILocation(line: 626, column: 25, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2210, file: !453, line: 624, column: 23)
!2495 = !DILocation(line: 631, column: 51, scope: !2491)
!2496 = !DILocation(line: 631, column: 25, scope: !2491)
!2497 = !DILocation(line: 632, column: 28, scope: !2491)
!2498 = !DILocation(line: 631, column: 34, scope: !2491)
!2499 = distinct !{!2499, !2496, !2497, !926}
!2500 = !DILocation(line: 646, column: 29, scope: !2207)
!2501 = !DILocation(line: 0, scope: !2205)
!2502 = !DILocation(line: 649, column: 49, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2205, file: !453, line: 648, column: 29)
!2504 = !DILocation(line: 649, column: 39, scope: !2503)
!2505 = !DILocation(line: 649, column: 31, scope: !2503)
!2506 = !DILocation(line: 648, column: 60, scope: !2503)
!2507 = !DILocation(line: 648, column: 50, scope: !2503)
!2508 = !DILocation(line: 648, column: 29, scope: !2205)
!2509 = distinct !{!2509, !2508, !2510, !926}
!2510 = !DILocation(line: 654, column: 33, scope: !2205)
!2511 = !DILocation(line: 657, column: 43, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2208, file: !453, line: 657, column: 29)
!2513 = !DILocalVariable(name: "wc", arg: 1, scope: !2514, file: !2515, line: 865, type: !2518)
!2514 = distinct !DISubprogram(name: "c32isprint", scope: !2515, file: !2515, line: 865, type: !2516, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2520)
!2515 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!95, !2518}
!2518 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2519, line: 20, baseType: !76)
!2519 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2520 = !{!2513}
!2521 = !DILocation(line: 0, scope: !2514, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 657, column: 31, scope: !2512)
!2523 = !DILocation(line: 871, column: 10, scope: !2514, inlinedAt: !2522)
!2524 = !DILocation(line: 657, column: 31, scope: !2512)
!2525 = !DILocation(line: 664, column: 23, scope: !2200)
!2526 = !DILocation(line: 665, column: 19, scope: !2201)
!2527 = !DILocation(line: 666, column: 15, scope: !2198)
!2528 = !DILocation(line: 753, column: 2, scope: !2154)
!2529 = !DILocation(line: 756, column: 51, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 756, column: 7)
!2531 = !DILocation(line: 0, scope: !2198)
!2532 = !DILocation(line: 670, column: 19, scope: !2214)
!2533 = !DILocation(line: 670, column: 23, scope: !2214)
!2534 = !DILocation(line: 674, column: 33, scope: !2213)
!2535 = !DILocation(line: 0, scope: !2213)
!2536 = !DILocation(line: 676, column: 17, scope: !2213)
!2537 = !DILocation(line: 398, column: 12, scope: !2187)
!2538 = !DILocation(line: 678, column: 43, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !453, line: 678, column: 25)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !453, line: 677, column: 19)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !453, line: 676, column: 17)
!2542 = distinct !DILexicalBlock(scope: !2213, file: !453, line: 676, column: 17)
!2543 = !DILocation(line: 680, column: 25, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2545, file: !453, line: 680, column: 25)
!2545 = distinct !DILexicalBlock(scope: !2539, file: !453, line: 679, column: 23)
!2546 = !DILocation(line: 680, column: 25, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !453, line: 680, column: 25)
!2548 = !DILocation(line: 680, column: 25, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !453, line: 680, column: 25)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !453, line: 680, column: 25)
!2551 = distinct !DILexicalBlock(scope: !2547, file: !453, line: 680, column: 25)
!2552 = !DILocation(line: 680, column: 25, scope: !2550)
!2553 = !DILocation(line: 680, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !453, line: 680, column: 25)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !453, line: 680, column: 25)
!2556 = !DILocation(line: 680, column: 25, scope: !2555)
!2557 = !DILocation(line: 680, column: 25, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2559, file: !453, line: 680, column: 25)
!2559 = distinct !DILexicalBlock(scope: !2551, file: !453, line: 680, column: 25)
!2560 = !DILocation(line: 680, column: 25, scope: !2559)
!2561 = !DILocation(line: 680, column: 25, scope: !2551)
!2562 = !DILocation(line: 680, column: 25, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !453, line: 680, column: 25)
!2564 = distinct !DILexicalBlock(scope: !2544, file: !453, line: 680, column: 25)
!2565 = !DILocation(line: 680, column: 25, scope: !2564)
!2566 = !DILocation(line: 681, column: 25, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !453, line: 681, column: 25)
!2568 = distinct !DILexicalBlock(scope: !2545, file: !453, line: 681, column: 25)
!2569 = !DILocation(line: 681, column: 25, scope: !2568)
!2570 = !DILocation(line: 682, column: 25, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !453, line: 682, column: 25)
!2572 = distinct !DILexicalBlock(scope: !2545, file: !453, line: 682, column: 25)
!2573 = !DILocation(line: 682, column: 25, scope: !2572)
!2574 = !DILocation(line: 683, column: 38, scope: !2545)
!2575 = !DILocation(line: 683, column: 33, scope: !2545)
!2576 = !DILocation(line: 684, column: 23, scope: !2545)
!2577 = !DILocation(line: 685, column: 30, scope: !2539)
!2578 = !DILocation(line: 687, column: 25, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !453, line: 687, column: 25)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !453, line: 687, column: 25)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !453, line: 686, column: 23)
!2582 = distinct !DILexicalBlock(scope: !2539, file: !453, line: 685, column: 30)
!2583 = !DILocation(line: 687, column: 25, scope: !2580)
!2584 = !DILocation(line: 689, column: 23, scope: !2581)
!2585 = !DILocation(line: 690, column: 35, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2540, file: !453, line: 690, column: 25)
!2587 = !DILocation(line: 690, column: 30, scope: !2586)
!2588 = !DILocation(line: 690, column: 25, scope: !2540)
!2589 = !DILocation(line: 692, column: 21, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !453, line: 692, column: 21)
!2591 = distinct !DILexicalBlock(scope: !2540, file: !453, line: 692, column: 21)
!2592 = !DILocation(line: 692, column: 21, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !453, line: 692, column: 21)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !453, line: 692, column: 21)
!2595 = distinct !DILexicalBlock(scope: !2590, file: !453, line: 692, column: 21)
!2596 = !DILocation(line: 692, column: 21, scope: !2594)
!2597 = !DILocation(line: 692, column: 21, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !453, line: 692, column: 21)
!2599 = distinct !DILexicalBlock(scope: !2595, file: !453, line: 692, column: 21)
!2600 = !DILocation(line: 692, column: 21, scope: !2599)
!2601 = !DILocation(line: 692, column: 21, scope: !2595)
!2602 = !DILocation(line: 0, scope: !2540)
!2603 = !DILocation(line: 693, column: 21, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !453, line: 693, column: 21)
!2605 = distinct !DILexicalBlock(scope: !2540, file: !453, line: 693, column: 21)
!2606 = !DILocation(line: 693, column: 21, scope: !2605)
!2607 = !DILocation(line: 694, column: 25, scope: !2540)
!2608 = !DILocation(line: 676, column: 17, scope: !2541)
!2609 = distinct !{!2609, !2610, !2611}
!2610 = !DILocation(line: 676, column: 17, scope: !2542)
!2611 = !DILocation(line: 695, column: 19, scope: !2542)
!2612 = !DILocation(line: 409, column: 30, scope: !2322)
!2613 = !DILocation(line: 702, column: 34, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2187, file: !453, line: 702, column: 11)
!2615 = !DILocation(line: 704, column: 14, scope: !2614)
!2616 = !DILocation(line: 705, column: 14, scope: !2614)
!2617 = !DILocation(line: 705, column: 35, scope: !2614)
!2618 = !DILocation(line: 705, column: 17, scope: !2614)
!2619 = !DILocation(line: 705, column: 47, scope: !2614)
!2620 = !DILocation(line: 705, column: 65, scope: !2614)
!2621 = !DILocation(line: 706, column: 11, scope: !2614)
!2622 = !DILocation(line: 702, column: 11, scope: !2187)
!2623 = !DILocation(line: 395, column: 15, scope: !2185)
!2624 = !DILocation(line: 709, column: 5, scope: !2187)
!2625 = !DILocation(line: 710, column: 7, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2187, file: !453, line: 710, column: 7)
!2627 = !DILocation(line: 710, column: 7, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2626, file: !453, line: 710, column: 7)
!2629 = !DILocation(line: 710, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !453, line: 710, column: 7)
!2631 = distinct !DILexicalBlock(scope: !2632, file: !453, line: 710, column: 7)
!2632 = distinct !DILexicalBlock(scope: !2628, file: !453, line: 710, column: 7)
!2633 = !DILocation(line: 710, column: 7, scope: !2631)
!2634 = !DILocation(line: 710, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !453, line: 710, column: 7)
!2636 = distinct !DILexicalBlock(scope: !2632, file: !453, line: 710, column: 7)
!2637 = !DILocation(line: 710, column: 7, scope: !2636)
!2638 = !DILocation(line: 710, column: 7, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !453, line: 710, column: 7)
!2640 = distinct !DILexicalBlock(scope: !2632, file: !453, line: 710, column: 7)
!2641 = !DILocation(line: 710, column: 7, scope: !2640)
!2642 = !DILocation(line: 710, column: 7, scope: !2632)
!2643 = !DILocation(line: 710, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2645, file: !453, line: 710, column: 7)
!2645 = distinct !DILexicalBlock(scope: !2626, file: !453, line: 710, column: 7)
!2646 = !DILocation(line: 710, column: 7, scope: !2645)
!2647 = !DILocation(line: 712, column: 5, scope: !2187)
!2648 = !DILocation(line: 713, column: 7, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !453, line: 713, column: 7)
!2650 = distinct !DILexicalBlock(scope: !2187, file: !453, line: 713, column: 7)
!2651 = !DILocation(line: 417, column: 21, scope: !2187)
!2652 = !DILocation(line: 713, column: 7, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2654, file: !453, line: 713, column: 7)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !453, line: 713, column: 7)
!2655 = distinct !DILexicalBlock(scope: !2649, file: !453, line: 713, column: 7)
!2656 = !DILocation(line: 713, column: 7, scope: !2654)
!2657 = !DILocation(line: 713, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !453, line: 713, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !453, line: 713, column: 7)
!2660 = !DILocation(line: 713, column: 7, scope: !2659)
!2661 = !DILocation(line: 713, column: 7, scope: !2655)
!2662 = !DILocation(line: 714, column: 7, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !453, line: 714, column: 7)
!2664 = distinct !DILexicalBlock(scope: !2187, file: !453, line: 714, column: 7)
!2665 = !DILocation(line: 714, column: 7, scope: !2664)
!2666 = !DILocation(line: 716, column: 11, scope: !2187)
!2667 = !DILocation(line: 718, column: 5, scope: !2188)
!2668 = !DILocation(line: 395, column: 82, scope: !2188)
!2669 = !DILocation(line: 395, column: 3, scope: !2188)
!2670 = distinct !{!2670, !2318, !2671, !926}
!2671 = !DILocation(line: 718, column: 5, scope: !2185)
!2672 = !DILocation(line: 720, column: 11, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 720, column: 7)
!2674 = !DILocation(line: 720, column: 16, scope: !2673)
!2675 = !DILocation(line: 728, column: 51, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 728, column: 7)
!2677 = !DILocation(line: 731, column: 11, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2676, file: !453, line: 730, column: 5)
!2679 = !DILocation(line: 732, column: 16, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2678, file: !453, line: 731, column: 11)
!2681 = !DILocation(line: 732, column: 9, scope: !2680)
!2682 = !DILocation(line: 736, column: 18, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !453, line: 736, column: 16)
!2684 = !DILocation(line: 736, column: 29, scope: !2683)
!2685 = !DILocation(line: 745, column: 7, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 745, column: 7)
!2687 = !DILocation(line: 745, column: 20, scope: !2686)
!2688 = !DILocation(line: 746, column: 12, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2690, file: !453, line: 746, column: 5)
!2690 = distinct !DILexicalBlock(scope: !2686, file: !453, line: 746, column: 5)
!2691 = !DILocation(line: 746, column: 5, scope: !2690)
!2692 = !DILocation(line: 747, column: 7, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !453, line: 747, column: 7)
!2694 = distinct !DILexicalBlock(scope: !2689, file: !453, line: 747, column: 7)
!2695 = !DILocation(line: 747, column: 7, scope: !2694)
!2696 = !DILocation(line: 746, column: 39, scope: !2689)
!2697 = distinct !{!2697, !2691, !2698, !926}
!2698 = !DILocation(line: 747, column: 7, scope: !2690)
!2699 = !DILocation(line: 749, column: 11, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2154, file: !453, line: 749, column: 7)
!2701 = !DILocation(line: 749, column: 7, scope: !2154)
!2702 = !DILocation(line: 750, column: 5, scope: !2700)
!2703 = !DILocation(line: 750, column: 17, scope: !2700)
!2704 = !DILocation(line: 756, column: 21, scope: !2530)
!2705 = !DILocation(line: 760, column: 42, scope: !2154)
!2706 = !DILocation(line: 758, column: 10, scope: !2154)
!2707 = !DILocation(line: 758, column: 3, scope: !2154)
!2708 = !DILocation(line: 762, column: 1, scope: !2154)
!2709 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1000, file: !1000, line: 98, type: !2710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!2710 = !DISubroutineType(types: !735)
!2711 = !DISubprogram(name: "iswprint", scope: !2712, file: !2712, line: 120, type: !2516, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!2712 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2713 = distinct !DISubprogram(name: "quotearg_alloc", scope: !453, file: !453, line: 788, type: !2714, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2716)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!101, !70, !97, !2047}
!2716 = !{!2717, !2718, !2719}
!2717 = !DILocalVariable(name: "arg", arg: 1, scope: !2713, file: !453, line: 788, type: !70)
!2718 = !DILocalVariable(name: "argsize", arg: 2, scope: !2713, file: !453, line: 788, type: !97)
!2719 = !DILocalVariable(name: "o", arg: 3, scope: !2713, file: !453, line: 789, type: !2047)
!2720 = !DILocation(line: 0, scope: !2713)
!2721 = !DILocalVariable(name: "arg", arg: 1, scope: !2722, file: !453, line: 801, type: !70)
!2722 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !453, file: !453, line: 801, type: !2723, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2725)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!101, !70, !97, !750, !2047}
!2725 = !{!2721, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733}
!2726 = !DILocalVariable(name: "argsize", arg: 2, scope: !2722, file: !453, line: 801, type: !97)
!2727 = !DILocalVariable(name: "size", arg: 3, scope: !2722, file: !453, line: 801, type: !750)
!2728 = !DILocalVariable(name: "o", arg: 4, scope: !2722, file: !453, line: 802, type: !2047)
!2729 = !DILocalVariable(name: "p", scope: !2722, file: !453, line: 804, type: !2047)
!2730 = !DILocalVariable(name: "saved_errno", scope: !2722, file: !453, line: 805, type: !95)
!2731 = !DILocalVariable(name: "flags", scope: !2722, file: !453, line: 807, type: !95)
!2732 = !DILocalVariable(name: "bufsize", scope: !2722, file: !453, line: 808, type: !97)
!2733 = !DILocalVariable(name: "buf", scope: !2722, file: !453, line: 812, type: !101)
!2734 = !DILocation(line: 0, scope: !2722, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 791, column: 10, scope: !2713)
!2736 = !DILocation(line: 804, column: 37, scope: !2722, inlinedAt: !2735)
!2737 = !DILocation(line: 805, column: 21, scope: !2722, inlinedAt: !2735)
!2738 = !DILocation(line: 807, column: 18, scope: !2722, inlinedAt: !2735)
!2739 = !DILocation(line: 807, column: 24, scope: !2722, inlinedAt: !2735)
!2740 = !DILocation(line: 808, column: 72, scope: !2722, inlinedAt: !2735)
!2741 = !DILocation(line: 809, column: 56, scope: !2722, inlinedAt: !2735)
!2742 = !DILocation(line: 810, column: 49, scope: !2722, inlinedAt: !2735)
!2743 = !DILocation(line: 811, column: 49, scope: !2722, inlinedAt: !2735)
!2744 = !DILocation(line: 808, column: 20, scope: !2722, inlinedAt: !2735)
!2745 = !DILocation(line: 811, column: 62, scope: !2722, inlinedAt: !2735)
!2746 = !DILocation(line: 812, column: 15, scope: !2722, inlinedAt: !2735)
!2747 = !DILocation(line: 813, column: 60, scope: !2722, inlinedAt: !2735)
!2748 = !DILocation(line: 815, column: 32, scope: !2722, inlinedAt: !2735)
!2749 = !DILocation(line: 815, column: 47, scope: !2722, inlinedAt: !2735)
!2750 = !DILocation(line: 813, column: 3, scope: !2722, inlinedAt: !2735)
!2751 = !DILocation(line: 816, column: 9, scope: !2722, inlinedAt: !2735)
!2752 = !DILocation(line: 791, column: 3, scope: !2713)
!2753 = !DILocation(line: 0, scope: !2722)
!2754 = !DILocation(line: 804, column: 37, scope: !2722)
!2755 = !DILocation(line: 805, column: 21, scope: !2722)
!2756 = !DILocation(line: 807, column: 18, scope: !2722)
!2757 = !DILocation(line: 807, column: 27, scope: !2722)
!2758 = !DILocation(line: 807, column: 24, scope: !2722)
!2759 = !DILocation(line: 808, column: 72, scope: !2722)
!2760 = !DILocation(line: 809, column: 56, scope: !2722)
!2761 = !DILocation(line: 810, column: 49, scope: !2722)
!2762 = !DILocation(line: 811, column: 49, scope: !2722)
!2763 = !DILocation(line: 808, column: 20, scope: !2722)
!2764 = !DILocation(line: 811, column: 62, scope: !2722)
!2765 = !DILocation(line: 812, column: 15, scope: !2722)
!2766 = !DILocation(line: 813, column: 60, scope: !2722)
!2767 = !DILocation(line: 815, column: 32, scope: !2722)
!2768 = !DILocation(line: 815, column: 47, scope: !2722)
!2769 = !DILocation(line: 813, column: 3, scope: !2722)
!2770 = !DILocation(line: 816, column: 9, scope: !2722)
!2771 = !DILocation(line: 817, column: 7, scope: !2722)
!2772 = !DILocation(line: 818, column: 11, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2722, file: !453, line: 817, column: 7)
!2774 = !{!1254, !1254, i64 0}
!2775 = !DILocation(line: 818, column: 5, scope: !2773)
!2776 = !DILocation(line: 819, column: 3, scope: !2722)
!2777 = distinct !DISubprogram(name: "quotearg_free", scope: !453, file: !453, line: 837, type: !367, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2778)
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "sv", scope: !2777, file: !453, line: 839, type: !554)
!2780 = !DILocalVariable(name: "i", scope: !2781, file: !453, line: 840, type: !95)
!2781 = distinct !DILexicalBlock(scope: !2777, file: !453, line: 840, column: 3)
!2782 = !DILocation(line: 839, column: 24, scope: !2777)
!2783 = !DILocation(line: 0, scope: !2777)
!2784 = !DILocation(line: 0, scope: !2781)
!2785 = !DILocation(line: 840, column: 21, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2781, file: !453, line: 840, column: 3)
!2787 = !DILocation(line: 840, column: 3, scope: !2781)
!2788 = !DILocation(line: 842, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2777, file: !453, line: 842, column: 7)
!2790 = !{!2791, !820, i64 8}
!2791 = !{!"slotvec", !1254, i64 0, !820, i64 8}
!2792 = !DILocation(line: 842, column: 17, scope: !2789)
!2793 = !DILocation(line: 842, column: 7, scope: !2777)
!2794 = !DILocation(line: 841, column: 17, scope: !2786)
!2795 = !DILocation(line: 841, column: 5, scope: !2786)
!2796 = !DILocation(line: 840, column: 32, scope: !2786)
!2797 = distinct !{!2797, !2787, !2798, !926}
!2798 = !DILocation(line: 841, column: 20, scope: !2781)
!2799 = !DILocation(line: 844, column: 7, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2789, file: !453, line: 843, column: 5)
!2801 = !DILocation(line: 845, column: 21, scope: !2800)
!2802 = !{!2791, !1254, i64 0}
!2803 = !DILocation(line: 846, column: 20, scope: !2800)
!2804 = !DILocation(line: 847, column: 5, scope: !2800)
!2805 = !DILocation(line: 848, column: 10, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2777, file: !453, line: 848, column: 7)
!2807 = !DILocation(line: 848, column: 7, scope: !2777)
!2808 = !DILocation(line: 850, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !453, line: 849, column: 5)
!2810 = !DILocation(line: 851, column: 15, scope: !2809)
!2811 = !DILocation(line: 852, column: 5, scope: !2809)
!2812 = !DILocation(line: 853, column: 10, scope: !2777)
!2813 = !DILocation(line: 854, column: 1, scope: !2777)
!2814 = distinct !DISubprogram(name: "quotearg_n", scope: !453, file: !453, line: 919, type: !993, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2815)
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2814, file: !453, line: 919, type: !95)
!2817 = !DILocalVariable(name: "arg", arg: 2, scope: !2814, file: !453, line: 919, type: !70)
!2818 = !DILocation(line: 0, scope: !2814)
!2819 = !DILocation(line: 921, column: 10, scope: !2814)
!2820 = !DILocation(line: 921, column: 3, scope: !2814)
!2821 = distinct !DISubprogram(name: "quotearg_n_options", scope: !453, file: !453, line: 866, type: !2822, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!101, !95, !70, !97, !2047}
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2835, !2836, !2838, !2839, !2840}
!2825 = !DILocalVariable(name: "n", arg: 1, scope: !2821, file: !453, line: 866, type: !95)
!2826 = !DILocalVariable(name: "arg", arg: 2, scope: !2821, file: !453, line: 866, type: !70)
!2827 = !DILocalVariable(name: "argsize", arg: 3, scope: !2821, file: !453, line: 866, type: !97)
!2828 = !DILocalVariable(name: "options", arg: 4, scope: !2821, file: !453, line: 867, type: !2047)
!2829 = !DILocalVariable(name: "saved_errno", scope: !2821, file: !453, line: 869, type: !95)
!2830 = !DILocalVariable(name: "sv", scope: !2821, file: !453, line: 871, type: !554)
!2831 = !DILocalVariable(name: "nslots_max", scope: !2821, file: !453, line: 873, type: !95)
!2832 = !DILocalVariable(name: "preallocated", scope: !2833, file: !453, line: 879, type: !219)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !453, line: 878, column: 5)
!2834 = distinct !DILexicalBlock(scope: !2821, file: !453, line: 877, column: 7)
!2835 = !DILocalVariable(name: "new_nslots", scope: !2833, file: !453, line: 880, type: !763)
!2836 = !DILocalVariable(name: "size", scope: !2837, file: !453, line: 891, type: !97)
!2837 = distinct !DILexicalBlock(scope: !2821, file: !453, line: 890, column: 3)
!2838 = !DILocalVariable(name: "val", scope: !2837, file: !453, line: 892, type: !101)
!2839 = !DILocalVariable(name: "flags", scope: !2837, file: !453, line: 894, type: !95)
!2840 = !DILocalVariable(name: "qsize", scope: !2837, file: !453, line: 895, type: !97)
!2841 = !DILocation(line: 0, scope: !2821)
!2842 = !DILocation(line: 869, column: 21, scope: !2821)
!2843 = !DILocation(line: 871, column: 24, scope: !2821)
!2844 = !DILocation(line: 874, column: 17, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2821, file: !453, line: 874, column: 7)
!2846 = !DILocation(line: 875, column: 5, scope: !2845)
!2847 = !DILocation(line: 877, column: 7, scope: !2834)
!2848 = !DILocation(line: 877, column: 14, scope: !2834)
!2849 = !DILocation(line: 877, column: 7, scope: !2821)
!2850 = !DILocation(line: 879, column: 31, scope: !2833)
!2851 = !DILocation(line: 0, scope: !2833)
!2852 = !DILocation(line: 880, column: 7, scope: !2833)
!2853 = !DILocation(line: 880, column: 26, scope: !2833)
!2854 = !DILocation(line: 880, column: 13, scope: !2833)
!2855 = !DILocation(line: 882, column: 31, scope: !2833)
!2856 = !DILocation(line: 883, column: 33, scope: !2833)
!2857 = !DILocation(line: 883, column: 42, scope: !2833)
!2858 = !DILocation(line: 883, column: 31, scope: !2833)
!2859 = !DILocation(line: 882, column: 22, scope: !2833)
!2860 = !DILocation(line: 882, column: 15, scope: !2833)
!2861 = !DILocation(line: 884, column: 11, scope: !2833)
!2862 = !DILocation(line: 885, column: 15, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2833, file: !453, line: 884, column: 11)
!2864 = !{i64 0, i64 8, !2774, i64 8, i64 8, !819}
!2865 = !DILocation(line: 885, column: 9, scope: !2863)
!2866 = !DILocation(line: 886, column: 20, scope: !2833)
!2867 = !DILocation(line: 886, column: 18, scope: !2833)
!2868 = !DILocation(line: 886, column: 32, scope: !2833)
!2869 = !DILocation(line: 886, column: 43, scope: !2833)
!2870 = !DILocation(line: 886, column: 53, scope: !2833)
!2871 = !DILocation(line: 0, scope: !2257, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 886, column: 7, scope: !2833)
!2873 = !DILocation(line: 59, column: 10, scope: !2257, inlinedAt: !2872)
!2874 = !DILocation(line: 887, column: 16, scope: !2833)
!2875 = !DILocation(line: 887, column: 14, scope: !2833)
!2876 = !DILocation(line: 888, column: 5, scope: !2834)
!2877 = !DILocation(line: 888, column: 5, scope: !2833)
!2878 = !DILocation(line: 891, column: 19, scope: !2837)
!2879 = !DILocation(line: 891, column: 25, scope: !2837)
!2880 = !DILocation(line: 0, scope: !2837)
!2881 = !DILocation(line: 892, column: 23, scope: !2837)
!2882 = !DILocation(line: 894, column: 26, scope: !2837)
!2883 = !DILocation(line: 894, column: 32, scope: !2837)
!2884 = !DILocation(line: 896, column: 55, scope: !2837)
!2885 = !DILocation(line: 897, column: 55, scope: !2837)
!2886 = !DILocation(line: 898, column: 55, scope: !2837)
!2887 = !DILocation(line: 899, column: 55, scope: !2837)
!2888 = !DILocation(line: 895, column: 20, scope: !2837)
!2889 = !DILocation(line: 901, column: 14, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2837, file: !453, line: 901, column: 9)
!2891 = !DILocation(line: 901, column: 9, scope: !2837)
!2892 = !DILocation(line: 903, column: 35, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2890, file: !453, line: 902, column: 7)
!2894 = !DILocation(line: 903, column: 20, scope: !2893)
!2895 = !DILocation(line: 904, column: 17, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !453, line: 904, column: 13)
!2897 = !DILocation(line: 904, column: 13, scope: !2893)
!2898 = !DILocation(line: 905, column: 11, scope: !2896)
!2899 = !DILocation(line: 906, column: 27, scope: !2893)
!2900 = !DILocation(line: 906, column: 19, scope: !2893)
!2901 = !DILocation(line: 907, column: 69, scope: !2893)
!2902 = !DILocation(line: 909, column: 44, scope: !2893)
!2903 = !DILocation(line: 910, column: 44, scope: !2893)
!2904 = !DILocation(line: 907, column: 9, scope: !2893)
!2905 = !DILocation(line: 911, column: 7, scope: !2893)
!2906 = !DILocation(line: 913, column: 11, scope: !2837)
!2907 = !DILocation(line: 914, column: 5, scope: !2837)
!2908 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !453, file: !453, line: 925, type: !2909, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!101, !95, !70, !97}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "n", arg: 1, scope: !2908, file: !453, line: 925, type: !95)
!2913 = !DILocalVariable(name: "arg", arg: 2, scope: !2908, file: !453, line: 925, type: !70)
!2914 = !DILocalVariable(name: "argsize", arg: 3, scope: !2908, file: !453, line: 925, type: !97)
!2915 = !DILocation(line: 0, scope: !2908)
!2916 = !DILocation(line: 927, column: 10, scope: !2908)
!2917 = !DILocation(line: 927, column: 3, scope: !2908)
!2918 = distinct !DISubprogram(name: "quotearg", scope: !453, file: !453, line: 931, type: !1002, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2919)
!2919 = !{!2920}
!2920 = !DILocalVariable(name: "arg", arg: 1, scope: !2918, file: !453, line: 931, type: !70)
!2921 = !DILocation(line: 0, scope: !2918)
!2922 = !DILocation(line: 0, scope: !2814, inlinedAt: !2923)
!2923 = distinct !DILocation(line: 933, column: 10, scope: !2918)
!2924 = !DILocation(line: 921, column: 10, scope: !2814, inlinedAt: !2923)
!2925 = !DILocation(line: 933, column: 3, scope: !2918)
!2926 = distinct !DISubprogram(name: "quotearg_mem", scope: !453, file: !453, line: 937, type: !2927, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!101, !70, !97}
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "arg", arg: 1, scope: !2926, file: !453, line: 937, type: !70)
!2931 = !DILocalVariable(name: "argsize", arg: 2, scope: !2926, file: !453, line: 937, type: !97)
!2932 = !DILocation(line: 0, scope: !2926)
!2933 = !DILocation(line: 0, scope: !2908, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 939, column: 10, scope: !2926)
!2935 = !DILocation(line: 927, column: 10, scope: !2908, inlinedAt: !2934)
!2936 = !DILocation(line: 939, column: 3, scope: !2926)
!2937 = distinct !DISubprogram(name: "quotearg_n_style", scope: !453, file: !453, line: 943, type: !2938, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2940)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!101, !95, !479, !70}
!2940 = !{!2941, !2942, !2943, !2944}
!2941 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !453, line: 943, type: !95)
!2942 = !DILocalVariable(name: "s", arg: 2, scope: !2937, file: !453, line: 943, type: !479)
!2943 = !DILocalVariable(name: "arg", arg: 3, scope: !2937, file: !453, line: 943, type: !70)
!2944 = !DILocalVariable(name: "o", scope: !2937, file: !453, line: 945, type: !2048)
!2945 = !DILocation(line: 0, scope: !2937)
!2946 = !DILocation(line: 945, column: 3, scope: !2937)
!2947 = !DILocation(line: 945, column: 32, scope: !2937)
!2948 = !{!2949}
!2949 = distinct !{!2949, !2950, !"quoting_options_from_style: argument 0"}
!2950 = distinct !{!2950, !"quoting_options_from_style"}
!2951 = !DILocation(line: 945, column: 36, scope: !2937)
!2952 = !DILocalVariable(name: "style", arg: 1, scope: !2953, file: !453, line: 183, type: !479)
!2953 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !453, file: !453, line: 183, type: !2954, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!506, !479}
!2956 = !{!2952, !2957}
!2957 = !DILocalVariable(name: "o", scope: !2953, file: !453, line: 185, type: !506)
!2958 = !DILocation(line: 0, scope: !2953, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 945, column: 36, scope: !2937)
!2960 = !DILocation(line: 185, column: 26, scope: !2953, inlinedAt: !2959)
!2961 = !DILocation(line: 186, column: 13, scope: !2962, inlinedAt: !2959)
!2962 = distinct !DILexicalBlock(scope: !2953, file: !453, line: 186, column: 7)
!2963 = !DILocation(line: 186, column: 7, scope: !2953, inlinedAt: !2959)
!2964 = !DILocation(line: 187, column: 5, scope: !2962, inlinedAt: !2959)
!2965 = !DILocation(line: 188, column: 11, scope: !2953, inlinedAt: !2959)
!2966 = !DILocation(line: 946, column: 10, scope: !2937)
!2967 = !DILocation(line: 947, column: 1, scope: !2937)
!2968 = !DILocation(line: 946, column: 3, scope: !2937)
!2969 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !453, file: !453, line: 950, type: !2970, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2972)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{!101, !95, !479, !70, !97}
!2972 = !{!2973, !2974, !2975, !2976, !2977}
!2973 = !DILocalVariable(name: "n", arg: 1, scope: !2969, file: !453, line: 950, type: !95)
!2974 = !DILocalVariable(name: "s", arg: 2, scope: !2969, file: !453, line: 950, type: !479)
!2975 = !DILocalVariable(name: "arg", arg: 3, scope: !2969, file: !453, line: 951, type: !70)
!2976 = !DILocalVariable(name: "argsize", arg: 4, scope: !2969, file: !453, line: 951, type: !97)
!2977 = !DILocalVariable(name: "o", scope: !2969, file: !453, line: 953, type: !2048)
!2978 = !DILocation(line: 0, scope: !2969)
!2979 = !DILocation(line: 953, column: 3, scope: !2969)
!2980 = !DILocation(line: 953, column: 32, scope: !2969)
!2981 = !{!2982}
!2982 = distinct !{!2982, !2983, !"quoting_options_from_style: argument 0"}
!2983 = distinct !{!2983, !"quoting_options_from_style"}
!2984 = !DILocation(line: 953, column: 36, scope: !2969)
!2985 = !DILocation(line: 0, scope: !2953, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 953, column: 36, scope: !2969)
!2987 = !DILocation(line: 185, column: 26, scope: !2953, inlinedAt: !2986)
!2988 = !DILocation(line: 186, column: 13, scope: !2962, inlinedAt: !2986)
!2989 = !DILocation(line: 186, column: 7, scope: !2953, inlinedAt: !2986)
!2990 = !DILocation(line: 187, column: 5, scope: !2962, inlinedAt: !2986)
!2991 = !DILocation(line: 188, column: 11, scope: !2953, inlinedAt: !2986)
!2992 = !DILocation(line: 954, column: 10, scope: !2969)
!2993 = !DILocation(line: 955, column: 1, scope: !2969)
!2994 = !DILocation(line: 954, column: 3, scope: !2969)
!2995 = distinct !DISubprogram(name: "quotearg_style", scope: !453, file: !453, line: 958, type: !2996, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!101, !479, !70}
!2998 = !{!2999, !3000}
!2999 = !DILocalVariable(name: "s", arg: 1, scope: !2995, file: !453, line: 958, type: !479)
!3000 = !DILocalVariable(name: "arg", arg: 2, scope: !2995, file: !453, line: 958, type: !70)
!3001 = !DILocation(line: 0, scope: !2995)
!3002 = !DILocation(line: 0, scope: !2937, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 960, column: 10, scope: !2995)
!3004 = !DILocation(line: 945, column: 3, scope: !2937, inlinedAt: !3003)
!3005 = !DILocation(line: 945, column: 32, scope: !2937, inlinedAt: !3003)
!3006 = !{!3007}
!3007 = distinct !{!3007, !3008, !"quoting_options_from_style: argument 0"}
!3008 = distinct !{!3008, !"quoting_options_from_style"}
!3009 = !DILocation(line: 945, column: 36, scope: !2937, inlinedAt: !3003)
!3010 = !DILocation(line: 0, scope: !2953, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 945, column: 36, scope: !2937, inlinedAt: !3003)
!3012 = !DILocation(line: 185, column: 26, scope: !2953, inlinedAt: !3011)
!3013 = !DILocation(line: 186, column: 13, scope: !2962, inlinedAt: !3011)
!3014 = !DILocation(line: 186, column: 7, scope: !2953, inlinedAt: !3011)
!3015 = !DILocation(line: 187, column: 5, scope: !2962, inlinedAt: !3011)
!3016 = !DILocation(line: 188, column: 11, scope: !2953, inlinedAt: !3011)
!3017 = !DILocation(line: 946, column: 10, scope: !2937, inlinedAt: !3003)
!3018 = !DILocation(line: 947, column: 1, scope: !2937, inlinedAt: !3003)
!3019 = !DILocation(line: 960, column: 3, scope: !2995)
!3020 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !453, file: !453, line: 964, type: !3021, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!101, !479, !70, !97}
!3023 = !{!3024, !3025, !3026}
!3024 = !DILocalVariable(name: "s", arg: 1, scope: !3020, file: !453, line: 964, type: !479)
!3025 = !DILocalVariable(name: "arg", arg: 2, scope: !3020, file: !453, line: 964, type: !70)
!3026 = !DILocalVariable(name: "argsize", arg: 3, scope: !3020, file: !453, line: 964, type: !97)
!3027 = !DILocation(line: 0, scope: !3020)
!3028 = !DILocation(line: 0, scope: !2969, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 966, column: 10, scope: !3020)
!3030 = !DILocation(line: 953, column: 3, scope: !2969, inlinedAt: !3029)
!3031 = !DILocation(line: 953, column: 32, scope: !2969, inlinedAt: !3029)
!3032 = !{!3033}
!3033 = distinct !{!3033, !3034, !"quoting_options_from_style: argument 0"}
!3034 = distinct !{!3034, !"quoting_options_from_style"}
!3035 = !DILocation(line: 953, column: 36, scope: !2969, inlinedAt: !3029)
!3036 = !DILocation(line: 0, scope: !2953, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 953, column: 36, scope: !2969, inlinedAt: !3029)
!3038 = !DILocation(line: 185, column: 26, scope: !2953, inlinedAt: !3037)
!3039 = !DILocation(line: 186, column: 13, scope: !2962, inlinedAt: !3037)
!3040 = !DILocation(line: 186, column: 7, scope: !2953, inlinedAt: !3037)
!3041 = !DILocation(line: 187, column: 5, scope: !2962, inlinedAt: !3037)
!3042 = !DILocation(line: 188, column: 11, scope: !2953, inlinedAt: !3037)
!3043 = !DILocation(line: 954, column: 10, scope: !2969, inlinedAt: !3029)
!3044 = !DILocation(line: 955, column: 1, scope: !2969, inlinedAt: !3029)
!3045 = !DILocation(line: 966, column: 3, scope: !3020)
!3046 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !453, file: !453, line: 970, type: !3047, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!101, !70, !97, !4}
!3049 = !{!3050, !3051, !3052, !3053}
!3050 = !DILocalVariable(name: "arg", arg: 1, scope: !3046, file: !453, line: 970, type: !70)
!3051 = !DILocalVariable(name: "argsize", arg: 2, scope: !3046, file: !453, line: 970, type: !97)
!3052 = !DILocalVariable(name: "ch", arg: 3, scope: !3046, file: !453, line: 970, type: !4)
!3053 = !DILocalVariable(name: "options", scope: !3046, file: !453, line: 972, type: !506)
!3054 = !DILocation(line: 0, scope: !3046)
!3055 = !DILocation(line: 972, column: 3, scope: !3046)
!3056 = !DILocation(line: 972, column: 26, scope: !3046)
!3057 = !DILocation(line: 973, column: 13, scope: !3046)
!3058 = !{i64 0, i64 4, !888, i64 4, i64 4, !879, i64 8, i64 32, !888, i64 40, i64 8, !819, i64 48, i64 8, !819}
!3059 = !DILocation(line: 0, scope: !2067, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 974, column: 3, scope: !3046)
!3061 = !DILocation(line: 147, column: 41, scope: !2067, inlinedAt: !3060)
!3062 = !DILocation(line: 147, column: 62, scope: !2067, inlinedAt: !3060)
!3063 = !DILocation(line: 147, column: 57, scope: !2067, inlinedAt: !3060)
!3064 = !DILocation(line: 148, column: 15, scope: !2067, inlinedAt: !3060)
!3065 = !DILocation(line: 149, column: 21, scope: !2067, inlinedAt: !3060)
!3066 = !DILocation(line: 149, column: 24, scope: !2067, inlinedAt: !3060)
!3067 = !DILocation(line: 150, column: 19, scope: !2067, inlinedAt: !3060)
!3068 = !DILocation(line: 150, column: 24, scope: !2067, inlinedAt: !3060)
!3069 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !3060)
!3070 = !DILocation(line: 975, column: 10, scope: !3046)
!3071 = !DILocation(line: 976, column: 1, scope: !3046)
!3072 = !DILocation(line: 975, column: 3, scope: !3046)
!3073 = distinct !DISubprogram(name: "quotearg_char", scope: !453, file: !453, line: 979, type: !3074, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3076)
!3074 = !DISubroutineType(types: !3075)
!3075 = !{!101, !70, !4}
!3076 = !{!3077, !3078}
!3077 = !DILocalVariable(name: "arg", arg: 1, scope: !3073, file: !453, line: 979, type: !70)
!3078 = !DILocalVariable(name: "ch", arg: 2, scope: !3073, file: !453, line: 979, type: !4)
!3079 = !DILocation(line: 0, scope: !3073)
!3080 = !DILocation(line: 0, scope: !3046, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 981, column: 10, scope: !3073)
!3082 = !DILocation(line: 972, column: 3, scope: !3046, inlinedAt: !3081)
!3083 = !DILocation(line: 972, column: 26, scope: !3046, inlinedAt: !3081)
!3084 = !DILocation(line: 973, column: 13, scope: !3046, inlinedAt: !3081)
!3085 = !DILocation(line: 0, scope: !2067, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 974, column: 3, scope: !3046, inlinedAt: !3081)
!3087 = !DILocation(line: 147, column: 41, scope: !2067, inlinedAt: !3086)
!3088 = !DILocation(line: 147, column: 62, scope: !2067, inlinedAt: !3086)
!3089 = !DILocation(line: 147, column: 57, scope: !2067, inlinedAt: !3086)
!3090 = !DILocation(line: 148, column: 15, scope: !2067, inlinedAt: !3086)
!3091 = !DILocation(line: 149, column: 21, scope: !2067, inlinedAt: !3086)
!3092 = !DILocation(line: 149, column: 24, scope: !2067, inlinedAt: !3086)
!3093 = !DILocation(line: 150, column: 19, scope: !2067, inlinedAt: !3086)
!3094 = !DILocation(line: 150, column: 24, scope: !2067, inlinedAt: !3086)
!3095 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !3086)
!3096 = !DILocation(line: 975, column: 10, scope: !3046, inlinedAt: !3081)
!3097 = !DILocation(line: 976, column: 1, scope: !3046, inlinedAt: !3081)
!3098 = !DILocation(line: 981, column: 3, scope: !3073)
!3099 = distinct !DISubprogram(name: "quotearg_colon", scope: !453, file: !453, line: 985, type: !1002, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3100)
!3100 = !{!3101}
!3101 = !DILocalVariable(name: "arg", arg: 1, scope: !3099, file: !453, line: 985, type: !70)
!3102 = !DILocation(line: 0, scope: !3099)
!3103 = !DILocation(line: 0, scope: !3073, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 987, column: 10, scope: !3099)
!3105 = !DILocation(line: 0, scope: !3046, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 981, column: 10, scope: !3073, inlinedAt: !3104)
!3107 = !DILocation(line: 972, column: 3, scope: !3046, inlinedAt: !3106)
!3108 = !DILocation(line: 972, column: 26, scope: !3046, inlinedAt: !3106)
!3109 = !DILocation(line: 973, column: 13, scope: !3046, inlinedAt: !3106)
!3110 = !DILocation(line: 0, scope: !2067, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 974, column: 3, scope: !3046, inlinedAt: !3106)
!3112 = !DILocation(line: 147, column: 57, scope: !2067, inlinedAt: !3111)
!3113 = !DILocation(line: 149, column: 21, scope: !2067, inlinedAt: !3111)
!3114 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !3111)
!3115 = !DILocation(line: 975, column: 10, scope: !3046, inlinedAt: !3106)
!3116 = !DILocation(line: 976, column: 1, scope: !3046, inlinedAt: !3106)
!3117 = !DILocation(line: 987, column: 3, scope: !3099)
!3118 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !453, file: !453, line: 991, type: !2927, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3119)
!3119 = !{!3120, !3121}
!3120 = !DILocalVariable(name: "arg", arg: 1, scope: !3118, file: !453, line: 991, type: !70)
!3121 = !DILocalVariable(name: "argsize", arg: 2, scope: !3118, file: !453, line: 991, type: !97)
!3122 = !DILocation(line: 0, scope: !3118)
!3123 = !DILocation(line: 0, scope: !3046, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 993, column: 10, scope: !3118)
!3125 = !DILocation(line: 972, column: 3, scope: !3046, inlinedAt: !3124)
!3126 = !DILocation(line: 972, column: 26, scope: !3046, inlinedAt: !3124)
!3127 = !DILocation(line: 973, column: 13, scope: !3046, inlinedAt: !3124)
!3128 = !DILocation(line: 0, scope: !2067, inlinedAt: !3129)
!3129 = distinct !DILocation(line: 974, column: 3, scope: !3046, inlinedAt: !3124)
!3130 = !DILocation(line: 147, column: 57, scope: !2067, inlinedAt: !3129)
!3131 = !DILocation(line: 149, column: 21, scope: !2067, inlinedAt: !3129)
!3132 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !3129)
!3133 = !DILocation(line: 975, column: 10, scope: !3046, inlinedAt: !3124)
!3134 = !DILocation(line: 976, column: 1, scope: !3046, inlinedAt: !3124)
!3135 = !DILocation(line: 993, column: 3, scope: !3118)
!3136 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !453, file: !453, line: 997, type: !2938, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3137)
!3137 = !{!3138, !3139, !3140, !3141}
!3138 = !DILocalVariable(name: "n", arg: 1, scope: !3136, file: !453, line: 997, type: !95)
!3139 = !DILocalVariable(name: "s", arg: 2, scope: !3136, file: !453, line: 997, type: !479)
!3140 = !DILocalVariable(name: "arg", arg: 3, scope: !3136, file: !453, line: 997, type: !70)
!3141 = !DILocalVariable(name: "options", scope: !3136, file: !453, line: 999, type: !506)
!3142 = !DILocation(line: 185, column: 26, scope: !2953, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 1000, column: 13, scope: !3136)
!3144 = !DILocation(line: 0, scope: !3136)
!3145 = !DILocation(line: 999, column: 3, scope: !3136)
!3146 = !DILocation(line: 999, column: 26, scope: !3136)
!3147 = !DILocation(line: 0, scope: !2953, inlinedAt: !3143)
!3148 = !DILocation(line: 186, column: 13, scope: !2962, inlinedAt: !3143)
!3149 = !DILocation(line: 186, column: 7, scope: !2953, inlinedAt: !3143)
!3150 = !DILocation(line: 187, column: 5, scope: !2962, inlinedAt: !3143)
!3151 = !{!3152}
!3152 = distinct !{!3152, !3153, !"quoting_options_from_style: argument 0"}
!3153 = distinct !{!3153, !"quoting_options_from_style"}
!3154 = !DILocation(line: 1000, column: 13, scope: !3136)
!3155 = !DILocation(line: 0, scope: !2067, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 1001, column: 3, scope: !3136)
!3157 = !DILocation(line: 147, column: 57, scope: !2067, inlinedAt: !3156)
!3158 = !DILocation(line: 149, column: 21, scope: !2067, inlinedAt: !3156)
!3159 = !DILocation(line: 150, column: 6, scope: !2067, inlinedAt: !3156)
!3160 = !DILocation(line: 1002, column: 10, scope: !3136)
!3161 = !DILocation(line: 1003, column: 1, scope: !3136)
!3162 = !DILocation(line: 1002, column: 3, scope: !3136)
!3163 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !453, file: !453, line: 1006, type: !3164, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3166)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{!101, !95, !70, !70, !70}
!3166 = !{!3167, !3168, !3169, !3170}
!3167 = !DILocalVariable(name: "n", arg: 1, scope: !3163, file: !453, line: 1006, type: !95)
!3168 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3163, file: !453, line: 1006, type: !70)
!3169 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3163, file: !453, line: 1007, type: !70)
!3170 = !DILocalVariable(name: "arg", arg: 4, scope: !3163, file: !453, line: 1007, type: !70)
!3171 = !DILocation(line: 0, scope: !3163)
!3172 = !DILocalVariable(name: "n", arg: 1, scope: !3173, file: !453, line: 1014, type: !95)
!3173 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !453, file: !453, line: 1014, type: !3174, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3176)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!101, !95, !70, !70, !70, !97}
!3176 = !{!3172, !3177, !3178, !3179, !3180, !3181}
!3177 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3173, file: !453, line: 1014, type: !70)
!3178 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3173, file: !453, line: 1015, type: !70)
!3179 = !DILocalVariable(name: "arg", arg: 4, scope: !3173, file: !453, line: 1016, type: !70)
!3180 = !DILocalVariable(name: "argsize", arg: 5, scope: !3173, file: !453, line: 1016, type: !97)
!3181 = !DILocalVariable(name: "o", scope: !3173, file: !453, line: 1018, type: !506)
!3182 = !DILocation(line: 0, scope: !3173, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1009, column: 10, scope: !3163)
!3184 = !DILocation(line: 1018, column: 3, scope: !3173, inlinedAt: !3183)
!3185 = !DILocation(line: 1018, column: 26, scope: !3173, inlinedAt: !3183)
!3186 = !DILocation(line: 1018, column: 30, scope: !3173, inlinedAt: !3183)
!3187 = !DILocation(line: 0, scope: !2107, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 1019, column: 3, scope: !3173, inlinedAt: !3183)
!3189 = !DILocation(line: 174, column: 12, scope: !2107, inlinedAt: !3188)
!3190 = !DILocation(line: 175, column: 8, scope: !2120, inlinedAt: !3188)
!3191 = !DILocation(line: 175, column: 19, scope: !2120, inlinedAt: !3188)
!3192 = !DILocation(line: 176, column: 5, scope: !2120, inlinedAt: !3188)
!3193 = !DILocation(line: 177, column: 6, scope: !2107, inlinedAt: !3188)
!3194 = !DILocation(line: 177, column: 17, scope: !2107, inlinedAt: !3188)
!3195 = !DILocation(line: 178, column: 6, scope: !2107, inlinedAt: !3188)
!3196 = !DILocation(line: 178, column: 18, scope: !2107, inlinedAt: !3188)
!3197 = !DILocation(line: 1020, column: 10, scope: !3173, inlinedAt: !3183)
!3198 = !DILocation(line: 1021, column: 1, scope: !3173, inlinedAt: !3183)
!3199 = !DILocation(line: 1009, column: 3, scope: !3163)
!3200 = !DILocation(line: 0, scope: !3173)
!3201 = !DILocation(line: 1018, column: 3, scope: !3173)
!3202 = !DILocation(line: 1018, column: 26, scope: !3173)
!3203 = !DILocation(line: 1018, column: 30, scope: !3173)
!3204 = !DILocation(line: 0, scope: !2107, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 1019, column: 3, scope: !3173)
!3206 = !DILocation(line: 174, column: 12, scope: !2107, inlinedAt: !3205)
!3207 = !DILocation(line: 175, column: 8, scope: !2120, inlinedAt: !3205)
!3208 = !DILocation(line: 175, column: 19, scope: !2120, inlinedAt: !3205)
!3209 = !DILocation(line: 176, column: 5, scope: !2120, inlinedAt: !3205)
!3210 = !DILocation(line: 177, column: 6, scope: !2107, inlinedAt: !3205)
!3211 = !DILocation(line: 177, column: 17, scope: !2107, inlinedAt: !3205)
!3212 = !DILocation(line: 178, column: 6, scope: !2107, inlinedAt: !3205)
!3213 = !DILocation(line: 178, column: 18, scope: !2107, inlinedAt: !3205)
!3214 = !DILocation(line: 1020, column: 10, scope: !3173)
!3215 = !DILocation(line: 1021, column: 1, scope: !3173)
!3216 = !DILocation(line: 1020, column: 3, scope: !3173)
!3217 = distinct !DISubprogram(name: "quotearg_custom", scope: !453, file: !453, line: 1024, type: !3218, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3220)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!101, !70, !70, !70}
!3220 = !{!3221, !3222, !3223}
!3221 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3217, file: !453, line: 1024, type: !70)
!3222 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3217, file: !453, line: 1024, type: !70)
!3223 = !DILocalVariable(name: "arg", arg: 3, scope: !3217, file: !453, line: 1025, type: !70)
!3224 = !DILocation(line: 0, scope: !3217)
!3225 = !DILocation(line: 0, scope: !3163, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 1027, column: 10, scope: !3217)
!3227 = !DILocation(line: 0, scope: !3173, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 1009, column: 10, scope: !3163, inlinedAt: !3226)
!3229 = !DILocation(line: 1018, column: 3, scope: !3173, inlinedAt: !3228)
!3230 = !DILocation(line: 1018, column: 26, scope: !3173, inlinedAt: !3228)
!3231 = !DILocation(line: 1018, column: 30, scope: !3173, inlinedAt: !3228)
!3232 = !DILocation(line: 0, scope: !2107, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 1019, column: 3, scope: !3173, inlinedAt: !3228)
!3234 = !DILocation(line: 174, column: 12, scope: !2107, inlinedAt: !3233)
!3235 = !DILocation(line: 175, column: 8, scope: !2120, inlinedAt: !3233)
!3236 = !DILocation(line: 175, column: 19, scope: !2120, inlinedAt: !3233)
!3237 = !DILocation(line: 176, column: 5, scope: !2120, inlinedAt: !3233)
!3238 = !DILocation(line: 177, column: 6, scope: !2107, inlinedAt: !3233)
!3239 = !DILocation(line: 177, column: 17, scope: !2107, inlinedAt: !3233)
!3240 = !DILocation(line: 178, column: 6, scope: !2107, inlinedAt: !3233)
!3241 = !DILocation(line: 178, column: 18, scope: !2107, inlinedAt: !3233)
!3242 = !DILocation(line: 1020, column: 10, scope: !3173, inlinedAt: !3228)
!3243 = !DILocation(line: 1021, column: 1, scope: !3173, inlinedAt: !3228)
!3244 = !DILocation(line: 1027, column: 3, scope: !3217)
!3245 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !453, file: !453, line: 1031, type: !3246, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!101, !70, !70, !70, !97}
!3248 = !{!3249, !3250, !3251, !3252}
!3249 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3245, file: !453, line: 1031, type: !70)
!3250 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3245, file: !453, line: 1031, type: !70)
!3251 = !DILocalVariable(name: "arg", arg: 3, scope: !3245, file: !453, line: 1032, type: !70)
!3252 = !DILocalVariable(name: "argsize", arg: 4, scope: !3245, file: !453, line: 1032, type: !97)
!3253 = !DILocation(line: 0, scope: !3245)
!3254 = !DILocation(line: 0, scope: !3173, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 1034, column: 10, scope: !3245)
!3256 = !DILocation(line: 1018, column: 3, scope: !3173, inlinedAt: !3255)
!3257 = !DILocation(line: 1018, column: 26, scope: !3173, inlinedAt: !3255)
!3258 = !DILocation(line: 1018, column: 30, scope: !3173, inlinedAt: !3255)
!3259 = !DILocation(line: 0, scope: !2107, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 1019, column: 3, scope: !3173, inlinedAt: !3255)
!3261 = !DILocation(line: 174, column: 12, scope: !2107, inlinedAt: !3260)
!3262 = !DILocation(line: 175, column: 8, scope: !2120, inlinedAt: !3260)
!3263 = !DILocation(line: 175, column: 19, scope: !2120, inlinedAt: !3260)
!3264 = !DILocation(line: 176, column: 5, scope: !2120, inlinedAt: !3260)
!3265 = !DILocation(line: 177, column: 6, scope: !2107, inlinedAt: !3260)
!3266 = !DILocation(line: 177, column: 17, scope: !2107, inlinedAt: !3260)
!3267 = !DILocation(line: 178, column: 6, scope: !2107, inlinedAt: !3260)
!3268 = !DILocation(line: 178, column: 18, scope: !2107, inlinedAt: !3260)
!3269 = !DILocation(line: 1020, column: 10, scope: !3173, inlinedAt: !3255)
!3270 = !DILocation(line: 1021, column: 1, scope: !3173, inlinedAt: !3255)
!3271 = !DILocation(line: 1034, column: 3, scope: !3245)
!3272 = distinct !DISubprogram(name: "quote_n_mem", scope: !453, file: !453, line: 1049, type: !3273, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3275)
!3273 = !DISubroutineType(types: !3274)
!3274 = !{!70, !95, !70, !97}
!3275 = !{!3276, !3277, !3278}
!3276 = !DILocalVariable(name: "n", arg: 1, scope: !3272, file: !453, line: 1049, type: !95)
!3277 = !DILocalVariable(name: "arg", arg: 2, scope: !3272, file: !453, line: 1049, type: !70)
!3278 = !DILocalVariable(name: "argsize", arg: 3, scope: !3272, file: !453, line: 1049, type: !97)
!3279 = !DILocation(line: 0, scope: !3272)
!3280 = !DILocation(line: 1051, column: 10, scope: !3272)
!3281 = !DILocation(line: 1051, column: 3, scope: !3272)
!3282 = distinct !DISubprogram(name: "quote_mem", scope: !453, file: !453, line: 1055, type: !3283, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!70, !70, !97}
!3285 = !{!3286, !3287}
!3286 = !DILocalVariable(name: "arg", arg: 1, scope: !3282, file: !453, line: 1055, type: !70)
!3287 = !DILocalVariable(name: "argsize", arg: 2, scope: !3282, file: !453, line: 1055, type: !97)
!3288 = !DILocation(line: 0, scope: !3282)
!3289 = !DILocation(line: 0, scope: !3272, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 1057, column: 10, scope: !3282)
!3291 = !DILocation(line: 1051, column: 10, scope: !3272, inlinedAt: !3290)
!3292 = !DILocation(line: 1057, column: 3, scope: !3282)
!3293 = distinct !DISubprogram(name: "quote_n", scope: !453, file: !453, line: 1061, type: !3294, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3296)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!70, !95, !70}
!3296 = !{!3297, !3298}
!3297 = !DILocalVariable(name: "n", arg: 1, scope: !3293, file: !453, line: 1061, type: !95)
!3298 = !DILocalVariable(name: "arg", arg: 2, scope: !3293, file: !453, line: 1061, type: !70)
!3299 = !DILocation(line: 0, scope: !3293)
!3300 = !DILocation(line: 0, scope: !3272, inlinedAt: !3301)
!3301 = distinct !DILocation(line: 1063, column: 10, scope: !3293)
!3302 = !DILocation(line: 1051, column: 10, scope: !3272, inlinedAt: !3301)
!3303 = !DILocation(line: 1063, column: 3, scope: !3293)
!3304 = distinct !DISubprogram(name: "quote", scope: !453, file: !453, line: 1067, type: !3305, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !477, retainedNodes: !3307)
!3305 = !DISubroutineType(types: !3306)
!3306 = !{!70, !70}
!3307 = !{!3308}
!3308 = !DILocalVariable(name: "arg", arg: 1, scope: !3304, file: !453, line: 1067, type: !70)
!3309 = !DILocation(line: 0, scope: !3304)
!3310 = !DILocation(line: 0, scope: !3293, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1069, column: 10, scope: !3304)
!3312 = !DILocation(line: 0, scope: !3272, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 1063, column: 10, scope: !3293, inlinedAt: !3311)
!3314 = !DILocation(line: 1051, column: 10, scope: !3272, inlinedAt: !3313)
!3315 = !DILocation(line: 1069, column: 3, scope: !3304)
!3316 = distinct !DISubprogram(name: "safe_write", scope: !3317, file: !3317, line: 56, type: !3318, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !728, retainedNodes: !3321)
!3317 = !DIFile(filename: "./lib/safe-read.c", directory: "/src", checksumkind: CSK_MD5, checksum: "434e548fbeff241cc07e1dbcc7b4611f")
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!765, !95, !3320, !763}
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "bufptr", file: !3317, line: 45, baseType: !1024)
!3321 = !{!3322, !3323, !3324, !3325}
!3322 = !DILocalVariable(name: "fd", arg: 1, scope: !3316, file: !3317, line: 56, type: !95)
!3323 = !DILocalVariable(name: "buf", arg: 2, scope: !3316, file: !3317, line: 56, type: !3320)
!3324 = !DILocalVariable(name: "count", arg: 3, scope: !3316, file: !3317, line: 56, type: !763)
!3325 = !DILocalVariable(name: "result", scope: !3326, file: !3317, line: 60, type: !3329)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !3317, line: 59, column: 5)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !3317, line: 58, column: 3)
!3328 = distinct !DILexicalBlock(scope: !3316, file: !3317, line: 58, column: 3)
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1778, line: 108, baseType: !1145)
!3330 = !DILocation(line: 0, scope: !3316)
!3331 = !DILocation(line: 58, column: 3, scope: !3316)
!3332 = !DILocation(line: 62, column: 11, scope: !3326)
!3333 = !DILocation(line: 60, column: 24, scope: !3326)
!3334 = !DILocation(line: 0, scope: !3326)
!3335 = !DILocation(line: 62, column: 13, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3326, file: !3317, line: 62, column: 11)
!3337 = !DILocation(line: 64, column: 16, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3336, file: !3317, line: 64, column: 16)
!3339 = !DILocation(line: 64, column: 16, scope: !3336)
!3340 = distinct !{!3340, !3341, !3342}
!3341 = !DILocation(line: 58, column: 3, scope: !3328)
!3342 = !DILocation(line: 70, column: 5, scope: !3328)
!3343 = !DILocation(line: 66, column: 22, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3338, file: !3317, line: 66, column: 16)
!3345 = !DILocation(line: 0, scope: !3327)
!3346 = !DILocation(line: 71, column: 1, scope: !3316)
!3347 = !DISubprogram(name: "write", scope: !1343, file: !1343, line: 378, type: !3348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!3329, !95, !1024, !97}
!3350 = distinct !DISubprogram(name: "version_etc_arn", scope: !569, file: !569, line: 61, type: !3351, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3388)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{null, !3353, !70, !70, !70, !3387, !97}
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3355)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3355, file: !236, line: 51, baseType: !95, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3355, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3355, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3355, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3355, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3355, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3355, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3355, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3355, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3355, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3355, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3355, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3355, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3355, file: !236, line: 70, baseType: !3371, size: 64, offset: 832)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3355, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3355, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3355, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3355, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3355, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3355, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3355, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3355, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3355, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3355, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3355, file: !236, line: 93, baseType: !3371, size: 64, offset: 1344)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3355, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3355, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3355, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3355, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!3388 = !{!3389, !3390, !3391, !3392, !3393, !3394}
!3389 = !DILocalVariable(name: "stream", arg: 1, scope: !3350, file: !569, line: 61, type: !3353)
!3390 = !DILocalVariable(name: "command_name", arg: 2, scope: !3350, file: !569, line: 62, type: !70)
!3391 = !DILocalVariable(name: "package", arg: 3, scope: !3350, file: !569, line: 62, type: !70)
!3392 = !DILocalVariable(name: "version", arg: 4, scope: !3350, file: !569, line: 63, type: !70)
!3393 = !DILocalVariable(name: "authors", arg: 5, scope: !3350, file: !569, line: 64, type: !3387)
!3394 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3350, file: !569, line: 64, type: !97)
!3395 = !DILocation(line: 0, scope: !3350)
!3396 = !DILocation(line: 66, column: 7, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3350, file: !569, line: 66, column: 7)
!3398 = !DILocation(line: 66, column: 7, scope: !3350)
!3399 = !DILocation(line: 67, column: 5, scope: !3397)
!3400 = !DILocation(line: 69, column: 5, scope: !3397)
!3401 = !DILocation(line: 83, column: 3, scope: !3350)
!3402 = !DILocation(line: 85, column: 3, scope: !3350)
!3403 = !DILocation(line: 88, column: 3, scope: !3350)
!3404 = !DILocation(line: 95, column: 3, scope: !3350)
!3405 = !DILocation(line: 97, column: 3, scope: !3350)
!3406 = !DILocation(line: 105, column: 7, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3350, file: !569, line: 98, column: 5)
!3408 = !DILocation(line: 106, column: 7, scope: !3407)
!3409 = !DILocation(line: 109, column: 7, scope: !3407)
!3410 = !DILocation(line: 110, column: 7, scope: !3407)
!3411 = !DILocation(line: 113, column: 7, scope: !3407)
!3412 = !DILocation(line: 115, column: 7, scope: !3407)
!3413 = !DILocation(line: 120, column: 7, scope: !3407)
!3414 = !DILocation(line: 122, column: 7, scope: !3407)
!3415 = !DILocation(line: 127, column: 7, scope: !3407)
!3416 = !DILocation(line: 129, column: 7, scope: !3407)
!3417 = !DILocation(line: 134, column: 7, scope: !3407)
!3418 = !DILocation(line: 137, column: 7, scope: !3407)
!3419 = !DILocation(line: 142, column: 7, scope: !3407)
!3420 = !DILocation(line: 145, column: 7, scope: !3407)
!3421 = !DILocation(line: 150, column: 7, scope: !3407)
!3422 = !DILocation(line: 154, column: 7, scope: !3407)
!3423 = !DILocation(line: 159, column: 7, scope: !3407)
!3424 = !DILocation(line: 163, column: 7, scope: !3407)
!3425 = !DILocation(line: 170, column: 7, scope: !3407)
!3426 = !DILocation(line: 174, column: 7, scope: !3407)
!3427 = !DILocation(line: 176, column: 1, scope: !3350)
!3428 = distinct !DISubprogram(name: "version_etc_ar", scope: !569, file: !569, line: 183, type: !3429, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3431)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{null, !3353, !70, !70, !70, !3387}
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437}
!3432 = !DILocalVariable(name: "stream", arg: 1, scope: !3428, file: !569, line: 183, type: !3353)
!3433 = !DILocalVariable(name: "command_name", arg: 2, scope: !3428, file: !569, line: 184, type: !70)
!3434 = !DILocalVariable(name: "package", arg: 3, scope: !3428, file: !569, line: 184, type: !70)
!3435 = !DILocalVariable(name: "version", arg: 4, scope: !3428, file: !569, line: 185, type: !70)
!3436 = !DILocalVariable(name: "authors", arg: 5, scope: !3428, file: !569, line: 185, type: !3387)
!3437 = !DILocalVariable(name: "n_authors", scope: !3428, file: !569, line: 187, type: !97)
!3438 = !DILocation(line: 0, scope: !3428)
!3439 = !DILocation(line: 189, column: 8, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3428, file: !569, line: 189, column: 3)
!3441 = !DILocation(line: 189, scope: !3440)
!3442 = !DILocation(line: 189, column: 23, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !569, line: 189, column: 3)
!3444 = !DILocation(line: 189, column: 3, scope: !3440)
!3445 = !DILocation(line: 189, column: 52, scope: !3443)
!3446 = distinct !{!3446, !3444, !3447, !926}
!3447 = !DILocation(line: 190, column: 5, scope: !3440)
!3448 = !DILocation(line: 191, column: 3, scope: !3428)
!3449 = !DILocation(line: 192, column: 1, scope: !3428)
!3450 = distinct !DISubprogram(name: "version_etc_va", scope: !569, file: !569, line: 199, type: !3451, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3464)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{null, !3353, !70, !70, !70, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !326, line: 52, baseType: !3454)
!3454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !328, line: 14, baseType: !3455)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3456, baseType: !3457)
!3456 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !3458)
!3458 = !{!3459, !3460, !3461, !3462, !3463}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3457, file: !3456, line: 192, baseType: !94, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3457, file: !3456, line: 192, baseType: !94, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3457, file: !3456, line: 192, baseType: !94, size: 64, offset: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3457, file: !3456, line: 192, baseType: !95, size: 32, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3457, file: !3456, line: 192, baseType: !95, size: 32, offset: 224)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3465 = !DILocalVariable(name: "stream", arg: 1, scope: !3450, file: !569, line: 199, type: !3353)
!3466 = !DILocalVariable(name: "command_name", arg: 2, scope: !3450, file: !569, line: 200, type: !70)
!3467 = !DILocalVariable(name: "package", arg: 3, scope: !3450, file: !569, line: 200, type: !70)
!3468 = !DILocalVariable(name: "version", arg: 4, scope: !3450, file: !569, line: 201, type: !70)
!3469 = !DILocalVariable(name: "authors", arg: 5, scope: !3450, file: !569, line: 201, type: !3453)
!3470 = !DILocalVariable(name: "n_authors", scope: !3450, file: !569, line: 203, type: !97)
!3471 = !DILocalVariable(name: "authtab", scope: !3450, file: !569, line: 204, type: !3472)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 640, elements: !40)
!3473 = !DILocation(line: 0, scope: !3450)
!3474 = !DILocation(line: 201, column: 46, scope: !3450)
!3475 = !DILocation(line: 204, column: 3, scope: !3450)
!3476 = !DILocation(line: 204, column: 15, scope: !3450)
!3477 = !DILocation(line: 208, column: 35, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !569, line: 206, column: 3)
!3479 = distinct !DILexicalBlock(scope: !3450, file: !569, line: 206, column: 3)
!3480 = !DILocation(line: 208, column: 33, scope: !3478)
!3481 = !DILocation(line: 208, column: 67, scope: !3478)
!3482 = !DILocation(line: 206, column: 3, scope: !3479)
!3483 = !DILocation(line: 208, column: 14, scope: !3478)
!3484 = !DILocation(line: 0, scope: !3479)
!3485 = !DILocation(line: 211, column: 3, scope: !3450)
!3486 = !DILocation(line: 213, column: 1, scope: !3450)
!3487 = distinct !DISubprogram(name: "version_etc", scope: !569, file: !569, line: 230, type: !3488, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{null, !3353, !70, !70, !70, null}
!3490 = !{!3491, !3492, !3493, !3494, !3495}
!3491 = !DILocalVariable(name: "stream", arg: 1, scope: !3487, file: !569, line: 230, type: !3353)
!3492 = !DILocalVariable(name: "command_name", arg: 2, scope: !3487, file: !569, line: 231, type: !70)
!3493 = !DILocalVariable(name: "package", arg: 3, scope: !3487, file: !569, line: 231, type: !70)
!3494 = !DILocalVariable(name: "version", arg: 4, scope: !3487, file: !569, line: 232, type: !70)
!3495 = !DILocalVariable(name: "authors", scope: !3487, file: !569, line: 234, type: !3453)
!3496 = !DILocation(line: 0, scope: !3487)
!3497 = !DILocation(line: 234, column: 3, scope: !3487)
!3498 = !DILocation(line: 234, column: 11, scope: !3487)
!3499 = !DILocation(line: 235, column: 3, scope: !3487)
!3500 = !DILocation(line: 236, column: 3, scope: !3487)
!3501 = !DILocation(line: 237, column: 3, scope: !3487)
!3502 = !DILocation(line: 238, column: 1, scope: !3487)
!3503 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !569, file: !569, line: 241, type: !367, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !736, retainedNodes: !864)
!3504 = !DILocation(line: 243, column: 3, scope: !3503)
!3505 = !DILocation(line: 248, column: 3, scope: !3503)
!3506 = !DILocation(line: 254, column: 3, scope: !3503)
!3507 = !DILocation(line: 259, column: 3, scope: !3503)
!3508 = !DILocation(line: 261, column: 1, scope: !3503)
!3509 = distinct !DISubprogram(name: "xnrealloc", scope: !3510, file: !3510, line: 147, type: !3511, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3513)
!3510 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!94, !94, !97, !97}
!3513 = !{!3514, !3515, !3516}
!3514 = !DILocalVariable(name: "p", arg: 1, scope: !3509, file: !3510, line: 147, type: !94)
!3515 = !DILocalVariable(name: "n", arg: 2, scope: !3509, file: !3510, line: 147, type: !97)
!3516 = !DILocalVariable(name: "s", arg: 3, scope: !3509, file: !3510, line: 147, type: !97)
!3517 = !DILocation(line: 0, scope: !3509)
!3518 = !DILocalVariable(name: "p", arg: 1, scope: !3519, file: !744, line: 83, type: !94)
!3519 = distinct !DISubprogram(name: "xreallocarray", scope: !744, file: !744, line: 83, type: !3511, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3520)
!3520 = !{!3518, !3521, !3522}
!3521 = !DILocalVariable(name: "n", arg: 2, scope: !3519, file: !744, line: 83, type: !97)
!3522 = !DILocalVariable(name: "s", arg: 3, scope: !3519, file: !744, line: 83, type: !97)
!3523 = !DILocation(line: 0, scope: !3519, inlinedAt: !3524)
!3524 = distinct !DILocation(line: 149, column: 10, scope: !3509)
!3525 = !DILocation(line: 85, column: 25, scope: !3519, inlinedAt: !3524)
!3526 = !DILocalVariable(name: "p", arg: 1, scope: !3527, file: !744, line: 37, type: !94)
!3527 = distinct !DISubprogram(name: "check_nonnull", scope: !744, file: !744, line: 37, type: !3528, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3530)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!94, !94}
!3530 = !{!3526}
!3531 = !DILocation(line: 0, scope: !3527, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 85, column: 10, scope: !3519, inlinedAt: !3524)
!3533 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3532)
!3534 = distinct !DILexicalBlock(scope: !3527, file: !744, line: 39, column: 7)
!3535 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3532)
!3536 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3532)
!3537 = !DILocation(line: 149, column: 3, scope: !3509)
!3538 = !DILocation(line: 0, scope: !3519)
!3539 = !DILocation(line: 85, column: 25, scope: !3519)
!3540 = !DILocation(line: 0, scope: !3527, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 85, column: 10, scope: !3519)
!3542 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3541)
!3543 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3541)
!3544 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3541)
!3545 = !DILocation(line: 85, column: 3, scope: !3519)
!3546 = distinct !DISubprogram(name: "xmalloc", scope: !744, file: !744, line: 47, type: !3547, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!94, !97}
!3549 = !{!3550}
!3550 = !DILocalVariable(name: "s", arg: 1, scope: !3546, file: !744, line: 47, type: !97)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocation(line: 49, column: 25, scope: !3546)
!3553 = !DILocation(line: 0, scope: !3527, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 49, column: 10, scope: !3546)
!3555 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3554)
!3556 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3554)
!3557 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3554)
!3558 = !DILocation(line: 49, column: 3, scope: !3546)
!3559 = !DISubprogram(name: "malloc", scope: !1000, file: !1000, line: 540, type: !3547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!3560 = distinct !DISubprogram(name: "ximalloc", scope: !744, file: !744, line: 53, type: !3561, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3563)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!94, !763}
!3563 = !{!3564}
!3564 = !DILocalVariable(name: "s", arg: 1, scope: !3560, file: !744, line: 53, type: !763)
!3565 = !DILocation(line: 0, scope: !3560)
!3566 = !DILocalVariable(name: "s", arg: 1, scope: !3567, file: !3568, line: 55, type: !763)
!3567 = distinct !DISubprogram(name: "imalloc", scope: !3568, file: !3568, line: 55, type: !3561, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3569)
!3568 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3569 = !{!3566}
!3570 = !DILocation(line: 0, scope: !3567, inlinedAt: !3571)
!3571 = distinct !DILocation(line: 55, column: 25, scope: !3560)
!3572 = !DILocation(line: 57, column: 26, scope: !3567, inlinedAt: !3571)
!3573 = !DILocation(line: 0, scope: !3527, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 55, column: 10, scope: !3560)
!3575 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3574)
!3576 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3574)
!3577 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3574)
!3578 = !DILocation(line: 55, column: 3, scope: !3560)
!3579 = distinct !DISubprogram(name: "xcharalloc", scope: !744, file: !744, line: 59, type: !3580, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!101, !97}
!3582 = !{!3583}
!3583 = !DILocalVariable(name: "n", arg: 1, scope: !3579, file: !744, line: 59, type: !97)
!3584 = !DILocation(line: 0, scope: !3579)
!3585 = !DILocation(line: 0, scope: !3546, inlinedAt: !3586)
!3586 = distinct !DILocation(line: 61, column: 10, scope: !3579)
!3587 = !DILocation(line: 49, column: 25, scope: !3546, inlinedAt: !3586)
!3588 = !DILocation(line: 0, scope: !3527, inlinedAt: !3589)
!3589 = distinct !DILocation(line: 49, column: 10, scope: !3546, inlinedAt: !3586)
!3590 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3589)
!3591 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3589)
!3592 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3589)
!3593 = !DILocation(line: 61, column: 3, scope: !3579)
!3594 = distinct !DISubprogram(name: "xrealloc", scope: !744, file: !744, line: 68, type: !3595, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!94, !94, !97}
!3597 = !{!3598, !3599}
!3598 = !DILocalVariable(name: "p", arg: 1, scope: !3594, file: !744, line: 68, type: !94)
!3599 = !DILocalVariable(name: "s", arg: 2, scope: !3594, file: !744, line: 68, type: !97)
!3600 = !DILocation(line: 0, scope: !3594)
!3601 = !DILocalVariable(name: "ptr", arg: 1, scope: !3602, file: !3603, line: 2057, type: !94)
!3602 = distinct !DISubprogram(name: "rpl_realloc", scope: !3603, file: !3603, line: 2057, type: !3595, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3604)
!3603 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3604 = !{!3601, !3605}
!3605 = !DILocalVariable(name: "size", arg: 2, scope: !3602, file: !3603, line: 2057, type: !97)
!3606 = !DILocation(line: 0, scope: !3602, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 70, column: 25, scope: !3594)
!3608 = !DILocation(line: 2059, column: 24, scope: !3602, inlinedAt: !3607)
!3609 = !DILocation(line: 2059, column: 10, scope: !3602, inlinedAt: !3607)
!3610 = !DILocation(line: 0, scope: !3527, inlinedAt: !3611)
!3611 = distinct !DILocation(line: 70, column: 10, scope: !3594)
!3612 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3611)
!3613 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3611)
!3614 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3611)
!3615 = !DILocation(line: 70, column: 3, scope: !3594)
!3616 = !DISubprogram(name: "realloc", scope: !1000, file: !1000, line: 551, type: !3595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!3617 = distinct !DISubprogram(name: "xirealloc", scope: !744, file: !744, line: 74, type: !3618, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3620)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{!94, !94, !763}
!3620 = !{!3621, !3622}
!3621 = !DILocalVariable(name: "p", arg: 1, scope: !3617, file: !744, line: 74, type: !94)
!3622 = !DILocalVariable(name: "s", arg: 2, scope: !3617, file: !744, line: 74, type: !763)
!3623 = !DILocation(line: 0, scope: !3617)
!3624 = !DILocalVariable(name: "p", arg: 1, scope: !3625, file: !3568, line: 66, type: !94)
!3625 = distinct !DISubprogram(name: "irealloc", scope: !3568, file: !3568, line: 66, type: !3618, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3626)
!3626 = !{!3624, !3627}
!3627 = !DILocalVariable(name: "s", arg: 2, scope: !3625, file: !3568, line: 66, type: !763)
!3628 = !DILocation(line: 0, scope: !3625, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 76, column: 25, scope: !3617)
!3630 = !DILocation(line: 0, scope: !3602, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 68, column: 26, scope: !3625, inlinedAt: !3629)
!3632 = !DILocation(line: 2059, column: 24, scope: !3602, inlinedAt: !3631)
!3633 = !DILocation(line: 2059, column: 10, scope: !3602, inlinedAt: !3631)
!3634 = !DILocation(line: 0, scope: !3527, inlinedAt: !3635)
!3635 = distinct !DILocation(line: 76, column: 10, scope: !3617)
!3636 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3635)
!3637 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3635)
!3638 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3635)
!3639 = !DILocation(line: 76, column: 3, scope: !3617)
!3640 = distinct !DISubprogram(name: "xireallocarray", scope: !744, file: !744, line: 89, type: !3641, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3643)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{!94, !94, !763, !763}
!3643 = !{!3644, !3645, !3646}
!3644 = !DILocalVariable(name: "p", arg: 1, scope: !3640, file: !744, line: 89, type: !94)
!3645 = !DILocalVariable(name: "n", arg: 2, scope: !3640, file: !744, line: 89, type: !763)
!3646 = !DILocalVariable(name: "s", arg: 3, scope: !3640, file: !744, line: 89, type: !763)
!3647 = !DILocation(line: 0, scope: !3640)
!3648 = !DILocalVariable(name: "p", arg: 1, scope: !3649, file: !3568, line: 98, type: !94)
!3649 = distinct !DISubprogram(name: "ireallocarray", scope: !3568, file: !3568, line: 98, type: !3641, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3650)
!3650 = !{!3648, !3651, !3652}
!3651 = !DILocalVariable(name: "n", arg: 2, scope: !3649, file: !3568, line: 98, type: !763)
!3652 = !DILocalVariable(name: "s", arg: 3, scope: !3649, file: !3568, line: 98, type: !763)
!3653 = !DILocation(line: 0, scope: !3649, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 91, column: 25, scope: !3640)
!3655 = !DILocation(line: 101, column: 13, scope: !3649, inlinedAt: !3654)
!3656 = !DILocation(line: 0, scope: !3527, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 91, column: 10, scope: !3640)
!3658 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3657)
!3659 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3657)
!3660 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3657)
!3661 = !DILocation(line: 91, column: 3, scope: !3640)
!3662 = distinct !DISubprogram(name: "xnmalloc", scope: !744, file: !744, line: 98, type: !1347, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3663)
!3663 = !{!3664, !3665}
!3664 = !DILocalVariable(name: "n", arg: 1, scope: !3662, file: !744, line: 98, type: !97)
!3665 = !DILocalVariable(name: "s", arg: 2, scope: !3662, file: !744, line: 98, type: !97)
!3666 = !DILocation(line: 0, scope: !3662)
!3667 = !DILocation(line: 0, scope: !3519, inlinedAt: !3668)
!3668 = distinct !DILocation(line: 100, column: 10, scope: !3662)
!3669 = !DILocation(line: 85, column: 25, scope: !3519, inlinedAt: !3668)
!3670 = !DILocation(line: 0, scope: !3527, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 85, column: 10, scope: !3519, inlinedAt: !3668)
!3672 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3671)
!3673 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3671)
!3674 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3671)
!3675 = !DILocation(line: 100, column: 3, scope: !3662)
!3676 = distinct !DISubprogram(name: "xinmalloc", scope: !744, file: !744, line: 104, type: !1202, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3677)
!3677 = !{!3678, !3679}
!3678 = !DILocalVariable(name: "n", arg: 1, scope: !3676, file: !744, line: 104, type: !763)
!3679 = !DILocalVariable(name: "s", arg: 2, scope: !3676, file: !744, line: 104, type: !763)
!3680 = !DILocation(line: 0, scope: !3676)
!3681 = !DILocation(line: 0, scope: !3640, inlinedAt: !3682)
!3682 = distinct !DILocation(line: 106, column: 10, scope: !3676)
!3683 = !DILocation(line: 0, scope: !3649, inlinedAt: !3684)
!3684 = distinct !DILocation(line: 91, column: 25, scope: !3640, inlinedAt: !3682)
!3685 = !DILocation(line: 101, column: 13, scope: !3649, inlinedAt: !3684)
!3686 = !DILocation(line: 0, scope: !3527, inlinedAt: !3687)
!3687 = distinct !DILocation(line: 91, column: 10, scope: !3640, inlinedAt: !3682)
!3688 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3687)
!3689 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3687)
!3690 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3687)
!3691 = !DILocation(line: 106, column: 3, scope: !3676)
!3692 = distinct !DISubprogram(name: "x2realloc", scope: !744, file: !744, line: 116, type: !3693, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3695)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!94, !94, !750}
!3695 = !{!3696, !3697}
!3696 = !DILocalVariable(name: "p", arg: 1, scope: !3692, file: !744, line: 116, type: !94)
!3697 = !DILocalVariable(name: "ps", arg: 2, scope: !3692, file: !744, line: 116, type: !750)
!3698 = !DILocation(line: 0, scope: !3692)
!3699 = !DILocation(line: 0, scope: !747, inlinedAt: !3700)
!3700 = distinct !DILocation(line: 118, column: 10, scope: !3692)
!3701 = !DILocation(line: 178, column: 14, scope: !747, inlinedAt: !3700)
!3702 = !DILocation(line: 180, column: 9, scope: !3703, inlinedAt: !3700)
!3703 = distinct !DILexicalBlock(scope: !747, file: !744, line: 180, column: 7)
!3704 = !DILocation(line: 180, column: 7, scope: !747, inlinedAt: !3700)
!3705 = !DILocation(line: 182, column: 13, scope: !3706, inlinedAt: !3700)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !744, line: 182, column: 11)
!3707 = distinct !DILexicalBlock(scope: !3703, file: !744, line: 181, column: 5)
!3708 = !DILocation(line: 182, column: 11, scope: !3707, inlinedAt: !3700)
!3709 = !DILocation(line: 197, column: 11, scope: !3710, inlinedAt: !3700)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !744, line: 197, column: 11)
!3711 = distinct !DILexicalBlock(scope: !3703, file: !744, line: 195, column: 5)
!3712 = !DILocation(line: 197, column: 11, scope: !3711, inlinedAt: !3700)
!3713 = !DILocation(line: 198, column: 9, scope: !3710, inlinedAt: !3700)
!3714 = !DILocation(line: 0, scope: !3519, inlinedAt: !3715)
!3715 = distinct !DILocation(line: 201, column: 7, scope: !747, inlinedAt: !3700)
!3716 = !DILocation(line: 85, column: 25, scope: !3519, inlinedAt: !3715)
!3717 = !DILocation(line: 0, scope: !3527, inlinedAt: !3718)
!3718 = distinct !DILocation(line: 85, column: 10, scope: !3519, inlinedAt: !3715)
!3719 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3718)
!3720 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3718)
!3721 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3718)
!3722 = !DILocation(line: 202, column: 7, scope: !747, inlinedAt: !3700)
!3723 = !DILocation(line: 118, column: 3, scope: !3692)
!3724 = !DILocation(line: 0, scope: !747)
!3725 = !DILocation(line: 178, column: 14, scope: !747)
!3726 = !DILocation(line: 180, column: 9, scope: !3703)
!3727 = !DILocation(line: 180, column: 7, scope: !747)
!3728 = !DILocation(line: 182, column: 13, scope: !3706)
!3729 = !DILocation(line: 182, column: 11, scope: !3707)
!3730 = !DILocation(line: 190, column: 30, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3706, file: !744, line: 183, column: 9)
!3732 = !DILocation(line: 191, column: 16, scope: !3731)
!3733 = !DILocation(line: 191, column: 13, scope: !3731)
!3734 = !DILocation(line: 192, column: 9, scope: !3731)
!3735 = !DILocation(line: 197, column: 11, scope: !3710)
!3736 = !DILocation(line: 197, column: 11, scope: !3711)
!3737 = !DILocation(line: 198, column: 9, scope: !3710)
!3738 = !DILocation(line: 0, scope: !3519, inlinedAt: !3739)
!3739 = distinct !DILocation(line: 201, column: 7, scope: !747)
!3740 = !DILocation(line: 85, column: 25, scope: !3519, inlinedAt: !3739)
!3741 = !DILocation(line: 0, scope: !3527, inlinedAt: !3742)
!3742 = distinct !DILocation(line: 85, column: 10, scope: !3519, inlinedAt: !3739)
!3743 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3742)
!3744 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3742)
!3745 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3742)
!3746 = !DILocation(line: 202, column: 7, scope: !747)
!3747 = !DILocation(line: 203, column: 3, scope: !747)
!3748 = !DILocation(line: 0, scope: !759)
!3749 = !DILocation(line: 230, column: 14, scope: !759)
!3750 = !DILocation(line: 238, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !759, file: !744, line: 238, column: 7)
!3752 = !DILocation(line: 238, column: 7, scope: !759)
!3753 = !DILocation(line: 240, column: 9, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !759, file: !744, line: 240, column: 7)
!3755 = !DILocation(line: 240, column: 18, scope: !3754)
!3756 = !DILocation(line: 253, column: 8, scope: !759)
!3757 = !DILocation(line: 258, column: 27, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3759, file: !744, line: 257, column: 5)
!3759 = distinct !DILexicalBlock(scope: !759, file: !744, line: 256, column: 7)
!3760 = !DILocation(line: 259, column: 32, scope: !3758)
!3761 = !DILocation(line: 260, column: 5, scope: !3758)
!3762 = !DILocation(line: 262, column: 9, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !759, file: !744, line: 262, column: 7)
!3764 = !DILocation(line: 262, column: 7, scope: !759)
!3765 = !DILocation(line: 263, column: 9, scope: !3763)
!3766 = !DILocation(line: 263, column: 5, scope: !3763)
!3767 = !DILocation(line: 264, column: 9, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !759, file: !744, line: 264, column: 7)
!3769 = !DILocation(line: 264, column: 14, scope: !3768)
!3770 = !DILocation(line: 265, column: 7, scope: !3768)
!3771 = !DILocation(line: 265, column: 11, scope: !3768)
!3772 = !DILocation(line: 266, column: 11, scope: !3768)
!3773 = !DILocation(line: 267, column: 14, scope: !3768)
!3774 = !DILocation(line: 264, column: 7, scope: !759)
!3775 = !DILocation(line: 268, column: 5, scope: !3768)
!3776 = !DILocation(line: 0, scope: !3594, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 269, column: 8, scope: !759)
!3778 = !DILocation(line: 0, scope: !3602, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 70, column: 25, scope: !3594, inlinedAt: !3777)
!3780 = !DILocation(line: 2059, column: 24, scope: !3602, inlinedAt: !3779)
!3781 = !DILocation(line: 2059, column: 10, scope: !3602, inlinedAt: !3779)
!3782 = !DILocation(line: 0, scope: !3527, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 70, column: 10, scope: !3594, inlinedAt: !3777)
!3784 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3783)
!3785 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3783)
!3786 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3783)
!3787 = !DILocation(line: 270, column: 7, scope: !759)
!3788 = !DILocation(line: 271, column: 3, scope: !759)
!3789 = distinct !DISubprogram(name: "xzalloc", scope: !744, file: !744, line: 279, type: !3547, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3790)
!3790 = !{!3791}
!3791 = !DILocalVariable(name: "s", arg: 1, scope: !3789, file: !744, line: 279, type: !97)
!3792 = !DILocation(line: 0, scope: !3789)
!3793 = !DILocalVariable(name: "n", arg: 1, scope: !3794, file: !744, line: 294, type: !97)
!3794 = distinct !DISubprogram(name: "xcalloc", scope: !744, file: !744, line: 294, type: !1347, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3795)
!3795 = !{!3793, !3796}
!3796 = !DILocalVariable(name: "s", arg: 2, scope: !3794, file: !744, line: 294, type: !97)
!3797 = !DILocation(line: 0, scope: !3794, inlinedAt: !3798)
!3798 = distinct !DILocation(line: 281, column: 10, scope: !3789)
!3799 = !DILocation(line: 296, column: 25, scope: !3794, inlinedAt: !3798)
!3800 = !DILocation(line: 0, scope: !3527, inlinedAt: !3801)
!3801 = distinct !DILocation(line: 296, column: 10, scope: !3794, inlinedAt: !3798)
!3802 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3801)
!3803 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3801)
!3804 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3801)
!3805 = !DILocation(line: 281, column: 3, scope: !3789)
!3806 = !DISubprogram(name: "calloc", scope: !1000, file: !1000, line: 543, type: !1347, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!3807 = !DILocation(line: 0, scope: !3794)
!3808 = !DILocation(line: 296, column: 25, scope: !3794)
!3809 = !DILocation(line: 0, scope: !3527, inlinedAt: !3810)
!3810 = distinct !DILocation(line: 296, column: 10, scope: !3794)
!3811 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3810)
!3812 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3810)
!3813 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3810)
!3814 = !DILocation(line: 296, column: 3, scope: !3794)
!3815 = distinct !DISubprogram(name: "xizalloc", scope: !744, file: !744, line: 285, type: !3561, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3816)
!3816 = !{!3817}
!3817 = !DILocalVariable(name: "s", arg: 1, scope: !3815, file: !744, line: 285, type: !763)
!3818 = !DILocation(line: 0, scope: !3815)
!3819 = !DILocalVariable(name: "n", arg: 1, scope: !3820, file: !744, line: 300, type: !763)
!3820 = distinct !DISubprogram(name: "xicalloc", scope: !744, file: !744, line: 300, type: !1202, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3821)
!3821 = !{!3819, !3822}
!3822 = !DILocalVariable(name: "s", arg: 2, scope: !3820, file: !744, line: 300, type: !763)
!3823 = !DILocation(line: 0, scope: !3820, inlinedAt: !3824)
!3824 = distinct !DILocation(line: 287, column: 10, scope: !3815)
!3825 = !DILocalVariable(name: "n", arg: 1, scope: !3826, file: !3568, line: 77, type: !763)
!3826 = distinct !DISubprogram(name: "icalloc", scope: !3568, file: !3568, line: 77, type: !1202, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3827)
!3827 = !{!3825, !3828}
!3828 = !DILocalVariable(name: "s", arg: 2, scope: !3826, file: !3568, line: 77, type: !763)
!3829 = !DILocation(line: 0, scope: !3826, inlinedAt: !3830)
!3830 = distinct !DILocation(line: 302, column: 25, scope: !3820, inlinedAt: !3824)
!3831 = !DILocation(line: 91, column: 10, scope: !3826, inlinedAt: !3830)
!3832 = !DILocation(line: 0, scope: !3527, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 302, column: 10, scope: !3820, inlinedAt: !3824)
!3834 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3833)
!3835 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3833)
!3836 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3833)
!3837 = !DILocation(line: 287, column: 3, scope: !3815)
!3838 = !DILocation(line: 0, scope: !3820)
!3839 = !DILocation(line: 0, scope: !3826, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 302, column: 25, scope: !3820)
!3841 = !DILocation(line: 91, column: 10, scope: !3826, inlinedAt: !3840)
!3842 = !DILocation(line: 0, scope: !3527, inlinedAt: !3843)
!3843 = distinct !DILocation(line: 302, column: 10, scope: !3820)
!3844 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3843)
!3845 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3843)
!3846 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3843)
!3847 = !DILocation(line: 302, column: 3, scope: !3820)
!3848 = distinct !DISubprogram(name: "xmemdup", scope: !744, file: !744, line: 310, type: !3849, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!94, !1024, !97}
!3851 = !{!3852, !3853}
!3852 = !DILocalVariable(name: "p", arg: 1, scope: !3848, file: !744, line: 310, type: !1024)
!3853 = !DILocalVariable(name: "s", arg: 2, scope: !3848, file: !744, line: 310, type: !97)
!3854 = !DILocation(line: 0, scope: !3848)
!3855 = !DILocation(line: 0, scope: !3546, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 312, column: 18, scope: !3848)
!3857 = !DILocation(line: 49, column: 25, scope: !3546, inlinedAt: !3856)
!3858 = !DILocation(line: 0, scope: !3527, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 49, column: 10, scope: !3546, inlinedAt: !3856)
!3860 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3859)
!3861 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3859)
!3862 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3859)
!3863 = !DILocalVariable(name: "__dest", arg: 1, scope: !3864, file: !1095, line: 26, type: !1098)
!3864 = distinct !DISubprogram(name: "memcpy", scope: !1095, file: !1095, line: 26, type: !1096, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3865)
!3865 = !{!3863, !3866, !3867}
!3866 = !DILocalVariable(name: "__src", arg: 2, scope: !3864, file: !1095, line: 26, type: !1023)
!3867 = !DILocalVariable(name: "__len", arg: 3, scope: !3864, file: !1095, line: 26, type: !97)
!3868 = !DILocation(line: 0, scope: !3864, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 312, column: 10, scope: !3848)
!3870 = !DILocation(line: 29, column: 10, scope: !3864, inlinedAt: !3869)
!3871 = !DILocation(line: 312, column: 3, scope: !3848)
!3872 = distinct !DISubprogram(name: "ximemdup", scope: !744, file: !744, line: 316, type: !3873, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3875)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!94, !1024, !763}
!3875 = !{!3876, !3877}
!3876 = !DILocalVariable(name: "p", arg: 1, scope: !3872, file: !744, line: 316, type: !1024)
!3877 = !DILocalVariable(name: "s", arg: 2, scope: !3872, file: !744, line: 316, type: !763)
!3878 = !DILocation(line: 0, scope: !3872)
!3879 = !DILocation(line: 0, scope: !3560, inlinedAt: !3880)
!3880 = distinct !DILocation(line: 318, column: 18, scope: !3872)
!3881 = !DILocation(line: 0, scope: !3567, inlinedAt: !3882)
!3882 = distinct !DILocation(line: 55, column: 25, scope: !3560, inlinedAt: !3880)
!3883 = !DILocation(line: 57, column: 26, scope: !3567, inlinedAt: !3882)
!3884 = !DILocation(line: 0, scope: !3527, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 55, column: 10, scope: !3560, inlinedAt: !3880)
!3886 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3885)
!3887 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3885)
!3888 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3885)
!3889 = !DILocation(line: 0, scope: !3864, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 318, column: 10, scope: !3872)
!3891 = !DILocation(line: 29, column: 10, scope: !3864, inlinedAt: !3890)
!3892 = !DILocation(line: 318, column: 3, scope: !3872)
!3893 = distinct !DISubprogram(name: "ximemdup0", scope: !744, file: !744, line: 325, type: !3894, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3896)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!101, !1024, !763}
!3896 = !{!3897, !3898, !3899}
!3897 = !DILocalVariable(name: "p", arg: 1, scope: !3893, file: !744, line: 325, type: !1024)
!3898 = !DILocalVariable(name: "s", arg: 2, scope: !3893, file: !744, line: 325, type: !763)
!3899 = !DILocalVariable(name: "result", scope: !3893, file: !744, line: 327, type: !101)
!3900 = !DILocation(line: 0, scope: !3893)
!3901 = !DILocation(line: 327, column: 30, scope: !3893)
!3902 = !DILocation(line: 0, scope: !3560, inlinedAt: !3903)
!3903 = distinct !DILocation(line: 327, column: 18, scope: !3893)
!3904 = !DILocation(line: 0, scope: !3567, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 55, column: 25, scope: !3560, inlinedAt: !3903)
!3906 = !DILocation(line: 57, column: 26, scope: !3567, inlinedAt: !3905)
!3907 = !DILocation(line: 0, scope: !3527, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 55, column: 10, scope: !3560, inlinedAt: !3903)
!3909 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3908)
!3910 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3908)
!3911 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3908)
!3912 = !DILocation(line: 328, column: 3, scope: !3893)
!3913 = !DILocation(line: 328, column: 13, scope: !3893)
!3914 = !DILocation(line: 0, scope: !3864, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 329, column: 10, scope: !3893)
!3916 = !DILocation(line: 29, column: 10, scope: !3864, inlinedAt: !3915)
!3917 = !DILocation(line: 329, column: 3, scope: !3893)
!3918 = distinct !DISubprogram(name: "xstrdup", scope: !744, file: !744, line: 335, type: !1002, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !743, retainedNodes: !3919)
!3919 = !{!3920}
!3920 = !DILocalVariable(name: "string", arg: 1, scope: !3918, file: !744, line: 335, type: !70)
!3921 = !DILocation(line: 0, scope: !3918)
!3922 = !DILocation(line: 337, column: 27, scope: !3918)
!3923 = !DILocation(line: 337, column: 43, scope: !3918)
!3924 = !DILocation(line: 0, scope: !3848, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 337, column: 10, scope: !3918)
!3926 = !DILocation(line: 0, scope: !3546, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 312, column: 18, scope: !3848, inlinedAt: !3925)
!3928 = !DILocation(line: 49, column: 25, scope: !3546, inlinedAt: !3927)
!3929 = !DILocation(line: 0, scope: !3527, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 49, column: 10, scope: !3546, inlinedAt: !3927)
!3931 = !DILocation(line: 39, column: 8, scope: !3534, inlinedAt: !3930)
!3932 = !DILocation(line: 39, column: 7, scope: !3527, inlinedAt: !3930)
!3933 = !DILocation(line: 40, column: 5, scope: !3534, inlinedAt: !3930)
!3934 = !DILocation(line: 0, scope: !3864, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 312, column: 10, scope: !3848, inlinedAt: !3925)
!3936 = !DILocation(line: 29, column: 10, scope: !3864, inlinedAt: !3935)
!3937 = !DILocation(line: 337, column: 3, scope: !3918)
!3938 = distinct !DISubprogram(name: "xalloc_die", scope: !665, file: !665, line: 32, type: !367, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !777, retainedNodes: !3939)
!3939 = !{!3940}
!3940 = !DILocalVariable(name: "__errstatus", scope: !3941, file: !665, line: 34, type: !3942)
!3941 = distinct !DILexicalBlock(scope: !3938, file: !665, line: 34, column: 3)
!3942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!3943 = !DILocation(line: 34, column: 3, scope: !3941)
!3944 = !DILocation(line: 0, scope: !3941)
!3945 = !DILocation(line: 40, column: 3, scope: !3938)
!3946 = distinct !DISubprogram(name: "close_stream", scope: !780, file: !780, line: 55, type: !3947, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3983)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!95, !3949}
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !3951)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !3952)
!3952 = !{!3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3951, file: !236, line: 51, baseType: !95, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3951, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3951, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3951, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3951, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3951, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3951, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3951, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3951, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3951, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3951, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3951, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3951, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3951, file: !236, line: 70, baseType: !3967, size: 64, offset: 832)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3951, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3951, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3951, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3951, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3951, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3951, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3951, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3951, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3951, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3951, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3951, file: !236, line: 93, baseType: !3967, size: 64, offset: 1344)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3951, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3951, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3951, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3951, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!3983 = !{!3984, !3985, !3987, !3988}
!3984 = !DILocalVariable(name: "stream", arg: 1, scope: !3946, file: !780, line: 55, type: !3949)
!3985 = !DILocalVariable(name: "some_pending", scope: !3946, file: !780, line: 57, type: !3986)
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!3987 = !DILocalVariable(name: "prev_fail", scope: !3946, file: !780, line: 58, type: !3986)
!3988 = !DILocalVariable(name: "fclose_fail", scope: !3946, file: !780, line: 59, type: !3986)
!3989 = !DILocation(line: 0, scope: !3946)
!3990 = !DILocation(line: 57, column: 30, scope: !3946)
!3991 = !DILocalVariable(name: "__stream", arg: 1, scope: !3992, file: !1540, line: 135, type: !3949)
!3992 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1540, file: !1540, line: 135, type: !3947, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !779, retainedNodes: !3993)
!3993 = !{!3991}
!3994 = !DILocation(line: 0, scope: !3992, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 58, column: 27, scope: !3946)
!3996 = !DILocation(line: 137, column: 10, scope: !3992, inlinedAt: !3995)
!3997 = !{!1549, !880, i64 0}
!3998 = !DILocation(line: 58, column: 43, scope: !3946)
!3999 = !DILocation(line: 59, column: 29, scope: !3946)
!4000 = !DILocation(line: 59, column: 45, scope: !3946)
!4001 = !DILocation(line: 69, column: 17, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3946, file: !780, line: 69, column: 7)
!4003 = !DILocation(line: 57, column: 50, scope: !3946)
!4004 = !DILocation(line: 69, column: 33, scope: !4002)
!4005 = !DILocation(line: 69, column: 53, scope: !4002)
!4006 = !DILocation(line: 69, column: 59, scope: !4002)
!4007 = !DILocation(line: 69, column: 7, scope: !3946)
!4008 = !DILocation(line: 71, column: 11, scope: !4009)
!4009 = distinct !DILexicalBlock(scope: !4002, file: !780, line: 70, column: 5)
!4010 = !DILocation(line: 72, column: 9, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !4009, file: !780, line: 71, column: 11)
!4012 = !DILocation(line: 72, column: 15, scope: !4011)
!4013 = !DILocation(line: 77, column: 1, scope: !3946)
!4014 = !DISubprogram(name: "__fpending", scope: !4015, file: !4015, line: 75, type: !4016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4015 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4016 = !DISubroutineType(types: !4017)
!4017 = !{!97, !3949}
!4018 = distinct !DISubprogram(name: "rpl_fclose", scope: !782, file: !782, line: 58, type: !4019, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !781, retainedNodes: !4055)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!95, !4021}
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4023)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4024)
!4024 = !{!4025, !4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4023, file: !236, line: 51, baseType: !95, size: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4023, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4023, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4023, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4023, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4023, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4023, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4023, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4023, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4023, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4023, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4023, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4023, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4023, file: !236, line: 70, baseType: !4039, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4023, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4023, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4023, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4023, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4023, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4023, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4023, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4023, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4023, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4023, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4023, file: !236, line: 93, baseType: !4039, size: 64, offset: 1344)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4023, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4023, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4023, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4023, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4055 = !{!4056, !4057, !4058, !4059}
!4056 = !DILocalVariable(name: "fp", arg: 1, scope: !4018, file: !782, line: 58, type: !4021)
!4057 = !DILocalVariable(name: "saved_errno", scope: !4018, file: !782, line: 60, type: !95)
!4058 = !DILocalVariable(name: "fd", scope: !4018, file: !782, line: 63, type: !95)
!4059 = !DILocalVariable(name: "result", scope: !4018, file: !782, line: 74, type: !95)
!4060 = !DILocation(line: 0, scope: !4018)
!4061 = !DILocation(line: 63, column: 12, scope: !4018)
!4062 = !DILocation(line: 64, column: 10, scope: !4063)
!4063 = distinct !DILexicalBlock(scope: !4018, file: !782, line: 64, column: 7)
!4064 = !DILocation(line: 64, column: 7, scope: !4018)
!4065 = !DILocation(line: 65, column: 12, scope: !4063)
!4066 = !DILocation(line: 65, column: 5, scope: !4063)
!4067 = !DILocation(line: 70, column: 9, scope: !4068)
!4068 = distinct !DILexicalBlock(scope: !4018, file: !782, line: 70, column: 7)
!4069 = !DILocation(line: 70, column: 23, scope: !4068)
!4070 = !DILocation(line: 70, column: 33, scope: !4068)
!4071 = !DILocation(line: 70, column: 26, scope: !4068)
!4072 = !DILocation(line: 70, column: 59, scope: !4068)
!4073 = !DILocation(line: 71, column: 7, scope: !4068)
!4074 = !DILocation(line: 71, column: 10, scope: !4068)
!4075 = !DILocation(line: 70, column: 7, scope: !4018)
!4076 = !DILocation(line: 100, column: 12, scope: !4018)
!4077 = !DILocation(line: 105, column: 7, scope: !4018)
!4078 = !DILocation(line: 72, column: 19, scope: !4068)
!4079 = !DILocation(line: 105, column: 19, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4018, file: !782, line: 105, column: 7)
!4081 = !DILocation(line: 107, column: 13, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4080, file: !782, line: 106, column: 5)
!4083 = !DILocation(line: 109, column: 5, scope: !4082)
!4084 = !DILocation(line: 112, column: 1, scope: !4018)
!4085 = !DISubprogram(name: "fileno", scope: !326, file: !326, line: 809, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4086 = !DISubprogram(name: "fclose", scope: !326, file: !326, line: 178, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4087 = !DISubprogram(name: "__freading", scope: !4015, file: !4015, line: 51, type: !4019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4088 = !DISubprogram(name: "lseek", scope: !1343, file: !1343, line: 339, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!258, !95, !258, !95}
!4091 = distinct !DISubprogram(name: "fd_safer_flag", scope: !784, file: !784, line: 40, type: !373, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !783, retainedNodes: !4092)
!4092 = !{!4093, !4094, !4095, !4098}
!4093 = !DILocalVariable(name: "fd", arg: 1, scope: !4091, file: !784, line: 40, type: !95)
!4094 = !DILocalVariable(name: "flag", arg: 2, scope: !4091, file: !784, line: 40, type: !95)
!4095 = !DILocalVariable(name: "f", scope: !4096, file: !784, line: 44, type: !95)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !784, line: 43, column: 5)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !784, line: 42, column: 7)
!4098 = !DILocalVariable(name: "saved_errno", scope: !4096, file: !784, line: 45, type: !95)
!4099 = !DILocation(line: 0, scope: !4091)
!4100 = !DILocation(line: 42, column: 26, scope: !4097)
!4101 = !DILocation(line: 44, column: 15, scope: !4096)
!4102 = !DILocation(line: 0, scope: !4096)
!4103 = !DILocation(line: 45, column: 25, scope: !4096)
!4104 = !DILocation(line: 46, column: 7, scope: !4096)
!4105 = !DILocation(line: 47, column: 13, scope: !4096)
!4106 = !DILocation(line: 49, column: 5, scope: !4096)
!4107 = !DILocation(line: 51, column: 3, scope: !4091)
!4108 = distinct !DISubprogram(name: "dup_safer_flag", scope: !786, file: !786, line: 34, type: !373, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !785, retainedNodes: !4109)
!4109 = !{!4110, !4111}
!4110 = !DILocalVariable(name: "fd", arg: 1, scope: !4108, file: !786, line: 34, type: !95)
!4111 = !DILocalVariable(name: "flag", arg: 2, scope: !4108, file: !786, line: 34, type: !95)
!4112 = !DILocation(line: 0, scope: !4108)
!4113 = !DILocation(line: 36, column: 27, scope: !4108)
!4114 = !DILocation(line: 36, column: 21, scope: !4108)
!4115 = !DILocation(line: 36, column: 10, scope: !4108)
!4116 = !DILocation(line: 36, column: 3, scope: !4108)
!4117 = distinct !DISubprogram(name: "rpl_fflush", scope: !788, file: !788, line: 130, type: !4118, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4154)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!95, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4123)
!4123 = !{!4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4122, file: !236, line: 51, baseType: !95, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4122, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4122, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4122, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4122, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4122, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4122, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4122, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4122, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4122, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4122, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4122, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4122, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4122, file: !236, line: 70, baseType: !4138, size: 64, offset: 832)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4122, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4122, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4122, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4122, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4122, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4122, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4122, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4122, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4122, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4122, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4122, file: !236, line: 93, baseType: !4138, size: 64, offset: 1344)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4122, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4122, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4122, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4122, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4154 = !{!4155}
!4155 = !DILocalVariable(name: "stream", arg: 1, scope: !4117, file: !788, line: 130, type: !4120)
!4156 = !DILocation(line: 0, scope: !4117)
!4157 = !DILocation(line: 151, column: 14, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4117, file: !788, line: 151, column: 7)
!4159 = !DILocation(line: 151, column: 22, scope: !4158)
!4160 = !DILocation(line: 151, column: 27, scope: !4158)
!4161 = !DILocation(line: 151, column: 7, scope: !4117)
!4162 = !DILocation(line: 152, column: 12, scope: !4158)
!4163 = !DILocation(line: 152, column: 5, scope: !4158)
!4164 = !DILocalVariable(name: "fp", arg: 1, scope: !4165, file: !788, line: 42, type: !4120)
!4165 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !788, file: !788, line: 42, type: !4166, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !787, retainedNodes: !4168)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{null, !4120}
!4168 = !{!4164}
!4169 = !DILocation(line: 0, scope: !4165, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 157, column: 3, scope: !4117)
!4171 = !DILocation(line: 44, column: 12, scope: !4172, inlinedAt: !4170)
!4172 = distinct !DILexicalBlock(scope: !4165, file: !788, line: 44, column: 7)
!4173 = !DILocation(line: 44, column: 19, scope: !4172, inlinedAt: !4170)
!4174 = !DILocation(line: 44, column: 7, scope: !4165, inlinedAt: !4170)
!4175 = !DILocation(line: 46, column: 5, scope: !4172, inlinedAt: !4170)
!4176 = !DILocation(line: 159, column: 10, scope: !4117)
!4177 = !DILocation(line: 159, column: 3, scope: !4117)
!4178 = !DILocation(line: 236, column: 1, scope: !4117)
!4179 = !DISubprogram(name: "fflush", scope: !326, file: !326, line: 230, type: !4118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4180 = distinct !DISubprogram(name: "rpl_fseeko", scope: !790, file: !790, line: 28, type: !4181, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !789, retainedNodes: !4218)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!95, !4183, !4217, !95}
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !234, line: 7, baseType: !4185)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !236, line: 49, size: 1728, elements: !4186)
!4186 = !{!4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4185, file: !236, line: 51, baseType: !95, size: 32)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4185, file: !236, line: 54, baseType: !101, size: 64, offset: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4185, file: !236, line: 55, baseType: !101, size: 64, offset: 128)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4185, file: !236, line: 56, baseType: !101, size: 64, offset: 192)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4185, file: !236, line: 57, baseType: !101, size: 64, offset: 256)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4185, file: !236, line: 58, baseType: !101, size: 64, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4185, file: !236, line: 59, baseType: !101, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4185, file: !236, line: 60, baseType: !101, size: 64, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4185, file: !236, line: 61, baseType: !101, size: 64, offset: 512)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4185, file: !236, line: 64, baseType: !101, size: 64, offset: 576)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4185, file: !236, line: 65, baseType: !101, size: 64, offset: 640)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4185, file: !236, line: 66, baseType: !101, size: 64, offset: 704)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4185, file: !236, line: 68, baseType: !251, size: 64, offset: 768)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4185, file: !236, line: 70, baseType: !4201, size: 64, offset: 832)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4185, file: !236, line: 72, baseType: !95, size: 32, offset: 896)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4185, file: !236, line: 73, baseType: !95, size: 32, offset: 928)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4185, file: !236, line: 74, baseType: !258, size: 64, offset: 960)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4185, file: !236, line: 77, baseType: !96, size: 16, offset: 1024)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4185, file: !236, line: 78, baseType: !263, size: 8, offset: 1040)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4185, file: !236, line: 79, baseType: !34, size: 8, offset: 1048)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4185, file: !236, line: 81, baseType: !266, size: 64, offset: 1088)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4185, file: !236, line: 89, baseType: !269, size: 64, offset: 1152)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4185, file: !236, line: 91, baseType: !271, size: 64, offset: 1216)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4185, file: !236, line: 92, baseType: !274, size: 64, offset: 1280)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4185, file: !236, line: 93, baseType: !4201, size: 64, offset: 1344)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4185, file: !236, line: 94, baseType: !94, size: 64, offset: 1408)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4185, file: !236, line: 95, baseType: !97, size: 64, offset: 1472)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4185, file: !236, line: 96, baseType: !95, size: 32, offset: 1536)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4185, file: !236, line: 98, baseType: !281, size: 160, offset: 1568)
!4217 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !326, line: 63, baseType: !258)
!4218 = !{!4219, !4220, !4221, !4222}
!4219 = !DILocalVariable(name: "fp", arg: 1, scope: !4180, file: !790, line: 28, type: !4183)
!4220 = !DILocalVariable(name: "offset", arg: 2, scope: !4180, file: !790, line: 28, type: !4217)
!4221 = !DILocalVariable(name: "whence", arg: 3, scope: !4180, file: !790, line: 28, type: !95)
!4222 = !DILocalVariable(name: "pos", scope: !4223, file: !790, line: 123, type: !4217)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !790, line: 119, column: 5)
!4224 = distinct !DILexicalBlock(scope: !4180, file: !790, line: 55, column: 7)
!4225 = !DILocation(line: 0, scope: !4180)
!4226 = !DILocation(line: 55, column: 12, scope: !4224)
!4227 = !{!1549, !820, i64 16}
!4228 = !DILocation(line: 55, column: 33, scope: !4224)
!4229 = !{!1549, !820, i64 8}
!4230 = !DILocation(line: 55, column: 25, scope: !4224)
!4231 = !DILocation(line: 56, column: 7, scope: !4224)
!4232 = !DILocation(line: 56, column: 15, scope: !4224)
!4233 = !DILocation(line: 56, column: 37, scope: !4224)
!4234 = !{!1549, !820, i64 32}
!4235 = !DILocation(line: 56, column: 29, scope: !4224)
!4236 = !DILocation(line: 57, column: 7, scope: !4224)
!4237 = !DILocation(line: 57, column: 15, scope: !4224)
!4238 = !{!1549, !820, i64 72}
!4239 = !DILocation(line: 57, column: 29, scope: !4224)
!4240 = !DILocation(line: 55, column: 7, scope: !4180)
!4241 = !DILocation(line: 123, column: 26, scope: !4223)
!4242 = !DILocation(line: 123, column: 19, scope: !4223)
!4243 = !DILocation(line: 0, scope: !4223)
!4244 = !DILocation(line: 124, column: 15, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4223, file: !790, line: 124, column: 11)
!4246 = !DILocation(line: 124, column: 11, scope: !4223)
!4247 = !DILocation(line: 135, column: 19, scope: !4223)
!4248 = !DILocation(line: 136, column: 12, scope: !4223)
!4249 = !DILocation(line: 136, column: 20, scope: !4223)
!4250 = !{!1549, !1254, i64 144}
!4251 = !DILocation(line: 167, column: 7, scope: !4223)
!4252 = !DILocation(line: 169, column: 10, scope: !4180)
!4253 = !DILocation(line: 169, column: 3, scope: !4180)
!4254 = !DILocation(line: 170, column: 1, scope: !4180)
!4255 = !DISubprogram(name: "fseeko", scope: !326, file: !326, line: 736, type: !4256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!95, !4183, !258, !95}
!4258 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !672, file: !672, line: 100, type: !4259, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4262)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!97, !2028, !70, !97, !4261}
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!4262 = !{!4263, !4264, !4265, !4266, !4267}
!4263 = !DILocalVariable(name: "pwc", arg: 1, scope: !4258, file: !672, line: 100, type: !2028)
!4264 = !DILocalVariable(name: "s", arg: 2, scope: !4258, file: !672, line: 100, type: !70)
!4265 = !DILocalVariable(name: "n", arg: 3, scope: !4258, file: !672, line: 100, type: !97)
!4266 = !DILocalVariable(name: "ps", arg: 4, scope: !4258, file: !672, line: 100, type: !4261)
!4267 = !DILocalVariable(name: "ret", scope: !4258, file: !672, line: 130, type: !97)
!4268 = !DILocation(line: 0, scope: !4258)
!4269 = !DILocation(line: 105, column: 9, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4258, file: !672, line: 105, column: 7)
!4271 = !DILocation(line: 105, column: 7, scope: !4258)
!4272 = !DILocation(line: 117, column: 10, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4258, file: !672, line: 117, column: 7)
!4274 = !DILocation(line: 117, column: 7, scope: !4258)
!4275 = !DILocation(line: 130, column: 16, scope: !4258)
!4276 = !DILocation(line: 135, column: 11, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4258, file: !672, line: 135, column: 7)
!4278 = !DILocation(line: 135, column: 25, scope: !4277)
!4279 = !DILocation(line: 135, column: 30, scope: !4277)
!4280 = !DILocation(line: 135, column: 7, scope: !4258)
!4281 = !DILocalVariable(name: "ps", arg: 1, scope: !4282, file: !2002, line: 1135, type: !4261)
!4282 = distinct !DISubprogram(name: "mbszero", scope: !2002, file: !2002, line: 1135, type: !4283, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4285)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{null, !4261}
!4285 = !{!4281}
!4286 = !DILocation(line: 0, scope: !4282, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 137, column: 5, scope: !4277)
!4288 = !DILocalVariable(name: "__dest", arg: 1, scope: !4289, file: !1095, line: 57, type: !94)
!4289 = distinct !DISubprogram(name: "memset", scope: !1095, file: !1095, line: 57, type: !2011, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !675, retainedNodes: !4290)
!4290 = !{!4288, !4291, !4292}
!4291 = !DILocalVariable(name: "__ch", arg: 2, scope: !4289, file: !1095, line: 57, type: !95)
!4292 = !DILocalVariable(name: "__len", arg: 3, scope: !4289, file: !1095, line: 57, type: !97)
!4293 = !DILocation(line: 0, scope: !4289, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 1137, column: 3, scope: !4282, inlinedAt: !4287)
!4295 = !DILocation(line: 59, column: 10, scope: !4289, inlinedAt: !4294)
!4296 = !DILocation(line: 137, column: 5, scope: !4277)
!4297 = !DILocation(line: 138, column: 11, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4258, file: !672, line: 138, column: 7)
!4299 = !DILocation(line: 138, column: 7, scope: !4258)
!4300 = !DILocation(line: 139, column: 5, scope: !4298)
!4301 = !DILocation(line: 143, column: 26, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4258, file: !672, line: 143, column: 7)
!4303 = !DILocation(line: 143, column: 41, scope: !4302)
!4304 = !DILocation(line: 143, column: 7, scope: !4258)
!4305 = !DILocation(line: 145, column: 15, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !672, line: 145, column: 11)
!4307 = distinct !DILexicalBlock(scope: !4302, file: !672, line: 144, column: 5)
!4308 = !DILocation(line: 145, column: 11, scope: !4307)
!4309 = !DILocation(line: 146, column: 32, scope: !4306)
!4310 = !DILocation(line: 146, column: 16, scope: !4306)
!4311 = !DILocation(line: 146, column: 14, scope: !4306)
!4312 = !DILocation(line: 146, column: 9, scope: !4306)
!4313 = !DILocation(line: 286, column: 1, scope: !4258)
!4314 = !DISubprogram(name: "mbsinit", scope: !4315, file: !4315, line: 293, type: !4316, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4315 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!95, !4318}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!4320 = !DILocation(line: 0, scope: !690)
!4321 = !DILocation(line: 46, column: 12, scope: !690)
!4322 = !DILocation(line: 45, column: 12, scope: !690)
!4323 = !DILocation(line: 55, column: 9, scope: !703)
!4324 = !DILocation(line: 55, column: 27, scope: !703)
!4325 = !DILocation(line: 55, column: 9, scope: !704)
!4326 = !DILocation(line: 57, column: 22, scope: !702)
!4327 = !DILocation(line: 0, scope: !702)
!4328 = !DILocation(line: 58, column: 22, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !702, file: !691, line: 58, column: 13)
!4330 = !DILocation(line: 58, column: 26, scope: !4329)
!4331 = !DILocation(line: 58, column: 29, scope: !4329)
!4332 = !DILocation(line: 58, column: 35, scope: !4329)
!4333 = !DILocation(line: 58, column: 13, scope: !702)
!4334 = !DILocation(line: 69, column: 14, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !690, file: !691, line: 69, column: 7)
!4336 = !DILocation(line: 69, column: 63, scope: !4335)
!4337 = !DILocation(line: 69, column: 7, scope: !690)
!4338 = !DILocation(line: 71, column: 7, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4335, file: !691, line: 70, column: 5)
!4340 = !DILocation(line: 71, column: 13, scope: !4339)
!4341 = !DILocation(line: 72, column: 7, scope: !4339)
!4342 = !DILocation(line: 106, column: 7, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !690, file: !691, line: 106, column: 7)
!4344 = !DILocation(line: 106, column: 17, scope: !4343)
!4345 = !DILocation(line: 106, column: 7, scope: !690)
!4346 = !DILocation(line: 115, column: 13, scope: !707)
!4347 = !DILocation(line: 115, column: 7, scope: !690)
!4348 = !DILocation(line: 119, column: 33, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !706, file: !691, line: 119, column: 11)
!4350 = !DILocation(line: 119, column: 26, scope: !4349)
!4351 = !DILocation(line: 0, scope: !706)
!4352 = !DILocation(line: 119, column: 53, scope: !4349)
!4353 = !DILocation(line: 120, column: 11, scope: !4349)
!4354 = !DILocation(line: 120, column: 21, scope: !4349)
!4355 = !DILocation(line: 120, column: 49, scope: !4349)
!4356 = !DILocation(line: 120, column: 14, scope: !4349)
!4357 = !DILocation(line: 120, column: 63, scope: !4349)
!4358 = !DILocation(line: 121, column: 11, scope: !4349)
!4359 = !DILocation(line: 121, column: 36, scope: !4349)
!4360 = !DILocation(line: 121, column: 29, scope: !4349)
!4361 = !DILocation(line: 121, column: 56, scope: !4349)
!4362 = !DILocation(line: 122, column: 11, scope: !4349)
!4363 = !DILocation(line: 122, column: 21, scope: !4349)
!4364 = !DILocation(line: 122, column: 49, scope: !4349)
!4365 = !DILocation(line: 122, column: 14, scope: !4349)
!4366 = !DILocation(line: 122, column: 63, scope: !4349)
!4367 = !DILocation(line: 119, column: 11, scope: !706)
!4368 = !DILocation(line: 126, column: 13, scope: !710)
!4369 = !DILocation(line: 126, column: 7, scope: !690)
!4370 = !DILocation(line: 130, column: 33, scope: !4371)
!4371 = distinct !DILexicalBlock(scope: !709, file: !691, line: 130, column: 11)
!4372 = !DILocation(line: 130, column: 26, scope: !4371)
!4373 = !DILocation(line: 0, scope: !709)
!4374 = !DILocation(line: 130, column: 53, scope: !4371)
!4375 = !DILocation(line: 131, column: 11, scope: !4371)
!4376 = !DILocation(line: 131, column: 21, scope: !4371)
!4377 = !DILocation(line: 131, column: 49, scope: !4371)
!4378 = !DILocation(line: 131, column: 14, scope: !4371)
!4379 = !DILocation(line: 131, column: 63, scope: !4371)
!4380 = !DILocation(line: 132, column: 11, scope: !4371)
!4381 = !DILocation(line: 132, column: 36, scope: !4371)
!4382 = !DILocation(line: 132, column: 29, scope: !4371)
!4383 = !DILocation(line: 132, column: 56, scope: !4371)
!4384 = !DILocation(line: 133, column: 11, scope: !4371)
!4385 = !DILocation(line: 133, column: 21, scope: !4371)
!4386 = !DILocation(line: 133, column: 49, scope: !4371)
!4387 = !DILocation(line: 133, column: 14, scope: !4371)
!4388 = !DILocation(line: 133, column: 63, scope: !4371)
!4389 = !DILocation(line: 130, column: 11, scope: !709)
!4390 = !DILocation(line: 155, column: 2, scope: !690)
!4391 = !DILocation(line: 157, column: 23, scope: !712)
!4392 = !DILocation(line: 0, scope: !712)
!4393 = !DILocation(line: 158, column: 12, scope: !712)
!4394 = !DILocation(line: 158, column: 5, scope: !712)
!4395 = !DILocation(line: 159, column: 12, scope: !712)
!4396 = !DILocation(line: 159, column: 5, scope: !712)
!4397 = !DILocation(line: 160, column: 11, scope: !712)
!4398 = !DILocation(line: 162, column: 11, scope: !712)
!4399 = !DILocation(line: 166, column: 1, scope: !690)
!4400 = !DISubprogram(name: "pipe2", scope: !1343, file: !1343, line: 442, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4401 = !DISubprogram(name: "pipe", scope: !1343, file: !1343, line: 437, type: !4402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !864)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!95, !408}
!4404 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !792, file: !792, line: 27, type: !3511, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4405)
!4405 = !{!4406, !4407, !4408, !4409}
!4406 = !DILocalVariable(name: "ptr", arg: 1, scope: !4404, file: !792, line: 27, type: !94)
!4407 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4404, file: !792, line: 27, type: !97)
!4408 = !DILocalVariable(name: "size", arg: 3, scope: !4404, file: !792, line: 27, type: !97)
!4409 = !DILocalVariable(name: "nbytes", scope: !4404, file: !792, line: 29, type: !97)
!4410 = !DILocation(line: 0, scope: !4404)
!4411 = !DILocation(line: 30, column: 7, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4404, file: !792, line: 30, column: 7)
!4413 = !DILocalVariable(name: "ptr", arg: 1, scope: !4414, file: !3603, line: 2057, type: !94)
!4414 = distinct !DISubprogram(name: "rpl_realloc", scope: !3603, file: !3603, line: 2057, type: !3595, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !791, retainedNodes: !4415)
!4415 = !{!4413, !4416}
!4416 = !DILocalVariable(name: "size", arg: 2, scope: !4414, file: !3603, line: 2057, type: !97)
!4417 = !DILocation(line: 0, scope: !4414, inlinedAt: !4418)
!4418 = distinct !DILocation(line: 37, column: 10, scope: !4404)
!4419 = !DILocation(line: 2059, column: 24, scope: !4414, inlinedAt: !4418)
!4420 = !DILocation(line: 2059, column: 10, scope: !4414, inlinedAt: !4418)
!4421 = !DILocation(line: 37, column: 3, scope: !4404)
!4422 = !DILocation(line: 32, column: 7, scope: !4423)
!4423 = distinct !DILexicalBlock(scope: !4412, file: !792, line: 31, column: 5)
!4424 = !DILocation(line: 32, column: 13, scope: !4423)
!4425 = !DILocation(line: 33, column: 7, scope: !4423)
!4426 = !DILocation(line: 38, column: 1, scope: !4404)
!4427 = distinct !DISubprogram(name: "hard_locale", scope: !716, file: !716, line: 28, type: !4428, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4430)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{!219, !95}
!4430 = !{!4431, !4432}
!4431 = !DILocalVariable(name: "category", arg: 1, scope: !4427, file: !716, line: 28, type: !95)
!4432 = !DILocalVariable(name: "locale", scope: !4427, file: !716, line: 30, type: !4433)
!4433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !4434)
!4434 = !{!4435}
!4435 = !DISubrange(count: 257)
!4436 = !DILocation(line: 0, scope: !4427)
!4437 = !DILocation(line: 30, column: 3, scope: !4427)
!4438 = !DILocation(line: 30, column: 8, scope: !4427)
!4439 = !DILocation(line: 32, column: 7, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4427, file: !716, line: 32, column: 7)
!4441 = !DILocation(line: 32, column: 7, scope: !4427)
!4442 = !DILocalVariable(name: "__s1", arg: 1, scope: !4443, file: !892, line: 1359, type: !70)
!4443 = distinct !DISubprogram(name: "streq", scope: !892, file: !892, line: 1359, type: !893, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !794, retainedNodes: !4444)
!4444 = !{!4442, !4445}
!4445 = !DILocalVariable(name: "__s2", arg: 2, scope: !4443, file: !892, line: 1359, type: !70)
!4446 = !DILocation(line: 0, scope: !4443, inlinedAt: !4447)
!4447 = distinct !DILocation(line: 35, column: 9, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4427, file: !716, line: 35, column: 7)
!4449 = !DILocation(line: 1361, column: 11, scope: !4443, inlinedAt: !4447)
!4450 = !DILocation(line: 1361, column: 10, scope: !4443, inlinedAt: !4447)
!4451 = !DILocation(line: 35, column: 29, scope: !4448)
!4452 = !DILocation(line: 0, scope: !4443, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 35, column: 32, scope: !4448)
!4454 = !DILocation(line: 1361, column: 11, scope: !4443, inlinedAt: !4453)
!4455 = !DILocation(line: 1361, column: 10, scope: !4443, inlinedAt: !4453)
!4456 = !DILocation(line: 35, column: 7, scope: !4427)
!4457 = !DILocation(line: 46, column: 3, scope: !4427)
!4458 = !DILocation(line: 47, column: 1, scope: !4427)
!4459 = distinct !DISubprogram(name: "setlocale_null_r", scope: !797, file: !797, line: 154, type: !4460, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4462)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!95, !95, !101, !97}
!4462 = !{!4463, !4464, !4465}
!4463 = !DILocalVariable(name: "category", arg: 1, scope: !4459, file: !797, line: 154, type: !95)
!4464 = !DILocalVariable(name: "buf", arg: 2, scope: !4459, file: !797, line: 154, type: !101)
!4465 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4459, file: !797, line: 154, type: !97)
!4466 = !DILocation(line: 0, scope: !4459)
!4467 = !DILocation(line: 159, column: 10, scope: !4459)
!4468 = !DILocation(line: 159, column: 3, scope: !4459)
!4469 = distinct !DISubprogram(name: "setlocale_null", scope: !797, file: !797, line: 186, type: !4470, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !796, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!70, !95}
!4472 = !{!4473}
!4473 = !DILocalVariable(name: "category", arg: 1, scope: !4469, file: !797, line: 186, type: !95)
!4474 = !DILocation(line: 0, scope: !4469)
!4475 = !DILocation(line: 189, column: 10, scope: !4469)
!4476 = !DILocation(line: 189, column: 3, scope: !4469)
!4477 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !799, file: !799, line: 35, type: !4470, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4478)
!4478 = !{!4479, !4480}
!4479 = !DILocalVariable(name: "category", arg: 1, scope: !4477, file: !799, line: 35, type: !95)
!4480 = !DILocalVariable(name: "result", scope: !4477, file: !799, line: 37, type: !70)
!4481 = !DILocation(line: 0, scope: !4477)
!4482 = !DILocation(line: 37, column: 24, scope: !4477)
!4483 = !DILocation(line: 62, column: 3, scope: !4477)
!4484 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !799, file: !799, line: 66, type: !4460, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4485)
!4485 = !{!4486, !4487, !4488, !4489, !4490}
!4486 = !DILocalVariable(name: "category", arg: 1, scope: !4484, file: !799, line: 66, type: !95)
!4487 = !DILocalVariable(name: "buf", arg: 2, scope: !4484, file: !799, line: 66, type: !101)
!4488 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4484, file: !799, line: 66, type: !97)
!4489 = !DILocalVariable(name: "result", scope: !4484, file: !799, line: 111, type: !70)
!4490 = !DILocalVariable(name: "length", scope: !4491, file: !799, line: 125, type: !97)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !799, line: 124, column: 5)
!4492 = distinct !DILexicalBlock(scope: !4484, file: !799, line: 113, column: 7)
!4493 = !DILocation(line: 0, scope: !4484)
!4494 = !DILocation(line: 0, scope: !4477, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 111, column: 24, scope: !4484)
!4496 = !DILocation(line: 37, column: 24, scope: !4477, inlinedAt: !4495)
!4497 = !DILocation(line: 113, column: 14, scope: !4492)
!4498 = !DILocation(line: 113, column: 7, scope: !4484)
!4499 = !DILocation(line: 116, column: 19, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4501, file: !799, line: 116, column: 11)
!4501 = distinct !DILexicalBlock(scope: !4492, file: !799, line: 114, column: 5)
!4502 = !DILocation(line: 116, column: 11, scope: !4501)
!4503 = !DILocation(line: 120, column: 16, scope: !4500)
!4504 = !DILocation(line: 120, column: 9, scope: !4500)
!4505 = !DILocation(line: 125, column: 23, scope: !4491)
!4506 = !DILocation(line: 0, scope: !4491)
!4507 = !DILocation(line: 126, column: 18, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4491, file: !799, line: 126, column: 11)
!4509 = !DILocation(line: 126, column: 11, scope: !4491)
!4510 = !DILocation(line: 128, column: 39, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4508, file: !799, line: 127, column: 9)
!4512 = !DILocalVariable(name: "__dest", arg: 1, scope: !4513, file: !1095, line: 26, type: !1098)
!4513 = distinct !DISubprogram(name: "memcpy", scope: !1095, file: !1095, line: 26, type: !1096, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !798, retainedNodes: !4514)
!4514 = !{!4512, !4515, !4516}
!4515 = !DILocalVariable(name: "__src", arg: 2, scope: !4513, file: !1095, line: 26, type: !1023)
!4516 = !DILocalVariable(name: "__len", arg: 3, scope: !4513, file: !1095, line: 26, type: !97)
!4517 = !DILocation(line: 0, scope: !4513, inlinedAt: !4518)
!4518 = distinct !DILocation(line: 128, column: 11, scope: !4511)
!4519 = !DILocation(line: 29, column: 10, scope: !4513, inlinedAt: !4518)
!4520 = !DILocation(line: 129, column: 11, scope: !4511)
!4521 = !DILocation(line: 133, column: 23, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !799, line: 133, column: 15)
!4523 = distinct !DILexicalBlock(scope: !4508, file: !799, line: 132, column: 9)
!4524 = !DILocation(line: 133, column: 15, scope: !4523)
!4525 = !DILocation(line: 138, column: 44, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4522, file: !799, line: 134, column: 13)
!4527 = !DILocation(line: 0, scope: !4513, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 138, column: 15, scope: !4526)
!4529 = !DILocation(line: 29, column: 10, scope: !4513, inlinedAt: !4528)
!4530 = !DILocation(line: 139, column: 15, scope: !4526)
!4531 = !DILocation(line: 139, column: 32, scope: !4526)
!4532 = !DILocation(line: 140, column: 13, scope: !4526)
!4533 = !DILocation(line: 0, scope: !4492)
!4534 = !DILocation(line: 145, column: 1, scope: !4484)
